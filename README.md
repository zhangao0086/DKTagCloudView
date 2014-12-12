# DKTagCloudView
![GIF](https://raw.githubusercontent.com/zhangao0086/DKTagCloudView/master/preview1.gif)
![GIF](https://raw.githubusercontent.com/zhangao0086/DKTagCloudView/master/preview2.gif)
## Overview
DKTagCloudView is a tag clouds view on iOS. It can generate a random and not intersects coordinates.

## How To Get Started

### Installation with CocoaPods

``` bash
$ pod search DKTagCloudView

-> DKTagCloudView (1.0.0)
   A tag clouds view on iOS.t can generate a random and not intersects
   coordinates.
   pod 'DKTagCloudView', '~> 1.0.0'
   - Homepage: https://github.com/zhangao0086/DKTagCloudView
   - Source:   https://github.com/zhangao0086/DKTagCloudView.git
   - Versions: 1.0.0 [master repo]
```

Edit your Podfile and add DKTagCloudView:

``` bash
pod 'DKCarouselView', '~> x.x.x'
```

Add `#import "DKTagCloudView.h"` to the top of classes that will use it.  
#### Create instances (Also supports xib/storyboard) :

``` objective-c
DKTagCloudView *tagCloudView = [[DKTagCloudView alloc] initWithFrame:CGRectMake(0, 64,
                                                                                self.view.bounds.size.width,
                                                                                self.view.bounds.size.height - 64)];
[self.view addSubview:tagCloudView];
self.tagCloudView = tagCloudView;
```

#### Setup items:

``` objective-c
self.tagCloudView.titls = @[
                            @"DKTagCloudView",
                            @"minFontSize",
                            @"maxFontSize",
                            @"randomColors",
                            @"generate",
                            @"UIView",
                            @"NSInteger",
                            @"Min font size",
                            @"Max font size",
                            @"DKTagCloudViewDemo",
                            @"This is a test"
                            ];
```

#### Generates:

``` objective-c
[self.tagCloudView generate];
```

#### Callback

``` objective-c
[self.tagCloudView setTagClickBlock:^(NSString *title, NSInteger index) {
    NSLog(@"title:%@,index:%zd",title,index);
}];
```

#### Customized:

``` objective-c
/**
 *  Min font size. Defautls to 14.
 */
@property (nonatomic, assign) NSInteger minFontSize;

/**
 *  Max font size. Defaults to 60.
 */
@property (nonatomic, assign) NSInteger maxFontSize;

/**
 *  Random text colors. Defaults to: 
 [
         [UIColor blackColor],
         [UIColor cyanColor],
         [UIColor purpleColor],
         [UIColor orangeColor],
         [UIColor redColor],
         [UIColor yellowColor],
         [UIColor lightGrayColor],
         [UIColor grayColor],
         [UIColor greenColor],
 ]
 */
@property (nonatomic, copy) NSArray *randomColors;
```

## License
This code is distributed under the terms and conditions of the <a href="https://github.com/zhangao0086/DKTagCloudView/master/LICENSE">MIT license</a>.