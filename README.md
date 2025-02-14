# Ruby Getter Method Bug

This repository demonstrates a common error in Ruby: an unhandled `nil` value in a getter method.  The `bug.rb` file shows the problematic code, which fails when the instance variable `@value` is set to `nil`. The `bugSolution.rb` file provides a corrected version.

## Bug Description

A `NoMethodError` occurs when attempting to access the `value` of an object after its internal `@value` is set to `nil`.  This arises from not handling the potential absence of a value gracefully.

## Solution

The solution involves adding a check for `nil` in the getter method. If `@value` is `nil`, a suitable default value (e.g., `0`, an empty string, or `nil` itself) is returned to prevent the error.

This simple change prevents a program crash and improves the robustness of the class.