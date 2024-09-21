package _internal.bytes_test;
import stdgo._internal.bytes.Bytes;
import stdgo._internal.bytes.Bytes;
import stdgo._internal.bytes.Bytes;
import stdgo._internal.bytes.Bytes;
function _runesEqual(_a:stdgo.Slice<stdgo.GoInt32>, _b:stdgo.Slice<stdgo.GoInt32>):Bool {
        if ((_a.length) != ((_b.length))) {
            return false;
        };
        for (_i => _r in _a) {
            if (_r != (_b[(_i : stdgo.GoInt)])) {
                return false;
            };
        };
        return true;
    }
