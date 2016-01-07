//
//  FavouritesStore.h
//  Qast It
//
//  Created by Riccardo Scanavacca on 07/10/2015.
//  Copyright © 2015 Riccardo Scanavacca. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface FavouritesStore : NSObject

+(instancetype)sharedStore;
-(NSArray *)allFavourites;

-(void)addToFavourites:(NSString *)option;
-(void)removeFromFavourites:(NSString *)option;

@end
