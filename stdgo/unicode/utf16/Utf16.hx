package stdgo.unicode.utf16;
import stdgo.StdGoTypes;
import stdgo.Error;
import stdgo.Go;
import stdgo.GoString;
import stdgo.Pointer;
import stdgo.Slice;
import stdgo.GoArray;
import stdgo.GoMap;
import stdgo.Chan;
/**
    // IsSurrogate reports whether the specified Unicode code point
    // can appear in a surrogate pair.
**/
function isSurrogate(_r:GoRune):Bool {
    return (((55296 : GoInt32)) <= _r) && (_r < ((57344 : GoInt32)));
}
/**
    // DecodeRune returns the UTF-16 decoding of a surrogate pair.
    // If the pair is not a valid UTF-16 surrogate pair, DecodeRune returns
    // the Unicode replacement code point U+FFFD.
**/
function decodeRune(_r1:GoRune, _r2:GoRune):GoRune {
    if ((((((55296 : GoInt32)) <= _r1) && (_r1 < ((56320 : GoInt32)))) && (((56320 : GoInt32)) <= _r2)) && (_r2 < ((57344 : GoInt32)))) {
        return (((_r1 - ((55296 : GoInt32))) << ((10 : GoUnTypedInt))) | (_r2 - ((56320 : GoInt32)))) + ((65536 : GoInt32));
    };
    return ((65533 : GoInt32));
}
/**
    // EncodeRune returns the UTF-16 surrogate pair r1, r2 for the given rune.
    // If the rune is not a valid Unicode code point or does not need encoding,
    // EncodeRune returns U+FFFD, U+FFFD.
**/
function encodeRune(_r:GoRune):{ var _0 : GoRune; var _1 : GoRune; } {
    var _r1:GoRune = ((0 : GoInt32)), _r2:GoRune = ((0 : GoInt32));
    if ((_r < ((65536 : GoInt32))) || (_r > ((1114111 : GoInt32)))) {
        return { _0 : ((65533 : GoInt32)), _1 : ((65533 : GoInt32)) };
    };
    _r = _r - (((65536 : GoInt32)));
    return { _0 : ((55296 : GoInt32)) + ((_r >> ((10 : GoUnTypedInt))) & ((1023 : GoInt32))), _1 : ((56320 : GoInt32)) + (_r & ((1023 : GoInt32))) };
}
/**
    // Encode returns the UTF-16 encoding of the Unicode code point sequence s.
**/
function encode(_s:Slice<GoRune>):Slice<GoUInt16> {
    var _n:GoInt = (_s != null ? _s.length : ((0 : GoInt)));
    for (_ => _v in _s) {
        if (_v >= ((65536 : GoInt32))) {
            _n++;
        };
    };
    var _a:Slice<GoUInt16> = new Slice<GoUInt16>(...[for (i in 0 ... ((_n : GoInt)).toBasic()) ((0 : GoUInt16))]);
    _n = ((0 : GoInt));
    for (_ => _v in _s) {
        if ((((0 : GoInt32)) <= _v) && (_v < ((55296 : GoInt32))) || (((57344 : GoInt32)) <= _v) && (_v < ((65536 : GoInt32)))) {
            if (_a != null) _a[_n] = ((_v : GoUInt16));
            _n++;
        } else if ((((65536 : GoInt32)) <= _v) && (_v <= ((1114111 : GoInt32)))) {
            var __tmp__ = encodeRune(_v), _r1:GoInt32 = __tmp__._0, _r2:GoInt32 = __tmp__._1;
            if (_a != null) _a[_n] = ((_r1 : GoUInt16));
            if (_a != null) _a[_n + ((1 : GoInt))] = ((_r2 : GoUInt16));
            _n = _n + (((2 : GoInt)));
        } else {
            if (_a != null) _a[_n] = ((((65533 : GoUInt16)) : GoUInt16));
            _n++;
        };
    };
    return _a.__slice__(0, _n);
}
/**
    // Decode returns the Unicode code point sequence represented
    // by the UTF-16 encoding s.
**/
function decode(_s:Slice<GoUInt16>):Slice<GoRune> {
    var _a:Slice<GoInt32> = new Slice<GoInt32>(...[for (i in 0 ... (((_s != null ? _s.length : ((0 : GoInt))) : GoInt)).toBasic()) ((0 : GoInt32))]);
    var _n:GoInt = ((0 : GoInt));
    {
        var _i:GoInt = ((0 : GoInt));
        Go.cfor(_i < (_s != null ? _s.length : ((0 : GoInt))), _i++, {
            {
                var _r:GoUInt16 = (_s != null ? _s[_i] : ((0 : GoUInt16)));
                if (_r < ((55296 : GoUInt16)) || ((57344 : GoUInt16)) <= _r) {
                    if (_a != null) _a[_n] = ((_r : GoRune));
                } else if (((((((55296 : GoUInt16)) <= _r) && (_r < ((56320 : GoUInt16)))) && ((_i + ((1 : GoInt))) < (_s != null ? _s.length : ((0 : GoInt))))) && (((56320 : GoUInt16)) <= (_s != null ? _s[_i + ((1 : GoInt))] : ((0 : GoUInt16))))) && ((_s != null ? _s[_i + ((1 : GoInt))] : ((0 : GoUInt16))) < ((57344 : GoUInt16)))) {
                    if (_a != null) _a[_n] = decodeRune(((_r : GoRune)), (((_s != null ? _s[_i + ((1 : GoInt))] : ((0 : GoUInt16))) : GoRune)));
                    _i++;
                } else {
                    if (_a != null) _a[_n] = ((65533 : GoInt32));
                };
            };
            _n++;
        });
    };
    return _a.__slice__(0, _n);
}
