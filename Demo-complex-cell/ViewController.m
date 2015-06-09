//
//  ViewController.m
//  Demo-complex-cell
//
//  Created by Ralph Li on 6/9/15.
//  Copyright (c) 2015 LJC. All rights reserved.
//

#import "ViewController.h"
#import "ComplexCell.h"
#import <Masonry/Masonry.h>

@interface ViewController ()
<
UITableViewDelegate,
UITableViewDataSource
>

@property (nonatomic, strong) UITableView *tableView;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    self.tableView = [UITableView new];
    [self.view addSubview:self.tableView];
    [self.tableView registerClass:[ComplexCell class] forCellReuseIdentifier:@"cell"];
    [self.tableView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.edges.equalTo(self.view);
    }];
    self.tableView.delegate = self;
    self.tableView.dataSource = self;
    
}

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return 6;
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath {
    return [ComplexCell getHeightByType:indexPath.row%6];
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    
    ComplexCell* cell = [tableView dequeueReusableCellWithIdentifier:@"cell"];
    cell.type = indexPath.row%6;
    
    return cell;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (BOOL)prefersStatusBarHidden
{
    return YES;
}

@end
