package stdgo._internal.unicode.utf8;
function decodeLastRune(_p:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.GoInt32; var _1 : stdgo.GoInt; } {
        var _r = (0 : stdgo.GoInt32), _size = (0 : stdgo.GoInt);
        var _end = (_p.length : stdgo.GoInt);
        //"file:///home/runner/.go/go1.21.3/src/unicode/utf8/utf8.go#L249"
        if (_end == ((0 : stdgo.GoInt))) {
            //"file:///home/runner/.go/go1.21.3/src/unicode/utf8/utf8.go#L250"
            return {
                @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.GoInt32; var _1 : stdgo.GoInt; } = { _0 : (65533 : stdgo.GoInt32), _1 : (0 : stdgo.GoInt) };
                _r = __tmp__._0;
                _size = __tmp__._1;
                __tmp__;
            };
        };
        var _start = (_end - (1 : stdgo.GoInt) : stdgo.GoInt);
        _r = (_p[(_start : stdgo.GoInt)] : stdgo.GoInt32);
        //"file:///home/runner/.go/go1.21.3/src/unicode/utf8/utf8.go#L254"
        if ((_r < (128 : stdgo.GoInt32) : Bool)) {
            //"file:///home/runner/.go/go1.21.3/src/unicode/utf8/utf8.go#L255"
            return {
                @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.GoInt32; var _1 : stdgo.GoInt; } = { _0 : _r, _1 : (1 : stdgo.GoInt) };
                _r = __tmp__._0;
                _size = __tmp__._1;
                __tmp__;
            };
        };
        var _lim = (_end - (4 : stdgo.GoInt) : stdgo.GoInt);
        //"file:///home/runner/.go/go1.21.3/src/unicode/utf8/utf8.go#L261"
        if ((_lim < (0 : stdgo.GoInt) : Bool)) {
            _lim = (0 : stdgo.GoInt);
        };
        //"file:///home/runner/.go/go1.21.3/src/unicode/utf8/utf8.go#L264"
        {
            _start--;
            while ((_start >= _lim : Bool)) {
                //"file:///home/runner/.go/go1.21.3/src/unicode/utf8/utf8.go#L265"
                if (stdgo._internal.unicode.utf8.Utf8_runestart.runeStart(_p[(_start : stdgo.GoInt)])) {
                    //"file:///home/runner/.go/go1.21.3/src/unicode/utf8/utf8.go#L266"
                    break;
                };
                _start--;
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/unicode/utf8/utf8.go#L269"
        if ((_start < (0 : stdgo.GoInt) : Bool)) {
            _start = (0 : stdgo.GoInt);
        };
        {
            var __tmp__ = stdgo._internal.unicode.utf8.Utf8_decoderune.decodeRune((_p.__slice__(_start, _end) : stdgo.Slice<stdgo.GoUInt8>));
            _r = @:tmpset0 __tmp__._0;
            _size = @:tmpset0 __tmp__._1;
        };
        //"file:///home/runner/.go/go1.21.3/src/unicode/utf8/utf8.go#L273"
        if ((_start + _size : stdgo.GoInt) != (_end)) {
            //"file:///home/runner/.go/go1.21.3/src/unicode/utf8/utf8.go#L274"
            return {
                @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.GoInt32; var _1 : stdgo.GoInt; } = { _0 : (65533 : stdgo.GoInt32), _1 : (1 : stdgo.GoInt) };
                _r = __tmp__._0;
                _size = __tmp__._1;
                __tmp__;
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/unicode/utf8/utf8.go#L276"
        return {
            @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.GoInt32; var _1 : stdgo.GoInt; } = { _0 : _r, _1 : _size };
            _r = __tmp__._0;
            _size = __tmp__._1;
            __tmp__;
        };
    }
