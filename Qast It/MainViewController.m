//
//  ViewController.m
//  QastIt
//
//  Created by Riccardo Scanavacca on 01/07/2015.
//  Copyright (c) 2015 Riccardo. All rights reserved.
//

#import <AVFoundation/AVFoundation.h>
#import "MainViewController.h"
#import "CustomView.h"
#import "SelectedStore.h"
#import "RecentsStore.h"
#import "TabBarViewController.h"
#import "Flurry.h"
#include <AudioToolbox/AudioToolbox.h>

#define systemSoundID    1105

@interface MainViewController ()


@property (weak, nonatomic) IBOutlet CustomView *dieAnimation;
@property (nonatomic, retain) NSTimer *timer;
@property (nonatomic) float interval;

@property NSUInteger currentFace;
@property NSUInteger previousFace;


@end

@implementation MainViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    [self initiAdBanner];
    [self initAdMobBanner];
    
    UIGraphicsBeginImageContext(self.view.frame.size);
    [[UIImage imageNamed:@"blackbg"] drawInRect:self.view.bounds];
    UIImage *imageBack = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();
    self.view.backgroundColor = [UIColor colorWithPatternImage:imageBack];
    self.die.image = [UIImage imageNamed:@"dieblanklighter"];
    self.currentFace = 1;
    self.optionsView.userInteractionEnabled = NO;
    
    if (([UIScreen mainScreen].bounds.size.height == 480.0)) {
        self.shareYConstraint.constant= -2170;
    }
    

    
    [self.qastButton addTarget:self action:@selector(setInter) forControlEvents:UIControlEventTouchDown];
    [self.qastButton addTarget:self action:@selector(dieRoll) forControlEvents:UIControlEventTouchDown];
    [self.qastButton addTarget:self action:@selector(logRoll) forControlEvents:UIControlEventTouchDown];
    [self.qastButton addTarget:self action:@selector(setInter) forControlEvents:UIControlEventTouchUpOutside];
    [self.qastButton addTarget:self action:@selector(dieFinishedRolling) forControlEvents:UIControlEventTouchUpInside];
    [self.qastButton addTarget:self action:@selector(dieFinishedRolling) forControlEvents:UIControlEventTouchUpOutside];
    

    
    NSArray *selectedFaces = [[SelectedStore sharedStore]selectedOptions];
    NSPredicate *predicate = [NSPredicate predicateWithFormat:@"self != nil"];
    NSArray *selected = [selectedFaces filteredArrayUsingPredicate:predicate];
    if (selected.count == 6) {
        
        NSUInteger face = self.currentFace - 1;
        NSArray *options = [[SelectedStore sharedStore]selectedOptions];
        NSString *option = options[face];
        NSString *optionUppercase = [option uppercaseString];
        self.qastIt.image = nil;
        self.optionsLabel.text = optionUppercase;
        self.selectionLabel.text = @"TOUCH THE DIE TO QAST IT";
        
    } else {
        
        self.optionsLabel.text = nil;
        self.qastIt.image = [UIImage imageNamed:@"logobutton"];
        self.selectionLabel.text = @"SET YOUR OPTIONS";
    }
}




-(void)viewWillAppear:(BOOL)animated {
    
    [super viewWillAppear:YES];
    
    
    
    NSArray *selectedFaces = [[SelectedStore sharedStore]selectedOptions];
    NSPredicate *predicate = [NSPredicate predicateWithFormat:@"self != nil"];
    NSArray *selected = [selectedFaces filteredArrayUsingPredicate:predicate];
    if (selected.count == 6) {
        
        NSUInteger face = self.currentFace - 1;
        NSArray *options = [[SelectedStore sharedStore]selectedOptions];
        NSString *option = options[face];
        NSString *optionUppercase = [option uppercaseString];
        self.qastIt.image = nil;
        self.optionsLabel.text = optionUppercase;
        self.selectionLabel.text = @"TOUCH THE DIE TO QAST IT";
        
    } else {
        
        self.optionsLabel.text = nil;
        self.qastIt.image = [UIImage imageNamed:@"logobutton"];
        self.selectionLabel.text = @"SET YOUR OPTIONS";
        
    }
    
    self.tapTheDie.alpha = 0;
    self.shareButton.alpha = 0;
    self.theDieIsQast.image = nil;
    self.qastButton.userInteractionEnabled = YES;
    self.qastIt.contentMode = UIViewContentModeScaleAspectFit;
    self.theDieIsQast.contentMode = UIViewContentModeScaleAspectFit;
    
    
}

- (UIStatusBarStyle) preferredStatusBarStyle {
    return UIStatusBarStyleLightContent;
}


#pragma mark - Die Rolling


- (void)setInter {
    
    self.interval = 0.15;
    [self startAnimatingLabel];
}



- (void)dieRoll {
    
    
    if ([_timer isValid]) {
        [_timer invalidate];
    }
    
    _timer = nil;
    
    [self roll];
    
    [self changeFace:self.currentFace];
    _timer = [NSTimer scheduledTimerWithTimeInterval:self.interval target:self selector:@selector(dieRoll) userInfo:nil repeats:NO];
    
}




- (void)dieFinishedRolling {
    
    [self roll];
    
    if ([_timer isValid]) {
        [_timer invalidate];
    }
   self.interval *= 1.2;
    
    
    if (self.interval <1.2) {
        _timer = [NSTimer scheduledTimerWithTimeInterval:self.interval target:self selector:@selector(dieFinishedRolling) userInfo:nil repeats:NO];
    }
    else {
        self.qastButton.userInteractionEnabled = NO;
        _timer = [NSTimer scheduledTimerWithTimeInterval:1.2 target:self selector:@selector(crossFade) userInfo:nil repeats:NO];
        
        [UIView animateWithDuration:2.1 delay:3 options:UIViewAnimationOptionCurveEaseIn animations:^{self.tapTheDie.alpha = 1;} completion:nil];
        [UIView animateWithDuration:2.1 delay:3 options:UIViewAnimationOptionCurveEaseIn animations:^{self.shareButton.alpha = 1;} completion:nil];
        [self addToRecents];
        self.interval = 0.15;
    }

}

// Add selection to Resents

-(void)addToRecents {
    
   for (int i=0; i<6; i++) {
        
        NSArray *selected = [[SelectedStore sharedStore]selectedOptions];
        NSString *selectedOption = selected[i];
        NSArray *recents = [[RecentsStore sharedStore]allRecents];
        
        if (selected[i] != [NSNull null]) {
            if (![recents containsObject:selectedOption]) {
                [[RecentsStore sharedStore]addToRecents:selectedOption];
                NSUserDefaults *myDefaults = [NSUserDefaults standardUserDefaults];
                NSArray *recentOptions = [[RecentsStore sharedStore]allRecents];
                [myDefaults setObject:recentOptions forKey: @"Recents"];
                
            }
        }
    }
}

// Generate random die face number

- (NSUInteger)rollDiceWithLastFaceNumber:(NSUInteger)lastFaceNumber {
    
    NSUInteger currentFaceNumber;
    
    do {
        currentFaceNumber = (arc4random() % 6 + 1);
    } while (currentFaceNumber == lastFaceNumber);
    
    self.previousFace= lastFaceNumber;
    
    return currentFaceNumber;
    
    
}

-(void)changeFace: (NSUInteger)faceNumber {
    
    NSArray *selected = [[SelectedStore sharedStore]selectedOptions];
    NSUInteger index = faceNumber - 1;
    
    self.optionsView = selected[index];
    
}


-(void)logRoll {
    
    NSArray *selectedFaces = [[SelectedStore sharedStore]selectedOptions];
    NSPredicate *predicate = [NSPredicate predicateWithFormat:@"self != nil"];
    NSArray *selected = [selectedFaces filteredArrayUsingPredicate:predicate];
    if (selected.count == 6) {
        
        [Flurry logEvent:@"Rolled_With_Selection"];
        
        NSDictionary *qastOptions = [NSDictionary dictionaryWithObjectsAndKeys:selected, @"Selected_Option", nil];
        [Flurry logEvent:@"Qast_Options" withParameters:qastOptions];

        
    } else {
        
        [Flurry logEvent:@"Rolled_Without_Selection"];
        
    }
    
}



#pragma mark - Reset Die


- (IBAction)resetDie:(id)sender {
    
    [self resetViewController];
    AudioServicesPlaySystemSound(1057);
    
}


- (IBAction)selectionButton:(id)sender {

    
    if (self.selectionLabel.text == nil) {
         [self resetViewController];
    } else if ([self.selectionLabel.text isEqualToString:@"QASTING..."]) {
        
        return;
        
    } else if ([self.selectionLabel.text isEqualToString:@"SET YOUR OPTIONS"]) {
        
        UIStoryboard * storyboard = [UIStoryboard storyboardWithName:@"Storyboard" bundle:nil];
        TabBarViewController *tbvc = [[TabBarViewController alloc]init];
        tbvc = (TabBarViewController *)[storyboard instantiateViewControllerWithIdentifier:@"TabBar"];
        [self.navigationController pushViewController:tbvc animated:YES];
        
    } else if ([self.selectionLabel.text isEqualToString:@"TOUCH THE DIE TO QAST IT"]) {
        
        UIStoryboard * storyboard = [UIStoryboard storyboardWithName:@"Storyboard" bundle:nil];
        TabBarViewController *tbvc = [[TabBarViewController alloc]init];
        tbvc = (TabBarViewController *)[storyboard instantiateViewControllerWithIdentifier:@"TabBar"];
        [self.navigationController pushViewController:tbvc animated:YES];
    }
    
}




-(void)resetViewController {
    
    [self.selectionLabel.layer removeAllAnimations];
    self.selectionLabel.font = [UIFont fontWithName:@"AvenirNext-Bold" size:36.0f];
    self.selectionLabel.alpha = 1;
    self.tapTheDie.alpha = 0;
    self.shareButton.alpha = 0;
    self.qastButton.userInteractionEnabled = YES;
    self.optionsLabel.text = nil;
    self.qastIt.image = [UIImage imageNamed:@"logobutton"];
    self.theDieIsQast.image = nil;
    self.selectionLabel.text = @"SET YOUR OPTIONS";
    for (NSUInteger i=0 ; i<6; i++) {
        [[SelectedStore sharedStore]removeSelectionAtIndex:i];
    }
}

-(BOOL)shouldPerformSegueWithIdentifier:(NSString *)identifier sender:(id)sender
{
    if ([identifier isEqualToString:@"SetOptions"]) {
        NSArray *selectedFaces = [[SelectedStore sharedStore]selectedOptions];
        NSPredicate *predicate = [NSPredicate predicateWithFormat:@"self != nil"];
        NSArray *selected = [selectedFaces filteredArrayUsingPredicate:predicate];
        UIImage *theDieIsQast = [UIImage imageNamed:@"dieisqastwhitedemi"];
        if ((selected.count == 6) && (self.theDieIsQast.image = theDieIsQast)) {
            return NO;
        } else {
            return YES;
        }
        return YES;
    }
    
    return YES;
 
}

#pragma mark - Animations


-(void)updateLabel {
    
    AudioServicesPlaySystemSound(systemSoundID);
    
    NSArray *selectedFaces = [[SelectedStore sharedStore]selectedOptions];
    NSPredicate *predicate = [NSPredicate predicateWithFormat:@"self != nil"];
    NSArray *selected = [selectedFaces filteredArrayUsingPredicate:predicate];
    if (selected.count == 6) {
        
        NSUInteger face = self.currentFace - 1;
        NSArray *options = [[SelectedStore sharedStore]selectedOptions];
        NSString *option = options[face];
        NSString *optionUpperstring = [option uppercaseString];
        self.optionsLabel.text = optionUpperstring;
        
    } else {
        
        self.optionsLabel.text = nil;
        
    }
    
    AudioServicesPlaySystemSound(systemSoundID);
    
}

-(void)crossFade {
    
    [self vibratePhone];
    UIImage *theDieIsQastImage = [UIImage imageNamed:@"dieisqastwhitedemi"];
    [self stopAnimationLabel];
    self.selectionLabel.text = nil;
    [UIView transitionWithView:self.view duration:1.9 options:UIViewAnimationOptionTransitionCrossDissolve animations:^{self.theDieIsQast.image = theDieIsQastImage;} completion:^(BOOL finished) { if (finished){[self takeScreenshot];}}];
}

- (void)startAnimatingLabel
{
    self.selectionLabel.text = @"QASTING...";
    self.selectionLabel.font = [UIFont fontWithName:@"AvenirNext-Bold" size:26.0f];
    self.selectionLabel.alpha = 0;
    
    [UIView animateWithDuration:0.7
                          delay:0
                        options: UIViewAnimationOptionAutoreverse | UIViewAnimationOptionRepeat
                     animations:^{
                         self.selectionLabel.alpha = 1;
                     } completion:nil];
}

- (void)stopAnimationLabel
{
    [UIView animateWithDuration:1
                          delay:0
                        options:UIViewAnimationOptionBeginFromCurrentState
                     animations:^{
                         self.selectionLabel.alpha = 1;
                     } completion:^(BOOL finished){
                     }];
}



- (void)vibratePhone;
{
    if([[UIDevice currentDevice].model isEqualToString:@"iPhone"])
    {
        AudioServicesPlaySystemSound (1352);
    }
    
}

// Animation for the die face change

-(void)roll {
    
    NSUInteger newFace = [self rollDiceWithLastFaceNumber:self.currentFace];
    
    self.currentFace = newFace;
    
    switch (self.previousFace) {
        case 1:
            switch (newFace) {
                case 2:{
                    [self.dieAnimation addAnim12AnimationCompletionBlock:^(BOOL finished) {
                        [self updateLabel];
                    }];}
                    break;
                case 3:{
                    [self.dieAnimation addAnim13AnimationCompletionBlock:^(BOOL finished) {
                        [self updateLabel];
                    }];}
                    
                    break;
                case 4:{
                    [self.dieAnimation addAnim14AnimationCompletionBlock:^(BOOL finished) {
                        [self updateLabel];
                    }];}
                    
                    break;
                case 5:{
                    [self.dieAnimation addAnim15AnimationCompletionBlock:^(BOOL finished) {
                        [self updateLabel];
                    }];}
                    
                    break;
                case 6:{
                    [self.dieAnimation addAnim16AnimationCompletionBlock:^(BOOL finished) {
                        [self updateLabel];
                    }];}
                    
                    break;
                default:nil;
                    
                    break;
            }
            break;
            
            
        case 2:
            switch (newFace) {
                case 1:{
                    [self.dieAnimation addAnim12AnimationReverse:YES completionBlock:^(BOOL finished) {
                        [self updateLabel];
                    }];}
                    
                    break;
                case 3:{
                    [self.dieAnimation addAnim23AnimationCompletionBlock:^(BOOL finished) {
                        [self updateLabel];
                    }];}
                    
                    break;
                case 4:{
                    [self.dieAnimation addAnim24AnimationCompletionBlock:^(BOOL finished) {
                        [self updateLabel];
                    }];}
                    
                    break;
                case 5:{
                    [self.dieAnimation addAnim25AnimationCompletionBlock:^(BOOL finished) {
                        [self updateLabel];
                    }];}
                    
                    break;
                case 6:{
                    [self.dieAnimation addAnim26AnimationCompletionBlock:^(BOOL finished) {
                        [self updateLabel];
                    }];}
                    
                    break;
                default:nil;
                    break;
            }
            break;
            
        case 3:
            switch (newFace) {
                case 1:{
                    [self.dieAnimation addAnim13AnimationReverse:YES completionBlock:^(BOOL finished) {
                        [self updateLabel];
                    }];}
                    
                    break;
                case 2:{
                    [self.dieAnimation addAnim23AnimationReverse:YES completionBlock:^(BOOL finished) {
                        [self updateLabel];
                    }];}
                    
                    break;
                case 4:{
                    [self.dieAnimation addAnim34AnimationCompletionBlock:^(BOOL finished) {
                        [self updateLabel];
                    }];}
                    
                    break;
                case 5:{
                    [self.dieAnimation addAnim35AnimationCompletionBlock:^(BOOL finished) {
                        [self updateLabel];
                    }];}
                    
                    break;
                case 6:{
                    [self.dieAnimation addAnim36AnimationCompletionBlock:^(BOOL finished) {
                        [self updateLabel];
                    }];}
                    
                    break;
                default:nil;
                    break;
            }
            break;
            
        case 4:
            switch (newFace) {
                case 1:{
                    [self.dieAnimation addAnim14AnimationReverse:YES completionBlock:^(BOOL finished) {
                        [self updateLabel];
                    }];}
                    
                    break;
                case 2:{
                    [self.dieAnimation addAnim24AnimationReverse:YES completionBlock:^(BOOL finished) {
                        [self updateLabel];
                    }];}
                    
                    break;
                case 3:{
                    [self.dieAnimation addAnim34AnimationReverse:YES completionBlock:^(BOOL finished) {
                        [self updateLabel];
                    }];}
                    
                    break;
                case 5:{
                    [self.dieAnimation addAnim45AnimationCompletionBlock:^(BOOL finished) {
                        [self updateLabel];
                    }];}
                    
                    break;
                case 6:{
                    [self.dieAnimation addAnim46AnimationCompletionBlock:^(BOOL finished) {
                        [self updateLabel];
                    }];}
                    
                    break;
                default:nil;
                    break;
            }
            break;
            
        case 5:
            switch (newFace) {
                case 1:{
                    [self.dieAnimation addAnim15AnimationReverse:YES completionBlock:^(BOOL finished) {
                        [self updateLabel];
                    }];}
                    
                    break;
                case 2:{
                    [self.dieAnimation addAnim25AnimationReverse:YES completionBlock:^(BOOL finished) {
                        [self updateLabel];
                    }];}
                    
                    break;
                case 3:{
                    [self.dieAnimation addAnim35AnimationReverse:YES completionBlock:^(BOOL finished) {
                        [self updateLabel];
                    }];}
                    
                    break;
                case 4:{
                    [self.dieAnimation addAnim45AnimationReverse:YES completionBlock:^(BOOL finished) {
                        [self updateLabel];
                    }];}
                    
                    break;
                case 6:{
                    [self.dieAnimation addAnim56AnimationCompletionBlock:^(BOOL finished) {
                        [self updateLabel];
                    }];}
                    
                    break;
                default:nil;
                    break;
            }
            break;
            
        case 6:
            switch (newFace) {
                case 1:{
                    [self.dieAnimation addAnim16AnimationReverse:YES completionBlock:^(BOOL finished) {
                        [self updateLabel];
                    }];}
                    
                    break;
                case 2:{
                    [self.dieAnimation addAnim26AnimationReverse:YES completionBlock:^(BOOL finished) {
                        [self updateLabel];
                    }];}
                    
                    break;
                case 3:{
                    [self.dieAnimation addAnim36AnimationReverse:YES completionBlock:^(BOOL finished) {
                        [self updateLabel];
                    }];}
                    
                    break;
                case 4:{
                    [self.dieAnimation addAnim46AnimationReverse:YES completionBlock:^(BOOL finished) {
                        [self updateLabel];
                    }];}
                    
                    break;
                case 5:{
                    [self.dieAnimation addAnim56AnimationReverse:YES completionBlock:^(BOOL finished) {
                        [self updateLabel];
                    }];}
                    
                    break;
                default:nil;
                    break;
            }
            
        default:nil;
            
            break;
    }
    
}


#pragma mark - Social Sharing



- (IBAction)share:(id)sender {
    
    UIAlertController *alert = [UIAlertController alertControllerWithTitle:@"Share your Qast"
                                                                   message:@""
                                                            preferredStyle:UIAlertControllerStyleActionSheet];
    alert.view.tintColor = [UIColor blackColor];
    UIAlertAction *facebookPostAction = [UIAlertAction actionWithTitle:@"Facebook"
                                                                 style:UIAlertActionStyleDefault handler:^(UIAlertAction * action) { [self postOnFacebook];
                                                                     alert.view.tintColor = [UIColor blackColor];}];
    UIAlertAction *twitterPostAction = [UIAlertAction actionWithTitle:@"Twitter"
                                                                style:UIAlertActionStyleDefault handler:^(UIAlertAction * action) { [self postOnTwitter];
                                                                    alert.view.tintColor = [UIColor blackColor];}];
    UIAlertAction *cancel = [UIAlertAction actionWithTitle:@"Cancel" style:UIAlertActionStyleCancel handler:^(UIAlertAction * action){}];
    alert.view.tintColor = [UIColor blackColor];
    
    [alert addAction:facebookPostAction];
    [alert addAction:twitterPostAction];
    [alert addAction:cancel];
    
    alert.view.tintColor = [UIColor blackColor];
    [self presentViewController:alert animated:YES completion:^{alert.view.tintColor = [UIColor blackColor];}];
    alert.view.tintColor = [UIColor blackColor];
    
}

-(void)postOnFacebook {
    
    if ([SLComposeViewController isAvailableForServiceType:SLServiceTypeFacebook]) {
        SLComposeViewController *socialController = [SLComposeViewController composeViewControllerForServiceType:SLServiceTypeFacebook];
        [socialController setInitialText:@"#TheDieIsQast"];
        [socialController addImage:self.screenshot];
            [socialController addURL:[NSURL URLWithString:@"http://qastit.com"]];
        [self presentViewController:socialController animated:YES completion:^{socialController.view.tintColor = [UIColor blackColor];}];
    } else {
        
        UIAlertController *alert = [UIAlertController alertControllerWithTitle:@"Accounts" message:@"Please login to your Facebook account in Settings to post." preferredStyle:UIAlertControllerStyleAlert];
        
        UIAlertAction *firstAction = [UIAlertAction actionWithTitle:@"Ok"style:UIAlertActionStyleDefault handler:^(UIAlertAction * action) {[self dismissViewControllerAnimated:YES completion:nil];}];
        [alert addAction:firstAction];
        alert.view.tintColor = [UIColor blackColor];
        [self presentViewController:alert animated:YES completion:^{alert.view.tintColor = [UIColor blackColor];}];
        alert.view.tintColor = [UIColor blackColor];
    }
    
}

-(void)postOnTwitter {
    if ([SLComposeViewController isAvailableForServiceType:SLServiceTypeTwitter]) {
        
        SLComposeViewController *socialController = [SLComposeViewController composeViewControllerForServiceType:SLServiceTypeTwitter];
        [socialController setInitialText:@"#TheDieIsQast"];
        [socialController addImage:self.screenshot];
            [socialController addURL:[NSURL URLWithString:@"http://qastit.com"]];
        [self presentViewController:socialController animated:YES completion:^{socialController.view.tintColor = [UIColor blackColor];}];
    } else {
        
        UIAlertController *alert = [UIAlertController alertControllerWithTitle:@"Accounts" message:@"Please login to your Tweeter account in Settings to tweet." preferredStyle:UIAlertControllerStyleAlert];
        UIAlertAction *firstAction = [UIAlertAction actionWithTitle:@"Ok"style:UIAlertActionStyleDefault handler:^(UIAlertAction * action) {[self dismissViewControllerAnimated:YES completion:nil];}];
        [alert addAction:firstAction];
        alert.view.tintColor = [UIColor blackColor];
        [self presentViewController:alert animated:YES completion:^{alert.view.tintColor = [UIColor blackColor];}];
    }
    
    
}

-(void)takeScreenshot {

    self.screenshot = [self pb_takeSnapshot];
    
}

- (UIImage *)pb_takeSnapshot {
 
    UIGraphicsBeginImageContextWithOptions(self.screenView.bounds.size, YES, [UIScreen mainScreen].scale);
    
    [self.view drawViewHierarchyInRect:self.view.bounds afterScreenUpdates:YES];
    
    UIImage *image = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();
    
    return image;
}




#pragma mark - iAd + AdMob Banner

// Initialize Apple iAd banner
-(void)initiAdBanner {
    if (!_iAdBannerView) {
        CGRect rect = CGRectMake(0, self.view.frame.size.height, 0, 0);
        _iAdBannerView = [[ADBannerView alloc]initWithFrame:rect];
        _iAdBannerView.delegate = self;
        _iAdBannerView.hidden = true;
        [self.view addSubview: _iAdBannerView];
    }
}
// Initialize Google AdMob banner
-(void)initAdMobBanner {
    if (!_adMobBannerView) {
        
        _adMobBannerView = [[GADBannerView alloc]initWithAdSize:kGADAdSizeSmartBannerPortrait];
        
    }
    _adMobBannerView.adUnitID = @"ca-app-pub-7526962868691253/5929096921";
    
    _adMobBannerView.rootViewController = self;
    _adMobBannerView.delegate = self;
    _adMobBannerView.hidden = true;
    [self.view addSubview: _adMobBannerView];
}
// Hide the banner by sliding down
-(void)hideBanner:(UIView *)banner {
    if (banner && !banner.isHidden) {
        [UIView beginAnimations:@"hideBanner" context:nil];
        // Hide the banner moving it below the bottom of the screen
        banner.frame = CGRectOffset(banner.frame, 0,
                                    banner.frame.size.height);
        [UIView commitAnimations];
        banner.hidden = true;
    }
}
// Show the banner by sliding up
-(void)showBanner:(UIView *)banner {
    if (banner && banner.isHidden) {
        [UIView beginAnimations:@"showBanner" context:nil];
        banner.frame = CGRectMake(0, self.view.frame.size.height - banner.frame.size.height,
                                  banner.frame.size.width,
                                  banner.frame.size.height);
        [UIView commitAnimations];
        banner.hidden = false;
    }
}
// Called before the add is shown, time to move the view
- (void)bannerViewWillLoadAd:(ADBannerView *)banner {
    NSLog(@"iAd load");
    [self hideBanner: _adMobBannerView];
    [self showBanner: _iAdBannerView];
}
// Called when an error occured
- (void)bannerView:(ADBannerView *)banner didFailToReceiveAdWithError:
(NSError *)error {
    NSLog(@"iAd error: %@", error);
    [self hideBanner: _iAdBannerView];
    [_adMobBannerView loadRequest:[GADRequest request]];
}
// Called before ad is shown, good time to show the add
- (void)adViewDidReceiveAd:(GADBannerView *)view {
    NSLog(@"Admob load");
    [self hideBanner: _iAdBannerView];
    [self showBanner: _adMobBannerView];
}
// An error occured
- (void)adView:(GADBannerView *)view didFailToReceiveAdWithError:
(GADRequestError *)error {
    NSLog(@"Admob error: %@", error);
    [self hideBanner: _adMobBannerView];
}





-(IBAction)prepareForUnwind:(UIStoryboardSegue *)segue {
}



@end
