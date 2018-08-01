//
//  JPXForSecondTableViewCell.m
//  share
//
//  Created by 萨缪 on 2018/7/29.
//  Copyright © 2018年 萨缪. All rights reserved.
//

#import "JPXForSecondTableViewCell.h"

@implementation JPXForSecondTableViewCell


- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier
{
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    
    if ( self ){
   // _button1 = [[UIButton alloc] init];
        

    
    _button2 = [UIButton buttonWithType:UIButtonTypeRoundedRect] ;
    
    _button3 = [UIButton buttonWithType:UIButtonTypeRoundedRect] ;
    
    _button4 = [UIButton buttonWithType:UIButtonTypeRoundedRect] ;
    
    _button5 = [UIButton buttonWithType:UIButtonTypeRoundedRect] ;
        
        //[self.contentView addSubview:_button1];
        [self.contentView addSubview:_button2];
        [self.contentView addSubview:_button3];
        
        [self.contentView addSubview:_button4];
        [self.contentView addSubview:_button5];
    }
    return self;
    
}

- (void)layoutSubviews
{
    [super layoutSubviews];
    
    //_button2.layer.cornerRadius = 10.0;
    
    _button2.layer.borderWidth = 1.0;
    
    _button2.layer.borderColor = [UIColor whiteColor].CGColor;
    
    //_button3.layer.cornerRadius = 10.0;
    
    _button3.layer.borderWidth = 1.0;
    
    _button3.layer.borderColor = [UIColor whiteColor].CGColor;
    
    //_button4.layer.cornerRadius = 10.0;
    
    _button4.layer.borderWidth = 1.0;
    
    _button4.layer.borderColor = [UIColor whiteColor].CGColor;
    
    //_button5.layer.cornerRadius = 10.0;
    
    _button5.layer.borderWidth = 1.0;
    
    _button5.layer.borderColor = [UIColor whiteColor].CGColor;
    
    [_button2 addTarget:self action:@selector(pressButton1:) forControlEvents:UIControlEventTouchUpInside];
    
    [_button2 setBackgroundImage:[UIImage imageNamed:@"2.png"] forState:UIControlStateSelected];
    
    [_button3 addTarget:self action:@selector(pressButton1:) forControlEvents:UIControlEventTouchUpInside];
    
    [_button3 setBackgroundImage:[UIImage imageNamed:@"2.png"] forState:UIControlStateSelected];
    
    [_button4 addTarget:self action:@selector(pressButton1:) forControlEvents:UIControlEventTouchUpInside];
    
    [_button4 setBackgroundImage:[UIImage imageNamed:@"2.png"] forState:UIControlStateSelected];
    
    [_button5 addTarget:self action:@selector(pressButton1:) forControlEvents:UIControlEventTouchUpInside];
    
    [_button5 setBackgroundImage:[UIImage imageNamed:@"2.png"] forState:UIControlStateSelected];
    
    [_button2 setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
    
    [_button3 setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
    
    [_button4 setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
    
    [_button5 setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
    
    
    [_button2 setBackgroundColor:[UIColor grayColor]];
    
    _button2.titleLabel.font = [UIFont systemFontOfSize:18];
    
    _button2.tintColor = [UIColor blackColor];
    
    _button3.titleLabel.font = [UIFont systemFontOfSize:18];
    
    _button3.tintColor = [UIColor blackColor];
    
    _button4.titleLabel.font = [UIFont systemFontOfSize:18];
    
    _button4.tintColor = [UIColor blackColor];
    
    _button5.titleLabel.font = [UIFont systemFontOfSize:18];
    
    _button5.tintColor = [UIColor blackColor];
    
    //_button1.frame = CGRectMake(0, 0, 80, 80);
    
    _button2.frame = CGRectMake(0, 0, 80, 30);
    
    _button3.frame = CGRectMake(100, 0, 80, 30);
    
    _button4.frame = CGRectMake(200, 0, 80, 30);
    
    _button5.frame = CGRectMake(300, 0, 80, 30);
    
    _button1.backgroundColor = [UIColor whiteColor];
    
    _button2.backgroundColor = [UIColor whiteColor];
    
    _button3.backgroundColor = [UIColor whiteColor];
    
    _button4.backgroundColor = [UIColor whiteColor];
    
    _button5.backgroundColor = [UIColor whiteColor];
}

- (void)pressButton1:(UIButton *)button
{
    button.selected = !button.selected;
}

- (void)awakeFromNib {
    [super awakeFromNib];
    // Initialization code
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

@end
