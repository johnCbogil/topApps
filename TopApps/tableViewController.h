//
//  ViewController.h
//  TopApps
//
//  Created by Aditya Narayan on 3/26/15.
//  Copyright (c) 2015 John Bogil. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "APIRequest.h"
#import "App.h"

@interface tableViewController : UIViewController <UITableViewDataSource, UITableViewDelegate>

@property (strong, nonatomic) IBOutlet UITableView *tableView;

@end

