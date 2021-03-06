// Copyright (c) 2012 Ecma International.  All rights reserved.
// This code is governed by the BSD license found in the LICENSE file.

/*---
esid: sec-array.prototype.foreach
es5id: 15.4.4.18-7-c-ii-7
description: >
    Array.prototype.forEach - unhandled exceptions happened in
    callbackfn terminate iteration
---*/

        var accessed = false;

        function callbackfn(val, idx, obj) {
            if (idx > 0) {
                accessed = true;
            }
            if (idx === 0) {
                throw new Error("Exception occurred in callbackfn");
            }
        }

        var obj = { 0: 11, 4: 10, 10: 8, length: 20 };
assert.throws(Error, function() {
            Array.prototype.forEach.call(obj, callbackfn);
});
assert.sameValue(accessed, false, 'accessed');

reportCompare(0, 0);
