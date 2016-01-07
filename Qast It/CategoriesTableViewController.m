//
//  CategoriesTableViewController.m
//  QastIt
//
//  Created by Riccardo Scanavacca on 11/08/2015.
//  Copyright (c) 2015 Riccardo. All rights reserved.
//

#import "CategoriesTableViewController.h"
#import "DetailsTableViewController.h"
#import "PlacesViewController.h"
#import "SelectedStore.h"


@interface CategoriesTableViewController ()

@end


@implementation CategoriesTableViewController

+ (void)initialize {
    
    //Setting appearance
    
    [[UIView appearance] setTintColor:[UIColor colorWithRed:243.0/255.0 green:243.0/255.0  blue:243.0/255.0  alpha:1]];
    [[UITabBar appearance] setTintColor:[UIColor colorWithRed:165.0/255.0 green:15.0/255.0 blue:2.0/255.0 alpha:1]];
    [[UITabBarItem appearance] setTitleTextAttributes:@{ NSForegroundColorAttributeName : [UIColor colorWithRed:230.0/255.0 green:8.0/255.0 blue:1.0/255.0 alpha:1] } forState:UIControlStateSelected];
    [[UITabBarItem appearance] setTitleTextAttributes:@{ NSForegroundColorAttributeName : [UIColor colorWithRed:243.0/255.0 green:243.0/255.0 blue:243.0/255.0 alpha:1] } forState:UIControlStateNormal];
    
    NSShadow* shadow = [NSShadow new];
    shadow.shadowOffset = CGSizeMake(0.0f, 0.0f);
    shadow.shadowColor = [UIColor clearColor];
    [[UINavigationBar appearance] setTitleTextAttributes: @{NSFontAttributeName: [UIFont fontWithName:@"AvenirNext-Bold" size:18.0f],
                                                            NSShadowAttributeName: shadow
                                                            }];
  
}


- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.tableView.contentInset = UIEdgeInsetsMake(-20, 0, 40, 0);
    UIImageView *background = [[UIImageView alloc]initWithImage:[UIImage imageNamed:@"QastItBackground"]];
    [self.tableView setBackgroundView:background];
    
    [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(reloadCategories) name:@"updateCategories" object:nil];
    self.navigationItem.backBarButtonItem = [[UIBarButtonItem alloc] initWithTitle:@"Back" style:UIBarButtonItemStylePlain target:nil action:nil];
    
}




-(void)viewWillAppear:(BOOL)animated {
    [super viewWillAppear:YES];

    
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

    if (selected.count == 0) {
        [[self.tabBarController.tabBar.items objectAtIndex:3] setBadgeValue:nil];
    } else {
        [[self.tabBarController.tabBar.items objectAtIndex:3] setBadgeValue:[NSString stringWithFormat:@"%lu", (unsigned long)selected.count]];
    }

    
}

//reload Tableview after new Category is added

-(void)reloadCategories {
    
    [self.tableView reloadData];
    
}


#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    

    return 1;
    
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {

    NSArray *opCategories = [[[Options sharedStore]allCategories] allKeys];
    
    
    return opCategories.count;
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    CategoryTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"Cell" forIndexPath:indexPath];
    
    UIView * separatorLineView = [[UIView alloc] initWithFrame:CGRectMake(0, 0, cell.frame.size.width, 2)];
    separatorLineView.backgroundColor = [UIColor colorWithPatternImage:[UIImage imageNamed:@"QastItBackground"]];
    [cell.contentView addSubview:separatorLineView];
    
    NSArray *opCategories = [[[Options sharedStore]allCategories] allKeys];
    
    NSArray *sortedCategories = [opCategories sortedArrayUsingSelector:@selector(localizedCaseInsensitiveCompare:)];
    NSMutableArray *categories = [[NSMutableArray alloc]initWithArray:sortedCategories];
    
    NSString *places = @"PLACES";
    NSString *twoWays = @"TWO WAYS";
    
    for (int i = 0; i<categories.count; i++) {
        if ((i!=0) && [categories[i] isEqualToString:twoWays]) {
            id object = [categories objectAtIndex:i];
            [categories removeObjectAtIndex:i];
            [categories insertObject:object atIndex:0];}
        
    for (int i = 0; i<categories.count; i++) {
        if ((i != 1) && [categories[i] isEqualToString:places]) {
            NSString *object = [categories objectAtIndex:i];
            [categories removeObjectAtIndex:i];
            [categories insertObject:object atIndex:1];
        }
      }
    
    }
    NSString *categoriesDescription = [categories[indexPath.row]description];
    NSString *categoriesUppercase = [categoriesDescription uppercaseString];
    
    cell.categoryName.text = categoriesUppercase;
    
    return cell;
}



-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    
    DetailsTableViewController *detailController = [[DetailsTableViewController alloc]initWithStyle:UITableViewStyleGrouped];
    CategoryTableViewCell *cell = [[self tableView] cellForRowAtIndexPath: indexPath];

    if ([cell.categoryName.text isEqualToString:@"PLACES"]) {
        [self performSegueWithIdentifier:@"places" sender:self];
    } else {
    detailController.title = cell.categoryName.text;
    [[self navigationController]pushViewController:detailController animated:YES];

    }
    

    
}

- (BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath {
    if (indexPath.row >1) {
        return YES;
    }
    return NO;
}

- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath {
    if (editingStyle == UITableViewCellEditingStyleDelete) {
        CategoryTableViewCell *cell = [[self tableView] cellForRowAtIndexPath: indexPath];
        
        // Alert before deleting Category and all its content
        
        UIAlertController *alert = [UIAlertController alertControllerWithTitle:@"Careful!"
                                                                       message:@"Deleting a category will also delete all its options. Do you want to confirm?"
                                                                preferredStyle:UIAlertControllerStyleAlert];
        UIAlertAction *firstAction = [UIAlertAction actionWithTitle:@"Confirm"
                                                              style:UIAlertActionStyleDefault handler:^(UIAlertAction * action) {
                                                                  NSString *toBeDeleted = cell.categoryName.text;
                                                                  [[Options sharedStore]removeCategory: toBeDeleted];
                                                                  [[Options sharedStore]modified];
                                                                  [self dismissViewControllerAnimated:YES completion:nil];
                                                                  [tableView deleteRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationLeft];
                                                                  [self saveChanges];
                                                              }];
        UIAlertAction *secondAction = [UIAlertAction actionWithTitle:@"Cancel"
                                                               style:UIAlertActionStyleDefault handler:^(UIAlertAction * action) {
                                                                   [self dismissViewControllerAnimated:YES completion:nil];
                                                                   [self.tableView reloadData];
                                                                   }];
        
        [alert addAction:firstAction]; 
        [alert addAction:secondAction];
        
        alert.view.tintColor = [UIColor blackColor];
        
        [self presentViewController:alert animated:YES completion:^{alert.view.tintColor = [UIColor blackColor];}];
        alert.view.tintColor = [UIColor blackColor];
        

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
