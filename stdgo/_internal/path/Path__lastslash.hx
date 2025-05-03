package stdgo._internal.path;
function _lastSlash(_s:stdgo.GoString):stdgo.GoInt {
        var _i = ((_s.length) - (1 : stdgo.GoInt) : stdgo.GoInt);
        //"file:///home/runner/.go/go1.21.3/src/path/path.go#L141"
        while (((_i >= (0 : stdgo.GoInt) : Bool) && (_s[(_i : stdgo.GoInt)] != (47 : stdgo.GoUInt8)) : Bool)) {
            //"file:///home/runner/.go/go1.21.3/src/path/path.go#L142"
            _i--;
        };
        //"file:///home/runner/.go/go1.21.3/src/path/path.go#L144"
        return _i;
    }
