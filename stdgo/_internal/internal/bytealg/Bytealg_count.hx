package stdgo._internal.internal.bytealg;
function count(_b:stdgo.Slice<stdgo.GoUInt8>, _c:stdgo.GoUInt8):stdgo.GoInt {
        var count = 0;
        for (i in 0 ... _b.length.toBasic()) {
            if (_b[i] == _c) count++;
        };
        return count;
    }
