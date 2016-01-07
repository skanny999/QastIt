//
//  PlacesStore.h
//  Qast It
//
//  Created by Riccardo Scanavacca on 20/10/2015.
//  Copyright © 2015 Riccardo Scanavacca. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface PlacesStore : NSObject

+(instancetype)sharedStore;
-(NSArray *)allPlaces;

-(void)addToPlaces:(NSString *)option;
-(void)removeFromPlaces:(NSString *)option;

@end
