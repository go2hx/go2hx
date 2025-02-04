package stdgo._internal.unicode.utf8;
function decodeLastRuneInString(_s:stdgo.GoString):{ var _0 : stdgo.GoInt32; var _1 : stdgo.GoInt; } {
        var _r = (0 : stdgo.GoInt32), _size = (0 : stdgo.GoInt);
        var _end = (_s.length : stdgo.GoInt);
        if (_end == ((0 : stdgo.GoInt))) {
            return {
                final __tmp__:{ var _0 : stdgo.GoInt32; var _1 : stdgo.GoInt; } = { _0 : (65533 : stdgo.GoInt32), _1 : (0 : stdgo.GoInt) };
                _r = __tmp__._0;
                _size = __tmp__._1;
                __tmp__;
            };
        };
        var _start = (_end - (1 : stdgo.GoInt) : stdgo.GoInt);
        _r = (_s[(_start : stdgo.GoInt)] : stdgo.GoInt32);
        if ((_r < (128 : stdgo.GoInt32) : Bool)) {
            return {
                final __tmp__:{ var _0 : stdgo.GoInt32; var _1 : stdgo.GoInt; } = { _0 : _r, _1 : (1 : stdgo.GoInt) };
                _r = __tmp__._0;
                _size = __tmp__._1;
                __tmp__;
            };
        };
        var _lim = (_end - (4 : stdgo.GoInt) : stdgo.GoInt);
        if ((_lim < (0 : stdgo.GoInt) : Bool)) {
            _lim = (0 : stdgo.GoInt);
        };
        {
            _start--;
            while ((_start >= _lim : Bool)) {
                if (stdgo._internal.unicode.utf8.Utf8_runestart.runeStart(_s[(_start : stdgo.GoInt)])) {
                    break;
                };
                _start--;
            };
        };
        if ((_start < (0 : stdgo.GoInt) : Bool)) {
            _start = (0 : stdgo.GoInt);
        };
        {
            var __tmp__ = stdgo._internal.unicode.utf8.Utf8_decoderuneinstring.decodeRuneInString((_s.__slice__(_start, _end) : stdgo.GoString)?.__copy__());
            _r = @:tmpset0 __tmp__._0;
            _size = @:tmpset0 __tmp__._1;
        };
        if ((_start + _size : stdgo.GoInt) != (_end)) {
            return {
                final __tmp__:{ var _0 : stdgo.GoInt32; var _1 : stdgo.GoInt; } = { _0 : (65533 : stdgo.GoInt32), _1 : (1 : stdgo.GoInt) };
                _r = __tmp__._0;
                _size = __tmp__._1;
                __tmp__;
            };
        };
        return {
            final __tmp__:{ var _0 : stdgo.GoInt32; var _1 : stdgo.GoInt; } = { _0 : _r, _1 : _size };
            _r = __tmp__._0;
            _size = __tmp__._1;
            __tmp__;
        };
    }
