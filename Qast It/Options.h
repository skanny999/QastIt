//
//  Options.h
//  QastIt
//
//  Created by Riccardo Scanavacca on 11/08/2015.
//  Copyright (c) 2015 Riccardo. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Options : NSObject


+(instancetype)sharedStore;

@property (nonatomic, strong) NSString *categoriesModified;
@property (nonatomic, strong) NSMutableArray *twoWays;
@property (nonatomic, strong) NSMutableArray *food;
@property (nonatomic, strong) NSMutableArray *drinks;
@property (nonatomic, strong) NSMutableArray *crazy;
@property (nonatomic, strong) NSMutableArray *times;
@property (nonatomic, strong) NSMutableArray *colors;
@property (nonatomic, strong) NSMutableArray *exercises;


-(NSDictionary *)allCategories;


-(void)addCategory: (NSString *)category;
-(void)addOption: (NSString *)option forCategory: (NSString *)category;
-(void)removeCategory: (NSString *)category;
-(void)removeOptionAtIndex: (NSUInteger)indexPath forCategory: (NSString *)category;
-(void)modified;


@end
