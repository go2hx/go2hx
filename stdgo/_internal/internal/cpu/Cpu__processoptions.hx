package stdgo._internal.internal.cpu;
function _processOptions(_env:stdgo.GoString):Void {
        var _i_5:stdgo.GoInt = (0 : stdgo.GoInt);
        var _enable_4:Bool = false;
        var _key_2:stdgo.GoString = ("" : stdgo.GoString);
        var _i_1:stdgo.GoInt = (0 : stdgo.GoInt);
        var _field_0:stdgo.GoString = ("" : stdgo.GoString);
        var _fieldBreak = false;
        var _o_8:stdgo._internal.internal.cpu.Cpu_t_option.T_option = ({} : stdgo._internal.internal.cpu.Cpu_t_option.T_option);
        var _i_231624_7:stdgo.GoInt = (0 : stdgo.GoInt);
        var _i_6:stdgo.GoInt = (0 : stdgo.GoInt);
        var _value_3:stdgo.GoString = ("" : stdgo.GoString);
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    _gotoNext = 230649i32;
                } else if (__value__ == (230649i32)) {
                    var __blank__ = 0i32;
                    _fieldBreak = false;
                    _gotoNext = 230657i32;
                } else if (__value__ == (230657i32)) {
                    if (!_fieldBreak && (_env != (stdgo.Go.str() : stdgo.GoString))) {
                        _gotoNext = 230671i32;
                    } else {
                        _gotoNext = 231612i32;
                    };
                } else if (__value__ == (230671i32)) {
                    _field_0 = (stdgo.Go.str() : stdgo.GoString)?.__copy__();
                    _i_1 = stdgo._internal.internal.cpu.Cpu__indexbyte._indexByte(_env?.__copy__(), (44 : stdgo.GoUInt8));
                    if ((_i_1 < (0 : stdgo.GoInt) : Bool)) {
                        _gotoNext = 230725i32;
                    } else {
                        _gotoNext = 230760i32;
                    };
                } else if (__value__ == (230725i32)) {
                    {
                        final __tmp__0 = _env?.__copy__();
                        final __tmp__1 = (stdgo.Go.str() : stdgo.GoString)?.__copy__();
                        _field_0 = @:binopAssign __tmp__0;
                        _env = @:binopAssign __tmp__1;
                    };
                    _gotoNext = 230803i32;
                } else if (__value__ == (230760i32)) {
                    _gotoNext = 230760i32;
                    {
                        final __tmp__0 = (_env.__slice__(0, _i_1) : stdgo.GoString)?.__copy__();
                        final __tmp__1 = (_env.__slice__((_i_1 + (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        _field_0 = @:binopAssign __tmp__0;
                        _env = @:binopAssign __tmp__1;
                    };
                    var __blank__ = 0i32;
                    _gotoNext = 230803i32;
                } else if (__value__ == (230803i32)) {
                    if ((((_field_0.length) < (4 : stdgo.GoInt) : Bool) || ((_field_0.__slice__(0, (4 : stdgo.GoInt)) : stdgo.GoString) != ("cpu." : stdgo.GoString)) : Bool)) {
                        _gotoNext = 230844i32;
                    } else {
                        _gotoNext = 230864i32;
                    };
                } else if (__value__ == (230844i32)) {
                    var __blank__ = 0i32;
                    _gotoNext = 230657i32;
                } else if (__value__ == (230864i32)) {
                    _i_1 = stdgo._internal.internal.cpu.Cpu__indexbyte._indexByte(_field_0?.__copy__(), (61 : stdgo.GoUInt8));
                    if ((_i_1 < (0 : stdgo.GoInt) : Bool)) {
                        _gotoNext = 230901i32;
                    } else {
                        _gotoNext = 230983i32;
                    };
                } else if (__value__ == (230901i32)) {
                    stdgo.Go.print(("GODEBUG: no value specified for \"" : stdgo.GoString), _field_0, ("\"\n" : stdgo.GoString));
                    var __blank__ = 0i32;
                    _gotoNext = 230657i32;
                } else if (__value__ == (230983i32)) {
                    {
                        final __tmp__0 = (_field_0.__slice__((4 : stdgo.GoInt), _i_1) : stdgo.GoString)?.__copy__();
                        final __tmp__1 = (_field_0.__slice__((_i_1 + (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        _key_2 = @:binopAssign __tmp__0;
                        _value_3 = @:binopAssign __tmp__1;
                    };
                    _gotoNext = 231063i32;
                } else if (__value__ == (231063i32)) {
                    {
                        final __value__ = _value_3;
                        if (__value__ == (("on" : stdgo.GoString))) {
                            _gotoNext = 231080i32;
                        } else if (__value__ == (("off" : stdgo.GoString))) {
                            _gotoNext = 231110i32;
                        } else {
                            _gotoNext = 231142i32;
                        };
                    };
                } else if (__value__ == (231080i32)) {
                    _enable_4 = true;
                    _gotoNext = 231264i32;
                } else if (__value__ == (231110i32)) {
                    _enable_4 = false;
                    _gotoNext = 231264i32;
                } else if (__value__ == (231142i32)) {
                    stdgo.Go.print(("GODEBUG: value \"" : stdgo.GoString), _value_3, ("\" not supported for cpu option \"" : stdgo.GoString), _key_2, ("\"\n" : stdgo.GoString));
                    _gotoNext = 230657i32;
                } else if (__value__ == (231264i32)) {
                    if (_key_2 == (("all" : stdgo.GoString))) {
                        _gotoNext = 231280i32;
                    } else {
                        _gotoNext = 231403i32;
                    };
                } else if (__value__ == (231280i32)) {
                    if ((0i32 : stdgo.GoInt) < (stdgo._internal.internal.cpu.Cpu__options._options.length)) {
                        _gotoNext = 231375i32;
                    } else {
                        _gotoNext = 231381i32;
                    };
                } else if (__value__ == (231308i32)) {
                    stdgo._internal.internal.cpu.Cpu__options._options[(_i_5 : stdgo.GoInt)].specified = true;
                    stdgo._internal.internal.cpu.Cpu__options._options[(_i_5 : stdgo.GoInt)].enable = _enable_4;
                    _i_5++;
                    _gotoNext = 231376i32;
                } else if (__value__ == (231375i32)) {
                    _i_5 = 0i32;
                    _gotoNext = 231376i32;
                } else if (__value__ == (231376i32)) {
                    if (_i_5 < (stdgo._internal.internal.cpu.Cpu__options._options.length)) {
                        _gotoNext = 231308i32;
                    } else {
                        _gotoNext = 231381i32;
                    };
                } else if (__value__ == (231381i32)) {
                    _gotoNext = 230657i32;
                } else if (__value__ == (231403i32)) {
                    if ((0i32 : stdgo.GoInt) < (stdgo._internal.internal.cpu.Cpu__options._options.length)) {
                        _gotoNext = 231547i32;
                    } else {
                        _gotoNext = 231553i32;
                    };
                } else if (__value__ == (231407i32)) {
                    _i_6++;
                    _gotoNext = 231548i32;
                } else if (__value__ == (231426i32)) {
                    if (stdgo._internal.internal.cpu.Cpu__options._options[(_i_6 : stdgo.GoInt)].name == (_key_2)) {
                        _gotoNext = 231457i32;
                    } else {
                        _gotoNext = 231407i32;
                    };
                } else if (__value__ == (231457i32)) {
                    stdgo._internal.internal.cpu.Cpu__options._options[(_i_6 : stdgo.GoInt)].specified = true;
                    stdgo._internal.internal.cpu.Cpu__options._options[(_i_6 : stdgo.GoInt)].enable = _enable_4;
                    _gotoNext = 230657i32;
                } else if (__value__ == (231547i32)) {
                    _i_6 = 0i32;
                    _gotoNext = 231548i32;
                } else if (__value__ == (231548i32)) {
                    if (_i_6 < (stdgo._internal.internal.cpu.Cpu__options._options.length)) {
                        _gotoNext = 231426i32;
                    } else {
                        _gotoNext = 231553i32;
                    };
                } else if (__value__ == (231553i32)) {
                    stdgo.Go.print(("GODEBUG: unknown cpu feature \"" : stdgo.GoString), _key_2, ("\"\n" : stdgo.GoString));
                    _gotoNext = 230657i32;
                } else if (__value__ == (231612i32)) {
                    if ((0i32 : stdgo.GoInt) < (stdgo._internal.internal.cpu.Cpu__options._options.length)) {
                        _gotoNext = 231825i32;
                    } else {
                        _gotoNext = 231828i32;
                    };
                } else if (__value__ == (231638i32)) {
                    _o_8 = stdgo._internal.internal.cpu.Cpu__options._options[(_i_231624_7 : stdgo.GoInt)];
                    if (!_o_8.specified) {
                        _gotoNext = 231658i32;
                    } else {
                        _gotoNext = 231679i32;
                    };
                } else if (__value__ == (231658i32)) {
                    _i_231624_7++;
                    _gotoNext = 231826i32;
                } else if (__value__ == (231679i32)) {
                    if ((_o_8.enable && !_o_8.feature.value : Bool)) {
                        _gotoNext = 231706i32;
                    } else {
                        _gotoNext = 231803i32;
                    };
                } else if (__value__ == (231706i32)) {
                    stdgo.Go.print(("GODEBUG: can not enable \"" : stdgo.GoString), _o_8.name, ("\", missing CPU support\n" : stdgo.GoString));
                    _i_231624_7++;
                    _gotoNext = 231826i32;
                } else if (__value__ == (231803i32)) {
                    _o_8.feature.value = _o_8.enable;
                    _i_231624_7++;
                    _gotoNext = 231826i32;
                } else if (__value__ == (231825i32)) {
                    {
                        final __tmp__0 = 0i32;
                        final __tmp__1 = stdgo._internal.internal.cpu.Cpu__options._options[(0i32 : stdgo.GoInt)];
                        _i_231624_7 = @:binopAssign __tmp__0;
                        _o_8 = @:binopAssign __tmp__1;
                    };
                    _gotoNext = 231826i32;
                } else if (__value__ == (231826i32)) {
                    if (_i_231624_7 < (stdgo._internal.internal.cpu.Cpu__options._options.length)) {
                        _gotoNext = 231638i32;
                    } else {
                        _gotoNext = 231828i32;
                    };
                } else if (__value__ == (231828i32)) {
                    _gotoNext = -1i32;
                };
            };
        };
    }
