//
//  DetailsTableViewController.m
//  Qast It
//
//  Created by Riccardo Scanavacca on 16/10/2015.
//  Copyright © 2015 Riccardo Scanavacca. All rights reserved.
//

#import "DetailsTableViewController.h"
#import "TwoWaysViewController.h"
#import "DieFacesViewController.h"
#import "TemporarySelection.h"
#import "SelectedStore.h"
#import "AddCustomOptionViewController.h"

@interface DetailsTableViewController ()

@end

@implementation DetailsTableViewController



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
    if (![self.title isEqualToString:@"TWO WAYS"]) {
    UIBarButtonItem *anotherButton = [[UIBarButtonItem alloc] initWithTitle:@"Add" style:UIBarButtonItemStylePlain target:self action:@selector(addOption)];
    anotherButton.tintColor = [UIColor whiteColor];
        self.navigationItem.rightBarButtonItem = anotherButton;}
    
    [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(updateBadge) name:@"refresh" object:nil];
    [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(reloadOptions) name:@"updateOptions" object:nil];
   
    
    NSDictionary *categories = [[Options sharedStore]allCategories];
    NSLog(@"%@", categories);
}



-(void)addOption {
    
    NSString *category = self.title;
    [[TemporarySelection sharedStore]updateSelection:category];
    UIStoryboard * storyboard = [UIStoryboard storyboardWithName:@"Storyboard" bundle:nil];
    AddCustomOptionViewController *acovc = (AddCustomOptionViewController *)[storyboard instantiateViewControllerWithIdentifier:@"AddOption"];
    [self presentViewController:acovc animated:YES completion:nil];
    
}


// reload tableview after new option is added

-(void)reloadOptions {
    
    [self.tableView reloadData];
    
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

#pragma mark - Table view data source

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    return 70;
   
}

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    
    NSDictionary *categories = [[Options sharedStore]allCategories];
    NSArray *details = [categories objectForKey:self.title];
   
    return details.count;
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    [self.tableView registerClass:[UITableViewCell class] forCellReuseIdentifier:@"aCell"];
    UITableViewCell *cell = [self.tableView dequeueReusableCellWithIdentifier:@"aCell" forIndexPath:indexPath];
    
    //customize cell
    
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
    
    
    NSDictionary *categories = [[Options sharedStore]allCategories];
    NSLog(@"%@", categories);
    
    NSArray *details = [categories objectForKey:self.title];
    NSString *detail = details[indexPath.row];
    NSString *detailUppercase = [detail uppercaseString];
    cell.textLabel.text = detailUppercase;
    
    return cell;
}


-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    
    
    UITableViewCell *cell = [[self tableView] cellForRowAtIndexPath:indexPath];
    NSString *selection = cell.textLabel.text;
    [[TemporarySelection sharedStore]updateSelection:selection];
    UIStoryboard * storyboard = [UIStoryboard storyboardWithName:@"Storyboard" bundle:nil];
    
    if ([self.title isEqualToString:@"TWO WAYS"]) {
        TwoWaysViewController *twvc = [[TwoWaysViewController alloc]init];
        twvc = (TwoWaysViewController *)[storyboard instantiateViewControllerWithIdentifier:@"TwoWays"];
        [self presentViewController:twvc animated:YES completion:nil];
        CFRunLoopWakeUp(CFRunLoopGetCurrent());
        
    } else {
        
    DieFacesViewController *dfvc = (DieFacesViewController *)[storyboard instantiateViewControllerWithIdentifier:@"DieFaces"];
    [self presentViewController:dfvc animated:YES completion:nil];
    CFRunLoopWakeUp(CFRunLoopGetCurrent());
        
    }
    
    
}



- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath {
    if (editingStyle == UITableViewCellEditingStyleDelete) {
        
     
        
        [[Options sharedStore]removeOptionAtIndex:indexPath.row forCategory:self.title];
        [[Options sharedStore]modified];
        [tableView deleteRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationLeft];
        [self saveChanges];
        
    }
    
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
