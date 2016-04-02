
//
//  DetailViewController.m
//  Demo4_JS_Train
//
//  Created by  江苏 on 16/3/29.
//  Copyright © 2016年 jiangsu. All rights reserved.
//

#import "DetailViewController.h"
#import "PriceList.h"
@interface DetailViewController ()
@property (strong, nonatomic) IBOutlet UILabel *train_no;
@property (strong, nonatomic) IBOutlet UILabel *train_type;
@property (strong, nonatomic) IBOutlet UILabel *start_station;
@property (strong, nonatomic) IBOutlet UILabel *start_time;
@property (strong, nonatomic) IBOutlet UILabel *end_time;
@property (strong, nonatomic) IBOutlet UILabel *run_distance;
@property (strong, nonatomic) IBOutlet UILabel *run_time;
@property (strong, nonatomic) IBOutlet UILabel *end_station;
@property (strong, nonatomic) IBOutlet UILabel *price_type1;
@property (strong, nonatomic) IBOutlet UILabel *price1;
@property (strong, nonatomic) IBOutlet UILabel *price_type2;
@property (strong, nonatomic) IBOutlet UILabel *price2;
@property(nonatomic,strong)NSMutableArray* price_types;
@property(nonatomic,strong)NSMutableArray* prices;
@end

@implementation DetailViewController
- (void)viewDidLoad {
    [super viewDidLoad];
    self.price_types=[NSMutableArray array];
    self.prices=[NSMutableArray array];
    self.train_no.text=self.tra.train_no;
    self.train_type.text=self.tra.train_type;
    self.start_station.text=self.tra.start_station;
    self.start_time.text=self.tra.start_time;
    self.end_time.text=self.tra.end_time;
    self.run_distance.text=self.tra.run_distance;
    self.end_station.text=self.tra.end_station;
    self.run_time.text=self.tra.run_time;
    NSArray* arr=self.tra.priceList;
    for ( PriceList* list in arr) {
        [self.price_types addObject:list.price_type];
        [self.prices addObject:list.price];
    }
    self.price_type1.text=self.price_types[1];
    self.price1.text=self.prices[1];
    self.price_type2.text=self.price_types[0];
    self.price2.text=self.prices[0];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
