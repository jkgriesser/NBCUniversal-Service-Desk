//
//  AppDetailViewController.h
//  NBCUniversal Service Desk
//
//  Created by Jberg on 08/06/2014.
//  Copyright (c) 2014 NBCUniversal. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface AppDetailViewController : UIViewController
@property (weak, nonatomic) IBOutlet UIImageView *appIcon;
@property (weak, nonatomic) IBOutlet UILabel *appName;
@property (weak, nonatomic) IBOutlet UILabel *appDescriptionFull;
@property (strong, nonatomic) NSArray *appDetailModel;
- (IBAction)viewAppOnAppStore:(id)sender;

@end
