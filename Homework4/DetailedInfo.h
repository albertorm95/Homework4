//
//  DetailedInfo.h
//  Homework4
//
//  Created by Anronio Lizarraga on 9/27/17.
//  Copyright © 2017 Antonio Lizarraga. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface DetailedInfo : UIViewController

@property (strong, nonatomic) IBOutlet UIImageView *imgCharacter;
@property (strong, nonatomic) IBOutlet UILabel *lblName;
@property (strong, nonatomic) IBOutlet UITextView *txtDescription;
@property long cellIdx;
@end
