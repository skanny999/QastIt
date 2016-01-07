//
//  SelectedStore.h
//  Qast It
//
//  Created by Riccardo Scanavacca on 05/10/2015.
//  Copyright © 2015 Riccardo Scanavacca. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface SelectedStore : NSObject

+(instancetype)sharedStore;
-(NSArray *)selectedOptions;
-(void)addSelection: (NSString *)selection atIndex:(NSUInteger)indexPath;
-(void)removeSelectionAtIndex:(NSUInteger)indexPath;
-(void)removeOptionAtIndex:(NSUInteger)indexPath;
-(void)addEmptyOptionAtIndex:(NSUInteger)indexPath;
@end
