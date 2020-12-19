//
//  ViewController.m
//  HHAlertView
//
//  Created by LXH on 2017/2/17.
//  Copyright © 2017年 HHLM. All rights reserved.
//

#import "ViewController.h"
#import "HViewController.h"
@interface ViewController ()

@end

@implementation ViewController

- (void)viewWillAppear:(BOOL)animated
{
    NSLog(@"dddd");
}
- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event
{
    HViewController *v = [[HViewController alloc] init];
    [self presentViewController:v animated:YES completion:^{
        
    }];
}
@end
