//
//  Options.m
//  QastIt
//
//  Created by Riccardo Scanavacca on 11/08/2015.
//  Copyright (c) 2015 Riccardo. All rights reserved.
//

#import "Options.h"

@interface Options ()

@property (strong, nonatomic) NSMutableDictionary *privateOptions;

@end

@implementation Options


+(instancetype)sharedStore {
    
    static Options *sharedStore = nil;
    
    if (!sharedStore) {
        sharedStore = [[self alloc]initPrivate];
    }
    
    return sharedStore;
}

-(instancetype) initPrivate {
    
    self = [super init];
    NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
    NSString *status = [defaults objectForKey:@"Modified"];
    
    if (self) {
        
        //check if new options have been added to user default, if they are initialize with User Default,
        //if they are not, initialize with standard options
        
        if ([status isEqualToString:@"yes"]) {
            NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
            NSData *data = [defaults objectForKey:@"Categories"];
            NSMutableDictionary *dic = [NSKeyedUnarchiver unarchiveObjectWithData:data];
            self.privateOptions = [[NSMutableDictionary alloc]initWithDictionary:dic];
           
        } else {
    
        self.privateOptions = [[NSMutableDictionary alloc]initWithObjects:@[self.twoWays, [NSNull null], self.food, self.drinks, self.crazy, self.times, self.colors, self.exercises] forKeys:@[@"TWO WAYS" ,@"PLACES" ,@"FOOD" ,@"DRINKS" ,@"CRAZY", @"TIMES", @"COLORS", @"EXCERCISES"]];
        }
    }

    return self;
}

-(NSDictionary *)allCategories {
    
    return [[Options sharedStore]privateOptions];
}


-(void)addCategory: (NSString *)category {
    
    [[[Options sharedStore]privateOptions]setObject:[NSMutableArray array] forKey:category];

}

-(void)addOption: (NSString *)option forCategory: (NSString *)category {
    
    [[self.privateOptions objectForKey:category] insertObject:option atIndex:0];
    
}

-(void)removeCategory: (NSString *)category{
    
    [[[Options sharedStore]privateOptions]removeObjectForKey:category];
    
}


-(void)removeOptionAtIndex: (NSUInteger)indexPath forCategory: (NSString *)category{
    
    [[self.privateOptions objectForKey:category] removeObjectAtIndex: indexPath];
    
}

-(void)modified {
    
    self.categoriesModified = @"yes";
    
}

#pragma mark - Standard options


-(NSMutableArray *)twoWays {
    
    NSMutableArray *twoWays = [[NSMutableArray alloc]initWithObjects:
                               @"Yes or No",
                               @"Leave or Stay",
                               @"Left or Right",
                               @"In or Out",
                               @"TRUTH OR LIE",
                               @"Buy or Sell",
                               nil];
    return twoWays;
}

-(NSMutableArray *)food {
    
    NSMutableArray *food = [[NSMutableArray alloc]initWithObjects:
                            @"Italian",
                            @"Indian",
                            @"Chinese",
                            @"Thai",
                            @"Pizza",
                            @"British",
                            @"Burger",
                            @"Kebab",
                            @"Vegetarian",
                            @"Vegan",
                            nil];
    return food;
}

-(NSMutableArray *)drinks {
    
    NSMutableArray *drinks = [[NSMutableArray alloc]initWithObjects:
                              @"Beer",
                              @"Spirit",
                              @"White Wine",
                              @"Red Wine",
                              @"Water",
                              @"Coke",
                              @"Juice",
                              @"COFFEE",
                              @"TEA",
                              nil];
    
    return drinks;
}


-(NSMutableArray *)crazy {
    
    NSMutableArray *crazy = [[NSMutableArray alloc]initWithObjects:
                             @"Bunjee Jumping",
                             @"Skydiving",
                             @"Call a Long Lost Friend",
                             @"Learn To Ride a Motorbike",
                             @"Vegetarian For One Month",
                             @"Write a Letter And Send It",
                             @"Go Skinny-Dipping",
                             @"Book a Weekend Abroad",
                             @"Get On a Boat",
                             nil];
    return crazy;
}

-(NSMutableArray *)times {
    
    NSMutableArray *times = [[NSMutableArray alloc]initWithObjects:@"7 AM", @"8 AM",@"9 AM",@"10 AM",@"11 AM",@"12 AM",@"1 PM",@"2 PM",@"3 PM",@"4 PM",@"5 PM",@"6 PM",@"7 PM",@"8 PM",@"9 PM",@"10 PM",@"11 PM",@"12 PM",@"1 AM",@"2 AM",@"3 AM",@"4 AM",@"5 AM",@"6 AM", nil];
    
    return times;
                            
}

-(NSMutableArray *)colors {
    
    NSMutableArray *colors = [[NSMutableArray alloc]initWithObjects:@"BLACK", @"BLUE", @"BROWN", @"GREY", @"GREEN", @"ORANGE", @"PINK", @"PURPLE", @"RED", @"WHITE", @"YELLOW", nil];
    
    return colors;

}

-(NSMutableArray *)exercises {
    
    NSMutableArray *exercises = [[NSMutableArray alloc]initWithObjects:@"RUN", @"SWIM", @"CYCLING", @"PUSHUPS", @"ABDOMINAL CRUNCHES", @"SQUATS", @"LUNGES", @"CHASE A CHICKEN", @"ZUMBA", @"PLANK", nil];
    
    return exercises;
    
}

@end
