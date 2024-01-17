package stdgo.unicode.utf16;
/**
    // Package utf16 implements encoding and decoding of UTF-16 sequences.
**/
private var __go2hxdoc__package : Bool;
/**
    // Extra names for constants so we can validate them during testing.
    
    
**/
final maxRune : stdgo.GoInt32 = (1114111 : stdgo.GoInt32);
/**
    // Extra names for constants so we can validate them during testing.
    
    
**/
final replacementChar : stdgo.GoInt32 = (65533 : stdgo.GoInt32);
/**
    
    
    // Unicode replacement character
**/
final _replacementChar : stdgo.GoInt32 = (65533 : stdgo.GoInt32);
/**
    
    
    // Maximum valid Unicode code point.
**/
final _maxRune : stdgo.GoInt32 = (1114111 : stdgo.GoInt32);
/**
    // 0xd800-0xdc00 encodes the high 10 bits of a pair.
    // 0xdc00-0xe000 encodes the low 10 bits of a pair.
    // the value is those 20 bits plus 0x10000.
    
    
**/
final _surr1 : stdgo.GoUInt64 = (55296i64 : stdgo.GoUInt64);
/**
    
    
    
**/
final _surr2 : stdgo.GoUInt64 = (56320i64 : stdgo.GoUInt64);
/**
    
    
    
**/
final _surr3 : stdgo.GoUInt64 = (57344i64 : stdgo.GoUInt64);
/**
    
    
    
**/
final _surrSelf : stdgo.GoUInt64 = (65536i64 : stdgo.GoUInt64);
/**
    // IsSurrogate reports whether the specified Unicode code point
    // can appear in a surrogate pair.
**/
function isSurrogate(_r:stdgo.GoRune):Bool {
    return ((55296 : stdgo.GoInt32) <= _r) && (_r < (57344 : stdgo.GoInt32));
}
/**
    // DecodeRune returns the UTF-16 decoding of a surrogate pair.
    // If the pair is not a valid UTF-16 surrogate pair, DecodeRune returns
    // the Unicode replacement code point U+FFFD.
**/
function decodeRune(_r1:stdgo.GoRune, _r2:stdgo.GoRune):stdgo.GoRune {
    if (((((55296 : stdgo.GoInt32) <= _r1) && (_r1 < (56320 : stdgo.GoInt32))) && ((56320 : stdgo.GoInt32) <= _r2)) && (_r2 < (57344 : stdgo.GoInt32))) {
        return (((_r1 - (55296 : stdgo.GoInt32)) << (10i64 : stdgo.GoUInt64)) | (_r2 - (56320 : stdgo.GoInt32))) + (65536 : stdgo.GoInt32);
    };
    return (65533 : stdgo.GoInt32);
}
/**
    // EncodeRune returns the UTF-16 surrogate pair r1, r2 for the given rune.
    // If the rune is not a valid Unicode code point or does not need encoding,
    // EncodeRune returns U+FFFD, U+FFFD.
**/
function encodeRune(_r:stdgo.GoRune):{ var _0 : stdgo.GoRune; var _1 : stdgo.GoRune; } {
    var _r1:stdgo.GoRune = (0 : stdgo.GoInt32), _r2:stdgo.GoRune = (0 : stdgo.GoInt32);
    if ((_r < (65536 : stdgo.GoInt32)) || (_r > (1114111 : stdgo.GoInt32))) {
        return { _0 : (65533 : stdgo.GoInt32), _1 : (65533 : stdgo.GoInt32) };
    };
    _r = _r - ((65536 : stdgo.GoInt32));
    return { _0 : (55296 : stdgo.GoInt32) + ((_r >> (10i64 : stdgo.GoUInt64)) & (1023 : stdgo.GoInt32)), _1 : (56320 : stdgo.GoInt32) + (_r & (1023 : stdgo.GoInt32)) };
}
/**
    // Encode returns the UTF-16 encoding of the Unicode code point sequence s.
**/
function encode(_s:stdgo.Slice<stdgo.GoRune>):stdgo.Slice<stdgo.GoUInt16> {
    var _n:stdgo.GoInt = (_s.length);
    for (__0 => _v in _s) {
        if (_v >= (65536 : stdgo.GoInt32)) {
            _n++;
        };
    };
    var _a = new stdgo.Slice<stdgo.GoUInt16>((_n : stdgo.GoInt).toBasic(), 0).__setNumber32__();
    _n = (0 : stdgo.GoInt);
    for (__1 => _v in _s) {
        if (((0 : stdgo.GoInt32) <= _v) && (_v < (55296 : stdgo.GoInt32)) || ((57344 : stdgo.GoInt32) <= _v) && (_v < (65536 : stdgo.GoInt32))) {
            _a[(_n : stdgo.GoInt)] = (_v : stdgo.GoUInt16);
            _n++;
        } else if (((65536 : stdgo.GoInt32) <= _v) && (_v <= (1114111 : stdgo.GoInt32))) {
            var __tmp__ = encodeRune(_v), _r1:stdgo.GoInt32 = __tmp__._0, _r2:stdgo.GoInt32 = __tmp__._1;
            _a[(_n : stdgo.GoInt)] = (_r1 : stdgo.GoUInt16);
            _a[(_n + (1 : stdgo.GoInt) : stdgo.GoInt)] = (_r2 : stdgo.GoUInt16);
            _n = _n + ((2 : stdgo.GoInt));
        } else {
            _a[(_n : stdgo.GoInt)] = (65533 : stdgo.GoUInt16);
            _n++;
        };
    };
    return (_a.__slice__(0, _n) : stdgo.Slice<stdgo.GoUInt16>);
}
/**
    // AppendRune appends the UTF-16 encoding of the Unicode code point r
    // to the end of p and returns the extended buffer. If the rune is not
    // a valid Unicode code point, it appends the encoding of U+FFFD.
**/
function appendRune(_a:stdgo.Slice<stdgo.GoUInt16>, _r:stdgo.GoRune):stdgo.Slice<stdgo.GoUInt16> {
    if (((0 : stdgo.GoInt32) <= _r) && (_r < (55296 : stdgo.GoInt32)) || ((57344 : stdgo.GoInt32) <= _r) && (_r < (65536 : stdgo.GoInt32))) {
        return (_a.__append__((_r : stdgo.GoUInt16)));
    } else if (((65536 : stdgo.GoInt32) <= _r) && (_r <= (1114111 : stdgo.GoInt32))) {
        var __tmp__ = encodeRune(_r), _r1:stdgo.GoInt32 = __tmp__._0, _r2:stdgo.GoInt32 = __tmp__._1;
        return (_a.__append__((_r1 : stdgo.GoUInt16), (_r2 : stdgo.GoUInt16)));
    };
    return (_a.__append__((65533 : stdgo.GoUInt16)));
}
/**
    // Decode returns the Unicode code point sequence represented
    // by the UTF-16 encoding s.
**/
function decode(_s:stdgo.Slice<stdgo.GoUInt16>):stdgo.Slice<stdgo.GoRune> {
    var _buf = new stdgo.Slice<stdgo.GoInt32>((0 : stdgo.GoInt).toBasic(), (64 : stdgo.GoInt)).__setNumber32__();
    return _decode(_s, _buf);
}
/**
    // decode appends to buf the Unicode code point sequence represented
    // by the UTF-16 encoding s and return the extended buffer.
**/
function _decode(_s:stdgo.Slice<stdgo.GoUInt16>, _buf:stdgo.Slice<stdgo.GoRune>):stdgo.Slice<stdgo.GoRune> {
    {
        var _i:stdgo.GoInt = (0 : stdgo.GoInt);
        stdgo.Go.cfor(_i < (_s.length), _i++, {
            var _ar:stdgo.GoRune = (0 : stdgo.GoInt32);
            {
                var _r:stdgo.GoUInt16 = _s[(_i : stdgo.GoInt)];
                if (_r < (55296 : stdgo.GoUInt16) || (57344 : stdgo.GoUInt16) <= _r) {
                    _ar = (_r : stdgo.GoRune);
                } else if ((((((55296 : stdgo.GoUInt16) <= _r) && (_r < (56320 : stdgo.GoUInt16))) && ((_i + (1 : stdgo.GoInt)) < _s.length)) && ((56320 : stdgo.GoUInt16) <= _s[(_i + (1 : stdgo.GoInt) : stdgo.GoInt)])) && (_s[(_i + (1 : stdgo.GoInt) : stdgo.GoInt)] < (57344 : stdgo.GoUInt16))) {
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
