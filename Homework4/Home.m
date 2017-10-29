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
    userNames = [[NSMutableArray alloc] initWithObjects: @"Elliot Alderson", @"Tyrell Wellick", @"Angela Moss", @"Phillip Price", @"Joanna Wellick", nil];
    userAges = [[NSMutableArray alloc] initWithObjects: @"31", @"35", @"29", @"?", @"30", nil];
    userImages = [[NSMutableArray alloc] initWithObjects: [UIImage imageNamed:@"Elliot.jpg"], [UIImage imageNamed:@"Tyrell.jpg"],[UIImage imageNamed:@"Angela.jpg"],[UIImage imageNamed:@"Phillip.jpg"],[UIImage imageNamed:@"Joanna.png"], nil];
    userDescription = [[NSMutableArray alloc] initWithObjects: @"But I'm only a vigilante hacker by night. By day, just a regular cybersecurity engineer. Employee number ER28-0652", @"Power belongs to the people that take it. Nothing to do with their hard work, strong ambitions, or rightful qualifications, no. The actual will to take is often the only thing that's necessary.", @" have an idea that will change the world. I know it sounds really stupid, but I know how to do it. I think it could actually work.", @"In my life, as I was making my way, I always asked the question, 'Am I the most powerful person in the room?' And the answer needed to be 'Yes'.", @"Of all the gifts you've been sending me, I've gotta say -- this one got me the wettest.", nil];
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
