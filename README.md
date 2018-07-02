# DRLandscapePush
一个简单的push强转横屏方案
想要设置某个页面的指定屏幕方向，还需要对以下三个参数进行设定：

1、app 支持的旋转旋转方向；

appdelegate.m

-(UIInterfaceOrientationMask)application:(UIApplication*)application supportedInterfaceOrientationsForWindow:(UIWindow*)window 

2、屏幕旋转页面的旋转方向

3、返回上一级页面时上一级页面原来的旋转方向


对于1，很好解决，在appdelegate.h 里设定一个Bool类型的标志位allowRotation，用来动态控制app支持的旋转方向

比如，常规页面下，仅仅支持竖屏，则allowRotation = YES；return 支持的旋转方向仅为：

UIInterfaceOrientationMaskLandscapeLeft

在非常规页面下，allowRotation = NO ；支持旋转方向 UIInterfaceOrientationMaskPortrait

对于2，3也很简单，就是对orientationToPortrait方法传参。

如果喜欢，请简书点击喜欢，如果觉着demo有用，欢迎star哦~

博客地址：https://www.jianshu.com/p/edbdf0cd4754
