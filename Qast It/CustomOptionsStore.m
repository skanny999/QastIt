//
//  CustomOptionsStore.m
//  QastIt
//
//  Created by Riccardo Scanavacca on 13/08/2015.
//  Copyright (c) 2015 Riccardo. All rights reserved.
//

#import "CustomOptionsStore.h"


@interface CustomOptionsStore ()
@property (nonatomic, strong) NSMutableArray *privateOptions;
@end

@implementation CustomOptionsStore

+(instancetype)sharedStore {
    
    static CustomOptionsStore *sharedStore = nil;
    
    if (!sharedStore) {
        sharedStore = [[self alloc] initPrivate];
    }
    
    return sharedStore;
}

-(instancetype) initPrivate {
    
    self = [super init];
    
    if (self) {
        self.privateOptions = [[NSMutableArray alloc] init];
    }
    
    return self;
}

-(NSArray *)allCustomOptions {
    return [[CustomOptionsStore sharedStore]privateOptions];
}

-(void)newCustomOption: (NSString *) option {
    
    [[[CustomOptionsStore sharedStore]privateOptions] insertObject:option atIndex:0];
}

-(void)removeOption: (CustomOptionsStore *)option {
    
    [[[CustomOptionsStore sharedStore]privateOptions]removeObject:option];
    
}








@end
