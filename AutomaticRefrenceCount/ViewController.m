//
//  ViewController.m
//  AutomaticRefrenceCount
//
//  Created by DivTao on 16/3/17.
//  Copyright © 2016年 HT. All rights reserved.
//

#import "ViewController.h"
#import "SecondViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    
    
    self.view.backgroundColor = [UIColor orangeColor];
    
    [self presentViewControllerButton];
}

- (void) presentViewControllerButton{
    UIButton * button = [UIButton buttonWithType:UIButtonTypeCustom];
    [button setTitle:@"下一页" forState:UIControlStateNormal];
    button.backgroundColor = [UIColor greenColor];
    [button setTitleColor:[UIColor grayColor] forState:UIControlStateNormal];
    
    [button addTarget:self action:@selector(next) forControlEvents:UIControlEventTouchUpInside];
    button.frame = CGRectMake(self.view.bounds.size.width / 2 - 50, self.view.bounds.size.height / 2 - 25, 100, 50);
    [self.view addSubview: button];
}
- (void)next{
    SecondViewController * svc = [[SecondViewController alloc] init];
    [self presentViewController:svc animated:YES completion:nil];
}

- (void)viewWillAppear:(BOOL)animated{
    [super viewWillAppear:animated];
    NSMutableArray * firstArray  = [[NSMutableArray alloc] init];
    NSMutableArray * secondArray = [[NSMutableArray alloc] init];
    
    [firstArray addObject:secondArray];
    [secondArray addObject:firstArray];
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
