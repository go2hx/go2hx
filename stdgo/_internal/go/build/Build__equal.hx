package stdgo._internal.go.build;
function _equal(_x:stdgo.Slice<stdgo.GoString>, _y:stdgo.Slice<stdgo.GoString>):Bool {
        //"file:///home/runner/.go/go1.21.3/src/go/build/build.go#L1260"
        if ((_x.length) != ((_y.length))) {
            //"file:///home/runner/.go/go1.21.3/src/go/build/build.go#L1261"
            return false;
        };
        //"file:///home/runner/.go/go1.21.3/src/go/build/build.go#L1263"
        for (_i => _xi in _x) {
            //"file:///home/runner/.go/go1.21.3/src/go/build/build.go#L1264"
            if (_xi != (_y[(_i : stdgo.GoInt)])) {
                //"file:///home/runner/.go/go1.21.3/src/go/build/build.go#L1265"
                return false;
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/go/build/build.go#L1268"
        return true;
    }
