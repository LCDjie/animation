//
//  YuYinShiBie.h
//  yunyin
//
//  Created by issuser on 16/4/18.
//  Copyright © 2016年 LuoChen. All rights reserved.
//

#import <Foundation/Foundation.h>

//语音读取
#import "iflyMSC.framework/Headers/IFlySpeechRecognizer.h"
//语音识别
#import "iflyMSC.framework/Headers/IFlySpeechSynthesizer.h"

@interface YuYinShiBie : NSObject <IFlySpeechSynthesizerDelegate,IFlySpeechRecognizerDelegate>
{
    IFlySpeechSynthesizer* iFlySpeechSynthesizer;   //  读取
    IFlySpeechRecognizer*iflySpeechRecognizer;      //  识别
}

@property (nonatomic,copy)void(^onResult)(NSString *);
+ (id)shareManager;

//播放
- (void)playVoice:(NSString *)str;

//识别
- (void)discernBlock:(void(^)(NSString *))a;

@end




























































































