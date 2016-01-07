//
//  TwoWaysViewController.m
//  Qast It
//
//  Created by Riccardo Scanavacca on 09/10/2015.
//  Copyright © 2015 Riccardo Scanavacca. All rights reserved.
//

#import "TwoWaysViewController.h"
#import "TemporarySelection.h"
#import "SelectedStore.h"

@implementation TwoWaysViewController

-(void)viewDidLoad {
    
    [super viewDidLoad];
    
    UIGraphicsBeginImageContext(self.view.frame.size);
    [[UIImage imageNamed:@"selectorbg"] drawInRect:self.view.bounds];
    UIImage *image = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();
    self.view.backgroundColor = [UIColor colorWithPatternImage:image];
    

    
    NSString *selection = [[[TemporarySelection sharedStore]temporarySelection]uppercaseString];
    NSArray *options =[selection componentsSeparatedByCharactersInSet:[NSCharacterSet whitespaceCharacterSet]];
    self.firstOption.text = options[0];
    self.secondOption.text = options[2];

    self.faceOne.image = [UIImage imageNamed:@"slid1white"];
    self.faceTwo.image = [UIImage imageNamed:@"slid2white"];
    self.faceThree.image = [UIImage imageNamed:@"slid3white"];
    self.faceFour.image = [UIImage imageNamed:@"slid4red"];
    self.faceFive.image = [UIImage imageNamed:@"slid5red"];
    self.faceSix.image = [UIImage imageNamed:@"slid6red"];
    
}



- (IBAction)slider:(id)sender {
    
    if (self.slider.value >=1 && self.slider.value <=20) {
        self.faceOne.image = [UIImage imageNamed:@"slid1white"];
        self.faceTwo.image = [UIImage imageNamed:@"slid2red"];
        self.faceThree.image = [UIImage imageNamed:@"slid3red"];
        self.faceFour.image = [UIImage imageNamed:@"slid4red"];
        self.faceFive.image = [UIImage imageNamed:@"slid5red"];
        self.faceSix.image = [UIImage imageNamed:@"slid6red"];
    } else if (self.slider.value >=21 && self.slider.value <=40) {
        self.faceOne.image = [UIImage imageNamed:@"slid1white"];
        self.faceTwo.image = [UIImage imageNamed:@"slid2white"];
        self.faceThree.image = [UIImage imageNamed:@"slid3red"];
        self.faceFour.image = [UIImage imageNamed:@"slid4red"];
        self.faceFive.image = [UIImage imageNamed:@"slid5red"];
        self.faceSix.image = [UIImage imageNamed:@"slid6red"];
    } else if (self.slider.value >=41 && self.slider.value <=60) {
        self.faceOne.image = [UIImage imageNamed:@"slid1white"];
        self.faceTwo.image = [UIImage imageNamed:@"slid2white"];
        self.faceThree.image = [UIImage imageNamed:@"slid3white"];
        self.faceFour.image = [UIImage imageNamed:@"slid4red"];
        self.faceFive.image = [UIImage imageNamed:@"slid5red"];
        self.faceSix.image = [UIImage imageNamed:@"slid6red"];
    } else if (self.slider.value >=61 && self.slider.value <=80) {
        self.faceOne.image = [UIImage imageNamed:@"slid1white"];
        self.faceTwo.image = [UIImage imageNamed:@"slid2white"];
        self.faceThree.image = [UIImage imageNamed:@"slid3white"];
        self.faceFour.image = [UIImage imageNamed:@"slid4white"];
        self.faceFive.image = [UIImage imageNamed:@"slid5red"];
        self.faceSix.image = [UIImage imageNamed:@"slid6red"];
    } else if (self.slider.value >=81 && self.slider.value <=100) {
        self.faceOne.image = [UIImage imageNamed:@"slid1white"];
        self.faceTwo.image = [UIImage imageNamed:@"slid2white"];
        self.faceThree.image = [UIImage imageNamed:@"slid3white"];
        self.faceFour.image = [UIImage imageNamed:@"slid4white"];
        self.faceFive.image = [UIImage imageNamed:@"slid5white"];
        self.faceSix.image = [UIImage imageNamed:@"slid6red"];
    }
    
    
}

- (IBAction)setButton:(UIButton *)sender {
    
    if (self.slider.value >=1 && self.slider.value <=20) {
        
        [[SelectedStore sharedStore]addSelection:self.firstOption.text atIndex:0];
        [[SelectedStore sharedStore]addSelection:self.secondOption.text atIndex:1];
        [[SelectedStore sharedStore]addSelection:self.secondOption.text atIndex:2];
        [[SelectedStore sharedStore]addSelection:self.secondOption.text atIndex:3];
        [[SelectedStore sharedStore]addSelection:self.secondOption.text atIndex:4];
        [[SelectedStore sharedStore]addSelection:self.secondOption.text atIndex:5];
        
    } else if (self.slider.value >=21 && self.slider.value <=40) {
        
        [[SelectedStore sharedStore]addSelection:self.firstOption.text atIndex:0];
        [[SelectedStore sharedStore]addSelection:self.firstOption.text atIndex:1];
        [[SelectedStore sharedStore]addSelection:self.secondOption.text atIndex:2];
        [[SelectedStore sharedStore]addSelection:self.secondOption.text atIndex:3];
        [[SelectedStore sharedStore]addSelection:self.secondOption.text atIndex:4];
        [[SelectedStore sharedStore]addSelection:self.secondOption.text atIndex:5];
        
    } else if (self.slider.value >=41 && self.slider.value <=60) {
        
        [[SelectedStore sharedStore]addSelection:self.firstOption.text atIndex:0];
        [[SelectedStore sharedStore]addSelection:self.firstOption.text atIndex:1];
        [[SelectedStore sharedStore]addSelection:self.firstOption.text atIndex:2];
        [[SelectedStore sharedStore]addSelection:self.secondOption.text atIndex:3];
        [[SelectedStore sharedStore]addSelection:self.secondOption.text atIndex:4];
        [[SelectedStore sharedStore]addSelection:self.secondOption.text atIndex:5];
        
    } else if (self.slider.value >=61 && self.slider.value <=80) {
        
        [[SelectedStore sharedStore]addSelection:self.firstOption.text atIndex:0];
        [[SelectedStore sharedStore]addSelection:self.firstOption.text atIndex:1];
        [[SelectedStore sharedStore]addSelection:self.firstOption.text atIndex:2];
        [[SelectedStore sharedStore]addSelection:self.firstOption.text atIndex:3];
        [[SelectedStore sharedStore]addSelection:self.secondOption.text atIndex:4];
        [[SelectedStore sharedStore]addSelection:self.secondOption.text atIndex:5];
        
    } else if (self.slider.value >=81 && self.slider.value <=100) {
        
        [[SelectedStore sharedStore]addSelection:self.firstOption.text atIndex:0];
        [[SelectedStore sharedStore]addSelection:self.firstOption.text atIndex:1];
        [[SelectedStore sharedStore]addSelection:self.firstOption.text atIndex:2];
        [[SelectedStore sharedStore]addSelection:self.firstOption.text atIndex:3];
        [[SelectedStore sharedStore]addSelection:self.firstOption.text atIndex:4];
        [[SelectedStore sharedStore]addSelection:self.secondOption.text atIndex:5];
        
    } else {
        
        [[SelectedStore sharedStore]addSelection:self.firstOption.text atIndex:0];
        [[SelectedStore sharedStore]addSelection:self.firstOption.text atIndex:1];
        [[SelectedStore sharedStore]addSelection:self.firstOption.text atIndex:2];
        [[SelectedStore sharedStore]addSelection:self.secondOption.text atIndex:3];
        [[SelectedStore sharedStore]addSelection:self.secondOption.text atIndex:4];
        [[SelectedStore sharedStore]addSelection:self.secondOption.text atIndex:6];
        
    }
    
    [[NSNotificationCenter defaultCenter] postNotificationName:@"refresh" object:nil];
    
    [self dismissViewControllerAnimated:YES completion:nil];
    
    
}

- (IBAction)cancel:(id)sender {
    
    [self dismissViewControllerAnimated:YES completion:nil];
}




@end
