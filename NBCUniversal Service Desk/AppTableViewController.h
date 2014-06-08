//
//  AppTableViewController.h
//  NBCUniversal Service Desk
//
//  Created by Jberg on 08/06/2014.
//  Copyright (c) 2014 NBCUniversal. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface AppTableViewController : UITableViewController
@property (strong, nonatomic) NSArray *appIcons;
@property (strong, nonatomic) NSArray *appNames;
@property (strong, nonatomic) NSArray *appDescriptionsShort;
@property (strong, nonatomic) NSArray *appDescriptionsFull;
@property (strong, nonatomic) NSArray *appLinks;
@end
