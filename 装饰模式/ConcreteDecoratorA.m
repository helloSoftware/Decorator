//
//  ConcreteDecoratorA.m
//  装饰模式
//
//  Created by poplar on 2018/3/5.
//  Copyright © 2018年 poplar. All rights reserved.
//

#import "ConcreteDecoratorA.h"

static const CGFloat titleHeight = 50;

@interface ConcreteDecoratorA()

@property (nonatomic , strong) UILabel *titleLabel;

@end

@implementation ConcreteDecoratorA

- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier{
    if (self = [super initWithStyle:style reuseIdentifier:reuseIdentifier]) {
        
    }
    return self;
}

- (void)operation{
    
    [super operation];
    
    [self addTitleView];
}

- (CGFloat)cellHeight{
    return self.component.cellHeight + titleHeight;
}

- (void)addTitleView{
    self.titleLabel = [[UILabel alloc] init];
    self.titleLabel.text = @"添加一个title视图";
    self.titleLabel.backgroundColor = [UIColor yellowColor];
    [self.contentView addSubview:self.titleLabel];
}

- (void)layoutSubviews{
    
    [super layoutSubviews];
    
    self.titleLabel.frame = CGRectMake(0, 0, self.bounds.size.width, titleHeight);
    
    UITableViewCell *cell = (UITableViewCell *)self.component;
    cell.layer.borderColor = [UIColor yellowColor].CGColor;
    cell.layer.borderWidth = 10;
    CGPoint origin = cell.frame.origin;
    origin.y = titleHeight;
    cell.frame = CGRectMake(origin.x, origin.y, self.bounds.size.width, self.bounds.size.height - titleHeight);
    
}

@end
