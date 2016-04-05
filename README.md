# LCLoadingHUD

[![Travis](https://img.shields.io/travis/iTofu/LCLoadingHUD.svg?style=flat)](https://travis-ci.org/iTofu/LCLoadingHUD)
[![CocoaPods](https://img.shields.io/cocoapods/v/LCLoadingHUD.svg)](http://cocoadocs.org/docsets/LCLoadingHUD)
[![CocoaPods](https://img.shields.io/cocoapods/l/LCLoadingHUD.svg)](https://raw.githubusercontent.com/iTofu/LCLoadingHUD/master/LICENSE)
[![CocoaPods](https://img.shields.io/cocoapods/p/LCLoadingHUD.svg)](http://cocoadocs.org/docsets/LCLoadingHUD)
[![LeoDev](https://img.shields.io/badge/blog-LeoDev.me-brightgreen.svg)](http://leodev.me)

🌈 彩虹加载指示器


![by http://LeoDev.me](https://raw.githubusercontent.com/iTofu/LCLoadingHUD/master/LCLoadingHUDDemo.gif)

````
In me the tiger sniffs the rose.

心有猛虎，细嗅蔷薇。
````

##### 致谢 [CLProgressHUD](https://github.com/cleexiang/CLProgressHUD)！


## 前言 Foreword

[CLProgressHUD](https://github.com/cleexiang/CLProgressHUD) 这个库是我在开发中用的比较多的一个库，因为很 Cool！

原有库做的效果挺好，但是不支持 [CocoaPods](https://cocoapods.org/)，使用起来也不太友好，于是再度封装。


#### 浅谈下 "封装"

贴下百度百科的释义：
> 封装，即隐藏对象的属性和实现细节，仅对外公开接口，控制在程序中属性的读和修改的访问级别；将抽象得到的数据和行为（或功能）相结合，形成一个有机的整体，也就是将数据与操作数据的源代码进行有机的结合，形成“类”，其中数据和函数都是类的成员。

封装是个人能力的试金石。你在封装的过程中，需要想清楚你的库依赖于哪些环境，需要哪些参数，能起到什么样的作用。你需要考虑库的健壮性，易用性，怎么样用起来简单有效。你需要思考各种，甚至是极端的使用场景。你需要考虑很多杂七杂八的东西，而到最后浓缩成一个极其简单而又无比强大的方法。一花一世界，我祝贺你在此过程中获得的成长。

封装是一种十分友善的行为。我相信你在封装一个库哪怕一个方法的时候，心里一定会想着：我把这个写好了以后直接调就好了啦！这是对自己的友善。与人为善，我们也应责无旁贷地承担起对他人的友善，方便自己甚好，何不扩大下胸怀，方便他人？作为一名开源社区的受益者，我们也应给予开源社区一份力所能及的回报，yep？

封装是 OOP 思想的精华之一。万物皆对象，我有好多对象呀……

同时，我尊重但不推荐一些目的不纯的封装行为。没错，哪怕是如 [AFNetworking](https://github.com/AFNetworking/AFNetworking) 等，也都是对 iOS 系统方法的封装，我甚至可以说，iOS 系统是对 UNIX 的封装…… 但是我不希望有一天会有人告诉我，他把`+ (instancetype)stringWithFormat:(NSString *)format;`封装成了`+ (instancetype)strWithFmt:(NSString *)format;`…… lol

---

提一下，这个库将作为 [LCCoolHUD](https://github.com/iTofu/LCCoolHUD) 之一。另一个是 [JGProgressHUD](https://github.com/JonasGessner/JGProgressHUD)。



## 代码 Code

* 两个导入方法：
  - 方法一：[CocoaPods](https://cocoapods.org/) 导入：`pod 'LCLoadingHUD'`
  - 方法二：导入`LCLoadingHUD`文件夹到你的项目中 (文件夹在 Demo 中可以找到)

* 在你需要使用的 viewController 中，`#import "LCLoadingHUD.h"`;

* 使用：
  1. HUD 添加到 KeyWindow 上

    ````objc
    // 显示
    [LCLoadingHUD showLoading:@"正在发射中..."];

    // 隐藏
    [LCLoadingHUD hideInKeyWindow];
    ````

  2. HUD 添加到 View 上

    ````objc
    // 显示
    [LCLoadingHUD showLoading:@"你可以点 leftBtn" inView:self.view];

    // 隐藏
    [LCLoadingHUD hideInView:self.view];
    ````



## 更新日志 Update Logs

### V 1.0.6 (2016.04.05)

* 更新 CocoaPods 源地址。


### V 1.0.1 (2015.11.17)

* 方法优化，添加到 View 上的 HUD 不再需要拿到该实例才能隐藏：
    -
        ````objc
        + (void)dismissInKeyWindow;
        ->
        + (void)hideInKeyWindow;
        ````
    -
        ````objc
        + (instancetype)showLoading:(NSString *)text inView:(UIView *)view;
        ->
        + (void)showLoading:(NSString *)text inView:(UIView *)view;

        // 新增
        + (void)hideInView:(UIView *)view;
        ````



### V 1.0.0 (2015.11.17)

* 初始化提交。



## 示例 Examples

![by http://LeoDev.me](https://raw.githubusercontent.com/iTofu/LCLoadingHUD/master/LCLoadingHUDDemo.png)



## 联系 Support

* 发现问题请 Issue :)

* Mail: devtip@163.com

* Blog: http://LeoDev.me



## 授权 License

本项目采用 [MIT license](http://opensource.org/licenses/MIT) 开源，你可以利用采用该协议的代码做任何事情，只需要继续继承 MIT 协议即可。
