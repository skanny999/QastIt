//
//  TemporarySelection.h
//  Qast It
//
//  Created by Riccardo Scanavacca on 05/10/2015.
//  Copyright © 2015 Riccardo Scanavacca. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface TemporarySelection : NSObject

+(instancetype)sharedStore;

-(NSString *)temporarySelection;
-(void)updateSelection: (NSString *) newSelection;



@end
