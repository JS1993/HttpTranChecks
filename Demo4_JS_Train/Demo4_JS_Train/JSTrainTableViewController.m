//
//  JSTrainTableViewController.m
//  Demo4_JS_Train
//
//  Created by  江苏 on 16/3/28.
//  Copyright © 2016年 jiangsu. All rights reserved.
//

#import "JSTrainTableViewController.h"
#import "JSTrainJsonParser.h"
#import "JSTrainTableViewCell.h"
#import "JSTrain.h"
#import "DetailViewController.h"
@interface JSTrainTableViewController ()
@property(nonatomic,strong)NSMutableArray* trains;
@end

@implementation JSTrainTableViewController
-(void)viewWillAppear:(BOOL)animated{
    [super viewWillAppear:animated];
    self.trains=[NSMutableArray array];
    NSString* path=[NSString stringWithFormat:@"http://apis.juhe.cn/train/s2swithprice?start=%@&end=%@&traintype=&key=e8c838b424156488db22fa6f02c381",self.fromPoint,self.toPoint];
    path=[path stringByAddingPercentEncodingWithAllowedCharacters:[NSCharacterSet URLQueryAllowedCharacterSet]];
    NSURL* url=[NSURL URLWithString:path];
    NSMutableURLRequest* request=[NSMutableURLRequest requestWithURL:url];
    NSURLSession* session=[NSURLSession sharedSession];
    NSURLSessionTask* task=[session dataTaskWithRequest:request completionHandler:^(NSData * _Nullable data, NSURLResponse * _Nullable response, NSError * _Nullable error) {
        self.trains=[JSTrainJsonParser TrainParserWithData:data];
        dispatch_sync(dispatch_get_main_queue(), ^{
            [self.tableView reloadData];
        });
    }];
    [task resume];
}
- (void)viewDidLoad {
    [super viewDidLoad];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Table view data source

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
//#warning Incomplete implementation, return the number of rows
    return self.trains.count;
}


- (JSTrainTableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    JSTrainTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"Cell" forIndexPath:indexPath];
    JSTrain* train=self.trains[indexPath.row];
    cell.train_nox.text=train.train_no;
    cell.start_station_typex.text=train.start_station_type;
    cell.start_stationx.text=train.start_station;
    cell.end_station_typex.text=train.end_station_type;
    cell.end_stationx.text=train.end_station;
    cell.start_timex.text=train.start_time;
    cell.end_timex.text=train.end_time;
    cell.run_timex.text=train.run_time;
    return cell;
}


/*
// Override to support conditional editing of the table view.
- (BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath {
    // Return NO if you do not want the specified item to be editable.
    return YES;
}
*/

/*
// Override to support editing the table view.
- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath {
    if (editingStyle == UITableViewCellEditingStyleDelete) {
        // Delete the row from the data source
        [tableView deleteRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationFade];
    } else if (editingStyle == UITableViewCellEditingStyleInsert) {
        // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
    }   
}
*/

/*
// Override to support rearranging the table view.
- (void)tableView:(UITableView *)tableView moveRowAtIndexPath:(NSIndexPath *)fromIndexPath toIndexPath:(NSIndexPath *)toIndexPath {
}
*/

/*
// Override to support conditional rearranging of the table view.
- (BOOL)tableView:(UITableView *)tableView canMoveRowAtIndexPath:(NSIndexPath *)indexPath {
    // Return NO if you do not want the item to be re-orderable.
    return YES;
}
*/

#pragma mark - Navigation
-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
    JSTrain* t=self.trains[indexPath.row];
    [self performSegueWithIdentifier:@"toDvc" sender:t];
}
// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    DetailViewController* dvc=segue.destinationViewController;
    dvc.tra=sender;
}

@end
