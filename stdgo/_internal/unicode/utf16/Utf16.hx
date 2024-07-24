package stdgo._internal.unicode.utf16;
private var __go2hxdoc__package : Bool;
final maxRune : stdgo.GoInt32 = (1114111 : stdgo.GoInt32);
final replacementChar : stdgo.GoInt32 = (65533 : stdgo.GoInt32);
final _replacementChar : stdgo.GoInt32 = (65533 : stdgo.GoInt32);
final _maxRune : stdgo.GoInt32 = (1114111 : stdgo.GoInt32);
final _surr1 : stdgo.GoUInt64 = (55296i64 : stdgo.GoUInt64);
final _surr2 : stdgo.GoUInt64 = (56320i64 : stdgo.GoUInt64);
final _surr3 : stdgo.GoUInt64 = (57344i64 : stdgo.GoUInt64);
final _surrSelf : stdgo.GoUInt64 = (65536i64 : stdgo.GoUInt64);
function isSurrogate(_r:stdgo.GoRune):Bool {
    return (((55296 : stdgo.GoInt32) <= _r : Bool) && (_r < (57344 : stdgo.GoInt32) : Bool) : Bool);
}
function decodeRune(_r1:stdgo.GoRune, _r2:stdgo.GoRune):stdgo.GoRune {
    if ((((((55296 : stdgo.GoInt32) <= _r1 : Bool) && (_r1 < (56320 : stdgo.GoInt32) : Bool) : Bool) && ((56320 : stdgo.GoInt32) <= _r2 : Bool) : Bool) && (_r2 < (57344 : stdgo.GoInt32) : Bool) : Bool)) {
        return (((((_r1 - (55296 : stdgo.GoInt32) : stdgo.GoInt32)) << (10i64 : stdgo.GoUInt64) : stdgo.GoInt32) | ((_r2 - (56320 : stdgo.GoInt32) : stdgo.GoInt32)) : stdgo.GoInt32) + (65536 : stdgo.GoInt32) : stdgo.GoInt32);
    };
    return (65533 : stdgo.GoInt32);
}
function encodeRune(_r:stdgo.GoRune):{ var _0 : stdgo.GoRune; var _1 : stdgo.GoRune; } {
    var _r1 = (0 : stdgo.GoInt32), _r2 = (0 : stdgo.GoInt32);
    if (((_r < (65536 : stdgo.GoInt32) : Bool) || (_r > (1114111 : stdgo.GoInt32) : Bool) : Bool)) {
        return { _0 : (65533 : stdgo.GoInt32), _1 : (65533 : stdgo.GoInt32) };
    };
    _r = (_r - ((65536 : stdgo.GoInt32)) : stdgo.GoInt32);
    return { _0 : ((55296 : stdgo.GoInt32) + (((_r >> (10i64 : stdgo.GoUInt64) : stdgo.GoInt32)) & (1023 : stdgo.GoInt32) : stdgo.GoInt32) : stdgo.GoInt32), _1 : ((56320 : stdgo.GoInt32) + (_r & (1023 : stdgo.GoInt32) : stdgo.GoInt32) : stdgo.GoInt32) };
}
function encode(_s:stdgo.Slice<stdgo.GoRune>):stdgo.Slice<stdgo.GoUInt16> {
    var _n = (_s.length);
    for (__0 => _v in _s) {
        if ((_v >= (65536 : stdgo.GoInt32) : Bool)) {
            _n++;
        };
    };
    var _a = (new stdgo.Slice<stdgo.GoUInt16>((_n : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoUInt16>);
    _n = (0 : stdgo.GoInt);
    for (__1 => _v in _s) {
        if ((((0 : stdgo.GoInt32) <= _v : Bool) && (_v < (55296 : stdgo.GoInt32) : Bool) : Bool) || (((57344 : stdgo.GoInt32) <= _v : Bool) && (_v < (65536 : stdgo.GoInt32) : Bool) : Bool)) {
            _a[(_n : stdgo.GoInt)] = (_v : stdgo.GoUInt16);
            _n++;
        } else if ((((65536 : stdgo.GoInt32) <= _v : Bool) && (_v <= (1114111 : stdgo.GoInt32) : Bool) : Bool)) {
            var __tmp__ = encodeRune(_v), _r1:stdgo.GoInt32 = __tmp__._0, _r2:stdgo.GoInt32 = __tmp__._1;
            _a[(_n : stdgo.GoInt)] = (_r1 : stdgo.GoUInt16);
            _a[(_n + (1 : stdgo.GoInt) : stdgo.GoInt)] = (_r2 : stdgo.GoUInt16);
            _n = (_n + ((2 : stdgo.GoInt)) : stdgo.GoInt);
        } else {
            _a[(_n : stdgo.GoInt)] = (65533 : stdgo.GoUInt16);
            _n++;
        };
    };
    return (_a.__slice__(0, _n) : stdgo.Slice<stdgo.GoUInt16>);
}
function appendRune(_a:stdgo.Slice<stdgo.GoUInt16>, _r:stdgo.GoRune):stdgo.Slice<stdgo.GoUInt16> {
    if ((((0 : stdgo.GoInt32) <= _r : Bool) && (_r < (55296 : stdgo.GoInt32) : Bool) : Bool) || (((57344 : stdgo.GoInt32) <= _r : Bool) && (_r < (65536 : stdgo.GoInt32) : Bool) : Bool)) {
        return (_a.__append__((_r : stdgo.GoUInt16)));
    } else if ((((65536 : stdgo.GoInt32) <= _r : Bool) && (_r <= (1114111 : stdgo.GoInt32) : Bool) : Bool)) {
        var __tmp__ = encodeRune(_r), _r1:stdgo.GoInt32 = __tmp__._0, _r2:stdgo.GoInt32 = __tmp__._1;
        return (_a.__append__((_r1 : stdgo.GoUInt16), (_r2 : stdgo.GoUInt16)));
    };
    return (_a.__append__((65533 : stdgo.GoUInt16)));
}
function decode(_s:stdgo.Slice<stdgo.GoUInt16>):stdgo.Slice<stdgo.GoRune> {
    var _buf = (new stdgo.Slice<stdgo.GoInt32>((0 : stdgo.GoInt).toBasic(), (64 : stdgo.GoInt)).__setNumber32__() : stdgo.Slice<stdgo.GoInt32>);
    return _decode(_s, _buf);
}
function _decode(_s:stdgo.Slice<stdgo.GoUInt16>, _buf:stdgo.Slice<stdgo.GoRune>):stdgo.Slice<stdgo.GoRune> {
    {
        var _i = (0 : stdgo.GoInt);
        stdgo.Go.cfor((_i < (_s.length) : Bool), _i++, {
            var _ar:stdgo.GoRune = (0 : stdgo.GoInt32);
            {
                var _r = _s[(_i : stdgo.GoInt)];
                if ((_r < (55296 : stdgo.GoUInt16) : Bool) || ((57344 : stdgo.GoUInt16) <= _r : Bool)) {
                    _ar = (_r : stdgo.GoRune);
                } else if (((((((55296 : stdgo.GoUInt16) <= _r : Bool) && (_r < (56320 : stdgo.GoUInt16) : Bool) : Bool) && ((_i + (1 : stdgo.GoInt) : stdgo.GoInt) < (_s.length) : Bool) : Bool) && ((56320 : stdgo.GoUInt16) <= _s[(_i + (1 : stdgo.GoInt) : stdgo.GoInt)] : Bool) : Bool) && (_s[(_i + (1 : stdgo.GoInt) : stdgo.GoInt)] < (57344 : stdgo.GoUInt16) : Bool) : Bool)) {
                    _ar = decodeRune((_r : stdgo.GoRune), (_s[(_i + (1 : stdgo.GoInt) : stdgo.GoInt)] : stdgo.GoRune));
                    _i++;
                } else {
                    _ar = (65533 : stdgo.GoInt32);
                };
            };
            _buf = (_buf.__append__(_ar));
        });
    };
    return _buf;
}
