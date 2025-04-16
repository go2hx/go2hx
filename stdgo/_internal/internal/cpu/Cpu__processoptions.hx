package stdgo._internal.internal.cpu;
function _processOptions(_env:stdgo.GoString):Void {
        var _o_8:stdgo._internal.internal.cpu.Cpu_t_option.T_option = ({} : stdgo._internal.internal.cpu.Cpu_t_option.T_option);
        var _i_5:stdgo.GoInt = (0 : stdgo.GoInt);
        var _field_0:stdgo.GoString = ("" : stdgo.GoString);
        var _iterator_146848_7:stdgo.GoInt = (0 : stdgo.GoInt);
        var _i_6:stdgo.GoInt = (0 : stdgo.GoInt);
        var _enable_4:Bool = false;
        var _value_3:stdgo.GoString = ("" : stdgo.GoString);
        var _key_2:stdgo.GoString = ("" : stdgo.GoString);
        var _i_1:stdgo.GoInt = (0 : stdgo.GoInt);
        var _fieldBreak = false;
        var _gotoNext = 0i32;
        _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    _gotoNext = 145873i32;
                } else if (__value__ == (145873i32)) {
                    0i32;
                    _fieldBreak = false;
                    _gotoNext = 145881i32;
                } else if (__value__ == (145881i32)) {
                    if (!_fieldBreak && (_env != (stdgo.Go.str() : stdgo.GoString))) {
                        _gotoNext = 145895i32;
                    } else {
                        _gotoNext = 146836i32;
                    };
                } else if (__value__ == (145895i32)) {
                    _field_0 = (stdgo.Go.str() : stdgo.GoString)?.__copy__();
                    _i_1 = stdgo._internal.internal.cpu.Cpu__indexbyte._indexByte(_env?.__copy__(), (44 : stdgo.GoUInt8));
                    if ((_i_1 < (0 : stdgo.GoInt) : Bool)) {
                        _gotoNext = 145949i32;
                    } else {
                        _gotoNext = 145984i32;
                    };
                } else if (__value__ == (145949i32)) {
                    {
                        final __tmp__0 = _env?.__copy__();
                        final __tmp__1 = (stdgo.Go.str() : stdgo.GoString)?.__copy__();
                        _field_0 = @:binopAssign __tmp__0;
                        _env = @:binopAssign __tmp__1;
                    };
                    _gotoNext = 146027i32;
                } else if (__value__ == (145984i32)) {
                    _gotoNext = 145984i32;
                    {
                        final __tmp__0 = (_env.__slice__(0, _i_1) : stdgo.GoString)?.__copy__();
                        final __tmp__1 = (_env.__slice__((_i_1 + (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        _field_0 = @:binopAssign __tmp__0;
                        _env = @:binopAssign __tmp__1;
                    };
                    0i32;
                    _gotoNext = 146027i32;
                } else if (__value__ == (146027i32)) {
                    if ((((_field_0.length) < (4 : stdgo.GoInt) : Bool) || ((_field_0.__slice__(0, (4 : stdgo.GoInt)) : stdgo.GoString) != ("cpu." : stdgo.GoString)) : Bool)) {
                        _gotoNext = 146068i32;
                    } else {
                        _gotoNext = 146088i32;
                    };
                } else if (__value__ == (146068i32)) {
                    0i32;
                    _gotoNext = 145881i32;
                } else if (__value__ == (146088i32)) {
                    _i_1 = stdgo._internal.internal.cpu.Cpu__indexbyte._indexByte(_field_0?.__copy__(), (61 : stdgo.GoUInt8));
                    if ((_i_1 < (0 : stdgo.GoInt) : Bool)) {
                        _gotoNext = 146125i32;
                    } else {
                        _gotoNext = 146207i32;
                    };
                } else if (__value__ == (146125i32)) {
                    stdgo.Go.print(("GODEBUG: no value specified for \"" : stdgo.GoString), _field_0, ("\"\n" : stdgo.GoString));
                    0i32;
                    _gotoNext = 145881i32;
                } else if (__value__ == (146207i32)) {
                    {
                        final __tmp__0 = (_field_0.__slice__((4 : stdgo.GoInt), _i_1) : stdgo.GoString)?.__copy__();
                        final __tmp__1 = (_field_0.__slice__((_i_1 + (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        _key_2 = @:binopAssign __tmp__0;
                        _value_3 = @:binopAssign __tmp__1;
                    };
                    _gotoNext = 146287i32;
                } else if (__value__ == (146287i32)) {
                    {
                        final __value__ = _value_3;
                        if (__value__ == (("on" : stdgo.GoString))) {
                            _gotoNext = 146304i32;
                        } else if (__value__ == (("off" : stdgo.GoString))) {
                            _gotoNext = 146334i32;
                        } else {
                            _gotoNext = 146366i32;
                        };
                    };
                } else if (__value__ == (146304i32)) {
                    _enable_4 = true;
                    _gotoNext = 146488i32;
                } else if (__value__ == (146334i32)) {
                    _enable_4 = false;
                    _gotoNext = 146488i32;
                } else if (__value__ == (146366i32)) {
                    stdgo.Go.print(("GODEBUG: value \"" : stdgo.GoString), _value_3, ("\" not supported for cpu option \"" : stdgo.GoString), _key_2, ("\"\n" : stdgo.GoString));
                    _gotoNext = 145881i32;
                } else if (__value__ == (146488i32)) {
                    if (_key_2 == (("all" : stdgo.GoString))) {
                        _gotoNext = 146504i32;
                    } else {
                        _gotoNext = 146627i32;
                    };
                } else if (__value__ == (146504i32)) {
                    if ((0i32 : stdgo.GoInt) < (stdgo._internal.internal.cpu.Cpu__options._options.length)) {
                        _gotoNext = 146599i32;
                    } else {
                        _gotoNext = 146605i32;
                    };
                } else if (__value__ == (146532i32)) {
                    stdgo._internal.internal.cpu.Cpu__options._options[(_i_5 : stdgo.GoInt)].specified = true;
                    stdgo._internal.internal.cpu.Cpu__options._options[(_i_5 : stdgo.GoInt)].enable = _enable_4;
                    _i_5++;
                    _gotoNext = 146600i32;
                } else if (__value__ == (146599i32)) {
                    _i_5 = 0i32;
                    _gotoNext = 146600i32;
                } else if (__value__ == (146600i32)) {
                    if (_i_5 < (stdgo._internal.internal.cpu.Cpu__options._options.length)) {
                        _gotoNext = 146532i32;
                    } else {
                        _gotoNext = 146605i32;
                    };
                } else if (__value__ == (146605i32)) {
                    _gotoNext = 145881i32;
                } else if (__value__ == (146627i32)) {
                    if ((0i32 : stdgo.GoInt) < (stdgo._internal.internal.cpu.Cpu__options._options.length)) {
                        _gotoNext = 146771i32;
                    } else {
                        _gotoNext = 146777i32;
                    };
                } else if (__value__ == (146631i32)) {
                    _i_6++;
                    _gotoNext = 146772i32;
                } else if (__value__ == (146650i32)) {
                    if (stdgo._internal.internal.cpu.Cpu__options._options[(_i_6 : stdgo.GoInt)].name == (_key_2)) {
                        _gotoNext = 146681i32;
                    } else {
                        _gotoNext = 146631i32;
                    };
                } else if (__value__ == (146681i32)) {
                    stdgo._internal.internal.cpu.Cpu__options._options[(_i_6 : stdgo.GoInt)].specified = true;
                    stdgo._internal.internal.cpu.Cpu__options._options[(_i_6 : stdgo.GoInt)].enable = _enable_4;
                    _gotoNext = 145881i32;
                } else if (__value__ == (146771i32)) {
                    _i_6 = 0i32;
                    _gotoNext = 146772i32;
                } else if (__value__ == (146772i32)) {
                    if (_i_6 < (stdgo._internal.internal.cpu.Cpu__options._options.length)) {
                        _gotoNext = 146650i32;
                    } else {
                        _gotoNext = 146777i32;
                    };
                } else if (__value__ == (146777i32)) {
                    stdgo.Go.print(("GODEBUG: unknown cpu feature \"" : stdgo.GoString), _key_2, ("\"\n" : stdgo.GoString));
                    _gotoNext = 145881i32;
                } else if (__value__ == (146836i32)) {
                    if ((0i32 : stdgo.GoInt) < (stdgo._internal.internal.cpu.Cpu__options._options.length)) {
                        _gotoNext = 147049i32;
                    } else {
                        _gotoNext = 147052i32;
                    };
                } else if (__value__ == (146862i32)) {
                    _o_8 = stdgo._internal.internal.cpu.Cpu__options._options[(_iterator_146848_7 : stdgo.GoInt)];
                    if (!_o_8.specified) {
                        _gotoNext = 146882i32;
                    } else {
                        _gotoNext = 146903i32;
                    };
                } else if (__value__ == (146882i32)) {
                    _iterator_146848_7++;
                    _gotoNext = 147050i32;
                } else if (__value__ == (146903i32)) {
                    if ((_o_8.enable && !_o_8.feature.value : Bool)) {
                        _gotoNext = 146930i32;
                    } else {
                        _gotoNext = 147027i32;
                    };
                } else if (__value__ == (146930i32)) {
                    stdgo.Go.print(("GODEBUG: can not enable \"" : stdgo.GoString), _o_8.name, ("\", missing CPU support\n" : stdgo.GoString));
                    _iterator_146848_7++;
                    _gotoNext = 147050i32;
                } else if (__value__ == (147027i32)) {
                    _o_8.feature.value = _o_8.enable;
                    _iterator_146848_7++;
                    _gotoNext = 147050i32;
                } else if (__value__ == (147049i32)) {
                    {
                        final __tmp__0 = 0i32;
                        final __tmp__1 = stdgo._internal.internal.cpu.Cpu__options._options[(0i32 : stdgo.GoInt)];
                        _iterator_146848_7 = @:binopAssign __tmp__0;
                        _o_8 = @:binopAssign __tmp__1;
                    };
                    _gotoNext = 147050i32;
                } else if (__value__ == (147050i32)) {
                    if (_iterator_146848_7 < (stdgo._internal.internal.cpu.Cpu__options._options.length)) {
                        _gotoNext = 146862i32;
                    } else {
                        _gotoNext = 147052i32;
                    };
                } else if (__value__ == (147052i32)) {
                    _gotoNext = -1i32;
                };
            };
        };
    }
