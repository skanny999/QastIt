//
//  AddCustomOptionViewController.h
//  Qast It
//
//  Created by Riccardo Scanavacca on 19/11/2015.
//  Copyright © 2015 Riccardo Scanavacca. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface AddCustomOptionViewController : UIViewController

@property (weak, nonatomic) IBOutlet UITextField *custOptions;

- (IBAction)saveNewOption:(id)sender;
- (IBAction)cancelNewOption:(id)sender;


@end
