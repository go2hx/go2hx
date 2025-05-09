package stdgo._internal.encoding.ascii85;
function decode(_dst:stdgo.Slice<stdgo.GoUInt8>, _src:stdgo.Slice<stdgo.GoUInt8>, _flush:Bool):{ var _0 : stdgo.GoInt; var _1 : stdgo.GoInt; var _2 : stdgo.Error; } {
        var _ndst = (0 : stdgo.GoInt), _nsrc = (0 : stdgo.GoInt), _err = (null : stdgo.Error);
        var _v:stdgo.GoUInt32 = (0 : stdgo.GoUInt32);
        var _nb:stdgo.GoInt = (0 : stdgo.GoInt);
        //"file:///home/runner/.go/go1.21.3/src/encoding/ascii85/ascii85.go#L189"
        for (_i => _b in _src) {
            //"file:///home/runner/.go/go1.21.3/src/encoding/ascii85/ascii85.go#L190"
            if ((((_dst.length) - _ndst : stdgo.GoInt) < (4 : stdgo.GoInt) : Bool)) {
                //"file:///home/runner/.go/go1.21.3/src/encoding/ascii85/ascii85.go#L191"
                return { _0 : _ndst, _1 : _nsrc, _2 : _err };
            };
            //"file:///home/runner/.go/go1.21.3/src/encoding/ascii85/ascii85.go#L193"
            if ((_b <= (32 : stdgo.GoUInt8) : Bool)) {
                //"file:///home/runner/.go/go1.21.3/src/encoding/ascii85/ascii85.go#L195"
                continue;
            } else if (((_b == (122 : stdgo.GoUInt8)) && (_nb == (0 : stdgo.GoInt)) : Bool)) {
                _nb = (5 : stdgo.GoInt);
                _v = (0u32 : stdgo.GoUInt32);
            } else if ((((33 : stdgo.GoUInt8) <= _b : Bool) && (_b <= (117 : stdgo.GoUInt8) : Bool) : Bool)) {
                _v = ((_v * (85u32 : stdgo.GoUInt32) : stdgo.GoUInt32) + ((_b - (33 : stdgo.GoUInt8) : stdgo.GoUInt8) : stdgo.GoUInt32) : stdgo.GoUInt32);
                //"file:///home/runner/.go/go1.21.3/src/encoding/ascii85/ascii85.go#L201"
                _nb++;
            } else {
                //"file:///home/runner/.go/go1.21.3/src/encoding/ascii85/ascii85.go#L203"
                return {
                    @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.GoInt; var _1 : stdgo.GoInt; var _2 : stdgo.Error; } = { _0 : (0 : stdgo.GoInt), _1 : (0 : stdgo.GoInt), _2 : stdgo.Go.asInterface((_i : stdgo._internal.encoding.ascii85.Ascii85_corruptinputerror.CorruptInputError)) };
                    _ndst = __tmp__._0;
                    _nsrc = __tmp__._1;
                    _err = __tmp__._2;
                    __tmp__;
                };
            };
            //"file:///home/runner/.go/go1.21.3/src/encoding/ascii85/ascii85.go#L205"
            if (_nb == ((5 : stdgo.GoInt))) {
                _nsrc = (_i + (1 : stdgo.GoInt) : stdgo.GoInt);
                _dst[(_ndst : stdgo.GoInt)] = ((_v >> (24i64 : stdgo.GoUInt64) : stdgo.GoUInt32) : stdgo.GoUInt8);
                _dst[(_ndst + (1 : stdgo.GoInt) : stdgo.GoInt)] = ((_v >> (16i64 : stdgo.GoUInt64) : stdgo.GoUInt32) : stdgo.GoUInt8);
                _dst[(_ndst + (2 : stdgo.GoInt) : stdgo.GoInt)] = ((_v >> (8i64 : stdgo.GoUInt64) : stdgo.GoUInt32) : stdgo.GoUInt8);
                _dst[(_ndst + (3 : stdgo.GoInt) : stdgo.GoInt)] = (_v : stdgo.GoUInt8);
                _ndst = (_ndst + ((4 : stdgo.GoInt)) : stdgo.GoInt);
                _nb = (0 : stdgo.GoInt);
                _v = (0u32 : stdgo.GoUInt32);
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/encoding/ascii85/ascii85.go#L216"
        if (_flush) {
            _nsrc = (_src.length);
            //"file:///home/runner/.go/go1.21.3/src/encoding/ascii85/ascii85.go#L218"
            if ((_nb > (0 : stdgo.GoInt) : Bool)) {
                //"file:///home/runner/.go/go1.21.3/src/encoding/ascii85/ascii85.go#L223"
                if (_nb == ((1 : stdgo.GoInt))) {
                    //"file:///home/runner/.go/go1.21.3/src/encoding/ascii85/ascii85.go#L224"
                    return {
                        @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.GoInt; var _1 : stdgo.GoInt; var _2 : stdgo.Error; } = { _0 : (0 : stdgo.GoInt), _1 : (0 : stdgo.GoInt), _2 : stdgo.Go.asInterface((_src.length : stdgo._internal.encoding.ascii85.Ascii85_corruptinputerror.CorruptInputError)) };
                        _ndst = __tmp__._0;
                        _nsrc = __tmp__._1;
                        _err = __tmp__._2;
                        __tmp__;
                    };
                };
                //"file:///home/runner/.go/go1.21.3/src/encoding/ascii85/ascii85.go#L226"
                {
                    var _i = (_nb : stdgo.GoInt);
                    while ((_i < (5 : stdgo.GoInt) : Bool)) {
                        _v = ((_v * (85u32 : stdgo.GoUInt32) : stdgo.GoUInt32) + (84u32 : stdgo.GoUInt32) : stdgo.GoUInt32);
                        _i++;
                    };
                };
                //"file:///home/runner/.go/go1.21.3/src/encoding/ascii85/ascii85.go#L232"
                {
                    var _i = (0 : stdgo.GoInt);
                    while ((_i < (_nb - (1 : stdgo.GoInt) : stdgo.GoInt) : Bool)) {
                        _dst[(_ndst : stdgo.GoInt)] = ((_v >> (24i64 : stdgo.GoUInt64) : stdgo.GoUInt32) : stdgo.GoUInt8);
_v = (_v << ((8i64 : stdgo.GoUInt64)) : stdgo.GoUInt32);
//"file:///home/runner/.go/go1.21.3/src/encoding/ascii85/ascii85.go#L235"
                        _ndst++;
                        _i++;
                    };
                };
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/encoding/ascii85/ascii85.go#L239"
        return { _0 : _ndst, _1 : _nsrc, _2 : _err };
    }
