//
//  RNThubView.m
//  FabricSwift
//
//  Created by TransformHub on 04/07/22.
//


#import <Foundation/Foundation.h>
#import "RNThubView.h"

#import <react/renderer/components/RNThubViewSpec/ComponentDescriptors.h>
#import <react/renderer/components/RNThubViewSpec/EventEmitters.h>
#import <react/renderer/components/RNThubViewSpec/Props.h>
#import <react/renderer/components/RNThubViewSpec/RCTComponentViewHelpers.h>

#import "RCTFabric/React-RCTFabric-umbrella.h"

//#import "FabricSwift-Swift.h"

//#import "RCTFabricComponentsPlugins.h"

using namespace facebook::react;

@interface RNThubView () <RCTThubViewViewProtocol>

@end

@implementation RNThubView {
  UIView *_view;
  UILabel *_label;
//  RNThubView *_rnThubView;
}

+ (ComponentDescriptorProvider)componentDescriptorProvider
{
  return concreteComponentDescriptorProvider<ThubViewComponentDescriptor>();
}

- (instancetype)initWithFrame:(CGRect)frame
{
  if (self = [super initWithFrame:frame]) {
    static const auto defaultProps = std::make_shared<const ThubViewProps>();
    
    _props = defaultProps;
     
    
//    _rnThubView = [[RNThubView alloc] init];
    _view = [[UIView alloc] init];
       
       _label = [[UILabel alloc] init];
       _label.text = @"Initial value";
       [_view addSubview:_label];
       
       _label.translatesAutoresizingMaskIntoConstraints = false;
       [NSLayoutConstraint activateConstraints:@[
         [_label.leadingAnchor constraintEqualToAnchor:_view.leadingAnchor],
         [_label.topAnchor constraintEqualToAnchor:_view.topAnchor],
         [_label.trailingAnchor constraintEqualToAnchor:_view.trailingAnchor],
         [_label.bottomAnchor constraintEqualToAnchor:_view.bottomAnchor],
       ]];
       _label.textAlignment = NSTextAlignmentCenter;
       
       self.contentView = _view;
//       self.contentView = _rnThubView
    
  }
  
  return self;
}

- (void)updateProps:(Props::Shared const &)props oldProps:(Props::Shared const &)oldProps
{
  const auto &oldViewProps = *std::static_pointer_cast<ThubViewProps const>(_props);
  const auto &newViewProps = *std::static_pointer_cast<ThubViewProps const>(props);
  
  if (oldViewProps.color != newViewProps.color) {
//    NSString * colorToConvert = [[NSString alloc] initWithUTF8String: newViewProps.color.c_str()];
//    [_view setBackgroundColor:[self hexStringToColor:colorToConvert]];
//    _view.backgroundColor = [UIColor redColor];
  }
  
  [super updateProps:props oldProps:oldProps];
}

Class<RCTComponentViewProtocol> ThubViewCls(void)
{
  return RNThubView.class;
}

- hexStringToColor:(NSString *)stringToConvert
{
  NSString *noHashString = [stringToConvert stringByReplacingOccurrencesOfString:@"#" withString:@""];
  NSScanner *stringScanner = [NSScanner scannerWithString:noHashString];
  
  unsigned hex;
  if (![stringScanner scanHexInt:&hex]) return nil;
  int r = (hex >> 16) & 0xFF;
  int g = (hex >> 8) & 0xFF;
  int b = (hex) & 0xFF;
  
  return [UIColor colorWithRed:r / 255.0f green:g / 255.0f blue:b / 255.0f alpha:1.0f];
}

@end
