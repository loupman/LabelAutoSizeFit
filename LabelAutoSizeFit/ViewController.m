//
//  ViewController.m
//  LabelAutoSizeFit
//
//  Created by PhilipLee on 2/24/16.
//  Copyright © 2016 PhilipLee. All rights reserved.
//

#import "ViewController.h"
#import "LableTableViewCell.h"

#define kCountOfPoints                          6

@interface ViewController ()

@property(strong, nonatomic) NSArray *startPoints;
@property(strong, nonatomic) NSArray *endPoints;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    _startPoints = @[@"法国布列塔尼半岛", @"湖南长沙", @"美国萨摩耶"];
    _endPoints = @[@"海南岛", @"法国巴黎", @"中国香港"];
    
    [_tableView registerNib:[UINib nibWithNibName:@"LableTableViewCell" bundle:nil] forCellReuseIdentifier:@"LableTableViewCell"];
}

#pragma mark UITableViewDelegate
- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return kCountOfPoints;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return 1;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    NSInteger section = indexPath.section;
    
    static NSString *identifier = @"LableTableViewCell";
    LableTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:identifier];
    cell.accessoryType = UITableViewCellAccessoryNone;
    cell.selectionStyle = UITableViewCellSelectionStyleNone;
    cell.startPointLabel.text = _startPoints[section % _startPoints.count];
    cell.endPointLabel.text = _endPoints[section % _endPoints.count];
    
    return cell;
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    return 44.f;
}
- (CGFloat)tableView:(UITableView *)tableView heightForHeaderInSection:(NSInteger)section
{
    return 12.1f;
}

-(CGFloat)tableView:(UITableView *)tableView heightForFooterInSection:(NSInteger)section
{
    return 0.1f;
}

@end
