//
//  ConcreteDecoratorB.m
//  装饰模式
//
//  Created by poplar on 2018/3/6.
//  Copyright © 2018年 poplar. All rights reserved.
//

#import "ConcreteDecoratorB.h"

static const CGFloat bottomHeight = 50;

@interface ConcreteDecoratorB()

@property (nonatomic , strong) UILabel *bottomLabel;

@end

@implementation ConcreteDecoratorB

- (void)awakeFromNib {
    [super awakeFromNib];
    // Initialization code
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}


- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier{
    if (self = [super initWithStyle:style reuseIdentifier:reuseIdentifier]) {
        
    }
    return self;
}

- (void)operation:(NSString *)text{
    
    [super operation:text];
    
    [self addTitleView:text];
}


- (void)addTitleView:(NSString *)text{
    self.bottomLabel = [[UILabel alloc] init];
    self.bottomLabel.text = [@"添加一个bottom视图" stringByAppendingString:text];
    self.bottomLabel.backgroundColor = [UIColor greenColor];
    [self.contentView addSubview:self.bottomLabel];
}

- (void)layoutSubviews{
    
    [super layoutSubviews];
    
    self.bottomLabel.frame = CGRectMake(0, self.bounds.size.height - bottomHeight, self.bounds.size.width, bottomHeight);
    
    UITableViewCell *cell = (UITableViewCell *)self.component;
    cell.layer.borderColor = [UIColor greenColor].CGColor;
    cell.layer.borderWidth = 10;
    CGPoint origin = cell.frame.origin;
    origin.y = bottomHeight;
    cell.frame = CGRectMake(0, 0, self.bounds.size.width, self.bounds.size.height - bottomHeight);
    
}


@end
