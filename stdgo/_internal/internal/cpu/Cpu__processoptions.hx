package stdgo._internal.internal.cpu;
function _processOptions(_env:stdgo.GoString):Void {
        var _i_6767_7:stdgo.GoInt = (0 : stdgo.GoInt);
        var _enable_4:Bool = false;
        var _value_3:stdgo.GoString = ("" : stdgo.GoString);
        var _key_2:stdgo.GoString = ("" : stdgo.GoString);
        var _i_1:stdgo.GoInt = (0 : stdgo.GoInt);
        var _field_0:stdgo.GoString = ("" : stdgo.GoString);
        var _o_8:stdgo._internal.internal.cpu.Cpu_t_option.T_option = ({} : stdgo._internal.internal.cpu.Cpu_t_option.T_option);
        var _i_6:stdgo.GoInt = (0 : stdgo.GoInt);
        var _i_5:stdgo.GoInt = (0 : stdgo.GoInt);
        var _fieldBreak = false;
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    _gotoNext = 5792i32;
                } else if (__value__ == (5792i32)) {
                    var __blank__ = 0i32;
                    _fieldBreak = false;
                    _gotoNext = 5800i32;
                } else if (__value__ == (5800i32)) {
                    if (!_fieldBreak && (_env != (stdgo.Go.str() : stdgo.GoString))) {
                        _gotoNext = 5814i32;
                    } else {
                        _gotoNext = 6755i32;
                    };
                } else if (__value__ == (5814i32)) {
                    _field_0 = (stdgo.Go.str() : stdgo.GoString)?.__copy__();
                    _i_1 = stdgo._internal.internal.cpu.Cpu__indexbyte._indexByte(_env?.__copy__(), (44 : stdgo.GoUInt8));
                    if ((_i_1 < (0 : stdgo.GoInt) : Bool)) {
                        _gotoNext = 5868i32;
                    } else {
                        _gotoNext = 5903i32;
                    };
                } else if (__value__ == (5868i32)) {
                    {
                        final __tmp__0 = _env?.__copy__();
                        final __tmp__1 = (stdgo.Go.str() : stdgo.GoString)?.__copy__();
                        _field_0 = __tmp__0;
                        _env = __tmp__1;
                    };
                    _gotoNext = 5946i32;
                } else if (__value__ == (5903i32)) {
                    _gotoNext = 5903i32;
                    {
                        final __tmp__0 = (_env.__slice__(0, _i_1) : stdgo.GoString)?.__copy__();
                        final __tmp__1 = (_env.__slice__((_i_1 + (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        _field_0 = __tmp__0;
                        _env = __tmp__1;
                    };
                    var __blank__ = 0i32;
                    _gotoNext = 5946i32;
                } else if (__value__ == (5946i32)) {
                    if ((((_field_0.length) < (4 : stdgo.GoInt) : Bool) || ((_field_0.__slice__(0, (4 : stdgo.GoInt)) : stdgo.GoString) != ("cpu." : stdgo.GoString)) : Bool)) {
                        _gotoNext = 5987i32;
                    } else {
                        _gotoNext = 6007i32;
                    };
                } else if (__value__ == (5987i32)) {
                    var __blank__ = 0i32;
                    _gotoNext = 5800i32;
                } else if (__value__ == (6007i32)) {
                    _i_1 = stdgo._internal.internal.cpu.Cpu__indexbyte._indexByte(_field_0?.__copy__(), (61 : stdgo.GoUInt8));
                    if ((_i_1 < (0 : stdgo.GoInt) : Bool)) {
                        _gotoNext = 6044i32;
                    } else {
                        _gotoNext = 6126i32;
                    };
                } else if (__value__ == (6044i32)) {
                    stdgo.Go.print(("GODEBUG: no value specified for \"" : stdgo.GoString), _field_0, ("\"\n" : stdgo.GoString));
                    var __blank__ = 0i32;
                    _gotoNext = 5800i32;
                } else if (__value__ == (6126i32)) {
                    {
                        final __tmp__0 = (_field_0.__slice__((4 : stdgo.GoInt), _i_1) : stdgo.GoString)?.__copy__();
                        final __tmp__1 = (_field_0.__slice__((_i_1 + (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        _key_2 = __tmp__0;
                        _value_3 = __tmp__1;
                    };
                    _gotoNext = 6206i32;
                } else if (__value__ == (6206i32)) {
                    {
                        final __value__ = _value_3;
                        if (__value__ == (("on" : stdgo.GoString))) {
                            _gotoNext = 6223i32;
                        } else if (__value__ == (("off" : stdgo.GoString))) {
                            _gotoNext = 6253i32;
                        } else {
                            _gotoNext = 6285i32;
                        };
                    };
                } else if (__value__ == (6223i32)) {
                    _enable_4 = true;
                    _gotoNext = 6407i32;
                } else if (__value__ == (6253i32)) {
                    _enable_4 = false;
                    _gotoNext = 6407i32;
                } else if (__value__ == (6285i32)) {
                    stdgo.Go.print(("GODEBUG: value \"" : stdgo.GoString), _value_3, ("\" not supported for cpu option \"" : stdgo.GoString), _key_2, ("\"\n" : stdgo.GoString));
                    _gotoNext = 5800i32;
                } else if (__value__ == (6407i32)) {
                    if (_key_2 == (("all" : stdgo.GoString))) {
                        _gotoNext = 6423i32;
                    } else {
                        _gotoNext = 6546i32;
                    };
                } else if (__value__ == (6423i32)) {
                    if ((0i32 : stdgo.GoInt) < (stdgo._internal.internal.cpu.Cpu__options._options.length)) {
                        _gotoNext = 6518i32;
                    } else {
                        _gotoNext = 6524i32;
                    };
                } else if (__value__ == (6451i32)) {
                    stdgo._internal.internal.cpu.Cpu__options._options[(_i_5 : stdgo.GoInt)].specified = true;
                    stdgo._internal.internal.cpu.Cpu__options._options[(_i_5 : stdgo.GoInt)].enable = _enable_4;
                    _i_5++;
                    _gotoNext = 6519i32;
                } else if (__value__ == (6518i32)) {
                    _i_5 = 0i32;
                    _gotoNext = 6519i32;
                } else if (__value__ == (6519i32)) {
                    if (_i_5 < (stdgo._internal.internal.cpu.Cpu__options._options.length)) {
                        _gotoNext = 6451i32;
                    } else {
                        _gotoNext = 6524i32;
                    };
                } else if (__value__ == (6524i32)) {
                    _gotoNext = 5800i32;
                } else if (__value__ == (6546i32)) {
                    if ((0i32 : stdgo.GoInt) < (stdgo._internal.internal.cpu.Cpu__options._options.length)) {
                        _gotoNext = 6690i32;
                    } else {
                        _gotoNext = 6696i32;
                    };
                } else if (__value__ == (6550i32)) {
                    _i_6++;
                    _gotoNext = 6691i32;
                } else if (__value__ == (6569i32)) {
                    if (stdgo._internal.internal.cpu.Cpu__options._options[(_i_6 : stdgo.GoInt)].name == (_key_2)) {
                        _gotoNext = 6600i32;
                    } else {
                        _gotoNext = 6550i32;
                    };
                } else if (__value__ == (6600i32)) {
                    stdgo._internal.internal.cpu.Cpu__options._options[(_i_6 : stdgo.GoInt)].specified = true;
                    stdgo._internal.internal.cpu.Cpu__options._options[(_i_6 : stdgo.GoInt)].enable = _enable_4;
                    _gotoNext = 5800i32;
                } else if (__value__ == (6690i32)) {
                    _i_6 = 0i32;
                    _gotoNext = 6691i32;
                } else if (__value__ == (6691i32)) {
                    if (_i_6 < (stdgo._internal.internal.cpu.Cpu__options._options.length)) {
                        _gotoNext = 6569i32;
                    } else {
                        _gotoNext = 6696i32;
                    };
                } else if (__value__ == (6696i32)) {
                    stdgo.Go.print(("GODEBUG: unknown cpu feature \"" : stdgo.GoString), _key_2, ("\"\n" : stdgo.GoString));
                    _gotoNext = 5800i32;
                } else if (__value__ == (6755i32)) {
                    if ((0i32 : stdgo.GoInt) < (stdgo._internal.internal.cpu.Cpu__options._options.length)) {
                        _gotoNext = 6968i32;
                    } else {
                        _gotoNext = 6971i32;
                    };
                } else if (__value__ == (6781i32)) {
                    _o_8 = stdgo._internal.internal.cpu.Cpu__options._options[(_i_6767_7 : stdgo.GoInt)];
                    if (!_o_8.specified) {
                        _gotoNext = 6801i32;
                    } else {
                        _gotoNext = 6822i32;
                    };
                } else if (__value__ == (6801i32)) {
                    _i_6767_7++;
                    _gotoNext = 6969i32;
                } else if (__value__ == (6822i32)) {
                    if ((_o_8.enable && !_o_8.feature.value : Bool)) {
                        _gotoNext = 6849i32;
                    } else {
                        _gotoNext = 6946i32;
                    };
                } else if (__value__ == (6849i32)) {
                    stdgo.Go.print(("GODEBUG: can not enable \"" : stdgo.GoString), _o_8.name, ("\", missing CPU support\n" : stdgo.GoString));
                    _i_6767_7++;
                    _gotoNext = 6969i32;
                } else if (__value__ == (6946i32)) {
                    _o_8.feature.value = _o_8.enable;
                    _i_6767_7++;
                    _gotoNext = 6969i32;
                } else if (__value__ == (6968i32)) {
                    {
                        final __tmp__0 = 0i32;
                        final __tmp__1 = stdgo._internal.internal.cpu.Cpu__options._options[(0i32 : stdgo.GoInt)];
                        _i_6767_7 = __tmp__0;
                        _o_8 = __tmp__1;
                    };
                    _gotoNext = 6969i32;
                } else if (__value__ == (6969i32)) {
                    if (_i_6767_7 < (stdgo._internal.internal.cpu.Cpu__options._options.length)) {
                        _gotoNext = 6781i32;
                    } else {
                        _gotoNext = 6971i32;
                    };
                } else if (__value__ == (6971i32)) {
                    _gotoNext = -1i32;
                };
            };
        };
    }
