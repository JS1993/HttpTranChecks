//
//  JSTrainJsonParser.m
//  Demo4_JS_Train
//
//  Created by  江苏 on 16/3/28.
//  Copyright © 2016年 jiangsu. All rights reserved.
//

#import "JSTrainJsonParser.h"
#import "JSTrain.h"
#import "PriceList.h"
@implementation JSTrainJsonParser
+(NSMutableArray*)TrainParserWithData:(NSData*)jsonData{
    NSMutableArray* trains=[NSMutableArray array];
    NSDictionary* dicx=[NSJSONSerialization JSONObjectWithData:jsonData options:0 error:nil];
    NSDictionary* result=[dicx objectForKey:@"result"];
   NSArray* listArr=[result objectForKey:@"list"];
    for (NSDictionary* dic in listArr) {
        JSTrain* train=[[JSTrain alloc]init];
        train.train_no=[dic objectForKey:@"train_no"];
        train.train_type=[dic objectForKey:@"train_type"];
        train.start_station=[dic objectForKey:@"start_station"];
        train.start_station_type=[dic objectForKey:@"start_station_type"];
        train.end_station=[dic objectForKey:@"end_station"];
        train.end_station_type=[dic objectForKey:@"end_station_type"];
        train.start_time=[dic objectForKey:@"start_time"];
        train.end_time=[dic objectForKey:@"end_time"];
        train.run_time=[dic objectForKey:@"run_time"];
        train.run_distance=[dic objectForKey:@"run_distance"];
        NSArray* arr=[dic objectForKey:@"price_list"];
        for (NSDictionary* pricelist in arr) {
            PriceList* pricex=[[PriceList alloc]init];
            pricex.price_type=[pricelist objectForKey:@"price_type"];
            pricex.price=[pricelist objectForKey:@"price"];
            [train.priceList addObject:pricex];
        }
        [trains addObject:train];
    }
    return trains;
}
@end
