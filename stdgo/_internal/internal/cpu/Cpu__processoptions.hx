package stdgo._internal.internal.cpu;
function _processOptions(_env:stdgo.GoString):Void {
        var _i_6:stdgo.GoInt = (0 : stdgo.GoInt);
        var _value_3:stdgo.GoString = ("" : stdgo.GoString);
        var _key_2:stdgo.GoString = ("" : stdgo.GoString);
        var _fieldBreak = false;
        var _o_8:stdgo._internal.internal.cpu.Cpu_t_option.T_option = ({} : stdgo._internal.internal.cpu.Cpu_t_option.T_option);
        var _iterator_13745_7:stdgo.GoInt = (0 : stdgo.GoInt);
        var _i_5:stdgo.GoInt = (0 : stdgo.GoInt);
        var _enable_4:Bool = false;
        var _i_1:stdgo.GoInt = (0 : stdgo.GoInt);
        var _field_0:stdgo.GoString = ("" : stdgo.GoString);
        var _gotoNext = 0i32;
        _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    _gotoNext = 12770i32;
                } else if (__value__ == (12770i32)) {
                    0i32;
                    _fieldBreak = false;
                    _gotoNext = 12778i32;
                } else if (__value__ == (12778i32)) {
                    if (!_fieldBreak && (_env != (stdgo.Go.str() : stdgo.GoString))) {
                        _gotoNext = 12792i32;
                    } else {
                        _gotoNext = 13733i32;
                    };
                } else if (__value__ == (12792i32)) {
                    _field_0 = (stdgo.Go.str() : stdgo.GoString)?.__copy__();
                    _i_1 = stdgo._internal.internal.cpu.Cpu__indexbyte._indexByte(_env?.__copy__(), (44 : stdgo.GoUInt8));
                    if ((_i_1 < (0 : stdgo.GoInt) : Bool)) {
                        _gotoNext = 12846i32;
                    } else {
                        _gotoNext = 12881i32;
                    };
                } else if (__value__ == (12846i32)) {
                    {
                        final __tmp__0 = _env?.__copy__();
                        final __tmp__1 = (stdgo.Go.str() : stdgo.GoString)?.__copy__();
                        _field_0 = @:binopAssign __tmp__0;
                        _env = @:binopAssign __tmp__1;
                    };
                    _gotoNext = 12924i32;
                } else if (__value__ == (12881i32)) {
                    _gotoNext = 12881i32;
                    {
                        final __tmp__0 = (_env.__slice__(0, _i_1) : stdgo.GoString)?.__copy__();
                        final __tmp__1 = (_env.__slice__((_i_1 + (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        _field_0 = @:binopAssign __tmp__0;
                        _env = @:binopAssign __tmp__1;
                    };
                    0i32;
                    _gotoNext = 12924i32;
                } else if (__value__ == (12924i32)) {
                    if ((((_field_0.length) < (4 : stdgo.GoInt) : Bool) || ((_field_0.__slice__(0, (4 : stdgo.GoInt)) : stdgo.GoString) != ("cpu." : stdgo.GoString)) : Bool)) {
                        _gotoNext = 12965i32;
                    } else {
                        _gotoNext = 12985i32;
                    };
                } else if (__value__ == (12965i32)) {
                    0i32;
                    _gotoNext = 12778i32;
                } else if (__value__ == (12985i32)) {
                    _i_1 = stdgo._internal.internal.cpu.Cpu__indexbyte._indexByte(_field_0?.__copy__(), (61 : stdgo.GoUInt8));
                    if ((_i_1 < (0 : stdgo.GoInt) : Bool)) {
                        _gotoNext = 13022i32;
                    } else {
                        _gotoNext = 13104i32;
                    };
                } else if (__value__ == (13022i32)) {
                    stdgo.Go.print(("GODEBUG: no value specified for \"" : stdgo.GoString), _field_0, ("\"\n" : stdgo.GoString));
                    0i32;
                    _gotoNext = 12778i32;
                } else if (__value__ == (13104i32)) {
                    {
                        final __tmp__0 = (_field_0.__slice__((4 : stdgo.GoInt), _i_1) : stdgo.GoString)?.__copy__();
                        final __tmp__1 = (_field_0.__slice__((_i_1 + (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        _key_2 = @:binopAssign __tmp__0;
                        _value_3 = @:binopAssign __tmp__1;
                    };
                    _gotoNext = 13184i32;
                } else if (__value__ == (13184i32)) {
                    {
                        final __value__ = _value_3;
                        if (__value__ == (("on" : stdgo.GoString))) {
                            _gotoNext = 13201i32;
                        } else if (__value__ == (("off" : stdgo.GoString))) {
                            _gotoNext = 13231i32;
                        } else {
                            _gotoNext = 13263i32;
                        };
                    };
                } else if (__value__ == (13201i32)) {
                    _enable_4 = true;
                    _gotoNext = 13385i32;
                } else if (__value__ == (13231i32)) {
                    _enable_4 = false;
                    _gotoNext = 13385i32;
                } else if (__value__ == (13263i32)) {
                    stdgo.Go.print(("GODEBUG: value \"" : stdgo.GoString), _value_3, ("\" not supported for cpu option \"" : stdgo.GoString), _key_2, ("\"\n" : stdgo.GoString));
                    _gotoNext = 12778i32;
                } else if (__value__ == (13385i32)) {
                    if (_key_2 == (("all" : stdgo.GoString))) {
                        _gotoNext = 13401i32;
                    } else {
                        _gotoNext = 13524i32;
                    };
                } else if (__value__ == (13401i32)) {
                    if ((0i32 : stdgo.GoInt) < (stdgo._internal.internal.cpu.Cpu__options._options.length)) {
                        _gotoNext = 13496i32;
                    } else {
                        _gotoNext = 13502i32;
                    };
                } else if (__value__ == (13429i32)) {
                    stdgo._internal.internal.cpu.Cpu__options._options[(_i_5 : stdgo.GoInt)].specified = true;
                    stdgo._internal.internal.cpu.Cpu__options._options[(_i_5 : stdgo.GoInt)].enable = _enable_4;
                    _i_5++;
                    _gotoNext = 13497i32;
                } else if (__value__ == (13496i32)) {
                    _i_5 = 0i32;
                    _gotoNext = 13497i32;
                } else if (__value__ == (13497i32)) {
                    if (_i_5 < (stdgo._internal.internal.cpu.Cpu__options._options.length)) {
                        _gotoNext = 13429i32;
                    } else {
                        _gotoNext = 13502i32;
                    };
                } else if (__value__ == (13502i32)) {
                    _gotoNext = 12778i32;
                } else if (__value__ == (13524i32)) {
                    if ((0i32 : stdgo.GoInt) < (stdgo._internal.internal.cpu.Cpu__options._options.length)) {
                        _gotoNext = 13668i32;
                    } else {
                        _gotoNext = 13674i32;
                    };
                } else if (__value__ == (13528i32)) {
                    _i_6++;
                    _gotoNext = 13669i32;
                } else if (__value__ == (13547i32)) {
                    if (stdgo._internal.internal.cpu.Cpu__options._options[(_i_6 : stdgo.GoInt)].name == (_key_2)) {
                        _gotoNext = 13578i32;
                    } else {
                        _gotoNext = 13528i32;
                    };
                } else if (__value__ == (13578i32)) {
                    stdgo._internal.internal.cpu.Cpu__options._options[(_i_6 : stdgo.GoInt)].specified = true;
                    stdgo._internal.internal.cpu.Cpu__options._options[(_i_6 : stdgo.GoInt)].enable = _enable_4;
                    _gotoNext = 12778i32;
                } else if (__value__ == (13668i32)) {
                    _i_6 = 0i32;
                    _gotoNext = 13669i32;
                } else if (__value__ == (13669i32)) {
                    if (_i_6 < (stdgo._internal.internal.cpu.Cpu__options._options.length)) {
                        _gotoNext = 13547i32;
                    } else {
                        _gotoNext = 13674i32;
                    };
                } else if (__value__ == (13674i32)) {
                    stdgo.Go.print(("GODEBUG: unknown cpu feature \"" : stdgo.GoString), _key_2, ("\"\n" : stdgo.GoString));
                    _gotoNext = 12778i32;
                } else if (__value__ == (13733i32)) {
                    if ((0i32 : stdgo.GoInt) < (stdgo._internal.internal.cpu.Cpu__options._options.length)) {
                        _gotoNext = 13946i32;
                    } else {
                        _gotoNext = 13949i32;
                    };
                } else if (__value__ == (13759i32)) {
                    _o_8 = stdgo._internal.internal.cpu.Cpu__options._options[(_iterator_13745_7 : stdgo.GoInt)];
                    if (!_o_8.specified) {
                        _gotoNext = 13779i32;
                    } else {
                        _gotoNext = 13800i32;
                    };
                } else if (__value__ == (13779i32)) {
                    _iterator_13745_7++;
                    _gotoNext = 13947i32;
                } else if (__value__ == (13800i32)) {
                    if ((_o_8.enable && !_o_8.feature.value : Bool)) {
                        _gotoNext = 13827i32;
                    } else {
                        _gotoNext = 13924i32;
                    };
                } else if (__value__ == (13827i32)) {
                    stdgo.Go.print(("GODEBUG: can not enable \"" : stdgo.GoString), _o_8.name, ("\", missing CPU support\n" : stdgo.GoString));
                    _iterator_13745_7++;
                    _gotoNext = 13947i32;
                } else if (__value__ == (13924i32)) {
                    _o_8.feature.value = _o_8.enable;
                    _iterator_13745_7++;
                    _gotoNext = 13947i32;
                } else if (__value__ == (13946i32)) {
                    {
                        final __tmp__0 = 0i32;
                        final __tmp__1 = stdgo._internal.internal.cpu.Cpu__options._options[(0i32 : stdgo.GoInt)];
                        _iterator_13745_7 = @:binopAssign __tmp__0;
                        _o_8 = @:binopAssign __tmp__1;
                    };
                    _gotoNext = 13947i32;
                } else if (__value__ == (13947i32)) {
                    if (_iterator_13745_7 < (stdgo._internal.internal.cpu.Cpu__options._options.length)) {
                        _gotoNext = 13759i32;
                    } else {
                        _gotoNext = 13949i32;
                    };
                } else if (__value__ == (13949i32)) {
                    _gotoNext = -1i32;
                };
            };
        };
    }
