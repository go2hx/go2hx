package stdgo._internal.internal.cpu;
function _processOptions(_env:stdgo.GoString):Void {
        var _o_11554:stdgo._internal.internal.cpu.Cpu_T_option.T_option = ({} : stdgo._internal.internal.cpu.Cpu_T_option.T_option);
        var _i_11559_0:stdgo.GoInt = (0 : stdgo.GoInt);
        var _i_11342:stdgo.GoInt = (0 : stdgo.GoInt);
        var _enable_10984:Bool = false;
        var _i_10624:stdgo.GoInt = (0 : stdgo.GoInt);
        var _field_10610:stdgo.GoString = ("" : stdgo.GoString);
        var _i_11224:stdgo.GoInt = (0 : stdgo.GoInt);
        var _value_10923:stdgo.GoString = ("" : stdgo.GoString);
        var _key_10918:stdgo.GoString = ("" : stdgo.GoString);
        var _fieldBreak = false;
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    _gotoNext = 10584i32;
                } else if (__value__ == (10584i32)) {
                    var __blank__ = 0i32;
                    _fieldBreak = false;
                    _gotoNext = 10592i32;
                } else if (__value__ == (10592i32)) {
                    if (!_fieldBreak && (_env != stdgo.Go.str())) {
                        _gotoNext = 10606i32;
                    } else {
                        _gotoNext = 11547i32;
                    };
                } else if (__value__ == (10606i32)) {
                    _field_10610 = stdgo.Go.str()?.__copy__();
                    _i_10624 = stdgo._internal.internal.cpu.Cpu__indexByte._indexByte(_env?.__copy__(), (44 : stdgo.GoUInt8));
                    if ((_i_10624 < (0 : stdgo.GoInt) : Bool)) {
                        _gotoNext = 10660i32;
                    } else {
                        _gotoNext = 10695i32;
                    };
                } else if (__value__ == (10660i32)) {
                    {
                        final __tmp__0 = _env?.__copy__();
                        final __tmp__1 = stdgo.Go.str()?.__copy__();
                        _field_10610 = __tmp__0;
                        _env = __tmp__1;
                    };
                    _gotoNext = 10738i32;
                } else if (__value__ == (10695i32)) {
                    _gotoNext = 10695i32;
                    {
                        final __tmp__0 = (_env.__slice__(0, _i_10624) : stdgo.GoString)?.__copy__();
                        final __tmp__1 = (_env.__slice__((_i_10624 + (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        _field_10610 = __tmp__0;
                        _env = __tmp__1;
                    };
                    var __blank__ = 0i32;
                    _gotoNext = 10738i32;
                } else if (__value__ == (10738i32)) {
                    if ((((_field_10610.length) < (4 : stdgo.GoInt) : Bool) || ((_field_10610.__slice__(0, (4 : stdgo.GoInt)) : stdgo.GoString) != ("cpu." : stdgo.GoString)) : Bool)) {
                        _gotoNext = 10779i32;
                    } else {
                        _gotoNext = 10799i32;
                    };
                } else if (__value__ == (10779i32)) {
                    var __blank__ = 0i32;
                    _gotoNext = 10592i32;
                } else if (__value__ == (10799i32)) {
                    _i_10624 = stdgo._internal.internal.cpu.Cpu__indexByte._indexByte(_field_10610?.__copy__(), (61 : stdgo.GoUInt8));
                    if ((_i_10624 < (0 : stdgo.GoInt) : Bool)) {
                        _gotoNext = 10836i32;
                    } else {
                        _gotoNext = 10918i32;
                    };
                } else if (__value__ == (10836i32)) {
                    stdgo.Go.print(("GODEBUG: no value specified for \"" : stdgo.GoString), _field_10610, ("\"\n" : stdgo.GoString));
                    var __blank__ = 0i32;
                    _gotoNext = 10592i32;
                } else if (__value__ == (10918i32)) {
                    {
                        final __tmp__0 = (_field_10610.__slice__((4 : stdgo.GoInt), _i_10624) : stdgo.GoString)?.__copy__();
                        final __tmp__1 = (_field_10610.__slice__((_i_10624 + (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        _key_10918 = __tmp__0;
                        _value_10923 = __tmp__1;
                    };
                    _gotoNext = 10998i32;
                } else if (__value__ == (10998i32)) {
                    {
                        final __value__ = _value_10923;
                        if (__value__ == (("on" : stdgo.GoString))) {
                            _gotoNext = 11015i32;
                        } else if (__value__ == (("off" : stdgo.GoString))) {
                            _gotoNext = 11045i32;
                        } else {
                            _gotoNext = 11077i32;
                        };
                    };
                } else if (__value__ == (11015i32)) {
                    _enable_10984 = true;
                    _gotoNext = 11199i32;
                } else if (__value__ == (11045i32)) {
                    _enable_10984 = false;
                    _gotoNext = 11199i32;
                } else if (__value__ == (11077i32)) {
                    stdgo.Go.print(("GODEBUG: value \"" : stdgo.GoString), _value_10923, ("\" not supported for cpu option \"" : stdgo.GoString), _key_10918, ("\"\n" : stdgo.GoString));
                    _gotoNext = 10592i32;
                } else if (__value__ == (11199i32)) {
                    if (_key_10918 == (("all" : stdgo.GoString))) {
                        _gotoNext = 11215i32;
                    } else {
                        _gotoNext = 11338i32;
                    };
                } else if (__value__ == (11215i32)) {
                    if ((0i32 : stdgo.GoInt) < (stdgo._internal.internal.cpu.Cpu__options._options.length)) {
                        _gotoNext = 11310i32;
                    } else {
                        _gotoNext = 11316i32;
                    };
                } else if (__value__ == (11243i32)) {
                    stdgo._internal.internal.cpu.Cpu__options._options[(_i_11224 : stdgo.GoInt)].specified = true;
                    stdgo._internal.internal.cpu.Cpu__options._options[(_i_11224 : stdgo.GoInt)].enable = _enable_10984;
                    _i_11224++;
                    _gotoNext = 11311i32;
                } else if (__value__ == (11310i32)) {
                    _i_11224 = 0i32;
                    _gotoNext = 11311i32;
                } else if (__value__ == (11311i32)) {
                    if (_i_11224 < (stdgo._internal.internal.cpu.Cpu__options._options.length)) {
                        _gotoNext = 11243i32;
                    } else {
                        _gotoNext = 11316i32;
                    };
                } else if (__value__ == (11316i32)) {
                    _gotoNext = 10592i32;
                } else if (__value__ == (11338i32)) {
                    if ((0i32 : stdgo.GoInt) < (stdgo._internal.internal.cpu.Cpu__options._options.length)) {
                        _gotoNext = 11482i32;
                    } else {
                        _gotoNext = 11488i32;
                    };
                } else if (__value__ == (11342i32)) {
                    _i_11342++;
                    _gotoNext = 11483i32;
                } else if (__value__ == (11361i32)) {
                    if (stdgo._internal.internal.cpu.Cpu__options._options[(_i_11342 : stdgo.GoInt)].name == (_key_10918)) {
                        _gotoNext = 11392i32;
                    } else {
                        _gotoNext = 11342i32;
                    };
                } else if (__value__ == (11392i32)) {
                    stdgo._internal.internal.cpu.Cpu__options._options[(_i_11342 : stdgo.GoInt)].specified = true;
                    stdgo._internal.internal.cpu.Cpu__options._options[(_i_11342 : stdgo.GoInt)].enable = _enable_10984;
                    _gotoNext = 10592i32;
                } else if (__value__ == (11482i32)) {
                    _i_11342 = 0i32;
                    _gotoNext = 11483i32;
                } else if (__value__ == (11483i32)) {
                    if (_i_11342 < (stdgo._internal.internal.cpu.Cpu__options._options.length)) {
                        _gotoNext = 11361i32;
                    } else {
                        _gotoNext = 11488i32;
                    };
                } else if (__value__ == (11488i32)) {
                    stdgo.Go.print(("GODEBUG: unknown cpu feature \"" : stdgo.GoString), _key_10918, ("\"\n" : stdgo.GoString));
                    _gotoNext = 10592i32;
                } else if (__value__ == (11547i32)) {
                    if ((0i32 : stdgo.GoInt) < (stdgo._internal.internal.cpu.Cpu__options._options.length)) {
                        _gotoNext = 11760i32;
                    } else {
                        _gotoNext = 11763i32;
                    };
                } else if (__value__ == (11573i32)) {
                    _o_11554 = stdgo._internal.internal.cpu.Cpu__options._options[(_i_11559_0 : stdgo.GoInt)];
                    if (!_o_11554.specified) {
                        _gotoNext = 11593i32;
                    } else {
                        _gotoNext = 11614i32;
                    };
                } else if (__value__ == (11593i32)) {
                    _i_11559_0++;
                    _gotoNext = 11761i32;
                } else if (__value__ == (11614i32)) {
                    if ((_o_11554.enable && !_o_11554.feature.value : Bool)) {
                        _gotoNext = 11641i32;
                    } else {
                        _gotoNext = 11738i32;
                    };
                } else if (__value__ == (11641i32)) {
                    stdgo.Go.print(("GODEBUG: can not enable \"" : stdgo.GoString), _o_11554.name, ("\", missing CPU support\n" : stdgo.GoString));
                    _i_11559_0++;
                    _gotoNext = 11761i32;
                } else if (__value__ == (11738i32)) {
                    _o_11554.feature.value = _o_11554.enable;
                    _i_11559_0++;
                    _gotoNext = 11761i32;
                } else if (__value__ == (11760i32)) {
                    {
                        final __tmp__0 = 0i32;
                        final __tmp__1 = stdgo._internal.internal.cpu.Cpu__options._options[(0i32 : stdgo.GoInt)];
                        _i_11559_0 = __tmp__0;
                        _o_11554 = __tmp__1;
                    };
                    _gotoNext = 11761i32;
                } else if (__value__ == (11761i32)) {
                    if (_i_11559_0 < (stdgo._internal.internal.cpu.Cpu__options._options.length)) {
                        _gotoNext = 11573i32;
                    } else {
                        _gotoNext = 11763i32;
                    };
                } else if (__value__ == (11763i32)) {
                    _gotoNext = -1i32;
                };
            };
        };
    }
