package stdgo._internal.internal.cpu;
function _processOptions(_env:stdgo.GoString):Void {
        var _value_3:stdgo.GoString = ("" : stdgo.GoString);
        var _i_1:stdgo.GoInt = (0 : stdgo.GoInt);
        var _fieldBreak = false;
        var _o_8:stdgo._internal.internal.cpu.Cpu_t_option.T_option = ({} : stdgo._internal.internal.cpu.Cpu_t_option.T_option);
        var _i_6:stdgo.GoInt = (0 : stdgo.GoInt);
        var _i_5:stdgo.GoInt = (0 : stdgo.GoInt);
        var _enable_4:Bool = false;
        var _key_2:stdgo.GoString = ("" : stdgo.GoString);
        var _field_0:stdgo.GoString = ("" : stdgo.GoString);
        var _iterator_241817_7:stdgo.GoInt = (0 : stdgo.GoInt);
        var _gotoNext = 0i32;
        _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    _gotoNext = 240842i32;
                } else if (__value__ == (240842i32)) {
                    0i32;
                    _fieldBreak = false;
                    _gotoNext = 240850i32;
                } else if (__value__ == (240850i32)) {
                    if (!_fieldBreak && (_env != (stdgo.Go.str() : stdgo.GoString))) {
                        _gotoNext = 240864i32;
                    } else {
                        _gotoNext = 241805i32;
                    };
                } else if (__value__ == (240864i32)) {
                    _field_0 = (stdgo.Go.str() : stdgo.GoString)?.__copy__();
                    _i_1 = stdgo._internal.internal.cpu.Cpu__indexbyte._indexByte(_env?.__copy__(), (44 : stdgo.GoUInt8));
                    if ((_i_1 < (0 : stdgo.GoInt) : Bool)) {
                        _gotoNext = 240918i32;
                    } else {
                        _gotoNext = 240953i32;
                    };
                } else if (__value__ == (240918i32)) {
                    {
                        final __tmp__0 = _env?.__copy__();
                        final __tmp__1 = (stdgo.Go.str() : stdgo.GoString)?.__copy__();
                        _field_0 = @:binopAssign __tmp__0;
                        _env = @:binopAssign __tmp__1;
                    };
                    _gotoNext = 240996i32;
                } else if (__value__ == (240953i32)) {
                    _gotoNext = 240953i32;
                    {
                        final __tmp__0 = (_env.__slice__(0, _i_1) : stdgo.GoString)?.__copy__();
                        final __tmp__1 = (_env.__slice__((_i_1 + (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        _field_0 = @:binopAssign __tmp__0;
                        _env = @:binopAssign __tmp__1;
                    };
                    0i32;
                    _gotoNext = 240996i32;
                } else if (__value__ == (240996i32)) {
                    if ((((_field_0.length) < (4 : stdgo.GoInt) : Bool) || ((_field_0.__slice__(0, (4 : stdgo.GoInt)) : stdgo.GoString) != ("cpu." : stdgo.GoString)) : Bool)) {
                        _gotoNext = 241037i32;
                    } else {
                        _gotoNext = 241057i32;
                    };
                } else if (__value__ == (241037i32)) {
                    0i32;
                    _gotoNext = 240850i32;
                } else if (__value__ == (241057i32)) {
                    _i_1 = stdgo._internal.internal.cpu.Cpu__indexbyte._indexByte(_field_0?.__copy__(), (61 : stdgo.GoUInt8));
                    if ((_i_1 < (0 : stdgo.GoInt) : Bool)) {
                        _gotoNext = 241094i32;
                    } else {
                        _gotoNext = 241176i32;
                    };
                } else if (__value__ == (241094i32)) {
                    stdgo.Go.print(("GODEBUG: no value specified for \"" : stdgo.GoString), _field_0, ("\"\n" : stdgo.GoString));
                    0i32;
                    _gotoNext = 240850i32;
                } else if (__value__ == (241176i32)) {
                    {
                        final __tmp__0 = (_field_0.__slice__((4 : stdgo.GoInt), _i_1) : stdgo.GoString)?.__copy__();
                        final __tmp__1 = (_field_0.__slice__((_i_1 + (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        _key_2 = @:binopAssign __tmp__0;
                        _value_3 = @:binopAssign __tmp__1;
                    };
                    _gotoNext = 241256i32;
                } else if (__value__ == (241256i32)) {
                    {
                        final __value__ = _value_3;
                        if (__value__ == (("on" : stdgo.GoString))) {
                            _gotoNext = 241273i32;
                        } else if (__value__ == (("off" : stdgo.GoString))) {
                            _gotoNext = 241303i32;
                        } else {
                            _gotoNext = 241335i32;
                        };
                    };
                } else if (__value__ == (241273i32)) {
                    _enable_4 = true;
                    _gotoNext = 241457i32;
                } else if (__value__ == (241303i32)) {
                    _enable_4 = false;
                    _gotoNext = 241457i32;
                } else if (__value__ == (241335i32)) {
                    stdgo.Go.print(("GODEBUG: value \"" : stdgo.GoString), _value_3, ("\" not supported for cpu option \"" : stdgo.GoString), _key_2, ("\"\n" : stdgo.GoString));
                    _gotoNext = 240850i32;
                } else if (__value__ == (241457i32)) {
                    if (_key_2 == (("all" : stdgo.GoString))) {
                        _gotoNext = 241473i32;
                    } else {
                        _gotoNext = 241596i32;
                    };
                } else if (__value__ == (241473i32)) {
                    if ((0i32 : stdgo.GoInt) < (stdgo._internal.internal.cpu.Cpu__options._options.length)) {
                        _gotoNext = 241568i32;
                    } else {
                        _gotoNext = 241574i32;
                    };
                } else if (__value__ == (241501i32)) {
                    stdgo._internal.internal.cpu.Cpu__options._options[(_i_5 : stdgo.GoInt)].specified = true;
                    stdgo._internal.internal.cpu.Cpu__options._options[(_i_5 : stdgo.GoInt)].enable = _enable_4;
                    _i_5++;
                    _gotoNext = 241569i32;
                } else if (__value__ == (241568i32)) {
                    _i_5 = 0i32;
                    _gotoNext = 241569i32;
                } else if (__value__ == (241569i32)) {
                    if (_i_5 < (stdgo._internal.internal.cpu.Cpu__options._options.length)) {
                        _gotoNext = 241501i32;
                    } else {
                        _gotoNext = 241574i32;
                    };
                } else if (__value__ == (241574i32)) {
                    _gotoNext = 240850i32;
                } else if (__value__ == (241596i32)) {
                    if ((0i32 : stdgo.GoInt) < (stdgo._internal.internal.cpu.Cpu__options._options.length)) {
                        _gotoNext = 241740i32;
                    } else {
                        _gotoNext = 241746i32;
                    };
                } else if (__value__ == (241600i32)) {
                    _i_6++;
                    _gotoNext = 241741i32;
                } else if (__value__ == (241619i32)) {
                    if (stdgo._internal.internal.cpu.Cpu__options._options[(_i_6 : stdgo.GoInt)].name == (_key_2)) {
                        _gotoNext = 241650i32;
                    } else {
                        _gotoNext = 241600i32;
                    };
                } else if (__value__ == (241650i32)) {
                    stdgo._internal.internal.cpu.Cpu__options._options[(_i_6 : stdgo.GoInt)].specified = true;
                    stdgo._internal.internal.cpu.Cpu__options._options[(_i_6 : stdgo.GoInt)].enable = _enable_4;
                    _gotoNext = 240850i32;
                } else if (__value__ == (241740i32)) {
                    _i_6 = 0i32;
                    _gotoNext = 241741i32;
                } else if (__value__ == (241741i32)) {
                    if (_i_6 < (stdgo._internal.internal.cpu.Cpu__options._options.length)) {
                        _gotoNext = 241619i32;
                    } else {
                        _gotoNext = 241746i32;
                    };
                } else if (__value__ == (241746i32)) {
                    stdgo.Go.print(("GODEBUG: unknown cpu feature \"" : stdgo.GoString), _key_2, ("\"\n" : stdgo.GoString));
                    _gotoNext = 240850i32;
                } else if (__value__ == (241805i32)) {
                    if ((0i32 : stdgo.GoInt) < (stdgo._internal.internal.cpu.Cpu__options._options.length)) {
                        _gotoNext = 242018i32;
                    } else {
                        _gotoNext = 242021i32;
                    };
                } else if (__value__ == (241831i32)) {
                    _o_8 = stdgo._internal.internal.cpu.Cpu__options._options[(_iterator_241817_7 : stdgo.GoInt)];
                    if (!_o_8.specified) {
                        _gotoNext = 241851i32;
                    } else {
                        _gotoNext = 241872i32;
                    };
                } else if (__value__ == (241851i32)) {
                    _iterator_241817_7++;
                    _gotoNext = 242019i32;
                } else if (__value__ == (241872i32)) {
                    if ((_o_8.enable && !_o_8.feature.value : Bool)) {
                        _gotoNext = 241899i32;
                    } else {
                        _gotoNext = 241996i32;
                    };
                } else if (__value__ == (241899i32)) {
                    stdgo.Go.print(("GODEBUG: can not enable \"" : stdgo.GoString), _o_8.name, ("\", missing CPU support\n" : stdgo.GoString));
                    _iterator_241817_7++;
                    _gotoNext = 242019i32;
                } else if (__value__ == (241996i32)) {
                    _o_8.feature.value = _o_8.enable;
                    _iterator_241817_7++;
                    _gotoNext = 242019i32;
                } else if (__value__ == (242018i32)) {
                    {
                        final __tmp__0 = 0i32;
                        final __tmp__1 = stdgo._internal.internal.cpu.Cpu__options._options[(0i32 : stdgo.GoInt)];
                        _iterator_241817_7 = @:binopAssign __tmp__0;
                        _o_8 = @:binopAssign __tmp__1;
                    };
                    _gotoNext = 242019i32;
                } else if (__value__ == (242019i32)) {
                    if (_iterator_241817_7 < (stdgo._internal.internal.cpu.Cpu__options._options.length)) {
                        _gotoNext = 241831i32;
                    } else {
                        _gotoNext = 242021i32;
                    };
                } else if (__value__ == (242021i32)) {
                    _gotoNext = -1i32;
                };
            };
        };
    }
