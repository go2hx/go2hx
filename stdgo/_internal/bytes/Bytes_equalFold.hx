package stdgo._internal.bytes;
function equalFold(_s:stdgo.Slice<stdgo.GoUInt8>, _t:stdgo.Slice<stdgo.GoUInt8>):Bool {
        var _r_3032853:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _r_3032305:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _size_3032180:stdgo.GoInt = (0 : stdgo.GoInt);
        var _r_3032177:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _sr_3032094:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _size_3032308:stdgo.GoInt = (0 : stdgo.GoInt);
        var _tr_3032098:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _tr_3031588:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var _sr_3031575:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var _i_3031527:stdgo.GoInt = (0 : stdgo.GoInt);
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    _i_3031527 = (0 : stdgo.GoInt);
                    var __blank__ = 0i32;
                    _gotoNext = 3031535i32;
                } else if (__value__ == (3031535i32)) {
                    if (((_i_3031527 < (_s.length) : Bool) && (_i_3031527 < (_t.length) : Bool) : Bool)) {
                        _gotoNext = 3031571i32;
                    } else {
                        _gotoNext = 3031960i32;
                    };
                } else if (__value__ == (3031571i32)) {
                    _sr_3031575 = _s[(_i_3031527 : stdgo.GoInt)];
                    _tr_3031588 = _t[(_i_3031527 : stdgo.GoInt)];
                    if (((_sr_3031575 | _tr_3031588 : stdgo.GoUInt8) >= (128 : stdgo.GoUInt8) : Bool)) {
                        _gotoNext = 3031627i32;
                    } else {
                        _gotoNext = 3031671i32;
                    };
                } else if (__value__ == (3031627i32)) {
                    _gotoNext = 3031985i32;
                } else if (__value__ == (3031671i32)) {
                    if (_tr_3031588 == (_sr_3031575)) {
                        _gotoNext = 3031683i32;
                    } else {
                        _gotoNext = 3031748i32;
                    };
                } else if (__value__ == (3031683i32)) {
                    _i_3031527++;
                    _gotoNext = 3031535i32;
                } else if (__value__ == (3031748i32)) {
                    if ((_tr_3031588 < _sr_3031575 : Bool)) {
                        _gotoNext = 3031759i32;
                    } else {
                        _gotoNext = 3031834i32;
                    };
                } else if (__value__ == (3031759i32)) {
                    {
                        final __tmp__0 = _sr_3031575;
                        final __tmp__1 = _tr_3031588;
                        _tr_3031588 = __tmp__0;
                        _sr_3031575 = __tmp__1;
                    };
                    _gotoNext = 3031834i32;
                } else if (__value__ == (3031834i32)) {
                    if (((((65 : stdgo.GoUInt8) <= _sr_3031575 : Bool) && (_sr_3031575 <= (90 : stdgo.GoUInt8) : Bool) : Bool) && (_tr_3031588 == ((_sr_3031575 + (97 : stdgo.GoUInt8) : stdgo.GoUInt8) - (65 : stdgo.GoUInt8) : stdgo.GoUInt8)) : Bool)) {
                        _gotoNext = 3031880i32;
                    } else {
                        _gotoNext = 3031900i32;
                    };
                } else if (__value__ == (3031880i32)) {
                    _i_3031527++;
                    _gotoNext = 3031535i32;
                } else if (__value__ == (3031900i32)) {
                    return false;
                    _i_3031527++;
                    _gotoNext = 3031535i32;
                } else if (__value__ == (3031960i32)) {
                    return (_s.length) == ((_t.length));
                    _gotoNext = 3031985i32;
                } else if (__value__ == (3031985i32)) {
                    _s = (_s.__slice__(_i_3031527) : stdgo.Slice<stdgo.GoUInt8>);
                    _t = (_t.__slice__(_i_3031527) : stdgo.Slice<stdgo.GoUInt8>);
                    var __blank__ = 0i32;
                    _gotoNext = 3032020i32;
                } else if (__value__ == (3032020i32)) {
                    if (((_s.length != (0 : stdgo.GoInt)) && (_t.length != (0 : stdgo.GoInt)) : Bool)) {
                        _gotoNext = 3032051i32;
                    } else {
                        _gotoNext = 3033026i32;
                    };
                } else if (__value__ == (3032051i32)) {
                    if ((_s[(0 : stdgo.GoInt)] < (128 : stdgo.GoUInt8) : Bool)) {
                        _gotoNext = 3032132i32;
                    } else {
                        _gotoNext = 3032172i32;
                    };
                } else if (__value__ == (3032132i32)) {
                    {
                        final __tmp__0 = (_s[(0 : stdgo.GoInt)] : stdgo.GoInt32);
                        final __tmp__1 = (_s.__slice__((1 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>);
                        _sr_3032094 = __tmp__0;
                        _s = __tmp__1;
                    };
                    _gotoNext = 3032236i32;
                } else if (__value__ == (3032172i32)) {
                    _gotoNext = 3032172i32;
                    {
                        var __tmp__ = stdgo._internal.unicode.utf8.Utf8_decodeRune.decodeRune(_s);
                        _r_3032177 = __tmp__._0;
                        _size_3032180 = __tmp__._1;
                    };
                    {
                        final __tmp__0 = _r_3032177;
                        final __tmp__1 = (_s.__slice__(_size_3032180) : stdgo.Slice<stdgo.GoUInt8>);
                        _sr_3032094 = __tmp__0;
                        _s = __tmp__1;
                    };
                    var __blank__ = 0i32;
                    _gotoNext = 3032236i32;
                } else if (__value__ == (3032236i32)) {
                    if ((_t[(0 : stdgo.GoInt)] < (128 : stdgo.GoUInt8) : Bool)) {
                        _gotoNext = 3032260i32;
                    } else {
                        _gotoNext = 3032300i32;
                    };
                } else if (__value__ == (3032260i32)) {
                    {
                        final __tmp__0 = (_t[(0 : stdgo.GoInt)] : stdgo.GoInt32);
                        final __tmp__1 = (_t.__slice__((1 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>);
                        _tr_3032098 = __tmp__0;
                        _t = __tmp__1;
                    };
                    _gotoNext = 3032436i32;
                } else if (__value__ == (3032300i32)) {
                    _gotoNext = 3032300i32;
                    {
                        var __tmp__ = stdgo._internal.unicode.utf8.Utf8_decodeRune.decodeRune(_t);
                        _r_3032305 = __tmp__._0;
                        _size_3032308 = __tmp__._1;
                    };
                    {
                        final __tmp__0 = _r_3032305;
                        final __tmp__1 = (_t.__slice__(_size_3032308) : stdgo.Slice<stdgo.GoUInt8>);
                        _tr_3032098 = __tmp__0;
                        _t = __tmp__1;
                    };
                    var __blank__ = 0i32;
                    _gotoNext = 3032436i32;
                } else if (__value__ == (3032436i32)) {
                    if (_tr_3032098 == (_sr_3032094)) {
                        _gotoNext = 3032448i32;
                    } else {
                        _gotoNext = 3032513i32;
                    };
                } else if (__value__ == (3032448i32)) {
                    var __blank__ = 0i32;
                    _gotoNext = 3032020i32;
                } else if (__value__ == (3032513i32)) {
                    if ((_tr_3032098 < _sr_3032094 : Bool)) {
                        _gotoNext = 3032524i32;
                    } else {
                        _gotoNext = 3032578i32;
                    };
                } else if (__value__ == (3032524i32)) {
                    {
                        final __tmp__0 = _sr_3032094;
                        final __tmp__1 = _tr_3032098;
                        _tr_3032098 = __tmp__0;
                        _sr_3032094 = __tmp__1;
                    };
                    _gotoNext = 3032578i32;
                } else if (__value__ == (3032578i32)) {
                    if ((_tr_3032098 < (128 : stdgo.GoInt32) : Bool)) {
                        _gotoNext = 3032600i32;
                    } else {
                        _gotoNext = 3032853i32;
                    };
                } else if (__value__ == (3032600i32)) {
                    if (((((65 : stdgo.GoInt32) <= _sr_3032094 : Bool) && (_sr_3032094 <= (90 : stdgo.GoInt32) : Bool) : Bool) && (_tr_3032098 == ((_sr_3032094 + (97 : stdgo.GoInt32) : stdgo.GoInt32) - (65 : stdgo.GoInt32) : stdgo.GoInt32)) : Bool)) {
                        _gotoNext = 3032700i32;
                    } else {
                        _gotoNext = 3032723i32;
                    };
                } else if (__value__ == (3032700i32)) {
                    var __blank__ = 0i32;
                    _gotoNext = 3032020i32;
                } else if (__value__ == (3032723i32)) {
                    return false;
                    _gotoNext = 3032853i32;
                } else if (__value__ == (3032853i32)) {
                    _r_3032853 = stdgo._internal.unicode.Unicode_simpleFold.simpleFold(_sr_3032094);
                    var __blank__ = 0i32;
                    _gotoNext = 3032883i32;
                } else if (__value__ == (3032883i32)) {
                    if (((_r_3032853 != _sr_3032094) && (_r_3032853 < _tr_3032098 : Bool) : Bool)) {
                        _gotoNext = 3032905i32;
                    } else {
                        _gotoNext = 3032942i32;
                    };
                } else if (__value__ == (3032905i32)) {
                    _r_3032853 = stdgo._internal.unicode.Unicode_simpleFold.simpleFold(_r_3032853);
                    _gotoNext = 3032883i32;
                } else if (__value__ == (3032942i32)) {
                    if (_r_3032853 == (_tr_3032098)) {
                        _gotoNext = 3032953i32;
                    } else {
                        _gotoNext = 3032973i32;
                    };
                } else if (__value__ == (3032953i32)) {
                    var __blank__ = 0i32;
                    _gotoNext = 3032020i32;
                } else if (__value__ == (3032973i32)) {
                    return false;
                    _gotoNext = 3032020i32;
                } else if (__value__ == (3033026i32)) {
                    return (_s.length) == ((_t.length));
                    _gotoNext = -1i32;
                };
            };
        };
        throw stdgo.Go.toInterface(("unreachable goto control flow" : stdgo.GoString));
    }
