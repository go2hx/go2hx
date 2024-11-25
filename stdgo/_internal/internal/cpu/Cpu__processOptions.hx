package stdgo._internal.internal.cpu;
function _processOptions(_env:stdgo.GoString):Void {
        var _value_53723:stdgo.GoString = ("" : stdgo.GoString);
        var _key_53718:stdgo.GoString = ("" : stdgo.GoString);
        var _field_53410:stdgo.GoString = ("" : stdgo.GoString);
        var _o_54354:stdgo._internal.internal.cpu.Cpu_T_option.T_option = ({} : stdgo._internal.internal.cpu.Cpu_T_option.T_option);
        var _i_54359_0:stdgo.GoInt = (0 : stdgo.GoInt);
        var _i_54142:stdgo.GoInt = (0 : stdgo.GoInt);
        var _enable_53784:Bool = false;
        var _i_54024:stdgo.GoInt = (0 : stdgo.GoInt);
        var _i_53424:stdgo.GoInt = (0 : stdgo.GoInt);
        var _fieldBreak = false;
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    _gotoNext = 53384i32;
                } else if (__value__ == (53384i32)) {
                    var __blank__ = 0i32;
                    _fieldBreak = false;
                    _gotoNext = 53392i32;
                } else if (__value__ == (53392i32)) {
                    if (!_fieldBreak && (_env != stdgo.Go.str())) {
                        _gotoNext = 53406i32;
                    } else {
                        _gotoNext = 54347i32;
                    };
                } else if (__value__ == (53406i32)) {
                    _field_53410 = stdgo.Go.str()?.__copy__();
                    _i_53424 = stdgo._internal.internal.cpu.Cpu__indexByte._indexByte(_env?.__copy__(), (44 : stdgo.GoUInt8));
                    if ((_i_53424 < (0 : stdgo.GoInt) : Bool)) {
                        _gotoNext = 53460i32;
                    } else {
                        _gotoNext = 53495i32;
                    };
                } else if (__value__ == (53460i32)) {
                    {
                        final __tmp__0 = _env?.__copy__();
                        final __tmp__1 = stdgo.Go.str()?.__copy__();
                        _field_53410 = __tmp__0;
                        _env = __tmp__1;
                    };
                    _gotoNext = 53538i32;
                } else if (__value__ == (53495i32)) {
                    _gotoNext = 53495i32;
                    {
                        final __tmp__0 = (_env.__slice__(0, _i_53424) : stdgo.GoString)?.__copy__();
                        final __tmp__1 = (_env.__slice__((_i_53424 + (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        _field_53410 = __tmp__0;
                        _env = __tmp__1;
                    };
                    var __blank__ = 0i32;
                    _gotoNext = 53538i32;
                } else if (__value__ == (53538i32)) {
                    if ((((_field_53410.length) < (4 : stdgo.GoInt) : Bool) || ((_field_53410.__slice__(0, (4 : stdgo.GoInt)) : stdgo.GoString) != ("cpu." : stdgo.GoString)) : Bool)) {
                        _gotoNext = 53579i32;
                    } else {
                        _gotoNext = 53599i32;
                    };
                } else if (__value__ == (53579i32)) {
                    var __blank__ = 0i32;
                    _gotoNext = 53392i32;
                } else if (__value__ == (53599i32)) {
                    _i_53424 = stdgo._internal.internal.cpu.Cpu__indexByte._indexByte(_field_53410?.__copy__(), (61 : stdgo.GoUInt8));
                    if ((_i_53424 < (0 : stdgo.GoInt) : Bool)) {
                        _gotoNext = 53636i32;
                    } else {
                        _gotoNext = 53718i32;
                    };
                } else if (__value__ == (53636i32)) {
                    stdgo.Go.print(("GODEBUG: no value specified for \"" : stdgo.GoString), _field_53410, ("\"\n" : stdgo.GoString));
                    var __blank__ = 0i32;
                    _gotoNext = 53392i32;
                } else if (__value__ == (53718i32)) {
                    {
                        final __tmp__0 = (_field_53410.__slice__((4 : stdgo.GoInt), _i_53424) : stdgo.GoString)?.__copy__();
                        final __tmp__1 = (_field_53410.__slice__((_i_53424 + (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        _key_53718 = __tmp__0;
                        _value_53723 = __tmp__1;
                    };
                    _gotoNext = 53798i32;
                } else if (__value__ == (53798i32)) {
                    {
                        final __value__ = _value_53723;
                        if (__value__ == (("on" : stdgo.GoString))) {
                            _gotoNext = 53815i32;
                        } else if (__value__ == (("off" : stdgo.GoString))) {
                            _gotoNext = 53845i32;
                        } else {
                            _gotoNext = 53877i32;
                        };
                    };
                } else if (__value__ == (53815i32)) {
                    _enable_53784 = true;
                    _gotoNext = 53999i32;
                } else if (__value__ == (53845i32)) {
                    _enable_53784 = false;
                    _gotoNext = 53999i32;
                } else if (__value__ == (53877i32)) {
                    stdgo.Go.print(("GODEBUG: value \"" : stdgo.GoString), _value_53723, ("\" not supported for cpu option \"" : stdgo.GoString), _key_53718, ("\"\n" : stdgo.GoString));
                    _gotoNext = 53392i32;
                } else if (__value__ == (53999i32)) {
                    if (_key_53718 == (("all" : stdgo.GoString))) {
                        _gotoNext = 54015i32;
                    } else {
                        _gotoNext = 54138i32;
                    };
                } else if (__value__ == (54015i32)) {
                    if ((0i32 : stdgo.GoInt) < (stdgo._internal.internal.cpu.Cpu__options._options.length)) {
                        _gotoNext = 54110i32;
                    } else {
                        _gotoNext = 54116i32;
                    };
                } else if (__value__ == (54043i32)) {
                    stdgo._internal.internal.cpu.Cpu__options._options[(_i_54024 : stdgo.GoInt)].specified = true;
                    stdgo._internal.internal.cpu.Cpu__options._options[(_i_54024 : stdgo.GoInt)].enable = _enable_53784;
                    _i_54024++;
                    _gotoNext = 54111i32;
                } else if (__value__ == (54110i32)) {
                    _i_54024 = 0i32;
                    _gotoNext = 54111i32;
                } else if (__value__ == (54111i32)) {
                    if (_i_54024 < (stdgo._internal.internal.cpu.Cpu__options._options.length)) {
                        _gotoNext = 54043i32;
                    } else {
                        _gotoNext = 54116i32;
                    };
                } else if (__value__ == (54116i32)) {
                    _gotoNext = 53392i32;
                } else if (__value__ == (54138i32)) {
                    if ((0i32 : stdgo.GoInt) < (stdgo._internal.internal.cpu.Cpu__options._options.length)) {
                        _gotoNext = 54282i32;
                    } else {
                        _gotoNext = 54288i32;
                    };
                } else if (__value__ == (54142i32)) {
                    _i_54142++;
                    _gotoNext = 54283i32;
                } else if (__value__ == (54161i32)) {
                    if (stdgo._internal.internal.cpu.Cpu__options._options[(_i_54142 : stdgo.GoInt)].name == (_key_53718)) {
                        _gotoNext = 54192i32;
                    } else {
                        _gotoNext = 54142i32;
                    };
                } else if (__value__ == (54192i32)) {
                    stdgo._internal.internal.cpu.Cpu__options._options[(_i_54142 : stdgo.GoInt)].specified = true;
                    stdgo._internal.internal.cpu.Cpu__options._options[(_i_54142 : stdgo.GoInt)].enable = _enable_53784;
                    _gotoNext = 53392i32;
                } else if (__value__ == (54282i32)) {
                    _i_54142 = 0i32;
                    _gotoNext = 54283i32;
                } else if (__value__ == (54283i32)) {
                    if (_i_54142 < (stdgo._internal.internal.cpu.Cpu__options._options.length)) {
                        _gotoNext = 54161i32;
                    } else {
                        _gotoNext = 54288i32;
                    };
                } else if (__value__ == (54288i32)) {
                    stdgo.Go.print(("GODEBUG: unknown cpu feature \"" : stdgo.GoString), _key_53718, ("\"\n" : stdgo.GoString));
                    _gotoNext = 53392i32;
                } else if (__value__ == (54347i32)) {
                    if ((0i32 : stdgo.GoInt) < (stdgo._internal.internal.cpu.Cpu__options._options.length)) {
                        _gotoNext = 54560i32;
                    } else {
                        _gotoNext = 54563i32;
                    };
                } else if (__value__ == (54373i32)) {
                    _o_54354 = stdgo._internal.internal.cpu.Cpu__options._options[(_i_54359_0 : stdgo.GoInt)];
                    if (!_o_54354.specified) {
                        _gotoNext = 54393i32;
                    } else {
                        _gotoNext = 54414i32;
                    };
                } else if (__value__ == (54393i32)) {
                    _i_54359_0++;
                    _gotoNext = 54561i32;
                } else if (__value__ == (54414i32)) {
                    if ((_o_54354.enable && !_o_54354.feature.value : Bool)) {
                        _gotoNext = 54441i32;
                    } else {
                        _gotoNext = 54538i32;
                    };
                } else if (__value__ == (54441i32)) {
                    stdgo.Go.print(("GODEBUG: can not enable \"" : stdgo.GoString), _o_54354.name, ("\", missing CPU support\n" : stdgo.GoString));
                    _i_54359_0++;
                    _gotoNext = 54561i32;
                } else if (__value__ == (54538i32)) {
                    _o_54354.feature.value = _o_54354.enable;
                    _i_54359_0++;
                    _gotoNext = 54561i32;
                } else if (__value__ == (54560i32)) {
                    {
                        final __tmp__0 = 0i32;
                        final __tmp__1 = stdgo._internal.internal.cpu.Cpu__options._options[(0i32 : stdgo.GoInt)];
                        _i_54359_0 = __tmp__0;
                        _o_54354 = __tmp__1;
                    };
                    _gotoNext = 54561i32;
                } else if (__value__ == (54561i32)) {
                    if (_i_54359_0 < (stdgo._internal.internal.cpu.Cpu__options._options.length)) {
                        _gotoNext = 54373i32;
                    } else {
                        _gotoNext = 54563i32;
                    };
                } else if (__value__ == (54563i32)) {
                    _gotoNext = -1i32;
                };
            };
        };
    }
