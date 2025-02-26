package stdgo._internal.internal.cpu;
function _processOptions(_env:stdgo.GoString):Void {
        var _i_6:stdgo.GoInt = (0 : stdgo.GoInt);
        var _enable_4:Bool = false;
        var _value_3:stdgo.GoString = ("" : stdgo.GoString);
        var _o_8:stdgo._internal.internal.cpu.Cpu_t_option.T_option = ({} : stdgo._internal.internal.cpu.Cpu_t_option.T_option);
        var _i_246941_7:stdgo.GoInt = (0 : stdgo.GoInt);
        var _i_5:stdgo.GoInt = (0 : stdgo.GoInt);
        var _key_2:stdgo.GoString = ("" : stdgo.GoString);
        var _i_1:stdgo.GoInt = (0 : stdgo.GoInt);
        var _field_0:stdgo.GoString = ("" : stdgo.GoString);
        var _fieldBreak = false;
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    _gotoNext = 245966i32;
                } else if (__value__ == (245966i32)) {
                    var __blank__ = 0i32;
                    _fieldBreak = false;
                    _gotoNext = 245974i32;
                } else if (__value__ == (245974i32)) {
                    if (!_fieldBreak && (_env != (stdgo.Go.str() : stdgo.GoString))) {
                        _gotoNext = 245988i32;
                    } else {
                        _gotoNext = 246929i32;
                    };
                } else if (__value__ == (245988i32)) {
                    _field_0 = (stdgo.Go.str() : stdgo.GoString)?.__copy__();
                    _i_1 = stdgo._internal.internal.cpu.Cpu__indexbyte._indexByte(_env?.__copy__(), (44 : stdgo.GoUInt8));
                    if ((_i_1 < (0 : stdgo.GoInt) : Bool)) {
                        _gotoNext = 246042i32;
                    } else {
                        _gotoNext = 246077i32;
                    };
                } else if (__value__ == (246042i32)) {
                    {
                        final __tmp__0 = _env?.__copy__();
                        final __tmp__1 = (stdgo.Go.str() : stdgo.GoString)?.__copy__();
                        _field_0 = @:binopAssign __tmp__0;
                        _env = @:binopAssign __tmp__1;
                    };
                    _gotoNext = 246120i32;
                } else if (__value__ == (246077i32)) {
                    _gotoNext = 246077i32;
                    {
                        final __tmp__0 = (_env.__slice__(0, _i_1) : stdgo.GoString)?.__copy__();
                        final __tmp__1 = (_env.__slice__((_i_1 + (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        _field_0 = @:binopAssign __tmp__0;
                        _env = @:binopAssign __tmp__1;
                    };
                    var __blank__ = 0i32;
                    _gotoNext = 246120i32;
                } else if (__value__ == (246120i32)) {
                    if ((((_field_0.length) < (4 : stdgo.GoInt) : Bool) || ((_field_0.__slice__(0, (4 : stdgo.GoInt)) : stdgo.GoString) != ("cpu." : stdgo.GoString)) : Bool)) {
                        _gotoNext = 246161i32;
                    } else {
                        _gotoNext = 246181i32;
                    };
                } else if (__value__ == (246161i32)) {
                    var __blank__ = 0i32;
                    _gotoNext = 245974i32;
                } else if (__value__ == (246181i32)) {
                    _i_1 = stdgo._internal.internal.cpu.Cpu__indexbyte._indexByte(_field_0?.__copy__(), (61 : stdgo.GoUInt8));
                    if ((_i_1 < (0 : stdgo.GoInt) : Bool)) {
                        _gotoNext = 246218i32;
                    } else {
                        _gotoNext = 246300i32;
                    };
                } else if (__value__ == (246218i32)) {
                    stdgo.Go.print(("GODEBUG: no value specified for \"" : stdgo.GoString), _field_0, ("\"\n" : stdgo.GoString));
                    var __blank__ = 0i32;
                    _gotoNext = 245974i32;
                } else if (__value__ == (246300i32)) {
                    {
                        final __tmp__0 = (_field_0.__slice__((4 : stdgo.GoInt), _i_1) : stdgo.GoString)?.__copy__();
                        final __tmp__1 = (_field_0.__slice__((_i_1 + (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        _key_2 = @:binopAssign __tmp__0;
                        _value_3 = @:binopAssign __tmp__1;
                    };
                    _gotoNext = 246380i32;
                } else if (__value__ == (246380i32)) {
                    {
                        final __value__ = _value_3;
                        if (__value__ == (("on" : stdgo.GoString))) {
                            _gotoNext = 246397i32;
                        } else if (__value__ == (("off" : stdgo.GoString))) {
                            _gotoNext = 246427i32;
                        } else {
                            _gotoNext = 246459i32;
                        };
                    };
                } else if (__value__ == (246397i32)) {
                    _enable_4 = true;
                    _gotoNext = 246581i32;
                } else if (__value__ == (246427i32)) {
                    _enable_4 = false;
                    _gotoNext = 246581i32;
                } else if (__value__ == (246459i32)) {
                    stdgo.Go.print(("GODEBUG: value \"" : stdgo.GoString), _value_3, ("\" not supported for cpu option \"" : stdgo.GoString), _key_2, ("\"\n" : stdgo.GoString));
                    _gotoNext = 245974i32;
                } else if (__value__ == (246581i32)) {
                    if (_key_2 == (("all" : stdgo.GoString))) {
                        _gotoNext = 246597i32;
                    } else {
                        _gotoNext = 246720i32;
                    };
                } else if (__value__ == (246597i32)) {
                    if ((0i32 : stdgo.GoInt) < (stdgo._internal.internal.cpu.Cpu__options._options.length)) {
                        _gotoNext = 246692i32;
                    } else {
                        _gotoNext = 246698i32;
                    };
                } else if (__value__ == (246625i32)) {
                    stdgo._internal.internal.cpu.Cpu__options._options[(_i_5 : stdgo.GoInt)].specified = true;
                    stdgo._internal.internal.cpu.Cpu__options._options[(_i_5 : stdgo.GoInt)].enable = _enable_4;
                    _i_5++;
                    _gotoNext = 246693i32;
                } else if (__value__ == (246692i32)) {
                    _i_5 = 0i32;
                    _gotoNext = 246693i32;
                } else if (__value__ == (246693i32)) {
                    if (_i_5 < (stdgo._internal.internal.cpu.Cpu__options._options.length)) {
                        _gotoNext = 246625i32;
                    } else {
                        _gotoNext = 246698i32;
                    };
                } else if (__value__ == (246698i32)) {
                    _gotoNext = 245974i32;
                } else if (__value__ == (246720i32)) {
                    if ((0i32 : stdgo.GoInt) < (stdgo._internal.internal.cpu.Cpu__options._options.length)) {
                        _gotoNext = 246864i32;
                    } else {
                        _gotoNext = 246870i32;
                    };
                } else if (__value__ == (246724i32)) {
                    _i_6++;
                    _gotoNext = 246865i32;
                } else if (__value__ == (246743i32)) {
                    if (stdgo._internal.internal.cpu.Cpu__options._options[(_i_6 : stdgo.GoInt)].name == (_key_2)) {
                        _gotoNext = 246774i32;
                    } else {
                        _gotoNext = 246724i32;
                    };
                } else if (__value__ == (246774i32)) {
                    stdgo._internal.internal.cpu.Cpu__options._options[(_i_6 : stdgo.GoInt)].specified = true;
                    stdgo._internal.internal.cpu.Cpu__options._options[(_i_6 : stdgo.GoInt)].enable = _enable_4;
                    _gotoNext = 245974i32;
                } else if (__value__ == (246864i32)) {
                    _i_6 = 0i32;
                    _gotoNext = 246865i32;
                } else if (__value__ == (246865i32)) {
                    if (_i_6 < (stdgo._internal.internal.cpu.Cpu__options._options.length)) {
                        _gotoNext = 246743i32;
                    } else {
                        _gotoNext = 246870i32;
                    };
                } else if (__value__ == (246870i32)) {
                    stdgo.Go.print(("GODEBUG: unknown cpu feature \"" : stdgo.GoString), _key_2, ("\"\n" : stdgo.GoString));
                    _gotoNext = 245974i32;
                } else if (__value__ == (246929i32)) {
                    if ((0i32 : stdgo.GoInt) < (stdgo._internal.internal.cpu.Cpu__options._options.length)) {
                        _gotoNext = 247142i32;
                    } else {
                        _gotoNext = 247145i32;
                    };
                } else if (__value__ == (246955i32)) {
                    _o_8 = stdgo._internal.internal.cpu.Cpu__options._options[(_i_246941_7 : stdgo.GoInt)];
                    if (!_o_8.specified) {
                        _gotoNext = 246975i32;
                    } else {
                        _gotoNext = 246996i32;
                    };
                } else if (__value__ == (246975i32)) {
                    _i_246941_7++;
                    _gotoNext = 247143i32;
                } else if (__value__ == (246996i32)) {
                    if ((_o_8.enable && !_o_8.feature.value : Bool)) {
                        _gotoNext = 247023i32;
                    } else {
                        _gotoNext = 247120i32;
                    };
                } else if (__value__ == (247023i32)) {
                    stdgo.Go.print(("GODEBUG: can not enable \"" : stdgo.GoString), _o_8.name, ("\", missing CPU support\n" : stdgo.GoString));
                    _i_246941_7++;
                    _gotoNext = 247143i32;
                } else if (__value__ == (247120i32)) {
                    _o_8.feature.value = _o_8.enable;
                    _i_246941_7++;
                    _gotoNext = 247143i32;
                } else if (__value__ == (247142i32)) {
                    {
                        final __tmp__0 = 0i32;
                        final __tmp__1 = stdgo._internal.internal.cpu.Cpu__options._options[(0i32 : stdgo.GoInt)];
                        _i_246941_7 = @:binopAssign __tmp__0;
                        _o_8 = @:binopAssign __tmp__1;
                    };
                    _gotoNext = 247143i32;
                } else if (__value__ == (247143i32)) {
                    if (_i_246941_7 < (stdgo._internal.internal.cpu.Cpu__options._options.length)) {
                        _gotoNext = 246955i32;
                    } else {
                        _gotoNext = 247145i32;
                    };
                } else if (__value__ == (247145i32)) {
                    _gotoNext = -1i32;
                };
            };
        };
    }
