//
//  AddCharacter.h
//  Homework4
//
//  Created by Anronio Lizarraga on 9/26/17.
//  Copyright © 2017 Antonio Lizarraga. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Home.h"
@interface AddCharacter : UIViewController <UIImagePickerControllerDelegate, UINavigationControllerDelegate>


- (IBAction)SelectPhoto:(id)sender;
- (IBAction)AddCharacter:(id)sender;
- (IBAction)NameEnd:(id)sender;
- (IBAction)AgeEnd:(id)sender;

@property (strong, nonatomic) IBOutlet UITextView *txtDescription;
@property (strong, nonatomic) IBOutlet UIImageView *imgPhoto;
@property (strong, nonatomic) IBOutlet UITextField *txtAge;
@property (strong, nonatomic) IBOutlet UITextField *txtName;



@end
