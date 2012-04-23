//
//  AKCheckBox.h
//  CheckBoxDemo
//
//  Created by akin liu on 12-4-23.
//  Copyright (c) 2012年 hengxinsoft.com. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface AKCheckBox : UIControl

@property (nonatomic, strong, readwrite) UIImageView *checkBoxImageView;
@property (nonatomic, strong, readwrite) UILabel *titleLabel;

- (id) initWithFrame:(CGRect)frame
             checked:(BOOL)aChecked;

- (void)setTitleText:(NSString *)text;

@end
