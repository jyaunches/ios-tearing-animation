#import "MainTableViewController.h"
#import "XBCurlView.h"
#import "PageTearingCell.h"

@implementation MainTableViewController

- (IBAction)curlPressed:(id)sender {
    NSIndexPath *indexPath = [self.tableView indexPathForSelectedRow];
    PageTearingCell *cell = [[[self tableView] visibleCells] objectAtIndex:indexPath.row];

    CGRect r = cell.topView.frame;
    cell.topCurlView = [[XBCurlView alloc] initWithFrame:r];
    cell.topCurlView.opaque = NO; //Transparency on the next page (so that the view behind curlView will appear)
    cell.topCurlView.pageOpaque = YES; //The page to be curled has no transparency
    [cell.topCurlView curlView:cell.topView cylinderPosition:CGPointMake(r.size.width/3, r.size.height/2) cylinderAngle:M_PI_2 cylinderRadius:UI_USER_INTERFACE_IDIOM()==UIUserInterfaceIdiomPad? 80: 50 animatedWithDuration:0.6];
}
- (IBAction)uncurlPressed:(id)sender {
    NSIndexPath *indexPath = [self.tableView indexPathForSelectedRow];
    PageTearingCell *cell = [[[self tableView] visibleCells] objectAtIndex:indexPath.row];

    [cell.topCurlView uncurlAnimatedWithDuration:0.6 completion:^{
        cell.topCurlView = nil;
    }];
}

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return 1;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *CellIdentifier = @"PageTearingCell";
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier forIndexPath:indexPath];
    
    // Configure the cell...
    
    return cell;
}



@end
