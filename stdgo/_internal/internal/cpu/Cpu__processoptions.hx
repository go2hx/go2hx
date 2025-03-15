package stdgo._internal.internal.cpu;
function _processOptions(_env:stdgo.GoString):Void {
        var _i_6:stdgo.GoInt = (0 : stdgo.GoInt);
        var _o_8:stdgo._internal.internal.cpu.Cpu_t_option.T_option = ({} : stdgo._internal.internal.cpu.Cpu_t_option.T_option);
        var _key_2:stdgo.GoString = ("" : stdgo.GoString);
        var _i_1:stdgo.GoInt = (0 : stdgo.GoInt);
        var _field_0:stdgo.GoString = ("" : stdgo.GoString);
        var _fieldBreak = false;
        var _iterator_7899_7:stdgo.GoInt = (0 : stdgo.GoInt);
        var _i_5:stdgo.GoInt = (0 : stdgo.GoInt);
        var _enable_4:Bool = false;
        var _value_3:stdgo.GoString = ("" : stdgo.GoString);
        var _gotoNext = 0i32;
        _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    _gotoNext = 6924i32;
                } else if (__value__ == (6924i32)) {
                    0i32;
                    _fieldBreak = false;
                    _gotoNext = 6932i32;
                } else if (__value__ == (6932i32)) {
                    if (!_fieldBreak && (_env != (stdgo.Go.str() : stdgo.GoString))) {
                        _gotoNext = 6946i32;
                    } else {
                        _gotoNext = 7887i32;
                    };
                } else if (__value__ == (6946i32)) {
                    _field_0 = (stdgo.Go.str() : stdgo.GoString)?.__copy__();
                    _i_1 = stdgo._internal.internal.cpu.Cpu__indexbyte._indexByte(_env?.__copy__(), (44 : stdgo.GoUInt8));
                    if ((_i_1 < (0 : stdgo.GoInt) : Bool)) {
                        _gotoNext = 7000i32;
                    } else {
                        _gotoNext = 7035i32;
                    };
                } else if (__value__ == (7000i32)) {
                    {
                        final __tmp__0 = _env?.__copy__();
                        final __tmp__1 = (stdgo.Go.str() : stdgo.GoString)?.__copy__();
                        _field_0 = @:binopAssign __tmp__0;
                        _env = @:binopAssign __tmp__1;
                    };
                    _gotoNext = 7078i32;
                } else if (__value__ == (7035i32)) {
                    _gotoNext = 7035i32;
                    {
                        final __tmp__0 = (_env.__slice__(0, _i_1) : stdgo.GoString)?.__copy__();
                        final __tmp__1 = (_env.__slice__((_i_1 + (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        _field_0 = @:binopAssign __tmp__0;
                        _env = @:binopAssign __tmp__1;
                    };
                    0i32;
                    _gotoNext = 7078i32;
                } else if (__value__ == (7078i32)) {
                    if ((((_field_0.length) < (4 : stdgo.GoInt) : Bool) || ((_field_0.__slice__(0, (4 : stdgo.GoInt)) : stdgo.GoString) != ("cpu." : stdgo.GoString)) : Bool)) {
                        _gotoNext = 7119i32;
                    } else {
                        _gotoNext = 7139i32;
                    };
                } else if (__value__ == (7119i32)) {
                    0i32;
                    _gotoNext = 6932i32;
                } else if (__value__ == (7139i32)) {
                    _i_1 = stdgo._internal.internal.cpu.Cpu__indexbyte._indexByte(_field_0?.__copy__(), (61 : stdgo.GoUInt8));
                    if ((_i_1 < (0 : stdgo.GoInt) : Bool)) {
                        _gotoNext = 7176i32;
                    } else {
                        _gotoNext = 7258i32;
                    };
                } else if (__value__ == (7176i32)) {
                    stdgo.Go.print(("GODEBUG: no value specified for \"" : stdgo.GoString), _field_0, ("\"\n" : stdgo.GoString));
                    0i32;
                    _gotoNext = 6932i32;
                } else if (__value__ == (7258i32)) {
                    {
                        final __tmp__0 = (_field_0.__slice__((4 : stdgo.GoInt), _i_1) : stdgo.GoString)?.__copy__();
                        final __tmp__1 = (_field_0.__slice__((_i_1 + (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        _key_2 = @:binopAssign __tmp__0;
                        _value_3 = @:binopAssign __tmp__1;
                    };
                    _gotoNext = 7338i32;
                } else if (__value__ == (7338i32)) {
                    {
                        final __value__ = _value_3;
                        if (__value__ == (("on" : stdgo.GoString))) {
                            _gotoNext = 7355i32;
                        } else if (__value__ == (("off" : stdgo.GoString))) {
                            _gotoNext = 7385i32;
                        } else {
                            _gotoNext = 7417i32;
                        };
                    };
                } else if (__value__ == (7355i32)) {
                    _enable_4 = true;
                    _gotoNext = 7539i32;
                } else if (__value__ == (7385i32)) {
                    _enable_4 = false;
                    _gotoNext = 7539i32;
                } else if (__value__ == (7417i32)) {
                    stdgo.Go.print(("GODEBUG: value \"" : stdgo.GoString), _value_3, ("\" not supported for cpu option \"" : stdgo.GoString), _key_2, ("\"\n" : stdgo.GoString));
                    _gotoNext = 6932i32;
                } else if (__value__ == (7539i32)) {
                    if (_key_2 == (("all" : stdgo.GoString))) {
                        _gotoNext = 7555i32;
                    } else {
                        _gotoNext = 7678i32;
                    };
                } else if (__value__ == (7555i32)) {
                    if ((0i32 : stdgo.GoInt) < (stdgo._internal.internal.cpu.Cpu__options._options.length)) {
                        _gotoNext = 7650i32;
                    } else {
                        _gotoNext = 7656i32;
                    };
                } else if (__value__ == (7583i32)) {
                    stdgo._internal.internal.cpu.Cpu__options._options[(_i_5 : stdgo.GoInt)].specified = true;
                    stdgo._internal.internal.cpu.Cpu__options._options[(_i_5 : stdgo.GoInt)].enable = _enable_4;
                    _i_5++;
                    _gotoNext = 7651i32;
                } else if (__value__ == (7650i32)) {
                    _i_5 = 0i32;
                    _gotoNext = 7651i32;
                } else if (__value__ == (7651i32)) {
                    if (_i_5 < (stdgo._internal.internal.cpu.Cpu__options._options.length)) {
                        _gotoNext = 7583i32;
                    } else {
                        _gotoNext = 7656i32;
                    };
                } else if (__value__ == (7656i32)) {
                    _gotoNext = 6932i32;
                } else if (__value__ == (7678i32)) {
                    if ((0i32 : stdgo.GoInt) < (stdgo._internal.internal.cpu.Cpu__options._options.length)) {
                        _gotoNext = 7822i32;
                    } else {
                        _gotoNext = 7828i32;
                    };
                } else if (__value__ == (7682i32)) {
                    _i_6++;
                    _gotoNext = 7823i32;
                } else if (__value__ == (7701i32)) {
                    if (stdgo._internal.internal.cpu.Cpu__options._options[(_i_6 : stdgo.GoInt)].name == (_key_2)) {
                        _gotoNext = 7732i32;
                    } else {
                        _gotoNext = 7682i32;
                    };
                } else if (__value__ == (7732i32)) {
                    stdgo._internal.internal.cpu.Cpu__options._options[(_i_6 : stdgo.GoInt)].specified = true;
                    stdgo._internal.internal.cpu.Cpu__options._options[(_i_6 : stdgo.GoInt)].enable = _enable_4;
                    _gotoNext = 6932i32;
                } else if (__value__ == (7822i32)) {
                    _i_6 = 0i32;
                    _gotoNext = 7823i32;
                } else if (__value__ == (7823i32)) {
                    if (_i_6 < (stdgo._internal.internal.cpu.Cpu__options._options.length)) {
                        _gotoNext = 7701i32;
                    } else {
                        _gotoNext = 7828i32;
                    };
                } else if (__value__ == (7828i32)) {
                    stdgo.Go.print(("GODEBUG: unknown cpu feature \"" : stdgo.GoString), _key_2, ("\"\n" : stdgo.GoString));
                    _gotoNext = 6932i32;
                } else if (__value__ == (7887i32)) {
                    if ((0i32 : stdgo.GoInt) < (stdgo._internal.internal.cpu.Cpu__options._options.length)) {
                        _gotoNext = 8100i32;
                    } else {
                        _gotoNext = 8103i32;
                    };
                } else if (__value__ == (7913i32)) {
                    _o_8 = stdgo._internal.internal.cpu.Cpu__options._options[(_iterator_7899_7 : stdgo.GoInt)];
                    if (!_o_8.specified) {
                        _gotoNext = 7933i32;
                    } else {
                        _gotoNext = 7954i32;
                    };
                } else if (__value__ == (7933i32)) {
                    _iterator_7899_7++;
                    _gotoNext = 8101i32;
                } else if (__value__ == (7954i32)) {
                    if ((_o_8.enable && !_o_8.feature.value : Bool)) {
                        _gotoNext = 7981i32;
                    } else {
                        _gotoNext = 8078i32;
                    };
                } else if (__value__ == (7981i32)) {
                    stdgo.Go.print(("GODEBUG: can not enable \"" : stdgo.GoString), _o_8.name, ("\", missing CPU support\n" : stdgo.GoString));
                    _iterator_7899_7++;
                    _gotoNext = 8101i32;
                } else if (__value__ == (8078i32)) {
                    _o_8.feature.value = _o_8.enable;
                    _iterator_7899_7++;
                    _gotoNext = 8101i32;
                } else if (__value__ == (8100i32)) {
                    {
                        final __tmp__0 = 0i32;
                        final __tmp__1 = stdgo._internal.internal.cpu.Cpu__options._options[(0i32 : stdgo.GoInt)];
                        _iterator_7899_7 = @:binopAssign __tmp__0;
                        _o_8 = @:binopAssign __tmp__1;
                    };
                    _gotoNext = 8101i32;
                } else if (__value__ == (8101i32)) {
                    if (_iterator_7899_7 < (stdgo._internal.internal.cpu.Cpu__options._options.length)) {
                        _gotoNext = 7913i32;
                    } else {
                        _gotoNext = 8103i32;
                    };
                } else if (__value__ == (8103i32)) {
                    _gotoNext = -1i32;
                };
            };
        };
    }
