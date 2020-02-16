# CornerLayer

通常我们是通过设置layer.CornerRadius的属性，不过设置此属性会产生离屏渲染，性能上不是很好，尤其是复杂的页面，甚至会产生卡顿。

所以单独写了一个`CornerLayer`，通过增加一个Layer即可高效的绘画出圆角，避免了性能问题。
# 使用方法
```C
CornerLayer *cornerLayer = [CornerLayer layer];
CornerLayer *cornerLayer.mCornerRadius =6;
CornerLayer *cornerLayer.mFillColor = [UIColor yto_grayColor10];
[CornerLayer *cornerLayer fof_didMoveToSuperView:self];
```