## Description

This project contains a single view, which has in its hierarchy a UIStackView, which contains one UIView (`redView`) and another UIStackView (which contains two side-by-side UIViews, `greenView` and `blueView`).

By calling

```
greenView.convert(greenView.frame.origin, to: self.view)
```

we get the correct CGPoint for `greenView`'s origin. However, by calling

```
blueView.convert(blueView.frame.origin, to: self.view)
```

we don't &mdash; we instead get the origin of `blueView`, shifted horizontally by the width of `blueView`'s frame.

What am I doing wrong? 🤔
