//
//  DetailedInfo.m
//  Homework4
//
//  Created by Anronio Lizarraga on 9/27/17.
//  Copyright © 2017 Antonio Lizarraga. All rights reserved.
//

#import "DetailedInfo.h"

@interface DetailedInfo ()

@end

@implementation DetailedInfo

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.imgCharacter.image = [UIImage imageNamed:userImages[self.cellIdx]];
    self.lblName.text = userNames[self.cellIdx];
    self.txtDescription.text = userDescription[self.cellIdx];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
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
