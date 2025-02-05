package stdgo._internal.internal.cpu;
function _processOptions(_env:stdgo.GoString):Void {
        var _field_252757:stdgo.GoString = ("" : stdgo.GoString);
        var _o_253701:stdgo._internal.internal.cpu.Cpu_t_option.T_option = ({} : stdgo._internal.internal.cpu.Cpu_t_option.T_option);
        var _i_253371:stdgo.GoInt = (0 : stdgo.GoInt);
        var _enable_253131:Bool = false;
        var _value_253070:stdgo.GoString = ("" : stdgo.GoString);
        var _key_253065:stdgo.GoString = ("" : stdgo.GoString);
        var _i_252771:stdgo.GoInt = (0 : stdgo.GoInt);
        var _fieldBreak = false;
        var _i_253706_0:stdgo.GoInt = (0 : stdgo.GoInt);
        var _i_253489:stdgo.GoInt = (0 : stdgo.GoInt);
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    _gotoNext = 252731i32;
                } else if (__value__ == (252731i32)) {
                    var __blank__ = 0i32;
                    _fieldBreak = false;
                    _gotoNext = 252739i32;
                } else if (__value__ == (252739i32)) {
                    if (!_fieldBreak && (_env != (stdgo.Go.str() : stdgo.GoString))) {
                        _gotoNext = 252753i32;
                    } else {
                        _gotoNext = 253694i32;
                    };
                } else if (__value__ == (252753i32)) {
                    _field_252757 = (stdgo.Go.str() : stdgo.GoString)?.__copy__();
                    _i_252771 = stdgo._internal.internal.cpu.Cpu__indexbyte._indexByte(_env?.__copy__(), (44 : stdgo.GoUInt8));
                    if ((_i_252771 < (0 : stdgo.GoInt) : Bool)) {
                        _gotoNext = 252807i32;
                    } else {
                        _gotoNext = 252842i32;
                    };
                } else if (__value__ == (252807i32)) {
                    {
                        final __tmp__0 = _env?.__copy__();
                        final __tmp__1 = (stdgo.Go.str() : stdgo.GoString)?.__copy__();
                        _field_252757 = __tmp__0;
                        _env = __tmp__1;
                    };
                    _gotoNext = 252885i32;
                } else if (__value__ == (252842i32)) {
                    _gotoNext = 252842i32;
                    {
                        final __tmp__0 = (_env.__slice__(0, _i_252771) : stdgo.GoString)?.__copy__();
                        final __tmp__1 = (_env.__slice__((_i_252771 + (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        _field_252757 = __tmp__0;
                        _env = __tmp__1;
                    };
                    var __blank__ = 0i32;
                    _gotoNext = 252885i32;
                } else if (__value__ == (252885i32)) {
                    if ((((_field_252757.length) < (4 : stdgo.GoInt) : Bool) || ((_field_252757.__slice__(0, (4 : stdgo.GoInt)) : stdgo.GoString) != ("cpu." : stdgo.GoString)) : Bool)) {
                        _gotoNext = 252926i32;
                    } else {
                        _gotoNext = 252946i32;
                    };
                } else if (__value__ == (252926i32)) {
                    var __blank__ = 0i32;
                    _gotoNext = 252739i32;
                } else if (__value__ == (252946i32)) {
                    _i_252771 = stdgo._internal.internal.cpu.Cpu__indexbyte._indexByte(_field_252757?.__copy__(), (61 : stdgo.GoUInt8));
                    if ((_i_252771 < (0 : stdgo.GoInt) : Bool)) {
                        _gotoNext = 252983i32;
                    } else {
                        _gotoNext = 253065i32;
                    };
                } else if (__value__ == (252983i32)) {
                    stdgo.Go.print(("GODEBUG: no value specified for \"" : stdgo.GoString), _field_252757, ("\"\n" : stdgo.GoString));
                    var __blank__ = 0i32;
                    _gotoNext = 252739i32;
                } else if (__value__ == (253065i32)) {
                    {
                        final __tmp__0 = (_field_252757.__slice__((4 : stdgo.GoInt), _i_252771) : stdgo.GoString)?.__copy__();
                        final __tmp__1 = (_field_252757.__slice__((_i_252771 + (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        _key_253065 = __tmp__0;
                        _value_253070 = __tmp__1;
                    };
                    _gotoNext = 253145i32;
                } else if (__value__ == (253145i32)) {
                    {
                        final __value__ = _value_253070;
                        if (__value__ == (("on" : stdgo.GoString))) {
                            _gotoNext = 253162i32;
                        } else if (__value__ == (("off" : stdgo.GoString))) {
                            _gotoNext = 253192i32;
                        } else {
                            _gotoNext = 253224i32;
                        };
                    };
                } else if (__value__ == (253162i32)) {
                    _enable_253131 = true;
                    _gotoNext = 253346i32;
                } else if (__value__ == (253192i32)) {
                    _enable_253131 = false;
                    _gotoNext = 253346i32;
                } else if (__value__ == (253224i32)) {
                    stdgo.Go.print(("GODEBUG: value \"" : stdgo.GoString), _value_253070, ("\" not supported for cpu option \"" : stdgo.GoString), _key_253065, ("\"\n" : stdgo.GoString));
                    _gotoNext = 252739i32;
                } else if (__value__ == (253346i32)) {
                    if (_key_253065 == (("all" : stdgo.GoString))) {
                        _gotoNext = 253362i32;
                    } else {
                        _gotoNext = 253485i32;
                    };
                } else if (__value__ == (253362i32)) {
                    if ((0i32 : stdgo.GoInt) < (stdgo._internal.internal.cpu.Cpu__options._options.length)) {
                        _gotoNext = 253457i32;
                    } else {
                        _gotoNext = 253463i32;
                    };
                } else if (__value__ == (253390i32)) {
                    stdgo._internal.internal.cpu.Cpu__options._options[(_i_253371 : stdgo.GoInt)].specified = true;
                    stdgo._internal.internal.cpu.Cpu__options._options[(_i_253371 : stdgo.GoInt)].enable = _enable_253131;
                    _i_253371++;
                    _gotoNext = 253458i32;
                } else if (__value__ == (253457i32)) {
                    _i_253371 = 0i32;
                    _gotoNext = 253458i32;
                } else if (__value__ == (253458i32)) {
                    if (_i_253371 < (stdgo._internal.internal.cpu.Cpu__options._options.length)) {
                        _gotoNext = 253390i32;
                    } else {
                        _gotoNext = 253463i32;
                    };
                } else if (__value__ == (253463i32)) {
                    _gotoNext = 252739i32;
                } else if (__value__ == (253485i32)) {
                    if ((0i32 : stdgo.GoInt) < (stdgo._internal.internal.cpu.Cpu__options._options.length)) {
                        _gotoNext = 253629i32;
                    } else {
                        _gotoNext = 253635i32;
                    };
                } else if (__value__ == (253489i32)) {
                    _i_253489++;
                    _gotoNext = 253630i32;
                } else if (__value__ == (253508i32)) {
                    if (stdgo._internal.internal.cpu.Cpu__options._options[(_i_253489 : stdgo.GoInt)].name == (_key_253065)) {
                        _gotoNext = 253539i32;
                    } else {
                        _gotoNext = 253489i32;
                    };
                } else if (__value__ == (253539i32)) {
                    stdgo._internal.internal.cpu.Cpu__options._options[(_i_253489 : stdgo.GoInt)].specified = true;
                    stdgo._internal.internal.cpu.Cpu__options._options[(_i_253489 : stdgo.GoInt)].enable = _enable_253131;
                    _gotoNext = 252739i32;
                } else if (__value__ == (253629i32)) {
                    _i_253489 = 0i32;
                    _gotoNext = 253630i32;
                } else if (__value__ == (253630i32)) {
                    if (_i_253489 < (stdgo._internal.internal.cpu.Cpu__options._options.length)) {
                        _gotoNext = 253508i32;
                    } else {
                        _gotoNext = 253635i32;
                    };
                } else if (__value__ == (253635i32)) {
                    stdgo.Go.print(("GODEBUG: unknown cpu feature \"" : stdgo.GoString), _key_253065, ("\"\n" : stdgo.GoString));
                    _gotoNext = 252739i32;
                } else if (__value__ == (253694i32)) {
                    if ((0i32 : stdgo.GoInt) < (stdgo._internal.internal.cpu.Cpu__options._options.length)) {
                        _gotoNext = 253907i32;
                    } else {
                        _gotoNext = 253910i32;
                    };
                } else if (__value__ == (253720i32)) {
                    _o_253701 = stdgo._internal.internal.cpu.Cpu__options._options[(_i_253706_0 : stdgo.GoInt)];
                    if (!_o_253701.specified) {
                        _gotoNext = 253740i32;
                    } else {
                        _gotoNext = 253761i32;
                    };
                } else if (__value__ == (253740i32)) {
                    _i_253706_0++;
                    _gotoNext = 253908i32;
                } else if (__value__ == (253761i32)) {
                    if ((_o_253701.enable && !_o_253701.feature.value : Bool)) {
                        _gotoNext = 253788i32;
                    } else {
                        _gotoNext = 253885i32;
                    };
                } else if (__value__ == (253788i32)) {
                    stdgo.Go.print(("GODEBUG: can not enable \"" : stdgo.GoString), _o_253701.name, ("\", missing CPU support\n" : stdgo.GoString));
                    _i_253706_0++;
                    _gotoNext = 253908i32;
                } else if (__value__ == (253885i32)) {
                    _o_253701.feature.value = _o_253701.enable;
                    _i_253706_0++;
                    _gotoNext = 253908i32;
                } else if (__value__ == (253907i32)) {
                    {
                        final __tmp__0 = 0i32;
                        final __tmp__1 = stdgo._internal.internal.cpu.Cpu__options._options[(0i32 : stdgo.GoInt)];
                        _i_253706_0 = __tmp__0;
                        _o_253701 = __tmp__1;
                    };
                    _gotoNext = 253908i32;
                } else if (__value__ == (253908i32)) {
                    if (_i_253706_0 < (stdgo._internal.internal.cpu.Cpu__options._options.length)) {
                        _gotoNext = 253720i32;
                    } else {
                        _gotoNext = 253910i32;
                    };
                } else if (__value__ == (253910i32)) {
                    _gotoNext = -1i32;
                };
            };
        };
    }
