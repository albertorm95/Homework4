#import <UIKit/UIKit.h>

extern NSMutableArray *userNames;
extern NSMutableArray *userAges;
extern NSMutableArray *userImages;
extern NSMutableArray *userDescription;

@interface Home : UIViewController
@property (strong, nonatomic) IBOutlet UITableView *tblMain;


@end

