package stdgo._internal.internal.cpu;
function _processOptions(_env:stdgo.GoString):Void {
        var _i_246941_0:stdgo.GoInt = (0 : stdgo.GoInt);
        var _field_245992:stdgo.GoString = ("" : stdgo.GoString);
        var _i_246606:stdgo.GoInt = (0 : stdgo.GoInt);
        var _enable_246366:Bool = false;
        var _value_246305:stdgo.GoString = ("" : stdgo.GoString);
        var _key_246300:stdgo.GoString = ("" : stdgo.GoString);
        var _i_246006:stdgo.GoInt = (0 : stdgo.GoInt);
        var _fieldBreak = false;
        var _o_246936:stdgo._internal.internal.cpu.Cpu_T_option.T_option = ({} : stdgo._internal.internal.cpu.Cpu_T_option.T_option);
        var _i_246724:stdgo.GoInt = (0 : stdgo.GoInt);
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
                    if (!_fieldBreak && (_env != stdgo.Go.str())) {
                        _gotoNext = 245988i32;
                    } else {
                        _gotoNext = 246929i32;
                    };
                } else if (__value__ == (245988i32)) {
                    _field_245992 = stdgo.Go.str()?.__copy__();
                    _i_246006 = stdgo._internal.internal.cpu.Cpu__indexByte._indexByte(_env?.__copy__(), (44 : stdgo.GoUInt8));
                    if ((_i_246006 < (0 : stdgo.GoInt) : Bool)) {
                        _gotoNext = 246042i32;
                    } else {
                        _gotoNext = 246077i32;
                    };
                } else if (__value__ == (246042i32)) {
                    {
                        final __tmp__0 = _env?.__copy__();
                        final __tmp__1 = stdgo.Go.str()?.__copy__();
                        _field_245992 = __tmp__0;
                        _env = __tmp__1;
                    };
                    _gotoNext = 246120i32;
                } else if (__value__ == (246077i32)) {
                    _gotoNext = 246077i32;
                    {
                        final __tmp__0 = (_env.__slice__(0, _i_246006) : stdgo.GoString)?.__copy__();
                        final __tmp__1 = (_env.__slice__((_i_246006 + (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        _field_245992 = __tmp__0;
                        _env = __tmp__1;
                    };
                    var __blank__ = 0i32;
                    _gotoNext = 246120i32;
                } else if (__value__ == (246120i32)) {
                    if ((((_field_245992.length) < (4 : stdgo.GoInt) : Bool) || ((_field_245992.__slice__(0, (4 : stdgo.GoInt)) : stdgo.GoString) != ("cpu." : stdgo.GoString)) : Bool)) {
                        _gotoNext = 246161i32;
                    } else {
                        _gotoNext = 246181i32;
                    };
                } else if (__value__ == (246161i32)) {
                    var __blank__ = 0i32;
                    _gotoNext = 245974i32;
                } else if (__value__ == (246181i32)) {
                    _i_246006 = stdgo._internal.internal.cpu.Cpu__indexByte._indexByte(_field_245992?.__copy__(), (61 : stdgo.GoUInt8));
                    if ((_i_246006 < (0 : stdgo.GoInt) : Bool)) {
                        _gotoNext = 246218i32;
                    } else {
                        _gotoNext = 246300i32;
                    };
                } else if (__value__ == (246218i32)) {
                    stdgo.Go.print(("GODEBUG: no value specified for \"" : stdgo.GoString), _field_245992, ("\"\n" : stdgo.GoString));
                    var __blank__ = 0i32;
                    _gotoNext = 245974i32;
                } else if (__value__ == (246300i32)) {
                    {
                        final __tmp__0 = (_field_245992.__slice__((4 : stdgo.GoInt), _i_246006) : stdgo.GoString)?.__copy__();
                        final __tmp__1 = (_field_245992.__slice__((_i_246006 + (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        _key_246300 = __tmp__0;
                        _value_246305 = __tmp__1;
                    };
                    _gotoNext = 246380i32;
                } else if (__value__ == (246380i32)) {
                    {
                        final __value__ = _value_246305;
                        if (__value__ == (("on" : stdgo.GoString))) {
                            _gotoNext = 246397i32;
                        } else if (__value__ == (("off" : stdgo.GoString))) {
                            _gotoNext = 246427i32;
                        } else {
                            _gotoNext = 246459i32;
                        };
                    };
                } else if (__value__ == (246397i32)) {
                    _enable_246366 = true;
                    _gotoNext = 246581i32;
                } else if (__value__ == (246427i32)) {
                    _enable_246366 = false;
                    _gotoNext = 246581i32;
                } else if (__value__ == (246459i32)) {
                    stdgo.Go.print(("GODEBUG: value \"" : stdgo.GoString), _value_246305, ("\" not supported for cpu option \"" : stdgo.GoString), _key_246300, ("\"\n" : stdgo.GoString));
                    _gotoNext = 245974i32;
                } else if (__value__ == (246581i32)) {
                    if (_key_246300 == (("all" : stdgo.GoString))) {
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
                    stdgo._internal.internal.cpu.Cpu__options._options[(_i_246606 : stdgo.GoInt)].specified = true;
                    stdgo._internal.internal.cpu.Cpu__options._options[(_i_246606 : stdgo.GoInt)].enable = _enable_246366;
                    _i_246606++;
                    _gotoNext = 246693i32;
                } else if (__value__ == (246692i32)) {
                    _i_246606 = 0i32;
                    _gotoNext = 246693i32;
                } else if (__value__ == (246693i32)) {
                    if (_i_246606 < (stdgo._internal.internal.cpu.Cpu__options._options.length)) {
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
                    _i_246724++;
                    _gotoNext = 246865i32;
                } else if (__value__ == (246743i32)) {
                    if (stdgo._internal.internal.cpu.Cpu__options._options[(_i_246724 : stdgo.GoInt)].name == (_key_246300)) {
                        _gotoNext = 246774i32;
                    } else {
                        _gotoNext = 246724i32;
                    };
                } else if (__value__ == (246774i32)) {
                    stdgo._internal.internal.cpu.Cpu__options._options[(_i_246724 : stdgo.GoInt)].specified = true;
                    stdgo._internal.internal.cpu.Cpu__options._options[(_i_246724 : stdgo.GoInt)].enable = _enable_246366;
                    _gotoNext = 245974i32;
                } else if (__value__ == (246864i32)) {
                    _i_246724 = 0i32;
                    _gotoNext = 246865i32;
                } else if (__value__ == (246865i32)) {
                    if (_i_246724 < (stdgo._internal.internal.cpu.Cpu__options._options.length)) {
                        _gotoNext = 246743i32;
                    } else {
                        _gotoNext = 246870i32;
                    };
                } else if (__value__ == (246870i32)) {
                    stdgo.Go.print(("GODEBUG: unknown cpu feature \"" : stdgo.GoString), _key_246300, ("\"\n" : stdgo.GoString));
                    _gotoNext = 245974i32;
                } else if (__value__ == (246929i32)) {
                    if ((0i32 : stdgo.GoInt) < (stdgo._internal.internal.cpu.Cpu__options._options.length)) {
                        _gotoNext = 247142i32;
                    } else {
                        _gotoNext = 247145i32;
                    };
                } else if (__value__ == (246955i32)) {
                    _o_246936 = stdgo._internal.internal.cpu.Cpu__options._options[(_i_246941_0 : stdgo.GoInt)];
                    if (!_o_246936.specified) {
                        _gotoNext = 246975i32;
                    } else {
                        _gotoNext = 246996i32;
                    };
                } else if (__value__ == (246975i32)) {
                    _i_246941_0++;
                    _gotoNext = 247143i32;
                } else if (__value__ == (246996i32)) {
                    if ((_o_246936.enable && !_o_246936.feature.value : Bool)) {
                        _gotoNext = 247023i32;
                    } else {
                        _gotoNext = 247120i32;
                    };
                } else if (__value__ == (247023i32)) {
                    stdgo.Go.print(("GODEBUG: can not enable \"" : stdgo.GoString), _o_246936.name, ("\", missing CPU support\n" : stdgo.GoString));
                    _i_246941_0++;
                    _gotoNext = 247143i32;
                } else if (__value__ == (247120i32)) {
                    _o_246936.feature.value = _o_246936.enable;
                    _i_246941_0++;
                    _gotoNext = 247143i32;
                } else if (__value__ == (247142i32)) {
                    {
                        final __tmp__0 = 0i32;
                        final __tmp__1 = stdgo._internal.internal.cpu.Cpu__options._options[(0i32 : stdgo.GoInt)];
                        _i_246941_0 = __tmp__0;
                        _o_246936 = __tmp__1;
                    };
                    _gotoNext = 247143i32;
                } else if (__value__ == (247143i32)) {
                    if (_i_246941_0 < (stdgo._internal.internal.cpu.Cpu__options._options.length)) {
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
