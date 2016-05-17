//
//  ViewController.m
//  AFNerwoking
//
//  Created by macpc on 20/07/15.
//  Copyright (c) 2015 macpc. All rights reserved.
//

#import "ViewController.h"
#import "AFHTTPRequestOperation.h"
#import "AFHTTPRequestOperationManager.h"
#import "AFHTTPSessionManager.h"
#import "AFURLSessionManager.h"
#import <Foundation/Foundation.h>
#import "AFURLConnectionOperation.h"
#import "AFHTTPRequestOperationManager.h"
#import "AFURLConnectionOperation.h"
#import "AFHTTPSessionManager.h"
#import "ThirdviewViewController.h"
@interface ViewController ()
{
    NSMutableDictionary *dict;
    NSString *apiString;
    NSString *binarydata;
    NSString *base64;
    NSString *strResponse;
    NSDictionary *entriesdict;
    
    
}
@end

@implementation ViewController


- (void)viewDidLoad {
    [super viewDidLoad];
    
    
    
    
    UIImage *myimg = [UIImage imageNamed:@"1.jpg"];
    NSData *imageData = UIImagePNGRepresentation(myimg);
    
    binarydata = [NSString stringWithFormat:@"%@",imageData];
    base64 =  [imageData base64EncodedStringWithOptions:NSUTF8StringEncoding];
    
    
    //Set one time uiview and access many time in your project
    NSData *imgData = [NSKeyedArchiver archivedDataWithRootObject:graphicalview];
    NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
   [defaults setObject:imgData forKey:@"view"];
   [defaults synchronize];
    
  [self makeadictionary];
  [self afnetworking];
}
- (IBAction)thirdview:(UIButton *)sender
{
    ThirdviewViewController *three = [[ThirdviewViewController alloc]initWithNibName:@"ThirdviewViewController" bundle:nil];
    [self.navigationController pushViewController:three animated:YES];
}
-(void)afnetworking
{
  /*  dict = [[NSMutableDictionary alloc]init];
    [dict setObject:@"search_near_by_offers" forKey:@"action"];
    [dict setObject:@"0.000000" forKey:@"latitude"];
    [dict setObject:@"0.000000" forKey:@"longitude"];
    [dict setObject:@"824" forKey:@"customer_id"];
    [dict setObject:@"" forKey:@"category_id"];
    [dict setObject:@"0" forKey:@"limitstart"];
    [dict setObject:@"30" forKey:@"limit"];
    
    
    AFHTTPRequestOperationManager *manager = [AFHTTPRequestOperationManager manager];
    manager.requestSerializer = [AFHTTPRequestSerializer serializer];
    manager.responseSerializer = [AFHTTPResponseSerializer serializer];
    apiString = @"api.php?";
    
    [manager POST:apiString parameters:dict success:^(AFHTTPRequestOperation *operation, id responseObject) {
        
        NSString *responseString = [NSString stringWithUTF8String:[responseObject bytes]];
        NSLog(@"JSON: responseString %@", responseString);
        
    } failure:^(AFHTTPRequestOperation *operation, NSError *error) {
        NSLog(@"Error: %@", error);
    }];
    */
    
    
    AFHTTPRequestOperationManager *manager = [AFHTTPRequestOperationManager manager];
    manager.requestSerializer = [AFHTTPRequestSerializer serializer];
    manager.responseSerializer = [AFHTTPResponseSerializer serializer];
    apiString = @"apistring.php?";
    
    [manager POST:apiString parameters:dict success:^(AFHTTPRequestOperation *operation, id responseObject) {
        
        NSString *responseString = [NSString stringWithUTF8String:[responseObject bytes]];
        NSLog(@"JSON: responseString %@", responseString);
        
    } failure:^(AFHTTPRequestOperation *operation, NSError *error) {
        NSLog(@"Error: %@", error);
    }];
}
-(void)makeadictionary
{
    dict = [[NSMutableDictionary alloc]init];
    [dict setObject:@"post_customer_offer" forKey:@"action"];
    [dict setObject:@"25" forKey:@"customer_id"];
    [dict setObject:@"Sale" forKey:@"title"];
    [dict setObject:@"kalpesh test" forKey:@"business_name"];
    [dict setObject:@"2" forKey:@"category_id"];
    [dict setObject:@"72.558932" forKey:@"longitude"];
    [dict setObject:@"23.0121333" forKey:@"latitude"];
    [dict setObject:base64 forKey:@"image"];
    [dict setObject:@"paldi" forKey:@"landmark"];
    [dict setObject:@"2013-01-13" forKey:@"start_date"];
    [dict setObject:@"2015-01-13" forKey:@"end_date"];
}
-(void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
}

@end
