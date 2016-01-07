//
//  PlacesViewController.m
//  GooglePlaces
//
//  Created by Riccardo Scanavacca on 11/08/2015.
//  Copyright (c) 2015 Riccardo. All rights reserved.
//

#import "PlacesViewController.h"
#import "SPGooglePlacesAutocomplete.h"
#import "TemporarySelection.h"
#import "PlacesStore.h"
#import "DieFacesViewController.h"
#import "SelectedStore.h"

@interface PlacesViewController () <UIViewControllerTransitioningDelegate, UISearchBarDelegate, UITableViewDataSource, UITableViewDelegate>
{
    SPGooglePlacesAutocompleteQuery *_query;
    CLLocation *_userLocation;
}
@property (nonatomic, strong) NSArray *searchResultPlaces;
@property (nonatomic, strong) NSString *typedSearch;
@property (weak, nonatomic) IBOutlet UISearchBar *placeSearchBar;
@property (weak, nonatomic) IBOutlet UITableView *placeAutocompleteResultsTableView;
@property (weak, nonatomic) IBOutlet UISwitch *useLocationSwitch;

@end

@implementation PlacesViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.placeAutocompleteResultsTableView.contentInset = UIEdgeInsetsMake(-36, 0, 40, 0);
    
    self.placeSearchBar.placeholder = @"Where Will You Go?";
    self.placeSearchBar.tintColor = [UIColor blackColor];

  
    self.navigationItem.title = @"PLACES";
    NSShadow* shadow = [NSShadow new];
    shadow.shadowOffset = CGSizeMake(0.0f, 0.0f);
    shadow.shadowColor = [UIColor clearColor];
    [[UINavigationBar appearance] setTitleTextAttributes: @{NSFontAttributeName: [UIFont fontWithName:@"AvenirNext-Bold" size:20.0f],
                                                            NSShadowAttributeName: shadow }];
    
    UIImageView *background = [[UIImageView alloc]initWithImage:[UIImage imageNamed:@"QastItBackground"]];
    [self.placeAutocompleteResultsTableView setBackgroundView:background];
    self.placeSearchBar.keyboardAppearance = UIKeyboardAppearanceDark;
    

    _query = [[SPGooglePlacesAutocompleteQuery alloc] initWithApiKey:@"AIzaSyAeZ6yR-liKztSM2ggvPiiXygircKDDRgs"];
}

- (IBAction)hitLocationSwitch:(id)sender {
    if (self.useLocationSwitch.on) {

    }
}

-(void)reloadTableView {
    
    NSArray *clear = [[NSArray alloc]init];
    self.placeSearchBar.text = @"";
    self.searchResultPlaces = clear;
    [self.placeAutocompleteResultsTableView reloadData];
    NSArray *selectedFaces = [[SelectedStore sharedStore]selectedOptions];
    NSPredicate *predicate = [NSPredicate predicateWithFormat:@"self != nil"];
    NSArray *selected = [selectedFaces filteredArrayUsingPredicate:predicate];
    if (selected.count != 0) {
        [[self.tabBarController.tabBar.items objectAtIndex:3] setBadgeValue:[NSString stringWithFormat:@"%lu", (unsigned long)selected.count]];
    }
    if (selected.count == 6) [self.tabBarController setSelectedIndex:3];
    
    
}



#pragma mark - UITableView methods

- (void)createFooterViewForTable{
    UIView *headerView  = [[UIView alloc] initWithFrame:CGRectMake(0, 500, 320, 70)];
    UIImageView *imageView = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"powered-by-google-on-white"]];
    imageView.autoresizingMask = UIViewAutoresizingFlexibleLeftMargin | UIViewAutoresizingFlexibleRightMargin;
    imageView.frame = CGRectMake(110,10,85,12);
    [headerView addSubview:imageView];
    self.placeAutocompleteResultsTableView.tableHeaderView = headerView;
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath {
    
    NSInteger section = [indexPath section];
    
    if (section == 1) {
        return 40;
    } else
        
    return 70;
}

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    
    return 3;
}


- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    
    switch (section) {
        case 0:
            if ([self.placeSearchBar.text isEqualToString:@""]) {
                return 0;
            } else {
                return 1;
            }
            break;
        
        case 1:
            return [self.searchResultPlaces count];
            break;
            
        case 2:
            return [[[PlacesStore sharedStore]allPlaces]count];
            
        default:
            return 0;
            break;
    }
}

- (NSString *)tableView:(UITableView *)tableView titleForHeaderInSection:(NSInteger)section {
    
    
    if (section == 1) {
        if (self.searchResultPlaces.count == 0) {
            
            return nil;
            
        } else {
        
            return @"Suggestions";
        }
        
    } else
        
        
    if (section == 2) {
        
            if ([[[PlacesStore sharedStore]allPlaces]count] == 0) {
                
                return nil;
                
            } else {
                
                return @"Previous Places";
                
            }
        }
    
        else
            return nil;
    
    
}

- (void)tableView:(UITableView *)tableView willDisplayHeaderView:(UIView *)view forSection:(NSInteger)section
{
    if (section != 1){

    UITableViewHeaderFooterView *header = (UITableViewHeaderFooterView *)view;
    [header.textLabel setTextColor:[UIColor colorWithRed:243.0/255.0 green:243.0/255.0  blue:243.0/255.0  alpha:1]];
    [header.textLabel setFont:[UIFont fontWithName:@"AvenirNext-Bold" size:12.0f]];
    }
}

- (UIView *)tableView:(UITableView *)tableView viewForHeaderInSection:(NSInteger)section {
    
    if (section == 1) {
        if (self.searchResultPlaces.count == 0) {
            return nil;
        } else {
        
            UIView *headerView  = [[UIView alloc] initWithFrame:CGRectMake(0, 500, 320, 60)];
            UIImageView *imageView = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"powered_by_google_on_non_white"]];
            imageView.autoresizingMask = UIViewAutoresizingFlexibleLeftMargin | UIViewAutoresizingFlexibleRightMargin;
            imageView.frame = CGRectMake(10,15,85,12);
            [headerView addSubview:imageView];
        return headerView;
        }
        
        
    } else
    
    return nil;
    
}


- (SPGooglePlacesAutocompletePlace *)placeAtIndexPath:(NSIndexPath *)indexPath {
    return self.searchResultPlaces[indexPath.row];
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *cellIdentifier = @"PlaceAutocompleteResultCell";
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:cellIdentifier];
    if (!cell) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:cellIdentifier];
    }
    
    // Customize tableview cell
    
    self.placeAutocompleteResultsTableView.separatorStyle = UITableViewCellSeparatorStyleNone;
    cell.selectionStyle = UITableViewCellSelectionStyleNone;
    cell.contentView.backgroundColor = [UIColor colorWithRed:165.0/255.0 green:15.0/255.0 blue:2.0/255.0 alpha:1];
    cell.textLabel.backgroundColor = [UIColor colorWithRed:165.0/255.0 green:15.0/255.0 blue:2.0/255.0 alpha:1];
    cell.textLabel.textAlignment = NSTextAlignmentCenter;
    cell.textLabel.font = [UIFont fontWithName:@"AvenirNext-Bold" size:22.0f];
    cell.textLabel.textColor = [UIColor colorWithRed:243.0/255.0 green:243.0/255.0  blue:243.0/255.0  alpha:1];
    UIView * separatorLineView = [[UIView alloc] initWithFrame:CGRectMake(0, 0, tableView.frame.size.width, 2)];
    separatorLineView.backgroundColor = [UIColor colorWithPatternImage:[UIImage imageNamed:@"QastItBackground"]];
    [cell.contentView addSubview:separatorLineView];
    cell.textLabel.adjustsFontSizeToFitWidth = YES;
    cell.textLabel.minimumScaleFactor = 0.5;
    
    
    NSArray *places = [[PlacesStore sharedStore]allPlaces];
    
    
    NSInteger section = [indexPath section];
    
    switch (section) {
        case 0:{
            NSString *typedUpper = [self.typedSearch uppercaseString];
            cell.textLabel.text = typedUpper;
        }
            break;
            
        case 1:{
            NSString *resultsUpper = [[self placeAtIndexPath:indexPath].name uppercaseString];
            cell.textLabel.text = resultsUpper;
        }
            break;
            
        case 2:{
            NSString *previusPlacesUpper = [places[indexPath.row]uppercaseString];
            cell.textLabel.text = previusPlacesUpper;
        }
            
        default:nil;
    }
    
    return cell;
}




- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    
    UITableViewCell *cell = [self.placeAutocompleteResultsTableView cellForRowAtIndexPath:indexPath];
    NSString *selection = cell.textLabel.text;
    
    NSArray *selections = [[PlacesStore sharedStore]allPlaces];
    
    if (![selections containsObject:selection]) {
        [[PlacesStore sharedStore]addToPlaces:selection];
    }
    
    
    [[TemporarySelection sharedStore]updateSelection:selection];
    
    
    UIStoryboard * storyboard = [UIStoryboard storyboardWithName:@"Storyboard" bundle:nil];
    DieFacesViewController *dfvc = (DieFacesViewController *)[storyboard instantiateViewControllerWithIdentifier:@"DieFaces"];
    [dfvc setDelegate:self];
    [self presentViewController:dfvc animated:YES completion:nil];
    
    
    CFRunLoopWakeUp(CFRunLoopGetCurrent());
    
}

- (BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath {
    
    return YES;
}



- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath {
    if (editingStyle == UITableViewCellEditingStyleDelete) {
        NSArray *options = [[PlacesStore sharedStore]allPlaces];
        NSString *option = options [indexPath.row];
        
        [[PlacesStore sharedStore]removeFromPlaces:option];
        [tableView deleteRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationFade];
        
    }
}

#pragma mark - UISearchBarDelegate methods

- (void)searchBar:(UISearchBar *)searchBar textDidChange:(NSString *)searchText
{
    
    self.typedSearch = searchText;
    
    if (_userLocation != nil && self.useLocationSwitch.on == YES) {
        _query.location = _userLocation.coordinate;
        _query.radius = 2000.0;
    } else {
        _query.radius = MAXFLOAT;
    }
    _query.input = searchText;
    _query.language = @"en";
    
    
    [_query fetchPlaces:^(NSArray *places, NSError *error) {
        
        self.searchResultPlaces = places;
        [self.placeAutocompleteResultsTableView reloadData];
        
    }];
    
}





@end
