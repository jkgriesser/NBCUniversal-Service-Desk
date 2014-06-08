//
//  AppTableViewController.m
//  NBCUniversal Service Desk
//
//  Created by Jberg on 08/06/2014.
//  Copyright (c) 2014 NBCUniversal. All rights reserved.
//

#import "AppTableViewController.h"
#import "AppTableViewCell.h"
#import "AppDetailViewController.h"

@interface AppTableViewController ()

@end

@implementation AppTableViewController

- (id)initWithStyle:(UITableViewStyle)style
{
    self = [super initWithStyle:style];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    _appIcons = @[@"cisco-anyconnect.png",
                       @"concur-travel.png",
                       @"dropbox.png",
                       @"jive-mobile.png",
                       @"rsa-securid.png"];
    
    _appNames = @[@"Cisco AnyConnect",
                  @"Concur",
                  @"Dropbox",
                  @"Jive Mobile",
                  @"RSA SecureID"];
    
    _appDescriptionsShort = @[@"NBCU intranet access",
                              @"Travel, receipts, expense reports",
                              @"Online storage",
                              @"Enterprise social networking",
                              @"Remote access token"];
    
    _appDescriptionsFull = @[@"Cisco AnyConnect full description",
                             @"Concur full description",
                             @"Dropbox full description",
                             @"Jive Mobile full description",
                             @"RSA SecureID full description"];
    
    _appLinks = @[@"https://itunes.apple.com/app/cisco-anyconnect/id392790924?mt=8",
                  @"https://itunes.apple.com/app/concur-travel-receipts-expense/id335023774?mt=8",
                  @"https://itunes.apple.com/app/dropbox/id327630330?mt=8",
                  @"https://itunes.apple.com/app/jive-mobile/id634499583?mt=8",
                  @"https://itunes.apple.com/app/rsa-securid-software-token/id318038618?mt=8"];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    // Return the number of sections.
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    // Return the number of rows in the section.
    return _appNames.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    AppTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"appTableCell" forIndexPath:indexPath];
    
    // Configure the cell...
    
    long row = [indexPath row];
    
    cell.appIcon.image = [UIImage imageNamed:_appIcons[row]];
    cell.appName.text = _appNames[row];
    cell.appDescriptionShort.text = _appDescriptionsShort[row];
    
    return cell;
}

/*
// Override to support conditional editing of the table view.
- (BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath
{
    // Return NO if you do not want the specified item to be editable.
    return YES;
}
*/

/*
// Override to support editing the table view.
- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath
{
    if (editingStyle == UITableViewCellEditingStyleDelete) {
        // Delete the row from the data source
        [tableView deleteRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationFade];
    } else if (editingStyle == UITableViewCellEditingStyleInsert) {
        // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
    }   
}
*/

/*
// Override to support rearranging the table view.
- (void)tableView:(UITableView *)tableView moveRowAtIndexPath:(NSIndexPath *)fromIndexPath toIndexPath:(NSIndexPath *)toIndexPath
{
}
*/

/*
// Override to support conditional rearranging of the table view.
- (BOOL)tableView:(UITableView *)tableView canMoveRowAtIndexPath:(NSIndexPath *)indexPath
{
    // Return NO if you do not want the item to be re-orderable.
    return YES;
}
*/

#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    if ([[segue identifier] isEqualToString:@"ShowAppDetails"])
    {
        AppDetailViewController *detailViewController = [segue destinationViewController];
        NSIndexPath *myIndexPath = [self.tableView indexPathForSelectedRow];
        long row = [myIndexPath row];
        detailViewController.appDetailModel = @[_appIcons[row], _appNames[row],
                                                _appDescriptionsFull[row], _appLinks[row]];
    }
}

@end
