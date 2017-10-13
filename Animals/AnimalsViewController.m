//
//  AnimalsViewController.m
//  RuntimeWithMsgSend
//
//  Created by 侯春娇 on 2017/10/11.
//  Copyright © 2017年 侯春娇. All rights reserved.
//

#import "AnimalsViewController.h"
#import "Cat.h"
#import "Dog.h"
#import "Rabbit.h"

@interface AnimalsViewController ()

@end

@implementation AnimalsViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    Cat *cat = [[Cat alloc] init];
    [cat sayHello];
    
    Dog *dog = [[Dog alloc] init];
    [dog sayHello];
    
    Rabbit *rabbit = [[Rabbit alloc] init];
    [rabbit sayHello];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
