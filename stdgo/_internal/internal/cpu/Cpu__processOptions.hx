package stdgo._internal.internal.cpu;
function _processOptions(_env:stdgo.GoString):Void {
        var _value_21096:stdgo.GoString = ("" : stdgo.GoString);
        var _key_21091:stdgo.GoString = ("" : stdgo.GoString);
        var _o_21727:stdgo._internal.internal.cpu.Cpu_T_option.T_option = ({} : stdgo._internal.internal.cpu.Cpu_T_option.T_option);
        var _i_21732_0:stdgo.GoInt = (0 : stdgo.GoInt);
        var _i_21515:stdgo.GoInt = (0 : stdgo.GoInt);
        var _i_21397:stdgo.GoInt = (0 : stdgo.GoInt);
        var _enable_21157:Bool = false;
        var _field_20783:stdgo.GoString = ("" : stdgo.GoString);
        var _fieldBreak = false;
        var _i_20797:stdgo.GoInt = (0 : stdgo.GoInt);
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    _gotoNext = 20757i32;
                } else if (__value__ == (20757i32)) {
                    var __blank__ = 0i32;
                    _fieldBreak = false;
                    _gotoNext = 20765i32;
                } else if (__value__ == (20765i32)) {
                    if (!_fieldBreak && (_env != stdgo.Go.str())) {
                        _gotoNext = 20779i32;
                    } else {
                        _gotoNext = 21720i32;
                    };
                } else if (__value__ == (20779i32)) {
                    _field_20783 = stdgo.Go.str()?.__copy__();
                    _i_20797 = stdgo._internal.internal.cpu.Cpu__indexByte._indexByte(_env?.__copy__(), (44 : stdgo.GoUInt8));
                    if ((_i_20797 < (0 : stdgo.GoInt) : Bool)) {
                        _gotoNext = 20833i32;
                    } else {
                        _gotoNext = 20868i32;
                    };
                } else if (__value__ == (20833i32)) {
                    {
                        final __tmp__0 = _env?.__copy__();
                        final __tmp__1 = stdgo.Go.str()?.__copy__();
                        _field_20783 = __tmp__0;
                        _env = __tmp__1;
                    };
                    _gotoNext = 20911i32;
                } else if (__value__ == (20868i32)) {
                    _gotoNext = 20868i32;
                    {
                        final __tmp__0 = (_env.__slice__(0, _i_20797) : stdgo.GoString)?.__copy__();
                        final __tmp__1 = (_env.__slice__((_i_20797 + (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        _field_20783 = __tmp__0;
                        _env = __tmp__1;
                    };
                    var __blank__ = 0i32;
                    _gotoNext = 20911i32;
                } else if (__value__ == (20911i32)) {
                    if ((((_field_20783.length) < (4 : stdgo.GoInt) : Bool) || ((_field_20783.__slice__(0, (4 : stdgo.GoInt)) : stdgo.GoString) != ("cpu." : stdgo.GoString)) : Bool)) {
                        _gotoNext = 20952i32;
                    } else {
                        _gotoNext = 20972i32;
                    };
                } else if (__value__ == (20952i32)) {
                    var __blank__ = 0i32;
                    _gotoNext = 20765i32;
                } else if (__value__ == (20972i32)) {
                    _i_20797 = stdgo._internal.internal.cpu.Cpu__indexByte._indexByte(_field_20783?.__copy__(), (61 : stdgo.GoUInt8));
                    if ((_i_20797 < (0 : stdgo.GoInt) : Bool)) {
                        _gotoNext = 21009i32;
                    } else {
                        _gotoNext = 21091i32;
                    };
                } else if (__value__ == (21009i32)) {
                    stdgo.Go.print(("GODEBUG: no value specified for \"" : stdgo.GoString), _field_20783, ("\"\n" : stdgo.GoString));
                    var __blank__ = 0i32;
                    _gotoNext = 20765i32;
                } else if (__value__ == (21091i32)) {
                    {
                        final __tmp__0 = (_field_20783.__slice__((4 : stdgo.GoInt), _i_20797) : stdgo.GoString)?.__copy__();
                        final __tmp__1 = (_field_20783.__slice__((_i_20797 + (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        _key_21091 = __tmp__0;
                        _value_21096 = __tmp__1;
                    };
                    _gotoNext = 21171i32;
                } else if (__value__ == (21171i32)) {
                    {
                        final __value__ = _value_21096;
                        if (__value__ == (("on" : stdgo.GoString))) {
                            _gotoNext = 21188i32;
                        } else if (__value__ == (("off" : stdgo.GoString))) {
                            _gotoNext = 21218i32;
                        } else {
                            _gotoNext = 21250i32;
                        };
                    };
                } else if (__value__ == (21188i32)) {
                    _enable_21157 = true;
                    _gotoNext = 21372i32;
                } else if (__value__ == (21218i32)) {
                    _enable_21157 = false;
                    _gotoNext = 21372i32;
                } else if (__value__ == (21250i32)) {
                    stdgo.Go.print(("GODEBUG: value \"" : stdgo.GoString), _value_21096, ("\" not supported for cpu option \"" : stdgo.GoString), _key_21091, ("\"\n" : stdgo.GoString));
                    _gotoNext = 20765i32;
                } else if (__value__ == (21372i32)) {
                    if (_key_21091 == (("all" : stdgo.GoString))) {
                        _gotoNext = 21388i32;
                    } else {
                        _gotoNext = 21511i32;
                    };
                } else if (__value__ == (21388i32)) {
                    if ((0i32 : stdgo.GoInt) < (stdgo._internal.internal.cpu.Cpu__options._options.length)) {
                        _gotoNext = 21483i32;
                    } else {
                        _gotoNext = 21489i32;
                    };
                } else if (__value__ == (21416i32)) {
                    stdgo._internal.internal.cpu.Cpu__options._options[(_i_21397 : stdgo.GoInt)].specified = true;
                    stdgo._internal.internal.cpu.Cpu__options._options[(_i_21397 : stdgo.GoInt)].enable = _enable_21157;
                    _i_21397++;
                    _gotoNext = 21484i32;
                } else if (__value__ == (21483i32)) {
                    _i_21397 = 0i32;
                    _gotoNext = 21484i32;
                } else if (__value__ == (21484i32)) {
                    if (_i_21397 < (stdgo._internal.internal.cpu.Cpu__options._options.length)) {
                        _gotoNext = 21416i32;
                    } else {
                        _gotoNext = 21489i32;
                    };
                } else if (__value__ == (21489i32)) {
                    _gotoNext = 20765i32;
                } else if (__value__ == (21511i32)) {
                    if ((0i32 : stdgo.GoInt) < (stdgo._internal.internal.cpu.Cpu__options._options.length)) {
                        _gotoNext = 21655i32;
                    } else {
                        _gotoNext = 21661i32;
                    };
                } else if (__value__ == (21515i32)) {
                    _i_21515++;
                    _gotoNext = 21656i32;
                } else if (__value__ == (21534i32)) {
                    if (stdgo._internal.internal.cpu.Cpu__options._options[(_i_21515 : stdgo.GoInt)].name == (_key_21091)) {
                        _gotoNext = 21565i32;
                    } else {
                        _gotoNext = 21515i32;
                    };
                } else if (__value__ == (21565i32)) {
                    stdgo._internal.internal.cpu.Cpu__options._options[(_i_21515 : stdgo.GoInt)].specified = true;
                    stdgo._internal.internal.cpu.Cpu__options._options[(_i_21515 : stdgo.GoInt)].enable = _enable_21157;
                    _gotoNext = 20765i32;
                } else if (__value__ == (21655i32)) {
                    _i_21515 = 0i32;
                    _gotoNext = 21656i32;
                } else if (__value__ == (21656i32)) {
                    if (_i_21515 < (stdgo._internal.internal.cpu.Cpu__options._options.length)) {
                        _gotoNext = 21534i32;
                    } else {
                        _gotoNext = 21661i32;
                    };
                } else if (__value__ == (21661i32)) {
                    stdgo.Go.print(("GODEBUG: unknown cpu feature \"" : stdgo.GoString), _key_21091, ("\"\n" : stdgo.GoString));
                    _gotoNext = 20765i32;
                } else if (__value__ == (21720i32)) {
                    if ((0i32 : stdgo.GoInt) < (stdgo._internal.internal.cpu.Cpu__options._options.length)) {
                        _gotoNext = 21933i32;
                    } else {
                        _gotoNext = 21936i32;
                    };
                } else if (__value__ == (21746i32)) {
                    _o_21727 = stdgo._internal.internal.cpu.Cpu__options._options[(_i_21732_0 : stdgo.GoInt)];
                    if (!_o_21727.specified) {
                        _gotoNext = 21766i32;
                    } else {
                        _gotoNext = 21787i32;
                    };
                } else if (__value__ == (21766i32)) {
                    _i_21732_0++;
                    _gotoNext = 21934i32;
                } else if (__value__ == (21787i32)) {
                    if ((_o_21727.enable && !_o_21727.feature.value : Bool)) {
                        _gotoNext = 21814i32;
                    } else {
                        _gotoNext = 21911i32;
                    };
                } else if (__value__ == (21814i32)) {
                    stdgo.Go.print(("GODEBUG: can not enable \"" : stdgo.GoString), _o_21727.name, ("\", missing CPU support\n" : stdgo.GoString));
                    _i_21732_0++;
                    _gotoNext = 21934i32;
                } else if (__value__ == (21911i32)) {
                    _o_21727.feature.value = _o_21727.enable;
                    _i_21732_0++;
                    _gotoNext = 21934i32;
                } else if (__value__ == (21933i32)) {
                    {
                        final __tmp__0 = 0i32;
                        final __tmp__1 = stdgo._internal.internal.cpu.Cpu__options._options[(0i32 : stdgo.GoInt)];
                        _i_21732_0 = __tmp__0;
                        _o_21727 = __tmp__1;
                    };
                    _gotoNext = 21934i32;
                } else if (__value__ == (21934i32)) {
                    if (_i_21732_0 < (stdgo._internal.internal.cpu.Cpu__options._options.length)) {
                        _gotoNext = 21746i32;
                    } else {
                        _gotoNext = 21936i32;
                    };
                } else if (__value__ == (21936i32)) {
                    _gotoNext = -1i32;
                };
            };
        };
    }
