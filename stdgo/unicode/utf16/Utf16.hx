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
    // Package utf16 implements encoding and decoding of UTF-16 sequences.
**/
private var __go2hxdoc__package : Bool;
/**
    // Extra names for constants so we can validate them during testing.
    
    
**/
final maxRune = (1114111 : GoInt32);
/**
    // Extra names for constants so we can validate them during testing.
    
    
**/
final replacementChar = (65533 : GoInt32);
/**
    
    
    // Unicode replacement character
**/
private final _replacementChar = (65533 : GoInt32);
/**
    
    
    // Maximum valid Unicode code point.
**/
private final _maxRune = (1114111 : GoInt32);
/**
    // 0xd800-0xdc00 encodes the high 10 bits of a pair.
    // 0xdc00-0xe000 encodes the low 10 bits of a pair.
    // the value is those 20 bits plus 0x10000.
    
    
**/
private final _surr1 = (55296i64 : GoUInt64);
/**
    
    
    
**/
private final _surr2 = (56320i64 : GoUInt64);
/**
    
    
    
**/
private final _surr3 = (57344i64 : GoUInt64);
/**
    
    
    
**/
private final _surrSelf = (65536i64 : GoUInt64);
/**
    // IsSurrogate reports whether the specified Unicode code point
    // can appear in a surrogate pair.
**/
function isSurrogate(_r:GoRune):Bool {
        return ((55296 : GoInt32) <= _r) && (_r < (57344 : GoInt32));
    }
/**
    // DecodeRune returns the UTF-16 decoding of a surrogate pair.
    // If the pair is not a valid UTF-16 surrogate pair, DecodeRune returns
    // the Unicode replacement code point U+FFFD.
**/
function decodeRune(_r1:GoRune, _r2:GoRune):GoRune {
        if (((((55296 : GoInt32) <= _r1) && (_r1 < (56320 : GoInt32))) && ((56320 : GoInt32) <= _r2)) && (_r2 < (57344 : GoInt32))) {
            return (((_r1 - (55296 : GoInt32)) << (10i64 : GoUInt64)) | (_r2 - (56320 : GoInt32))) + (65536 : GoInt32);
        };
        return (65533 : GoInt32);
    }
/**
    // EncodeRune returns the UTF-16 surrogate pair r1, r2 for the given rune.
    // If the rune is not a valid Unicode code point or does not need encoding,
    // EncodeRune returns U+FFFD, U+FFFD.
**/
function encodeRune(_r:GoRune):{ var _0 : GoRune; var _1 : GoRune; } {
        var _r1:GoRune = (0 : GoInt32), _r2:GoRune = (0 : GoInt32);
        if ((_r < (65536 : GoInt32)) || (_r > (1114111 : GoInt32))) {
            return { _0 : (65533 : GoInt32), _1 : (65533 : GoInt32) };
        };
        _r = _r - ((65536 : GoInt32));
        return { _0 : (55296 : GoInt32) + ((_r >> (10i64 : GoUInt64)) & (1023 : GoInt32)), _1 : (56320 : GoInt32) + (_r & (1023 : GoInt32)) };
    }
/**
    // Encode returns the UTF-16 encoding of the Unicode code point sequence s.
**/
function encode(_s:Slice<GoRune>):Slice<GoUInt16> {
        var _n:GoInt = (_s.length);
        for (__0 => _v in _s) {
            if (_v >= (65536 : GoInt32)) {
                _n++;
            };
        };
        var _a = new Slice<GoUInt16>((_n : GoInt).toBasic(), 0).__setNumber32__();
        _n = (0 : GoInt);
        for (__1 => _v in _s) {
            if (((0 : GoInt32) <= _v) && (_v < (55296 : GoInt32)) || ((57344 : GoInt32) <= _v) && (_v < (65536 : GoInt32))) {
                _a[(_n : GoInt)] = (_v : GoUInt16);
                _n++;
            } else if (((65536 : GoInt32) <= _v) && (_v <= (1114111 : GoInt32))) {
                var __tmp__ = encodeRune(_v), _r1:GoInt32 = __tmp__._0, _r2:GoInt32 = __tmp__._1;
                _a[(_n : GoInt)] = (_r1 : GoUInt16);
                _a[(_n + (1 : GoInt) : GoInt)] = (_r2 : GoUInt16);
                _n = _n + ((2 : GoInt));
            } else {
                _a[(_n : GoInt)] = (65533 : GoUInt16);
                _n++;
            };
        };
        return (_a.__slice__(0, _n) : Slice<GoUInt16>);
    }
/**
    // AppendRune appends the UTF-16 encoding of the Unicode code point r
    // to the end of p and returns the extended buffer. If the rune is not
    // a valid Unicode code point, it appends the encoding of U+FFFD.
**/
function appendRune(_a:Slice<GoUInt16>, _r:GoRune):Slice<GoUInt16> {
        if (((0 : GoInt32) <= _r) && (_r < (55296 : GoInt32)) || ((57344 : GoInt32) <= _r) && (_r < (65536 : GoInt32))) {
            return (_a.__append__((_r : GoUInt16)));
        } else if (((65536 : GoInt32) <= _r) && (_r <= (1114111 : GoInt32))) {
            var __tmp__ = encodeRune(_r), _r1:GoInt32 = __tmp__._0, _r2:GoInt32 = __tmp__._1;
            return (_a.__append__((_r1 : GoUInt16), (_r2 : GoUInt16)));
        };
        return (_a.__append__((65533 : GoUInt16)));
    }
/**
    // Decode returns the Unicode code point sequence represented
    // by the UTF-16 encoding s.
**/
function decode(_s:Slice<GoUInt16>):Slice<GoRune> {
        var _a = new Slice<GoInt32>((_s.length : GoInt).toBasic(), 0).__setNumber32__();
        var _n:GoInt = (0 : GoInt);
        {
            var _i:GoInt = (0 : GoInt);
            Go.cfor(_i < (_s.length), _i++, {
                {
                    var _r:GoUInt16 = _s[(_i : GoInt)];
                    if (_r < (55296 : GoUInt16) || (57344 : GoUInt16) <= _r) {
                        _a[(_n : GoInt)] = (_r : GoRune);
                    } else if ((((((55296 : GoUInt16) <= _r) && (_r < (56320 : GoUInt16))) && ((_i + (1 : GoInt)) < _s.length)) && ((56320 : GoUInt16) <= _s[(_i + (1 : GoInt) : GoInt)])) && (_s[(_i + (1 : GoInt) : GoInt)] < (57344 : GoUInt16))) {
                        _a[(_n : GoInt)] = decodeRune((_r : GoRune), (_s[(_i + (1 : GoInt) : GoInt)] : GoRune));
                        _i++;
                    } else {
                        _a[(_n : GoInt)] = (65533 : GoInt32);
                    };
                };
                _n++;
            });
        };
        return (_a.__slice__(0, _n) : Slice<GoInt32>);
    }
