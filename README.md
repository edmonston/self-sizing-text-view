# SelfSizingTextView
### A simple UITextView subclass that computes its intrinsic content size

When scrolling is enabled on a `UITextView`, it has no intrinsic content size and so, in the absence of height constraints, it will collapse to zero height. When scrolling is enabled, it does have an intrinsic content size--but this size doesn't depend on the width and so isn't generally useful for width-constrained text.

In some cases, it is preferable to allow the `UITextView` to expand to its natural height, subject to a maximum height limit, with scrolling enabled only when the text's size requires it. 

This implementation of [`SelfSizingTextView`](https://github.com/edmonston/self-sizing-text-view/blob/master/SelfSizingTextView/SelfSizingTextView.swift) computes an intrinsic content size based on its width, whether or not scrolling is enabled. If you install a vertical constraint that caps its height and set `isScrollingEnabled` to `true`, it will take as much space as it needs, subject to the height constraint, allowing scrolling only if the text needs more room.

Includes a simple demo app showing the behavior with short and long text, and with and without scrolling and/or constraints.

<p align="center">
  <img src="https://cloud.githubusercontent.com/assets/885428/25364470/c73c666c-2930-11e7-9d06-ecfb7a7736a0.png" width=335 />
</p>

