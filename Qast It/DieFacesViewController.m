//
//  DieFacesViewController.m
//  Qast It
//
//  Created by Riccardo Scanavacca on 05/10/2015.
//  Copyright © 2015 Riccardo Scanavacca. All rights reserved.
//

#import "DieFacesViewController.h"
#import "TemporarySelection.h"
#import "SelectedStore.h"
#import "FavouritesStore.h"


@interface DieFacesViewController () {
    
    NSArray *initialSelection;
}

@end

@implementation DieFacesViewController

- (void)viewDidLoad {
    
    [super viewDidLoad];
    
}


-(void)viewWillAppear:(BOOL)animated {
    
    [super viewWillAppear:YES];
    

    NSString *ts = [[[TemporarySelection sharedStore]temporarySelection]uppercaseString];
 
    NSArray *favourites = [[FavouritesStore sharedStore]allFavourites];
    NSArray *selectedFaces = [[SelectedStore sharedStore]selectedOptions];
    
    UIGraphicsBeginImageContext(self.view.frame.size);
    [[UIImage imageNamed:@"selectorbg"] drawInRect:self.view.bounds];
    UIImage *image = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();
    
    self.view.backgroundColor = [UIColor colorWithPatternImage:image];
    
    self.selectionName.text = ts;
    initialSelection = [[SelectedStore sharedStore]selectedOptions];
    
    
    
    // Assign face depending on the temporary selection and faces already selected
    
    for (int i=0; i<6; i++) {
        int a = i+1;
        
        NSArray *dieFaces = [[NSArray alloc]initWithObjects:self.faceOne, self.faceTwo, self.faceThree, self.faceFour, self.faceFive, self.faceSix, nil];
        
        if (selectedFaces[i] == [NSNull null]) {
            ((UIImageView *)[dieFaces objectAtIndex:i]).image = [UIImage imageNamed:[NSString stringWithFormat:@"face%dwhite",a]];
        } else if (selectedFaces[i] != [NSNull null] && [ts isEqualToString: selectedFaces[i]]) {
            ((UIImageView *)[dieFaces objectAtIndex:i]).image = [UIImage imageNamed:[NSString stringWithFormat:@"face%dred",a]];
        } else {
            ((UIImageView *)[dieFaces objectAtIndex:i]).image = [UIImage imageNamed:[NSString stringWithFormat:@"face%dgrey",a]];
        }
    }
    
    
    

    if (selectedFaces[0] != [NSNull null] && selectedFaces[2] != [NSNull null] && selectedFaces[4] != [NSNull null] && [ts isEqualToString:selectedFaces[0]] && [ts isEqualToString:selectedFaces[2]] && [ts isEqualToString:selectedFaces[4]]) {
        self.faceOdd.image = [UIImage imageNamed:@"oddred"];
    } else if (selectedFaces[0] == [NSNull null] && selectedFaces[2] == [NSNull null] && selectedFaces[4] == [NSNull null]) {
        self.faceOdd.image = [UIImage imageNamed:@"oddwhite"];
    } else{
         self.faceOdd.image = [UIImage imageNamed:@"oddgrey"];
    }
    
    
    if (selectedFaces[1] != [NSNull null] && selectedFaces[3] != [NSNull null] && selectedFaces[5] != [NSNull null] && [ts isEqualToString:selectedFaces[1]] && [ts isEqualToString:selectedFaces[3]] && [ts isEqualToString:selectedFaces[5]]) {
        self.faceEven.image = [UIImage imageNamed:@"evenred"];
    } else if (selectedFaces[1] == [NSNull null] && selectedFaces[3] == [NSNull null] && selectedFaces[5] == [NSNull null]) {
        self.faceEven.image = [UIImage imageNamed:@"evenwhite"];
    } else{
        self.faceEven.image = [UIImage imageNamed:@"evengrey"];
    }


    if ([favourites containsObject:ts]) {
        self.faceFavourite.image = [UIImage imageNamed:@"favred"];
    } else if (![favourites containsObject:ts]) {
    self.faceFavourite.image = [UIImage imageNamed:@"favwhite"];
    }


    
}



#pragma mark - actions tapping on faces

- (IBAction)tapFaceOne:(id)sender {
    
    NSArray *selectedFaces = [[SelectedStore sharedStore]selectedOptions];
    NSString *ts = [[TemporarySelection sharedStore]temporarySelection];
    
    if (selectedFaces[0] == [NSNull null]) {
        [[SelectedStore sharedStore]addSelection:ts atIndex:0];
        self.faceOne.image = [UIImage imageNamed:@"face1red"];
    } else if ([ts isEqualToString:selectedFaces[0]]) {
        [[SelectedStore sharedStore]removeSelectionAtIndex:0];
        self.faceOne.image = [UIImage imageNamed:@"face1white"];
    }
    
    if (selectedFaces[0] != [NSNull null] && selectedFaces[2] != [NSNull null] && selectedFaces[4] != [NSNull null] && [ts isEqualToString:selectedFaces[0]] && [ts isEqualToString:selectedFaces[2]] && [ts isEqualToString:selectedFaces[4]]) {
        self.faceOdd.image = [UIImage imageNamed:@"oddred"];
    } else if (selectedFaces[0] == [NSNull null] && selectedFaces[2] == [NSNull null] && selectedFaces[4] == [NSNull null]) {
        self.faceOdd.image = [UIImage imageNamed:@"oddwhite"];
    } else{
        self.faceOdd.image = [UIImage imageNamed:@"oddgrey"];
    }
    
    
}

- (IBAction)tapFaceTwo:(id)sender {
    
    NSArray *selectedFaces = [[SelectedStore sharedStore]selectedOptions];
    NSString *ts = [[TemporarySelection sharedStore]temporarySelection];
    
    if (selectedFaces[1] == [NSNull null]) {
        [[SelectedStore sharedStore]addSelection:ts atIndex:1];
        self.faceTwo.image = [UIImage imageNamed:@"face2red"];
    } else if ([ts isEqualToString:selectedFaces[1]]) {
        [[SelectedStore sharedStore]removeSelectionAtIndex:1];
        self.faceTwo.image = [UIImage imageNamed:@"face2white"];
    }
    
    if (selectedFaces[1] != [NSNull null] && selectedFaces[3] != [NSNull null] && selectedFaces[5] != [NSNull null] && [ts isEqualToString:selectedFaces[1]] && [ts isEqualToString:selectedFaces[3]] && [ts isEqualToString:selectedFaces[5]]) {
        self.faceEven.image = [UIImage imageNamed:@"evenred"];
    } else if (selectedFaces[1] == [NSNull null] && selectedFaces[3] == [NSNull null] && selectedFaces[5] == [NSNull null]) {
        self.faceEven.image = [UIImage imageNamed:@"evenwhite"];
    } else if (selectedFaces[1] != [NSNull null] || selectedFaces[3] != [NSNull null] || selectedFaces[5] != [NSNull null]){
        self.faceEven.image = [UIImage imageNamed:@"evengrey"];
    }
    
    
}

- (IBAction)tapFaceThree:(id)sender {
    
    NSArray *selectedFaces = [[SelectedStore sharedStore]selectedOptions];
    NSString *ts = [[TemporarySelection sharedStore]temporarySelection];
    
    if (selectedFaces[2] == [NSNull null]) {
        [[SelectedStore sharedStore]addSelection:ts atIndex:2];
        self.faceThree.image = [UIImage imageNamed:@"face3red"];
    } else if ([ts isEqualToString:selectedFaces[2]]) {
        [[SelectedStore sharedStore]removeSelectionAtIndex:2];
        self.faceThree.image = [UIImage imageNamed:@"face3white"];
    }
    
    if (selectedFaces[0] != [NSNull null] && selectedFaces[2] != [NSNull null] && selectedFaces[4] != [NSNull null] && [ts isEqualToString:selectedFaces[0]] && [ts isEqualToString:selectedFaces[2]] && [ts isEqualToString:selectedFaces[4]]) {
        self.faceOdd.image = [UIImage imageNamed:@"oddred"];
    } else if (selectedFaces[0] == [NSNull null] && selectedFaces[2] == [NSNull null] && selectedFaces[4] == [NSNull null]) {
        self.faceOdd.image = [UIImage imageNamed:@"oddwhite"];
    } else{
        self.faceOdd.image = [UIImage imageNamed:@"oddgrey"];
    }
}

- (IBAction)tapFaceFour:(id)sender {
    
    NSArray *selectedFaces = [[SelectedStore sharedStore]selectedOptions];
    NSString *ts = [[TemporarySelection sharedStore]temporarySelection];
    
    if (selectedFaces[3] == [NSNull null]) {
        [[SelectedStore sharedStore]addSelection:ts atIndex:3];
        self.faceFour.image = [UIImage imageNamed:@"face4red"];
    } else if ([ts isEqualToString:selectedFaces[3]]) {
        [[SelectedStore sharedStore]removeSelectionAtIndex:3];
        self.faceFour.image = [UIImage imageNamed:@"face4white"];
    }
    
    if (selectedFaces[1] != [NSNull null] && selectedFaces[3] != [NSNull null] && selectedFaces[5] != [NSNull null] && [ts isEqualToString:selectedFaces[1]] && [ts isEqualToString:selectedFaces[3]] && [ts isEqualToString:selectedFaces[5]]) {
        self.faceEven.image = [UIImage imageNamed:@"evenred"];
    } else if (selectedFaces[1] == [NSNull null] && selectedFaces[3] == [NSNull null] && selectedFaces[5] == [NSNull null]) {
        self.faceEven.image = [UIImage imageNamed:@"evenwhite"];
    } else if (selectedFaces[1] != [NSNull null] || selectedFaces[3] != [NSNull null] || selectedFaces[5] != [NSNull null]){
        self.faceEven.image = [UIImage imageNamed:@"evengrey"];
    }
}

- (IBAction)tapFaceFive:(id)sender {
    
    NSArray *selectedFaces = [[SelectedStore sharedStore]selectedOptions];
    NSString *ts = [[TemporarySelection sharedStore]temporarySelection];
    
    if (selectedFaces[4] == [NSNull null]) {
        [[SelectedStore sharedStore]addSelection:ts atIndex:4];
        self.faceFive.image = [UIImage imageNamed:@"face5red"];
    } else if ([ts isEqualToString:selectedFaces[4]]) {
        [[SelectedStore sharedStore]removeSelectionAtIndex:4];
        self.faceFive.image = [UIImage imageNamed:@"face5white"];
    }
    
    if (selectedFaces[0] != [NSNull null] && selectedFaces[2] != [NSNull null] && selectedFaces[4] != [NSNull null] && [ts isEqualToString:selectedFaces[0]] && [ts isEqualToString:selectedFaces[2]] && [ts isEqualToString:selectedFaces[4]]) {
        self.faceOdd.image = [UIImage imageNamed:@"oddred"];
    } else if (selectedFaces[0] == [NSNull null] && selectedFaces[2] == [NSNull null] && selectedFaces[4] == [NSNull null]) {
        self.faceOdd.image = [UIImage imageNamed:@"oddwhite"];
    } else {
        self.faceOdd.image = [UIImage imageNamed:@"oddgrey"];
    }
}

- (IBAction)tapFaceSix:(id)sender {
    
    NSArray *selectedFaces = [[SelectedStore sharedStore]selectedOptions];
    NSString *ts = [[TemporarySelection sharedStore]temporarySelection];
    
    if (selectedFaces[5] == [NSNull null]) {
        [[SelectedStore sharedStore]addSelection:ts atIndex:5];
        self.faceSix.image = [UIImage imageNamed:@"face6red"];
    } else if ([ts isEqualToString:selectedFaces[5]]) {
        [[SelectedStore sharedStore]removeSelectionAtIndex:5];
        self.faceSix.image = [UIImage imageNamed:@"face6white"];
    }
    
    
    if (selectedFaces[1] != [NSNull null] && selectedFaces[3] != [NSNull null] && selectedFaces[5] != [NSNull null] && [ts isEqualToString:selectedFaces[1]] && [ts isEqualToString:selectedFaces[3]] && [ts isEqualToString:selectedFaces[5]]) {
        self.faceEven.image = [UIImage imageNamed:@"evenred"];
    } else if (selectedFaces[1] == [NSNull null] && selectedFaces[3] == [NSNull null] && selectedFaces[5] == [NSNull null]) {
        self.faceEven.image = [UIImage imageNamed:@"evenwhite"];
    } else if (selectedFaces[1] != [NSNull null] || selectedFaces[3] != [NSNull null] || selectedFaces[5] != [NSNull null]){
        self.faceEven.image = [UIImage imageNamed:@"evengrey"];
    }
}

- (IBAction)tapOdd:(id)sender {
    
    NSArray *selectedFaces = [[SelectedStore sharedStore]selectedOptions];
    NSString *ts = [[TemporarySelection sharedStore]temporarySelection];
    
    if (selectedFaces[0] == [NSNull null] && selectedFaces[2] == [NSNull null] && selectedFaces[4] == [NSNull null]) {
        [[SelectedStore sharedStore]addSelection:ts atIndex:0];
        [[SelectedStore sharedStore]addSelection:ts atIndex:2];
        [[SelectedStore sharedStore]addSelection:ts atIndex:4];
        self.faceOdd.image = [UIImage imageNamed:@"oddred"];
        self.faceOne.image = [UIImage imageNamed:@"face1red"];
        self.faceThree.image = [UIImage imageNamed:@"face3red"];
        self.faceFive.image = [UIImage imageNamed:@"face5red"];
        
    } else if ((selectedFaces[0] == [NSNull null]) || (selectedFaces[2] == [NSNull null]) || (selectedFaces[4] == [NSNull null]) ||
               ((selectedFaces[0] == [NSNull null]) && (selectedFaces[2] == [NSNull null])) ||
               ((selectedFaces[0] == [NSNull null]) && (selectedFaces[4] == [NSNull null])) ||
               ((selectedFaces[2] == [NSNull null]) && (selectedFaces[4] == [NSNull null]))) {
        
        return;
        
        
    } else if ([ts isEqualToString:selectedFaces[0]] && [ts isEqualToString:selectedFaces[2]] && [ts isEqualToString:selectedFaces[4]]) {
        [[SelectedStore sharedStore]removeSelectionAtIndex:0];
        [[SelectedStore sharedStore]removeSelectionAtIndex:2];
        [[SelectedStore sharedStore]removeSelectionAtIndex:4];
        self.faceOdd.image = [UIImage imageNamed:@"oddwhite"];
        self.faceOne.image = [UIImage imageNamed:@"face1white"];
        self.faceThree.image = [UIImage imageNamed:@"face3white"];
        self.faceFive.image = [UIImage imageNamed:@"face5white"];
    } else if (selectedFaces[0] == [NSNull null] || selectedFaces[2] == [NSNull null] || selectedFaces[4] == [NSNull null]) {
        
        self.faceOdd.image = [UIImage imageNamed:@"oddgrey"];
    }

}

- (IBAction)tapEven:(id)sender {
    
    NSArray *selectedFaces = [[SelectedStore sharedStore]selectedOptions];
    NSString *ts = [[TemporarySelection sharedStore]temporarySelection];
    
    if (selectedFaces[1] == [NSNull null] && selectedFaces[3] == [NSNull null] && selectedFaces[5] == [NSNull null]) {
        [[SelectedStore sharedStore]addSelection:ts atIndex:1];
        [[SelectedStore sharedStore]addSelection:ts atIndex:3];
        [[SelectedStore sharedStore]addSelection:ts atIndex:5];
        self.faceEven.image = [UIImage imageNamed:@"evenred"];
        self.faceTwo.image = [UIImage imageNamed:@"face2red"];
        self.faceFour.image = [UIImage imageNamed:@"face4red"];
        self.faceSix.image = [UIImage imageNamed:@"face6red"];
        
    } else if ((selectedFaces[1] == [NSNull null]) || (selectedFaces[3] == [NSNull null]) || (selectedFaces[5] == [NSNull null]) ||
               ((selectedFaces[1] == [NSNull null]) && (selectedFaces[3] == [NSNull null])) ||
               ((selectedFaces[1] == [NSNull null]) && (selectedFaces[5] == [NSNull null])) ||
               ((selectedFaces[3] == [NSNull null]) && (selectedFaces[3] == [NSNull null]))) {
        
        return;
        
        
    } else if ([ts isEqualToString:selectedFaces[1]] && [ts isEqualToString:selectedFaces[3]] && [ts isEqualToString:selectedFaces[5]]) {
        [[SelectedStore sharedStore]removeSelectionAtIndex:1];
        [[SelectedStore sharedStore]removeSelectionAtIndex:3];
        [[SelectedStore sharedStore]removeSelectionAtIndex:5];
        self.faceEven.image = [UIImage imageNamed:@"evenwhite"];
        self.faceTwo.image = [UIImage imageNamed:@"face2white"];
        self.faceFour.image = [UIImage imageNamed:@"face4white"];
        self.faceSix.image = [UIImage imageNamed:@"face6white"];

    }
}


- (IBAction)tapFavs:(id)sender {
    
    NSArray *favourites = [[FavouritesStore sharedStore]allFavourites];
    NSString *ts = [[TemporarySelection sharedStore]temporarySelection];
    
    if ([favourites containsObject:ts] ) {
        [[FavouritesStore sharedStore]removeFromFavourites:ts];
        self.faceFavourite.image = [UIImage imageNamed:@"favwhite"];
    } else if (![favourites containsObject:ts]) {
        [[FavouritesStore sharedStore]addToFavourites:ts];
        self.faceFavourite.image = [UIImage imageNamed:@"favred"];
    }
    
    [self saveChanges];
    
}


#pragma mark - Save

- (IBAction)selectionDone:(id)sender {
    
    for (int i=0; i<6; i++) {
        [[SelectedStore sharedStore]addSelection:initialSelection[i] atIndex:i];   }
    
    
    [self dismissViewControllerAnimated:YES completion:nil];
    [self.delegate reloadTableView];
    
}

-(IBAction)selectionSet:(id)sender {
    
    [[NSNotificationCenter defaultCenter] postNotificationName:@"refresh" object:nil];
    [self dismissViewControllerAnimated:YES completion:nil];
    [self.delegate reloadTableView];
    
    
}

-(void)saveChanges {
    
    NSUserDefaults *myDefaults = [NSUserDefaults standardUserDefaults];
    NSArray *favouriteOptions = [[FavouritesStore sharedStore]allFavourites];
    [myDefaults setObject:favouriteOptions forKey: @"Favourites"];
    
}



@end
