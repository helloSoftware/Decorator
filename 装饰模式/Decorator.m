//
//  Decorator.m
//  装饰模式
//
//  Created by poplar on 2018/3/5.
//  Copyright © 2018年 poplar. All rights reserved.
//

#import "Decorator.h"

@interface Decorator()

@end

@implementation Decorator

- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier{
    if (self = [super initWithStyle:style reuseIdentifier:reuseIdentifier]) {
        [self operation];
    }
    return self;
}
- (void)operation{
    
    NSLog(@"decorator operation");
    [self.component operation];
}

- (void)setComponent:(id<Component>)component{
    _component = component;
    UITableViewCell *cell = (UITableViewCell *)_component;
    [self.contentView addSubview:cell];
}

- (CGFloat)cellHeight{
    return self.component.cellHeight;
}

@end
