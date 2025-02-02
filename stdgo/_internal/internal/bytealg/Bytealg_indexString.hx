package stdgo._internal.internal.bytealg;
function indexString(_a:stdgo.GoString, _b:stdgo.GoString):stdgo.GoInt {
        if (_a == "") {
            return 0;
        };
        if (_b == "") {
            return -1;
        };
        var aLen = _a.length;
        var bLen = _b.length;
        for (i in 0 ... (aLen - bLen + 1)) {
            var found = true;
            for (j in 0 ... bLen) {
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
