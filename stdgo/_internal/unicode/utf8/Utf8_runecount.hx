package stdgo._internal.unicode.utf8;
function runeCount(_p:stdgo.Slice<stdgo.GoUInt8>):stdgo.GoInt {
        var _np = (_p.length : stdgo.GoInt);
        var _n:stdgo.GoInt = (0 : stdgo.GoInt);
        //"file:///home/runner/.go/go1.21.3/src/unicode/utf8/utf8.go#L403"
        {
            var _i = (0 : stdgo.GoInt);
            while ((_i < _np : Bool)) {
                //"file:///home/runner/.go/go1.21.3/src/unicode/utf8/utf8.go#L404"
                _n++;
                var _c = (_p[(_i : stdgo.GoInt)] : stdgo.GoUInt8);
                //"file:///home/runner/.go/go1.21.3/src/unicode/utf8/utf8.go#L406"
                if ((_c < (128 : stdgo.GoUInt8) : Bool)) {
                    //"file:///home/runner/.go/go1.21.3/src/unicode/utf8/utf8.go#L408"
                    _i++;
                    //"file:///home/runner/.go/go1.21.3/src/unicode/utf8/utf8.go#L409"
                    continue;
                };
                var _x = (stdgo._internal.unicode.utf8.Utf8__first._first[(_c : stdgo.GoInt)] : stdgo.GoUInt8);
                //"file:///home/runner/.go/go1.21.3/src/unicode/utf8/utf8.go#L412"
                if (_x == ((241 : stdgo.GoUInt8))) {
                    //"file:///home/runner/.go/go1.21.3/src/unicode/utf8/utf8.go#L413"
                    _i++;
                    //"file:///home/runner/.go/go1.21.3/src/unicode/utf8/utf8.go#L414"
                    continue;
                };
                var _size = ((_x & (7 : stdgo.GoUInt8) : stdgo.GoUInt8) : stdgo.GoInt);
                //"file:///home/runner/.go/go1.21.3/src/unicode/utf8/utf8.go#L417"
                if (((_i + _size : stdgo.GoInt) > _np : Bool)) {
                    //"file:///home/runner/.go/go1.21.3/src/unicode/utf8/utf8.go#L418"
                    _i++;
                    //"file:///home/runner/.go/go1.21.3/src/unicode/utf8/utf8.go#L419"
                    continue;
                };
                var _accept = (stdgo._internal.unicode.utf8.Utf8__acceptranges._acceptRanges[((_x >> (4i64 : stdgo.GoUInt64) : stdgo.GoUInt8) : stdgo.GoInt)] : stdgo._internal.unicode.utf8.Utf8_t_acceptrange.T_acceptRange);
                //"file:///home/runner/.go/go1.21.3/src/unicode/utf8/utf8.go#L422"
                {
                    var _c = (_p[(_i + (1 : stdgo.GoInt) : stdgo.GoInt)] : stdgo.GoUInt8);
                    if (((_c < _accept._lo : Bool) || (_accept._hi < _c : Bool) : Bool)) {
                        _size = (1 : stdgo.GoInt);
                    } else if (_size == ((2 : stdgo.GoInt))) {} else {
                        var _c = (_p[(_i + (2 : stdgo.GoInt) : stdgo.GoInt)] : stdgo.GoUInt8);
                        if (((_c < (128 : stdgo.GoUInt8) : Bool) || ((191 : stdgo.GoUInt8) < _c : Bool) : Bool)) {
                            _size = (1 : stdgo.GoInt);
                        } else if (_size == ((3 : stdgo.GoInt))) {} else {
                            var _c = (_p[(_i + (3 : stdgo.GoInt) : stdgo.GoInt)] : stdgo.GoUInt8);
                            if (((_c < (128 : stdgo.GoUInt8) : Bool) || ((191 : stdgo.GoUInt8) < _c : Bool) : Bool)) {
                                _size = (1 : stdgo.GoInt);
                            };
                        };
                    };
                };
                _i = (_i + (_size) : stdgo.GoInt);
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/unicode/utf8/utf8.go#L433"
        return _n;
    }
