//
//  TabBarViewController.h
//  QastIt
//
//  Created by Riccardo Scanavacca on 11/08/2015.
//  Copyright (c) 2015 Riccardo. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <iAd/iAd.h>
#import <AudioToolbox/AudioToolbox.h>
#import <GoogleMobileAds/GoogleMobileAds.h>

@interface TabBarViewController : UITabBarController <ADBannerViewDelegate, GADBannerViewDelegate >

@property (strong, nonatomic) ADBannerView *iAdBannerView;
@property (strong, nonatomic) GADBannerView *adMobBannerView;

@end
