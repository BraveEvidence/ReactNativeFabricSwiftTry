//
//  RNThubViewManager.m
//  FabricSwift
//
//  Created by TransformHub on 04/07/22.
//

#import <Foundation/Foundation.h>
#import <React/RCTViewManager.h>

@interface RNThubViewManager : RCTViewManager
@end

@implementation RNThubViewManager

RCT_EXPORT_MODULE(ThubView)
RCT_EXPORT_VIEW_PROPERTY(color, NSString)
@end
