package stdgo._internal.internal.cpu;
function _processOptions(_env:stdgo.GoString):Void {
        var _o_8:stdgo._internal.internal.cpu.Cpu_t_option.T_option = ({} : stdgo._internal.internal.cpu.Cpu_t_option.T_option);
        var _value_3:stdgo.GoString = ("" : stdgo.GoString);
        var _key_2:stdgo.GoString = ("" : stdgo.GoString);
        var _i_1:stdgo.GoInt = (0 : stdgo.GoInt);
        var _fieldBreak = false;
        var _iterator_285753_7:stdgo.GoInt = (0 : stdgo.GoInt);
        var _i_6:stdgo.GoInt = (0 : stdgo.GoInt);
        var _i_5:stdgo.GoInt = (0 : stdgo.GoInt);
        var _enable_4:Bool = false;
        var _field_0:stdgo.GoString = ("" : stdgo.GoString);
        var _gotoNext = 0i32;
        _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    _gotoNext = 284778i32;
                } else if (__value__ == (284778i32)) {
                    0i32;
                    _fieldBreak = false;
                    _gotoNext = 284786i32;
                } else if (__value__ == (284786i32)) {
                    if (!_fieldBreak && (_env != (stdgo.Go.str() : stdgo.GoString))) {
                        _gotoNext = 284800i32;
                    } else {
                        _gotoNext = 285741i32;
                    };
                } else if (__value__ == (284800i32)) {
                    _field_0 = (stdgo.Go.str() : stdgo.GoString)?.__copy__();
                    _i_1 = stdgo._internal.internal.cpu.Cpu__indexbyte._indexByte(_env?.__copy__(), (44 : stdgo.GoUInt8));
                    if ((_i_1 < (0 : stdgo.GoInt) : Bool)) {
                        _gotoNext = 284854i32;
                    } else {
                        _gotoNext = 284889i32;
                    };
                } else if (__value__ == (284854i32)) {
                    {
                        final __tmp__0 = _env?.__copy__();
                        final __tmp__1 = (stdgo.Go.str() : stdgo.GoString)?.__copy__();
                        _field_0 = @:binopAssign __tmp__0;
                        _env = @:binopAssign __tmp__1;
                    };
                    _gotoNext = 284932i32;
                } else if (__value__ == (284889i32)) {
                    _gotoNext = 284889i32;
                    {
                        final __tmp__0 = (_env.__slice__(0, _i_1) : stdgo.GoString)?.__copy__();
                        final __tmp__1 = (_env.__slice__((_i_1 + (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        _field_0 = @:binopAssign __tmp__0;
                        _env = @:binopAssign __tmp__1;
                    };
                    0i32;
                    _gotoNext = 284932i32;
                } else if (__value__ == (284932i32)) {
                    if ((((_field_0.length) < (4 : stdgo.GoInt) : Bool) || ((_field_0.__slice__(0, (4 : stdgo.GoInt)) : stdgo.GoString) != ("cpu." : stdgo.GoString)) : Bool)) {
                        _gotoNext = 284973i32;
                    } else {
                        _gotoNext = 284993i32;
                    };
                } else if (__value__ == (284973i32)) {
                    0i32;
                    _gotoNext = 284786i32;
                } else if (__value__ == (284993i32)) {
                    _i_1 = stdgo._internal.internal.cpu.Cpu__indexbyte._indexByte(_field_0?.__copy__(), (61 : stdgo.GoUInt8));
                    if ((_i_1 < (0 : stdgo.GoInt) : Bool)) {
                        _gotoNext = 285030i32;
                    } else {
                        _gotoNext = 285112i32;
                    };
                } else if (__value__ == (285030i32)) {
                    stdgo.Go.print(("GODEBUG: no value specified for \"" : stdgo.GoString), _field_0, ("\"\n" : stdgo.GoString));
                    0i32;
                    _gotoNext = 284786i32;
                } else if (__value__ == (285112i32)) {
                    {
                        final __tmp__0 = (_field_0.__slice__((4 : stdgo.GoInt), _i_1) : stdgo.GoString)?.__copy__();
                        final __tmp__1 = (_field_0.__slice__((_i_1 + (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        _key_2 = @:binopAssign __tmp__0;
                        _value_3 = @:binopAssign __tmp__1;
                    };
                    _gotoNext = 285192i32;
                } else if (__value__ == (285192i32)) {
                    {
                        final __value__ = _value_3;
                        if (__value__ == (("on" : stdgo.GoString))) {
                            _gotoNext = 285209i32;
                        } else if (__value__ == (("off" : stdgo.GoString))) {
                            _gotoNext = 285239i32;
                        } else {
                            _gotoNext = 285271i32;
                        };
                    };
                } else if (__value__ == (285209i32)) {
                    _enable_4 = true;
                    _gotoNext = 285393i32;
                } else if (__value__ == (285239i32)) {
                    _enable_4 = false;
                    _gotoNext = 285393i32;
                } else if (__value__ == (285271i32)) {
                    stdgo.Go.print(("GODEBUG: value \"" : stdgo.GoString), _value_3, ("\" not supported for cpu option \"" : stdgo.GoString), _key_2, ("\"\n" : stdgo.GoString));
                    _gotoNext = 284786i32;
                } else if (__value__ == (285393i32)) {
                    if (_key_2 == (("all" : stdgo.GoString))) {
                        _gotoNext = 285409i32;
                    } else {
                        _gotoNext = 285532i32;
                    };
                } else if (__value__ == (285409i32)) {
                    if ((0i32 : stdgo.GoInt) < (stdgo._internal.internal.cpu.Cpu__options._options.length)) {
                        _gotoNext = 285504i32;
                    } else {
                        _gotoNext = 285510i32;
                    };
                } else if (__value__ == (285437i32)) {
                    stdgo._internal.internal.cpu.Cpu__options._options[(_i_5 : stdgo.GoInt)].specified = true;
                    stdgo._internal.internal.cpu.Cpu__options._options[(_i_5 : stdgo.GoInt)].enable = _enable_4;
                    _i_5++;
                    _gotoNext = 285505i32;
                } else if (__value__ == (285504i32)) {
                    _i_5 = 0i32;
                    _gotoNext = 285505i32;
                } else if (__value__ == (285505i32)) {
                    if (_i_5 < (stdgo._internal.internal.cpu.Cpu__options._options.length)) {
                        _gotoNext = 285437i32;
                    } else {
                        _gotoNext = 285510i32;
                    };
                } else if (__value__ == (285510i32)) {
                    _gotoNext = 284786i32;
                } else if (__value__ == (285532i32)) {
                    if ((0i32 : stdgo.GoInt) < (stdgo._internal.internal.cpu.Cpu__options._options.length)) {
                        _gotoNext = 285676i32;
                    } else {
                        _gotoNext = 285682i32;
                    };
                } else if (__value__ == (285536i32)) {
                    _i_6++;
                    _gotoNext = 285677i32;
                } else if (__value__ == (285555i32)) {
                    if (stdgo._internal.internal.cpu.Cpu__options._options[(_i_6 : stdgo.GoInt)].name == (_key_2)) {
                        _gotoNext = 285586i32;
                    } else {
                        _gotoNext = 285536i32;
                    };
                } else if (__value__ == (285586i32)) {
                    stdgo._internal.internal.cpu.Cpu__options._options[(_i_6 : stdgo.GoInt)].specified = true;
                    stdgo._internal.internal.cpu.Cpu__options._options[(_i_6 : stdgo.GoInt)].enable = _enable_4;
                    _gotoNext = 284786i32;
                } else if (__value__ == (285676i32)) {
                    _i_6 = 0i32;
                    _gotoNext = 285677i32;
                } else if (__value__ == (285677i32)) {
                    if (_i_6 < (stdgo._internal.internal.cpu.Cpu__options._options.length)) {
                        _gotoNext = 285555i32;
                    } else {
                        _gotoNext = 285682i32;
                    };
                } else if (__value__ == (285682i32)) {
                    stdgo.Go.print(("GODEBUG: unknown cpu feature \"" : stdgo.GoString), _key_2, ("\"\n" : stdgo.GoString));
                    _gotoNext = 284786i32;
                } else if (__value__ == (285741i32)) {
                    if ((0i32 : stdgo.GoInt) < (stdgo._internal.internal.cpu.Cpu__options._options.length)) {
                        _gotoNext = 285954i32;
                    } else {
                        _gotoNext = 285957i32;
                    };
                } else if (__value__ == (285767i32)) {
                    _o_8 = stdgo._internal.internal.cpu.Cpu__options._options[(_iterator_285753_7 : stdgo.GoInt)];
                    if (!_o_8.specified) {
                        _gotoNext = 285787i32;
                    } else {
                        _gotoNext = 285808i32;
                    };
                } else if (__value__ == (285787i32)) {
                    _iterator_285753_7++;
                    _gotoNext = 285955i32;
                } else if (__value__ == (285808i32)) {
                    if ((_o_8.enable && !_o_8.feature.value : Bool)) {
                        _gotoNext = 285835i32;
                    } else {
                        _gotoNext = 285932i32;
                    };
                } else if (__value__ == (285835i32)) {
                    stdgo.Go.print(("GODEBUG: can not enable \"" : stdgo.GoString), _o_8.name, ("\", missing CPU support\n" : stdgo.GoString));
                    _iterator_285753_7++;
                    _gotoNext = 285955i32;
                } else if (__value__ == (285932i32)) {
                    _o_8.feature.value = _o_8.enable;
                    _iterator_285753_7++;
                    _gotoNext = 285955i32;
                } else if (__value__ == (285954i32)) {
                    {
                        final __tmp__0 = 0i32;
                        final __tmp__1 = stdgo._internal.internal.cpu.Cpu__options._options[(0i32 : stdgo.GoInt)];
                        _iterator_285753_7 = @:binopAssign __tmp__0;
                        _o_8 = @:binopAssign __tmp__1;
                    };
                    _gotoNext = 285955i32;
                } else if (__value__ == (285955i32)) {
                    if (_iterator_285753_7 < (stdgo._internal.internal.cpu.Cpu__options._options.length)) {
                        _gotoNext = 285767i32;
                    } else {
                        _gotoNext = 285957i32;
                    };
                } else if (__value__ == (285957i32)) {
                    _gotoNext = -1i32;
                };
            };
        };
    }
