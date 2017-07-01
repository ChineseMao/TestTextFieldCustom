//
//  ViewController.m
//  TestTextField
//
//  Created by 毛韶谦 on 2017/6/26.
//  Copyright © 2017年 毛韶谦. All rights reserved.
//

#import "ViewController.h"
#import "MSQTextField.h"

@interface ViewController ()

@property (nonatomic, strong) MSQTextField *textField;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.textField.frame = CGRectMake(40, 100, self.view.frame.size.width-80, 50);
    
    
    
    
    // Do any additional setup after loading the view, typically from a nib.
}

- (IBAction)tapGestureAction:(id)sender {
    
    [self.view endEditing:YES];
}


- (MSQTextField *)textField {
    
    if (!_textField) {
        _textField = [[MSQTextField alloc] init];
        
        [_textField setBorderStyle:UITextBorderStyleRoundedRect];
        [_textField customWithPlaceholder:@"我在这显示" color:[UIColor redColor] font:[UIFont systemFontOfSize:18]];
        [self.view addSubview:_textField];
    }
    return _textField;
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
