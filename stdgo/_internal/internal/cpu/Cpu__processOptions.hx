package stdgo._internal.internal.cpu;
function _processOptions(_env:stdgo.GoString):Void {
        var _i_290129:stdgo.GoInt = (0 : stdgo.GoInt);
        var _enable_289771:Bool = false;
        var _key_289705:stdgo.GoString = ("" : stdgo.GoString);
        var _i_289411:stdgo.GoInt = (0 : stdgo.GoInt);
        var _field_289397:stdgo.GoString = ("" : stdgo.GoString);
        var _fieldBreak = false;
        var _o_290341:stdgo._internal.internal.cpu.Cpu_T_option.T_option = ({} : stdgo._internal.internal.cpu.Cpu_T_option.T_option);
        var _i_290346_0:stdgo.GoInt = (0 : stdgo.GoInt);
        var _i_290011:stdgo.GoInt = (0 : stdgo.GoInt);
        var _value_289710:stdgo.GoString = ("" : stdgo.GoString);
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    _gotoNext = 289371i32;
                } else if (__value__ == (289371i32)) {
                    var __blank__ = 0i32;
                    _fieldBreak = false;
                    _gotoNext = 289379i32;
                } else if (__value__ == (289379i32)) {
                    if (!_fieldBreak && (_env != stdgo.Go.str())) {
                        _gotoNext = 289393i32;
                    } else {
                        _gotoNext = 290334i32;
                    };
                } else if (__value__ == (289393i32)) {
                    _field_289397 = stdgo.Go.str()?.__copy__();
                    _i_289411 = stdgo._internal.internal.cpu.Cpu__indexByte._indexByte(_env?.__copy__(), (44 : stdgo.GoUInt8));
                    if ((_i_289411 < (0 : stdgo.GoInt) : Bool)) {
                        _gotoNext = 289447i32;
                    } else {
                        _gotoNext = 289482i32;
                    };
                } else if (__value__ == (289447i32)) {
                    {
                        final __tmp__0 = _env?.__copy__();
                        final __tmp__1 = stdgo.Go.str()?.__copy__();
                        _field_289397 = __tmp__0;
                        _env = __tmp__1;
                    };
                    _gotoNext = 289525i32;
                } else if (__value__ == (289482i32)) {
                    _gotoNext = 289482i32;
                    {
                        final __tmp__0 = (_env.__slice__(0, _i_289411) : stdgo.GoString)?.__copy__();
                        final __tmp__1 = (_env.__slice__((_i_289411 + (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        _field_289397 = __tmp__0;
                        _env = __tmp__1;
                    };
                    var __blank__ = 0i32;
                    _gotoNext = 289525i32;
                } else if (__value__ == (289525i32)) {
                    if ((((_field_289397.length) < (4 : stdgo.GoInt) : Bool) || ((_field_289397.__slice__(0, (4 : stdgo.GoInt)) : stdgo.GoString) != ("cpu." : stdgo.GoString)) : Bool)) {
                        _gotoNext = 289566i32;
                    } else {
                        _gotoNext = 289586i32;
                    };
                } else if (__value__ == (289566i32)) {
                    var __blank__ = 0i32;
                    _gotoNext = 289379i32;
                } else if (__value__ == (289586i32)) {
                    _i_289411 = stdgo._internal.internal.cpu.Cpu__indexByte._indexByte(_field_289397?.__copy__(), (61 : stdgo.GoUInt8));
                    if ((_i_289411 < (0 : stdgo.GoInt) : Bool)) {
                        _gotoNext = 289623i32;
                    } else {
                        _gotoNext = 289705i32;
                    };
                } else if (__value__ == (289623i32)) {
                    stdgo.Go.print(("GODEBUG: no value specified for \"" : stdgo.GoString), _field_289397, ("\"\n" : stdgo.GoString));
                    var __blank__ = 0i32;
                    _gotoNext = 289379i32;
                } else if (__value__ == (289705i32)) {
                    {
                        final __tmp__0 = (_field_289397.__slice__((4 : stdgo.GoInt), _i_289411) : stdgo.GoString)?.__copy__();
                        final __tmp__1 = (_field_289397.__slice__((_i_289411 + (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        _key_289705 = __tmp__0;
                        _value_289710 = __tmp__1;
                    };
                    _gotoNext = 289785i32;
                } else if (__value__ == (289785i32)) {
                    {
                        final __value__ = _value_289710;
                        if (__value__ == (("on" : stdgo.GoString))) {
                            _gotoNext = 289802i32;
                        } else if (__value__ == (("off" : stdgo.GoString))) {
                            _gotoNext = 289832i32;
                        } else {
                            _gotoNext = 289864i32;
                        };
                    };
                } else if (__value__ == (289802i32)) {
                    _enable_289771 = true;
                    _gotoNext = 289986i32;
                } else if (__value__ == (289832i32)) {
                    _enable_289771 = false;
                    _gotoNext = 289986i32;
                } else if (__value__ == (289864i32)) {
                    stdgo.Go.print(("GODEBUG: value \"" : stdgo.GoString), _value_289710, ("\" not supported for cpu option \"" : stdgo.GoString), _key_289705, ("\"\n" : stdgo.GoString));
                    _gotoNext = 289379i32;
                } else if (__value__ == (289986i32)) {
                    if (_key_289705 == (("all" : stdgo.GoString))) {
                        _gotoNext = 290002i32;
                    } else {
                        _gotoNext = 290125i32;
                    };
                } else if (__value__ == (290002i32)) {
                    if ((0i32 : stdgo.GoInt) < (stdgo._internal.internal.cpu.Cpu__options._options.length)) {
                        _gotoNext = 290097i32;
                    } else {
                        _gotoNext = 290103i32;
                    };
                } else if (__value__ == (290030i32)) {
                    stdgo._internal.internal.cpu.Cpu__options._options[(_i_290011 : stdgo.GoInt)].specified = true;
                    stdgo._internal.internal.cpu.Cpu__options._options[(_i_290011 : stdgo.GoInt)].enable = _enable_289771;
                    _i_290011++;
                    _gotoNext = 290098i32;
                } else if (__value__ == (290097i32)) {
                    _i_290011 = 0i32;
                    _gotoNext = 290098i32;
                } else if (__value__ == (290098i32)) {
                    if (_i_290011 < (stdgo._internal.internal.cpu.Cpu__options._options.length)) {
                        _gotoNext = 290030i32;
                    } else {
                        _gotoNext = 290103i32;
                    };
                } else if (__value__ == (290103i32)) {
                    _gotoNext = 289379i32;
                } else if (__value__ == (290125i32)) {
                    if ((0i32 : stdgo.GoInt) < (stdgo._internal.internal.cpu.Cpu__options._options.length)) {
                        _gotoNext = 290269i32;
                    } else {
                        _gotoNext = 290275i32;
                    };
                } else if (__value__ == (290129i32)) {
                    _i_290129++;
                    _gotoNext = 290270i32;
                } else if (__value__ == (290148i32)) {
                    if (stdgo._internal.internal.cpu.Cpu__options._options[(_i_290129 : stdgo.GoInt)].name == (_key_289705)) {
                        _gotoNext = 290179i32;
                    } else {
                        _gotoNext = 290129i32;
                    };
                } else if (__value__ == (290179i32)) {
                    stdgo._internal.internal.cpu.Cpu__options._options[(_i_290129 : stdgo.GoInt)].specified = true;
                    stdgo._internal.internal.cpu.Cpu__options._options[(_i_290129 : stdgo.GoInt)].enable = _enable_289771;
                    _gotoNext = 289379i32;
                } else if (__value__ == (290269i32)) {
                    _i_290129 = 0i32;
                    _gotoNext = 290270i32;
                } else if (__value__ == (290270i32)) {
                    if (_i_290129 < (stdgo._internal.internal.cpu.Cpu__options._options.length)) {
                        _gotoNext = 290148i32;
                    } else {
                        _gotoNext = 290275i32;
                    };
                } else if (__value__ == (290275i32)) {
                    stdgo.Go.print(("GODEBUG: unknown cpu feature \"" : stdgo.GoString), _key_289705, ("\"\n" : stdgo.GoString));
                    _gotoNext = 289379i32;
                } else if (__value__ == (290334i32)) {
                    if ((0i32 : stdgo.GoInt) < (stdgo._internal.internal.cpu.Cpu__options._options.length)) {
                        _gotoNext = 290547i32;
                    } else {
                        _gotoNext = 290550i32;
                    };
                } else if (__value__ == (290360i32)) {
                    _o_290341 = stdgo._internal.internal.cpu.Cpu__options._options[(_i_290346_0 : stdgo.GoInt)];
                    if (!_o_290341.specified) {
                        _gotoNext = 290380i32;
                    } else {
                        _gotoNext = 290401i32;
                    };
                } else if (__value__ == (290380i32)) {
                    _i_290346_0++;
                    _gotoNext = 290548i32;
                } else if (__value__ == (290401i32)) {
                    if ((_o_290341.enable && !_o_290341.feature.value : Bool)) {
                        _gotoNext = 290428i32;
                    } else {
                        _gotoNext = 290525i32;
                    };
                } else if (__value__ == (290428i32)) {
                    stdgo.Go.print(("GODEBUG: can not enable \"" : stdgo.GoString), _o_290341.name, ("\", missing CPU support\n" : stdgo.GoString));
                    _i_290346_0++;
                    _gotoNext = 290548i32;
                } else if (__value__ == (290525i32)) {
                    _o_290341.feature.value = _o_290341.enable;
                    _i_290346_0++;
                    _gotoNext = 290548i32;
                } else if (__value__ == (290547i32)) {
                    {
                        final __tmp__0 = 0i32;
                        final __tmp__1 = stdgo._internal.internal.cpu.Cpu__options._options[(0i32 : stdgo.GoInt)];
                        _i_290346_0 = __tmp__0;
                        _o_290341 = __tmp__1;
                    };
                    _gotoNext = 290548i32;
                } else if (__value__ == (290548i32)) {
                    if (_i_290346_0 < (stdgo._internal.internal.cpu.Cpu__options._options.length)) {
                        _gotoNext = 290360i32;
                    } else {
                        _gotoNext = 290550i32;
                    };
                } else if (__value__ == (290550i32)) {
                    _gotoNext = -1i32;
                };
            };
        };
    }
