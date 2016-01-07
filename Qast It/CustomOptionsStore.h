//
//  CustomOptionsStore.h
//  QastIt
//
//  Created by Riccardo Scanavacca on 13/08/2015.
//  Copyright (c) 2015 Riccardo. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface CustomOptionsStore : NSObject

+(instancetype)sharedStore;
-(NSArray *)allCustomOptions;
-(void)newCustomOption: (NSString *) option;
-(void)removeOption: (CustomOptionsStore *)option;


@end
