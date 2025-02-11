package stdgo._internal.bytes;
function equalFold(_s:stdgo.Slice<stdgo.GoUInt8>, _t:stdgo.Slice<stdgo.GoUInt8>):Bool {
        var _r_2824255:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _size_2823710:stdgo.GoInt = (0 : stdgo.GoInt);
        var _r_2823707:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _sr_2823496:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _tr_2822990:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var _i_2822929:stdgo.GoInt = (0 : stdgo.GoInt);
        var _size_2823582:stdgo.GoInt = (0 : stdgo.GoInt);
        var _r_2823579:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _tr_2823500:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _sr_2822977:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    _i_2822929 = (0 : stdgo.GoInt);
                    var __blank__ = 0i32;
                    _gotoNext = 2822937i32;
                } else if (__value__ == (2822937i32)) {
                    if (((_i_2822929 < (_s.length) : Bool) && (_i_2822929 < (_t.length) : Bool) : Bool)) {
                        _gotoNext = 2822973i32;
                    } else {
                        _gotoNext = 2823362i32;
                    };
                } else if (__value__ == (2822973i32)) {
                    _sr_2822977 = _s[(_i_2822929 : stdgo.GoInt)];
                    _tr_2822990 = _t[(_i_2822929 : stdgo.GoInt)];
                    if (((_sr_2822977 | _tr_2822990 : stdgo.GoUInt8) >= (128 : stdgo.GoUInt8) : Bool)) {
                        _gotoNext = 2823029i32;
                    } else {
                        _gotoNext = 2823073i32;
                    };
                } else if (__value__ == (2823029i32)) {
                    _gotoNext = 2823387i32;
                } else if (__value__ == (2823073i32)) {
                    if (_tr_2822990 == (_sr_2822977)) {
                        _gotoNext = 2823085i32;
                    } else {
                        _gotoNext = 2823150i32;
                    };
                } else if (__value__ == (2823085i32)) {
                    _i_2822929++;
                    _gotoNext = 2822937i32;
                } else if (__value__ == (2823150i32)) {
                    if ((_tr_2822990 < _sr_2822977 : Bool)) {
                        _gotoNext = 2823161i32;
                    } else {
                        _gotoNext = 2823236i32;
                    };
                } else if (__value__ == (2823161i32)) {
                    {
                        final __tmp__0 = _sr_2822977;
                        final __tmp__1 = _tr_2822990;
                        _tr_2822990 = __tmp__0;
                        _sr_2822977 = __tmp__1;
                    };
                    _gotoNext = 2823236i32;
                } else if (__value__ == (2823236i32)) {
                    if (((((65 : stdgo.GoUInt8) <= _sr_2822977 : Bool) && (_sr_2822977 <= (90 : stdgo.GoUInt8) : Bool) : Bool) && (_tr_2822990 == ((_sr_2822977 + (97 : stdgo.GoUInt8) : stdgo.GoUInt8) - (65 : stdgo.GoUInt8) : stdgo.GoUInt8)) : Bool)) {
                        _gotoNext = 2823282i32;
                    } else {
                        _gotoNext = 2823302i32;
                    };
                } else if (__value__ == (2823282i32)) {
                    _i_2822929++;
                    _gotoNext = 2822937i32;
                } else if (__value__ == (2823302i32)) {
                    return false;
                    _i_2822929++;
                    _gotoNext = 2822937i32;
                } else if (__value__ == (2823362i32)) {
                    return (_s.length) == ((_t.length));
                    _gotoNext = 2823387i32;
                } else if (__value__ == (2823387i32)) {
                    _s = (_s.__slice__(_i_2822929) : stdgo.Slice<stdgo.GoUInt8>);
                    _t = (_t.__slice__(_i_2822929) : stdgo.Slice<stdgo.GoUInt8>);
                    var __blank__ = 0i32;
                    _gotoNext = 2823422i32;
                } else if (__value__ == (2823422i32)) {
                    if (((_s.length != (0 : stdgo.GoInt)) && (_t.length != (0 : stdgo.GoInt)) : Bool)) {
                        _gotoNext = 2823453i32;
                    } else {
                        _gotoNext = 2824428i32;
                    };
                } else if (__value__ == (2823453i32)) {
                    if ((_s[(0 : stdgo.GoInt)] < (128 : stdgo.GoUInt8) : Bool)) {
                        _gotoNext = 2823534i32;
                    } else {
                        _gotoNext = 2823574i32;
                    };
                } else if (__value__ == (2823534i32)) {
                    {
                        final __tmp__0 = (_s[(0 : stdgo.GoInt)] : stdgo.GoInt32);
                        final __tmp__1 = (_s.__slice__((1 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>);
                        _sr_2823496 = __tmp__0;
                        _s = __tmp__1;
                    };
                    _gotoNext = 2823638i32;
                } else if (__value__ == (2823574i32)) {
                    _gotoNext = 2823574i32;
                    {
                        var __tmp__ = stdgo._internal.unicode.utf8.Utf8_decoderune.decodeRune(_s);
                        _r_2823579 = @:tmpset0 __tmp__._0;
                        _size_2823582 = @:tmpset0 __tmp__._1;
                    };
                    {
                        final __tmp__0 = _r_2823579;
                        final __tmp__1 = (_s.__slice__(_size_2823582) : stdgo.Slice<stdgo.GoUInt8>);
                        _sr_2823496 = __tmp__0;
                        _s = __tmp__1;
                    };
                    var __blank__ = 0i32;
                    _gotoNext = 2823638i32;
                } else if (__value__ == (2823638i32)) {
                    if ((_t[(0 : stdgo.GoInt)] < (128 : stdgo.GoUInt8) : Bool)) {
                        _gotoNext = 2823662i32;
                    } else {
                        _gotoNext = 2823702i32;
                    };
                } else if (__value__ == (2823662i32)) {
                    {
                        final __tmp__0 = (_t[(0 : stdgo.GoInt)] : stdgo.GoInt32);
                        final __tmp__1 = (_t.__slice__((1 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>);
                        _tr_2823500 = __tmp__0;
                        _t = __tmp__1;
                    };
                    _gotoNext = 2823838i32;
                } else if (__value__ == (2823702i32)) {
                    _gotoNext = 2823702i32;
                    {
                        var __tmp__ = stdgo._internal.unicode.utf8.Utf8_decoderune.decodeRune(_t);
                        _r_2823707 = @:tmpset0 __tmp__._0;
                        _size_2823710 = @:tmpset0 __tmp__._1;
                    };
                    {
                        final __tmp__0 = _r_2823707;
                        final __tmp__1 = (_t.__slice__(_size_2823710) : stdgo.Slice<stdgo.GoUInt8>);
                        _tr_2823500 = __tmp__0;
                        _t = __tmp__1;
                    };
                    var __blank__ = 0i32;
                    _gotoNext = 2823838i32;
                } else if (__value__ == (2823838i32)) {
                    if (_tr_2823500 == (_sr_2823496)) {
                        _gotoNext = 2823850i32;
                    } else {
                        _gotoNext = 2823915i32;
                    };
                } else if (__value__ == (2823850i32)) {
                    var __blank__ = 0i32;
                    _gotoNext = 2823422i32;
                } else if (__value__ == (2823915i32)) {
                    if ((_tr_2823500 < _sr_2823496 : Bool)) {
                        _gotoNext = 2823926i32;
                    } else {
                        _gotoNext = 2823980i32;
                    };
                } else if (__value__ == (2823926i32)) {
                    {
                        final __tmp__0 = _sr_2823496;
                        final __tmp__1 = _tr_2823500;
                        _tr_2823500 = __tmp__0;
                        _sr_2823496 = __tmp__1;
                    };
                    _gotoNext = 2823980i32;
                } else if (__value__ == (2823980i32)) {
                    if ((_tr_2823500 < (128 : stdgo.GoInt32) : Bool)) {
                        _gotoNext = 2824002i32;
                    } else {
                        _gotoNext = 2824255i32;
                    };
                } else if (__value__ == (2824002i32)) {
                    if (((((65 : stdgo.GoInt32) <= _sr_2823496 : Bool) && (_sr_2823496 <= (90 : stdgo.GoInt32) : Bool) : Bool) && (_tr_2823500 == ((_sr_2823496 + (97 : stdgo.GoInt32) : stdgo.GoInt32) - (65 : stdgo.GoInt32) : stdgo.GoInt32)) : Bool)) {
                        _gotoNext = 2824102i32;
                    } else {
                        _gotoNext = 2824125i32;
                    };
                } else if (__value__ == (2824102i32)) {
                    var __blank__ = 0i32;
                    _gotoNext = 2823422i32;
                } else if (__value__ == (2824125i32)) {
                    return false;
                    _gotoNext = 2824255i32;
                } else if (__value__ == (2824255i32)) {
                    _r_2824255 = stdgo._internal.unicode.Unicode_simplefold.simpleFold(_sr_2823496);
                    var __blank__ = 0i32;
                    _gotoNext = 2824285i32;
                } else if (__value__ == (2824285i32)) {
                    if (((_r_2824255 != _sr_2823496) && (_r_2824255 < _tr_2823500 : Bool) : Bool)) {
                        _gotoNext = 2824307i32;
                    } else {
                        _gotoNext = 2824344i32;
                    };
                } else if (__value__ == (2824307i32)) {
                    _r_2824255 = stdgo._internal.unicode.Unicode_simplefold.simpleFold(_r_2824255);
                    _gotoNext = 2824285i32;
                } else if (__value__ == (2824344i32)) {
                    if (_r_2824255 == (_tr_2823500)) {
                        _gotoNext = 2824355i32;
                    } else {
                        _gotoNext = 2824375i32;
                    };
                } else if (__value__ == (2824355i32)) {
                    var __blank__ = 0i32;
                    _gotoNext = 2823422i32;
                } else if (__value__ == (2824375i32)) {
                    return false;
                    _gotoNext = 2823422i32;
                } else if (__value__ == (2824428i32)) {
                    return (_s.length) == ((_t.length));
                    _gotoNext = -1i32;
                };
            };
        };
        throw stdgo.Go.toInterface(("unreachable goto control flow" : stdgo.GoString));
    }
