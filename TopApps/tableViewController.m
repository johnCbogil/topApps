//
//  ViewController.m
//  TopApps
//
//  Created by Aditya Narayan on 3/26/15.
//  Copyright (c) 2015 John Bogil. All rights reserved.
//

#import "tableViewController.h"

@interface tableViewController ()

@end

@implementation tableViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    APIRequest *apiRequestClass = [[APIRequest alloc]init];
    [apiRequestClass itunesStoreRequest];
    self.tableView.delegate = self;
    self.tableView.dataSource = self;
    
    



}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - UITableView Delegate Methods

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    
    return 1;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"Cell"];
    if (cell == nil) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleSubtitle reuseIdentifier:@"Cell"];
        cell.selectionStyle = UITableViewCellSelectionStyleNone;
    }
    
    
    APIRequest *apiRequestClasss = [[APIRequest alloc]init];
    
    cell.textLabel.text = [apiRequestClasss.appsArray objectAtIndex:indexPath.row];
    
    
    
    
    return cell;
}








@end
