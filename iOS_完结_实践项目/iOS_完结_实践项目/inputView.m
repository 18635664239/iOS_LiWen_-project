//
//  inputView.m
//  iOS_完结_实践项目
//
//  Created by 文 on 16/6/16.
//  Copyright © 2016年 文. All rights reserved.
//

#import "inputView.h"
#import "Masonry.h"

@interface inputView()

@property (strong ,nonatomic)  UILabel * backLabel;

@property (strong ,nonatomic)  UITextField * nameText;
@property (strong ,nonatomic)  UITextField * passText;
@property (strong ,nonatomic)  UILabel * lineLabel;
@property (strong ,nonatomic)  UIButton * landingBtn;
@property (strong ,nonatomic)  UIButton * zhuceBtn;

@end
@implementation inputView

- (instancetype)initWithFrame:(CGRect)frame {
    self = [super initWithFrame:frame];
    if (self) {
        self.backgroundColor = [UIColor grayColor];
        [self addSubview:self.backLabel];
        [self addSubview:self.nameText];
        [self addSubview:self.passText];
        [self addSubview:self.lineLabel];
        [self addSubview:self.landingBtn];
        [self addSubview:self.zhuceBtn];
        
    }
    return self;
}

- (void)layoutSubviews {
    [super layoutSubviews];
    __weak typeof (self) weakSelf = self;
    
    [self.backLabel mas_makeConstraints:^(MASConstraintMaker *make) {
        //与顶部的距离
        make.top.equalTo(weakSelf.mas_top).offset(15);
        //左对齐
        make.left.equalTo(weakSelf.mas_left);
        //右对齐
        make.right.equalTo(weakSelf.mas_right);
        //高度
        make.height.equalTo(@88);
    }];
    
    [weakSelf.nameText mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(weakSelf.backLabel);
        make.left.equalTo(weakSelf.backLabel.mas_left).offset(15);
        make.right.equalTo(weakSelf.backLabel.mas_right).offset(-15);
        make.height.equalTo(@44);
    }];
    [weakSelf.lineLabel mas_makeConstraints:^(MASConstraintMaker *make) {
        make.height.equalTo(@1);
        make.left.equalTo(weakSelf.backLabel.mas_left).offset(15);
        make.right.equalTo(weakSelf.backLabel.mas_right).offset(-15);
        make.top.equalTo(weakSelf.backLabel.mas_centerY);
    }];
    [weakSelf.passText mas_makeConstraints:^(MASConstraintMaker *make) {
        make.bottom.equalTo(weakSelf.backLabel);
        make.left.equalTo(weakSelf.backLabel).offset(15);
        make.right.equalTo(weakSelf.backLabel).offset(-15);
        make.height.equalTo(@44);
    }];
    [weakSelf.landingBtn mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(weakSelf.backLabel.mas_bottom).offset(15);
        make.left.equalTo(weakSelf).offset(16);
        make.right.equalTo(weakSelf).offset(-16);
        make.height.equalTo(@30);
    }];
    [weakSelf.zhuceBtn mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(weakSelf.landingBtn.mas_bottom).offset(15);
        make.right.equalTo(weakSelf).offset(-15);
        make.size.sizeOffset = CGSizeMake(100, 40);
    }];
    
}


- (UILabel *)backLabel {
    if (!_backLabel) {
        _backLabel = [[UILabel alloc]init];
        _backLabel.backgroundColor = [UIColor whiteColor];
    }
    return _backLabel;
}

- (UITextField *)nameText {
    if (!_nameText) {
        _nameText = [[UITextField alloc]init];
        _nameText.backgroundColor = [UIColor redColor];
    }
    return _nameText;
}

- (UITextField *)passText {
    if (!_passText) {
        _passText = [[UITextField alloc]init];
        _passText.backgroundColor = [UIColor orangeColor];
    }
    return _passText;
}

- (UILabel *)lineLabel {
    if (!_lineLabel) {
        _lineLabel = [[UILabel alloc]init];
        _lineLabel.backgroundColor = [UIColor grayColor];
    }
    return _lineLabel;
}

- (UIButton *)landingBtn {
    if (!_landingBtn) {
        _landingBtn = [UIButton buttonWithType:(UIButtonTypeCustom)];
        _landingBtn.backgroundColor = [UIColor blueColor];
    }
    return _landingBtn;
}

- (UIButton *)zhuceBtn {
    if (!_zhuceBtn) {
        _zhuceBtn = [UIButton buttonWithType:(UIButtonTypeCustom)];
        _zhuceBtn.backgroundColor = [UIColor yellowColor];
    }
    return _zhuceBtn;
}





@end
