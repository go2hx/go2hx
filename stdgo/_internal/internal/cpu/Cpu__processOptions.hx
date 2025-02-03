package stdgo._internal.internal.cpu;
function _processOptions(_env:stdgo.GoString):Void {
        var _fieldBreak = false;
        var _o_223590:stdgo._internal.internal.cpu.Cpu_T_option.T_option = ({} : stdgo._internal.internal.cpu.Cpu_T_option.T_option);
        var _enable_223020:Bool = false;
        var _value_222959:stdgo.GoString = ("" : stdgo.GoString);
        var _key_222954:stdgo.GoString = ("" : stdgo.GoString);
        var _i_222660:stdgo.GoInt = (0 : stdgo.GoInt);
        var _field_222646:stdgo.GoString = ("" : stdgo.GoString);
        var _i_223595_0:stdgo.GoInt = (0 : stdgo.GoInt);
        var _i_223378:stdgo.GoInt = (0 : stdgo.GoInt);
        var _i_223260:stdgo.GoInt = (0 : stdgo.GoInt);
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    _gotoNext = 222620i32;
                } else if (__value__ == (222620i32)) {
                    var __blank__ = 0i32;
                    _fieldBreak = false;
                    _gotoNext = 222628i32;
                } else if (__value__ == (222628i32)) {
                    if (!_fieldBreak && (_env != (stdgo.Go.str() : stdgo.GoString))) {
                        _gotoNext = 222642i32;
                    } else {
                        _gotoNext = 223583i32;
                    };
                } else if (__value__ == (222642i32)) {
                    _field_222646 = (stdgo.Go.str() : stdgo.GoString)?.__copy__();
                    _i_222660 = stdgo._internal.internal.cpu.Cpu__indexByte._indexByte(_env?.__copy__(), (44 : stdgo.GoUInt8));
                    if ((_i_222660 < (0 : stdgo.GoInt) : Bool)) {
                        _gotoNext = 222696i32;
                    } else {
                        _gotoNext = 222731i32;
                    };
                } else if (__value__ == (222696i32)) {
                    {
                        final __tmp__0 = _env?.__copy__();
                        final __tmp__1 = (stdgo.Go.str() : stdgo.GoString)?.__copy__();
                        _field_222646 = __tmp__0;
                        _env = __tmp__1;
                    };
                    _gotoNext = 222774i32;
                } else if (__value__ == (222731i32)) {
                    _gotoNext = 222731i32;
                    {
                        final __tmp__0 = (_env.__slice__(0, _i_222660) : stdgo.GoString)?.__copy__();
                        final __tmp__1 = (_env.__slice__((_i_222660 + (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        _field_222646 = __tmp__0;
                        _env = __tmp__1;
                    };
                    var __blank__ = 0i32;
                    _gotoNext = 222774i32;
                } else if (__value__ == (222774i32)) {
                    if ((((_field_222646.length) < (4 : stdgo.GoInt) : Bool) || ((_field_222646.__slice__(0, (4 : stdgo.GoInt)) : stdgo.GoString) != ("cpu." : stdgo.GoString)) : Bool)) {
                        _gotoNext = 222815i32;
                    } else {
                        _gotoNext = 222835i32;
                    };
                } else if (__value__ == (222815i32)) {
                    var __blank__ = 0i32;
                    _gotoNext = 222628i32;
                } else if (__value__ == (222835i32)) {
                    _i_222660 = stdgo._internal.internal.cpu.Cpu__indexByte._indexByte(_field_222646?.__copy__(), (61 : stdgo.GoUInt8));
                    if ((_i_222660 < (0 : stdgo.GoInt) : Bool)) {
                        _gotoNext = 222872i32;
                    } else {
                        _gotoNext = 222954i32;
                    };
                } else if (__value__ == (222872i32)) {
                    stdgo.Go.print(("GODEBUG: no value specified for \"" : stdgo.GoString), _field_222646, ("\"\n" : stdgo.GoString));
                    var __blank__ = 0i32;
                    _gotoNext = 222628i32;
                } else if (__value__ == (222954i32)) {
                    {
                        final __tmp__0 = (_field_222646.__slice__((4 : stdgo.GoInt), _i_222660) : stdgo.GoString)?.__copy__();
                        final __tmp__1 = (_field_222646.__slice__((_i_222660 + (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        _key_222954 = __tmp__0;
                        _value_222959 = __tmp__1;
                    };
                    _gotoNext = 223034i32;
                } else if (__value__ == (223034i32)) {
                    {
                        final __value__ = _value_222959;
                        if (__value__ == (("on" : stdgo.GoString))) {
                            _gotoNext = 223051i32;
                        } else if (__value__ == (("off" : stdgo.GoString))) {
                            _gotoNext = 223081i32;
                        } else {
                            _gotoNext = 223113i32;
                        };
                    };
                } else if (__value__ == (223051i32)) {
                    _enable_223020 = true;
                    _gotoNext = 223235i32;
                } else if (__value__ == (223081i32)) {
                    _enable_223020 = false;
                    _gotoNext = 223235i32;
                } else if (__value__ == (223113i32)) {
                    stdgo.Go.print(("GODEBUG: value \"" : stdgo.GoString), _value_222959, ("\" not supported for cpu option \"" : stdgo.GoString), _key_222954, ("\"\n" : stdgo.GoString));
                    _gotoNext = 222628i32;
                } else if (__value__ == (223235i32)) {
                    if (_key_222954 == (("all" : stdgo.GoString))) {
                        _gotoNext = 223251i32;
                    } else {
                        _gotoNext = 223374i32;
                    };
                } else if (__value__ == (223251i32)) {
                    if ((0i32 : stdgo.GoInt) < (stdgo._internal.internal.cpu.Cpu__options._options.length)) {
                        _gotoNext = 223346i32;
                    } else {
                        _gotoNext = 223352i32;
                    };
                } else if (__value__ == (223279i32)) {
                    stdgo._internal.internal.cpu.Cpu__options._options[(_i_223260 : stdgo.GoInt)].specified = true;
                    stdgo._internal.internal.cpu.Cpu__options._options[(_i_223260 : stdgo.GoInt)].enable = _enable_223020;
                    _i_223260++;
                    _gotoNext = 223347i32;
                } else if (__value__ == (223346i32)) {
                    _i_223260 = 0i32;
                    _gotoNext = 223347i32;
                } else if (__value__ == (223347i32)) {
                    if (_i_223260 < (stdgo._internal.internal.cpu.Cpu__options._options.length)) {
                        _gotoNext = 223279i32;
                    } else {
                        _gotoNext = 223352i32;
                    };
                } else if (__value__ == (223352i32)) {
                    _gotoNext = 222628i32;
                } else if (__value__ == (223374i32)) {
                    if ((0i32 : stdgo.GoInt) < (stdgo._internal.internal.cpu.Cpu__options._options.length)) {
                        _gotoNext = 223518i32;
                    } else {
                        _gotoNext = 223524i32;
                    };
                } else if (__value__ == (223378i32)) {
                    _i_223378++;
                    _gotoNext = 223519i32;
                } else if (__value__ == (223397i32)) {
                    if (stdgo._internal.internal.cpu.Cpu__options._options[(_i_223378 : stdgo.GoInt)].name == (_key_222954)) {
                        _gotoNext = 223428i32;
                    } else {
                        _gotoNext = 223378i32;
                    };
                } else if (__value__ == (223428i32)) {
                    stdgo._internal.internal.cpu.Cpu__options._options[(_i_223378 : stdgo.GoInt)].specified = true;
                    stdgo._internal.internal.cpu.Cpu__options._options[(_i_223378 : stdgo.GoInt)].enable = _enable_223020;
                    _gotoNext = 222628i32;
                } else if (__value__ == (223518i32)) {
                    _i_223378 = 0i32;
                    _gotoNext = 223519i32;
                } else if (__value__ == (223519i32)) {
                    if (_i_223378 < (stdgo._internal.internal.cpu.Cpu__options._options.length)) {
                        _gotoNext = 223397i32;
                    } else {
                        _gotoNext = 223524i32;
                    };
                } else if (__value__ == (223524i32)) {
                    stdgo.Go.print(("GODEBUG: unknown cpu feature \"" : stdgo.GoString), _key_222954, ("\"\n" : stdgo.GoString));
                    _gotoNext = 222628i32;
                } else if (__value__ == (223583i32)) {
                    if ((0i32 : stdgo.GoInt) < (stdgo._internal.internal.cpu.Cpu__options._options.length)) {
                        _gotoNext = 223796i32;
                    } else {
                        _gotoNext = 223799i32;
                    };
                } else if (__value__ == (223609i32)) {
                    _o_223590 = stdgo._internal.internal.cpu.Cpu__options._options[(_i_223595_0 : stdgo.GoInt)];
                    if (!_o_223590.specified) {
                        _gotoNext = 223629i32;
                    } else {
                        _gotoNext = 223650i32;
                    };
                } else if (__value__ == (223629i32)) {
                    _i_223595_0++;
                    _gotoNext = 223797i32;
                } else if (__value__ == (223650i32)) {
                    if ((_o_223590.enable && !_o_223590.feature.value : Bool)) {
                        _gotoNext = 223677i32;
                    } else {
                        _gotoNext = 223774i32;
                    };
                } else if (__value__ == (223677i32)) {
                    stdgo.Go.print(("GODEBUG: can not enable \"" : stdgo.GoString), _o_223590.name, ("\", missing CPU support\n" : stdgo.GoString));
                    _i_223595_0++;
                    _gotoNext = 223797i32;
                } else if (__value__ == (223774i32)) {
                    _o_223590.feature.value = _o_223590.enable;
                    _i_223595_0++;
                    _gotoNext = 223797i32;
                } else if (__value__ == (223796i32)) {
                    {
                        final __tmp__0 = 0i32;
                        final __tmp__1 = stdgo._internal.internal.cpu.Cpu__options._options[(0i32 : stdgo.GoInt)];
                        _i_223595_0 = __tmp__0;
                        _o_223590 = __tmp__1;
                    };
                    _gotoNext = 223797i32;
                } else if (__value__ == (223797i32)) {
                    if (_i_223595_0 < (stdgo._internal.internal.cpu.Cpu__options._options.length)) {
                        _gotoNext = 223609i32;
                    } else {
                        _gotoNext = 223799i32;
                    };
                } else if (__value__ == (223799i32)) {
                    _gotoNext = -1i32;
                };
            };
        };
    }
