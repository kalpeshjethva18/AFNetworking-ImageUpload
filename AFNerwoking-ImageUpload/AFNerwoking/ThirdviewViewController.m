//
//  ThirdviewViewController.m
//  AFNerwoking
//
//  Created by macpc on 13/10/15.
//  Copyright (c) 2015 macpc. All rights reserved.
//

#import "ThirdviewViewController.h"
#import "UIKit+AFNetworking.h"
#import <UIKit/UIKit.h>
#import <Foundation/Foundation.h>

@interface ThirdviewViewController ()

@end

@implementation ThirdviewViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    
   NSData *imgData = [[NSUserDefaults standardUserDefaults] objectForKey:@"view"];
    self.view = [NSKeyedUnarchiver unarchiveObjectWithData:imgData];
    
  
   // threetemp = [NSKeyedUnarchiver unarchiveObjectWithData:imgData];
    
    // Do any additional setup after loading the view from its nib.
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
