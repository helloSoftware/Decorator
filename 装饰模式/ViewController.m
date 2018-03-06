//
//  ViewController.m
//  装饰模式
//
//  Created by poplar on 2018/3/5.
//  Copyright © 2018年 poplar. All rights reserved.
//

#import "ViewController.h"
#import "ConcreteComponentA.h"
#import "ConcreteDecoratorA.h"
#import "ConcreteDecoratorB.h"
#import "ConcreteComponentB.h"

@interface ViewController ()<UITableViewDelegate,UITableViewDataSource>

@property (nonatomic , strong) UITableView *tableView;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    [self.view addSubview:self.tableView];
}

- (UITableView *)tableView{
    if (!_tableView) {
        UITableView *tableView = [[UITableView alloc] initWithFrame:self.view.bounds style:UITableViewStylePlain];
        tableView.dataSource = self;
        tableView.delegate = self;
        
        _tableView = tableView;
    }
    return _tableView;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    
    if (!indexPath.row) {

        ConcreteComponentA *componentA = [tableView dequeueReusableCellWithIdentifier:@"componentA"];
        if (!componentA) {
            componentA = [[ConcreteComponentA alloc] initWithStyle:UITableViewCellStyleValue1 reuseIdentifier:@"componentA"];
        }
        [componentA operation:@"单独的A"];
        return componentA;
    
    }else if (indexPath.row == 1){

        ConcreteDecoratorA *decoratorA = [tableView dequeueReusableCellWithIdentifier:@"DecoratorA"];
        if (!decoratorA) {
            ConcreteComponentA *componentA = [[ConcreteComponentA alloc] initWithStyle:UITableViewCellStyleValue1 reuseIdentifier:nil];
            decoratorA = [[ConcreteDecoratorA alloc] initWithStyle:UITableViewCellStyleValue1 reuseIdentifier:@"DecoratorA"];
            decoratorA.component = componentA;
        }
        [decoratorA operation:@"添加头"];
        return decoratorA;
    }else if (indexPath.row == 2){
        
        ConcreteDecoratorB *decoratorB = [tableView dequeueReusableCellWithIdentifier:@"DecoratorB"];
        if (!decoratorB) {
            ConcreteComponentA *componentA = [[ConcreteComponentA alloc] initWithStyle:UITableViewCellStyleValue1 reuseIdentifier:nil];
            decoratorB = [[ConcreteDecoratorB alloc] initWithStyle:UITableViewCellStyleValue1 reuseIdentifier:@"DecoratorB"];
            decoratorB.component = componentA;
        }
        [decoratorB operation:@"添加尾"];
        return decoratorB;
    }else if (indexPath.row == 3) {
        
        ConcreteComponentB *componentB = [tableView dequeueReusableCellWithIdentifier:@"componentB"];
        if (!componentB) {
            componentB = [[ConcreteComponentB alloc] initWithStyle:UITableViewCellStyleValue1 reuseIdentifier:@"componentB"];
        }
        [componentB operation:@"实例B"];
        return componentB;
        
    }else if (indexPath.row == 4){
        
        ConcreteDecoratorA *decoratorA = [tableView dequeueReusableCellWithIdentifier:@"DecoratorA"];
        if (!decoratorA) {
            ConcreteComponentB *componentB = [[ConcreteComponentB alloc] initWithStyle:UITableViewCellStyleValue1 reuseIdentifier:nil];
            decoratorA = [[ConcreteDecoratorA alloc] initWithStyle:UITableViewCellStyleValue1 reuseIdentifier:@"DecoratorA"];
            decoratorA.component = componentB;
        }
        [decoratorA operation:@"添加头"];

        return decoratorA;
    }else if (indexPath.row == 5){
        
        ConcreteDecoratorB *decoratorB = [tableView dequeueReusableCellWithIdentifier:@"DecoratorB"];
        if (!decoratorB) {
            ConcreteComponentB *componentB = [[ConcreteComponentB alloc] initWithStyle:UITableViewCellStyleValue1 reuseIdentifier:nil];
            decoratorB = [[ConcreteDecoratorB alloc] initWithStyle:UITableViewCellStyleValue1 reuseIdentifier:@"DecoratorB"];
            decoratorB.component = componentB;
        }
        [decoratorB operation:@"添加尾"];

        return decoratorB;
    }
    
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"cell"];
    if (!cell) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleValue1 reuseIdentifier:@"cell"];
        cell.backgroundColor = [UIColor whiteColor];
    }
    return cell;

    return nil;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return 10;
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath{
    return 300;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
