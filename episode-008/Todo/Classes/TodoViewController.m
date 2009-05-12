#import "TodoViewController.h"

@implementation TodoViewController

@synthesize todos;

- (void)viewDidLoad {
    NSArray *array = [[NSArray alloc] initWithObjects:@"Take out the trash", 
                                                      @"Feed the dog", 
                                                      @"Mow the lawn", nil];
    self.todos = array;
    [array release];    
    [super viewDidLoad];
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return [self.todos count];
}

- (UITableViewCell *)tableView:(UITableView *)tableView 
cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    
    static NSString *CellIdentifier = @"TodoCellId";
    
    UITableViewCell *cell = 
    [tableView dequeueReusableCellWithIdentifier:CellIdentifier];
    if (cell == nil) {
        cell = [[[UITableViewCell alloc] initWithFrame:CGRectZero 
                                       reuseIdentifier:CellIdentifier] autorelease];
    }
    
    cell.text = [todos objectAtIndex:indexPath.row];
    return cell;
}

- (void)dealloc {
    [todos release];
    [super dealloc];
}

@end
