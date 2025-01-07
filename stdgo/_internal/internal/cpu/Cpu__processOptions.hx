package stdgo._internal.internal.cpu;
function _processOptions(_env:stdgo.GoString):Void {
        var _fieldBreak = false;
        var _i_7127:stdgo.GoInt = (0 : stdgo.GoInt);
        var _enable_6769:Bool = false;
        var _key_6703:stdgo.GoString = ("" : stdgo.GoString);
        var _field_6395:stdgo.GoString = ("" : stdgo.GoString);
        var _i_6409:stdgo.GoInt = (0 : stdgo.GoInt);
        var _o_7339:stdgo._internal.internal.cpu.Cpu_T_option.T_option = ({} : stdgo._internal.internal.cpu.Cpu_T_option.T_option);
        var _i_7344_0:stdgo.GoInt = (0 : stdgo.GoInt);
        var _i_7009:stdgo.GoInt = (0 : stdgo.GoInt);
        var _value_6708:stdgo.GoString = ("" : stdgo.GoString);
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    _gotoNext = 6369i32;
                } else if (__value__ == (6369i32)) {
                    var __blank__ = 0i32;
                    _fieldBreak = false;
                    _gotoNext = 6377i32;
                } else if (__value__ == (6377i32)) {
                    if (!_fieldBreak && (_env != stdgo.Go.str())) {
                        _gotoNext = 6391i32;
                    } else {
                        _gotoNext = 7332i32;
                    };
                } else if (__value__ == (6391i32)) {
                    _field_6395 = stdgo.Go.str()?.__copy__();
                    _i_6409 = stdgo._internal.internal.cpu.Cpu__indexByte._indexByte(_env?.__copy__(), (44 : stdgo.GoUInt8));
                    if ((_i_6409 < (0 : stdgo.GoInt) : Bool)) {
                        _gotoNext = 6445i32;
                    } else {
                        _gotoNext = 6480i32;
                    };
                } else if (__value__ == (6445i32)) {
                    {
                        final __tmp__0 = _env?.__copy__();
                        final __tmp__1 = stdgo.Go.str()?.__copy__();
                        _field_6395 = __tmp__0;
                        _env = __tmp__1;
                    };
                    _gotoNext = 6523i32;
                } else if (__value__ == (6480i32)) {
                    _gotoNext = 6480i32;
                    {
                        final __tmp__0 = (_env.__slice__(0, _i_6409) : stdgo.GoString)?.__copy__();
                        final __tmp__1 = (_env.__slice__((_i_6409 + (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        _field_6395 = __tmp__0;
                        _env = __tmp__1;
                    };
                    var __blank__ = 0i32;
                    _gotoNext = 6523i32;
                } else if (__value__ == (6523i32)) {
                    if ((((_field_6395.length) < (4 : stdgo.GoInt) : Bool) || ((_field_6395.__slice__(0, (4 : stdgo.GoInt)) : stdgo.GoString) != ("cpu." : stdgo.GoString)) : Bool)) {
                        _gotoNext = 6564i32;
                    } else {
                        _gotoNext = 6584i32;
                    };
                } else if (__value__ == (6564i32)) {
                    var __blank__ = 0i32;
                    _gotoNext = 6377i32;
                } else if (__value__ == (6584i32)) {
                    _i_6409 = stdgo._internal.internal.cpu.Cpu__indexByte._indexByte(_field_6395?.__copy__(), (61 : stdgo.GoUInt8));
                    if ((_i_6409 < (0 : stdgo.GoInt) : Bool)) {
                        _gotoNext = 6621i32;
                    } else {
                        _gotoNext = 6703i32;
                    };
                } else if (__value__ == (6621i32)) {
                    stdgo.Go.print(("GODEBUG: no value specified for \"" : stdgo.GoString), _field_6395, ("\"\n" : stdgo.GoString));
                    var __blank__ = 0i32;
                    _gotoNext = 6377i32;
                } else if (__value__ == (6703i32)) {
                    {
                        final __tmp__0 = (_field_6395.__slice__((4 : stdgo.GoInt), _i_6409) : stdgo.GoString)?.__copy__();
                        final __tmp__1 = (_field_6395.__slice__((_i_6409 + (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        _key_6703 = __tmp__0;
                        _value_6708 = __tmp__1;
                    };
                    _gotoNext = 6783i32;
                } else if (__value__ == (6783i32)) {
                    {
                        final __value__ = _value_6708;
                        if (__value__ == (("on" : stdgo.GoString))) {
                            _gotoNext = 6800i32;
                        } else if (__value__ == (("off" : stdgo.GoString))) {
                            _gotoNext = 6830i32;
                        } else {
                            _gotoNext = 6862i32;
                        };
                    };
                } else if (__value__ == (6800i32)) {
                    _enable_6769 = true;
                    _gotoNext = 6984i32;
                } else if (__value__ == (6830i32)) {
                    _enable_6769 = false;
                    _gotoNext = 6984i32;
                } else if (__value__ == (6862i32)) {
                    stdgo.Go.print(("GODEBUG: value \"" : stdgo.GoString), _value_6708, ("\" not supported for cpu option \"" : stdgo.GoString), _key_6703, ("\"\n" : stdgo.GoString));
                    _gotoNext = 6377i32;
                } else if (__value__ == (6984i32)) {
                    if (_key_6703 == (("all" : stdgo.GoString))) {
                        _gotoNext = 7000i32;
                    } else {
                        _gotoNext = 7123i32;
                    };
                } else if (__value__ == (7000i32)) {
                    if ((0i32 : stdgo.GoInt) < (stdgo._internal.internal.cpu.Cpu__options._options.length)) {
                        _gotoNext = 7095i32;
                    } else {
                        _gotoNext = 7101i32;
                    };
                } else if (__value__ == (7028i32)) {
                    stdgo._internal.internal.cpu.Cpu__options._options[(_i_7009 : stdgo.GoInt)].specified = true;
                    stdgo._internal.internal.cpu.Cpu__options._options[(_i_7009 : stdgo.GoInt)].enable = _enable_6769;
                    _i_7009++;
                    _gotoNext = 7096i32;
                } else if (__value__ == (7095i32)) {
                    _i_7009 = 0i32;
                    _gotoNext = 7096i32;
                } else if (__value__ == (7096i32)) {
                    if (_i_7009 < (stdgo._internal.internal.cpu.Cpu__options._options.length)) {
                        _gotoNext = 7028i32;
                    } else {
                        _gotoNext = 7101i32;
                    };
                } else if (__value__ == (7101i32)) {
                    _gotoNext = 6377i32;
                } else if (__value__ == (7123i32)) {
                    if ((0i32 : stdgo.GoInt) < (stdgo._internal.internal.cpu.Cpu__options._options.length)) {
                        _gotoNext = 7267i32;
                    } else {
                        _gotoNext = 7273i32;
                    };
                } else if (__value__ == (7127i32)) {
                    _i_7127++;
                    _gotoNext = 7268i32;
                } else if (__value__ == (7146i32)) {
                    if (stdgo._internal.internal.cpu.Cpu__options._options[(_i_7127 : stdgo.GoInt)].name == (_key_6703)) {
                        _gotoNext = 7177i32;
                    } else {
                        _gotoNext = 7127i32;
                    };
                } else if (__value__ == (7177i32)) {
                    stdgo._internal.internal.cpu.Cpu__options._options[(_i_7127 : stdgo.GoInt)].specified = true;
                    stdgo._internal.internal.cpu.Cpu__options._options[(_i_7127 : stdgo.GoInt)].enable = _enable_6769;
                    _gotoNext = 6377i32;
                } else if (__value__ == (7267i32)) {
                    _i_7127 = 0i32;
                    _gotoNext = 7268i32;
                } else if (__value__ == (7268i32)) {
                    if (_i_7127 < (stdgo._internal.internal.cpu.Cpu__options._options.length)) {
                        _gotoNext = 7146i32;
                    } else {
                        _gotoNext = 7273i32;
                    };
                } else if (__value__ == (7273i32)) {
                    stdgo.Go.print(("GODEBUG: unknown cpu feature \"" : stdgo.GoString), _key_6703, ("\"\n" : stdgo.GoString));
                    _gotoNext = 6377i32;
                } else if (__value__ == (7332i32)) {
                    if ((0i32 : stdgo.GoInt) < (stdgo._internal.internal.cpu.Cpu__options._options.length)) {
                        _gotoNext = 7545i32;
                    } else {
                        _gotoNext = 7548i32;
                    };
                } else if (__value__ == (7358i32)) {
                    _o_7339 = stdgo._internal.internal.cpu.Cpu__options._options[(_i_7344_0 : stdgo.GoInt)];
                    if (!_o_7339.specified) {
                        _gotoNext = 7378i32;
                    } else {
                        _gotoNext = 7399i32;
                    };
                } else if (__value__ == (7378i32)) {
                    _i_7344_0++;
                    _gotoNext = 7546i32;
                } else if (__value__ == (7399i32)) {
                    if ((_o_7339.enable && !_o_7339.feature.value : Bool)) {
                        _gotoNext = 7426i32;
                    } else {
                        _gotoNext = 7523i32;
                    };
                } else if (__value__ == (7426i32)) {
                    stdgo.Go.print(("GODEBUG: can not enable \"" : stdgo.GoString), _o_7339.name, ("\", missing CPU support\n" : stdgo.GoString));
                    _i_7344_0++;
                    _gotoNext = 7546i32;
                } else if (__value__ == (7523i32)) {
                    _o_7339.feature.value = _o_7339.enable;
                    _i_7344_0++;
                    _gotoNext = 7546i32;
                } else if (__value__ == (7545i32)) {
                    {
                        final __tmp__0 = 0i32;
                        final __tmp__1 = stdgo._internal.internal.cpu.Cpu__options._options[(0i32 : stdgo.GoInt)];
                        _i_7344_0 = __tmp__0;
                        _o_7339 = __tmp__1;
                    };
                    _gotoNext = 7546i32;
                } else if (__value__ == (7546i32)) {
                    if (_i_7344_0 < (stdgo._internal.internal.cpu.Cpu__options._options.length)) {
                        _gotoNext = 7358i32;
                    } else {
                        _gotoNext = 7548i32;
                    };
                } else if (__value__ == (7548i32)) {
                    _gotoNext = -1i32;
                };
            };
        };
    }
