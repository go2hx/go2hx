package stdgo._internal.unicode.utf8;
function decodeLastRune(_p:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.GoInt32; var _1 : stdgo.GoInt; } {
        var _r = (0 : stdgo.GoInt32), _size = (0 : stdgo.GoInt);
        var _end = (_p.length : stdgo.GoInt);
        if (_end == ((0 : stdgo.GoInt))) {
            return { _0 : _r = (65533 : stdgo.GoInt32), _1 : _size = (0 : stdgo.GoInt) };
        };
        var _start = (_end - (1 : stdgo.GoInt) : stdgo.GoInt);
        _r = (_p[(_start : stdgo.GoInt)] : stdgo.GoInt32);
        if ((_r < (128 : stdgo.GoInt32) : Bool)) {
            return { _0 : _r, _1 : _size = (1 : stdgo.GoInt) };
        };
        var _lim = (_end - (4 : stdgo.GoInt) : stdgo.GoInt);
        if ((_lim < (0 : stdgo.GoInt) : Bool)) {
            _lim = (0 : stdgo.GoInt);
        };
        {
            _start--;
            while ((_start >= _lim : Bool)) {
                if (stdgo._internal.unicode.utf8.Utf8_runeStart.runeStart(_p[(_start : stdgo.GoInt)])) {
                    break;
                };
                _start--;
            };
        };
        if ((_start < (0 : stdgo.GoInt) : Bool)) {
            _start = (0 : stdgo.GoInt);
        };
        {
            var __tmp__ = stdgo._internal.unicode.utf8.Utf8_decodeRune.decodeRune((_p.__slice__(_start, _end) : stdgo.Slice<stdgo.GoUInt8>));
            _r = __tmp__._0;
            _size = __tmp__._1;
        };
        if ((_start + _size : stdgo.GoInt) != (_end)) {
            return { _0 : _r = (65533 : stdgo.GoInt32), _1 : _size = (1 : stdgo.GoInt) };
        };
        return { _0 : _r, _1 : _size };
    }
