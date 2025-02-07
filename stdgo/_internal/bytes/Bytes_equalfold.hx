package stdgo._internal.bytes;
function equalFold(_s:stdgo.Slice<stdgo.GoUInt8>, _t:stdgo.Slice<stdgo.GoUInt8>):Bool {
        var _r_2972531:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _size_2971986:stdgo.GoInt = (0 : stdgo.GoInt);
        var _sr_2971772:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _sr_2971253:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var _i_2971205:stdgo.GoInt = (0 : stdgo.GoInt);
        var _r_2971983:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _size_2971858:stdgo.GoInt = (0 : stdgo.GoInt);
        var _r_2971855:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _tr_2971776:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _tr_2971266:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    _i_2971205 = (0 : stdgo.GoInt);
                    var __blank__ = 0i32;
                    _gotoNext = 2971213i32;
                } else if (__value__ == (2971213i32)) {
                    if (((_i_2971205 < (_s.length) : Bool) && (_i_2971205 < (_t.length) : Bool) : Bool)) {
                        _gotoNext = 2971249i32;
                    } else {
                        _gotoNext = 2971638i32;
                    };
                } else if (__value__ == (2971249i32)) {
                    _sr_2971253 = _s[(_i_2971205 : stdgo.GoInt)];
                    _tr_2971266 = _t[(_i_2971205 : stdgo.GoInt)];
                    if (((_sr_2971253 | _tr_2971266 : stdgo.GoUInt8) >= (128 : stdgo.GoUInt8) : Bool)) {
                        _gotoNext = 2971305i32;
                    } else {
                        _gotoNext = 2971349i32;
                    };
                } else if (__value__ == (2971305i32)) {
                    _gotoNext = 2971663i32;
                } else if (__value__ == (2971349i32)) {
                    if (_tr_2971266 == (_sr_2971253)) {
                        _gotoNext = 2971361i32;
                    } else {
                        _gotoNext = 2971426i32;
                    };
                } else if (__value__ == (2971361i32)) {
                    _i_2971205++;
                    _gotoNext = 2971213i32;
                } else if (__value__ == (2971426i32)) {
                    if ((_tr_2971266 < _sr_2971253 : Bool)) {
                        _gotoNext = 2971437i32;
                    } else {
                        _gotoNext = 2971512i32;
                    };
                } else if (__value__ == (2971437i32)) {
                    {
                        final __tmp__0 = _sr_2971253;
                        final __tmp__1 = _tr_2971266;
                        _tr_2971266 = __tmp__0;
                        _sr_2971253 = __tmp__1;
                    };
                    _gotoNext = 2971512i32;
                } else if (__value__ == (2971512i32)) {
                    if (((((65 : stdgo.GoUInt8) <= _sr_2971253 : Bool) && (_sr_2971253 <= (90 : stdgo.GoUInt8) : Bool) : Bool) && (_tr_2971266 == ((_sr_2971253 + (97 : stdgo.GoUInt8) : stdgo.GoUInt8) - (65 : stdgo.GoUInt8) : stdgo.GoUInt8)) : Bool)) {
                        _gotoNext = 2971558i32;
                    } else {
                        _gotoNext = 2971578i32;
                    };
                } else if (__value__ == (2971558i32)) {
                    _i_2971205++;
                    _gotoNext = 2971213i32;
                } else if (__value__ == (2971578i32)) {
                    return false;
                    _i_2971205++;
                    _gotoNext = 2971213i32;
                } else if (__value__ == (2971638i32)) {
                    return (_s.length) == ((_t.length));
                    _gotoNext = 2971663i32;
                } else if (__value__ == (2971663i32)) {
                    _s = (_s.__slice__(_i_2971205) : stdgo.Slice<stdgo.GoUInt8>);
                    _t = (_t.__slice__(_i_2971205) : stdgo.Slice<stdgo.GoUInt8>);
                    var __blank__ = 0i32;
                    _gotoNext = 2971698i32;
                } else if (__value__ == (2971698i32)) {
                    if (((_s.length != (0 : stdgo.GoInt)) && (_t.length != (0 : stdgo.GoInt)) : Bool)) {
                        _gotoNext = 2971729i32;
                    } else {
                        _gotoNext = 2972704i32;
                    };
                } else if (__value__ == (2971729i32)) {
                    if ((_s[(0 : stdgo.GoInt)] < (128 : stdgo.GoUInt8) : Bool)) {
                        _gotoNext = 2971810i32;
                    } else {
                        _gotoNext = 2971850i32;
                    };
                } else if (__value__ == (2971810i32)) {
                    {
                        final __tmp__0 = (_s[(0 : stdgo.GoInt)] : stdgo.GoInt32);
                        final __tmp__1 = (_s.__slice__((1 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>);
                        _sr_2971772 = __tmp__0;
                        _s = __tmp__1;
                    };
                    _gotoNext = 2971914i32;
                } else if (__value__ == (2971850i32)) {
                    _gotoNext = 2971850i32;
                    {
                        var __tmp__ = stdgo._internal.unicode.utf8.Utf8_decoderune.decodeRune(_s);
                        _r_2971855 = @:tmpset0 __tmp__._0;
                        _size_2971858 = @:tmpset0 __tmp__._1;
                    };
                    {
                        final __tmp__0 = _r_2971855;
                        final __tmp__1 = (_s.__slice__(_size_2971858) : stdgo.Slice<stdgo.GoUInt8>);
                        _sr_2971772 = __tmp__0;
                        _s = __tmp__1;
                    };
                    var __blank__ = 0i32;
                    _gotoNext = 2971914i32;
                } else if (__value__ == (2971914i32)) {
                    if ((_t[(0 : stdgo.GoInt)] < (128 : stdgo.GoUInt8) : Bool)) {
                        _gotoNext = 2971938i32;
                    } else {
                        _gotoNext = 2971978i32;
                    };
                } else if (__value__ == (2971938i32)) {
                    {
                        final __tmp__0 = (_t[(0 : stdgo.GoInt)] : stdgo.GoInt32);
                        final __tmp__1 = (_t.__slice__((1 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>);
                        _tr_2971776 = __tmp__0;
                        _t = __tmp__1;
                    };
                    _gotoNext = 2972114i32;
                } else if (__value__ == (2971978i32)) {
                    _gotoNext = 2971978i32;
                    {
                        var __tmp__ = stdgo._internal.unicode.utf8.Utf8_decoderune.decodeRune(_t);
                        _r_2971983 = @:tmpset0 __tmp__._0;
                        _size_2971986 = @:tmpset0 __tmp__._1;
                    };
                    {
                        final __tmp__0 = _r_2971983;
                        final __tmp__1 = (_t.__slice__(_size_2971986) : stdgo.Slice<stdgo.GoUInt8>);
                        _tr_2971776 = __tmp__0;
                        _t = __tmp__1;
                    };
                    var __blank__ = 0i32;
                    _gotoNext = 2972114i32;
                } else if (__value__ == (2972114i32)) {
                    if (_tr_2971776 == (_sr_2971772)) {
                        _gotoNext = 2972126i32;
                    } else {
                        _gotoNext = 2972191i32;
                    };
                } else if (__value__ == (2972126i32)) {
                    var __blank__ = 0i32;
                    _gotoNext = 2971698i32;
                } else if (__value__ == (2972191i32)) {
                    if ((_tr_2971776 < _sr_2971772 : Bool)) {
                        _gotoNext = 2972202i32;
                    } else {
                        _gotoNext = 2972256i32;
                    };
                } else if (__value__ == (2972202i32)) {
                    {
                        final __tmp__0 = _sr_2971772;
                        final __tmp__1 = _tr_2971776;
                        _tr_2971776 = __tmp__0;
                        _sr_2971772 = __tmp__1;
                    };
                    _gotoNext = 2972256i32;
                } else if (__value__ == (2972256i32)) {
                    if ((_tr_2971776 < (128 : stdgo.GoInt32) : Bool)) {
                        _gotoNext = 2972278i32;
                    } else {
                        _gotoNext = 2972531i32;
                    };
                } else if (__value__ == (2972278i32)) {
                    if (((((65 : stdgo.GoInt32) <= _sr_2971772 : Bool) && (_sr_2971772 <= (90 : stdgo.GoInt32) : Bool) : Bool) && (_tr_2971776 == ((_sr_2971772 + (97 : stdgo.GoInt32) : stdgo.GoInt32) - (65 : stdgo.GoInt32) : stdgo.GoInt32)) : Bool)) {
                        _gotoNext = 2972378i32;
                    } else {
                        _gotoNext = 2972401i32;
                    };
                } else if (__value__ == (2972378i32)) {
                    var __blank__ = 0i32;
                    _gotoNext = 2971698i32;
                } else if (__value__ == (2972401i32)) {
                    return false;
                    _gotoNext = 2972531i32;
                } else if (__value__ == (2972531i32)) {
                    _r_2972531 = stdgo._internal.unicode.Unicode_simplefold.simpleFold(_sr_2971772);
                    var __blank__ = 0i32;
                    _gotoNext = 2972561i32;
                } else if (__value__ == (2972561i32)) {
                    if (((_r_2972531 != _sr_2971772) && (_r_2972531 < _tr_2971776 : Bool) : Bool)) {
                        _gotoNext = 2972583i32;
                    } else {
                        _gotoNext = 2972620i32;
                    };
                } else if (__value__ == (2972583i32)) {
                    _r_2972531 = stdgo._internal.unicode.Unicode_simplefold.simpleFold(_r_2972531);
                    _gotoNext = 2972561i32;
                } else if (__value__ == (2972620i32)) {
                    if (_r_2972531 == (_tr_2971776)) {
                        _gotoNext = 2972631i32;
                    } else {
                        _gotoNext = 2972651i32;
                    };
                } else if (__value__ == (2972631i32)) {
                    var __blank__ = 0i32;
                    _gotoNext = 2971698i32;
                } else if (__value__ == (2972651i32)) {
                    return false;
                    _gotoNext = 2971698i32;
                } else if (__value__ == (2972704i32)) {
                    return (_s.length) == ((_t.length));
                    _gotoNext = -1i32;
                };
            };
        };
        throw stdgo.Go.toInterface(("unreachable goto control flow" : stdgo.GoString));
    }
