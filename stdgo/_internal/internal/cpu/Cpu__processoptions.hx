package stdgo._internal.internal.cpu;
function _processOptions(_env:stdgo.GoString):Void {
        var _o_8:stdgo._internal.internal.cpu.Cpu_t_option.T_option = ({} : stdgo._internal.internal.cpu.Cpu_t_option.T_option);
        var _i_51466_7:stdgo.GoInt = (0 : stdgo.GoInt);
        var _i_6:stdgo.GoInt = (0 : stdgo.GoInt);
        var _i_5:stdgo.GoInt = (0 : stdgo.GoInt);
        var _key_2:stdgo.GoString = ("" : stdgo.GoString);
        var _i_1:stdgo.GoInt = (0 : stdgo.GoInt);
        var _enable_4:Bool = false;
        var _value_3:stdgo.GoString = ("" : stdgo.GoString);
        var _field_0:stdgo.GoString = ("" : stdgo.GoString);
        var _fieldBreak = false;
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    _gotoNext = 50491i32;
                } else if (__value__ == (50491i32)) {
                    var __blank__ = 0i32;
                    _fieldBreak = false;
                    _gotoNext = 50499i32;
                } else if (__value__ == (50499i32)) {
                    if (!_fieldBreak && (_env != (stdgo.Go.str() : stdgo.GoString))) {
                        _gotoNext = 50513i32;
                    } else {
                        _gotoNext = 51454i32;
                    };
                } else if (__value__ == (50513i32)) {
                    _field_0 = (stdgo.Go.str() : stdgo.GoString)?.__copy__();
                    _i_1 = stdgo._internal.internal.cpu.Cpu__indexbyte._indexByte(_env?.__copy__(), (44 : stdgo.GoUInt8));
                    if ((_i_1 < (0 : stdgo.GoInt) : Bool)) {
                        _gotoNext = 50567i32;
                    } else {
                        _gotoNext = 50602i32;
                    };
                } else if (__value__ == (50567i32)) {
                    {
                        final __tmp__0 = _env?.__copy__();
                        final __tmp__1 = (stdgo.Go.str() : stdgo.GoString)?.__copy__();
                        _field_0 = @:binopAssign __tmp__0;
                        _env = @:binopAssign __tmp__1;
                    };
                    _gotoNext = 50645i32;
                } else if (__value__ == (50602i32)) {
                    _gotoNext = 50602i32;
                    {
                        final __tmp__0 = (_env.__slice__(0, _i_1) : stdgo.GoString)?.__copy__();
                        final __tmp__1 = (_env.__slice__((_i_1 + (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        _field_0 = @:binopAssign __tmp__0;
                        _env = @:binopAssign __tmp__1;
                    };
                    var __blank__ = 0i32;
                    _gotoNext = 50645i32;
                } else if (__value__ == (50645i32)) {
                    if ((((_field_0.length) < (4 : stdgo.GoInt) : Bool) || ((_field_0.__slice__(0, (4 : stdgo.GoInt)) : stdgo.GoString) != ("cpu." : stdgo.GoString)) : Bool)) {
                        _gotoNext = 50686i32;
                    } else {
                        _gotoNext = 50706i32;
                    };
                } else if (__value__ == (50686i32)) {
                    var __blank__ = 0i32;
                    _gotoNext = 50499i32;
                } else if (__value__ == (50706i32)) {
                    _i_1 = stdgo._internal.internal.cpu.Cpu__indexbyte._indexByte(_field_0?.__copy__(), (61 : stdgo.GoUInt8));
                    if ((_i_1 < (0 : stdgo.GoInt) : Bool)) {
                        _gotoNext = 50743i32;
                    } else {
                        _gotoNext = 50825i32;
                    };
                } else if (__value__ == (50743i32)) {
                    stdgo.Go.print(("GODEBUG: no value specified for \"" : stdgo.GoString), _field_0, ("\"\n" : stdgo.GoString));
                    var __blank__ = 0i32;
                    _gotoNext = 50499i32;
                } else if (__value__ == (50825i32)) {
                    {
                        final __tmp__0 = (_field_0.__slice__((4 : stdgo.GoInt), _i_1) : stdgo.GoString)?.__copy__();
                        final __tmp__1 = (_field_0.__slice__((_i_1 + (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        _key_2 = @:binopAssign __tmp__0;
                        _value_3 = @:binopAssign __tmp__1;
                    };
                    _gotoNext = 50905i32;
                } else if (__value__ == (50905i32)) {
                    {
                        final __value__ = _value_3;
                        if (__value__ == (("on" : stdgo.GoString))) {
                            _gotoNext = 50922i32;
                        } else if (__value__ == (("off" : stdgo.GoString))) {
                            _gotoNext = 50952i32;
                        } else {
                            _gotoNext = 50984i32;
                        };
                    };
                } else if (__value__ == (50922i32)) {
                    _enable_4 = true;
                    _gotoNext = 51106i32;
                } else if (__value__ == (50952i32)) {
                    _enable_4 = false;
                    _gotoNext = 51106i32;
                } else if (__value__ == (50984i32)) {
                    stdgo.Go.print(("GODEBUG: value \"" : stdgo.GoString), _value_3, ("\" not supported for cpu option \"" : stdgo.GoString), _key_2, ("\"\n" : stdgo.GoString));
                    _gotoNext = 50499i32;
                } else if (__value__ == (51106i32)) {
                    if (_key_2 == (("all" : stdgo.GoString))) {
                        _gotoNext = 51122i32;
                    } else {
                        _gotoNext = 51245i32;
                    };
                } else if (__value__ == (51122i32)) {
                    if ((0i32 : stdgo.GoInt) < (stdgo._internal.internal.cpu.Cpu__options._options.length)) {
                        _gotoNext = 51217i32;
                    } else {
                        _gotoNext = 51223i32;
                    };
                } else if (__value__ == (51150i32)) {
                    stdgo._internal.internal.cpu.Cpu__options._options[(_i_5 : stdgo.GoInt)].specified = true;
                    stdgo._internal.internal.cpu.Cpu__options._options[(_i_5 : stdgo.GoInt)].enable = _enable_4;
                    _i_5++;
                    _gotoNext = 51218i32;
                } else if (__value__ == (51217i32)) {
                    _i_5 = 0i32;
                    _gotoNext = 51218i32;
                } else if (__value__ == (51218i32)) {
                    if (_i_5 < (stdgo._internal.internal.cpu.Cpu__options._options.length)) {
                        _gotoNext = 51150i32;
                    } else {
                        _gotoNext = 51223i32;
                    };
                } else if (__value__ == (51223i32)) {
                    _gotoNext = 50499i32;
                } else if (__value__ == (51245i32)) {
                    if ((0i32 : stdgo.GoInt) < (stdgo._internal.internal.cpu.Cpu__options._options.length)) {
                        _gotoNext = 51389i32;
                    } else {
                        _gotoNext = 51395i32;
                    };
                } else if (__value__ == (51249i32)) {
                    _i_6++;
                    _gotoNext = 51390i32;
                } else if (__value__ == (51268i32)) {
                    if (stdgo._internal.internal.cpu.Cpu__options._options[(_i_6 : stdgo.GoInt)].name == (_key_2)) {
                        _gotoNext = 51299i32;
                    } else {
                        _gotoNext = 51249i32;
                    };
                } else if (__value__ == (51299i32)) {
                    stdgo._internal.internal.cpu.Cpu__options._options[(_i_6 : stdgo.GoInt)].specified = true;
                    stdgo._internal.internal.cpu.Cpu__options._options[(_i_6 : stdgo.GoInt)].enable = _enable_4;
                    _gotoNext = 50499i32;
                } else if (__value__ == (51389i32)) {
                    _i_6 = 0i32;
                    _gotoNext = 51390i32;
                } else if (__value__ == (51390i32)) {
                    if (_i_6 < (stdgo._internal.internal.cpu.Cpu__options._options.length)) {
                        _gotoNext = 51268i32;
                    } else {
                        _gotoNext = 51395i32;
                    };
                } else if (__value__ == (51395i32)) {
                    stdgo.Go.print(("GODEBUG: unknown cpu feature \"" : stdgo.GoString), _key_2, ("\"\n" : stdgo.GoString));
                    _gotoNext = 50499i32;
                } else if (__value__ == (51454i32)) {
                    if ((0i32 : stdgo.GoInt) < (stdgo._internal.internal.cpu.Cpu__options._options.length)) {
                        _gotoNext = 51667i32;
                    } else {
                        _gotoNext = 51670i32;
                    };
                } else if (__value__ == (51480i32)) {
                    _o_8 = stdgo._internal.internal.cpu.Cpu__options._options[(_i_51466_7 : stdgo.GoInt)];
                    if (!_o_8.specified) {
                        _gotoNext = 51500i32;
                    } else {
                        _gotoNext = 51521i32;
                    };
                } else if (__value__ == (51500i32)) {
                    _i_51466_7++;
                    _gotoNext = 51668i32;
                } else if (__value__ == (51521i32)) {
                    if ((_o_8.enable && !_o_8.feature.value : Bool)) {
                        _gotoNext = 51548i32;
                    } else {
                        _gotoNext = 51645i32;
                    };
                } else if (__value__ == (51548i32)) {
                    stdgo.Go.print(("GODEBUG: can not enable \"" : stdgo.GoString), _o_8.name, ("\", missing CPU support\n" : stdgo.GoString));
                    _i_51466_7++;
                    _gotoNext = 51668i32;
                } else if (__value__ == (51645i32)) {
                    _o_8.feature.value = _o_8.enable;
                    _i_51466_7++;
                    _gotoNext = 51668i32;
                } else if (__value__ == (51667i32)) {
                    {
                        final __tmp__0 = 0i32;
                        final __tmp__1 = stdgo._internal.internal.cpu.Cpu__options._options[(0i32 : stdgo.GoInt)];
                        _i_51466_7 = @:binopAssign __tmp__0;
                        _o_8 = @:binopAssign __tmp__1;
                    };
                    _gotoNext = 51668i32;
                } else if (__value__ == (51668i32)) {
                    if (_i_51466_7 < (stdgo._internal.internal.cpu.Cpu__options._options.length)) {
                        _gotoNext = 51480i32;
                    } else {
                        _gotoNext = 51670i32;
                    };
                } else if (__value__ == (51670i32)) {
                    _gotoNext = -1i32;
                };
            };
        };
    }
