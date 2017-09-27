//
//  AddCharacter.m
//  Homework4
//
//  Created by Anronio Lizarraga on 9/26/17.
//  Copyright © 2017 Antonio Lizarraga. All rights reserved.
//

#import "AddCharacter.h"

@interface AddCharacter ()
@property NSMutableArray *userNames;
@property NSMutableArray *userDesc;
@property NSMutableArray *userImages;
@end

@implementation AddCharacter



- (void)viewDidLoad {
    [super viewDidLoad];
    [self initController];
    // Do any additional setup after loading the view.
    switch(_cellIdx)
    {
        case 0:
            self.imgCharacter.image = [UIImage imageNamed:_userImages[self.cellIdx]];
            self.lblName.text = _userNames[self.cellIdx];
            self.lblDescription.text = _userDesc[self.cellIdx];
            break;
    }

}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(void)initController {
    _userNames = [[NSMutableArray alloc] initWithObjects: @"Tyrion Lennister", @"Daenerys Targaryen", @"Gregor Clegane", @"Jon Snow", @"Cersei Lannister", nil];
    _userDesc = [[NSMutableArray alloc] initWithObjects: @"38 años", @"27 años", @"34 años", @"29 años", @"40 años", nil];
    _userImages = [[NSMutableArray alloc] initWithObjects: @"Tyrion.jpg", @"Daenerys.jpg",@"Gregor.jpg",@"Jon.jpg",@"Cersei.jpg", nil];
}


- (IBAction)SelectPhoto:(id)sender {
    UIImagePickerController *picker = [[UIImagePickerController alloc] init];
    picker.delegate = self;
    picker.allowsEditing = YES;
    picker.sourceType = UIImagePickerControllerSourceTypePhotoLibrary;
    
    [self presentViewController:picker animated:YES completion:NULL];
    
}


- (void)imagePickerController:(UIImagePickerController *)picker didFinishPickingMediaWithInfo:(NSDictionary *)info {
    
    
    [picker dismissViewControllerAnimated:YES completion:NULL];
    
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


@end
