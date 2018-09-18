// Copyright (C) 2016 the V8 project authors. All rights reserved.
// This code is governed by the BSD license found in the LICENSE file.
/*---
esid: sec-typedarray-length
description: >
  Return abrupt completion getting newTarget's prototype
info: |
  22.2.4.2 TypedArray ( length )

  This description applies only if the TypedArray function is called with at
  least one argument and the Type of the first argument is not Object.

  ...
  8. Return ? AllocateTypedArray(constructorName, NewTarget,
  %TypedArrayPrototype%, elementLength).

  22.2.4.2.1 Runtime Semantics: AllocateTypedArray (constructorName, newTarget,
  defaultProto [ , length ])

  1. Let proto be ? GetPrototypeFromConstructor(newTarget, defaultProto).
  ...

  9.1.15 GetPrototypeFromConstructor ( constructor, intrinsicDefaultProto )

  ...
  3. Let proto be ? Get(constructor, "prototype").
  ...
includes: [testTypedArray.js]
features: [Reflect, TypedArray]
---*/

var newTarget = function() {}.bind(null);
Object.defineProperty(newTarget, "prototype", {
  get() {
    throw new Test262Error();
  }
});

testWithTypedArrayConstructors(function(TA) {
  assert.throws(Test262Error, function() {
    Reflect.construct(TA, [1], newTarget);
  });
});

reportCompare(0, 0);
