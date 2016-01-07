//
//  AddCustomOptionViewController.m
//  QastIt
//
//  Created by Riccardo Scanavacca on 13/08/2015.
//  Copyright (c) 2015 Riccardo. All rights reserved.
//

#import "AddCustomCategoryViewController.h"
#import "CustomOptionsStore.h"
#import "Options.h"
#import "Flurry.h"


@interface AddCustomCategoryViewController () <UITextFieldDelegate>

@end

@implementation AddCustomCategoryViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    UITextField *nameField = self.custCategory;
    [nameField becomeFirstResponder];
    nameField.delegate = self;
    self.custCategory.text = nameField.text;
   
    
}

-(BOOL)textFieldShouldReturn:(UITextField *)textField {
    
    NSString *lowerCaseCategory = [self.custCategory text];
    NSString *category = [lowerCaseCategory uppercaseString];
    if (![category isEqualToString:@""]) {
        [[Options sharedStore]addCategory:category];
        [[Options sharedStore]modified];
        NSDictionary *addedCategory = [NSDictionary dictionaryWithObjectsAndKeys:category, @"New_Category", nil];
        [Flurry logEvent:@"Added_Categories" withParameters:addedCategory];
        
    }
    [self saveChanges];
    [self dismissViewControllerAnimated:YES completion:nil];

    return YES;
    
}





- (IBAction)saveNewCategory:(id)sender {
    
    NSString *lowerCaseCategory = [self.custCategory text];
    NSString *category = [lowerCaseCategory uppercaseString];
    if (![category isEqualToString:@""]) {
        [[Options sharedStore]addCategory:category];
        [[Options sharedStore]modified];
        NSDictionary *addedCategory = [NSDictionary dictionaryWithObjectsAndKeys:category, @"New_Category", nil];
        [Flurry logEvent:@"Added_Categories" withParameters:addedCategory];
        
    }
    [self saveChanges];
    [self dismissViewControllerAnimated:YES completion:nil];
    
}


- (IBAction)cancelNewCategory:(id)sender {
    
    [self dismissViewControllerAnimated:YES completion:nil];
}

-(void)saveChanges {

    
[[NSNotificationCenter defaultCenter] postNotificationName:@"updateCategories" object:nil];
NSUserDefaults *myDefaults = [NSUserDefaults standardUserDefaults];
NSDictionary *updatedCategories = [[Options sharedStore]allCategories];
NSData *data = [NSKeyedArchiver archivedDataWithRootObject:updatedCategories];
[myDefaults setObject:[[Options sharedStore]categoriesModified] forKey:@"Modified"];
[myDefaults setObject:data forKey: @"Categories"];

}

@end
