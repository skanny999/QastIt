//
//  AddCustomOptionViewController.m
//  Qast It
//
//  Created by Riccardo Scanavacca on 19/11/2015.
//  Copyright © 2015 Riccardo Scanavacca. All rights reserved.
//

#import "AddCustomOptionViewController.h"
#import "TemporarySelection.h"
#import "Options.h"
#import "Flurry.h"

@interface AddCustomOptionViewController () <UITextFieldDelegate>

@end

@implementation AddCustomOptionViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    UITextField *nameField = self.custOptions;
    [nameField becomeFirstResponder];
    nameField.delegate = self;
    self.custOptions.text = nameField.text;
}

-(BOOL)textFieldShouldReturn:(UITextField *)textField {
    
    NSString *category = [[TemporarySelection sharedStore]temporarySelection];
    NSString *option = [self.custOptions.text uppercaseString];
    
    if (![option isEqualToString:@""]) {
        [[Options sharedStore]addOption:option forCategory:category];
        [[Options sharedStore]modified];
        NSDictionary *addedOption = [NSDictionary dictionaryWithObjectsAndKeys:category, @"New_Option", nil];
        [Flurry logEvent:@"Added_Options" withParameters:addedOption];
    }
    [self saveChanges];
    
    return YES;
    
}



- (IBAction)saveNewOption:(id)sender {
   
    NSString *category = [[TemporarySelection sharedStore]temporarySelection];
    NSString *option = [self.custOptions.text uppercaseString];
    
    if (![option isEqualToString:@""]) {
        [[Options sharedStore]addOption:option forCategory:category];
        [[Options sharedStore]modified];
        NSDictionary *addedOption = [NSDictionary dictionaryWithObjectsAndKeys:option, @"New_Option", nil];
        [Flurry logEvent:@"Added_Options" withParameters:addedOption];
    }
    [self saveChanges];
    
    
    
    [[NSNotificationCenter defaultCenter] postNotificationName:@"updateOptions" object:nil];
    [self dismissViewControllerAnimated:YES completion:nil];
    
    
}

- (IBAction)cancelNewOption:(id)sender {
    
    [self dismissViewControllerAnimated:YES completion:nil];
    
}

-(void)saveChanges {
    
    [[NSNotificationCenter defaultCenter] postNotificationName:@"updateCategories" object:nil];
    NSUserDefaults *myDefaults = [NSUserDefaults standardUserDefaults];
    NSDictionary *updatedCategories = [[Options sharedStore]allCategories];
    NSData *data = [NSKeyedArchiver archivedDataWithRootObject:updatedCategories];
    [myDefaults setObject:data forKey: @"Categories"];
    [myDefaults setObject:[[Options sharedStore]categoriesModified] forKey:@"Modified"];
}

@end
