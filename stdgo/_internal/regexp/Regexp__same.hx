package stdgo._internal.regexp;
function _same(_x:stdgo.Slice<stdgo.GoInt>, _y:stdgo.Slice<stdgo.GoInt>):Bool {
        //"file:///home/runner/.go/go1.21.3/src/regexp/exec_test.go#L313"
        if ((_x.length) != ((_y.length))) {
            //"file:///home/runner/.go/go1.21.3/src/regexp/exec_test.go#L314"
            return false;
        };
        //"file:///home/runner/.go/go1.21.3/src/regexp/exec_test.go#L316"
        for (_i => _xi in _x) {
            //"file:///home/runner/.go/go1.21.3/src/regexp/exec_test.go#L317"
            if (_xi != (_y[(_i : stdgo.GoInt)])) {
                //"file:///home/runner/.go/go1.21.3/src/regexp/exec_test.go#L318"
                return false;
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/regexp/exec_test.go#L321"
        return true;
    }
