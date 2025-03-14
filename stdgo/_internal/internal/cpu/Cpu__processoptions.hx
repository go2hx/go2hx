package stdgo._internal.internal.cpu;
function _processOptions(_env:stdgo.GoString):Void {
        var _i_5:stdgo.GoInt = (0 : stdgo.GoInt);
        var _enable_4:Bool = false;
        var _key_2:stdgo.GoString = ("" : stdgo.GoString);
        var _value_3:stdgo.GoString = ("" : stdgo.GoString);
        var _i_1:stdgo.GoInt = (0 : stdgo.GoInt);
        var _field_0:stdgo.GoString = ("" : stdgo.GoString);
        var _fieldBreak = false;
        var _o_8:stdgo._internal.internal.cpu.Cpu_t_option.T_option = ({} : stdgo._internal.internal.cpu.Cpu_t_option.T_option);
        var _iterator_283574_7:stdgo.GoInt = (0 : stdgo.GoInt);
        var _i_6:stdgo.GoInt = (0 : stdgo.GoInt);
        var _gotoNext = 0i32;
        _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    _gotoNext = 282599i32;
                } else if (__value__ == (282599i32)) {
                    0i32;
                    _fieldBreak = false;
                    _gotoNext = 282607i32;
                } else if (__value__ == (282607i32)) {
                    if (!_fieldBreak && (_env != (stdgo.Go.str() : stdgo.GoString))) {
                        _gotoNext = 282621i32;
                    } else {
                        _gotoNext = 283562i32;
                    };
                } else if (__value__ == (282621i32)) {
                    _field_0 = (stdgo.Go.str() : stdgo.GoString)?.__copy__();
                    _i_1 = stdgo._internal.internal.cpu.Cpu__indexbyte._indexByte(_env?.__copy__(), (44 : stdgo.GoUInt8));
                    if ((_i_1 < (0 : stdgo.GoInt) : Bool)) {
                        _gotoNext = 282675i32;
                    } else {
                        _gotoNext = 282710i32;
                    };
                } else if (__value__ == (282675i32)) {
                    {
                        final __tmp__0 = _env?.__copy__();
                        final __tmp__1 = (stdgo.Go.str() : stdgo.GoString)?.__copy__();
                        _field_0 = @:binopAssign __tmp__0;
                        _env = @:binopAssign __tmp__1;
                    };
                    _gotoNext = 282753i32;
                } else if (__value__ == (282710i32)) {
                    _gotoNext = 282710i32;
                    {
                        final __tmp__0 = (_env.__slice__(0, _i_1) : stdgo.GoString)?.__copy__();
                        final __tmp__1 = (_env.__slice__((_i_1 + (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        _field_0 = @:binopAssign __tmp__0;
                        _env = @:binopAssign __tmp__1;
                    };
                    0i32;
                    _gotoNext = 282753i32;
                } else if (__value__ == (282753i32)) {
                    if ((((_field_0.length) < (4 : stdgo.GoInt) : Bool) || ((_field_0.__slice__(0, (4 : stdgo.GoInt)) : stdgo.GoString) != ("cpu." : stdgo.GoString)) : Bool)) {
                        _gotoNext = 282794i32;
                    } else {
                        _gotoNext = 282814i32;
                    };
                } else if (__value__ == (282794i32)) {
                    0i32;
                    _gotoNext = 282607i32;
                } else if (__value__ == (282814i32)) {
                    _i_1 = stdgo._internal.internal.cpu.Cpu__indexbyte._indexByte(_field_0?.__copy__(), (61 : stdgo.GoUInt8));
                    if ((_i_1 < (0 : stdgo.GoInt) : Bool)) {
                        _gotoNext = 282851i32;
                    } else {
                        _gotoNext = 282933i32;
                    };
                } else if (__value__ == (282851i32)) {
                    stdgo.Go.print(("GODEBUG: no value specified for \"" : stdgo.GoString), _field_0, ("\"\n" : stdgo.GoString));
                    0i32;
                    _gotoNext = 282607i32;
                } else if (__value__ == (282933i32)) {
                    {
                        final __tmp__0 = (_field_0.__slice__((4 : stdgo.GoInt), _i_1) : stdgo.GoString)?.__copy__();
                        final __tmp__1 = (_field_0.__slice__((_i_1 + (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        _key_2 = @:binopAssign __tmp__0;
                        _value_3 = @:binopAssign __tmp__1;
                    };
                    _gotoNext = 283013i32;
                } else if (__value__ == (283013i32)) {
                    {
                        final __value__ = _value_3;
                        if (__value__ == (("on" : stdgo.GoString))) {
                            _gotoNext = 283030i32;
                        } else if (__value__ == (("off" : stdgo.GoString))) {
                            _gotoNext = 283060i32;
                        } else {
                            _gotoNext = 283092i32;
                        };
                    };
                } else if (__value__ == (283030i32)) {
                    _enable_4 = true;
                    _gotoNext = 283214i32;
                } else if (__value__ == (283060i32)) {
                    _enable_4 = false;
                    _gotoNext = 283214i32;
                } else if (__value__ == (283092i32)) {
                    stdgo.Go.print(("GODEBUG: value \"" : stdgo.GoString), _value_3, ("\" not supported for cpu option \"" : stdgo.GoString), _key_2, ("\"\n" : stdgo.GoString));
                    _gotoNext = 282607i32;
                } else if (__value__ == (283214i32)) {
                    if (_key_2 == (("all" : stdgo.GoString))) {
                        _gotoNext = 283230i32;
                    } else {
                        _gotoNext = 283353i32;
                    };
                } else if (__value__ == (283230i32)) {
                    if ((0i32 : stdgo.GoInt) < (stdgo._internal.internal.cpu.Cpu__options._options.length)) {
                        _gotoNext = 283325i32;
                    } else {
                        _gotoNext = 283331i32;
                    };
                } else if (__value__ == (283258i32)) {
                    stdgo._internal.internal.cpu.Cpu__options._options[(_i_5 : stdgo.GoInt)].specified = true;
                    stdgo._internal.internal.cpu.Cpu__options._options[(_i_5 : stdgo.GoInt)].enable = _enable_4;
                    _i_5++;
                    _gotoNext = 283326i32;
                } else if (__value__ == (283325i32)) {
                    _i_5 = 0i32;
                    _gotoNext = 283326i32;
                } else if (__value__ == (283326i32)) {
                    if (_i_5 < (stdgo._internal.internal.cpu.Cpu__options._options.length)) {
                        _gotoNext = 283258i32;
                    } else {
                        _gotoNext = 283331i32;
                    };
                } else if (__value__ == (283331i32)) {
                    _gotoNext = 282607i32;
                } else if (__value__ == (283353i32)) {
                    if ((0i32 : stdgo.GoInt) < (stdgo._internal.internal.cpu.Cpu__options._options.length)) {
                        _gotoNext = 283497i32;
                    } else {
                        _gotoNext = 283503i32;
                    };
                } else if (__value__ == (283357i32)) {
                    _i_6++;
                    _gotoNext = 283498i32;
                } else if (__value__ == (283376i32)) {
                    if (stdgo._internal.internal.cpu.Cpu__options._options[(_i_6 : stdgo.GoInt)].name == (_key_2)) {
                        _gotoNext = 283407i32;
                    } else {
                        _gotoNext = 283357i32;
                    };
                } else if (__value__ == (283407i32)) {
                    stdgo._internal.internal.cpu.Cpu__options._options[(_i_6 : stdgo.GoInt)].specified = true;
                    stdgo._internal.internal.cpu.Cpu__options._options[(_i_6 : stdgo.GoInt)].enable = _enable_4;
                    _gotoNext = 282607i32;
                } else if (__value__ == (283497i32)) {
                    _i_6 = 0i32;
                    _gotoNext = 283498i32;
                } else if (__value__ == (283498i32)) {
                    if (_i_6 < (stdgo._internal.internal.cpu.Cpu__options._options.length)) {
                        _gotoNext = 283376i32;
                    } else {
                        _gotoNext = 283503i32;
                    };
                } else if (__value__ == (283503i32)) {
                    stdgo.Go.print(("GODEBUG: unknown cpu feature \"" : stdgo.GoString), _key_2, ("\"\n" : stdgo.GoString));
                    _gotoNext = 282607i32;
                } else if (__value__ == (283562i32)) {
                    if ((0i32 : stdgo.GoInt) < (stdgo._internal.internal.cpu.Cpu__options._options.length)) {
                        _gotoNext = 283775i32;
                    } else {
                        _gotoNext = 283778i32;
                    };
                } else if (__value__ == (283588i32)) {
                    _o_8 = stdgo._internal.internal.cpu.Cpu__options._options[(_iterator_283574_7 : stdgo.GoInt)];
                    if (!_o_8.specified) {
                        _gotoNext = 283608i32;
                    } else {
                        _gotoNext = 283629i32;
                    };
                } else if (__value__ == (283608i32)) {
                    _iterator_283574_7++;
                    _gotoNext = 283776i32;
                } else if (__value__ == (283629i32)) {
                    if ((_o_8.enable && !_o_8.feature.value : Bool)) {
                        _gotoNext = 283656i32;
                    } else {
                        _gotoNext = 283753i32;
                    };
                } else if (__value__ == (283656i32)) {
                    stdgo.Go.print(("GODEBUG: can not enable \"" : stdgo.GoString), _o_8.name, ("\", missing CPU support\n" : stdgo.GoString));
                    _iterator_283574_7++;
                    _gotoNext = 283776i32;
                } else if (__value__ == (283753i32)) {
                    _o_8.feature.value = _o_8.enable;
                    _iterator_283574_7++;
                    _gotoNext = 283776i32;
                } else if (__value__ == (283775i32)) {
                    {
                        final __tmp__0 = 0i32;
                        final __tmp__1 = stdgo._internal.internal.cpu.Cpu__options._options[(0i32 : stdgo.GoInt)];
                        _iterator_283574_7 = @:binopAssign __tmp__0;
                        _o_8 = @:binopAssign __tmp__1;
                    };
                    _gotoNext = 283776i32;
                } else if (__value__ == (283776i32)) {
                    if (_iterator_283574_7 < (stdgo._internal.internal.cpu.Cpu__options._options.length)) {
                        _gotoNext = 283588i32;
                    } else {
                        _gotoNext = 283778i32;
                    };
                } else if (__value__ == (283778i32)) {
                    _gotoNext = -1i32;
                };
            };
        };
    }
