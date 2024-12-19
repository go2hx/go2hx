package stdgo._internal.bytes;
function equalFold(_s:stdgo.Slice<stdgo.GoUInt8>, _t:stdgo.Slice<stdgo.GoUInt8>):Bool {
        var _r_2875572:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _size_2875447:stdgo.GoInt = (0 : stdgo.GoInt);
        var _sr_2875361:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _tr_2874855:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var _sr_2874842:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var _i_2874794:stdgo.GoInt = (0 : stdgo.GoInt);
        var _r_2876120:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _size_2875575:stdgo.GoInt = (0 : stdgo.GoInt);
        var _r_2875444:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _tr_2875365:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    _i_2874794 = (0 : stdgo.GoInt);
                    var __blank__ = 0i32;
                    _gotoNext = 2874802i32;
                } else if (__value__ == (2874802i32)) {
                    if (((_i_2874794 < (_s.length) : Bool) && (_i_2874794 < (_t.length) : Bool) : Bool)) {
                        _gotoNext = 2874838i32;
                    } else {
                        _gotoNext = 2875227i32;
                    };
                } else if (__value__ == (2874838i32)) {
                    _sr_2874842 = _s[(_i_2874794 : stdgo.GoInt)];
                    _tr_2874855 = _t[(_i_2874794 : stdgo.GoInt)];
                    if (((_sr_2874842 | _tr_2874855 : stdgo.GoUInt8) >= (128 : stdgo.GoUInt8) : Bool)) {
                        _gotoNext = 2874894i32;
                    } else {
                        _gotoNext = 2874938i32;
                    };
                } else if (__value__ == (2874894i32)) {
                    _gotoNext = 2875252i32;
                } else if (__value__ == (2874938i32)) {
                    if (_tr_2874855 == (_sr_2874842)) {
                        _gotoNext = 2874950i32;
                    } else {
                        _gotoNext = 2875015i32;
                    };
                } else if (__value__ == (2874950i32)) {
                    _i_2874794++;
                    _gotoNext = 2874802i32;
                } else if (__value__ == (2875015i32)) {
                    if ((_tr_2874855 < _sr_2874842 : Bool)) {
                        _gotoNext = 2875026i32;
                    } else {
                        _gotoNext = 2875101i32;
                    };
                } else if (__value__ == (2875026i32)) {
                    {
                        final __tmp__0 = _sr_2874842;
                        final __tmp__1 = _tr_2874855;
                        _tr_2874855 = __tmp__0;
                        _sr_2874842 = __tmp__1;
                    };
                    _gotoNext = 2875101i32;
                } else if (__value__ == (2875101i32)) {
                    if (((((65 : stdgo.GoUInt8) <= _sr_2874842 : Bool) && (_sr_2874842 <= (90 : stdgo.GoUInt8) : Bool) : Bool) && (_tr_2874855 == ((_sr_2874842 + (97 : stdgo.GoUInt8) : stdgo.GoUInt8) - (65 : stdgo.GoUInt8) : stdgo.GoUInt8)) : Bool)) {
                        _gotoNext = 2875147i32;
                    } else {
                        _gotoNext = 2875167i32;
                    };
                } else if (__value__ == (2875147i32)) {
                    _i_2874794++;
                    _gotoNext = 2874802i32;
                } else if (__value__ == (2875167i32)) {
                    return false;
                    _i_2874794++;
                    _gotoNext = 2874802i32;
                } else if (__value__ == (2875227i32)) {
                    return (_s.length) == ((_t.length));
                    _gotoNext = 2875252i32;
                } else if (__value__ == (2875252i32)) {
                    _s = (_s.__slice__(_i_2874794) : stdgo.Slice<stdgo.GoUInt8>);
                    _t = (_t.__slice__(_i_2874794) : stdgo.Slice<stdgo.GoUInt8>);
                    var __blank__ = 0i32;
                    _gotoNext = 2875287i32;
                } else if (__value__ == (2875287i32)) {
                    if (((_s.length != (0 : stdgo.GoInt)) && (_t.length != (0 : stdgo.GoInt)) : Bool)) {
                        _gotoNext = 2875318i32;
                    } else {
                        _gotoNext = 2876293i32;
                    };
                } else if (__value__ == (2875318i32)) {
                    if ((_s[(0 : stdgo.GoInt)] < (128 : stdgo.GoUInt8) : Bool)) {
                        _gotoNext = 2875399i32;
                    } else {
                        _gotoNext = 2875439i32;
                    };
                } else if (__value__ == (2875399i32)) {
                    {
                        final __tmp__0 = (_s[(0 : stdgo.GoInt)] : stdgo.GoInt32);
                        final __tmp__1 = (_s.__slice__((1 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>);
                        _sr_2875361 = __tmp__0;
                        _s = __tmp__1;
                    };
                    _gotoNext = 2875503i32;
                } else if (__value__ == (2875439i32)) {
                    _gotoNext = 2875439i32;
                    {
                        var __tmp__ = stdgo._internal.unicode.utf8.Utf8_decodeRune.decodeRune(_s);
                        _r_2875444 = __tmp__._0;
                        _size_2875447 = __tmp__._1;
                    };
                    {
                        final __tmp__0 = _r_2875444;
                        final __tmp__1 = (_s.__slice__(_size_2875447) : stdgo.Slice<stdgo.GoUInt8>);
                        _sr_2875361 = __tmp__0;
                        _s = __tmp__1;
                    };
                    var __blank__ = 0i32;
                    _gotoNext = 2875503i32;
                } else if (__value__ == (2875503i32)) {
                    if ((_t[(0 : stdgo.GoInt)] < (128 : stdgo.GoUInt8) : Bool)) {
                        _gotoNext = 2875527i32;
                    } else {
                        _gotoNext = 2875567i32;
                    };
                } else if (__value__ == (2875527i32)) {
                    {
                        final __tmp__0 = (_t[(0 : stdgo.GoInt)] : stdgo.GoInt32);
                        final __tmp__1 = (_t.__slice__((1 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>);
                        _tr_2875365 = __tmp__0;
                        _t = __tmp__1;
                    };
                    _gotoNext = 2875703i32;
                } else if (__value__ == (2875567i32)) {
                    _gotoNext = 2875567i32;
                    {
                        var __tmp__ = stdgo._internal.unicode.utf8.Utf8_decodeRune.decodeRune(_t);
                        _r_2875572 = __tmp__._0;
                        _size_2875575 = __tmp__._1;
                    };
                    {
                        final __tmp__0 = _r_2875572;
                        final __tmp__1 = (_t.__slice__(_size_2875575) : stdgo.Slice<stdgo.GoUInt8>);
                        _tr_2875365 = __tmp__0;
                        _t = __tmp__1;
                    };
                    var __blank__ = 0i32;
                    _gotoNext = 2875703i32;
                } else if (__value__ == (2875703i32)) {
                    if (_tr_2875365 == (_sr_2875361)) {
                        _gotoNext = 2875715i32;
                    } else {
                        _gotoNext = 2875780i32;
                    };
                } else if (__value__ == (2875715i32)) {
                    var __blank__ = 0i32;
                    _gotoNext = 2875287i32;
                } else if (__value__ == (2875780i32)) {
                    if ((_tr_2875365 < _sr_2875361 : Bool)) {
                        _gotoNext = 2875791i32;
                    } else {
                        _gotoNext = 2875845i32;
                    };
                } else if (__value__ == (2875791i32)) {
                    {
                        final __tmp__0 = _sr_2875361;
                        final __tmp__1 = _tr_2875365;
                        _tr_2875365 = __tmp__0;
                        _sr_2875361 = __tmp__1;
                    };
                    _gotoNext = 2875845i32;
                } else if (__value__ == (2875845i32)) {
                    if ((_tr_2875365 < (128 : stdgo.GoInt32) : Bool)) {
                        _gotoNext = 2875867i32;
                    } else {
                        _gotoNext = 2876120i32;
                    };
                } else if (__value__ == (2875867i32)) {
                    if (((((65 : stdgo.GoInt32) <= _sr_2875361 : Bool) && (_sr_2875361 <= (90 : stdgo.GoInt32) : Bool) : Bool) && (_tr_2875365 == ((_sr_2875361 + (97 : stdgo.GoInt32) : stdgo.GoInt32) - (65 : stdgo.GoInt32) : stdgo.GoInt32)) : Bool)) {
                        _gotoNext = 2875967i32;
                    } else {
                        _gotoNext = 2875990i32;
                    };
                } else if (__value__ == (2875967i32)) {
                    var __blank__ = 0i32;
                    _gotoNext = 2875287i32;
                } else if (__value__ == (2875990i32)) {
                    return false;
                    _gotoNext = 2876120i32;
                } else if (__value__ == (2876120i32)) {
                    _r_2876120 = stdgo._internal.unicode.Unicode_simpleFold.simpleFold(_sr_2875361);
                    var __blank__ = 0i32;
                    _gotoNext = 2876150i32;
                } else if (__value__ == (2876150i32)) {
                    if (((_r_2876120 != _sr_2875361) && (_r_2876120 < _tr_2875365 : Bool) : Bool)) {
                        _gotoNext = 2876172i32;
                    } else {
                        _gotoNext = 2876209i32;
                    };
                } else if (__value__ == (2876172i32)) {
                    _r_2876120 = stdgo._internal.unicode.Unicode_simpleFold.simpleFold(_r_2876120);
                    _gotoNext = 2876150i32;
                } else if (__value__ == (2876209i32)) {
                    if (_r_2876120 == (_tr_2875365)) {
                        _gotoNext = 2876220i32;
                    } else {
                        _gotoNext = 2876240i32;
                    };
                } else if (__value__ == (2876220i32)) {
                    var __blank__ = 0i32;
                    _gotoNext = 2875287i32;
                } else if (__value__ == (2876240i32)) {
                    return false;
                    _gotoNext = 2875287i32;
                } else if (__value__ == (2876293i32)) {
                    return (_s.length) == ((_t.length));
                    _gotoNext = -1i32;
                };
            };
        };
        throw stdgo.Go.toInterface(("unreachable goto control flow" : stdgo.GoString));
    }
