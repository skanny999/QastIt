//
//  TwoWaysViewController.h
//  Qast It
//
//  Created by Riccardo Scanavacca on 09/10/2015.
//  Copyright © 2015 Riccardo Scanavacca. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <AudioToolbox/AudioToolbox.h>


@interface TwoWaysViewController : UIViewController

@property (weak, nonatomic) IBOutlet UIImageView *faceOne;
@property (weak, nonatomic) IBOutlet UIImageView *faceTwo;
@property (weak, nonatomic) IBOutlet UIImageView *faceThree;
@property (weak, nonatomic) IBOutlet UIImageView *faceFour;
@property (weak, nonatomic) IBOutlet UIImageView *faceFive;
@property (weak, nonatomic) IBOutlet UIImageView *faceSix;

@property (weak, nonatomic) IBOutlet UILabel *firstOption;
@property (weak, nonatomic) IBOutlet UILabel *secondOption;


@property (weak, nonatomic) IBOutlet UISlider *slider;

- (IBAction)slider:(id)sender;


- (IBAction)setButton:(UIButton *)sender;
- (IBAction)cancel:(id)sender;


@end
