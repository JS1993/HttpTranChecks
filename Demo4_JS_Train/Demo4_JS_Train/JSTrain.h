//
//  JSTrain.h
//  Demo4_JS_Train
//
//  Created by  江苏 on 16/3/28.
//  Copyright © 2016年 jiangsu. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface JSTrain : NSObject
@property(nonatomic,copy)NSString* train_no;
@property(nonatomic,copy)NSString* train_type;
@property(nonatomic,copy)NSString* start_station;
@property(nonatomic,copy)NSString* start_station_type;
@property(nonatomic,copy)NSString* end_station;
@property(nonatomic,copy)NSString* end_station_type;
@property(nonatomic,copy)NSString* start_time;
@property(nonatomic,copy)NSString* end_time;
@property(nonatomic,copy)NSString* run_time;
@property(nonatomic,copy)NSString* run_distance;
@property(nonatomic,strong)NSMutableArray* priceList;
//"train_no": "D2287",	/*车次*/
//"start_station_name": "上海虹桥",		/*车次始发站*/
//"end_station_name": "深圳北",			/*车次终点站*/
//"from_station_name": "上海虹桥",		/*出发站*/
//"to_station_name": "温州南",		/*到达站*/
//"start_time": "06:25",		/*出发时间*/
//"arrive_time": "10:53",			/*到达时间*/
//"train_class_name": "动车",		/*车次类型*/
//"day_difference": "0",		/*历时天数*/
//"lishi": "04:28",			/*总历时时间*/
//"gr_num": "--",	/*高级软卧：-- 说明无该席位*/
//"qt_num": "--",	/*其他*/
//"rw_num": "--",	/*软卧*/
//"rz_num": "--",	/*软座*/
//"tz_num": "--",	/*特等座*/
//"wz_num": "无",	/*无座*/
//"yw_num": "--",	/*硬卧*/
//"yz_num": "--",	/*硬座*/
//"ze_num": "无",	/*二等座*/
//"zy_num": "无",	/*一等座*/
//"swz_num": "--"	/*商务座*/
@end
