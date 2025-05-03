package stdgo._internal.regexp;
function _isSingleBytes(_s:stdgo.GoString):Bool {
        //"file:///home/runner/.go/go1.21.3/src/regexp/exec_test.go#L255"
        for (__0 => _c in _s) {
            //"file:///home/runner/.go/go1.21.3/src/regexp/exec_test.go#L256"
            if ((_c >= (128 : stdgo.GoInt32) : Bool)) {
                //"file:///home/runner/.go/go1.21.3/src/regexp/exec_test.go#L257"
                return false;
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/regexp/exec_test.go#L260"
        return true;
    }
