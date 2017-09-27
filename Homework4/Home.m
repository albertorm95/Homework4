//
//  ViewController.m
//  Homework4
//
//  Created by Anronio Lizarraga on 9/26/17.
//  Copyright © 2017 Antonio Lizarraga. All rights reserved.
//

#import "Home.h"
#import "cellMainTable.h"
#import "AddCharacter.h"

@interface Home ()

@property long cellIdx;
@property NSMutableArray *userNames;
@property NSMutableArray *userAges;
@property NSMutableArray *userImages;
@end

@implementation Home

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    [self initController];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

//-----------------------------------------------------------------------------------------
-(void)initController {
    _userNames = [[NSMutableArray alloc] initWithObjects: @"Tyrion Lennister", @"Daenerys Targaryen", @"Gregor Clegane", @"Jon Snow", @"Cersei Lannister", nil];
    _userAges = [[NSMutableArray alloc] initWithObjects: @"38 años", @"27 años", @"34 años", @"29 años", @"40 años", nil];
    _userImages = [[NSMutableArray alloc] initWithObjects: @"Tyrion.jpg", @"Daenerys.jpg",@"Gregor.jpg",@"Jon.jpg",@"Cersei.jpg", nil];
}

/******************************************************************************************/
#pragma mark - Table source and delegate methods
/******************************************************************************************/
- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 1;
}

//-----------------------------------------------------------------------------------------
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return _userNames.count;
}
//-----------------------------------------------------------------------------------------
- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath {
    return 64;
}
//-----------------------------------------------------------------------------------------
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    //Initialize cells
    cellMainTable *cell = (cellMainTable *)[tableView dequeueReusableCellWithIdentifier:@"cellMainTable"];
    
    if (cell == nil) {
        [tableView registerNib:[UINib nibWithNibName:@"cellMainTable" bundle:nil] forCellReuseIdentifier:@"cellMainTable"];
        cell = [tableView dequeueReusableCellWithIdentifier:@"cellMainTable"];
    }
    //Fill cell with info from arrays
    cell.lblName.text       = _userNames[indexPath.row];
    cell.lblAge.text        = _userAges[indexPath.row];
    cell.imgUser.image      = [UIImage imageNamed:_userImages[indexPath.row]];
    
    return cell;
}
//-----------------------------------------------------------------------------------------
- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    self.cellIdx = indexPath.row;
    [self performSegueWithIdentifier:@"Segue1" sender:self];
}

-(void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    AddCharacter * myVC = segue.destinationViewController;
    myVC.cellIdx = self.cellIdx;
}

@end
