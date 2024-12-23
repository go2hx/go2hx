package stdgo._internal.strings;
function equalFold(_s:stdgo.GoString, _t:stdgo.GoString):Bool {
        var _keys_2957863 = (new stdgo.Slice<stdgo.GoInt>(0, 0, ...[]).__setNumber32__() : stdgo.Slice<stdgo.GoInt>);
        var _i_2957876 = @:invalid_type null;
        var _tr_2957431:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var _sr_2957418:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var _size_2958108:stdgo.GoInt = (0 : stdgo.GoInt);
        var _tr_2958026:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _sr_2957870:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _values_2957863 = (new stdgo.Slice<stdgo.GoInt32>(0, 0, ...[]).__setNumber32__() : stdgo.Slice<stdgo.GoInt32>);
        var _i_2957370:stdgo.GoInt = (0 : stdgo.GoInt);
        var _r_2958661:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _r_2958105:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    _i_2957370 = (0 : stdgo.GoInt);
                    var __blank__ = 0i32;
                    _gotoNext = 2957378i32;
                } else if (__value__ == (2957378i32)) {
                    if (((_i_2957370 < (_s.length) : Bool) && (_i_2957370 < (_t.length) : Bool) : Bool)) {
                        _gotoNext = 2957414i32;
                    } else {
                        _gotoNext = 2957803i32;
                    };
                } else if (__value__ == (2957414i32)) {
                    _sr_2957418 = _s[(_i_2957370 : stdgo.GoInt)];
                    _tr_2957431 = _t[(_i_2957370 : stdgo.GoInt)];
                    if (((_sr_2957418 | _tr_2957431 : stdgo.GoUInt8) >= (128 : stdgo.GoUInt8) : Bool)) {
                        _gotoNext = 2957470i32;
                    } else {
                        _gotoNext = 2957514i32;
                    };
                } else if (__value__ == (2957470i32)) {
                    _gotoNext = 2957828i32;
                } else if (__value__ == (2957514i32)) {
                    if (_tr_2957431 == (_sr_2957418)) {
                        _gotoNext = 2957526i32;
                    } else {
                        _gotoNext = 2957591i32;
                    };
                } else if (__value__ == (2957526i32)) {
                    _i_2957370++;
                    _gotoNext = 2957378i32;
                } else if (__value__ == (2957591i32)) {
                    if ((_tr_2957431 < _sr_2957418 : Bool)) {
                        _gotoNext = 2957602i32;
                    } else {
                        _gotoNext = 2957677i32;
                    };
                } else if (__value__ == (2957602i32)) {
                    {
                        final __tmp__0 = _sr_2957418;
                        final __tmp__1 = _tr_2957431;
                        _tr_2957431 = __tmp__0;
                        _sr_2957418 = __tmp__1;
                    };
                    _gotoNext = 2957677i32;
                } else if (__value__ == (2957677i32)) {
                    if (((((65 : stdgo.GoUInt8) <= _sr_2957418 : Bool) && (_sr_2957418 <= (90 : stdgo.GoUInt8) : Bool) : Bool) && (_tr_2957431 == ((_sr_2957418 + (97 : stdgo.GoUInt8) : stdgo.GoUInt8) - (65 : stdgo.GoUInt8) : stdgo.GoUInt8)) : Bool)) {
                        _gotoNext = 2957723i32;
                    } else {
                        _gotoNext = 2957743i32;
                    };
                } else if (__value__ == (2957723i32)) {
                    _i_2957370++;
                    _gotoNext = 2957378i32;
                } else if (__value__ == (2957743i32)) {
                    return false;
                    _i_2957370++;
                    _gotoNext = 2957378i32;
                } else if (__value__ == (2957803i32)) {
                    return (_s.length) == ((_t.length));
                    _gotoNext = 2957828i32;
                } else if (__value__ == (2957828i32)) {
                    _s = (_s.__slice__(_i_2957370) : stdgo.GoString)?.__copy__();
                    _t = (_t.__slice__(_i_2957370) : stdgo.GoString)?.__copy__();
                    _keys_2957863 = (new stdgo.Slice<stdgo.GoInt>(0, 0, ...[]).__setNumber32__() : stdgo.Slice<stdgo.GoInt>);
                    _values_2957863 = (new stdgo.Slice<stdgo.GoInt32>(0, 0, ...[]).__setNumber32__() : stdgo.Slice<stdgo.GoInt32>);
                    for (_key => _value in _s) {
                        _keys_2957863 = (_keys_2957863.__append__(_key));
                        _values_2957863 = (_values_2957863.__append__(_value));
                    };
                    if ((0i32 : stdgo.GoInt) < (_keys_2957863.length)) {
                        _gotoNext = 2958794i32;
                    } else {
                        _gotoNext = 2958868i32;
                    };
                } else if (__value__ == (2957884i32)) {
                    _sr_2957870 = _values_2957863[@:invalid_index_invalid_type _i_2957876];
                    var __blank__ = _keys_2957863[@:invalid_index_invalid_type _i_2957876];
                    if ((_t.length) == ((0 : stdgo.GoInt))) {
                        _gotoNext = 2957953i32;
                    } else {
                        _gotoNext = 2958022i32;
                    };
                } else if (__value__ == (2957953i32)) {
                    return false;
                    _gotoNext = 2958022i32;
                } else if (__value__ == (2958022i32)) {
                    if ((_t[(0 : stdgo.GoInt)] < (128 : stdgo.GoUInt8) : Bool)) {
                        _gotoNext = 2958060i32;
                    } else {
                        _gotoNext = 2958100i32;
                    };
                } else if (__value__ == (2958060i32)) {
                    {
                        final __tmp__0 = (_t[(0 : stdgo.GoInt)] : stdgo.GoInt32);
                        final __tmp__1 = (_t.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        _tr_2958026 = __tmp__0;
                        _t = __tmp__1;
                    };
                    _gotoNext = 2958244i32;
                } else if (__value__ == (2958100i32)) {
                    _gotoNext = 2958100i32;
                    {
                        var __tmp__ = stdgo._internal.unicode.utf8.Utf8_decodeRuneInString.decodeRuneInString(_t?.__copy__());
                        _r_2958105 = __tmp__._0;
                        _size_2958108 = __tmp__._1;
                    };
                    {
                        final __tmp__0 = _r_2958105;
                        final __tmp__1 = (_t.__slice__(_size_2958108) : stdgo.GoString)?.__copy__();
                        _tr_2958026 = __tmp__0;
                        _t = __tmp__1;
                    };
                    var __blank__ = 0i32;
                    _gotoNext = 2958244i32;
                } else if (__value__ == (2958244i32)) {
                    if (_tr_2958026 == (_sr_2957870)) {
                        _gotoNext = 2958256i32;
                    } else {
                        _gotoNext = 2958321i32;
                    };
                } else if (__value__ == (2958256i32)) {
                    _i_2957876++;
                    _gotoNext = 2958795i32;
                } else if (__value__ == (2958321i32)) {
                    if ((_tr_2958026 < _sr_2957870 : Bool)) {
                        _gotoNext = 2958332i32;
                    } else {
                        _gotoNext = 2958386i32;
                    };
                } else if (__value__ == (2958332i32)) {
                    {
                        final __tmp__0 = _sr_2957870;
                        final __tmp__1 = _tr_2958026;
                        _tr_2958026 = __tmp__0;
                        _sr_2957870 = __tmp__1;
                    };
                    _gotoNext = 2958386i32;
                } else if (__value__ == (2958386i32)) {
                    if ((_tr_2958026 < (128 : stdgo.GoInt32) : Bool)) {
                        _gotoNext = 2958408i32;
                    } else {
                        _gotoNext = 2958661i32;
                    };
                } else if (__value__ == (2958408i32)) {
                    if (((((65 : stdgo.GoInt32) <= _sr_2957870 : Bool) && (_sr_2957870 <= (90 : stdgo.GoInt32) : Bool) : Bool) && (_tr_2958026 == ((_sr_2957870 + (97 : stdgo.GoInt32) : stdgo.GoInt32) - (65 : stdgo.GoInt32) : stdgo.GoInt32)) : Bool)) {
                        _gotoNext = 2958508i32;
                    } else {
                        _gotoNext = 2958531i32;
                    };
                } else if (__value__ == (2958508i32)) {
                    _i_2957876++;
                    _gotoNext = 2958795i32;
                } else if (__value__ == (2958531i32)) {
                    return false;
                    _gotoNext = 2958661i32;
                } else if (__value__ == (2958661i32)) {
                    _r_2958661 = stdgo._internal.unicode.Unicode_simpleFold.simpleFold(_sr_2957870);
                    var __blank__ = 0i32;
                    _gotoNext = 2958691i32;
                } else if (__value__ == (2958691i32)) {
                    if (((_r_2958661 != _sr_2957870) && (_r_2958661 < _tr_2958026 : Bool) : Bool)) {
                        _gotoNext = 2958713i32;
                    } else {
                        _gotoNext = 2958750i32;
                    };
                } else if (__value__ == (2958713i32)) {
                    _r_2958661 = stdgo._internal.unicode.Unicode_simpleFold.simpleFold(_r_2958661);
                    _gotoNext = 2958691i32;
                } else if (__value__ == (2958750i32)) {
                    if (_r_2958661 == (_tr_2958026)) {
                        _gotoNext = 2958761i32;
                    } else {
                        _gotoNext = 2958781i32;
                    };
                } else if (__value__ == (2958761i32)) {
                    _i_2957876++;
                    _gotoNext = 2958795i32;
                } else if (__value__ == (2958781i32)) {
                    return false;
                    _i_2957876++;
                    _gotoNext = 2958795i32;
                } else if (__value__ == (2958794i32)) {
                    _i_2957876 = 0i32;
                    _gotoNext = 2958795i32;
                } else if (__value__ == (2958795i32)) {
                    if (_i_2957876 < (_keys_2957863.length)) {
                        _gotoNext = 2957884i32;
                    } else {
                        _gotoNext = 2958868i32;
                    };
                } else if (__value__ == (2958868i32)) {
                    return (_t.length) == ((0 : stdgo.GoInt));
                    _gotoNext = -1i32;
                };
            };
        };
        throw stdgo.Go.toInterface(("unreachable goto control flow" : stdgo.GoString));
    }
