//
//  YCAudioPlayer.h
//  OC&JS
//
//  Created by 赵永闯 on 2018/4/20.
//  Copyright © 2018年 zhaoyongchuang. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <AVFoundation/AVFoundation.h>

@interface YCAudioPlayer : NSObject

+ (AVAudioPlayer *)playMusic:(NSString *)fileName;

+ (void)pauseMusic:(NSString *)fileName;

+ (void)stopMusic:(NSString *)fileName;

+ (void)playSound:(NSString *)soundName;

+ (void)disposeSound:(NSString *)soundName;

@end
