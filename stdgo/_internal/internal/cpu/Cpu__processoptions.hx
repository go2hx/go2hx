package stdgo._internal.internal.cpu;
function _processOptions(_env:stdgo.GoString):Void {
        var _i_6:stdgo.GoInt = (0 : stdgo.GoInt);
        var _i_5:stdgo.GoInt = (0 : stdgo.GoInt);
        var _enable_4:Bool = false;
        var _value_3:stdgo.GoString = ("" : stdgo.GoString);
        var _key_2:stdgo.GoString = ("" : stdgo.GoString);
        var _i_1:stdgo.GoInt = (0 : stdgo.GoInt);
        var _field_0:stdgo.GoString = ("" : stdgo.GoString);
        var _fieldBreak = false;
        var _o_8:stdgo._internal.internal.cpu.Cpu_t_option.T_option = ({} : stdgo._internal.internal.cpu.Cpu_t_option.T_option);
        var _i_312886_7:stdgo.GoInt = (0 : stdgo.GoInt);
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    _gotoNext = 311911i32;
                } else if (__value__ == (311911i32)) {
                    var __blank__ = 0i32;
                    _fieldBreak = false;
                    _gotoNext = 311919i32;
                } else if (__value__ == (311919i32)) {
                    if (!_fieldBreak && (_env != (stdgo.Go.str() : stdgo.GoString))) {
                        _gotoNext = 311933i32;
                    } else {
                        _gotoNext = 312874i32;
                    };
                } else if (__value__ == (311933i32)) {
                    _field_0 = (stdgo.Go.str() : stdgo.GoString)?.__copy__();
                    _i_1 = stdgo._internal.internal.cpu.Cpu__indexbyte._indexByte(_env?.__copy__(), (44 : stdgo.GoUInt8));
                    if ((_i_1 < (0 : stdgo.GoInt) : Bool)) {
                        _gotoNext = 311987i32;
                    } else {
                        _gotoNext = 312022i32;
                    };
                } else if (__value__ == (311987i32)) {
                    {
                        final __tmp__0 = _env?.__copy__();
                        final __tmp__1 = (stdgo.Go.str() : stdgo.GoString)?.__copy__();
                        _field_0 = @:binopAssign __tmp__0;
                        _env = @:binopAssign __tmp__1;
                    };
                    _gotoNext = 312065i32;
                } else if (__value__ == (312022i32)) {
                    _gotoNext = 312022i32;
                    {
                        final __tmp__0 = (_env.__slice__(0, _i_1) : stdgo.GoString)?.__copy__();
                        final __tmp__1 = (_env.__slice__((_i_1 + (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        _field_0 = @:binopAssign __tmp__0;
                        _env = @:binopAssign __tmp__1;
                    };
                    var __blank__ = 0i32;
                    _gotoNext = 312065i32;
                } else if (__value__ == (312065i32)) {
                    if ((((_field_0.length) < (4 : stdgo.GoInt) : Bool) || ((_field_0.__slice__(0, (4 : stdgo.GoInt)) : stdgo.GoString) != ("cpu." : stdgo.GoString)) : Bool)) {
                        _gotoNext = 312106i32;
                    } else {
                        _gotoNext = 312126i32;
                    };
                } else if (__value__ == (312106i32)) {
                    var __blank__ = 0i32;
                    _gotoNext = 311919i32;
                } else if (__value__ == (312126i32)) {
                    _i_1 = stdgo._internal.internal.cpu.Cpu__indexbyte._indexByte(_field_0?.__copy__(), (61 : stdgo.GoUInt8));
                    if ((_i_1 < (0 : stdgo.GoInt) : Bool)) {
                        _gotoNext = 312163i32;
                    } else {
                        _gotoNext = 312245i32;
                    };
                } else if (__value__ == (312163i32)) {
                    stdgo.Go.print(("GODEBUG: no value specified for \"" : stdgo.GoString), _field_0, ("\"\n" : stdgo.GoString));
                    var __blank__ = 0i32;
                    _gotoNext = 311919i32;
                } else if (__value__ == (312245i32)) {
                    {
                        final __tmp__0 = (_field_0.__slice__((4 : stdgo.GoInt), _i_1) : stdgo.GoString)?.__copy__();
                        final __tmp__1 = (_field_0.__slice__((_i_1 + (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        _key_2 = @:binopAssign __tmp__0;
                        _value_3 = @:binopAssign __tmp__1;
                    };
                    _gotoNext = 312325i32;
                } else if (__value__ == (312325i32)) {
                    {
                        final __value__ = _value_3;
                        if (__value__ == (("on" : stdgo.GoString))) {
                            _gotoNext = 312342i32;
                        } else if (__value__ == (("off" : stdgo.GoString))) {
                            _gotoNext = 312372i32;
                        } else {
                            _gotoNext = 312404i32;
                        };
                    };
                } else if (__value__ == (312342i32)) {
                    _enable_4 = true;
                    _gotoNext = 312526i32;
                } else if (__value__ == (312372i32)) {
                    _enable_4 = false;
                    _gotoNext = 312526i32;
                } else if (__value__ == (312404i32)) {
                    stdgo.Go.print(("GODEBUG: value \"" : stdgo.GoString), _value_3, ("\" not supported for cpu option \"" : stdgo.GoString), _key_2, ("\"\n" : stdgo.GoString));
                    _gotoNext = 311919i32;
                } else if (__value__ == (312526i32)) {
                    if (_key_2 == (("all" : stdgo.GoString))) {
                        _gotoNext = 312542i32;
                    } else {
                        _gotoNext = 312665i32;
                    };
                } else if (__value__ == (312542i32)) {
                    if ((0i32 : stdgo.GoInt) < (stdgo._internal.internal.cpu.Cpu__options._options.length)) {
                        _gotoNext = 312637i32;
                    } else {
                        _gotoNext = 312643i32;
                    };
                } else if (__value__ == (312570i32)) {
                    stdgo._internal.internal.cpu.Cpu__options._options[(_i_5 : stdgo.GoInt)].specified = true;
                    stdgo._internal.internal.cpu.Cpu__options._options[(_i_5 : stdgo.GoInt)].enable = _enable_4;
                    _i_5++;
                    _gotoNext = 312638i32;
                } else if (__value__ == (312637i32)) {
                    _i_5 = 0i32;
                    _gotoNext = 312638i32;
                } else if (__value__ == (312638i32)) {
                    if (_i_5 < (stdgo._internal.internal.cpu.Cpu__options._options.length)) {
                        _gotoNext = 312570i32;
                    } else {
                        _gotoNext = 312643i32;
                    };
                } else if (__value__ == (312643i32)) {
                    _gotoNext = 311919i32;
                } else if (__value__ == (312665i32)) {
                    if ((0i32 : stdgo.GoInt) < (stdgo._internal.internal.cpu.Cpu__options._options.length)) {
                        _gotoNext = 312809i32;
                    } else {
                        _gotoNext = 312815i32;
                    };
                } else if (__value__ == (312669i32)) {
                    _i_6++;
                    _gotoNext = 312810i32;
                } else if (__value__ == (312688i32)) {
                    if (stdgo._internal.internal.cpu.Cpu__options._options[(_i_6 : stdgo.GoInt)].name == (_key_2)) {
                        _gotoNext = 312719i32;
                    } else {
                        _gotoNext = 312669i32;
                    };
                } else if (__value__ == (312719i32)) {
                    stdgo._internal.internal.cpu.Cpu__options._options[(_i_6 : stdgo.GoInt)].specified = true;
                    stdgo._internal.internal.cpu.Cpu__options._options[(_i_6 : stdgo.GoInt)].enable = _enable_4;
                    _gotoNext = 311919i32;
                } else if (__value__ == (312809i32)) {
                    _i_6 = 0i32;
                    _gotoNext = 312810i32;
                } else if (__value__ == (312810i32)) {
                    if (_i_6 < (stdgo._internal.internal.cpu.Cpu__options._options.length)) {
                        _gotoNext = 312688i32;
                    } else {
                        _gotoNext = 312815i32;
                    };
                } else if (__value__ == (312815i32)) {
                    stdgo.Go.print(("GODEBUG: unknown cpu feature \"" : stdgo.GoString), _key_2, ("\"\n" : stdgo.GoString));
                    _gotoNext = 311919i32;
                } else if (__value__ == (312874i32)) {
                    if ((0i32 : stdgo.GoInt) < (stdgo._internal.internal.cpu.Cpu__options._options.length)) {
                        _gotoNext = 313087i32;
                    } else {
                        _gotoNext = 313090i32;
                    };
                } else if (__value__ == (312900i32)) {
                    _o_8 = stdgo._internal.internal.cpu.Cpu__options._options[(_i_312886_7 : stdgo.GoInt)];
                    if (!_o_8.specified) {
                        _gotoNext = 312920i32;
                    } else {
                        _gotoNext = 312941i32;
                    };
                } else if (__value__ == (312920i32)) {
                    _i_312886_7++;
                    _gotoNext = 313088i32;
                } else if (__value__ == (312941i32)) {
                    if ((_o_8.enable && !_o_8.feature.value : Bool)) {
                        _gotoNext = 312968i32;
                    } else {
                        _gotoNext = 313065i32;
                    };
                } else if (__value__ == (312968i32)) {
                    stdgo.Go.print(("GODEBUG: can not enable \"" : stdgo.GoString), _o_8.name, ("\", missing CPU support\n" : stdgo.GoString));
                    _i_312886_7++;
                    _gotoNext = 313088i32;
                } else if (__value__ == (313065i32)) {
                    _o_8.feature.value = _o_8.enable;
                    _i_312886_7++;
                    _gotoNext = 313088i32;
                } else if (__value__ == (313087i32)) {
                    {
                        final __tmp__0 = 0i32;
                        final __tmp__1 = stdgo._internal.internal.cpu.Cpu__options._options[(0i32 : stdgo.GoInt)];
                        _i_312886_7 = @:binopAssign __tmp__0;
                        _o_8 = @:binopAssign __tmp__1;
                    };
                    _gotoNext = 313088i32;
                } else if (__value__ == (313088i32)) {
                    if (_i_312886_7 < (stdgo._internal.internal.cpu.Cpu__options._options.length)) {
                        _gotoNext = 312900i32;
                    } else {
                        _gotoNext = 313090i32;
                    };
                } else if (__value__ == (313090i32)) {
                    _gotoNext = -1i32;
                };
            };
        };
    }
