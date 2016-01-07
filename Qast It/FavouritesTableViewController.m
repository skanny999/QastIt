//
//  FavouritesTableViewController.m
//  Qast It
//
//  Created by Riccardo Scanavacca on 07/10/2015.
//  Copyright © 2015 Riccardo Scanavacca. All rights reserved.
//

#import "FavouritesTableViewController.h"
#import "FavouritesTableViewCell.h"
#import "FavouritesStore.h"
#import "SelectedStore.h"
#import "TemporarySelection.h"
#import "DieFacesViewController.h"

@interface FavouritesTableViewController ()

@end

@implementation FavouritesTableViewController



-(void)viewWillAppear:(BOOL)animated {
    
    [super viewWillAppear:YES];
    
    UIImageView *background = [[UIImageView alloc]initWithImage:[UIImage imageNamed:@"QastItBackground"]];
    [self.tableView setBackgroundView:background];
    
    [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(updateBadge) name:@"refresh" object:nil];
    
    
    
    [self.tableView reloadData];
    
    [self updateBackButton];
    
}

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.tableView.contentInset = UIEdgeInsetsMake(-20, 0, 40, 0);
    
    NSShadow* shadow = [NSShadow new];
    shadow.shadowOffset = CGSizeMake(0.0f, 0.0f);
    shadow.shadowColor = [UIColor clearColor];
    [[UINavigationBar appearance] setTitleTextAttributes: @{NSFontAttributeName: [UIFont fontWithName:@"AvenirNext-Bold" size:20.0f],
                                                            NSShadowAttributeName: shadow }];


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



#pragma mark - TableView

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    return 70;
}

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {

    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {

    return [[[FavouritesStore sharedStore]allFavourites]count];
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    FavouritesTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"Cell" forIndexPath:indexPath];
    
    NSArray *favourites = [[FavouritesStore sharedStore]allFavourites];
    NSString *fav = [favourites[indexPath.row] uppercaseString];
    
    cell.favouriteOption.text = fav;
    
    UIView * separatorLineView = [[UIView alloc] initWithFrame:CGRectMake(0, 0, cell.frame.size.width, 2)];
    separatorLineView.backgroundColor = [UIColor colorWithPatternImage:[UIImage imageNamed:@"QastItBackground"]];
    [cell.contentView addSubview:separatorLineView];
    
    
    return cell;
}

- (BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath {
    
    return YES;
}




- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath {
    if (editingStyle == UITableViewCellEditingStyleDelete) {
        NSArray *options = [[FavouritesStore sharedStore]allFavourites];
        NSString *option = options [indexPath.row];
        
        [[FavouritesStore sharedStore]removeFromFavourites:option];
        [tableView deleteRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationFade];
        [self saveChanges];
        
    }
}


- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    
    FavouritesTableViewCell *cell = [self.tableView cellForRowAtIndexPath:indexPath];
    NSString *selection = cell.favouriteOption.text;
    
    [[TemporarySelection sharedStore]updateSelection:selection];
    
    UIStoryboard * storyboard = [UIStoryboard storyboardWithName:@"Storyboard" bundle:nil];
    DieFacesViewController *dfvc = (DieFacesViewController *)[storyboard instantiateViewControllerWithIdentifier:@"DieFaces"];
    [self presentViewController:dfvc animated:YES completion:nil];
    
    CFRunLoopWakeUp(CFRunLoopGetCurrent());
    
    
}


-(void)saveChanges {
    
    NSUserDefaults *myDefaults = [NSUserDefaults standardUserDefaults];
    NSArray *favouriteOptions = [[FavouritesStore sharedStore]allFavourites];
    [myDefaults setObject:favouriteOptions forKey: @"Favourites"];
    
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


@end
