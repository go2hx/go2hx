package stdgo._internal.internal.cpu;
function _processOptions(_env:stdgo.GoString):Void {
        var _o_14616:stdgo._internal.internal.cpu.Cpu_T_option.T_option = ({} : stdgo._internal.internal.cpu.Cpu_T_option.T_option);
        var _enable_14046:Bool = false;
        var _key_13980:stdgo.GoString = ("" : stdgo.GoString);
        var _i_14621_0:stdgo.GoInt = (0 : stdgo.GoInt);
        var _i_14404:stdgo.GoInt = (0 : stdgo.GoInt);
        var _i_14286:stdgo.GoInt = (0 : stdgo.GoInt);
        var _value_13985:stdgo.GoString = ("" : stdgo.GoString);
        var _i_13686:stdgo.GoInt = (0 : stdgo.GoInt);
        var _field_13672:stdgo.GoString = ("" : stdgo.GoString);
        var _fieldBreak = false;
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    _gotoNext = 13646i32;
                } else if (__value__ == (13646i32)) {
                    var __blank__ = 0i32;
                    _fieldBreak = false;
                    _gotoNext = 13654i32;
                } else if (__value__ == (13654i32)) {
                    if (!_fieldBreak && (_env != stdgo.Go.str())) {
                        _gotoNext = 13668i32;
                    } else {
                        _gotoNext = 14609i32;
                    };
                } else if (__value__ == (13668i32)) {
                    _field_13672 = stdgo.Go.str()?.__copy__();
                    _i_13686 = stdgo._internal.internal.cpu.Cpu__indexByte._indexByte(_env?.__copy__(), (44 : stdgo.GoUInt8));
                    if ((_i_13686 < (0 : stdgo.GoInt) : Bool)) {
                        _gotoNext = 13722i32;
                    } else {
                        _gotoNext = 13757i32;
                    };
                } else if (__value__ == (13722i32)) {
                    {
                        final __tmp__0 = _env?.__copy__();
                        final __tmp__1 = stdgo.Go.str()?.__copy__();
                        _field_13672 = __tmp__0;
                        _env = __tmp__1;
                    };
                    _gotoNext = 13800i32;
                } else if (__value__ == (13757i32)) {
                    _gotoNext = 13757i32;
                    {
                        final __tmp__0 = (_env.__slice__(0, _i_13686) : stdgo.GoString)?.__copy__();
                        final __tmp__1 = (_env.__slice__((_i_13686 + (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        _field_13672 = __tmp__0;
                        _env = __tmp__1;
                    };
                    var __blank__ = 0i32;
                    _gotoNext = 13800i32;
                } else if (__value__ == (13800i32)) {
                    if ((((_field_13672.length) < (4 : stdgo.GoInt) : Bool) || ((_field_13672.__slice__(0, (4 : stdgo.GoInt)) : stdgo.GoString) != ("cpu." : stdgo.GoString)) : Bool)) {
                        _gotoNext = 13841i32;
                    } else {
                        _gotoNext = 13861i32;
                    };
                } else if (__value__ == (13841i32)) {
                    var __blank__ = 0i32;
                    _gotoNext = 13654i32;
                } else if (__value__ == (13861i32)) {
                    _i_13686 = stdgo._internal.internal.cpu.Cpu__indexByte._indexByte(_field_13672?.__copy__(), (61 : stdgo.GoUInt8));
                    if ((_i_13686 < (0 : stdgo.GoInt) : Bool)) {
                        _gotoNext = 13898i32;
                    } else {
                        _gotoNext = 13980i32;
                    };
                } else if (__value__ == (13898i32)) {
                    stdgo.Go.print(("GODEBUG: no value specified for \"" : stdgo.GoString), _field_13672, ("\"\n" : stdgo.GoString));
                    var __blank__ = 0i32;
                    _gotoNext = 13654i32;
                } else if (__value__ == (13980i32)) {
                    {
                        final __tmp__0 = (_field_13672.__slice__((4 : stdgo.GoInt), _i_13686) : stdgo.GoString)?.__copy__();
                        final __tmp__1 = (_field_13672.__slice__((_i_13686 + (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        _key_13980 = __tmp__0;
                        _value_13985 = __tmp__1;
                    };
                    _gotoNext = 14060i32;
                } else if (__value__ == (14060i32)) {
                    {
                        final __value__ = _value_13985;
                        if (__value__ == (("on" : stdgo.GoString))) {
                            _gotoNext = 14077i32;
                        } else if (__value__ == (("off" : stdgo.GoString))) {
                            _gotoNext = 14107i32;
                        } else {
                            _gotoNext = 14139i32;
                        };
                    };
                } else if (__value__ == (14077i32)) {
                    _enable_14046 = true;
                    _gotoNext = 14261i32;
                } else if (__value__ == (14107i32)) {
                    _enable_14046 = false;
                    _gotoNext = 14261i32;
                } else if (__value__ == (14139i32)) {
                    stdgo.Go.print(("GODEBUG: value \"" : stdgo.GoString), _value_13985, ("\" not supported for cpu option \"" : stdgo.GoString), _key_13980, ("\"\n" : stdgo.GoString));
                    _gotoNext = 13654i32;
                } else if (__value__ == (14261i32)) {
                    if (_key_13980 == (("all" : stdgo.GoString))) {
                        _gotoNext = 14277i32;
                    } else {
                        _gotoNext = 14400i32;
                    };
                } else if (__value__ == (14277i32)) {
                    if ((0i32 : stdgo.GoInt) < (stdgo._internal.internal.cpu.Cpu__options._options.length)) {
                        _gotoNext = 14372i32;
                    } else {
                        _gotoNext = 14378i32;
                    };
                } else if (__value__ == (14305i32)) {
                    stdgo._internal.internal.cpu.Cpu__options._options[(_i_14286 : stdgo.GoInt)].specified = true;
                    stdgo._internal.internal.cpu.Cpu__options._options[(_i_14286 : stdgo.GoInt)].enable = _enable_14046;
                    _i_14286++;
                    _gotoNext = 14373i32;
                } else if (__value__ == (14372i32)) {
                    _i_14286 = 0i32;
                    _gotoNext = 14373i32;
                } else if (__value__ == (14373i32)) {
                    if (_i_14286 < (stdgo._internal.internal.cpu.Cpu__options._options.length)) {
                        _gotoNext = 14305i32;
                    } else {
                        _gotoNext = 14378i32;
                    };
                } else if (__value__ == (14378i32)) {
                    _gotoNext = 13654i32;
                } else if (__value__ == (14400i32)) {
                    if ((0i32 : stdgo.GoInt) < (stdgo._internal.internal.cpu.Cpu__options._options.length)) {
                        _gotoNext = 14544i32;
                    } else {
                        _gotoNext = 14550i32;
                    };
                } else if (__value__ == (14404i32)) {
                    _i_14404++;
                    _gotoNext = 14545i32;
                } else if (__value__ == (14423i32)) {
                    if (stdgo._internal.internal.cpu.Cpu__options._options[(_i_14404 : stdgo.GoInt)].name == (_key_13980)) {
                        _gotoNext = 14454i32;
                    } else {
                        _gotoNext = 14404i32;
                    };
                } else if (__value__ == (14454i32)) {
                    stdgo._internal.internal.cpu.Cpu__options._options[(_i_14404 : stdgo.GoInt)].specified = true;
                    stdgo._internal.internal.cpu.Cpu__options._options[(_i_14404 : stdgo.GoInt)].enable = _enable_14046;
                    _gotoNext = 13654i32;
                } else if (__value__ == (14544i32)) {
                    _i_14404 = 0i32;
                    _gotoNext = 14545i32;
                } else if (__value__ == (14545i32)) {
                    if (_i_14404 < (stdgo._internal.internal.cpu.Cpu__options._options.length)) {
                        _gotoNext = 14423i32;
                    } else {
                        _gotoNext = 14550i32;
                    };
                } else if (__value__ == (14550i32)) {
                    stdgo.Go.print(("GODEBUG: unknown cpu feature \"" : stdgo.GoString), _key_13980, ("\"\n" : stdgo.GoString));
                    _gotoNext = 13654i32;
                } else if (__value__ == (14609i32)) {
                    if ((0i32 : stdgo.GoInt) < (stdgo._internal.internal.cpu.Cpu__options._options.length)) {
                        _gotoNext = 14822i32;
                    } else {
                        _gotoNext = 14825i32;
                    };
                } else if (__value__ == (14635i32)) {
                    _o_14616 = stdgo._internal.internal.cpu.Cpu__options._options[(_i_14621_0 : stdgo.GoInt)];
                    if (!_o_14616.specified) {
                        _gotoNext = 14655i32;
                    } else {
                        _gotoNext = 14676i32;
                    };
                } else if (__value__ == (14655i32)) {
                    _i_14621_0++;
                    _gotoNext = 14823i32;
                } else if (__value__ == (14676i32)) {
                    if ((_o_14616.enable && !_o_14616.feature.value : Bool)) {
                        _gotoNext = 14703i32;
                    } else {
                        _gotoNext = 14800i32;
                    };
                } else if (__value__ == (14703i32)) {
                    stdgo.Go.print(("GODEBUG: can not enable \"" : stdgo.GoString), _o_14616.name, ("\", missing CPU support\n" : stdgo.GoString));
                    _i_14621_0++;
                    _gotoNext = 14823i32;
                } else if (__value__ == (14800i32)) {
                    _o_14616.feature.value = _o_14616.enable;
                    _i_14621_0++;
                    _gotoNext = 14823i32;
                } else if (__value__ == (14822i32)) {
                    {
                        final __tmp__0 = 0i32;
                        final __tmp__1 = stdgo._internal.internal.cpu.Cpu__options._options[(0i32 : stdgo.GoInt)];
                        _i_14621_0 = __tmp__0;
                        _o_14616 = __tmp__1;
                    };
                    _gotoNext = 14823i32;
                } else if (__value__ == (14823i32)) {
                    if (_i_14621_0 < (stdgo._internal.internal.cpu.Cpu__options._options.length)) {
                        _gotoNext = 14635i32;
                    } else {
                        _gotoNext = 14825i32;
                    };
                } else if (__value__ == (14825i32)) {
                    _gotoNext = -1i32;
                };
            };
        };
    }
