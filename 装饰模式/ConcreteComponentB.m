//
//  ConcreteComponentB.m
//  装饰模式
//
//  Created by poplar on 2018/3/6.
//  Copyright © 2018年 poplar. All rights reserved.
//

#import "ConcreteComponentB.h"

@implementation ConcreteComponentB

- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier{
    if (self = [super initWithStyle:style reuseIdentifier:reuseIdentifier]) {
        self.backgroundColor = [UIColor blueColor];
    }
    return self;
}

- (void)operation:(NSString *)text{
    
    self.textLabel.text = [text stringByAppendingString:@"Bb"];
    
    NSLog(@"this is A Component");
}

@end
