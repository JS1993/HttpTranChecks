//
//  JSTrainTableViewCell.h
//  Demo4_JS_Train
//
//  Created by  江苏 on 16/3/28.
//  Copyright © 2016年 jiangsu. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface JSTrainTableViewCell : UITableViewCell
@property (strong, nonatomic) IBOutlet UILabel *train_nox;
@property (strong, nonatomic) IBOutlet UILabel *start_station_typex;
@property (strong, nonatomic) IBOutlet UILabel *start_stationx;
@property (strong, nonatomic) IBOutlet UILabel *end_station_typex;
@property (strong, nonatomic) IBOutlet UILabel *end_stationx;
@property (strong, nonatomic) IBOutlet UILabel *start_timex;
@property (strong, nonatomic) IBOutlet UILabel *end_timex;
@property (strong, nonatomic) IBOutlet UILabel *run_timex;

@end
