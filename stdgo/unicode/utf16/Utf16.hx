package stdgo.unicode.utf16;
/**
    // Package utf16 implements encoding and decoding of UTF-16 sequences.
**/
private var __go2hxdoc__package : Bool;
/**
    // Extra names for constants so we can validate them during testing.
    
    
**/
final maxRune : stdgo.StdGoTypes.GoInt32 = (1114111 : stdgo.StdGoTypes.GoInt32);
/**
    // Extra names for constants so we can validate them during testing.
    
    
**/
final replacementChar : stdgo.StdGoTypes.GoInt32 = (65533 : stdgo.StdGoTypes.GoInt32);
/**
    
    
    // Unicode replacement character
**/
final _replacementChar : stdgo.StdGoTypes.GoInt32 = (65533 : stdgo.StdGoTypes.GoInt32);
/**
    
    
    // Maximum valid Unicode code point.
**/
final _maxRune : stdgo.StdGoTypes.GoInt32 = (1114111 : stdgo.StdGoTypes.GoInt32);
/**
    // 0xd800-0xdc00 encodes the high 10 bits of a pair.
    // 0xdc00-0xe000 encodes the low 10 bits of a pair.
    // the value is those 20 bits plus 0x10000.
    
    
**/
final _surr1 : stdgo.StdGoTypes.GoUInt64 = (55296i64 : stdgo.StdGoTypes.GoUInt64);
/**
    
    
    
**/
final _surr2 : stdgo.StdGoTypes.GoUInt64 = (56320i64 : stdgo.StdGoTypes.GoUInt64);
/**
    
    
    
**/
final _surr3 : stdgo.StdGoTypes.GoUInt64 = (57344i64 : stdgo.StdGoTypes.GoUInt64);
/**
    
    
    
**/
final _surrSelf : stdgo.StdGoTypes.GoUInt64 = (65536i64 : stdgo.StdGoTypes.GoUInt64);
/**
    // IsSurrogate reports whether the specified Unicode code point
    // can appear in a surrogate pair.
**/
function isSurrogate(_r:stdgo.StdGoTypes.GoRune):Bool {
        return ((55296 : stdgo.StdGoTypes.GoInt32) <= _r) && (_r < (57344 : stdgo.StdGoTypes.GoInt32));
    }
/**
    // DecodeRune returns the UTF-16 decoding of a surrogate pair.
    // If the pair is not a valid UTF-16 surrogate pair, DecodeRune returns
    // the Unicode replacement code point U+FFFD.
**/
function decodeRune(_r1:stdgo.StdGoTypes.GoRune, _r2:stdgo.StdGoTypes.GoRune):stdgo.StdGoTypes.GoRune {
        if (((((55296 : stdgo.StdGoTypes.GoInt32) <= _r1) && (_r1 < (56320 : stdgo.StdGoTypes.GoInt32))) && ((56320 : stdgo.StdGoTypes.GoInt32) <= _r2)) && (_r2 < (57344 : stdgo.StdGoTypes.GoInt32))) {
            return (((_r1 - (55296 : stdgo.StdGoTypes.GoInt32)) << (10i64 : stdgo.StdGoTypes.GoUInt64)) | (_r2 - (56320 : stdgo.StdGoTypes.GoInt32))) + (65536 : stdgo.StdGoTypes.GoInt32);
        };
        return (65533 : stdgo.StdGoTypes.GoInt32);
    }
/**
    // EncodeRune returns the UTF-16 surrogate pair r1, r2 for the given rune.
    // If the rune is not a valid Unicode code point or does not need encoding,
    // EncodeRune returns U+FFFD, U+FFFD.
**/
function encodeRune(_r:stdgo.StdGoTypes.GoRune):{ var _0 : stdgo.StdGoTypes.GoRune; var _1 : stdgo.StdGoTypes.GoRune; } {
        var _r1:stdgo.StdGoTypes.GoRune = (0 : stdgo.StdGoTypes.GoInt32), _r2:stdgo.StdGoTypes.GoRune = (0 : stdgo.StdGoTypes.GoInt32);
        if ((_r < (65536 : stdgo.StdGoTypes.GoInt32)) || (_r > (1114111 : stdgo.StdGoTypes.GoInt32))) {
            return { _0 : (65533 : stdgo.StdGoTypes.GoInt32), _1 : (65533 : stdgo.StdGoTypes.GoInt32) };
        };
        _r = _r - ((65536 : stdgo.StdGoTypes.GoInt32));
        return { _0 : (55296 : stdgo.StdGoTypes.GoInt32) + ((_r >> (10i64 : stdgo.StdGoTypes.GoUInt64)) & (1023 : stdgo.StdGoTypes.GoInt32)), _1 : (56320 : stdgo.StdGoTypes.GoInt32) + (_r & (1023 : stdgo.StdGoTypes.GoInt32)) };
    }
/**
    // Encode returns the UTF-16 encoding of the Unicode code point sequence s.
**/
function encode(_s:stdgo.Slice<stdgo.StdGoTypes.GoRune>):stdgo.Slice<stdgo.StdGoTypes.GoUInt16> {
        var _n:stdgo.StdGoTypes.GoInt = (_s.length);
        for (__0 => _v in _s) {
            if (_v >= (65536 : stdgo.StdGoTypes.GoInt32)) {
                _n++;
            };
        };
        var _a = new stdgo.Slice<stdgo.StdGoTypes.GoUInt16>((_n : stdgo.StdGoTypes.GoInt).toBasic(), 0).__setNumber32__();
        _n = (0 : stdgo.StdGoTypes.GoInt);
        for (__1 => _v in _s) {
            if (((0 : stdgo.StdGoTypes.GoInt32) <= _v) && (_v < (55296 : stdgo.StdGoTypes.GoInt32)) || ((57344 : stdgo.StdGoTypes.GoInt32) <= _v) && (_v < (65536 : stdgo.StdGoTypes.GoInt32))) {
                _a[(_n : stdgo.StdGoTypes.GoInt)] = (_v : stdgo.StdGoTypes.GoUInt16);
                _n++;
            } else if (((65536 : stdgo.StdGoTypes.GoInt32) <= _v) && (_v <= (1114111 : stdgo.StdGoTypes.GoInt32))) {
                var __tmp__ = encodeRune(_v), _r1:stdgo.StdGoTypes.GoInt32 = __tmp__._0, _r2:stdgo.StdGoTypes.GoInt32 = __tmp__._1;
                _a[(_n : stdgo.StdGoTypes.GoInt)] = (_r1 : stdgo.StdGoTypes.GoUInt16);
                _a[(_n + (1 : stdgo.StdGoTypes.GoInt) : stdgo.StdGoTypes.GoInt)] = (_r2 : stdgo.StdGoTypes.GoUInt16);
                _n = _n + ((2 : stdgo.StdGoTypes.GoInt));
            } else {
                _a[(_n : stdgo.StdGoTypes.GoInt)] = (65533 : stdgo.StdGoTypes.GoUInt16);
                _n++;
            };
        };
        return (_a.__slice__(0, _n) : stdgo.Slice<stdgo.StdGoTypes.GoUInt16>);
    }
/**
    // AppendRune appends the UTF-16 encoding of the Unicode code point r
    // to the end of p and returns the extended buffer. If the rune is not
    // a valid Unicode code point, it appends the encoding of U+FFFD.
**/
function appendRune(_a:stdgo.Slice<stdgo.StdGoTypes.GoUInt16>, _r:stdgo.StdGoTypes.GoRune):stdgo.Slice<stdgo.StdGoTypes.GoUInt16> {
        if (((0 : stdgo.StdGoTypes.GoInt32) <= _r) && (_r < (55296 : stdgo.StdGoTypes.GoInt32)) || ((57344 : stdgo.StdGoTypes.GoInt32) <= _r) && (_r < (65536 : stdgo.StdGoTypes.GoInt32))) {
            return (_a.__append__((_r : stdgo.StdGoTypes.GoUInt16)));
        } else if (((65536 : stdgo.StdGoTypes.GoInt32) <= _r) && (_r <= (1114111 : stdgo.StdGoTypes.GoInt32))) {
            var __tmp__ = encodeRune(_r), _r1:stdgo.StdGoTypes.GoInt32 = __tmp__._0, _r2:stdgo.StdGoTypes.GoInt32 = __tmp__._1;
            return (_a.__append__((_r1 : stdgo.StdGoTypes.GoUInt16), (_r2 : stdgo.StdGoTypes.GoUInt16)));
        };
        return (_a.__append__((65533 : stdgo.StdGoTypes.GoUInt16)));
    }
/**
    // Decode returns the Unicode code point sequence represented
    // by the UTF-16 encoding s.
**/
function decode(_s:stdgo.Slice<stdgo.StdGoTypes.GoUInt16>):stdgo.Slice<stdgo.StdGoTypes.GoRune> {
        var _buf = new stdgo.Slice<stdgo.StdGoTypes.GoInt32>((0 : stdgo.StdGoTypes.GoInt).toBasic(), (64 : stdgo.StdGoTypes.GoInt)).__setNumber32__();
        return _decode(_s, _buf);
    }
/**
    // decode appends to buf the Unicode code point sequence represented
    // by the UTF-16 encoding s and return the extended buffer.
**/
function _decode(_s:stdgo.Slice<stdgo.StdGoTypes.GoUInt16>, _buf:stdgo.Slice<stdgo.StdGoTypes.GoRune>):stdgo.Slice<stdgo.StdGoTypes.GoRune> {
        {
            var _i:stdgo.StdGoTypes.GoInt = (0 : stdgo.StdGoTypes.GoInt);
            stdgo.Go.cfor(_i < (_s.length), _i++, {
                var _ar:stdgo.StdGoTypes.GoRune = (0 : stdgo.StdGoTypes.GoInt32);
                {
                    var _r:stdgo.StdGoTypes.GoUInt16 = _s[(_i : stdgo.StdGoTypes.GoInt)];
                    if (_r < (55296 : stdgo.StdGoTypes.GoUInt16) || (57344 : stdgo.StdGoTypes.GoUInt16) <= _r) {
                        _ar = (_r : stdgo.StdGoTypes.GoRune);
                    } else if ((((((55296 : stdgo.StdGoTypes.GoUInt16) <= _r) && (_r < (56320 : stdgo.StdGoTypes.GoUInt16))) && ((_i + (1 : stdgo.StdGoTypes.GoInt)) < _s.length)) && ((56320 : stdgo.StdGoTypes.GoUInt16) <= _s[(_i + (1 : stdgo.StdGoTypes.GoInt) : stdgo.StdGoTypes.GoInt)])) && (_s[(_i + (1 : stdgo.StdGoTypes.GoInt) : stdgo.StdGoTypes.GoInt)] < (57344 : stdgo.StdGoTypes.GoUInt16))) {
                        _ar = decodeRune((_r : stdgo.StdGoTypes.GoRune), (_s[(_i + (1 : stdgo.StdGoTypes.GoInt) : stdgo.StdGoTypes.GoInt)] : stdgo.StdGoTypes.GoRune));
                        _i++;
                    } else {
                        _ar = (65533 : stdgo.StdGoTypes.GoInt32);
                    };
                };
                _buf = (_buf.__append__(_ar));
            });
        };
        return _buf;
    }
