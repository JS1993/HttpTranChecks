//
//  JSTrainJsonParser.h
//  Demo4_JS_Train
//
//  Created by  江苏 on 16/3/28.
//  Copyright © 2016年 jiangsu. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface JSTrainJsonParser : NSObject
+(NSMutableArray*)TrainParserWithData:(NSData*)jsonData;
@end
