//
//  HRVFeatureCalculator.h
//  HRVMeasure
//
//  Created by Peter Sobkowski on 2016-10-24.
//  Copyright © 2016 psobko. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface HRVFeatureCalculator : NSObject

+(double)AVNNForIntervals:(NSArray *)intervals;
+(double)SDNNForIntervals:(NSArray *)intervals;
+(double)RMSSSDForIntervals:(NSArray *)intervals;
+(double)PNN50ForIntervals:(NSArray *)intervals;

@end
