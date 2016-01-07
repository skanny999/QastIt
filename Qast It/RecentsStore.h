//
//  RecentsStore.h
//  Qast It
//
//  Created by Riccardo Scanavacca on 18/11/2015.
//  Copyright © 2015 Riccardo Scanavacca. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface RecentsStore : NSObject

+(instancetype)sharedStore;
-(NSArray *)allRecents;

-(void)addToRecents:(NSString *)option;
-(void)removeFromRecents:(NSString *)option;

@end
