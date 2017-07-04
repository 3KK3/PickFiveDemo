//
//  main.m
//  PickFiveDemo
//
//  Created by YZY on 2017/7/4.
//  Copyright © 2017年 YZY. All rights reserved.
//

#import <Foundation/Foundation.h>

NSInteger pickNum(NSDictionary *existingDic){
    
    NSInteger arcNum = arc4random() % 11 + 1;
    
    if ([existingDic objectForKey: [NSString stringWithFormat: @"%ld", arcNum]]) {
        return pickNum(existingDic);
    }
    
    return arcNum;
}

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        NSMutableDictionary *resultDict = [NSMutableDictionary dictionary];
        
        for (NSInteger i = 0; i < 5; i++) {
            
            NSInteger arcNum = pickNum(resultDict);
            [resultDict setObject: @" " forKey: [NSString stringWithFormat: @"%ld",arcNum]];
            
            NSLog(@"%ld ",arcNum);
        }
    }
    return 0;
}

