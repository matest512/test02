// Copyright (C) 2016 The V8 Project authors. All rights reserved.
// This code is governed by the BSD license found in the LICENSE file.

/*---
es6id: 18.2.3
esid: sec-isnan-number
description: >
  Property descriptor for isNaN
includes: [propertyHelper.js]
---*/

verifyNotEnumerable(this, "isNaN");
verifyWritable(this, "isNaN");
verifyConfigurable(this, "isNaN");

reportCompare(0, 0);
