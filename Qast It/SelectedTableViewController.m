//
//  SelectedTableViewController.m
//  Qast It
//
//  Created by Riccardo Scanavacca on 05/10/2015.
//  Copyright © 2015 Riccardo Scanavacca. All rights reserved.
//

#import "SelectedTableViewController.h"
#import "SelectedTableViewCell.h"
#import "SelectedStore.h"

@interface SelectedTableViewController ()

@end

@implementation SelectedTableViewController


- (void)viewDidLoad {
    [super viewDidLoad];
    
    
    UIImageView *background = [[UIImageView alloc]initWithImage:[UIImage imageNamed:@"QastItBackground"]];
    [self.tableView setBackgroundView:background];
    
}

-(void)viewWillAppear:(BOOL)animated {
    
    [super viewWillAppear:NO];
    
    NSShadow* shadow = [NSShadow new];
    shadow.shadowOffset = CGSizeMake(0.0f, 0.0f);
    shadow.shadowColor = [UIColor clearColor];
    [[UINavigationBar appearance] setTitleTextAttributes: @{NSFontAttributeName: [UIFont fontWithName:@"AvenirNext-Bold" size:20.0f],
                                                            NSShadowAttributeName: shadow }];
    
    [self.tableView reloadData];
    self.tableView.contentInset = UIEdgeInsetsMake(-20, 0, 40, 0);
    self.clear.title = @"Clear";
    
    [self updateBackButton];
    
    }

-(void)updateBackButton {
    
    NSArray *selectedFaces = [[SelectedStore sharedStore]selectedOptions];
    NSPredicate *predicate = [NSPredicate predicateWithFormat:@"self != nil"];
    NSArray *selected = [selectedFaces filteredArrayUsingPredicate:predicate];
    if (selected.count == 6) {
        
        self.backToDie.title = nil;
        self.backToDie.image = [UIImage imageNamed:@"quastitbackDemi"];
        self.backToDie.tintColor = [UIColor colorWithRed:165.0/255.0 green:15.0/255.0 blue:2.0/255.0 alpha:1];
        
    } else if (selected.count != 6){
        
        self.backToDie.image = nil;
        self.backToDie.title = @"Back";
        self.backToDie.tintColor = [UIColor whiteColor];
    }
    
    
}


// update badge showing the number of selected options

- (void)updateBadge {
    
    NSArray *selectedFaces = [[SelectedStore sharedStore]selectedOptions];
    NSPredicate *predicate = [NSPredicate predicateWithFormat:@"self != nil"];
    NSArray *selected = [selectedFaces filteredArrayUsingPredicate:predicate];
    if (selected.count == 0) {
        [[self.tabBarController.tabBar.items objectAtIndex:3] setBadgeValue:nil];
    } else {
        [[self.tabBarController.tabBar.items objectAtIndex:3] setBadgeValue:[NSString stringWithFormat:@"%lu", (unsigned long)selected.count]];
    }
}

#pragma mark - TableView

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {

    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {

    return [[[SelectedStore sharedStore]selectedOptions]count];
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    return 70;
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    SelectedTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"Cell" forIndexPath:indexPath];
    
    
    UIView * separatorLineView = [[UIView alloc] initWithFrame:CGRectMake(0, 0, cell.frame.size.width, 2)];
    separatorLineView.backgroundColor = [UIColor colorWithPatternImage:[UIImage imageNamed:@"QastItBackground"]];
    [cell.contentView addSubview:separatorLineView];
    NSArray *selected = [[SelectedStore sharedStore]selectedOptions];
    NSString *selOptions = selected[indexPath.row];
    if ([selOptions.description isEqualToString:@"<null>"]) {
        cell.selectedOption.text = @"";
    } else {
        NSString *selectedUpper = [selOptions uppercaseString];
    cell.selectedOption.text = selectedUpper;
    }
    
    
    NSArray *faces = [[NSArray alloc]initWithObjects:
                      @"face1selected",
                      @"face2selected",
                      @"face3selected",
                      @"face4selected",
                      @"face5selected",
                      @"face6selected",
                      nil];
    
    cell.selectedFace.image =[UIImage imageNamed:faces[indexPath.row]];

    return cell;
}




- (BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath {

    return YES;
}




- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath {
    if (editingStyle == UITableViewCellEditingStyleDelete) {

        [[SelectedStore sharedStore]removeOptionAtIndex:indexPath.row];
        [tableView deleteRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationLeft];
        [[SelectedStore sharedStore]addEmptyOptionAtIndex:indexPath.row];
        [self.tableView reloadSections:[NSIndexSet indexSetWithIndex:0] withRowAnimation:UITableViewRowAnimationLeft];
        
        }
    
    [self updateBadge];
    [self updateBackButton];
    
    
}

-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    SelectedTableViewCell *cell = [[self tableView] cellForRowAtIndexPath:indexPath];
    
    if ([cell.selectedOption.text isEqualToString:@""]) {
        
        [self.tabBarController setSelectedIndex:0];
    }
 
}


- (IBAction)clear:(id)sender {
    
    for (NSUInteger i=0 ; i<6; i++) {
        [[SelectedStore sharedStore]removeSelectionAtIndex:i];
    }

    [self.tableView reloadSections:[NSIndexSet indexSetWithIndex:0] withRowAnimation:UITableViewRowAnimationLeft];
    
    [self updateBackButton];
}
@end
