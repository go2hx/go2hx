package stdgo._internal.internal.cpu;
function _processOptions(_env:stdgo.GoString):Void {
        var _i_255619_7:stdgo.GoInt = (0 : stdgo.GoInt);
        var _i_5:stdgo.GoInt = (0 : stdgo.GoInt);
        var _key_2:stdgo.GoString = ("" : stdgo.GoString);
        var _i_1:stdgo.GoInt = (0 : stdgo.GoInt);
        var _o_8:stdgo._internal.internal.cpu.Cpu_t_option.T_option = ({} : stdgo._internal.internal.cpu.Cpu_t_option.T_option);
        var _i_6:stdgo.GoInt = (0 : stdgo.GoInt);
        var _enable_4:Bool = false;
        var _value_3:stdgo.GoString = ("" : stdgo.GoString);
        var _field_0:stdgo.GoString = ("" : stdgo.GoString);
        var _fieldBreak = false;
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    _gotoNext = 254644i32;
                } else if (__value__ == (254644i32)) {
                    var __blank__ = 0i32;
                    _fieldBreak = false;
                    _gotoNext = 254652i32;
                } else if (__value__ == (254652i32)) {
                    if (!_fieldBreak && (_env != (stdgo.Go.str() : stdgo.GoString))) {
                        _gotoNext = 254666i32;
                    } else {
                        _gotoNext = 255607i32;
                    };
                } else if (__value__ == (254666i32)) {
                    _field_0 = (stdgo.Go.str() : stdgo.GoString)?.__copy__();
                    _i_1 = stdgo._internal.internal.cpu.Cpu__indexbyte._indexByte(_env?.__copy__(), (44 : stdgo.GoUInt8));
                    if ((_i_1 < (0 : stdgo.GoInt) : Bool)) {
                        _gotoNext = 254720i32;
                    } else {
                        _gotoNext = 254755i32;
                    };
                } else if (__value__ == (254720i32)) {
                    {
                        final __tmp__0 = _env?.__copy__();
                        final __tmp__1 = (stdgo.Go.str() : stdgo.GoString)?.__copy__();
                        _field_0 = __tmp__0;
                        _env = __tmp__1;
                    };
                    _gotoNext = 254798i32;
                } else if (__value__ == (254755i32)) {
                    _gotoNext = 254755i32;
                    {
                        final __tmp__0 = (_env.__slice__(0, _i_1) : stdgo.GoString)?.__copy__();
                        final __tmp__1 = (_env.__slice__((_i_1 + (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        _field_0 = __tmp__0;
                        _env = __tmp__1;
                    };
                    var __blank__ = 0i32;
                    _gotoNext = 254798i32;
                } else if (__value__ == (254798i32)) {
                    if ((((_field_0.length) < (4 : stdgo.GoInt) : Bool) || ((_field_0.__slice__(0, (4 : stdgo.GoInt)) : stdgo.GoString) != ("cpu." : stdgo.GoString)) : Bool)) {
                        _gotoNext = 254839i32;
                    } else {
                        _gotoNext = 254859i32;
                    };
                } else if (__value__ == (254839i32)) {
                    var __blank__ = 0i32;
                    _gotoNext = 254652i32;
                } else if (__value__ == (254859i32)) {
                    _i_1 = stdgo._internal.internal.cpu.Cpu__indexbyte._indexByte(_field_0?.__copy__(), (61 : stdgo.GoUInt8));
                    if ((_i_1 < (0 : stdgo.GoInt) : Bool)) {
                        _gotoNext = 254896i32;
                    } else {
                        _gotoNext = 254978i32;
                    };
                } else if (__value__ == (254896i32)) {
                    stdgo.Go.print(("GODEBUG: no value specified for \"" : stdgo.GoString), _field_0, ("\"\n" : stdgo.GoString));
                    var __blank__ = 0i32;
                    _gotoNext = 254652i32;
                } else if (__value__ == (254978i32)) {
                    {
                        final __tmp__0 = (_field_0.__slice__((4 : stdgo.GoInt), _i_1) : stdgo.GoString)?.__copy__();
                        final __tmp__1 = (_field_0.__slice__((_i_1 + (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        _key_2 = __tmp__0;
                        _value_3 = __tmp__1;
                    };
                    _gotoNext = 255058i32;
                } else if (__value__ == (255058i32)) {
                    {
                        final __value__ = _value_3;
                        if (__value__ == (("on" : stdgo.GoString))) {
                            _gotoNext = 255075i32;
                        } else if (__value__ == (("off" : stdgo.GoString))) {
                            _gotoNext = 255105i32;
                        } else {
                            _gotoNext = 255137i32;
                        };
                    };
                } else if (__value__ == (255075i32)) {
                    _enable_4 = true;
                    _gotoNext = 255259i32;
                } else if (__value__ == (255105i32)) {
                    _enable_4 = false;
                    _gotoNext = 255259i32;
                } else if (__value__ == (255137i32)) {
                    stdgo.Go.print(("GODEBUG: value \"" : stdgo.GoString), _value_3, ("\" not supported for cpu option \"" : stdgo.GoString), _key_2, ("\"\n" : stdgo.GoString));
                    _gotoNext = 254652i32;
                } else if (__value__ == (255259i32)) {
                    if (_key_2 == (("all" : stdgo.GoString))) {
                        _gotoNext = 255275i32;
                    } else {
                        _gotoNext = 255398i32;
                    };
                } else if (__value__ == (255275i32)) {
                    if ((0i32 : stdgo.GoInt) < (stdgo._internal.internal.cpu.Cpu__options._options.length)) {
                        _gotoNext = 255370i32;
                    } else {
                        _gotoNext = 255376i32;
                    };
                } else if (__value__ == (255303i32)) {
                    stdgo._internal.internal.cpu.Cpu__options._options[(_i_5 : stdgo.GoInt)].specified = true;
                    stdgo._internal.internal.cpu.Cpu__options._options[(_i_5 : stdgo.GoInt)].enable = _enable_4;
                    _i_5++;
                    _gotoNext = 255371i32;
                } else if (__value__ == (255370i32)) {
                    _i_5 = 0i32;
                    _gotoNext = 255371i32;
                } else if (__value__ == (255371i32)) {
                    if (_i_5 < (stdgo._internal.internal.cpu.Cpu__options._options.length)) {
                        _gotoNext = 255303i32;
                    } else {
                        _gotoNext = 255376i32;
                    };
                } else if (__value__ == (255376i32)) {
                    _gotoNext = 254652i32;
                } else if (__value__ == (255398i32)) {
                    if ((0i32 : stdgo.GoInt) < (stdgo._internal.internal.cpu.Cpu__options._options.length)) {
                        _gotoNext = 255542i32;
                    } else {
                        _gotoNext = 255548i32;
                    };
                } else if (__value__ == (255402i32)) {
                    _i_6++;
                    _gotoNext = 255543i32;
                } else if (__value__ == (255421i32)) {
                    if (stdgo._internal.internal.cpu.Cpu__options._options[(_i_6 : stdgo.GoInt)].name == (_key_2)) {
                        _gotoNext = 255452i32;
                    } else {
                        _gotoNext = 255402i32;
                    };
                } else if (__value__ == (255452i32)) {
                    stdgo._internal.internal.cpu.Cpu__options._options[(_i_6 : stdgo.GoInt)].specified = true;
                    stdgo._internal.internal.cpu.Cpu__options._options[(_i_6 : stdgo.GoInt)].enable = _enable_4;
                    _gotoNext = 254652i32;
                } else if (__value__ == (255542i32)) {
                    _i_6 = 0i32;
                    _gotoNext = 255543i32;
                } else if (__value__ == (255543i32)) {
                    if (_i_6 < (stdgo._internal.internal.cpu.Cpu__options._options.length)) {
                        _gotoNext = 255421i32;
                    } else {
                        _gotoNext = 255548i32;
                    };
                } else if (__value__ == (255548i32)) {
                    stdgo.Go.print(("GODEBUG: unknown cpu feature \"" : stdgo.GoString), _key_2, ("\"\n" : stdgo.GoString));
                    _gotoNext = 254652i32;
                } else if (__value__ == (255607i32)) {
                    if ((0i32 : stdgo.GoInt) < (stdgo._internal.internal.cpu.Cpu__options._options.length)) {
                        _gotoNext = 255820i32;
                    } else {
                        _gotoNext = 255823i32;
                    };
                } else if (__value__ == (255633i32)) {
                    _o_8 = stdgo._internal.internal.cpu.Cpu__options._options[(_i_255619_7 : stdgo.GoInt)];
                    if (!_o_8.specified) {
                        _gotoNext = 255653i32;
                    } else {
                        _gotoNext = 255674i32;
                    };
                } else if (__value__ == (255653i32)) {
                    _i_255619_7++;
                    _gotoNext = 255821i32;
                } else if (__value__ == (255674i32)) {
                    if ((_o_8.enable && !_o_8.feature.value : Bool)) {
                        _gotoNext = 255701i32;
                    } else {
                        _gotoNext = 255798i32;
                    };
                } else if (__value__ == (255701i32)) {
                    stdgo.Go.print(("GODEBUG: can not enable \"" : stdgo.GoString), _o_8.name, ("\", missing CPU support\n" : stdgo.GoString));
                    _i_255619_7++;
                    _gotoNext = 255821i32;
                } else if (__value__ == (255798i32)) {
                    _o_8.feature.value = _o_8.enable;
                    _i_255619_7++;
                    _gotoNext = 255821i32;
                } else if (__value__ == (255820i32)) {
                    {
                        final __tmp__0 = 0i32;
                        final __tmp__1 = stdgo._internal.internal.cpu.Cpu__options._options[(0i32 : stdgo.GoInt)];
                        _i_255619_7 = __tmp__0;
                        _o_8 = __tmp__1;
                    };
                    _gotoNext = 255821i32;
                } else if (__value__ == (255821i32)) {
                    if (_i_255619_7 < (stdgo._internal.internal.cpu.Cpu__options._options.length)) {
                        _gotoNext = 255633i32;
                    } else {
                        _gotoNext = 255823i32;
                    };
                } else if (__value__ == (255823i32)) {
                    _gotoNext = -1i32;
                };
            };
        };
    }
