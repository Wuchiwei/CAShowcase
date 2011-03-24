#import "RootViewController.h"
#import "ZBBananaViewController.h"
#import "ZBTransitionViewController.h"
#import "ZBLayoutViewController.h"
#import "ZBAnimateTableViewController.h"
#import "ZBFireworkViewController.h"

@implementation RootViewController

- (void)dealloc 
{	
    [super dealloc];
}

- (void)viewDidUnload 
{
}

#pragma mark -
#pragma mark View lifecycle

- (void)viewDidLoad
{
	[super viewDidLoad];
	self.title = @"Showcases";
}

#pragma mark -
#pragma mark Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView 
{
    return 1;
}
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section 
{
    return 5;
}
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath 
{
    
    static NSString *CellIdentifier = @"Cell";
    
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier];
    if (cell == nil) {
        cell = [[[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:CellIdentifier] autorelease];
    }
    switch (indexPath.row) {
		case 0:
			cell.textLabel.text = @"Basic Animation";
			break;
		case 1:
			cell.textLabel.text = @"Transitions";
			break;			
		case 2:
			cell.textLabel.text = @"Auto-layout";
			break;
		case 3:
			cell.textLabel.text = @"Tableview";
			break;
		case 4:
			cell.textLabel.text = @"Firework";
			break;
			
		default:
			break;
	}
	cell.accessoryType = UITableViewCellAccessoryDisclosureIndicator;
    return cell;
}

#pragma mark -
#pragma mark Table view delegate

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath 
{
	UIViewController *controller = nil;
	switch (indexPath.row) {
		case 0:
		{
			controller = [[ZBBananaViewController alloc] init];
		}
			break;
		case 1:
		{
			controller = [[ZBTransitionViewController alloc] init];
		}
			break;
		case 2:
		{
			controller = [[ZBLayoutViewController alloc] init];
		}
			break;
		case 3:
		{
			controller = [[ZBAnimateTableViewController alloc] init];
		}
			break;
		case 4:
		{
			controller = [[ZBFireworkViewController alloc] init];
		}
			break;
		default:
			break;
	}
	if (controller) {
		[self.navigationController pushViewController:controller animated:YES];
		[controller release];
	}
}


#pragma mark -
#pragma mark Memory management

- (void)didReceiveMemoryWarning 
{
    [super didReceiveMemoryWarning];
}

@end



