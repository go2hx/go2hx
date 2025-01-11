package stdgo._internal.internal.cpu;
function _processOptions(_env:stdgo.GoString):Void {
        var _i_36910:stdgo.GoInt = (0 : stdgo.GoInt);
        var _fieldBreak = false;
        var _o_37122:stdgo._internal.internal.cpu.Cpu_T_option.T_option = ({} : stdgo._internal.internal.cpu.Cpu_T_option.T_option);
        var _i_37127_0:stdgo.GoInt = (0 : stdgo.GoInt);
        var _i_36192:stdgo.GoInt = (0 : stdgo.GoInt);
        var _field_36178:stdgo.GoString = ("" : stdgo.GoString);
        var _i_36792:stdgo.GoInt = (0 : stdgo.GoInt);
        var _enable_36552:Bool = false;
        var _value_36491:stdgo.GoString = ("" : stdgo.GoString);
        var _key_36486:stdgo.GoString = ("" : stdgo.GoString);
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    _gotoNext = 36152i32;
                } else if (__value__ == (36152i32)) {
                    var __blank__ = 0i32;
                    _fieldBreak = false;
                    _gotoNext = 36160i32;
                } else if (__value__ == (36160i32)) {
                    if (!_fieldBreak && (_env != stdgo.Go.str())) {
                        _gotoNext = 36174i32;
                    } else {
                        _gotoNext = 37115i32;
                    };
                } else if (__value__ == (36174i32)) {
                    _field_36178 = stdgo.Go.str()?.__copy__();
                    _i_36192 = stdgo._internal.internal.cpu.Cpu__indexByte._indexByte(_env?.__copy__(), (44 : stdgo.GoUInt8));
                    if ((_i_36192 < (0 : stdgo.GoInt) : Bool)) {
                        _gotoNext = 36228i32;
                    } else {
                        _gotoNext = 36263i32;
                    };
                } else if (__value__ == (36228i32)) {
                    {
                        final __tmp__0 = _env?.__copy__();
                        final __tmp__1 = stdgo.Go.str()?.__copy__();
                        _field_36178 = __tmp__0;
                        _env = __tmp__1;
                    };
                    _gotoNext = 36306i32;
                } else if (__value__ == (36263i32)) {
                    _gotoNext = 36263i32;
                    {
                        final __tmp__0 = (_env.__slice__(0, _i_36192) : stdgo.GoString)?.__copy__();
                        final __tmp__1 = (_env.__slice__((_i_36192 + (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        _field_36178 = __tmp__0;
                        _env = __tmp__1;
                    };
                    var __blank__ = 0i32;
                    _gotoNext = 36306i32;
                } else if (__value__ == (36306i32)) {
                    if ((((_field_36178.length) < (4 : stdgo.GoInt) : Bool) || ((_field_36178.__slice__(0, (4 : stdgo.GoInt)) : stdgo.GoString) != ("cpu." : stdgo.GoString)) : Bool)) {
                        _gotoNext = 36347i32;
                    } else {
                        _gotoNext = 36367i32;
                    };
                } else if (__value__ == (36347i32)) {
                    var __blank__ = 0i32;
                    _gotoNext = 36160i32;
                } else if (__value__ == (36367i32)) {
                    _i_36192 = stdgo._internal.internal.cpu.Cpu__indexByte._indexByte(_field_36178?.__copy__(), (61 : stdgo.GoUInt8));
                    if ((_i_36192 < (0 : stdgo.GoInt) : Bool)) {
                        _gotoNext = 36404i32;
                    } else {
                        _gotoNext = 36486i32;
                    };
                } else if (__value__ == (36404i32)) {
                    stdgo.Go.print(("GODEBUG: no value specified for \"" : stdgo.GoString), _field_36178, ("\"\n" : stdgo.GoString));
                    var __blank__ = 0i32;
                    _gotoNext = 36160i32;
                } else if (__value__ == (36486i32)) {
                    {
                        final __tmp__0 = (_field_36178.__slice__((4 : stdgo.GoInt), _i_36192) : stdgo.GoString)?.__copy__();
                        final __tmp__1 = (_field_36178.__slice__((_i_36192 + (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        _key_36486 = __tmp__0;
                        _value_36491 = __tmp__1;
                    };
                    _gotoNext = 36566i32;
                } else if (__value__ == (36566i32)) {
                    {
                        final __value__ = _value_36491;
                        if (__value__ == (("on" : stdgo.GoString))) {
                            _gotoNext = 36583i32;
                        } else if (__value__ == (("off" : stdgo.GoString))) {
                            _gotoNext = 36613i32;
                        } else {
                            _gotoNext = 36645i32;
                        };
                    };
                } else if (__value__ == (36583i32)) {
                    _enable_36552 = true;
                    _gotoNext = 36767i32;
                } else if (__value__ == (36613i32)) {
                    _enable_36552 = false;
                    _gotoNext = 36767i32;
                } else if (__value__ == (36645i32)) {
                    stdgo.Go.print(("GODEBUG: value \"" : stdgo.GoString), _value_36491, ("\" not supported for cpu option \"" : stdgo.GoString), _key_36486, ("\"\n" : stdgo.GoString));
                    _gotoNext = 36160i32;
                } else if (__value__ == (36767i32)) {
                    if (_key_36486 == (("all" : stdgo.GoString))) {
                        _gotoNext = 36783i32;
                    } else {
                        _gotoNext = 36906i32;
                    };
                } else if (__value__ == (36783i32)) {
                    if ((0i32 : stdgo.GoInt) < (stdgo._internal.internal.cpu.Cpu__options._options.length)) {
                        _gotoNext = 36878i32;
                    } else {
                        _gotoNext = 36884i32;
                    };
                } else if (__value__ == (36811i32)) {
                    stdgo._internal.internal.cpu.Cpu__options._options[(_i_36792 : stdgo.GoInt)].specified = true;
                    stdgo._internal.internal.cpu.Cpu__options._options[(_i_36792 : stdgo.GoInt)].enable = _enable_36552;
                    _i_36792++;
                    _gotoNext = 36879i32;
                } else if (__value__ == (36878i32)) {
                    _i_36792 = 0i32;
                    _gotoNext = 36879i32;
                } else if (__value__ == (36879i32)) {
                    if (_i_36792 < (stdgo._internal.internal.cpu.Cpu__options._options.length)) {
                        _gotoNext = 36811i32;
                    } else {
                        _gotoNext = 36884i32;
                    };
                } else if (__value__ == (36884i32)) {
                    _gotoNext = 36160i32;
                } else if (__value__ == (36906i32)) {
                    if ((0i32 : stdgo.GoInt) < (stdgo._internal.internal.cpu.Cpu__options._options.length)) {
                        _gotoNext = 37050i32;
                    } else {
                        _gotoNext = 37056i32;
                    };
                } else if (__value__ == (36910i32)) {
                    _i_36910++;
                    _gotoNext = 37051i32;
                } else if (__value__ == (36929i32)) {
                    if (stdgo._internal.internal.cpu.Cpu__options._options[(_i_36910 : stdgo.GoInt)].name == (_key_36486)) {
                        _gotoNext = 36960i32;
                    } else {
                        _gotoNext = 36910i32;
                    };
                } else if (__value__ == (36960i32)) {
                    stdgo._internal.internal.cpu.Cpu__options._options[(_i_36910 : stdgo.GoInt)].specified = true;
                    stdgo._internal.internal.cpu.Cpu__options._options[(_i_36910 : stdgo.GoInt)].enable = _enable_36552;
                    _gotoNext = 36160i32;
                } else if (__value__ == (37050i32)) {
                    _i_36910 = 0i32;
                    _gotoNext = 37051i32;
                } else if (__value__ == (37051i32)) {
                    if (_i_36910 < (stdgo._internal.internal.cpu.Cpu__options._options.length)) {
                        _gotoNext = 36929i32;
                    } else {
                        _gotoNext = 37056i32;
                    };
                } else if (__value__ == (37056i32)) {
                    stdgo.Go.print(("GODEBUG: unknown cpu feature \"" : stdgo.GoString), _key_36486, ("\"\n" : stdgo.GoString));
                    _gotoNext = 36160i32;
                } else if (__value__ == (37115i32)) {
                    if ((0i32 : stdgo.GoInt) < (stdgo._internal.internal.cpu.Cpu__options._options.length)) {
                        _gotoNext = 37328i32;
                    } else {
                        _gotoNext = 37331i32;
                    };
                } else if (__value__ == (37141i32)) {
                    _o_37122 = stdgo._internal.internal.cpu.Cpu__options._options[(_i_37127_0 : stdgo.GoInt)];
                    if (!_o_37122.specified) {
                        _gotoNext = 37161i32;
                    } else {
                        _gotoNext = 37182i32;
                    };
                } else if (__value__ == (37161i32)) {
                    _i_37127_0++;
                    _gotoNext = 37329i32;
                } else if (__value__ == (37182i32)) {
                    if ((_o_37122.enable && !_o_37122.feature.value : Bool)) {
                        _gotoNext = 37209i32;
                    } else {
                        _gotoNext = 37306i32;
                    };
                } else if (__value__ == (37209i32)) {
                    stdgo.Go.print(("GODEBUG: can not enable \"" : stdgo.GoString), _o_37122.name, ("\", missing CPU support\n" : stdgo.GoString));
                    _i_37127_0++;
                    _gotoNext = 37329i32;
                } else if (__value__ == (37306i32)) {
                    _o_37122.feature.value = _o_37122.enable;
                    _i_37127_0++;
                    _gotoNext = 37329i32;
                } else if (__value__ == (37328i32)) {
                    {
                        final __tmp__0 = 0i32;
                        final __tmp__1 = stdgo._internal.internal.cpu.Cpu__options._options[(0i32 : stdgo.GoInt)];
                        _i_37127_0 = __tmp__0;
                        _o_37122 = __tmp__1;
                    };
                    _gotoNext = 37329i32;
                } else if (__value__ == (37329i32)) {
                    if (_i_37127_0 < (stdgo._internal.internal.cpu.Cpu__options._options.length)) {
                        _gotoNext = 37141i32;
                    } else {
                        _gotoNext = 37331i32;
                    };
                } else if (__value__ == (37331i32)) {
                    _gotoNext = -1i32;
                };
            };
        };
    }
