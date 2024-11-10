package stdgo._internal.internal.cpu;
function _processOptions(_env:stdgo.GoString):Void {
        var _o_264427:stdgo._internal.internal.cpu.Cpu_T_option.T_option = ({} : stdgo._internal.internal.cpu.Cpu_T_option.T_option);
        var _enable_263857:Bool = false;
        var _key_263791:stdgo.GoString = ("" : stdgo.GoString);
        var _i_263497:stdgo.GoInt = (0 : stdgo.GoInt);
        var _i_264432_0:stdgo.GoInt = (0 : stdgo.GoInt);
        var _i_264215:stdgo.GoInt = (0 : stdgo.GoInt);
        var _i_264097:stdgo.GoInt = (0 : stdgo.GoInt);
        var _value_263796:stdgo.GoString = ("" : stdgo.GoString);
        var _field_263483:stdgo.GoString = ("" : stdgo.GoString);
        var _fieldBreak = false;
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    _gotoNext = 263457i32;
                } else if (__value__ == (263457i32)) {
                    var __blank__ = 0i32;
                    _fieldBreak = false;
                    _gotoNext = 263465i32;
                } else if (__value__ == (263465i32)) {
                    if (!_fieldBreak && (_env != stdgo.Go.str())) {
                        _gotoNext = 263479i32;
                    } else {
                        _gotoNext = 264420i32;
                    };
                } else if (__value__ == (263479i32)) {
                    _field_263483 = stdgo.Go.str()?.__copy__();
                    _i_263497 = stdgo._internal.internal.cpu.Cpu__indexByte._indexByte(_env?.__copy__(), (44 : stdgo.GoUInt8));
                    if ((_i_263497 < (0 : stdgo.GoInt) : Bool)) {
                        _gotoNext = 263533i32;
                    } else {
                        _gotoNext = 263568i32;
                    };
                } else if (__value__ == (263533i32)) {
                    {
                        final __tmp__0 = _env?.__copy__();
                        final __tmp__1 = stdgo.Go.str()?.__copy__();
                        _field_263483 = __tmp__0;
                        _env = __tmp__1;
                    };
                    _gotoNext = 263611i32;
                } else if (__value__ == (263568i32)) {
                    _gotoNext = 263568i32;
                    {
                        final __tmp__0 = (_env.__slice__(0, _i_263497) : stdgo.GoString)?.__copy__();
                        final __tmp__1 = (_env.__slice__((_i_263497 + (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        _field_263483 = __tmp__0;
                        _env = __tmp__1;
                    };
                    var __blank__ = 0i32;
                    _gotoNext = 263611i32;
                } else if (__value__ == (263611i32)) {
                    if ((((_field_263483.length) < (4 : stdgo.GoInt) : Bool) || ((_field_263483.__slice__(0, (4 : stdgo.GoInt)) : stdgo.GoString) != ("cpu." : stdgo.GoString)) : Bool)) {
                        _gotoNext = 263652i32;
                    } else {
                        _gotoNext = 263672i32;
                    };
                } else if (__value__ == (263652i32)) {
                    var __blank__ = 0i32;
                    _gotoNext = 263465i32;
                } else if (__value__ == (263672i32)) {
                    _i_263497 = stdgo._internal.internal.cpu.Cpu__indexByte._indexByte(_field_263483?.__copy__(), (61 : stdgo.GoUInt8));
                    if ((_i_263497 < (0 : stdgo.GoInt) : Bool)) {
                        _gotoNext = 263709i32;
                    } else {
                        _gotoNext = 263791i32;
                    };
                } else if (__value__ == (263709i32)) {
                    stdgo.Go.print(("GODEBUG: no value specified for \"" : stdgo.GoString), _field_263483, ("\"\n" : stdgo.GoString));
                    var __blank__ = 0i32;
                    _gotoNext = 263465i32;
                } else if (__value__ == (263791i32)) {
                    {
                        final __tmp__0 = (_field_263483.__slice__((4 : stdgo.GoInt), _i_263497) : stdgo.GoString)?.__copy__();
                        final __tmp__1 = (_field_263483.__slice__((_i_263497 + (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        _key_263791 = __tmp__0;
                        _value_263796 = __tmp__1;
                    };
                    _gotoNext = 263871i32;
                } else if (__value__ == (263871i32)) {
                    {
                        final __value__ = _value_263796;
                        if (__value__ == (("on" : stdgo.GoString))) {
                            _gotoNext = 263888i32;
                        } else if (__value__ == (("off" : stdgo.GoString))) {
                            _gotoNext = 263918i32;
                        } else {
                            _gotoNext = 263950i32;
                        };
                    };
                } else if (__value__ == (263888i32)) {
                    _enable_263857 = true;
                    _gotoNext = 264072i32;
                } else if (__value__ == (263918i32)) {
                    _enable_263857 = false;
                    _gotoNext = 264072i32;
                } else if (__value__ == (263950i32)) {
                    stdgo.Go.print(("GODEBUG: value \"" : stdgo.GoString), _value_263796, ("\" not supported for cpu option \"" : stdgo.GoString), _key_263791, ("\"\n" : stdgo.GoString));
                    _gotoNext = 263465i32;
                } else if (__value__ == (264072i32)) {
                    if (_key_263791 == (("all" : stdgo.GoString))) {
                        _gotoNext = 264088i32;
                    } else {
                        _gotoNext = 264211i32;
                    };
                } else if (__value__ == (264088i32)) {
                    if ((0i32 : stdgo.GoInt) < (stdgo._internal.internal.cpu.Cpu__options._options.length)) {
                        _gotoNext = 264183i32;
                    } else {
                        _gotoNext = 264189i32;
                    };
                } else if (__value__ == (264116i32)) {
                    stdgo._internal.internal.cpu.Cpu__options._options[(_i_264097 : stdgo.GoInt)].specified = true;
                    stdgo._internal.internal.cpu.Cpu__options._options[(_i_264097 : stdgo.GoInt)].enable = _enable_263857;
                    _i_264097++;
                    _gotoNext = 264184i32;
                } else if (__value__ == (264183i32)) {
                    _i_264097 = 0i32;
                    _gotoNext = 264184i32;
                } else if (__value__ == (264184i32)) {
                    if (_i_264097 < (stdgo._internal.internal.cpu.Cpu__options._options.length)) {
                        _gotoNext = 264116i32;
                    } else {
                        _gotoNext = 264189i32;
                    };
                } else if (__value__ == (264189i32)) {
                    _gotoNext = 263465i32;
                } else if (__value__ == (264211i32)) {
                    if ((0i32 : stdgo.GoInt) < (stdgo._internal.internal.cpu.Cpu__options._options.length)) {
                        _gotoNext = 264355i32;
                    } else {
                        _gotoNext = 264361i32;
                    };
                } else if (__value__ == (264215i32)) {
                    _i_264215++;
                    _gotoNext = 264356i32;
                } else if (__value__ == (264234i32)) {
                    if (stdgo._internal.internal.cpu.Cpu__options._options[(_i_264215 : stdgo.GoInt)].name == (_key_263791)) {
                        _gotoNext = 264265i32;
                    } else {
                        _gotoNext = 264215i32;
                    };
                } else if (__value__ == (264265i32)) {
                    stdgo._internal.internal.cpu.Cpu__options._options[(_i_264215 : stdgo.GoInt)].specified = true;
                    stdgo._internal.internal.cpu.Cpu__options._options[(_i_264215 : stdgo.GoInt)].enable = _enable_263857;
                    _gotoNext = 263465i32;
                } else if (__value__ == (264355i32)) {
                    _i_264215 = 0i32;
                    _gotoNext = 264356i32;
                } else if (__value__ == (264356i32)) {
                    if (_i_264215 < (stdgo._internal.internal.cpu.Cpu__options._options.length)) {
                        _gotoNext = 264234i32;
                    } else {
                        _gotoNext = 264361i32;
                    };
                } else if (__value__ == (264361i32)) {
                    stdgo.Go.print(("GODEBUG: unknown cpu feature \"" : stdgo.GoString), _key_263791, ("\"\n" : stdgo.GoString));
                    _gotoNext = 263465i32;
                } else if (__value__ == (264420i32)) {
                    if ((0i32 : stdgo.GoInt) < (stdgo._internal.internal.cpu.Cpu__options._options.length)) {
                        _gotoNext = 264633i32;
                    } else {
                        _gotoNext = 264636i32;
                    };
                } else if (__value__ == (264446i32)) {
                    _o_264427 = stdgo._internal.internal.cpu.Cpu__options._options[(_i_264432_0 : stdgo.GoInt)];
                    if (!_o_264427.specified) {
                        _gotoNext = 264466i32;
                    } else {
                        _gotoNext = 264487i32;
                    };
                } else if (__value__ == (264466i32)) {
                    _i_264432_0++;
                    _gotoNext = 264634i32;
                } else if (__value__ == (264487i32)) {
                    if ((_o_264427.enable && !_o_264427.feature.value : Bool)) {
                        _gotoNext = 264514i32;
                    } else {
                        _gotoNext = 264611i32;
                    };
                } else if (__value__ == (264514i32)) {
                    stdgo.Go.print(("GODEBUG: can not enable \"" : stdgo.GoString), _o_264427.name, ("\", missing CPU support\n" : stdgo.GoString));
                    _i_264432_0++;
                    _gotoNext = 264634i32;
                } else if (__value__ == (264611i32)) {
                    _o_264427.feature.value = _o_264427.enable;
                    _i_264432_0++;
                    _gotoNext = 264634i32;
                } else if (__value__ == (264633i32)) {
                    {
                        final __tmp__0 = 0i32;
                        final __tmp__1 = stdgo._internal.internal.cpu.Cpu__options._options[(0i32 : stdgo.GoInt)];
                        _i_264432_0 = __tmp__0;
                        _o_264427 = __tmp__1;
                    };
                    _gotoNext = 264634i32;
                } else if (__value__ == (264634i32)) {
                    if (_i_264432_0 < (stdgo._internal.internal.cpu.Cpu__options._options.length)) {
                        _gotoNext = 264446i32;
                    } else {
                        _gotoNext = 264636i32;
                    };
                } else if (__value__ == (264636i32)) {
                    _gotoNext = -1i32;
                };
            };
        };
    }
