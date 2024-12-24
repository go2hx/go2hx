package stdgo._internal.internal.cpu;
function _processOptions(_env:stdgo.GoString):Void {
        var _enable_262248:Bool = false;
        var _key_262182:stdgo.GoString = ("" : stdgo.GoString);
        var _i_261888:stdgo.GoInt = (0 : stdgo.GoInt);
        var _field_261874:stdgo.GoString = ("" : stdgo.GoString);
        var _fieldBreak = false;
        var _i_262823_0:stdgo.GoInt = (0 : stdgo.GoInt);
        var _i_262606:stdgo.GoInt = (0 : stdgo.GoInt);
        var _i_262488:stdgo.GoInt = (0 : stdgo.GoInt);
        var _o_262818:stdgo._internal.internal.cpu.Cpu_T_option.T_option = ({} : stdgo._internal.internal.cpu.Cpu_T_option.T_option);
        var _value_262187:stdgo.GoString = ("" : stdgo.GoString);
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    _gotoNext = 261848i32;
                } else if (__value__ == (261848i32)) {
                    var __blank__ = 0i32;
                    _fieldBreak = false;
                    _gotoNext = 261856i32;
                } else if (__value__ == (261856i32)) {
                    if (!_fieldBreak && (_env != stdgo.Go.str())) {
                        _gotoNext = 261870i32;
                    } else {
                        _gotoNext = 262811i32;
                    };
                } else if (__value__ == (261870i32)) {
                    _field_261874 = stdgo.Go.str()?.__copy__();
                    _i_261888 = stdgo._internal.internal.cpu.Cpu__indexByte._indexByte(_env?.__copy__(), (44 : stdgo.GoUInt8));
                    if ((_i_261888 < (0 : stdgo.GoInt) : Bool)) {
                        _gotoNext = 261924i32;
                    } else {
                        _gotoNext = 261959i32;
                    };
                } else if (__value__ == (261924i32)) {
                    {
                        final __tmp__0 = _env?.__copy__();
                        final __tmp__1 = stdgo.Go.str()?.__copy__();
                        _field_261874 = __tmp__0;
                        _env = __tmp__1;
                    };
                    _gotoNext = 262002i32;
                } else if (__value__ == (261959i32)) {
                    _gotoNext = 261959i32;
                    {
                        final __tmp__0 = (_env.__slice__(0, _i_261888) : stdgo.GoString)?.__copy__();
                        final __tmp__1 = (_env.__slice__((_i_261888 + (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        _field_261874 = __tmp__0;
                        _env = __tmp__1;
                    };
                    var __blank__ = 0i32;
                    _gotoNext = 262002i32;
                } else if (__value__ == (262002i32)) {
                    if ((((_field_261874.length) < (4 : stdgo.GoInt) : Bool) || ((_field_261874.__slice__(0, (4 : stdgo.GoInt)) : stdgo.GoString) != ("cpu." : stdgo.GoString)) : Bool)) {
                        _gotoNext = 262043i32;
                    } else {
                        _gotoNext = 262063i32;
                    };
                } else if (__value__ == (262043i32)) {
                    var __blank__ = 0i32;
                    _gotoNext = 261856i32;
                } else if (__value__ == (262063i32)) {
                    _i_261888 = stdgo._internal.internal.cpu.Cpu__indexByte._indexByte(_field_261874?.__copy__(), (61 : stdgo.GoUInt8));
                    if ((_i_261888 < (0 : stdgo.GoInt) : Bool)) {
                        _gotoNext = 262100i32;
                    } else {
                        _gotoNext = 262182i32;
                    };
                } else if (__value__ == (262100i32)) {
                    stdgo.Go.print(("GODEBUG: no value specified for \"" : stdgo.GoString), _field_261874, ("\"\n" : stdgo.GoString));
                    var __blank__ = 0i32;
                    _gotoNext = 261856i32;
                } else if (__value__ == (262182i32)) {
                    {
                        final __tmp__0 = (_field_261874.__slice__((4 : stdgo.GoInt), _i_261888) : stdgo.GoString)?.__copy__();
                        final __tmp__1 = (_field_261874.__slice__((_i_261888 + (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        _key_262182 = __tmp__0;
                        _value_262187 = __tmp__1;
                    };
                    _gotoNext = 262262i32;
                } else if (__value__ == (262262i32)) {
                    {
                        final __value__ = _value_262187;
                        if (__value__ == (("on" : stdgo.GoString))) {
                            _gotoNext = 262279i32;
                        } else if (__value__ == (("off" : stdgo.GoString))) {
                            _gotoNext = 262309i32;
                        } else {
                            _gotoNext = 262341i32;
                        };
                    };
                } else if (__value__ == (262279i32)) {
                    _enable_262248 = true;
                    _gotoNext = 262463i32;
                } else if (__value__ == (262309i32)) {
                    _enable_262248 = false;
                    _gotoNext = 262463i32;
                } else if (__value__ == (262341i32)) {
                    stdgo.Go.print(("GODEBUG: value \"" : stdgo.GoString), _value_262187, ("\" not supported for cpu option \"" : stdgo.GoString), _key_262182, ("\"\n" : stdgo.GoString));
                    _gotoNext = 261856i32;
                } else if (__value__ == (262463i32)) {
                    if (_key_262182 == (("all" : stdgo.GoString))) {
                        _gotoNext = 262479i32;
                    } else {
                        _gotoNext = 262602i32;
                    };
                } else if (__value__ == (262479i32)) {
                    if ((0i32 : stdgo.GoInt) < (stdgo._internal.internal.cpu.Cpu__options._options.length)) {
                        _gotoNext = 262574i32;
                    } else {
                        _gotoNext = 262580i32;
                    };
                } else if (__value__ == (262507i32)) {
                    stdgo._internal.internal.cpu.Cpu__options._options[(_i_262488 : stdgo.GoInt)].specified = true;
                    stdgo._internal.internal.cpu.Cpu__options._options[(_i_262488 : stdgo.GoInt)].enable = _enable_262248;
                    _i_262488++;
                    _gotoNext = 262575i32;
                } else if (__value__ == (262574i32)) {
                    _i_262488 = 0i32;
                    _gotoNext = 262575i32;
                } else if (__value__ == (262575i32)) {
                    if (_i_262488 < (stdgo._internal.internal.cpu.Cpu__options._options.length)) {
                        _gotoNext = 262507i32;
                    } else {
                        _gotoNext = 262580i32;
                    };
                } else if (__value__ == (262580i32)) {
                    _gotoNext = 261856i32;
                } else if (__value__ == (262602i32)) {
                    if ((0i32 : stdgo.GoInt) < (stdgo._internal.internal.cpu.Cpu__options._options.length)) {
                        _gotoNext = 262746i32;
                    } else {
                        _gotoNext = 262752i32;
                    };
                } else if (__value__ == (262606i32)) {
                    _i_262606++;
                    _gotoNext = 262747i32;
                } else if (__value__ == (262625i32)) {
                    if (stdgo._internal.internal.cpu.Cpu__options._options[(_i_262606 : stdgo.GoInt)].name == (_key_262182)) {
                        _gotoNext = 262656i32;
                    } else {
                        _gotoNext = 262606i32;
                    };
                } else if (__value__ == (262656i32)) {
                    stdgo._internal.internal.cpu.Cpu__options._options[(_i_262606 : stdgo.GoInt)].specified = true;
                    stdgo._internal.internal.cpu.Cpu__options._options[(_i_262606 : stdgo.GoInt)].enable = _enable_262248;
                    _gotoNext = 261856i32;
                } else if (__value__ == (262746i32)) {
                    _i_262606 = 0i32;
                    _gotoNext = 262747i32;
                } else if (__value__ == (262747i32)) {
                    if (_i_262606 < (stdgo._internal.internal.cpu.Cpu__options._options.length)) {
                        _gotoNext = 262625i32;
                    } else {
                        _gotoNext = 262752i32;
                    };
                } else if (__value__ == (262752i32)) {
                    stdgo.Go.print(("GODEBUG: unknown cpu feature \"" : stdgo.GoString), _key_262182, ("\"\n" : stdgo.GoString));
                    _gotoNext = 261856i32;
                } else if (__value__ == (262811i32)) {
                    if ((0i32 : stdgo.GoInt) < (stdgo._internal.internal.cpu.Cpu__options._options.length)) {
                        _gotoNext = 263024i32;
                    } else {
                        _gotoNext = 263027i32;
                    };
                } else if (__value__ == (262837i32)) {
                    _o_262818 = stdgo._internal.internal.cpu.Cpu__options._options[(_i_262823_0 : stdgo.GoInt)];
                    if (!_o_262818.specified) {
                        _gotoNext = 262857i32;
                    } else {
                        _gotoNext = 262878i32;
                    };
                } else if (__value__ == (262857i32)) {
                    _i_262823_0++;
                    _gotoNext = 263025i32;
                } else if (__value__ == (262878i32)) {
                    if ((_o_262818.enable && !_o_262818.feature.value : Bool)) {
                        _gotoNext = 262905i32;
                    } else {
                        _gotoNext = 263002i32;
                    };
                } else if (__value__ == (262905i32)) {
                    stdgo.Go.print(("GODEBUG: can not enable \"" : stdgo.GoString), _o_262818.name, ("\", missing CPU support\n" : stdgo.GoString));
                    _i_262823_0++;
                    _gotoNext = 263025i32;
                } else if (__value__ == (263002i32)) {
                    _o_262818.feature.value = _o_262818.enable;
                    _i_262823_0++;
                    _gotoNext = 263025i32;
                } else if (__value__ == (263024i32)) {
                    {
                        final __tmp__0 = 0i32;
                        final __tmp__1 = stdgo._internal.internal.cpu.Cpu__options._options[(0i32 : stdgo.GoInt)];
                        _i_262823_0 = __tmp__0;
                        _o_262818 = __tmp__1;
                    };
                    _gotoNext = 263025i32;
                } else if (__value__ == (263025i32)) {
                    if (_i_262823_0 < (stdgo._internal.internal.cpu.Cpu__options._options.length)) {
                        _gotoNext = 262837i32;
                    } else {
                        _gotoNext = 263027i32;
                    };
                } else if (__value__ == (263027i32)) {
                    _gotoNext = -1i32;
                };
            };
        };
    }
