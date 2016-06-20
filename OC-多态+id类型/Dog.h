//
//  Dog.h
//  OC-多态+id类型
//
//  Created by qingyun on 16/4/9.
//  Copyright © 2016年 qingyun. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Dog : NSObject
@property(nonatomic,strong)NSString *dName;
@property(nonatomic,assign)double price;
-(void)showInfo;
-(void)showDog;
@end
