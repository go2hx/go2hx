package stdgo._internal.internal.cpu;
function _processOptions(_env:stdgo.GoString):Void {
        var _key_22920:stdgo.GoString = ("" : stdgo.GoString);
        var _i_22626:stdgo.GoInt = (0 : stdgo.GoInt);
        var _field_22612:stdgo.GoString = ("" : stdgo.GoString);
        var _i_23561_0:stdgo.GoInt = (0 : stdgo.GoInt);
        var _i_23344:stdgo.GoInt = (0 : stdgo.GoInt);
        var _value_22925:stdgo.GoString = ("" : stdgo.GoString);
        var _i_23226:stdgo.GoInt = (0 : stdgo.GoInt);
        var _enable_22986:Bool = false;
        var _fieldBreak = false;
        var _o_23556:stdgo._internal.internal.cpu.Cpu_t_option.T_option = ({} : stdgo._internal.internal.cpu.Cpu_t_option.T_option);
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    _gotoNext = 22586i32;
                } else if (__value__ == (22586i32)) {
                    var __blank__ = 0i32;
                    _fieldBreak = false;
                    _gotoNext = 22594i32;
                } else if (__value__ == (22594i32)) {
                    if (!_fieldBreak && (_env != (stdgo.Go.str() : stdgo.GoString))) {
                        _gotoNext = 22608i32;
                    } else {
                        _gotoNext = 23549i32;
                    };
                } else if (__value__ == (22608i32)) {
                    _field_22612 = (stdgo.Go.str() : stdgo.GoString)?.__copy__();
                    _i_22626 = stdgo._internal.internal.cpu.Cpu__indexbyte._indexByte(_env?.__copy__(), (44 : stdgo.GoUInt8));
                    if ((_i_22626 < (0 : stdgo.GoInt) : Bool)) {
                        _gotoNext = 22662i32;
                    } else {
                        _gotoNext = 22697i32;
                    };
                } else if (__value__ == (22662i32)) {
                    {
                        final __tmp__0 = _env?.__copy__();
                        final __tmp__1 = (stdgo.Go.str() : stdgo.GoString)?.__copy__();
                        _field_22612 = __tmp__0;
                        _env = __tmp__1;
                    };
                    _gotoNext = 22740i32;
                } else if (__value__ == (22697i32)) {
                    _gotoNext = 22697i32;
                    {
                        final __tmp__0 = (_env.__slice__(0, _i_22626) : stdgo.GoString)?.__copy__();
                        final __tmp__1 = (_env.__slice__((_i_22626 + (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        _field_22612 = __tmp__0;
                        _env = __tmp__1;
                    };
                    var __blank__ = 0i32;
                    _gotoNext = 22740i32;
                } else if (__value__ == (22740i32)) {
                    if ((((_field_22612.length) < (4 : stdgo.GoInt) : Bool) || ((_field_22612.__slice__(0, (4 : stdgo.GoInt)) : stdgo.GoString) != ("cpu." : stdgo.GoString)) : Bool)) {
                        _gotoNext = 22781i32;
                    } else {
                        _gotoNext = 22801i32;
                    };
                } else if (__value__ == (22781i32)) {
                    var __blank__ = 0i32;
                    _gotoNext = 22594i32;
                } else if (__value__ == (22801i32)) {
                    _i_22626 = stdgo._internal.internal.cpu.Cpu__indexbyte._indexByte(_field_22612?.__copy__(), (61 : stdgo.GoUInt8));
                    if ((_i_22626 < (0 : stdgo.GoInt) : Bool)) {
                        _gotoNext = 22838i32;
                    } else {
                        _gotoNext = 22920i32;
                    };
                } else if (__value__ == (22838i32)) {
                    stdgo.Go.print(("GODEBUG: no value specified for \"" : stdgo.GoString), _field_22612, ("\"\n" : stdgo.GoString));
                    var __blank__ = 0i32;
                    _gotoNext = 22594i32;
                } else if (__value__ == (22920i32)) {
                    {
                        final __tmp__0 = (_field_22612.__slice__((4 : stdgo.GoInt), _i_22626) : stdgo.GoString)?.__copy__();
                        final __tmp__1 = (_field_22612.__slice__((_i_22626 + (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        _key_22920 = __tmp__0;
                        _value_22925 = __tmp__1;
                    };
                    _gotoNext = 23000i32;
                } else if (__value__ == (23000i32)) {
                    {
                        final __value__ = _value_22925;
                        if (__value__ == (("on" : stdgo.GoString))) {
                            _gotoNext = 23017i32;
                        } else if (__value__ == (("off" : stdgo.GoString))) {
                            _gotoNext = 23047i32;
                        } else {
                            _gotoNext = 23079i32;
                        };
                    };
                } else if (__value__ == (23017i32)) {
                    _enable_22986 = true;
                    _gotoNext = 23201i32;
                } else if (__value__ == (23047i32)) {
                    _enable_22986 = false;
                    _gotoNext = 23201i32;
                } else if (__value__ == (23079i32)) {
                    stdgo.Go.print(("GODEBUG: value \"" : stdgo.GoString), _value_22925, ("\" not supported for cpu option \"" : stdgo.GoString), _key_22920, ("\"\n" : stdgo.GoString));
                    _gotoNext = 22594i32;
                } else if (__value__ == (23201i32)) {
                    if (_key_22920 == (("all" : stdgo.GoString))) {
                        _gotoNext = 23217i32;
                    } else {
                        _gotoNext = 23340i32;
                    };
                } else if (__value__ == (23217i32)) {
                    if ((0i32 : stdgo.GoInt) < (stdgo._internal.internal.cpu.Cpu__options._options.length)) {
                        _gotoNext = 23312i32;
                    } else {
                        _gotoNext = 23318i32;
                    };
                } else if (__value__ == (23245i32)) {
                    stdgo._internal.internal.cpu.Cpu__options._options[(_i_23226 : stdgo.GoInt)].specified = true;
                    stdgo._internal.internal.cpu.Cpu__options._options[(_i_23226 : stdgo.GoInt)].enable = _enable_22986;
                    _i_23226++;
                    _gotoNext = 23313i32;
                } else if (__value__ == (23312i32)) {
                    _i_23226 = 0i32;
                    _gotoNext = 23313i32;
                } else if (__value__ == (23313i32)) {
                    if (_i_23226 < (stdgo._internal.internal.cpu.Cpu__options._options.length)) {
                        _gotoNext = 23245i32;
                    } else {
                        _gotoNext = 23318i32;
                    };
                } else if (__value__ == (23318i32)) {
                    _gotoNext = 22594i32;
                } else if (__value__ == (23340i32)) {
                    if ((0i32 : stdgo.GoInt) < (stdgo._internal.internal.cpu.Cpu__options._options.length)) {
                        _gotoNext = 23484i32;
                    } else {
                        _gotoNext = 23490i32;
                    };
                } else if (__value__ == (23344i32)) {
                    _i_23344++;
                    _gotoNext = 23485i32;
                } else if (__value__ == (23363i32)) {
                    if (stdgo._internal.internal.cpu.Cpu__options._options[(_i_23344 : stdgo.GoInt)].name == (_key_22920)) {
                        _gotoNext = 23394i32;
                    } else {
                        _gotoNext = 23344i32;
                    };
                } else if (__value__ == (23394i32)) {
                    stdgo._internal.internal.cpu.Cpu__options._options[(_i_23344 : stdgo.GoInt)].specified = true;
                    stdgo._internal.internal.cpu.Cpu__options._options[(_i_23344 : stdgo.GoInt)].enable = _enable_22986;
                    _gotoNext = 22594i32;
                } else if (__value__ == (23484i32)) {
                    _i_23344 = 0i32;
                    _gotoNext = 23485i32;
                } else if (__value__ == (23485i32)) {
                    if (_i_23344 < (stdgo._internal.internal.cpu.Cpu__options._options.length)) {
                        _gotoNext = 23363i32;
                    } else {
                        _gotoNext = 23490i32;
                    };
                } else if (__value__ == (23490i32)) {
                    stdgo.Go.print(("GODEBUG: unknown cpu feature \"" : stdgo.GoString), _key_22920, ("\"\n" : stdgo.GoString));
                    _gotoNext = 22594i32;
                } else if (__value__ == (23549i32)) {
                    if ((0i32 : stdgo.GoInt) < (stdgo._internal.internal.cpu.Cpu__options._options.length)) {
                        _gotoNext = 23762i32;
                    } else {
                        _gotoNext = 23765i32;
                    };
                } else if (__value__ == (23575i32)) {
                    _o_23556 = stdgo._internal.internal.cpu.Cpu__options._options[(_i_23561_0 : stdgo.GoInt)];
                    if (!_o_23556.specified) {
                        _gotoNext = 23595i32;
                    } else {
                        _gotoNext = 23616i32;
                    };
                } else if (__value__ == (23595i32)) {
                    _i_23561_0++;
                    _gotoNext = 23763i32;
                } else if (__value__ == (23616i32)) {
                    if ((_o_23556.enable && !_o_23556.feature.value : Bool)) {
                        _gotoNext = 23643i32;
                    } else {
                        _gotoNext = 23740i32;
                    };
                } else if (__value__ == (23643i32)) {
                    stdgo.Go.print(("GODEBUG: can not enable \"" : stdgo.GoString), _o_23556.name, ("\", missing CPU support\n" : stdgo.GoString));
                    _i_23561_0++;
                    _gotoNext = 23763i32;
                } else if (__value__ == (23740i32)) {
                    _o_23556.feature.value = _o_23556.enable;
                    _i_23561_0++;
                    _gotoNext = 23763i32;
                } else if (__value__ == (23762i32)) {
                    {
                        final __tmp__0 = 0i32;
                        final __tmp__1 = stdgo._internal.internal.cpu.Cpu__options._options[(0i32 : stdgo.GoInt)];
                        _i_23561_0 = __tmp__0;
                        _o_23556 = __tmp__1;
                    };
                    _gotoNext = 23763i32;
                } else if (__value__ == (23763i32)) {
                    if (_i_23561_0 < (stdgo._internal.internal.cpu.Cpu__options._options.length)) {
                        _gotoNext = 23575i32;
                    } else {
                        _gotoNext = 23765i32;
                    };
                } else if (__value__ == (23765i32)) {
                    _gotoNext = -1i32;
                };
            };
        };
    }
