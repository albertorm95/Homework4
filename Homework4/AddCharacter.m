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

    self.imgCharacter.image = [UIImage imageNamed:_userImages[self.cellIdx]];
    self.lblName.text = _userNames[self.cellIdx];
    self.txtDescription.text = _userDesc[self.cellIdx];

}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(void)initController {
    _userNames = [[NSMutableArray alloc] initWithObjects: @"Tyrion Lennister", @"Daenerys Targaryen", @"Gregor Clegane", @"Jon Snow", @"Cersei Lannister", nil];
    _userDesc = [[NSMutableArray alloc] initWithObjects: @"Es el tercer hijo de Lord Tywin LAnnister y Lady Joanna Lannister, y hermano menor delos gemelos Cersei y Jaime. Es apodado el Gnomo y Mediohombre debido a su enanismo", @"Es la hija menor del rey Aerys II Targaryen y su hermana esposa, la reina Rhaella. Luego de la Guerra del Usurpador, durante la que urieron sus padres y su hermano mayor Rhaegar, ella y su hermano Viserys vivieron en el exilio en varias ciudades libres.", @"Apodado LA montaña que Cabalga o simplemente la Montaña, fue cabeza de la Casa Clegane y vasallo de la Casa Lannister. Es conocido por su estatura, crueldad y poderio en batalla", @"Es el Lord Comandante de la Guardia de la Noche n 998. Es hijo bastardo de Lord Eddard Stark. Su lobo huargo, Fantasma, es albino y mudo.", @"Es la hija mayor de Lord Tywin Lannister y Lady Joanna Lannister. Tiene dos hermanos, su mellizo Jaime y su hermano menor Tyrion. Tras la Guerra del Usurpador se casò con el nuevo rey, Robert Baratheon y se convirtiò en Reina de los Siete Reinos.", nil];
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
