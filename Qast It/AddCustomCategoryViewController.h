//
//  AddCustomOptionViewController.h
//  QastIt
//
//  Created by Riccardo Scanavacca on 13/08/2015.
//  Copyright (c) 2015 Riccardo. All rights reserved.
//

#import <UIKit/UIKit.h>


@interface AddCustomCategoryViewController : UIViewController


@property (strong, nonatomic) IBOutlet UITextField *custCategory;


- (IBAction)saveNewCategory:(id)sender;

- (IBAction)cancelNewCategory:(id)sender;



@end
