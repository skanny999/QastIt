//
//  TemporarySelection.m
//  Qast It
//
//  Created by Riccardo Scanavacca on 05/10/2015.
//  Copyright © 2015 Riccardo Scanavacca. All rights reserved.
//

#import "TemporarySelection.h"

@interface TemporarySelection ()


@property (nonatomic, strong) NSString *selection;



@end

@implementation TemporarySelection


+(instancetype)sharedStore {
    
    static TemporarySelection *sharedStore = nil;
    
    if (!sharedStore) {
        sharedStore = [[self alloc]initPrivate];
    }
    
    return sharedStore;
}

-(instancetype) initPrivate {
    
    self = [super init];
    
    if (self) {
        self.selection = [[NSString alloc] init];
    }
    
    return self;
}


-(NSString *) temporarySelection {
    
    return [[TemporarySelection sharedStore]selection];
    
}

-(void)updateSelection: (NSString *) newSelection {
    
    self.selection = [[NSString alloc]initWithString:newSelection];
    

    
    
}


@end
