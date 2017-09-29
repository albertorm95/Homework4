//
//  ViewController.h
//  Homework4
//
//  Created by Anronio Lizarraga on 9/26/17.
//  Copyright © 2017 Antonio Lizarraga. All rights reserved.
//

#import <UIKit/UIKit.h>


extern NSMutableArray *userNames;
extern NSMutableArray *userAges;
extern NSMutableArray *userImages;
extern NSMutableArray *userDescription;

@interface Home : UIViewController
@property (strong, nonatomic) IBOutlet UITableView *tblMain;


@end

