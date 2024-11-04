package stdgo._internal.internal.cpu;
function _processOptions(_env:stdgo.GoString):Void {
        var _i_14174_0:stdgo.GoInt = (0 : stdgo.GoInt);
        var _value_13550:stdgo.GoString = ("" : stdgo.GoString);
        var _key_13545:stdgo.GoString = ("" : stdgo.GoString);
        var _field_13237:stdgo.GoString = ("" : stdgo.GoString);
        var _fieldBreak = false;
        var _o_14181:stdgo._internal.internal.cpu.Cpu_T_option.T_option = ({} : stdgo._internal.internal.cpu.Cpu_T_option.T_option);
        var _i_13969:stdgo.GoInt = (0 : stdgo.GoInt);
        var _i_13851:stdgo.GoInt = (0 : stdgo.GoInt);
        var _enable_13611:Bool = false;
        var _i_13251:stdgo.GoInt = (0 : stdgo.GoInt);
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    _gotoNext = 13211i32;
                } else if (__value__ == (13211i32)) {
                    var __blank__ = 0i32;
                    _fieldBreak = false;
                    _gotoNext = 13219i32;
                } else if (__value__ == (13219i32)) {
                    if (!_fieldBreak && (_env != stdgo.Go.str())) {
                        _gotoNext = 13233i32;
                    } else {
                        _gotoNext = 14174i32;
                    };
                } else if (__value__ == (13233i32)) {
                    _field_13237 = stdgo.Go.str()?.__copy__();
                    _i_13251 = stdgo._internal.internal.cpu.Cpu__indexByte._indexByte(_env?.__copy__(), (44 : stdgo.GoUInt8));
                    if ((_i_13251 < (0 : stdgo.GoInt) : Bool)) {
                        _gotoNext = 13287i32;
                    } else {
                        _gotoNext = 13322i32;
                    };
                } else if (__value__ == (13287i32)) {
                    {
                        final __tmp__0 = _env?.__copy__();
                        final __tmp__1 = stdgo.Go.str()?.__copy__();
                        _field_13237 = __tmp__0;
                        _env = __tmp__1;
                    };
                    _gotoNext = 13365i32;
                } else if (__value__ == (13322i32)) {
                    {
                        final __tmp__0 = (_env.__slice__(0, _i_13251) : stdgo.GoString)?.__copy__();
                        final __tmp__1 = (_env.__slice__((_i_13251 + (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        _field_13237 = __tmp__0;
                        _env = __tmp__1;
                    };
                    _gotoNext = 13365i32;
                } else if (__value__ == (13365i32)) {
                    if ((((_field_13237.length) < (4 : stdgo.GoInt) : Bool) || ((_field_13237.__slice__(0, (4 : stdgo.GoInt)) : stdgo.GoString) != ("cpu." : stdgo.GoString)) : Bool)) {
                        _gotoNext = 13406i32;
                    } else {
                        _gotoNext = 13426i32;
                    };
                } else if (__value__ == (13406i32)) {
                    var __blank__ = 0i32;
                    _gotoNext = 13219i32;
                } else if (__value__ == (13426i32)) {
                    _i_13251 = stdgo._internal.internal.cpu.Cpu__indexByte._indexByte(_field_13237?.__copy__(), (61 : stdgo.GoUInt8));
                    if ((_i_13251 < (0 : stdgo.GoInt) : Bool)) {
                        _gotoNext = 13463i32;
                    } else {
                        _gotoNext = 13545i32;
                    };
                } else if (__value__ == (13463i32)) {
                    stdgo.Go.print(("GODEBUG: no value specified for \"" : stdgo.GoString), _field_13237, ("\"\n" : stdgo.GoString));
                    var __blank__ = 0i32;
                    _gotoNext = 13219i32;
                } else if (__value__ == (13545i32)) {
                    {
                        final __tmp__0 = (_field_13237.__slice__((4 : stdgo.GoInt), _i_13251) : stdgo.GoString)?.__copy__();
                        final __tmp__1 = (_field_13237.__slice__((_i_13251 + (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        _key_13545 = __tmp__0;
                        _value_13550 = __tmp__1;
                    };
                    var __blank__ = 0i32;
                    _gotoNext = 13625i32;
                } else if (__value__ == (13625i32)) {
                    {
                        final __value__ = _value_13550;
                        if (__value__ == (("on" : stdgo.GoString))) {
                            _gotoNext = 13642i32;
                        } else if (__value__ == (("off" : stdgo.GoString))) {
                            _gotoNext = 13672i32;
                        } else {
                            _gotoNext = 13704i32;
                        };
                    };
                } else if (__value__ == (13642i32)) {
                    _enable_13611 = true;
                    _gotoNext = 13826i32;
                } else if (__value__ == (13672i32)) {
                    _enable_13611 = false;
                    _gotoNext = 13826i32;
                } else if (__value__ == (13704i32)) {
                    stdgo.Go.print(("GODEBUG: value \"" : stdgo.GoString), _value_13550, ("\" not supported for cpu option \"" : stdgo.GoString), _key_13545, ("\"\n" : stdgo.GoString));
                    _gotoNext = 13219i32;
                } else if (__value__ == (13826i32)) {
                    if (_key_13545 == (("all" : stdgo.GoString))) {
                        _gotoNext = 13842i32;
                    } else {
                        _gotoNext = 13965i32;
                    };
                } else if (__value__ == (13842i32)) {
                    if ((0i32 : stdgo.GoInt) < (stdgo._internal.internal.cpu.Cpu__options._options.length)) {
                        _gotoNext = 13937i32;
                    } else {
                        _gotoNext = 13943i32;
                    };
                } else if (__value__ == (13870i32)) {
                    stdgo._internal.internal.cpu.Cpu__options._options[(_i_13851 : stdgo.GoInt)].specified = true;
                    stdgo._internal.internal.cpu.Cpu__options._options[(_i_13851 : stdgo.GoInt)].enable = _enable_13611;
                    _i_13851++;
                    _gotoNext = 13938i32;
                } else if (__value__ == (13937i32)) {
                    _i_13851 = 0i32;
                    _gotoNext = 13938i32;
                } else if (__value__ == (13938i32)) {
                    if (_i_13851 < (stdgo._internal.internal.cpu.Cpu__options._options.length)) {
                        _gotoNext = 13870i32;
                    } else {
                        _gotoNext = 13943i32;
                    };
                } else if (__value__ == (13943i32)) {
                    _gotoNext = 13219i32;
                } else if (__value__ == (13965i32)) {
                    if ((0i32 : stdgo.GoInt) < (stdgo._internal.internal.cpu.Cpu__options._options.length)) {
                        _gotoNext = 14109i32;
                    } else {
                        _gotoNext = 14115i32;
                    };
                } else if (__value__ == (13969i32)) {
                    _i_13969++;
                    _gotoNext = 14110i32;
                } else if (__value__ == (13988i32)) {
                    if (stdgo._internal.internal.cpu.Cpu__options._options[(_i_13969 : stdgo.GoInt)].name == (_key_13545)) {
                        _gotoNext = 14019i32;
                    } else {
                        _gotoNext = 13969i32;
                    };
                } else if (__value__ == (14019i32)) {
                    stdgo._internal.internal.cpu.Cpu__options._options[(_i_13969 : stdgo.GoInt)].specified = true;
                    stdgo._internal.internal.cpu.Cpu__options._options[(_i_13969 : stdgo.GoInt)].enable = _enable_13611;
                    _gotoNext = 13219i32;
                } else if (__value__ == (14109i32)) {
                    _i_13969 = 0i32;
                    _gotoNext = 14110i32;
                } else if (__value__ == (14110i32)) {
                    if (_i_13969 < (stdgo._internal.internal.cpu.Cpu__options._options.length)) {
                        _gotoNext = 13988i32;
                    } else {
                        _gotoNext = 14115i32;
                    };
                } else if (__value__ == (14115i32)) {
                    stdgo.Go.print(("GODEBUG: unknown cpu feature \"" : stdgo.GoString), _key_13545, ("\"\n" : stdgo.GoString));
                    _gotoNext = 13219i32;
                } else if (__value__ == (14174i32)) {
                    if ((0i32 : stdgo.GoInt) < (stdgo._internal.internal.cpu.Cpu__options._options.length)) {
                        _gotoNext = 14387i32;
                    } else {
                        _gotoNext = 14390i32;
                    };
                } else if (__value__ == (14200i32)) {
                    _o_14181 = stdgo._internal.internal.cpu.Cpu__options._options[(_i_14174_0 : stdgo.GoInt)];
                    if (!_o_14181.specified) {
                        _gotoNext = 14220i32;
                    } else {
                        _gotoNext = 14241i32;
                    };
                } else if (__value__ == (14220i32)) {
                    _i_14174_0++;
                    _gotoNext = 14388i32;
                } else if (__value__ == (14241i32)) {
                    if ((_o_14181.enable && !_o_14181.feature.value : Bool)) {
                        _gotoNext = 14268i32;
                    } else {
                        _gotoNext = 14365i32;
                    };
                } else if (__value__ == (14268i32)) {
                    stdgo.Go.print(("GODEBUG: can not enable \"" : stdgo.GoString), _o_14181.name, ("\", missing CPU support\n" : stdgo.GoString));
                    _i_14174_0++;
                    _gotoNext = 14388i32;
                } else if (__value__ == (14365i32)) {
                    _o_14181.feature.value = _o_14181.enable;
                    _i_14174_0++;
                    _gotoNext = 14388i32;
                } else if (__value__ == (14387i32)) {
                    {
                        final __tmp__0 = 0i32;
                        final __tmp__1 = stdgo._internal.internal.cpu.Cpu__options._options[(0i32 : stdgo.GoInt)];
                        _i_14174_0 = __tmp__0;
                        _o_14181 = __tmp__1;
                    };
                    _gotoNext = 14388i32;
                } else if (__value__ == (14388i32)) {
                    if (_i_14174_0 < (stdgo._internal.internal.cpu.Cpu__options._options.length)) {
                        _gotoNext = 14200i32;
                    } else {
                        _gotoNext = 14390i32;
                    };
                } else if (__value__ == (14390i32)) {
                    _gotoNext = -1i32;
                };
            };
        };
    }
