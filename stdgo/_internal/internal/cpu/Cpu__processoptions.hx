package stdgo._internal.internal.cpu;
function _processOptions(_env:stdgo.GoString):Void {
        var _i_56553_7:stdgo.GoInt = (0 : stdgo.GoInt);
        var _i_6:stdgo.GoInt = (0 : stdgo.GoInt);
        var _i_5:stdgo.GoInt = (0 : stdgo.GoInt);
        var _enable_4:Bool = false;
        var _value_3:stdgo.GoString = ("" : stdgo.GoString);
        var _key_2:stdgo.GoString = ("" : stdgo.GoString);
        var _o_8:stdgo._internal.internal.cpu.Cpu_t_option.T_option = ({} : stdgo._internal.internal.cpu.Cpu_t_option.T_option);
        var _i_1:stdgo.GoInt = (0 : stdgo.GoInt);
        var _field_0:stdgo.GoString = ("" : stdgo.GoString);
        var _fieldBreak = false;
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    _gotoNext = 55578i32;
                } else if (__value__ == (55578i32)) {
                    var __blank__ = 0i32;
                    _fieldBreak = false;
                    _gotoNext = 55586i32;
                } else if (__value__ == (55586i32)) {
                    if (!_fieldBreak && (_env != (stdgo.Go.str() : stdgo.GoString))) {
                        _gotoNext = 55600i32;
                    } else {
                        _gotoNext = 56541i32;
                    };
                } else if (__value__ == (55600i32)) {
                    _field_0 = (stdgo.Go.str() : stdgo.GoString)?.__copy__();
                    _i_1 = stdgo._internal.internal.cpu.Cpu__indexbyte._indexByte(_env?.__copy__(), (44 : stdgo.GoUInt8));
                    if ((_i_1 < (0 : stdgo.GoInt) : Bool)) {
                        _gotoNext = 55654i32;
                    } else {
                        _gotoNext = 55689i32;
                    };
                } else if (__value__ == (55654i32)) {
                    {
                        final __tmp__0 = _env?.__copy__();
                        final __tmp__1 = (stdgo.Go.str() : stdgo.GoString)?.__copy__();
                        _field_0 = @:binopAssign __tmp__0;
                        _env = @:binopAssign __tmp__1;
                    };
                    _gotoNext = 55732i32;
                } else if (__value__ == (55689i32)) {
                    _gotoNext = 55689i32;
                    {
                        final __tmp__0 = (_env.__slice__(0, _i_1) : stdgo.GoString)?.__copy__();
                        final __tmp__1 = (_env.__slice__((_i_1 + (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        _field_0 = @:binopAssign __tmp__0;
                        _env = @:binopAssign __tmp__1;
                    };
                    var __blank__ = 0i32;
                    _gotoNext = 55732i32;
                } else if (__value__ == (55732i32)) {
                    if ((((_field_0.length) < (4 : stdgo.GoInt) : Bool) || ((_field_0.__slice__(0, (4 : stdgo.GoInt)) : stdgo.GoString) != ("cpu." : stdgo.GoString)) : Bool)) {
                        _gotoNext = 55773i32;
                    } else {
                        _gotoNext = 55793i32;
                    };
                } else if (__value__ == (55773i32)) {
                    var __blank__ = 0i32;
                    _gotoNext = 55586i32;
                } else if (__value__ == (55793i32)) {
                    _i_1 = stdgo._internal.internal.cpu.Cpu__indexbyte._indexByte(_field_0?.__copy__(), (61 : stdgo.GoUInt8));
                    if ((_i_1 < (0 : stdgo.GoInt) : Bool)) {
                        _gotoNext = 55830i32;
                    } else {
                        _gotoNext = 55912i32;
                    };
                } else if (__value__ == (55830i32)) {
                    stdgo.Go.print(("GODEBUG: no value specified for \"" : stdgo.GoString), _field_0, ("\"\n" : stdgo.GoString));
                    var __blank__ = 0i32;
                    _gotoNext = 55586i32;
                } else if (__value__ == (55912i32)) {
                    {
                        final __tmp__0 = (_field_0.__slice__((4 : stdgo.GoInt), _i_1) : stdgo.GoString)?.__copy__();
                        final __tmp__1 = (_field_0.__slice__((_i_1 + (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        _key_2 = @:binopAssign __tmp__0;
                        _value_3 = @:binopAssign __tmp__1;
                    };
                    _gotoNext = 55992i32;
                } else if (__value__ == (55992i32)) {
                    {
                        final __value__ = _value_3;
                        if (__value__ == (("on" : stdgo.GoString))) {
                            _gotoNext = 56009i32;
                        } else if (__value__ == (("off" : stdgo.GoString))) {
                            _gotoNext = 56039i32;
                        } else {
                            _gotoNext = 56071i32;
                        };
                    };
                } else if (__value__ == (56009i32)) {
                    _enable_4 = true;
                    _gotoNext = 56193i32;
                } else if (__value__ == (56039i32)) {
                    _enable_4 = false;
                    _gotoNext = 56193i32;
                } else if (__value__ == (56071i32)) {
                    stdgo.Go.print(("GODEBUG: value \"" : stdgo.GoString), _value_3, ("\" not supported for cpu option \"" : stdgo.GoString), _key_2, ("\"\n" : stdgo.GoString));
                    _gotoNext = 55586i32;
                } else if (__value__ == (56193i32)) {
                    if (_key_2 == (("all" : stdgo.GoString))) {
                        _gotoNext = 56209i32;
                    } else {
                        _gotoNext = 56332i32;
                    };
                } else if (__value__ == (56209i32)) {
                    if ((0i32 : stdgo.GoInt) < (stdgo._internal.internal.cpu.Cpu__options._options.length)) {
                        _gotoNext = 56304i32;
                    } else {
                        _gotoNext = 56310i32;
                    };
                } else if (__value__ == (56237i32)) {
                    stdgo._internal.internal.cpu.Cpu__options._options[(_i_5 : stdgo.GoInt)].specified = true;
                    stdgo._internal.internal.cpu.Cpu__options._options[(_i_5 : stdgo.GoInt)].enable = _enable_4;
                    _i_5++;
                    _gotoNext = 56305i32;
                } else if (__value__ == (56304i32)) {
                    _i_5 = 0i32;
                    _gotoNext = 56305i32;
                } else if (__value__ == (56305i32)) {
                    if (_i_5 < (stdgo._internal.internal.cpu.Cpu__options._options.length)) {
                        _gotoNext = 56237i32;
                    } else {
                        _gotoNext = 56310i32;
                    };
                } else if (__value__ == (56310i32)) {
                    _gotoNext = 55586i32;
                } else if (__value__ == (56332i32)) {
                    if ((0i32 : stdgo.GoInt) < (stdgo._internal.internal.cpu.Cpu__options._options.length)) {
                        _gotoNext = 56476i32;
                    } else {
                        _gotoNext = 56482i32;
                    };
                } else if (__value__ == (56336i32)) {
                    _i_6++;
                    _gotoNext = 56477i32;
                } else if (__value__ == (56355i32)) {
                    if (stdgo._internal.internal.cpu.Cpu__options._options[(_i_6 : stdgo.GoInt)].name == (_key_2)) {
                        _gotoNext = 56386i32;
                    } else {
                        _gotoNext = 56336i32;
                    };
                } else if (__value__ == (56386i32)) {
                    stdgo._internal.internal.cpu.Cpu__options._options[(_i_6 : stdgo.GoInt)].specified = true;
                    stdgo._internal.internal.cpu.Cpu__options._options[(_i_6 : stdgo.GoInt)].enable = _enable_4;
                    _gotoNext = 55586i32;
                } else if (__value__ == (56476i32)) {
                    _i_6 = 0i32;
                    _gotoNext = 56477i32;
                } else if (__value__ == (56477i32)) {
                    if (_i_6 < (stdgo._internal.internal.cpu.Cpu__options._options.length)) {
                        _gotoNext = 56355i32;
                    } else {
                        _gotoNext = 56482i32;
                    };
                } else if (__value__ == (56482i32)) {
                    stdgo.Go.print(("GODEBUG: unknown cpu feature \"" : stdgo.GoString), _key_2, ("\"\n" : stdgo.GoString));
                    _gotoNext = 55586i32;
                } else if (__value__ == (56541i32)) {
                    if ((0i32 : stdgo.GoInt) < (stdgo._internal.internal.cpu.Cpu__options._options.length)) {
                        _gotoNext = 56754i32;
                    } else {
                        _gotoNext = 56757i32;
                    };
                } else if (__value__ == (56567i32)) {
                    _o_8 = stdgo._internal.internal.cpu.Cpu__options._options[(_i_56553_7 : stdgo.GoInt)];
                    if (!_o_8.specified) {
                        _gotoNext = 56587i32;
                    } else {
                        _gotoNext = 56608i32;
                    };
                } else if (__value__ == (56587i32)) {
                    _i_56553_7++;
                    _gotoNext = 56755i32;
                } else if (__value__ == (56608i32)) {
                    if ((_o_8.enable && !_o_8.feature.value : Bool)) {
                        _gotoNext = 56635i32;
                    } else {
                        _gotoNext = 56732i32;
                    };
                } else if (__value__ == (56635i32)) {
                    stdgo.Go.print(("GODEBUG: can not enable \"" : stdgo.GoString), _o_8.name, ("\", missing CPU support\n" : stdgo.GoString));
                    _i_56553_7++;
                    _gotoNext = 56755i32;
                } else if (__value__ == (56732i32)) {
                    _o_8.feature.value = _o_8.enable;
                    _i_56553_7++;
                    _gotoNext = 56755i32;
                } else if (__value__ == (56754i32)) {
                    {
                        final __tmp__0 = 0i32;
                        final __tmp__1 = stdgo._internal.internal.cpu.Cpu__options._options[(0i32 : stdgo.GoInt)];
                        _i_56553_7 = @:binopAssign __tmp__0;
                        _o_8 = @:binopAssign __tmp__1;
                    };
                    _gotoNext = 56755i32;
                } else if (__value__ == (56755i32)) {
                    if (_i_56553_7 < (stdgo._internal.internal.cpu.Cpu__options._options.length)) {
                        _gotoNext = 56567i32;
                    } else {
                        _gotoNext = 56757i32;
                    };
                } else if (__value__ == (56757i32)) {
                    _gotoNext = -1i32;
                };
            };
        };
    }
