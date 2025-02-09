package stdgo._internal.internal.cpu;
function _processOptions(_env:stdgo.GoString):Void {
        var _o_23355:stdgo._internal.internal.cpu.Cpu_t_option.T_option = ({} : stdgo._internal.internal.cpu.Cpu_t_option.T_option);
        var _i_23143:stdgo.GoInt = (0 : stdgo.GoInt);
        var _i_23025:stdgo.GoInt = (0 : stdgo.GoInt);
        var _value_22724:stdgo.GoString = ("" : stdgo.GoString);
        var _field_22411:stdgo.GoString = ("" : stdgo.GoString);
        var _fieldBreak = false;
        var _i_23360_0:stdgo.GoInt = (0 : stdgo.GoInt);
        var _enable_22785:Bool = false;
        var _key_22719:stdgo.GoString = ("" : stdgo.GoString);
        var _i_22425:stdgo.GoInt = (0 : stdgo.GoInt);
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    _gotoNext = 22385i32;
                } else if (__value__ == (22385i32)) {
                    var __blank__ = 0i32;
                    _fieldBreak = false;
                    _gotoNext = 22393i32;
                } else if (__value__ == (22393i32)) {
                    if (!_fieldBreak && (_env != (stdgo.Go.str() : stdgo.GoString))) {
                        _gotoNext = 22407i32;
                    } else {
                        _gotoNext = 23348i32;
                    };
                } else if (__value__ == (22407i32)) {
                    _field_22411 = (stdgo.Go.str() : stdgo.GoString)?.__copy__();
                    _i_22425 = stdgo._internal.internal.cpu.Cpu__indexbyte._indexByte(_env?.__copy__(), (44 : stdgo.GoUInt8));
                    if ((_i_22425 < (0 : stdgo.GoInt) : Bool)) {
                        _gotoNext = 22461i32;
                    } else {
                        _gotoNext = 22496i32;
                    };
                } else if (__value__ == (22461i32)) {
                    {
                        final __tmp__0 = _env?.__copy__();
                        final __tmp__1 = (stdgo.Go.str() : stdgo.GoString)?.__copy__();
                        _field_22411 = __tmp__0;
                        _env = __tmp__1;
                    };
                    _gotoNext = 22539i32;
                } else if (__value__ == (22496i32)) {
                    _gotoNext = 22496i32;
                    {
                        final __tmp__0 = (_env.__slice__(0, _i_22425) : stdgo.GoString)?.__copy__();
                        final __tmp__1 = (_env.__slice__((_i_22425 + (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        _field_22411 = __tmp__0;
                        _env = __tmp__1;
                    };
                    var __blank__ = 0i32;
                    _gotoNext = 22539i32;
                } else if (__value__ == (22539i32)) {
                    if ((((_field_22411.length) < (4 : stdgo.GoInt) : Bool) || ((_field_22411.__slice__(0, (4 : stdgo.GoInt)) : stdgo.GoString) != ("cpu." : stdgo.GoString)) : Bool)) {
                        _gotoNext = 22580i32;
                    } else {
                        _gotoNext = 22600i32;
                    };
                } else if (__value__ == (22580i32)) {
                    var __blank__ = 0i32;
                    _gotoNext = 22393i32;
                } else if (__value__ == (22600i32)) {
                    _i_22425 = stdgo._internal.internal.cpu.Cpu__indexbyte._indexByte(_field_22411?.__copy__(), (61 : stdgo.GoUInt8));
                    if ((_i_22425 < (0 : stdgo.GoInt) : Bool)) {
                        _gotoNext = 22637i32;
                    } else {
                        _gotoNext = 22719i32;
                    };
                } else if (__value__ == (22637i32)) {
                    stdgo.Go.print(("GODEBUG: no value specified for \"" : stdgo.GoString), _field_22411, ("\"\n" : stdgo.GoString));
                    var __blank__ = 0i32;
                    _gotoNext = 22393i32;
                } else if (__value__ == (22719i32)) {
                    {
                        final __tmp__0 = (_field_22411.__slice__((4 : stdgo.GoInt), _i_22425) : stdgo.GoString)?.__copy__();
                        final __tmp__1 = (_field_22411.__slice__((_i_22425 + (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        _key_22719 = __tmp__0;
                        _value_22724 = __tmp__1;
                    };
                    _gotoNext = 22799i32;
                } else if (__value__ == (22799i32)) {
                    {
                        final __value__ = _value_22724;
                        if (__value__ == (("on" : stdgo.GoString))) {
                            _gotoNext = 22816i32;
                        } else if (__value__ == (("off" : stdgo.GoString))) {
                            _gotoNext = 22846i32;
                        } else {
                            _gotoNext = 22878i32;
                        };
                    };
                } else if (__value__ == (22816i32)) {
                    _enable_22785 = true;
                    _gotoNext = 23000i32;
                } else if (__value__ == (22846i32)) {
                    _enable_22785 = false;
                    _gotoNext = 23000i32;
                } else if (__value__ == (22878i32)) {
                    stdgo.Go.print(("GODEBUG: value \"" : stdgo.GoString), _value_22724, ("\" not supported for cpu option \"" : stdgo.GoString), _key_22719, ("\"\n" : stdgo.GoString));
                    _gotoNext = 22393i32;
                } else if (__value__ == (23000i32)) {
                    if (_key_22719 == (("all" : stdgo.GoString))) {
                        _gotoNext = 23016i32;
                    } else {
                        _gotoNext = 23139i32;
                    };
                } else if (__value__ == (23016i32)) {
                    if ((0i32 : stdgo.GoInt) < (stdgo._internal.internal.cpu.Cpu__options._options.length)) {
                        _gotoNext = 23111i32;
                    } else {
                        _gotoNext = 23117i32;
                    };
                } else if (__value__ == (23044i32)) {
                    stdgo._internal.internal.cpu.Cpu__options._options[(_i_23025 : stdgo.GoInt)].specified = true;
                    stdgo._internal.internal.cpu.Cpu__options._options[(_i_23025 : stdgo.GoInt)].enable = _enable_22785;
                    _i_23025++;
                    _gotoNext = 23112i32;
                } else if (__value__ == (23111i32)) {
                    _i_23025 = 0i32;
                    _gotoNext = 23112i32;
                } else if (__value__ == (23112i32)) {
                    if (_i_23025 < (stdgo._internal.internal.cpu.Cpu__options._options.length)) {
                        _gotoNext = 23044i32;
                    } else {
                        _gotoNext = 23117i32;
                    };
                } else if (__value__ == (23117i32)) {
                    _gotoNext = 22393i32;
                } else if (__value__ == (23139i32)) {
                    if ((0i32 : stdgo.GoInt) < (stdgo._internal.internal.cpu.Cpu__options._options.length)) {
                        _gotoNext = 23283i32;
                    } else {
                        _gotoNext = 23289i32;
                    };
                } else if (__value__ == (23143i32)) {
                    _i_23143++;
                    _gotoNext = 23284i32;
                } else if (__value__ == (23162i32)) {
                    if (stdgo._internal.internal.cpu.Cpu__options._options[(_i_23143 : stdgo.GoInt)].name == (_key_22719)) {
                        _gotoNext = 23193i32;
                    } else {
                        _gotoNext = 23143i32;
                    };
                } else if (__value__ == (23193i32)) {
                    stdgo._internal.internal.cpu.Cpu__options._options[(_i_23143 : stdgo.GoInt)].specified = true;
                    stdgo._internal.internal.cpu.Cpu__options._options[(_i_23143 : stdgo.GoInt)].enable = _enable_22785;
                    _gotoNext = 22393i32;
                } else if (__value__ == (23283i32)) {
                    _i_23143 = 0i32;
                    _gotoNext = 23284i32;
                } else if (__value__ == (23284i32)) {
                    if (_i_23143 < (stdgo._internal.internal.cpu.Cpu__options._options.length)) {
                        _gotoNext = 23162i32;
                    } else {
                        _gotoNext = 23289i32;
                    };
                } else if (__value__ == (23289i32)) {
                    stdgo.Go.print(("GODEBUG: unknown cpu feature \"" : stdgo.GoString), _key_22719, ("\"\n" : stdgo.GoString));
                    _gotoNext = 22393i32;
                } else if (__value__ == (23348i32)) {
                    if ((0i32 : stdgo.GoInt) < (stdgo._internal.internal.cpu.Cpu__options._options.length)) {
                        _gotoNext = 23561i32;
                    } else {
                        _gotoNext = 23564i32;
                    };
                } else if (__value__ == (23374i32)) {
                    _o_23355 = stdgo._internal.internal.cpu.Cpu__options._options[(_i_23360_0 : stdgo.GoInt)];
                    if (!_o_23355.specified) {
                        _gotoNext = 23394i32;
                    } else {
                        _gotoNext = 23415i32;
                    };
                } else if (__value__ == (23394i32)) {
                    _i_23360_0++;
                    _gotoNext = 23562i32;
                } else if (__value__ == (23415i32)) {
                    if ((_o_23355.enable && !_o_23355.feature.value : Bool)) {
                        _gotoNext = 23442i32;
                    } else {
                        _gotoNext = 23539i32;
                    };
                } else if (__value__ == (23442i32)) {
                    stdgo.Go.print(("GODEBUG: can not enable \"" : stdgo.GoString), _o_23355.name, ("\", missing CPU support\n" : stdgo.GoString));
                    _i_23360_0++;
                    _gotoNext = 23562i32;
                } else if (__value__ == (23539i32)) {
                    _o_23355.feature.value = _o_23355.enable;
                    _i_23360_0++;
                    _gotoNext = 23562i32;
                } else if (__value__ == (23561i32)) {
                    {
                        final __tmp__0 = 0i32;
                        final __tmp__1 = stdgo._internal.internal.cpu.Cpu__options._options[(0i32 : stdgo.GoInt)];
                        _i_23360_0 = __tmp__0;
                        _o_23355 = __tmp__1;
                    };
                    _gotoNext = 23562i32;
                } else if (__value__ == (23562i32)) {
                    if (_i_23360_0 < (stdgo._internal.internal.cpu.Cpu__options._options.length)) {
                        _gotoNext = 23374i32;
                    } else {
                        _gotoNext = 23564i32;
                    };
                } else if (__value__ == (23564i32)) {
                    _gotoNext = -1i32;
                };
            };
        };
    }
