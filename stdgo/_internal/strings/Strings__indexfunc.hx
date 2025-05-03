package stdgo._internal.strings;
function _indexFunc(_s:stdgo.GoString, _f:stdgo.GoInt32 -> Bool, _truth:Bool):stdgo.GoInt {
        //"file:///home/runner/.go/go1.21.3/src/strings/strings.go#L844"
        for (_i => _r in _s) {
            //"file:///home/runner/.go/go1.21.3/src/strings/strings.go#L845"
            if (_f(_r) == (_truth)) {
                //"file:///home/runner/.go/go1.21.3/src/strings/strings.go#L846"
                return _i;
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/strings/strings.go#L849"
        return (-1 : stdgo.GoInt);
    }
