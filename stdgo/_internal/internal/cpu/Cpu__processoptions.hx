package stdgo._internal.internal.cpu;
function _processOptions(_env:stdgo.GoString):Void {
        var _key_2:stdgo.GoString = ("" : stdgo.GoString);
        var _field_0:stdgo.GoString = ("" : stdgo.GoString);
        var _fieldBreak = false;
        var _o_8:stdgo._internal.internal.cpu.Cpu_t_option.T_option = ({} : stdgo._internal.internal.cpu.Cpu_t_option.T_option);
        var _i_5:stdgo.GoInt = (0 : stdgo.GoInt);
        var _enable_4:Bool = false;
        var _i_6:stdgo.GoInt = (0 : stdgo.GoInt);
        var _value_3:stdgo.GoString = ("" : stdgo.GoString);
        var _i_1:stdgo.GoInt = (0 : stdgo.GoInt);
        var _i_242245_7:stdgo.GoInt = (0 : stdgo.GoInt);
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    _gotoNext = 241270i32;
                } else if (__value__ == (241270i32)) {
                    var __blank__ = 0i32;
                    _fieldBreak = false;
                    _gotoNext = 241278i32;
                } else if (__value__ == (241278i32)) {
                    if (!_fieldBreak && (_env != (stdgo.Go.str() : stdgo.GoString))) {
                        _gotoNext = 241292i32;
                    } else {
                        _gotoNext = 242233i32;
                    };
                } else if (__value__ == (241292i32)) {
                    _field_0 = (stdgo.Go.str() : stdgo.GoString)?.__copy__();
                    _i_1 = stdgo._internal.internal.cpu.Cpu__indexbyte._indexByte(_env?.__copy__(), (44 : stdgo.GoUInt8));
                    if ((_i_1 < (0 : stdgo.GoInt) : Bool)) {
                        _gotoNext = 241346i32;
                    } else {
                        _gotoNext = 241381i32;
                    };
                } else if (__value__ == (241346i32)) {
                    {
                        final __tmp__0 = _env?.__copy__();
                        final __tmp__1 = (stdgo.Go.str() : stdgo.GoString)?.__copy__();
                        _field_0 = @:binopAssign __tmp__0;
                        _env = @:binopAssign __tmp__1;
                    };
                    _gotoNext = 241424i32;
                } else if (__value__ == (241381i32)) {
                    _gotoNext = 241381i32;
                    {
                        final __tmp__0 = (_env.__slice__(0, _i_1) : stdgo.GoString)?.__copy__();
                        final __tmp__1 = (_env.__slice__((_i_1 + (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        _field_0 = @:binopAssign __tmp__0;
                        _env = @:binopAssign __tmp__1;
                    };
                    var __blank__ = 0i32;
                    _gotoNext = 241424i32;
                } else if (__value__ == (241424i32)) {
                    if ((((_field_0.length) < (4 : stdgo.GoInt) : Bool) || ((_field_0.__slice__(0, (4 : stdgo.GoInt)) : stdgo.GoString) != ("cpu." : stdgo.GoString)) : Bool)) {
                        _gotoNext = 241465i32;
                    } else {
                        _gotoNext = 241485i32;
                    };
                } else if (__value__ == (241465i32)) {
                    var __blank__ = 0i32;
                    _gotoNext = 241278i32;
                } else if (__value__ == (241485i32)) {
                    _i_1 = stdgo._internal.internal.cpu.Cpu__indexbyte._indexByte(_field_0?.__copy__(), (61 : stdgo.GoUInt8));
                    if ((_i_1 < (0 : stdgo.GoInt) : Bool)) {
                        _gotoNext = 241522i32;
                    } else {
                        _gotoNext = 241604i32;
                    };
                } else if (__value__ == (241522i32)) {
                    stdgo.Go.print(("GODEBUG: no value specified for \"" : stdgo.GoString), _field_0, ("\"\n" : stdgo.GoString));
                    var __blank__ = 0i32;
                    _gotoNext = 241278i32;
                } else if (__value__ == (241604i32)) {
                    {
                        final __tmp__0 = (_field_0.__slice__((4 : stdgo.GoInt), _i_1) : stdgo.GoString)?.__copy__();
                        final __tmp__1 = (_field_0.__slice__((_i_1 + (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        _key_2 = @:binopAssign __tmp__0;
                        _value_3 = @:binopAssign __tmp__1;
                    };
                    _gotoNext = 241684i32;
                } else if (__value__ == (241684i32)) {
                    {
                        final __value__ = _value_3;
                        if (__value__ == (("on" : stdgo.GoString))) {
                            _gotoNext = 241701i32;
                        } else if (__value__ == (("off" : stdgo.GoString))) {
                            _gotoNext = 241731i32;
                        } else {
                            _gotoNext = 241763i32;
                        };
                    };
                } else if (__value__ == (241701i32)) {
                    _enable_4 = true;
                    _gotoNext = 241885i32;
                } else if (__value__ == (241731i32)) {
                    _enable_4 = false;
                    _gotoNext = 241885i32;
                } else if (__value__ == (241763i32)) {
                    stdgo.Go.print(("GODEBUG: value \"" : stdgo.GoString), _value_3, ("\" not supported for cpu option \"" : stdgo.GoString), _key_2, ("\"\n" : stdgo.GoString));
                    _gotoNext = 241278i32;
                } else if (__value__ == (241885i32)) {
                    if (_key_2 == (("all" : stdgo.GoString))) {
                        _gotoNext = 241901i32;
                    } else {
                        _gotoNext = 242024i32;
                    };
                } else if (__value__ == (241901i32)) {
                    if ((0i32 : stdgo.GoInt) < (stdgo._internal.internal.cpu.Cpu__options._options.length)) {
                        _gotoNext = 241996i32;
                    } else {
                        _gotoNext = 242002i32;
                    };
                } else if (__value__ == (241929i32)) {
                    stdgo._internal.internal.cpu.Cpu__options._options[(_i_5 : stdgo.GoInt)].specified = true;
                    stdgo._internal.internal.cpu.Cpu__options._options[(_i_5 : stdgo.GoInt)].enable = _enable_4;
                    _i_5++;
                    _gotoNext = 241997i32;
                } else if (__value__ == (241996i32)) {
                    _i_5 = 0i32;
                    _gotoNext = 241997i32;
                } else if (__value__ == (241997i32)) {
                    if (_i_5 < (stdgo._internal.internal.cpu.Cpu__options._options.length)) {
                        _gotoNext = 241929i32;
                    } else {
                        _gotoNext = 242002i32;
                    };
                } else if (__value__ == (242002i32)) {
                    _gotoNext = 241278i32;
                } else if (__value__ == (242024i32)) {
                    if ((0i32 : stdgo.GoInt) < (stdgo._internal.internal.cpu.Cpu__options._options.length)) {
                        _gotoNext = 242168i32;
                    } else {
                        _gotoNext = 242174i32;
                    };
                } else if (__value__ == (242028i32)) {
                    _i_6++;
                    _gotoNext = 242169i32;
                } else if (__value__ == (242047i32)) {
                    if (stdgo._internal.internal.cpu.Cpu__options._options[(_i_6 : stdgo.GoInt)].name == (_key_2)) {
                        _gotoNext = 242078i32;
                    } else {
                        _gotoNext = 242028i32;
                    };
                } else if (__value__ == (242078i32)) {
                    stdgo._internal.internal.cpu.Cpu__options._options[(_i_6 : stdgo.GoInt)].specified = true;
                    stdgo._internal.internal.cpu.Cpu__options._options[(_i_6 : stdgo.GoInt)].enable = _enable_4;
                    _gotoNext = 241278i32;
                } else if (__value__ == (242168i32)) {
                    _i_6 = 0i32;
                    _gotoNext = 242169i32;
                } else if (__value__ == (242169i32)) {
                    if (_i_6 < (stdgo._internal.internal.cpu.Cpu__options._options.length)) {
                        _gotoNext = 242047i32;
                    } else {
                        _gotoNext = 242174i32;
                    };
                } else if (__value__ == (242174i32)) {
                    stdgo.Go.print(("GODEBUG: unknown cpu feature \"" : stdgo.GoString), _key_2, ("\"\n" : stdgo.GoString));
                    _gotoNext = 241278i32;
                } else if (__value__ == (242233i32)) {
                    if ((0i32 : stdgo.GoInt) < (stdgo._internal.internal.cpu.Cpu__options._options.length)) {
                        _gotoNext = 242446i32;
                    } else {
                        _gotoNext = 242449i32;
                    };
                } else if (__value__ == (242259i32)) {
                    _o_8 = stdgo._internal.internal.cpu.Cpu__options._options[(_i_242245_7 : stdgo.GoInt)];
                    if (!_o_8.specified) {
                        _gotoNext = 242279i32;
                    } else {
                        _gotoNext = 242300i32;
                    };
                } else if (__value__ == (242279i32)) {
                    _i_242245_7++;
                    _gotoNext = 242447i32;
                } else if (__value__ == (242300i32)) {
                    if ((_o_8.enable && !_o_8.feature.value : Bool)) {
                        _gotoNext = 242327i32;
                    } else {
                        _gotoNext = 242424i32;
                    };
                } else if (__value__ == (242327i32)) {
                    stdgo.Go.print(("GODEBUG: can not enable \"" : stdgo.GoString), _o_8.name, ("\", missing CPU support\n" : stdgo.GoString));
                    _i_242245_7++;
                    _gotoNext = 242447i32;
                } else if (__value__ == (242424i32)) {
                    _o_8.feature.value = _o_8.enable;
                    _i_242245_7++;
                    _gotoNext = 242447i32;
                } else if (__value__ == (242446i32)) {
                    {
                        final __tmp__0 = 0i32;
                        final __tmp__1 = stdgo._internal.internal.cpu.Cpu__options._options[(0i32 : stdgo.GoInt)];
                        _i_242245_7 = @:binopAssign __tmp__0;
                        _o_8 = @:binopAssign __tmp__1;
                    };
                    _gotoNext = 242447i32;
                } else if (__value__ == (242447i32)) {
                    if (_i_242245_7 < (stdgo._internal.internal.cpu.Cpu__options._options.length)) {
                        _gotoNext = 242259i32;
                    } else {
                        _gotoNext = 242449i32;
                    };
                } else if (__value__ == (242449i32)) {
                    _gotoNext = -1i32;
                };
            };
        };
    }
