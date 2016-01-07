//
//  RecentsTableViewController.m
//  Qast It
//
//  Created by Riccardo Scanavacca on 18/11/2015.
//  Copyright © 2015 Riccardo Scanavacca. All rights reserved.
//

#import "RecentsTableViewController.h"
#import "SelectedStore.h"
#import "RecentsStore.h"
#import "TemporarySelection.h"
#import "DieFacesViewController.h"



@interface RecentsTableViewController ()

@end

@implementation RecentsTableViewController


- (void)viewDidLoad {
    [super viewDidLoad];
    
    NSShadow* shadow = [NSShadow new];
    shadow.shadowOffset = CGSizeMake(0.0f, 0.0f);
    shadow.shadowColor = [UIColor clearColor];
    [[UINavigationBar appearance] setTitleTextAttributes: @{NSFontAttributeName: [UIFont fontWithName:@"AvenirNext-Bold" size:20.0f],
                                                            NSShadowAttributeName: shadow }];
    
    self.tableView.contentInset = UIEdgeInsetsMake(-20, 0, 40, 0);
    UIImageView *background = [[UIImageView alloc]initWithImage:[UIImage imageNamed:@"QastItBackground"]];
    [self.tableView setBackgroundView:background];
    
    [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(updateBadge) name:@"refresh" object:nil];
}

-(void)viewWillAppear:(BOOL)animated {
    
    [super viewWillAppear:YES];
    
    [self updateBackButton];
    
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
    
    if (selected.count == 6) [self.tabBarController setSelectedIndex:3];
}

//change appearance of back button in case all 6 faces are selected

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



#pragma mark - TableView

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    return 70;
    
}

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {

    return [[[RecentsStore sharedStore]allRecents]count];
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"Cell" forIndexPath:indexPath];
    
    self.tableView.separatorStyle = UITableViewCellSeparatorStyleNone;
    cell.selectionStyle = UITableViewCellSelectionStyleNone;
    cell.contentView.backgroundColor = [UIColor colorWithRed:165.0/255.0 green:15.0/255.0 blue:2.0/255.0 alpha:1];
    cell.textLabel.backgroundColor = [UIColor colorWithRed:165.0/255.0 green:15.0/255.0 blue:2.0/255.0 alpha:1];
    cell.textLabel.textAlignment = NSTextAlignmentCenter;
    cell.textLabel.font = [UIFont fontWithName:@"AvenirNext-Bold" size:20.0f];
    cell.textLabel.textColor = [UIColor colorWithRed:243.0/255.0 green:243.0/255.0  blue:243.0/255.0  alpha:1];
    UIView * separatorLineView = [[UIView alloc] initWithFrame:CGRectMake(0, 0, cell.frame.size.width, 2)];
    separatorLineView.backgroundColor = [UIColor colorWithPatternImage:[UIImage imageNamed:@"QastItBackground"]];
    [cell.contentView addSubview:separatorLineView];
    cell.textLabel.adjustsFontSizeToFitWidth = YES;
    cell.textLabel.minimumScaleFactor = 0.5;
    
    
    NSArray *recents = [[RecentsStore sharedStore]allRecents];
    NSString *recent = [recents[indexPath.row]uppercaseString];
    cell.textLabel.text = recent;
    
    return cell;
}


- (BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath {
    
    return YES;
}




- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath {
    if (editingStyle == UITableViewCellEditingStyleDelete) {
        NSArray *options = [[RecentsStore sharedStore]allRecents];
        NSString *option = options [indexPath.row];
        
        [[RecentsStore sharedStore]removeFromRecents:option];
        [tableView deleteRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationFade];
    }
    
}


- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    
    UITableViewCell *cell = [self.tableView cellForRowAtIndexPath:indexPath];
    NSString *selection = cell.textLabel.text;
    [[TemporarySelection sharedStore]updateSelection:selection];
    
    UIStoryboard * storyboard = [UIStoryboard storyboardWithName:@"Storyboard" bundle:nil];
    DieFacesViewController *dfvc = (DieFacesViewController *)[storyboard instantiateViewControllerWithIdentifier:@"DieFaces"];
    [self presentViewController:dfvc animated:YES completion:nil];
    
    // eliminate lag on instantiation of DieFaces view controller
    
    CFRunLoopWakeUp(CFRunLoopGetCurrent());
    
    
}


@end
