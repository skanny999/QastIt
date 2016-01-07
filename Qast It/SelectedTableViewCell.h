//
//  SelectedTableViewCell.h
//  Qast It
//
//  Created by Riccardo Scanavacca on 05/10/2015.
//  Copyright © 2015 Riccardo Scanavacca. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface SelectedTableViewCell : UITableViewCell

@property (weak, nonatomic) IBOutlet UILabel *selectedOption;

@property (weak, nonatomic) IBOutlet UIImageView *selectedFace;

@end
