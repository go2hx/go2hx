package stdgo._internal.internal.cpu;
function _processOptions(_env:stdgo.GoString):Void {
        var _i_34224_7:stdgo.GoInt = (0 : stdgo.GoInt);
        var _i_5:stdgo.GoInt = (0 : stdgo.GoInt);
        var _value_3:stdgo.GoString = ("" : stdgo.GoString);
        var _o_8:stdgo._internal.internal.cpu.Cpu_t_option.T_option = ({} : stdgo._internal.internal.cpu.Cpu_t_option.T_option);
        var _i_6:stdgo.GoInt = (0 : stdgo.GoInt);
        var _enable_4:Bool = false;
        var _key_2:stdgo.GoString = ("" : stdgo.GoString);
        var _i_1:stdgo.GoInt = (0 : stdgo.GoInt);
        var _field_0:stdgo.GoString = ("" : stdgo.GoString);
        var _fieldBreak = false;
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    _gotoNext = 33249i32;
                } else if (__value__ == (33249i32)) {
                    var __blank__ = 0i32;
                    _fieldBreak = false;
                    _gotoNext = 33257i32;
                } else if (__value__ == (33257i32)) {
                    if (!_fieldBreak && (_env != (stdgo.Go.str() : stdgo.GoString))) {
                        _gotoNext = 33271i32;
                    } else {
                        _gotoNext = 34212i32;
                    };
                } else if (__value__ == (33271i32)) {
                    _field_0 = (stdgo.Go.str() : stdgo.GoString)?.__copy__();
                    _i_1 = stdgo._internal.internal.cpu.Cpu__indexbyte._indexByte(_env?.__copy__(), (44 : stdgo.GoUInt8));
                    if ((_i_1 < (0 : stdgo.GoInt) : Bool)) {
                        _gotoNext = 33325i32;
                    } else {
                        _gotoNext = 33360i32;
                    };
                } else if (__value__ == (33325i32)) {
                    {
                        final __tmp__0 = _env?.__copy__();
                        final __tmp__1 = (stdgo.Go.str() : stdgo.GoString)?.__copy__();
                        _field_0 = @:binopAssign __tmp__0;
                        _env = @:binopAssign __tmp__1;
                    };
                    _gotoNext = 33403i32;
                } else if (__value__ == (33360i32)) {
                    _gotoNext = 33360i32;
                    {
                        final __tmp__0 = (_env.__slice__(0, _i_1) : stdgo.GoString)?.__copy__();
                        final __tmp__1 = (_env.__slice__((_i_1 + (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        _field_0 = @:binopAssign __tmp__0;
                        _env = @:binopAssign __tmp__1;
                    };
                    var __blank__ = 0i32;
                    _gotoNext = 33403i32;
                } else if (__value__ == (33403i32)) {
                    if ((((_field_0.length) < (4 : stdgo.GoInt) : Bool) || ((_field_0.__slice__(0, (4 : stdgo.GoInt)) : stdgo.GoString) != ("cpu." : stdgo.GoString)) : Bool)) {
                        _gotoNext = 33444i32;
                    } else {
                        _gotoNext = 33464i32;
                    };
                } else if (__value__ == (33444i32)) {
                    var __blank__ = 0i32;
                    _gotoNext = 33257i32;
                } else if (__value__ == (33464i32)) {
                    _i_1 = stdgo._internal.internal.cpu.Cpu__indexbyte._indexByte(_field_0?.__copy__(), (61 : stdgo.GoUInt8));
                    if ((_i_1 < (0 : stdgo.GoInt) : Bool)) {
                        _gotoNext = 33501i32;
                    } else {
                        _gotoNext = 33583i32;
                    };
                } else if (__value__ == (33501i32)) {
                    stdgo.Go.print(("GODEBUG: no value specified for \"" : stdgo.GoString), _field_0, ("\"\n" : stdgo.GoString));
                    var __blank__ = 0i32;
                    _gotoNext = 33257i32;
                } else if (__value__ == (33583i32)) {
                    {
                        final __tmp__0 = (_field_0.__slice__((4 : stdgo.GoInt), _i_1) : stdgo.GoString)?.__copy__();
                        final __tmp__1 = (_field_0.__slice__((_i_1 + (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        _key_2 = @:binopAssign __tmp__0;
                        _value_3 = @:binopAssign __tmp__1;
                    };
                    _gotoNext = 33663i32;
                } else if (__value__ == (33663i32)) {
                    {
                        final __value__ = _value_3;
                        if (__value__ == (("on" : stdgo.GoString))) {
                            _gotoNext = 33680i32;
                        } else if (__value__ == (("off" : stdgo.GoString))) {
                            _gotoNext = 33710i32;
                        } else {
                            _gotoNext = 33742i32;
                        };
                    };
                } else if (__value__ == (33680i32)) {
                    _enable_4 = true;
                    _gotoNext = 33864i32;
                } else if (__value__ == (33710i32)) {
                    _enable_4 = false;
                    _gotoNext = 33864i32;
                } else if (__value__ == (33742i32)) {
                    stdgo.Go.print(("GODEBUG: value \"" : stdgo.GoString), _value_3, ("\" not supported for cpu option \"" : stdgo.GoString), _key_2, ("\"\n" : stdgo.GoString));
                    _gotoNext = 33257i32;
                } else if (__value__ == (33864i32)) {
                    if (_key_2 == (("all" : stdgo.GoString))) {
                        _gotoNext = 33880i32;
                    } else {
                        _gotoNext = 34003i32;
                    };
                } else if (__value__ == (33880i32)) {
                    if ((0i32 : stdgo.GoInt) < (stdgo._internal.internal.cpu.Cpu__options._options.length)) {
                        _gotoNext = 33975i32;
                    } else {
                        _gotoNext = 33981i32;
                    };
                } else if (__value__ == (33908i32)) {
                    stdgo._internal.internal.cpu.Cpu__options._options[(_i_5 : stdgo.GoInt)].specified = true;
                    stdgo._internal.internal.cpu.Cpu__options._options[(_i_5 : stdgo.GoInt)].enable = _enable_4;
                    _i_5++;
                    _gotoNext = 33976i32;
                } else if (__value__ == (33975i32)) {
                    _i_5 = 0i32;
                    _gotoNext = 33976i32;
                } else if (__value__ == (33976i32)) {
                    if (_i_5 < (stdgo._internal.internal.cpu.Cpu__options._options.length)) {
                        _gotoNext = 33908i32;
                    } else {
                        _gotoNext = 33981i32;
                    };
                } else if (__value__ == (33981i32)) {
                    _gotoNext = 33257i32;
                } else if (__value__ == (34003i32)) {
                    if ((0i32 : stdgo.GoInt) < (stdgo._internal.internal.cpu.Cpu__options._options.length)) {
                        _gotoNext = 34147i32;
                    } else {
                        _gotoNext = 34153i32;
                    };
                } else if (__value__ == (34007i32)) {
                    _i_6++;
                    _gotoNext = 34148i32;
                } else if (__value__ == (34026i32)) {
                    if (stdgo._internal.internal.cpu.Cpu__options._options[(_i_6 : stdgo.GoInt)].name == (_key_2)) {
                        _gotoNext = 34057i32;
                    } else {
                        _gotoNext = 34007i32;
                    };
                } else if (__value__ == (34057i32)) {
                    stdgo._internal.internal.cpu.Cpu__options._options[(_i_6 : stdgo.GoInt)].specified = true;
                    stdgo._internal.internal.cpu.Cpu__options._options[(_i_6 : stdgo.GoInt)].enable = _enable_4;
                    _gotoNext = 33257i32;
                } else if (__value__ == (34147i32)) {
                    _i_6 = 0i32;
                    _gotoNext = 34148i32;
                } else if (__value__ == (34148i32)) {
                    if (_i_6 < (stdgo._internal.internal.cpu.Cpu__options._options.length)) {
                        _gotoNext = 34026i32;
                    } else {
                        _gotoNext = 34153i32;
                    };
                } else if (__value__ == (34153i32)) {
                    stdgo.Go.print(("GODEBUG: unknown cpu feature \"" : stdgo.GoString), _key_2, ("\"\n" : stdgo.GoString));
                    _gotoNext = 33257i32;
                } else if (__value__ == (34212i32)) {
                    if ((0i32 : stdgo.GoInt) < (stdgo._internal.internal.cpu.Cpu__options._options.length)) {
                        _gotoNext = 34425i32;
                    } else {
                        _gotoNext = 34428i32;
                    };
                } else if (__value__ == (34238i32)) {
                    _o_8 = stdgo._internal.internal.cpu.Cpu__options._options[(_i_34224_7 : stdgo.GoInt)];
                    if (!_o_8.specified) {
                        _gotoNext = 34258i32;
                    } else {
                        _gotoNext = 34279i32;
                    };
                } else if (__value__ == (34258i32)) {
                    _i_34224_7++;
                    _gotoNext = 34426i32;
                } else if (__value__ == (34279i32)) {
                    if ((_o_8.enable && !_o_8.feature.value : Bool)) {
                        _gotoNext = 34306i32;
                    } else {
                        _gotoNext = 34403i32;
                    };
                } else if (__value__ == (34306i32)) {
                    stdgo.Go.print(("GODEBUG: can not enable \"" : stdgo.GoString), _o_8.name, ("\", missing CPU support\n" : stdgo.GoString));
                    _i_34224_7++;
                    _gotoNext = 34426i32;
                } else if (__value__ == (34403i32)) {
                    _o_8.feature.value = _o_8.enable;
                    _i_34224_7++;
                    _gotoNext = 34426i32;
                } else if (__value__ == (34425i32)) {
                    {
                        final __tmp__0 = 0i32;
                        final __tmp__1 = stdgo._internal.internal.cpu.Cpu__options._options[(0i32 : stdgo.GoInt)];
                        _i_34224_7 = @:binopAssign __tmp__0;
                        _o_8 = @:binopAssign __tmp__1;
                    };
                    _gotoNext = 34426i32;
                } else if (__value__ == (34426i32)) {
                    if (_i_34224_7 < (stdgo._internal.internal.cpu.Cpu__options._options.length)) {
                        _gotoNext = 34238i32;
                    } else {
                        _gotoNext = 34428i32;
                    };
                } else if (__value__ == (34428i32)) {
                    _gotoNext = -1i32;
                };
            };
        };
    }
