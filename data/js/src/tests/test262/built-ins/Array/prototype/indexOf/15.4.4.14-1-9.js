// Copyright (c) 2012 Ecma International.  All rights reserved.
// This code is governed by the BSD license found in the LICENSE file.

/*---
esid: sec-array.prototype.indexof
es5id: 15.4.4.14-1-9
description: Array.prototype.indexOf applied to Function object
---*/

        var obj = function (a, b) {
            return a + b;
        };
        obj[1] = true;

assert.sameValue(Array.prototype.indexOf.call(obj, true), 1, 'Array.prototype.indexOf.call(obj, true)');

reportCompare(0, 0);
