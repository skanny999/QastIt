//
//  FavouritesStore.m
//  Qast It
//
//  Created by Riccardo Scanavacca on 07/10/2015.
//  Copyright © 2015 Riccardo Scanavacca. All rights reserved.
//

#import "FavouritesStore.h"



@interface FavouritesStore ()
@property (nonatomic, strong) NSMutableArray *privateOptions;
@end

@implementation FavouritesStore

+(instancetype)sharedStore {
    
    static FavouritesStore *sharedStore = nil;
    
    if (!sharedStore) {
        sharedStore = [[self alloc] initPrivate];
    }
    
    return sharedStore;
}

-(instancetype) initPrivate {
    
    self = [super init];
    
    if (self) {
        NSUserDefaults *myDefaults = [NSUserDefaults standardUserDefaults];
        self.privateOptions = [[NSMutableArray alloc]initWithArray:[myDefaults objectForKey:@"Favourites"]];
        
        
    }
    
    return self;
}

-(NSArray *)allFavourites {
    return [[FavouritesStore sharedStore]privateOptions];
}


-(void)addToFavourites: (NSString *)option{
    
    [[[FavouritesStore sharedStore]privateOptions]insertObject:option atIndex:0];
    
}

-(void)removeFromFavourites: (NSString *)option{
    
    [[[FavouritesStore sharedStore]privateOptions]removeObject:option];
    
}

@end
