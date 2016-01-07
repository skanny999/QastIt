//
//  SelectedStore.m
//  Qast It
//
//  Created by Riccardo Scanavacca on 05/10/2015.
//  Copyright © 2015 Riccardo Scanavacca. All rights reserved.
//

#import "SelectedStore.h"

@interface SelectedStore ()

@property (nonatomic, strong) NSMutableArray *privateOptions;

@end

@implementation SelectedStore

+(instancetype)sharedStore {
    
    static SelectedStore *sharedStore = nil;
    
    if (!sharedStore) {
        sharedStore = [[self alloc]initPrivate];
    }
    
    return sharedStore;
}

-(instancetype) initPrivate {
    
    self = [super init];
    
    if (self) {
        
        NSMutableArray *blankArray = [[NSMutableArray alloc]init];
        
        // Create a blank array of 6 to hold the cells in the tableview
        
        for (int i=0; i<6; i++) {
            [blankArray addObject:[NSNull null]];
        }
        self.privateOptions = blankArray;
        
    }
    return self;
    
}

-(NSArray *)selectedOptions {
    
    return self.privateOptions;
    
}

-(void)addSelection: (NSString *)selection atIndex:(NSUInteger)indexPath {
    
    [[[SelectedStore sharedStore]privateOptions]replaceObjectAtIndex:indexPath withObject:selection];
    
    
}


-(void)removeSelectionAtIndex:(NSUInteger)indexPath{
    
    [[[SelectedStore sharedStore]privateOptions]replaceObjectAtIndex:indexPath withObject:[NSNull null]];
    
}

-(void)removeOptionAtIndex:(NSUInteger)indexPath{
    
    [[[SelectedStore sharedStore]privateOptions]removeObjectAtIndex:indexPath];
    
}

-(void)addEmptyOptionAtIndex:(NSUInteger)indexPath{
    [[[SelectedStore sharedStore]privateOptions]insertObject:[NSNull null] atIndex:indexPath];
    
}


@end
