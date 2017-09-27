//
//  AddCharacter.h
//  Homework4
//
//  Created by Anronio Lizarraga on 9/26/17.
//  Copyright © 2017 Antonio Lizarraga. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface AddCharacter : UIViewController <UIImagePickerControllerDelegate, UINavigationControllerDelegate>
@property long cellIdx;
@property (strong, nonatomic) IBOutlet UIImageView *imgCharacter;
@property (strong, nonatomic) IBOutlet UILabel *lblName;
@property (strong, nonatomic) IBOutlet UILabel *lblDescription;


@end
