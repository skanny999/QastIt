//
//  SelectedTableViewController.h
//  Qast It
//
//  Created by Riccardo Scanavacca on 05/10/2015.
//  Copyright © 2015 Riccardo Scanavacca. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface SelectedTableViewController : UITableViewController

@property (weak, nonatomic) IBOutlet UIBarButtonItem *backToDie;
@property (weak, nonatomic) IBOutlet UIBarButtonItem *clear;

- (IBAction)clear:(id)sender;



@end
