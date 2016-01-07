//
//  PlacesStore.m
//  Qast It
//
//  Created by Riccardo Scanavacca on 20/10/2015.
//  Copyright © 2015 Riccardo Scanavacca. All rights reserved.
//

#import "PlacesStore.h"

@interface PlacesStore ()
@property (nonatomic, strong) NSMutableArray *privateOptions;
@end

@implementation PlacesStore

+(instancetype)sharedStore {
    
    static PlacesStore *sharedStore = nil;
    
    if (!sharedStore) {
        sharedStore = [[self alloc] initPrivate];
    }
    
    return sharedStore;
}

-(instancetype) initPrivate {
    
    self = [super init];
    
    if (self) {
        NSUserDefaults *myDefaults = [NSUserDefaults standardUserDefaults];
        self.privateOptions = [[NSMutableArray alloc]initWithArray:[myDefaults objectForKey:@"Places"]];
    }
    
    return self;
}

-(NSArray *)allPlaces {
    return [[PlacesStore sharedStore]privateOptions];
}


-(void)addToPlaces: (NSString *)option{
    
    [[[PlacesStore sharedStore]privateOptions]insertObject:option atIndex:0];
    NSUserDefaults *myDefaults = [NSUserDefaults standardUserDefaults];
    NSArray *favouriteOptions = [[PlacesStore sharedStore]allPlaces];
    [myDefaults setObject:favouriteOptions forKey: @"Places"];
    
    
}

-(void)removeFromPlaces: (NSString *)option{
    
    [[[PlacesStore sharedStore]privateOptions]removeObject:option];
    NSUserDefaults *myDefaults = [NSUserDefaults standardUserDefaults];
    NSArray *favouriteOptions = [[PlacesStore sharedStore]allPlaces];
    [myDefaults setObject:favouriteOptions forKey: @"Places"];
    
}


@end
