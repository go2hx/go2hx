package stdgo._internal.internal.cpu;
function _processOptions(_env:stdgo.GoString):Void {
        var _field_0:stdgo.GoString = ("" : stdgo.GoString);
        var _i_12778_7:stdgo.GoInt = (0 : stdgo.GoInt);
        var _value_3:stdgo.GoString = ("" : stdgo.GoString);
        var _key_2:stdgo.GoString = ("" : stdgo.GoString);
        var _fieldBreak = false;
        var _o_8:stdgo._internal.internal.cpu.Cpu_t_option.T_option = ({} : stdgo._internal.internal.cpu.Cpu_t_option.T_option);
        var _i_6:stdgo.GoInt = (0 : stdgo.GoInt);
        var _i_5:stdgo.GoInt = (0 : stdgo.GoInt);
        var _enable_4:Bool = false;
        var _i_1:stdgo.GoInt = (0 : stdgo.GoInt);
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    _gotoNext = 11803i32;
                } else if (__value__ == (11803i32)) {
                    var __blank__ = 0i32;
                    _fieldBreak = false;
                    _gotoNext = 11811i32;
                } else if (__value__ == (11811i32)) {
                    if (!_fieldBreak && (_env != (stdgo.Go.str() : stdgo.GoString))) {
                        _gotoNext = 11825i32;
                    } else {
                        _gotoNext = 12766i32;
                    };
                } else if (__value__ == (11825i32)) {
                    _field_0 = (stdgo.Go.str() : stdgo.GoString)?.__copy__();
                    _i_1 = stdgo._internal.internal.cpu.Cpu__indexbyte._indexByte(_env?.__copy__(), (44 : stdgo.GoUInt8));
                    if ((_i_1 < (0 : stdgo.GoInt) : Bool)) {
                        _gotoNext = 11879i32;
                    } else {
                        _gotoNext = 11914i32;
                    };
                } else if (__value__ == (11879i32)) {
                    {
                        final __tmp__0 = _env?.__copy__();
                        final __tmp__1 = (stdgo.Go.str() : stdgo.GoString)?.__copy__();
                        _field_0 = @:binopAssign __tmp__0;
                        _env = @:binopAssign __tmp__1;
                    };
                    _gotoNext = 11957i32;
                } else if (__value__ == (11914i32)) {
                    _gotoNext = 11914i32;
                    {
                        final __tmp__0 = (_env.__slice__(0, _i_1) : stdgo.GoString)?.__copy__();
                        final __tmp__1 = (_env.__slice__((_i_1 + (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        _field_0 = @:binopAssign __tmp__0;
                        _env = @:binopAssign __tmp__1;
                    };
                    var __blank__ = 0i32;
                    _gotoNext = 11957i32;
                } else if (__value__ == (11957i32)) {
                    if ((((_field_0.length) < (4 : stdgo.GoInt) : Bool) || ((_field_0.__slice__(0, (4 : stdgo.GoInt)) : stdgo.GoString) != ("cpu." : stdgo.GoString)) : Bool)) {
                        _gotoNext = 11998i32;
                    } else {
                        _gotoNext = 12018i32;
                    };
                } else if (__value__ == (11998i32)) {
                    var __blank__ = 0i32;
                    _gotoNext = 11811i32;
                } else if (__value__ == (12018i32)) {
                    _i_1 = stdgo._internal.internal.cpu.Cpu__indexbyte._indexByte(_field_0?.__copy__(), (61 : stdgo.GoUInt8));
                    if ((_i_1 < (0 : stdgo.GoInt) : Bool)) {
                        _gotoNext = 12055i32;
                    } else {
                        _gotoNext = 12137i32;
                    };
                } else if (__value__ == (12055i32)) {
                    stdgo.Go.print(("GODEBUG: no value specified for \"" : stdgo.GoString), _field_0, ("\"\n" : stdgo.GoString));
                    var __blank__ = 0i32;
                    _gotoNext = 11811i32;
                } else if (__value__ == (12137i32)) {
                    {
                        final __tmp__0 = (_field_0.__slice__((4 : stdgo.GoInt), _i_1) : stdgo.GoString)?.__copy__();
                        final __tmp__1 = (_field_0.__slice__((_i_1 + (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        _key_2 = @:binopAssign __tmp__0;
                        _value_3 = @:binopAssign __tmp__1;
                    };
                    _gotoNext = 12217i32;
                } else if (__value__ == (12217i32)) {
                    {
                        final __value__ = _value_3;
                        if (__value__ == (("on" : stdgo.GoString))) {
                            _gotoNext = 12234i32;
                        } else if (__value__ == (("off" : stdgo.GoString))) {
                            _gotoNext = 12264i32;
                        } else {
                            _gotoNext = 12296i32;
                        };
                    };
                } else if (__value__ == (12234i32)) {
                    _enable_4 = true;
                    _gotoNext = 12418i32;
                } else if (__value__ == (12264i32)) {
                    _enable_4 = false;
                    _gotoNext = 12418i32;
                } else if (__value__ == (12296i32)) {
                    stdgo.Go.print(("GODEBUG: value \"" : stdgo.GoString), _value_3, ("\" not supported for cpu option \"" : stdgo.GoString), _key_2, ("\"\n" : stdgo.GoString));
                    _gotoNext = 11811i32;
                } else if (__value__ == (12418i32)) {
                    if (_key_2 == (("all" : stdgo.GoString))) {
                        _gotoNext = 12434i32;
                    } else {
                        _gotoNext = 12557i32;
                    };
                } else if (__value__ == (12434i32)) {
                    if ((0i32 : stdgo.GoInt) < (stdgo._internal.internal.cpu.Cpu__options._options.length)) {
                        _gotoNext = 12529i32;
                    } else {
                        _gotoNext = 12535i32;
                    };
                } else if (__value__ == (12462i32)) {
                    stdgo._internal.internal.cpu.Cpu__options._options[(_i_5 : stdgo.GoInt)].specified = true;
                    stdgo._internal.internal.cpu.Cpu__options._options[(_i_5 : stdgo.GoInt)].enable = _enable_4;
                    _i_5++;
                    _gotoNext = 12530i32;
                } else if (__value__ == (12529i32)) {
                    _i_5 = 0i32;
                    _gotoNext = 12530i32;
                } else if (__value__ == (12530i32)) {
                    if (_i_5 < (stdgo._internal.internal.cpu.Cpu__options._options.length)) {
                        _gotoNext = 12462i32;
                    } else {
                        _gotoNext = 12535i32;
                    };
                } else if (__value__ == (12535i32)) {
                    _gotoNext = 11811i32;
                } else if (__value__ == (12557i32)) {
                    if ((0i32 : stdgo.GoInt) < (stdgo._internal.internal.cpu.Cpu__options._options.length)) {
                        _gotoNext = 12701i32;
                    } else {
                        _gotoNext = 12707i32;
                    };
                } else if (__value__ == (12561i32)) {
                    _i_6++;
                    _gotoNext = 12702i32;
                } else if (__value__ == (12580i32)) {
                    if (stdgo._internal.internal.cpu.Cpu__options._options[(_i_6 : stdgo.GoInt)].name == (_key_2)) {
                        _gotoNext = 12611i32;
                    } else {
                        _gotoNext = 12561i32;
                    };
                } else if (__value__ == (12611i32)) {
                    stdgo._internal.internal.cpu.Cpu__options._options[(_i_6 : stdgo.GoInt)].specified = true;
                    stdgo._internal.internal.cpu.Cpu__options._options[(_i_6 : stdgo.GoInt)].enable = _enable_4;
                    _gotoNext = 11811i32;
                } else if (__value__ == (12701i32)) {
                    _i_6 = 0i32;
                    _gotoNext = 12702i32;
                } else if (__value__ == (12702i32)) {
                    if (_i_6 < (stdgo._internal.internal.cpu.Cpu__options._options.length)) {
                        _gotoNext = 12580i32;
                    } else {
                        _gotoNext = 12707i32;
                    };
                } else if (__value__ == (12707i32)) {
                    stdgo.Go.print(("GODEBUG: unknown cpu feature \"" : stdgo.GoString), _key_2, ("\"\n" : stdgo.GoString));
                    _gotoNext = 11811i32;
                } else if (__value__ == (12766i32)) {
                    if ((0i32 : stdgo.GoInt) < (stdgo._internal.internal.cpu.Cpu__options._options.length)) {
                        _gotoNext = 12979i32;
                    } else {
                        _gotoNext = 12982i32;
                    };
                } else if (__value__ == (12792i32)) {
                    _o_8 = stdgo._internal.internal.cpu.Cpu__options._options[(_i_12778_7 : stdgo.GoInt)];
                    if (!_o_8.specified) {
                        _gotoNext = 12812i32;
                    } else {
                        _gotoNext = 12833i32;
                    };
                } else if (__value__ == (12812i32)) {
                    _i_12778_7++;
                    _gotoNext = 12980i32;
                } else if (__value__ == (12833i32)) {
                    if ((_o_8.enable && !_o_8.feature.value : Bool)) {
                        _gotoNext = 12860i32;
                    } else {
                        _gotoNext = 12957i32;
                    };
                } else if (__value__ == (12860i32)) {
                    stdgo.Go.print(("GODEBUG: can not enable \"" : stdgo.GoString), _o_8.name, ("\", missing CPU support\n" : stdgo.GoString));
                    _i_12778_7++;
                    _gotoNext = 12980i32;
                } else if (__value__ == (12957i32)) {
                    _o_8.feature.value = _o_8.enable;
                    _i_12778_7++;
                    _gotoNext = 12980i32;
                } else if (__value__ == (12979i32)) {
                    {
                        final __tmp__0 = 0i32;
                        final __tmp__1 = stdgo._internal.internal.cpu.Cpu__options._options[(0i32 : stdgo.GoInt)];
                        _i_12778_7 = @:binopAssign __tmp__0;
                        _o_8 = @:binopAssign __tmp__1;
                    };
                    _gotoNext = 12980i32;
                } else if (__value__ == (12980i32)) {
                    if (_i_12778_7 < (stdgo._internal.internal.cpu.Cpu__options._options.length)) {
                        _gotoNext = 12792i32;
                    } else {
                        _gotoNext = 12982i32;
                    };
                } else if (__value__ == (12982i32)) {
                    _gotoNext = -1i32;
                };
            };
        };
    }
