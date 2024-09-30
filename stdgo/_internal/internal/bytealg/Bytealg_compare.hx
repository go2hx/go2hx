package stdgo._internal.internal.bytealg;
function compare(_a:stdgo.Slice<stdgo.GoUInt8>, _b:stdgo.Slice<stdgo.GoUInt8>):stdgo.GoInt {
        for (i in 0 ... _a.length.toBasic()) {
            if (i >= _b.length) {
                return 1;
            };
            if (_a[i] < _b[i]) {
                return -1;
            };
            if (_a[i] > _b[i]) {
                return 1;
            };
        };
        if (_a.length < _b.length) {
            return -1;
        };
        return 0;
    }
