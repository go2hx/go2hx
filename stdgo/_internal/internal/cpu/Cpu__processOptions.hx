package stdgo._internal.internal.cpu;
function _processOptions(_env:stdgo.GoString):Void {
        var _i_30769_0:stdgo.GoInt = (0 : stdgo.GoInt);
        var _enable_30194:Bool = false;
        var _value_30133:stdgo.GoString = ("" : stdgo.GoString);
        var _key_30128:stdgo.GoString = ("" : stdgo.GoString);
        var _i_29834:stdgo.GoInt = (0 : stdgo.GoInt);
        var _fieldBreak = false;
        var _o_30764:stdgo._internal.internal.cpu.Cpu_T_option.T_option = ({} : stdgo._internal.internal.cpu.Cpu_T_option.T_option);
        var _i_30552:stdgo.GoInt = (0 : stdgo.GoInt);
        var _i_30434:stdgo.GoInt = (0 : stdgo.GoInt);
        var _field_29820:stdgo.GoString = ("" : stdgo.GoString);
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    _gotoNext = 29794i32;
                } else if (__value__ == (29794i32)) {
                    var __blank__ = 0i32;
                    _fieldBreak = false;
                    _gotoNext = 29802i32;
                } else if (__value__ == (29802i32)) {
                    if (!_fieldBreak && (_env != stdgo.Go.str())) {
                        _gotoNext = 29816i32;
                    } else {
                        _gotoNext = 30757i32;
                    };
                } else if (__value__ == (29816i32)) {
                    _field_29820 = stdgo.Go.str()?.__copy__();
                    _i_29834 = stdgo._internal.internal.cpu.Cpu__indexByte._indexByte(_env?.__copy__(), (44 : stdgo.GoUInt8));
                    if ((_i_29834 < (0 : stdgo.GoInt) : Bool)) {
                        _gotoNext = 29870i32;
                    } else {
                        _gotoNext = 29905i32;
                    };
                } else if (__value__ == (29870i32)) {
                    {
                        final __tmp__0 = _env?.__copy__();
                        final __tmp__1 = stdgo.Go.str()?.__copy__();
                        _field_29820 = __tmp__0;
                        _env = __tmp__1;
                    };
                    _gotoNext = 29948i32;
                } else if (__value__ == (29905i32)) {
                    {
                        final __tmp__0 = (_env.__slice__(0, _i_29834) : stdgo.GoString)?.__copy__();
                        final __tmp__1 = (_env.__slice__((_i_29834 + (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        _field_29820 = __tmp__0;
                        _env = __tmp__1;
                    };
                    _gotoNext = 29948i32;
                } else if (__value__ == (29948i32)) {
                    if ((((_field_29820.length) < (4 : stdgo.GoInt) : Bool) || ((_field_29820.__slice__(0, (4 : stdgo.GoInt)) : stdgo.GoString) != ("cpu." : stdgo.GoString)) : Bool)) {
                        _gotoNext = 29989i32;
                    } else {
                        _gotoNext = 30009i32;
                    };
                } else if (__value__ == (29989i32)) {
                    var __blank__ = 0i32;
                    _gotoNext = 29802i32;
                } else if (__value__ == (30009i32)) {
                    _i_29834 = stdgo._internal.internal.cpu.Cpu__indexByte._indexByte(_field_29820?.__copy__(), (61 : stdgo.GoUInt8));
                    if ((_i_29834 < (0 : stdgo.GoInt) : Bool)) {
                        _gotoNext = 30046i32;
                    } else {
                        _gotoNext = 30128i32;
                    };
                } else if (__value__ == (30046i32)) {
                    stdgo.Go.print(("GODEBUG: no value specified for \"" : stdgo.GoString), _field_29820, ("\"\n" : stdgo.GoString));
                    var __blank__ = 0i32;
                    _gotoNext = 29802i32;
                } else if (__value__ == (30128i32)) {
                    {
                        final __tmp__0 = (_field_29820.__slice__((4 : stdgo.GoInt), _i_29834) : stdgo.GoString)?.__copy__();
                        final __tmp__1 = (_field_29820.__slice__((_i_29834 + (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        _key_30128 = __tmp__0;
                        _value_30133 = __tmp__1;
                    };
                    var __blank__ = 0i32;
                    _gotoNext = 30208i32;
                } else if (__value__ == (30208i32)) {
                    {
                        final __value__ = _value_30133;
                        if (__value__ == (("on" : stdgo.GoString))) {
                            _gotoNext = 30225i32;
                        } else if (__value__ == (("off" : stdgo.GoString))) {
                            _gotoNext = 30255i32;
                        } else {
                            _gotoNext = 30287i32;
                        };
                    };
                } else if (__value__ == (30225i32)) {
                    _enable_30194 = true;
                    _gotoNext = 30409i32;
                } else if (__value__ == (30255i32)) {
                    _enable_30194 = false;
                    _gotoNext = 30409i32;
                } else if (__value__ == (30287i32)) {
                    stdgo.Go.print(("GODEBUG: value \"" : stdgo.GoString), _value_30133, ("\" not supported for cpu option \"" : stdgo.GoString), _key_30128, ("\"\n" : stdgo.GoString));
                    _gotoNext = 29802i32;
                } else if (__value__ == (30409i32)) {
                    if (_key_30128 == (("all" : stdgo.GoString))) {
                        _gotoNext = 30425i32;
                    } else {
                        _gotoNext = 30548i32;
                    };
                } else if (__value__ == (30425i32)) {
                    if ((0i32 : stdgo.GoInt) < (stdgo._internal.internal.cpu.Cpu__options._options.length)) {
                        _gotoNext = 30520i32;
                    } else {
                        _gotoNext = 30526i32;
                    };
                } else if (__value__ == (30453i32)) {
                    stdgo._internal.internal.cpu.Cpu__options._options[(_i_30434 : stdgo.GoInt)].specified = true;
                    stdgo._internal.internal.cpu.Cpu__options._options[(_i_30434 : stdgo.GoInt)].enable = _enable_30194;
                    _i_30434++;
                    _gotoNext = 30521i32;
                } else if (__value__ == (30520i32)) {
                    _i_30434 = 0i32;
                    _gotoNext = 30521i32;
                } else if (__value__ == (30521i32)) {
                    if (_i_30434 < (stdgo._internal.internal.cpu.Cpu__options._options.length)) {
                        _gotoNext = 30453i32;
                    } else {
                        _gotoNext = 30526i32;
                    };
                } else if (__value__ == (30526i32)) {
                    _gotoNext = 29802i32;
                } else if (__value__ == (30548i32)) {
                    if ((0i32 : stdgo.GoInt) < (stdgo._internal.internal.cpu.Cpu__options._options.length)) {
                        _gotoNext = 30692i32;
                    } else {
                        _gotoNext = 30698i32;
                    };
                } else if (__value__ == (30552i32)) {
                    _i_30552++;
                    _gotoNext = 30693i32;
                } else if (__value__ == (30571i32)) {
                    if (stdgo._internal.internal.cpu.Cpu__options._options[(_i_30552 : stdgo.GoInt)].name == (_key_30128)) {
                        _gotoNext = 30602i32;
                    } else {
                        _gotoNext = 30552i32;
                    };
                } else if (__value__ == (30602i32)) {
                    stdgo._internal.internal.cpu.Cpu__options._options[(_i_30552 : stdgo.GoInt)].specified = true;
                    stdgo._internal.internal.cpu.Cpu__options._options[(_i_30552 : stdgo.GoInt)].enable = _enable_30194;
                    _gotoNext = 29802i32;
                } else if (__value__ == (30692i32)) {
                    _i_30552 = 0i32;
                    _gotoNext = 30693i32;
                } else if (__value__ == (30693i32)) {
                    if (_i_30552 < (stdgo._internal.internal.cpu.Cpu__options._options.length)) {
                        _gotoNext = 30571i32;
                    } else {
                        _gotoNext = 30698i32;
                    };
                } else if (__value__ == (30698i32)) {
                    stdgo.Go.print(("GODEBUG: unknown cpu feature \"" : stdgo.GoString), _key_30128, ("\"\n" : stdgo.GoString));
                    _gotoNext = 29802i32;
                } else if (__value__ == (30757i32)) {
                    if ((0i32 : stdgo.GoInt) < (stdgo._internal.internal.cpu.Cpu__options._options.length)) {
                        _gotoNext = 30970i32;
                    } else {
                        _gotoNext = 30973i32;
                    };
                } else if (__value__ == (30783i32)) {
                    _o_30764 = stdgo._internal.internal.cpu.Cpu__options._options[(_i_30769_0 : stdgo.GoInt)];
                    if (!_o_30764.specified) {
                        _gotoNext = 30803i32;
                    } else {
                        _gotoNext = 30824i32;
                    };
                } else if (__value__ == (30803i32)) {
                    _i_30769_0++;
                    _gotoNext = 30971i32;
                } else if (__value__ == (30824i32)) {
                    if ((_o_30764.enable && !_o_30764.feature.value : Bool)) {
                        _gotoNext = 30851i32;
                    } else {
                        _gotoNext = 30948i32;
                    };
                } else if (__value__ == (30851i32)) {
                    stdgo.Go.print(("GODEBUG: can not enable \"" : stdgo.GoString), _o_30764.name, ("\", missing CPU support\n" : stdgo.GoString));
                    _i_30769_0++;
                    _gotoNext = 30971i32;
                } else if (__value__ == (30948i32)) {
                    _o_30764.feature.value = _o_30764.enable;
                    _i_30769_0++;
                    _gotoNext = 30971i32;
                } else if (__value__ == (30970i32)) {
                    {
                        final __tmp__0 = 0i32;
                        final __tmp__1 = stdgo._internal.internal.cpu.Cpu__options._options[(0i32 : stdgo.GoInt)];
                        _i_30769_0 = __tmp__0;
                        _o_30764 = __tmp__1;
                    };
                    _gotoNext = 30971i32;
                } else if (__value__ == (30971i32)) {
                    if (_i_30769_0 < (stdgo._internal.internal.cpu.Cpu__options._options.length)) {
                        _gotoNext = 30783i32;
                    } else {
                        _gotoNext = 30973i32;
                    };
                } else if (__value__ == (30973i32)) {
                    _gotoNext = -1i32;
                };
            };
        };
    }
