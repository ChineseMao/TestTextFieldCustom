//
//  MSQTextField.m
//  TestTextField
//
//  Created by 毛韶谦 on 2017/6/26.
//  Copyright © 2017年 毛韶谦. All rights reserved.
//

#import "MSQTextField.h"

@implementation MSQTextField

/**
 *  设置Placeholder
 */
- (void)customWithPlaceholder: (NSString *)placeholder color: (UIColor *)color font: (UIFont *)font {
    
    self.placeholder = placeholder;
    [self setValue:color forKeyPath:@"_placeholderLabel.color"];
    [self setValue:font forKeyPath:@"_placeholderLabel.font"];
}


/**
 *  重写这个方法是为了使Placeholder居中，如果不写会出现类似于下图中的效果，文字稍微偏上了一些
 */
//- (void)drawPlaceholderInRect:(CGRect)rect {
//    
//    [super drawPlaceholderInRect:CGRectMake(0, 0, 0, 0)];
//}

/**
 *  控制编辑文本的位置
 */
-(CGRect)editingRectForBounds:(CGRect)bounds

{
    
    
    CGRect inset = CGRectMake(bounds.origin.x, bounds.origin.y+20, bounds.size.width, bounds.size.height);
    
    return inset;
    
}

/**
 *  控制显示文本的位置
 */
-(CGRect)textRectForBounds:(CGRect)bounds

{
    
    CGRect inset = CGRectMake(bounds.origin.x, bounds.origin.y+20, bounds.size.width, bounds.size.height);
    
    return inset;
    
    
}

- (CGRect)placeholderRectForBounds:(CGRect)bounds{
    CGRect inset = CGRectMake(bounds.origin.x, bounds.origin.y+20, bounds.size.width, bounds.size.height);
    NSLog(@"++++++++++++%f",bounds.size.height);
    return inset;
}



@end
