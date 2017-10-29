#import <UIKit/UIKit.h>
#import "Home.h"

@interface DetailedInfo : UIViewController

@property (strong, nonatomic) IBOutlet UIImageView *imgCharacter;
@property (strong, nonatomic) IBOutlet UILabel *lblName;
@property (strong, nonatomic) IBOutlet UITextView *txtDescription;
@property long cellIdx;
@end
