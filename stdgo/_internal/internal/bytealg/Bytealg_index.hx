package stdgo._internal.internal.bytealg;
function index(_a:stdgo.Slice<stdgo.GoUInt8>, _b:stdgo.Slice<stdgo.GoUInt8>):stdgo.GoInt {
        if (_a.length < _b.length) return -1;
        for (i in 0 ... (_a.length - _b.length + 1)) {
            var found = true;
            for (j in 0 ... _b.length) {
                if (_a[i + j] != _b[j]) {
                    found = false;
                    break;
                };
            };
            if (found) {
                return i;
            };
        };
        return -1;
    }
