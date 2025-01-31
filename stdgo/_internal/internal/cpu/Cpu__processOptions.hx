package stdgo._internal.internal.cpu;
function _processOptions(_env:stdgo.GoString):Void {
        var _i_254456_0:stdgo.GoInt = (0 : stdgo.GoInt);
        var _i_254121:stdgo.GoInt = (0 : stdgo.GoInt);
        var _enable_253881:Bool = false;
        var _key_253815:stdgo.GoString = ("" : stdgo.GoString);
        var _i_253521:stdgo.GoInt = (0 : stdgo.GoInt);
        var _o_254451:stdgo._internal.internal.cpu.Cpu_T_option.T_option = ({} : stdgo._internal.internal.cpu.Cpu_T_option.T_option);
        var _i_254239:stdgo.GoInt = (0 : stdgo.GoInt);
        var _value_253820:stdgo.GoString = ("" : stdgo.GoString);
        var _field_253507:stdgo.GoString = ("" : stdgo.GoString);
        var _fieldBreak = false;
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    _gotoNext = 253481i32;
                } else if (__value__ == (253481i32)) {
                    var __blank__ = 0i32;
                    _fieldBreak = false;
                    _gotoNext = 253489i32;
                } else if (__value__ == (253489i32)) {
                    if (!_fieldBreak && (_env != stdgo.Go.str())) {
                        _gotoNext = 253503i32;
                    } else {
                        _gotoNext = 254444i32;
                    };
                } else if (__value__ == (253503i32)) {
                    _field_253507 = stdgo.Go.str()?.__copy__();
                    _i_253521 = stdgo._internal.internal.cpu.Cpu__indexByte._indexByte(_env?.__copy__(), (44 : stdgo.GoUInt8));
                    if ((_i_253521 < (0 : stdgo.GoInt) : Bool)) {
                        _gotoNext = 253557i32;
                    } else {
                        _gotoNext = 253592i32;
                    };
                } else if (__value__ == (253557i32)) {
                    {
                        final __tmp__0 = _env?.__copy__();
                        final __tmp__1 = stdgo.Go.str()?.__copy__();
                        _field_253507 = __tmp__0;
                        _env = __tmp__1;
                    };
                    _gotoNext = 253635i32;
                } else if (__value__ == (253592i32)) {
                    _gotoNext = 253592i32;
                    {
                        final __tmp__0 = (_env.__slice__(0, _i_253521) : stdgo.GoString)?.__copy__();
                        final __tmp__1 = (_env.__slice__((_i_253521 + (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        _field_253507 = __tmp__0;
                        _env = __tmp__1;
                    };
                    var __blank__ = 0i32;
                    _gotoNext = 253635i32;
                } else if (__value__ == (253635i32)) {
                    if ((((_field_253507.length) < (4 : stdgo.GoInt) : Bool) || ((_field_253507.__slice__(0, (4 : stdgo.GoInt)) : stdgo.GoString) != ("cpu." : stdgo.GoString)) : Bool)) {
                        _gotoNext = 253676i32;
                    } else {
                        _gotoNext = 253696i32;
                    };
                } else if (__value__ == (253676i32)) {
                    var __blank__ = 0i32;
                    _gotoNext = 253489i32;
                } else if (__value__ == (253696i32)) {
                    _i_253521 = stdgo._internal.internal.cpu.Cpu__indexByte._indexByte(_field_253507?.__copy__(), (61 : stdgo.GoUInt8));
                    if ((_i_253521 < (0 : stdgo.GoInt) : Bool)) {
                        _gotoNext = 253733i32;
                    } else {
                        _gotoNext = 253815i32;
                    };
                } else if (__value__ == (253733i32)) {
                    stdgo.Go.print(("GODEBUG: no value specified for \"" : stdgo.GoString), _field_253507, ("\"\n" : stdgo.GoString));
                    var __blank__ = 0i32;
                    _gotoNext = 253489i32;
                } else if (__value__ == (253815i32)) {
                    {
                        final __tmp__0 = (_field_253507.__slice__((4 : stdgo.GoInt), _i_253521) : stdgo.GoString)?.__copy__();
                        final __tmp__1 = (_field_253507.__slice__((_i_253521 + (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        _key_253815 = __tmp__0;
                        _value_253820 = __tmp__1;
                    };
                    _gotoNext = 253895i32;
                } else if (__value__ == (253895i32)) {
                    {
                        final __value__ = _value_253820;
                        if (__value__ == (("on" : stdgo.GoString))) {
                            _gotoNext = 253912i32;
                        } else if (__value__ == (("off" : stdgo.GoString))) {
                            _gotoNext = 253942i32;
                        } else {
                            _gotoNext = 253974i32;
                        };
                    };
                } else if (__value__ == (253912i32)) {
                    _enable_253881 = true;
                    _gotoNext = 254096i32;
                } else if (__value__ == (253942i32)) {
                    _enable_253881 = false;
                    _gotoNext = 254096i32;
                } else if (__value__ == (253974i32)) {
                    stdgo.Go.print(("GODEBUG: value \"" : stdgo.GoString), _value_253820, ("\" not supported for cpu option \"" : stdgo.GoString), _key_253815, ("\"\n" : stdgo.GoString));
                    _gotoNext = 253489i32;
                } else if (__value__ == (254096i32)) {
                    if (_key_253815 == (("all" : stdgo.GoString))) {
                        _gotoNext = 254112i32;
                    } else {
                        _gotoNext = 254235i32;
                    };
                } else if (__value__ == (254112i32)) {
                    if ((0i32 : stdgo.GoInt) < (stdgo._internal.internal.cpu.Cpu__options._options.length)) {
                        _gotoNext = 254207i32;
                    } else {
                        _gotoNext = 254213i32;
                    };
                } else if (__value__ == (254140i32)) {
                    stdgo._internal.internal.cpu.Cpu__options._options[(_i_254121 : stdgo.GoInt)].specified = true;
                    stdgo._internal.internal.cpu.Cpu__options._options[(_i_254121 : stdgo.GoInt)].enable = _enable_253881;
                    _i_254121++;
                    _gotoNext = 254208i32;
                } else if (__value__ == (254207i32)) {
                    _i_254121 = 0i32;
                    _gotoNext = 254208i32;
                } else if (__value__ == (254208i32)) {
                    if (_i_254121 < (stdgo._internal.internal.cpu.Cpu__options._options.length)) {
                        _gotoNext = 254140i32;
                    } else {
                        _gotoNext = 254213i32;
                    };
                } else if (__value__ == (254213i32)) {
                    _gotoNext = 253489i32;
                } else if (__value__ == (254235i32)) {
                    if ((0i32 : stdgo.GoInt) < (stdgo._internal.internal.cpu.Cpu__options._options.length)) {
                        _gotoNext = 254379i32;
                    } else {
                        _gotoNext = 254385i32;
                    };
                } else if (__value__ == (254239i32)) {
                    _i_254239++;
                    _gotoNext = 254380i32;
                } else if (__value__ == (254258i32)) {
                    if (stdgo._internal.internal.cpu.Cpu__options._options[(_i_254239 : stdgo.GoInt)].name == (_key_253815)) {
                        _gotoNext = 254289i32;
                    } else {
                        _gotoNext = 254239i32;
                    };
                } else if (__value__ == (254289i32)) {
                    stdgo._internal.internal.cpu.Cpu__options._options[(_i_254239 : stdgo.GoInt)].specified = true;
                    stdgo._internal.internal.cpu.Cpu__options._options[(_i_254239 : stdgo.GoInt)].enable = _enable_253881;
                    _gotoNext = 253489i32;
                } else if (__value__ == (254379i32)) {
                    _i_254239 = 0i32;
                    _gotoNext = 254380i32;
                } else if (__value__ == (254380i32)) {
                    if (_i_254239 < (stdgo._internal.internal.cpu.Cpu__options._options.length)) {
                        _gotoNext = 254258i32;
                    } else {
                        _gotoNext = 254385i32;
                    };
                } else if (__value__ == (254385i32)) {
                    stdgo.Go.print(("GODEBUG: unknown cpu feature \"" : stdgo.GoString), _key_253815, ("\"\n" : stdgo.GoString));
                    _gotoNext = 253489i32;
                } else if (__value__ == (254444i32)) {
                    if ((0i32 : stdgo.GoInt) < (stdgo._internal.internal.cpu.Cpu__options._options.length)) {
                        _gotoNext = 254657i32;
                    } else {
                        _gotoNext = 254660i32;
                    };
                } else if (__value__ == (254470i32)) {
                    _o_254451 = stdgo._internal.internal.cpu.Cpu__options._options[(_i_254456_0 : stdgo.GoInt)];
                    if (!_o_254451.specified) {
                        _gotoNext = 254490i32;
                    } else {
                        _gotoNext = 254511i32;
                    };
                } else if (__value__ == (254490i32)) {
                    _i_254456_0++;
                    _gotoNext = 254658i32;
                } else if (__value__ == (254511i32)) {
                    if ((_o_254451.enable && !_o_254451.feature.value : Bool)) {
                        _gotoNext = 254538i32;
                    } else {
                        _gotoNext = 254635i32;
                    };
                } else if (__value__ == (254538i32)) {
                    stdgo.Go.print(("GODEBUG: can not enable \"" : stdgo.GoString), _o_254451.name, ("\", missing CPU support\n" : stdgo.GoString));
                    _i_254456_0++;
                    _gotoNext = 254658i32;
                } else if (__value__ == (254635i32)) {
                    _o_254451.feature.value = _o_254451.enable;
                    _i_254456_0++;
                    _gotoNext = 254658i32;
                } else if (__value__ == (254657i32)) {
                    {
                        final __tmp__0 = 0i32;
                        final __tmp__1 = stdgo._internal.internal.cpu.Cpu__options._options[(0i32 : stdgo.GoInt)];
                        _i_254456_0 = __tmp__0;
                        _o_254451 = __tmp__1;
                    };
                    _gotoNext = 254658i32;
                } else if (__value__ == (254658i32)) {
                    if (_i_254456_0 < (stdgo._internal.internal.cpu.Cpu__options._options.length)) {
                        _gotoNext = 254470i32;
                    } else {
                        _gotoNext = 254660i32;
                    };
                } else if (__value__ == (254660i32)) {
                    _gotoNext = -1i32;
                };
            };
        };
    }
