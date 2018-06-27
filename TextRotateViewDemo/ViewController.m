//
//  ViewController.m
//  TextRotateViewDemo
//
//  Created by dev.liufeng on 2018/6/27.
//  Copyright © 2018年 dev.liufeng. All rights reserved.
//

#import "ViewController.h"
#import "TextRotateView.h"
#import "TextModel.h"
@interface ViewController ()
@property (nonatomic,strong) TextRotateView *textRotateView;
@property (weak, nonatomic) IBOutlet UILabel *rateLabel;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    NSMutableArray *textModels = [NSMutableArray new];
    for (int i=0; i<10; i++) {
        NSString *text = [NSString stringWithFormat:@"TextRotateView%d",i];
        TextModel *textModel = [[TextModel alloc] initWithText:text];
        textModel.textFont = 10+i;
        textModel.textColor = [UIColor colorWithRed:i*10/255.0 green:0 blue:0 alpha:1];
        [textModels addObject:textModel];
    }
    
    TextRotateView *textRotateView = [[TextRotateView alloc] initWithFrame:CGRectMake(0, 200, UIScreen.mainScreen.bounds.size.width, 50) textModels:textModels];
    textRotateView.rotateRate = 50;
    textRotateView.backgroundColor = [UIColor grayColor];
    self.textRotateView = textRotateView;
    self.rateLabel.text = [NSString stringWithFormat:@"%f",textRotateView.rotateRate];
    [self.view addSubview:textRotateView];
}

- (IBAction)startAnimation:(id)sender {
    [self.textRotateView start];
    NSLog(@"start");
}

- (IBAction)stop:(id)sender {
    [self.textRotateView stop];
    NSLog(@"stop");

}

- (IBAction)resume:(id)sender {
    [self.textRotateView resume];
    NSLog(@"resume");

}

- (IBAction)pause:(id)sender {
    [self.textRotateView pause];
    NSLog(@"pause");

}


- (IBAction)steperChanged:(id)sender {
    UIStepper *stepper = sender;
    self.textRotateView.rotateRate = stepper.value;
    self.rateLabel.text = [NSString stringWithFormat:@"%f",self.textRotateView.rotateRate];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
