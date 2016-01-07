//
//  TabBarViewController.m
//  QastIt
//
//  Created by Riccardo Scanavacca on 11/08/2015.
//  Copyright (c) 2015 Riccardo. All rights reserved.
//

#import "TabBarViewController.h"
#import "SelectedStore.h"

@interface TabBarViewController ()

@end

@implementation TabBarViewController

#pragma mark - TabBar customization


+ (void)initialize {

    [[UIView appearance] setTintColor:[UIColor colorWithRed:243.0/255.0 green:243.0/255.0  blue:243.0/255.0  alpha:1]];
    [[UITabBar appearance] setTintColor:[UIColor colorWithRed:165.0/255.0 green:15.0/255.0 blue:2.0/255.0 alpha:1]];
    [[UITabBarItem appearance] setTitleTextAttributes:@{ NSForegroundColorAttributeName : [UIColor colorWithRed:230.0/255.0 green:8.0/255.0 blue:1.0/255.0 alpha:1] } forState:UIControlStateSelected];
    [[UITabBarItem appearance] setTitleTextAttributes:@{ NSForegroundColorAttributeName : [UIColor colorWithRed:243.0/255.0 green:243.0/255.0 blue:243.0/255.0 alpha:1] } forState:UIControlStateNormal];

}


- (void)viewDidLoad {
    [super viewDidLoad];
    
    
    if ([[[UIDevice currentDevice] systemVersion] floatValue] >= 7) {
        for (UITabBarItem *tbi in self.tabBar.items) {
            tbi.image = [tbi.image imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
        }
    }
    

    
    [self initiAdBanner];
    [self initAdMobBanner];
    [self.tabBarController.tabBar setTintColor:[UIColor colorWithRed:165.0/255.0 green:15.0/255.0 blue:2.0/255.0 alpha:1] ];
    [[UIView appearance] setTintColor:[UIColor colorWithRed:243.0/255.0 green:243.0/255.0  blue:243.0/255.0  alpha:1]];
    [[UITabBar appearance] setTintColor:[UIColor colorWithRed:165.0/255.0 green:15.0/255.0 blue:2.0/255.0 alpha:1]];
    [[UITabBarItem appearance] setTitleTextAttributes:@{ NSForegroundColorAttributeName : [UIColor colorWithRed:230.0/255.0 green:8.0/255.0 blue:1.0/255.0 alpha:1] } forState:UIControlStateSelected];
    [[UITabBarItem appearance] setTitleTextAttributes:@{ NSForegroundColorAttributeName : [UIColor colorWithRed:243.0/255.0 green:243.0/255.0 blue:243.0/255.0 alpha:1] } forState:UIControlStateNormal];
    
}

-(void)viewDidDisappear:(BOOL)animated {
    
    [super viewDidDisappear:YES];
    [[UIView appearance] setTintColor:[UIColor colorWithRed:243.0/255.0 green:243.0/255.0  blue:243.0/255.0  alpha:1]];
    [[UITabBar appearance] setTintColor:[UIColor colorWithRed:165.0/255.0 green:15.0/255.0 blue:2.0/255.0 alpha:1]];
    [[UITabBarItem appearance] setTitleTextAttributes:@{ NSForegroundColorAttributeName : [UIColor colorWithRed:230.0/255.0 green:8.0/255.0 blue:1.0/255.0 alpha:1] } forState:UIControlStateSelected];
    [[UITabBarItem appearance] setTitleTextAttributes:@{ NSForegroundColorAttributeName : [UIColor colorWithRed:243.0/255.0 green:243.0/255.0 blue:243.0/255.0 alpha:1] } forState:UIControlStateNormal];
    
}

- (void)viewWillAppear:(BOOL)animated {
    [super viewWillAppear:YES];
    
    NSArray *selectedFaces = [[SelectedStore sharedStore]selectedOptions];
    NSPredicate *predicate = [NSPredicate predicateWithFormat:@"self != nil"];
    NSArray *selected = [selectedFaces filteredArrayUsingPredicate:predicate];
    [[[self.tabBarController.viewControllers objectAtIndex:4]tabBarItem] setBadgeValue:[NSString stringWithFormat:@"%lu", (unsigned long)selected.count]];


    [[UITabBarItem appearance] setTitleTextAttributes:@{ NSForegroundColorAttributeName : [UIColor colorWithRed:230.0/255.0 green:8.0/255.0 blue:1.0/255.0 alpha:1] } forState:UIControlStateSelected];
    [[UITabBarItem appearance] setTitleTextAttributes:@{ NSForegroundColorAttributeName : [UIColor colorWithRed:243.0/255.0 green:243.0/255.0 blue:243.0/255.0 alpha:1] } forState:UIControlStateNormal];

    
}



#pragma mark - iAd + AdMob BANNER METHODS ===========================
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
        // Place the banner on the bottom of the screen
        banner.frame = CGRectMake(0, self.view.frame.size.height -
                                  banner.frame.size.height - 48, banner.frame.size.width,
                                  banner.frame.size.height);
        // *Uncomment this line to place the banner 44px underneath the top of the screen (and comment the line above)*//
        //        banner.frame = CGRectMake(0, 44, banner.frame.size.width,banner.frame.size.height);
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

@end
