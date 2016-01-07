//
//  DieFacesViewController.h
//  Qast It
//
//  Created by Riccardo Scanavacca on 05/10/2015.
//  Copyright © 2015 Riccardo Scanavacca. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <AudioToolbox/AudioToolbox.h>


@class PlacesViewController;

@protocol PlacesViewControllerDelegate <NSObject>

-(void)reloadTableView;

@end



@interface DieFacesViewController : UIViewController

@property (nonatomic, assign) id<PlacesViewControllerDelegate>delegate;



@property (weak, nonatomic) IBOutlet UILabel *selectionName;

@property (weak, nonatomic) IBOutlet UIImageView *faceOne;
@property (weak, nonatomic) IBOutlet UIImageView *faceTwo;
@property (weak, nonatomic) IBOutlet UIImageView *faceThree;
@property (weak, nonatomic) IBOutlet UIImageView *faceFour;
@property (weak, nonatomic) IBOutlet UIImageView *faceFive;
@property (weak, nonatomic) IBOutlet UIImageView *faceSix;
@property (weak, nonatomic) IBOutlet UIImageView *faceOdd;
@property (weak, nonatomic) IBOutlet UIImageView *faceEven;
@property (weak, nonatomic) IBOutlet UIImageView *faceFavourite;

- (IBAction)tapFaceOne:(id)sender;
- (IBAction)tapFaceTwo:(id)sender;
- (IBAction)tapFaceThree:(id)sender;
- (IBAction)tapFaceFour:(id)sender;
- (IBAction)tapFaceFive:(id)sender;
- (IBAction)tapFaceSix:(id)sender;
- (IBAction)tapOdd:(id)sender;
- (IBAction)tapEven:(id)sender;
- (IBAction)tapFavs:(id)sender;

- (IBAction)selectionSet:(id)sender;

- (IBAction)selectionDone:(id)sender;



@end
