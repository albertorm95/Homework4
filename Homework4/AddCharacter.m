//
//  AddCharacter.m
//  Homework4
//
//  Created by Anronio Lizarraga on 9/26/17.
//  Copyright © 2017 Antonio Lizarraga. All rights reserved.
//

#import "AddCharacter.h"

@interface AddCharacter ()

@end

@implementation AddCharacter



- (void)viewDidLoad {
    [super viewDidLoad];
    self.imgPhoto.image = [UIImage imageNamed:@"Tyron.jpg"];
    _imgPhoto.hidden = YES;
    UITapGestureRecognizer *tap = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(dismissKeyboard)];
    
    [self.view addGestureRecognizer:tap];
    
    //_txtDescription.layer.cornerRadius=8.0f;
    //_txtDescription.layer.masksToBounds=YES;
    //_txtDescription.layer.borderColor=[[UIColor blackColor]CGColor];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}




- (void)imagePickerController:(UIImagePickerController *)picker didFinishPickingMediaWithInfo:(NSDictionary *)info {
    UIImage *chosenImage = info[UIImagePickerControllerEditedImage];
    self.imgPhoto.image = chosenImage;
    
    [picker dismissViewControllerAnimated:YES completion:NULL];

    _imgPhoto.hidden = NO;
}


- (void)imagePickerControllerDidCancel:(UIImagePickerController *)picker {
    
    [picker dismissViewControllerAnimated:YES completion:NULL];
    
}
/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/


- (IBAction)SelectPhoto:(id)sender {
    UIImagePickerController *picker = [[UIImagePickerController alloc] init];
    picker.delegate = self;
    picker.allowsEditing = YES;
    picker.sourceType = UIImagePickerControllerSourceTypePhotoLibrary;
    
    [self presentViewController:picker animated:YES completion:NULL];
    
}
- (IBAction)AddCharacter:(id)sender {
    [userNames addObject:_txtName.text];
    [userAges addObject: _txtAge.text];
    [userImages addObject: _imgPhoto.image];
    [userDescription addObject: _txtDescription.text];
}

- (IBAction)NameEnd:(id)sender {
    [[self view] endEditing:YES];
}
-(void)dismissKeyboard
{
    [_txtAge resignFirstResponder];
    [_txtName resignFirstResponder];
    [_txtDescription resignFirstResponder];
}

- (IBAction)AgeEnd:(id)sender {
    [[self view] endEditing:YES];
}

@end
