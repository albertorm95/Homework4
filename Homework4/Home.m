//
//  ViewController.m
//  Homework4
//
//  Created by Anronio Lizarraga on 9/26/17.
//  Copyright © 2017 Antonio Lizarraga. All rights reserved.
//

#import "Home.h"
#import "cellMainTable.h"
#import "DetailedInfo.h"

NSMutableArray *userNames;
NSMutableArray *userAges;
NSMutableArray *userImages;
NSMutableArray *userDescription;
unsigned char FirstTime = 0;

@interface Home ()

@property long cellIdx;

@end

@implementation Home

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    if(FirstTime == 0)
    {
        [self initController];
        FirstTime = 1;
    }
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

//-----------------------------------------------------------------------------------------
-(void)initController {
    userNames = [[NSMutableArray alloc] initWithObjects: @"Tyrion Lennister", @"Daenerys Targaryen", @"Gregor Clegane", @"Jon Snow", @"Cersei Lannister", nil];
    userAges = [[NSMutableArray alloc] initWithObjects: @"38", @"27", @"34", @"29", @"40", nil];
    userImages = [[NSMutableArray alloc] initWithObjects: [UIImage imageNamed:@"Tyrion.jpg"], [UIImage imageNamed:@"Daenerys.jpg"],[UIImage imageNamed:@"Gregor.jpg"],[UIImage imageNamed:@"Jon.jpg"],[UIImage imageNamed:@"Cersei.jpg"], nil];
    userDescription = [[NSMutableArray alloc] initWithObjects: @"Es el tercer hijo de Lord Tywin LAnnister y Lady Joanna Lannister, y hermano menor delos gemelos Cersei y Jaime. Es apodado el Gnomo y Mediohombre debido a su enanismo", @"Es la hija menor del rey Aerys II Targaryen y su hermana esposa, la reina Rhaella. Luego de la Guerra del Usurpador, durante la que urieron sus padres y su hermano mayor Rhaegar, ella y su hermano Viserys vivieron en el exilio en varias ciudades libres.", @"Apodado LA montaña que Cabalga o simplemente la Montaña, fue cabeza de la Casa Clegane y vasallo de la Casa Lannister. Es conocido por su estatura, crueldad y poderio en batalla", @"Es el Lord Comandante de la Guardia de la Noche n 998. Es hijo bastardo de Lord Eddard Stark. Su lobo huargo, Fantasma, es albino y mudo.", @"Es la hija mayor de Lord Tywin Lannister y Lady Joanna Lannister. Tiene dos hermanos, su mellizo Jaime y su hermano menor Tyrion. Tras la Guerra del Usurpador se casò con el nuevo rey, Robert Baratheon y se convirtiò en Reina de los Siete Reinos.", nil];
}

/******************************************************************************************/
#pragma mark - Table source and delegate methods
/******************************************************************************************/
- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 1;
}

//-----------------------------------------------------------------------------------------
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return userNames.count;
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
    cell.lblName.text       = userNames[indexPath.row];
    cell.lblAge.text        = [userAges[indexPath.row] stringByAppendingString:@" años"];
    cell.imgUser.image      = userImages[indexPath.row];
    
    return cell;
}
//-----------------------------------------------------------------------------------------
- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    self.cellIdx = indexPath.row;
    [self performSegueWithIdentifier:@"Segue1" sender:self];
}

-(void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    if([[segue identifier] isEqualToString:@"Segue1"])
    {
        DetailedInfo * myVC = segue.destinationViewController;
        myVC.cellIdx = self.cellIdx;
    }
    else
    {
        
    }
}

@end
