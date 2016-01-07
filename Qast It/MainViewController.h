//
//  ViewController.h
//  QastIt
//
//  Created by Riccardo Scanavacca on 01/07/2015.
//  Copyright (c) 2015 Riccardo. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <iAd/iAd.h>
#import <AudioToolbox/AudioToolbox.h>
#import <GoogleMobileAds/GoogleMobileAds.h>
#import <Social/Social.h>

@interface MainViewController : UIViewController <ADBannerViewDelegate, GADBannerViewDelegate>

@property (strong, nonatomic) ADBannerView *iAdBannerView;
@property (strong, nonatomic) GADBannerView *adMobBannerView;

@property (weak, nonatomic) IBOutlet UIButton *optionsView;
@property (weak, nonatomic) IBOutlet UILabel *optionsLabel;
@property (weak, nonatomic) IBOutlet UIImageView *qastIt;

@property (weak, nonatomic) IBOutlet UIButton *qastButton;
@property (weak, nonatomic) IBOutlet UIImageView *die;


@property (weak, nonatomic) IBOutlet UILabel *selectionLabel;
@property (weak, nonatomic) IBOutlet UIImageView *theDieIsQast;
- (IBAction)selectionButton:(id)sender;





@property (weak, nonatomic) IBOutlet UILabel *tapTheDie;
@property (weak, nonatomic) IBOutlet UIButton *shareButton;

@property (weak, nonatomic) IBOutlet UIView *screenView;
@property (strong, nonatomic) UIImage *screenshot;
@property (weak, nonatomic) IBOutlet UIView *pictureView;
- (IBAction)share:(id)sender;


@property (weak, nonatomic) IBOutlet NSLayoutConstraint *shareYConstraint;

@end

