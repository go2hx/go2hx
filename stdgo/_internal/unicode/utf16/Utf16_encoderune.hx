package stdgo._internal.unicode.utf16;
function encodeRune(_r:stdgo.GoInt32):{ var _0 : stdgo.GoInt32; var _1 : stdgo.GoInt32; } {
        var _r1 = (0 : stdgo.GoInt32), _r2 = (0 : stdgo.GoInt32);
        if (((_r < (65536 : stdgo.GoInt32) : Bool) || (_r > (1114111 : stdgo.GoInt32) : Bool) : Bool)) {
            return {
                final __tmp__:{ var _0 : stdgo.GoInt32; var _1 : stdgo.GoInt32; } = { _0 : (65533 : stdgo.GoInt32), _1 : (65533 : stdgo.GoInt32) };
                _r1 = __tmp__._0;
                _r2 = __tmp__._1;
                __tmp__;
            };
        };
        _r = (_r - ((65536 : stdgo.GoInt32)) : stdgo.GoInt32);
        return {
            final __tmp__:{ var _0 : stdgo.GoInt32; var _1 : stdgo.GoInt32; } = { _0 : ((55296 : stdgo.GoInt32) + (((_r >> (10i64 : stdgo.GoUInt64) : stdgo.GoInt32)) & (1023 : stdgo.GoInt32) : stdgo.GoInt32) : stdgo.GoInt32), _1 : ((56320 : stdgo.GoInt32) + (_r & (1023 : stdgo.GoInt32) : stdgo.GoInt32) : stdgo.GoInt32) };
            _r1 = __tmp__._0;
            _r2 = __tmp__._1;
            __tmp__;
        };
    }
