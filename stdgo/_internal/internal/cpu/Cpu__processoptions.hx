package stdgo._internal.internal.cpu;
function _processOptions(_env:stdgo.GoString):Void {
        var _o_65508:stdgo._internal.internal.cpu.Cpu_t_option.T_option = ({} : stdgo._internal.internal.cpu.Cpu_t_option.T_option);
        var _i_65513_0:stdgo.GoInt = (0 : stdgo.GoInt);
        var _value_64877:stdgo.GoString = ("" : stdgo.GoString);
        var _key_64872:stdgo.GoString = ("" : stdgo.GoString);
        var _i_65296:stdgo.GoInt = (0 : stdgo.GoInt);
        var _i_65178:stdgo.GoInt = (0 : stdgo.GoInt);
        var _enable_64938:Bool = false;
        var _i_64578:stdgo.GoInt = (0 : stdgo.GoInt);
        var _field_64564:stdgo.GoString = ("" : stdgo.GoString);
        var _fieldBreak = false;
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    _gotoNext = 64538i32;
                } else if (__value__ == (64538i32)) {
                    var __blank__ = 0i32;
                    _fieldBreak = false;
                    _gotoNext = 64546i32;
                } else if (__value__ == (64546i32)) {
                    if (!_fieldBreak && (_env != (stdgo.Go.str() : stdgo.GoString))) {
                        _gotoNext = 64560i32;
                    } else {
                        _gotoNext = 65501i32;
                    };
                } else if (__value__ == (64560i32)) {
                    _field_64564 = (stdgo.Go.str() : stdgo.GoString)?.__copy__();
                    _i_64578 = stdgo._internal.internal.cpu.Cpu__indexbyte._indexByte(_env?.__copy__(), (44 : stdgo.GoUInt8));
                    if ((_i_64578 < (0 : stdgo.GoInt) : Bool)) {
                        _gotoNext = 64614i32;
                    } else {
                        _gotoNext = 64649i32;
                    };
                } else if (__value__ == (64614i32)) {
                    {
                        final __tmp__0 = _env?.__copy__();
                        final __tmp__1 = (stdgo.Go.str() : stdgo.GoString)?.__copy__();
                        _field_64564 = __tmp__0;
                        _env = __tmp__1;
                    };
                    _gotoNext = 64692i32;
                } else if (__value__ == (64649i32)) {
                    _gotoNext = 64649i32;
                    {
                        final __tmp__0 = (_env.__slice__(0, _i_64578) : stdgo.GoString)?.__copy__();
                        final __tmp__1 = (_env.__slice__((_i_64578 + (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        _field_64564 = __tmp__0;
                        _env = __tmp__1;
                    };
                    var __blank__ = 0i32;
                    _gotoNext = 64692i32;
                } else if (__value__ == (64692i32)) {
                    if ((((_field_64564.length) < (4 : stdgo.GoInt) : Bool) || ((_field_64564.__slice__(0, (4 : stdgo.GoInt)) : stdgo.GoString) != ("cpu." : stdgo.GoString)) : Bool)) {
                        _gotoNext = 64733i32;
                    } else {
                        _gotoNext = 64753i32;
                    };
                } else if (__value__ == (64733i32)) {
                    var __blank__ = 0i32;
                    _gotoNext = 64546i32;
                } else if (__value__ == (64753i32)) {
                    _i_64578 = stdgo._internal.internal.cpu.Cpu__indexbyte._indexByte(_field_64564?.__copy__(), (61 : stdgo.GoUInt8));
                    if ((_i_64578 < (0 : stdgo.GoInt) : Bool)) {
                        _gotoNext = 64790i32;
                    } else {
                        _gotoNext = 64872i32;
                    };
                } else if (__value__ == (64790i32)) {
                    stdgo.Go.print(("GODEBUG: no value specified for \"" : stdgo.GoString), _field_64564, ("\"\n" : stdgo.GoString));
                    var __blank__ = 0i32;
                    _gotoNext = 64546i32;
                } else if (__value__ == (64872i32)) {
                    {
                        final __tmp__0 = (_field_64564.__slice__((4 : stdgo.GoInt), _i_64578) : stdgo.GoString)?.__copy__();
                        final __tmp__1 = (_field_64564.__slice__((_i_64578 + (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        _key_64872 = __tmp__0;
                        _value_64877 = __tmp__1;
                    };
                    _gotoNext = 64952i32;
                } else if (__value__ == (64952i32)) {
                    {
                        final __value__ = _value_64877;
                        if (__value__ == (("on" : stdgo.GoString))) {
                            _gotoNext = 64969i32;
                        } else if (__value__ == (("off" : stdgo.GoString))) {
                            _gotoNext = 64999i32;
                        } else {
                            _gotoNext = 65031i32;
                        };
                    };
                } else if (__value__ == (64969i32)) {
                    _enable_64938 = true;
                    _gotoNext = 65153i32;
                } else if (__value__ == (64999i32)) {
                    _enable_64938 = false;
                    _gotoNext = 65153i32;
                } else if (__value__ == (65031i32)) {
                    stdgo.Go.print(("GODEBUG: value \"" : stdgo.GoString), _value_64877, ("\" not supported for cpu option \"" : stdgo.GoString), _key_64872, ("\"\n" : stdgo.GoString));
                    _gotoNext = 64546i32;
                } else if (__value__ == (65153i32)) {
                    if (_key_64872 == (("all" : stdgo.GoString))) {
                        _gotoNext = 65169i32;
                    } else {
                        _gotoNext = 65292i32;
                    };
                } else if (__value__ == (65169i32)) {
                    if ((0i32 : stdgo.GoInt) < (stdgo._internal.internal.cpu.Cpu__options._options.length)) {
                        _gotoNext = 65264i32;
                    } else {
                        _gotoNext = 65270i32;
                    };
                } else if (__value__ == (65197i32)) {
                    stdgo._internal.internal.cpu.Cpu__options._options[(_i_65178 : stdgo.GoInt)].specified = true;
                    stdgo._internal.internal.cpu.Cpu__options._options[(_i_65178 : stdgo.GoInt)].enable = _enable_64938;
                    _i_65178++;
                    _gotoNext = 65265i32;
                } else if (__value__ == (65264i32)) {
                    _i_65178 = 0i32;
                    _gotoNext = 65265i32;
                } else if (__value__ == (65265i32)) {
                    if (_i_65178 < (stdgo._internal.internal.cpu.Cpu__options._options.length)) {
                        _gotoNext = 65197i32;
                    } else {
                        _gotoNext = 65270i32;
                    };
                } else if (__value__ == (65270i32)) {
                    _gotoNext = 64546i32;
                } else if (__value__ == (65292i32)) {
                    if ((0i32 : stdgo.GoInt) < (stdgo._internal.internal.cpu.Cpu__options._options.length)) {
                        _gotoNext = 65436i32;
                    } else {
                        _gotoNext = 65442i32;
                    };
                } else if (__value__ == (65296i32)) {
                    _i_65296++;
                    _gotoNext = 65437i32;
                } else if (__value__ == (65315i32)) {
                    if (stdgo._internal.internal.cpu.Cpu__options._options[(_i_65296 : stdgo.GoInt)].name == (_key_64872)) {
                        _gotoNext = 65346i32;
                    } else {
                        _gotoNext = 65296i32;
                    };
                } else if (__value__ == (65346i32)) {
                    stdgo._internal.internal.cpu.Cpu__options._options[(_i_65296 : stdgo.GoInt)].specified = true;
                    stdgo._internal.internal.cpu.Cpu__options._options[(_i_65296 : stdgo.GoInt)].enable = _enable_64938;
                    _gotoNext = 64546i32;
                } else if (__value__ == (65436i32)) {
                    _i_65296 = 0i32;
                    _gotoNext = 65437i32;
                } else if (__value__ == (65437i32)) {
                    if (_i_65296 < (stdgo._internal.internal.cpu.Cpu__options._options.length)) {
                        _gotoNext = 65315i32;
                    } else {
                        _gotoNext = 65442i32;
                    };
                } else if (__value__ == (65442i32)) {
                    stdgo.Go.print(("GODEBUG: unknown cpu feature \"" : stdgo.GoString), _key_64872, ("\"\n" : stdgo.GoString));
                    _gotoNext = 64546i32;
                } else if (__value__ == (65501i32)) {
                    if ((0i32 : stdgo.GoInt) < (stdgo._internal.internal.cpu.Cpu__options._options.length)) {
                        _gotoNext = 65714i32;
                    } else {
                        _gotoNext = 65717i32;
                    };
                } else if (__value__ == (65527i32)) {
                    _o_65508 = stdgo._internal.internal.cpu.Cpu__options._options[(_i_65513_0 : stdgo.GoInt)];
                    if (!_o_65508.specified) {
                        _gotoNext = 65547i32;
                    } else {
                        _gotoNext = 65568i32;
                    };
                } else if (__value__ == (65547i32)) {
                    _i_65513_0++;
                    _gotoNext = 65715i32;
                } else if (__value__ == (65568i32)) {
                    if ((_o_65508.enable && !_o_65508.feature.value : Bool)) {
                        _gotoNext = 65595i32;
                    } else {
                        _gotoNext = 65692i32;
                    };
                } else if (__value__ == (65595i32)) {
                    stdgo.Go.print(("GODEBUG: can not enable \"" : stdgo.GoString), _o_65508.name, ("\", missing CPU support\n" : stdgo.GoString));
                    _i_65513_0++;
                    _gotoNext = 65715i32;
                } else if (__value__ == (65692i32)) {
                    _o_65508.feature.value = _o_65508.enable;
                    _i_65513_0++;
                    _gotoNext = 65715i32;
                } else if (__value__ == (65714i32)) {
                    {
                        final __tmp__0 = 0i32;
                        final __tmp__1 = stdgo._internal.internal.cpu.Cpu__options._options[(0i32 : stdgo.GoInt)];
                        _i_65513_0 = __tmp__0;
                        _o_65508 = __tmp__1;
                    };
                    _gotoNext = 65715i32;
                } else if (__value__ == (65715i32)) {
                    if (_i_65513_0 < (stdgo._internal.internal.cpu.Cpu__options._options.length)) {
                        _gotoNext = 65527i32;
                    } else {
                        _gotoNext = 65717i32;
                    };
                } else if (__value__ == (65717i32)) {
                    _gotoNext = -1i32;
                };
            };
        };
    }
