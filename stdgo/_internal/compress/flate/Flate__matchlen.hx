package stdgo._internal.compress.flate;
function _matchLen(_a:stdgo.Slice<stdgo.GoUInt8>, _b:stdgo.Slice<stdgo.GoUInt8>, _max:stdgo.GoInt):stdgo.GoInt {
        _a = (_a.__slice__(0, _max) : stdgo.Slice<stdgo.GoUInt8>);
        _b = (_b.__slice__(0, (_a.length)) : stdgo.Slice<stdgo.GoUInt8>);
        //"file:///home/runner/.go/go1.21.3/src/compress/flate/deflate.go#L320"
        for (_i => _av in _a) {
            //"file:///home/runner/.go/go1.21.3/src/compress/flate/deflate.go#L321"
            if (_b[(_i : stdgo.GoInt)] != (_av)) {
                //"file:///home/runner/.go/go1.21.3/src/compress/flate/deflate.go#L322"
                return _i;
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/compress/flate/deflate.go#L325"
        return _max;
    }
