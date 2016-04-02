//
//  ViewController.m
//  Demo4_JS_Train
//
//  Created by  江苏 on 16/3/28.
//  Copyright © 2016年 jiangsu. All rights reserved.
//

#import "ViewController.h"
#import "JSTrainTableViewController.h"
@interface ViewController ()
@property (strong, nonatomic) IBOutlet UITextField *fromTF;
@property (strong, nonatomic) IBOutlet UITextField *toTF;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}
- (IBAction)next:(UIButton *)sender {

}
-(void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender{
        JSTrainTableViewController* jstc=segue.destinationViewController;
        jstc.fromPoint=self.fromTF.text;
        jstc.toPoint=self.toTF.text;
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
