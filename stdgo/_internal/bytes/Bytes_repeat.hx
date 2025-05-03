package stdgo._internal.bytes;
function repeat(_b:stdgo.Slice<stdgo.GoUInt8>, _count:stdgo.GoInt):stdgo.Slice<stdgo.GoUInt8> {
        //"file:///home/runner/.go/go1.21.3/src/bytes/bytes.go#L599"
        if (_count == ((0 : stdgo.GoInt))) {
            //"file:///home/runner/.go/go1.21.3/src/bytes/bytes.go#L600"
            return (new stdgo.Slice<stdgo.GoUInt8>(0, 0, ...[]).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>);
        };
        //"file:///home/runner/.go/go1.21.3/src/bytes/bytes.go#L606"
        if ((_count < (0 : stdgo.GoInt) : Bool)) {
            //"file:///home/runner/.go/go1.21.3/src/bytes/bytes.go#L607"
            throw stdgo.Go.toInterface(("bytes: negative Repeat count" : stdgo.GoString));
        };
        //"file:///home/runner/.go/go1.21.3/src/bytes/bytes.go#L609"
        if (((_b.length) >= ((2147483647 : stdgo.GoInt) / _count : stdgo.GoInt) : Bool)) {
            //"file:///home/runner/.go/go1.21.3/src/bytes/bytes.go#L610"
            throw stdgo.Go.toInterface(("bytes: Repeat output length overflow" : stdgo.GoString));
        };
        var _n = ((_b.length) * _count : stdgo.GoInt);
        //"file:///home/runner/.go/go1.21.3/src/bytes/bytes.go#L614"
        if ((_b.length) == ((0 : stdgo.GoInt))) {
            //"file:///home/runner/.go/go1.21.3/src/bytes/bytes.go#L615"
            return (new stdgo.Slice<stdgo.GoUInt8>(0, 0, ...[]).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>);
        };
        {};
        var _chunkMax = (_n : stdgo.GoInt);
        //"file:///home/runner/.go/go1.21.3/src/bytes/bytes.go#L630"
        if ((_chunkMax > (8192 : stdgo.GoInt) : Bool)) {
            _chunkMax = (((8192 : stdgo.GoInt) / (_b.length) : stdgo.GoInt) * (_b.length) : stdgo.GoInt);
            //"file:///home/runner/.go/go1.21.3/src/bytes/bytes.go#L632"
            if (_chunkMax == ((0 : stdgo.GoInt))) {
                _chunkMax = (_b.length);
            };
        };
        var _nb = stdgo._internal.internal.bytealg.Bytealg_makenozero.makeNoZero(_n);
        var _bp = (_nb.__copyTo__(_b) : stdgo.GoInt);
        //"file:///home/runner/.go/go1.21.3/src/bytes/bytes.go#L638"
        while ((_bp < _n : Bool)) {
            var _chunk = (_bp : stdgo.GoInt);
            //"file:///home/runner/.go/go1.21.3/src/bytes/bytes.go#L640"
            if ((_chunk > _chunkMax : Bool)) {
                _chunk = _chunkMax;
            };
            _bp = (_bp + ((_nb.__slice__(_bp) : stdgo.Slice<stdgo.GoUInt8>).__copyTo__((_nb.__slice__(0, _chunk) : stdgo.Slice<stdgo.GoUInt8>))) : stdgo.GoInt);
        };
        //"file:///home/runner/.go/go1.21.3/src/bytes/bytes.go#L645"
        return _nb;
    }
