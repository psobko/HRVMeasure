//
//  HRVFeatureCalculator.m
//  HRVMeasure
//
//  Created by Peter Sobkowski on 2016-10-24.
//  Copyright © 2016 psobko. All rights reserved.
//

#import "HRVFeatureCalculator.h"

@implementation HRVFeatureCalculator

+(double)AVNNForIntervals:(NSArray *)intervals
{
    double sum = 0.0;
    for (NSNumber *interval in intervals)
    {
        sum += [interval doubleValue];
    }
    NSUInteger size = intervals.count;
    
    return sum/size;
}

+(double)SDNNForIntervals:(NSArray *)intervals
{
    double average = [HRVFeatureCalculator AVNNForIntervals:intervals];
    double d = 0.0;
    for (NSNumber *interval in intervals)
    {
        double v = [interval doubleValue] - average;
        d+= (v * v);
    }
    NSUInteger size = intervals.count;
    
    return sqrt(d/size);
}

+(double)RMSSSDForIntervals:(NSArray *)intervals
{
    double d = 0.0;
    NSUInteger size = intervals.count;
    for (int i = 0 ; i < size -1; i++)
    {
        double interval0 = [intervals[i] doubleValue];
        double interval1 = [intervals[i+1] doubleValue];
        double difference = interval1 - interval0;
        d += (difference * difference);
    }
    
    return sqrt(d/(size-1));
}

+(double)PNN50ForIntervals:(NSArray *)intervals
{
    NSUInteger count = 0;
    NSUInteger size = intervals.count;
    
    for (int i = 0 ; i < size -1; i++)
    {
        double interval0 = [intervals[i] doubleValue];
        double interval1 = [intervals[i+1] doubleValue];
        double difference = interval1 - interval0;
        
        if(difference < 0.0)
        {
            difference = -difference;
        }
        
        if(difference > 50.0)
        {
            count++;
        }
    }
    return count / size * 100.0;
}

@end
