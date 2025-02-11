package stdgo._internal.internal.cpu;
function _processOptions(_env:stdgo.GoString):Void {
        var _o_31995:stdgo._internal.internal.cpu.Cpu_t_option.T_option = ({} : stdgo._internal.internal.cpu.Cpu_t_option.T_option);
        var _i_32000_0:stdgo.GoInt = (0 : stdgo.GoInt);
        var _enable_31425:Bool = false;
        var _value_31364:stdgo.GoString = ("" : stdgo.GoString);
        var _key_31359:stdgo.GoString = ("" : stdgo.GoString);
        var _fieldBreak = false;
        var _i_31783:stdgo.GoInt = (0 : stdgo.GoInt);
        var _i_31665:stdgo.GoInt = (0 : stdgo.GoInt);
        var _i_31065:stdgo.GoInt = (0 : stdgo.GoInt);
        var _field_31051:stdgo.GoString = ("" : stdgo.GoString);
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    _gotoNext = 31025i32;
                } else if (__value__ == (31025i32)) {
                    var __blank__ = 0i32;
                    _fieldBreak = false;
                    _gotoNext = 31033i32;
                } else if (__value__ == (31033i32)) {
                    if (!_fieldBreak && (_env != (stdgo.Go.str() : stdgo.GoString))) {
                        _gotoNext = 31047i32;
                    } else {
                        _gotoNext = 31988i32;
                    };
                } else if (__value__ == (31047i32)) {
                    _field_31051 = (stdgo.Go.str() : stdgo.GoString)?.__copy__();
                    _i_31065 = stdgo._internal.internal.cpu.Cpu__indexbyte._indexByte(_env?.__copy__(), (44 : stdgo.GoUInt8));
                    if ((_i_31065 < (0 : stdgo.GoInt) : Bool)) {
                        _gotoNext = 31101i32;
                    } else {
                        _gotoNext = 31136i32;
                    };
                } else if (__value__ == (31101i32)) {
                    {
                        final __tmp__0 = _env?.__copy__();
                        final __tmp__1 = (stdgo.Go.str() : stdgo.GoString)?.__copy__();
                        _field_31051 = __tmp__0;
                        _env = __tmp__1;
                    };
                    _gotoNext = 31179i32;
                } else if (__value__ == (31136i32)) {
                    _gotoNext = 31136i32;
                    {
                        final __tmp__0 = (_env.__slice__(0, _i_31065) : stdgo.GoString)?.__copy__();
                        final __tmp__1 = (_env.__slice__((_i_31065 + (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        _field_31051 = __tmp__0;
                        _env = __tmp__1;
                    };
                    var __blank__ = 0i32;
                    _gotoNext = 31179i32;
                } else if (__value__ == (31179i32)) {
                    if ((((_field_31051.length) < (4 : stdgo.GoInt) : Bool) || ((_field_31051.__slice__(0, (4 : stdgo.GoInt)) : stdgo.GoString) != ("cpu." : stdgo.GoString)) : Bool)) {
                        _gotoNext = 31220i32;
                    } else {
                        _gotoNext = 31240i32;
                    };
                } else if (__value__ == (31220i32)) {
                    var __blank__ = 0i32;
                    _gotoNext = 31033i32;
                } else if (__value__ == (31240i32)) {
                    _i_31065 = stdgo._internal.internal.cpu.Cpu__indexbyte._indexByte(_field_31051?.__copy__(), (61 : stdgo.GoUInt8));
                    if ((_i_31065 < (0 : stdgo.GoInt) : Bool)) {
                        _gotoNext = 31277i32;
                    } else {
                        _gotoNext = 31359i32;
                    };
                } else if (__value__ == (31277i32)) {
                    stdgo.Go.print(("GODEBUG: no value specified for \"" : stdgo.GoString), _field_31051, ("\"\n" : stdgo.GoString));
                    var __blank__ = 0i32;
                    _gotoNext = 31033i32;
                } else if (__value__ == (31359i32)) {
                    {
                        final __tmp__0 = (_field_31051.__slice__((4 : stdgo.GoInt), _i_31065) : stdgo.GoString)?.__copy__();
                        final __tmp__1 = (_field_31051.__slice__((_i_31065 + (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        _key_31359 = __tmp__0;
                        _value_31364 = __tmp__1;
                    };
                    _gotoNext = 31439i32;
                } else if (__value__ == (31439i32)) {
                    {
                        final __value__ = _value_31364;
                        if (__value__ == (("on" : stdgo.GoString))) {
                            _gotoNext = 31456i32;
                        } else if (__value__ == (("off" : stdgo.GoString))) {
                            _gotoNext = 31486i32;
                        } else {
                            _gotoNext = 31518i32;
                        };
                    };
                } else if (__value__ == (31456i32)) {
                    _enable_31425 = true;
                    _gotoNext = 31640i32;
                } else if (__value__ == (31486i32)) {
                    _enable_31425 = false;
                    _gotoNext = 31640i32;
                } else if (__value__ == (31518i32)) {
                    stdgo.Go.print(("GODEBUG: value \"" : stdgo.GoString), _value_31364, ("\" not supported for cpu option \"" : stdgo.GoString), _key_31359, ("\"\n" : stdgo.GoString));
                    _gotoNext = 31033i32;
                } else if (__value__ == (31640i32)) {
                    if (_key_31359 == (("all" : stdgo.GoString))) {
                        _gotoNext = 31656i32;
                    } else {
                        _gotoNext = 31779i32;
                    };
                } else if (__value__ == (31656i32)) {
                    if ((0i32 : stdgo.GoInt) < (stdgo._internal.internal.cpu.Cpu__options._options.length)) {
                        _gotoNext = 31751i32;
                    } else {
                        _gotoNext = 31757i32;
                    };
                } else if (__value__ == (31684i32)) {
                    stdgo._internal.internal.cpu.Cpu__options._options[(_i_31665 : stdgo.GoInt)].specified = true;
                    stdgo._internal.internal.cpu.Cpu__options._options[(_i_31665 : stdgo.GoInt)].enable = _enable_31425;
                    _i_31665++;
                    _gotoNext = 31752i32;
                } else if (__value__ == (31751i32)) {
                    _i_31665 = 0i32;
                    _gotoNext = 31752i32;
                } else if (__value__ == (31752i32)) {
                    if (_i_31665 < (stdgo._internal.internal.cpu.Cpu__options._options.length)) {
                        _gotoNext = 31684i32;
                    } else {
                        _gotoNext = 31757i32;
                    };
                } else if (__value__ == (31757i32)) {
                    _gotoNext = 31033i32;
                } else if (__value__ == (31779i32)) {
                    if ((0i32 : stdgo.GoInt) < (stdgo._internal.internal.cpu.Cpu__options._options.length)) {
                        _gotoNext = 31923i32;
                    } else {
                        _gotoNext = 31929i32;
                    };
                } else if (__value__ == (31783i32)) {
                    _i_31783++;
                    _gotoNext = 31924i32;
                } else if (__value__ == (31802i32)) {
                    if (stdgo._internal.internal.cpu.Cpu__options._options[(_i_31783 : stdgo.GoInt)].name == (_key_31359)) {
                        _gotoNext = 31833i32;
                    } else {
                        _gotoNext = 31783i32;
                    };
                } else if (__value__ == (31833i32)) {
                    stdgo._internal.internal.cpu.Cpu__options._options[(_i_31783 : stdgo.GoInt)].specified = true;
                    stdgo._internal.internal.cpu.Cpu__options._options[(_i_31783 : stdgo.GoInt)].enable = _enable_31425;
                    _gotoNext = 31033i32;
                } else if (__value__ == (31923i32)) {
                    _i_31783 = 0i32;
                    _gotoNext = 31924i32;
                } else if (__value__ == (31924i32)) {
                    if (_i_31783 < (stdgo._internal.internal.cpu.Cpu__options._options.length)) {
                        _gotoNext = 31802i32;
                    } else {
                        _gotoNext = 31929i32;
                    };
                } else if (__value__ == (31929i32)) {
                    stdgo.Go.print(("GODEBUG: unknown cpu feature \"" : stdgo.GoString), _key_31359, ("\"\n" : stdgo.GoString));
                    _gotoNext = 31033i32;
                } else if (__value__ == (31988i32)) {
                    if ((0i32 : stdgo.GoInt) < (stdgo._internal.internal.cpu.Cpu__options._options.length)) {
                        _gotoNext = 32201i32;
                    } else {
                        _gotoNext = 32204i32;
                    };
                } else if (__value__ == (32014i32)) {
                    _o_31995 = stdgo._internal.internal.cpu.Cpu__options._options[(_i_32000_0 : stdgo.GoInt)];
                    if (!_o_31995.specified) {
                        _gotoNext = 32034i32;
                    } else {
                        _gotoNext = 32055i32;
                    };
                } else if (__value__ == (32034i32)) {
                    _i_32000_0++;
                    _gotoNext = 32202i32;
                } else if (__value__ == (32055i32)) {
                    if ((_o_31995.enable && !_o_31995.feature.value : Bool)) {
                        _gotoNext = 32082i32;
                    } else {
                        _gotoNext = 32179i32;
                    };
                } else if (__value__ == (32082i32)) {
                    stdgo.Go.print(("GODEBUG: can not enable \"" : stdgo.GoString), _o_31995.name, ("\", missing CPU support\n" : stdgo.GoString));
                    _i_32000_0++;
                    _gotoNext = 32202i32;
                } else if (__value__ == (32179i32)) {
                    _o_31995.feature.value = _o_31995.enable;
                    _i_32000_0++;
                    _gotoNext = 32202i32;
                } else if (__value__ == (32201i32)) {
                    {
                        final __tmp__0 = 0i32;
                        final __tmp__1 = stdgo._internal.internal.cpu.Cpu__options._options[(0i32 : stdgo.GoInt)];
                        _i_32000_0 = __tmp__0;
                        _o_31995 = __tmp__1;
                    };
                    _gotoNext = 32202i32;
                } else if (__value__ == (32202i32)) {
                    if (_i_32000_0 < (stdgo._internal.internal.cpu.Cpu__options._options.length)) {
                        _gotoNext = 32014i32;
                    } else {
                        _gotoNext = 32204i32;
                    };
                } else if (__value__ == (32204i32)) {
                    _gotoNext = -1i32;
                };
            };
        };
    }
