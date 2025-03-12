package stdgo._internal.internal.cpu;
function _processOptions(_env:stdgo.GoString):Void {
        var _i_5:stdgo.GoInt = (0 : stdgo.GoInt);
        var _enable_4:Bool = false;
        var _i_1:stdgo.GoInt = (0 : stdgo.GoInt);
        var _fieldBreak = false;
        var _i_6:stdgo.GoInt = (0 : stdgo.GoInt);
        var _value_3:stdgo.GoString = ("" : stdgo.GoString);
        var _key_2:stdgo.GoString = ("" : stdgo.GoString);
        var _field_0:stdgo.GoString = ("" : stdgo.GoString);
        var _o_8:stdgo._internal.internal.cpu.Cpu_t_option.T_option = ({} : stdgo._internal.internal.cpu.Cpu_t_option.T_option);
        var _iterator_265912_7:stdgo.GoInt = (0 : stdgo.GoInt);
        var _gotoNext = 0i32;
        _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    _gotoNext = 264937i32;
                } else if (__value__ == (264937i32)) {
                    0i32;
                    _fieldBreak = false;
                    _gotoNext = 264945i32;
                } else if (__value__ == (264945i32)) {
                    if (!_fieldBreak && (_env != (stdgo.Go.str() : stdgo.GoString))) {
                        _gotoNext = 264959i32;
                    } else {
                        _gotoNext = 265900i32;
                    };
                } else if (__value__ == (264959i32)) {
                    _field_0 = (stdgo.Go.str() : stdgo.GoString)?.__copy__();
                    _i_1 = stdgo._internal.internal.cpu.Cpu__indexbyte._indexByte(_env?.__copy__(), (44 : stdgo.GoUInt8));
                    if ((_i_1 < (0 : stdgo.GoInt) : Bool)) {
                        _gotoNext = 265013i32;
                    } else {
                        _gotoNext = 265048i32;
                    };
                } else if (__value__ == (265013i32)) {
                    {
                        final __tmp__0 = _env?.__copy__();
                        final __tmp__1 = (stdgo.Go.str() : stdgo.GoString)?.__copy__();
                        _field_0 = @:binopAssign __tmp__0;
                        _env = @:binopAssign __tmp__1;
                    };
                    _gotoNext = 265091i32;
                } else if (__value__ == (265048i32)) {
                    _gotoNext = 265048i32;
                    {
                        final __tmp__0 = (_env.__slice__(0, _i_1) : stdgo.GoString)?.__copy__();
                        final __tmp__1 = (_env.__slice__((_i_1 + (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        _field_0 = @:binopAssign __tmp__0;
                        _env = @:binopAssign __tmp__1;
                    };
                    0i32;
                    _gotoNext = 265091i32;
                } else if (__value__ == (265091i32)) {
                    if ((((_field_0.length) < (4 : stdgo.GoInt) : Bool) || ((_field_0.__slice__(0, (4 : stdgo.GoInt)) : stdgo.GoString) != ("cpu." : stdgo.GoString)) : Bool)) {
                        _gotoNext = 265132i32;
                    } else {
                        _gotoNext = 265152i32;
                    };
                } else if (__value__ == (265132i32)) {
                    0i32;
                    _gotoNext = 264945i32;
                } else if (__value__ == (265152i32)) {
                    _i_1 = stdgo._internal.internal.cpu.Cpu__indexbyte._indexByte(_field_0?.__copy__(), (61 : stdgo.GoUInt8));
                    if ((_i_1 < (0 : stdgo.GoInt) : Bool)) {
                        _gotoNext = 265189i32;
                    } else {
                        _gotoNext = 265271i32;
                    };
                } else if (__value__ == (265189i32)) {
                    stdgo.Go.print(("GODEBUG: no value specified for \"" : stdgo.GoString), _field_0, ("\"\n" : stdgo.GoString));
                    0i32;
                    _gotoNext = 264945i32;
                } else if (__value__ == (265271i32)) {
                    {
                        final __tmp__0 = (_field_0.__slice__((4 : stdgo.GoInt), _i_1) : stdgo.GoString)?.__copy__();
                        final __tmp__1 = (_field_0.__slice__((_i_1 + (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        _key_2 = @:binopAssign __tmp__0;
                        _value_3 = @:binopAssign __tmp__1;
                    };
                    _gotoNext = 265351i32;
                } else if (__value__ == (265351i32)) {
                    {
                        final __value__ = _value_3;
                        if (__value__ == (("on" : stdgo.GoString))) {
                            _gotoNext = 265368i32;
                        } else if (__value__ == (("off" : stdgo.GoString))) {
                            _gotoNext = 265398i32;
                        } else {
                            _gotoNext = 265430i32;
                        };
                    };
                } else if (__value__ == (265368i32)) {
                    _enable_4 = true;
                    _gotoNext = 265552i32;
                } else if (__value__ == (265398i32)) {
                    _enable_4 = false;
                    _gotoNext = 265552i32;
                } else if (__value__ == (265430i32)) {
                    stdgo.Go.print(("GODEBUG: value \"" : stdgo.GoString), _value_3, ("\" not supported for cpu option \"" : stdgo.GoString), _key_2, ("\"\n" : stdgo.GoString));
                    _gotoNext = 264945i32;
                } else if (__value__ == (265552i32)) {
                    if (_key_2 == (("all" : stdgo.GoString))) {
                        _gotoNext = 265568i32;
                    } else {
                        _gotoNext = 265691i32;
                    };
                } else if (__value__ == (265568i32)) {
                    if ((0i32 : stdgo.GoInt) < (stdgo._internal.internal.cpu.Cpu__options._options.length)) {
                        _gotoNext = 265663i32;
                    } else {
                        _gotoNext = 265669i32;
                    };
                } else if (__value__ == (265596i32)) {
                    stdgo._internal.internal.cpu.Cpu__options._options[(_i_5 : stdgo.GoInt)].specified = true;
                    stdgo._internal.internal.cpu.Cpu__options._options[(_i_5 : stdgo.GoInt)].enable = _enable_4;
                    _i_5++;
                    _gotoNext = 265664i32;
                } else if (__value__ == (265663i32)) {
                    _i_5 = 0i32;
                    _gotoNext = 265664i32;
                } else if (__value__ == (265664i32)) {
                    if (_i_5 < (stdgo._internal.internal.cpu.Cpu__options._options.length)) {
                        _gotoNext = 265596i32;
                    } else {
                        _gotoNext = 265669i32;
                    };
                } else if (__value__ == (265669i32)) {
                    _gotoNext = 264945i32;
                } else if (__value__ == (265691i32)) {
                    if ((0i32 : stdgo.GoInt) < (stdgo._internal.internal.cpu.Cpu__options._options.length)) {
                        _gotoNext = 265835i32;
                    } else {
                        _gotoNext = 265841i32;
                    };
                } else if (__value__ == (265695i32)) {
                    _i_6++;
                    _gotoNext = 265836i32;
                } else if (__value__ == (265714i32)) {
                    if (stdgo._internal.internal.cpu.Cpu__options._options[(_i_6 : stdgo.GoInt)].name == (_key_2)) {
                        _gotoNext = 265745i32;
                    } else {
                        _gotoNext = 265695i32;
                    };
                } else if (__value__ == (265745i32)) {
                    stdgo._internal.internal.cpu.Cpu__options._options[(_i_6 : stdgo.GoInt)].specified = true;
                    stdgo._internal.internal.cpu.Cpu__options._options[(_i_6 : stdgo.GoInt)].enable = _enable_4;
                    _gotoNext = 264945i32;
                } else if (__value__ == (265835i32)) {
                    _i_6 = 0i32;
                    _gotoNext = 265836i32;
                } else if (__value__ == (265836i32)) {
                    if (_i_6 < (stdgo._internal.internal.cpu.Cpu__options._options.length)) {
                        _gotoNext = 265714i32;
                    } else {
                        _gotoNext = 265841i32;
                    };
                } else if (__value__ == (265841i32)) {
                    stdgo.Go.print(("GODEBUG: unknown cpu feature \"" : stdgo.GoString), _key_2, ("\"\n" : stdgo.GoString));
                    _gotoNext = 264945i32;
                } else if (__value__ == (265900i32)) {
                    if ((0i32 : stdgo.GoInt) < (stdgo._internal.internal.cpu.Cpu__options._options.length)) {
                        _gotoNext = 266113i32;
                    } else {
                        _gotoNext = 266116i32;
                    };
                } else if (__value__ == (265926i32)) {
                    _o_8 = stdgo._internal.internal.cpu.Cpu__options._options[(_iterator_265912_7 : stdgo.GoInt)];
                    if (!_o_8.specified) {
                        _gotoNext = 265946i32;
                    } else {
                        _gotoNext = 265967i32;
                    };
                } else if (__value__ == (265946i32)) {
                    _iterator_265912_7++;
                    _gotoNext = 266114i32;
                } else if (__value__ == (265967i32)) {
                    if ((_o_8.enable && !_o_8.feature.value : Bool)) {
                        _gotoNext = 265994i32;
                    } else {
                        _gotoNext = 266091i32;
                    };
                } else if (__value__ == (265994i32)) {
                    stdgo.Go.print(("GODEBUG: can not enable \"" : stdgo.GoString), _o_8.name, ("\", missing CPU support\n" : stdgo.GoString));
                    _iterator_265912_7++;
                    _gotoNext = 266114i32;
                } else if (__value__ == (266091i32)) {
                    _o_8.feature.value = _o_8.enable;
                    _iterator_265912_7++;
                    _gotoNext = 266114i32;
                } else if (__value__ == (266113i32)) {
                    {
                        final __tmp__0 = 0i32;
                        final __tmp__1 = stdgo._internal.internal.cpu.Cpu__options._options[(0i32 : stdgo.GoInt)];
                        _iterator_265912_7 = @:binopAssign __tmp__0;
                        _o_8 = @:binopAssign __tmp__1;
                    };
                    _gotoNext = 266114i32;
                } else if (__value__ == (266114i32)) {
                    if (_iterator_265912_7 < (stdgo._internal.internal.cpu.Cpu__options._options.length)) {
                        _gotoNext = 265926i32;
                    } else {
                        _gotoNext = 266116i32;
                    };
                } else if (__value__ == (266116i32)) {
                    _gotoNext = -1i32;
                };
            };
        };
    }
