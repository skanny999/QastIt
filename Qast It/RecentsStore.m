//
//  RecentsStore.m
//  Qast It
//
//  Created by Riccardo Scanavacca on 18/11/2015.
//  Copyright © 2015 Riccardo Scanavacca. All rights reserved.
//

#import "RecentsStore.h"

@interface RecentsStore ()
@property (nonatomic, strong) NSMutableArray *privateOptions;
@end

@implementation RecentsStore

+(instancetype)sharedStore {
    
    static RecentsStore *sharedStore = nil;
    
    if (!sharedStore) {
        sharedStore = [[self alloc] initPrivate];
    }
    
    return sharedStore;
}

-(instancetype) initPrivate {
    
    self = [super init];
    
    if (self) {
        
        NSUserDefaults *myDefaults = [NSUserDefaults standardUserDefaults];
        NSArray *savedRecent = [myDefaults objectForKey:@"Recents"];
        if (savedRecent != NULL) {
            self.privateOptions = [[NSMutableArray alloc]initWithArray:[myDefaults objectForKey:@"Recents"]];
        } else {
 
        self.privateOptions = [[NSMutableArray alloc]init];
        }
    }
    
    return self;
}

-(NSArray *)allRecents {
    return [[RecentsStore sharedStore]privateOptions];
}


-(void)addToRecents: (NSString *)option{
    
    [[[RecentsStore sharedStore]privateOptions]insertObject:option atIndex:0];
    NSArray *recentOptions = [[RecentsStore sharedStore]allRecents];
    if (recentOptions.count == 50) {
        [[[RecentsStore sharedStore]privateOptions]removeObjectAtIndex:49];
    }
    NSArray *moreRecentOptions = [[RecentsStore sharedStore]allRecents];
    NSUserDefaults *myDefaults = [NSUserDefaults standardUserDefaults];
    [myDefaults setObject:moreRecentOptions forKey: @"Recents"];
    
}

-(void)removeFromRecents: (NSString *)option{
    
    [[[RecentsStore sharedStore]privateOptions]removeObject:option];
    NSUserDefaults *myDefaults = [NSUserDefaults standardUserDefaults];
    NSArray *recentOptions = [[RecentsStore sharedStore]allRecents];
    [myDefaults setObject:recentOptions forKey: @"Recents"];
    
}



@end
