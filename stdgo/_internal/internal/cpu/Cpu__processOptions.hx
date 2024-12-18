package stdgo._internal.internal.cpu;
function _processOptions(_env:stdgo.GoString):Void {
        var _i_264295_0:stdgo.GoInt = (0 : stdgo.GoInt);
        var _i_263960:stdgo.GoInt = (0 : stdgo.GoInt);
        var _i_263360:stdgo.GoInt = (0 : stdgo.GoInt);
        var _field_263346:stdgo.GoString = ("" : stdgo.GoString);
        var _fieldBreak = false;
        var _o_264290:stdgo._internal.internal.cpu.Cpu_T_option.T_option = ({} : stdgo._internal.internal.cpu.Cpu_T_option.T_option);
        var _i_264078:stdgo.GoInt = (0 : stdgo.GoInt);
        var _enable_263720:Bool = false;
        var _value_263659:stdgo.GoString = ("" : stdgo.GoString);
        var _key_263654:stdgo.GoString = ("" : stdgo.GoString);
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    _gotoNext = 263320i32;
                } else if (__value__ == (263320i32)) {
                    var __blank__ = 0i32;
                    _fieldBreak = false;
                    _gotoNext = 263328i32;
                } else if (__value__ == (263328i32)) {
                    if (!_fieldBreak && (_env != stdgo.Go.str())) {
                        _gotoNext = 263342i32;
                    } else {
                        _gotoNext = 264283i32;
                    };
                } else if (__value__ == (263342i32)) {
                    _field_263346 = stdgo.Go.str()?.__copy__();
                    _i_263360 = stdgo._internal.internal.cpu.Cpu__indexByte._indexByte(_env?.__copy__(), (44 : stdgo.GoUInt8));
                    if ((_i_263360 < (0 : stdgo.GoInt) : Bool)) {
                        _gotoNext = 263396i32;
                    } else {
                        _gotoNext = 263431i32;
                    };
                } else if (__value__ == (263396i32)) {
                    {
                        final __tmp__0 = _env?.__copy__();
                        final __tmp__1 = stdgo.Go.str()?.__copy__();
                        _field_263346 = __tmp__0;
                        _env = __tmp__1;
                    };
                    _gotoNext = 263474i32;
                } else if (__value__ == (263431i32)) {
                    _gotoNext = 263431i32;
                    {
                        final __tmp__0 = (_env.__slice__(0, _i_263360) : stdgo.GoString)?.__copy__();
                        final __tmp__1 = (_env.__slice__((_i_263360 + (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        _field_263346 = __tmp__0;
                        _env = __tmp__1;
                    };
                    var __blank__ = 0i32;
                    _gotoNext = 263474i32;
                } else if (__value__ == (263474i32)) {
                    if ((((_field_263346.length) < (4 : stdgo.GoInt) : Bool) || ((_field_263346.__slice__(0, (4 : stdgo.GoInt)) : stdgo.GoString) != ("cpu." : stdgo.GoString)) : Bool)) {
                        _gotoNext = 263515i32;
                    } else {
                        _gotoNext = 263535i32;
                    };
                } else if (__value__ == (263515i32)) {
                    var __blank__ = 0i32;
                    _gotoNext = 263328i32;
                } else if (__value__ == (263535i32)) {
                    _i_263360 = stdgo._internal.internal.cpu.Cpu__indexByte._indexByte(_field_263346?.__copy__(), (61 : stdgo.GoUInt8));
                    if ((_i_263360 < (0 : stdgo.GoInt) : Bool)) {
                        _gotoNext = 263572i32;
                    } else {
                        _gotoNext = 263654i32;
                    };
                } else if (__value__ == (263572i32)) {
                    stdgo.Go.print(("GODEBUG: no value specified for \"" : stdgo.GoString), _field_263346, ("\"\n" : stdgo.GoString));
                    var __blank__ = 0i32;
                    _gotoNext = 263328i32;
                } else if (__value__ == (263654i32)) {
                    {
                        final __tmp__0 = (_field_263346.__slice__((4 : stdgo.GoInt), _i_263360) : stdgo.GoString)?.__copy__();
                        final __tmp__1 = (_field_263346.__slice__((_i_263360 + (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        _key_263654 = __tmp__0;
                        _value_263659 = __tmp__1;
                    };
                    _gotoNext = 263734i32;
                } else if (__value__ == (263734i32)) {
                    {
                        final __value__ = _value_263659;
                        if (__value__ == (("on" : stdgo.GoString))) {
                            _gotoNext = 263751i32;
                        } else if (__value__ == (("off" : stdgo.GoString))) {
                            _gotoNext = 263781i32;
                        } else {
                            _gotoNext = 263813i32;
                        };
                    };
                } else if (__value__ == (263751i32)) {
                    _enable_263720 = true;
                    _gotoNext = 263935i32;
                } else if (__value__ == (263781i32)) {
                    _enable_263720 = false;
                    _gotoNext = 263935i32;
                } else if (__value__ == (263813i32)) {
                    stdgo.Go.print(("GODEBUG: value \"" : stdgo.GoString), _value_263659, ("\" not supported for cpu option \"" : stdgo.GoString), _key_263654, ("\"\n" : stdgo.GoString));
                    _gotoNext = 263328i32;
                } else if (__value__ == (263935i32)) {
                    if (_key_263654 == (("all" : stdgo.GoString))) {
                        _gotoNext = 263951i32;
                    } else {
                        _gotoNext = 264074i32;
                    };
                } else if (__value__ == (263951i32)) {
                    if ((0i32 : stdgo.GoInt) < (stdgo._internal.internal.cpu.Cpu__options._options.length)) {
                        _gotoNext = 264046i32;
                    } else {
                        _gotoNext = 264052i32;
                    };
                } else if (__value__ == (263979i32)) {
                    stdgo._internal.internal.cpu.Cpu__options._options[(_i_263960 : stdgo.GoInt)].specified = true;
                    stdgo._internal.internal.cpu.Cpu__options._options[(_i_263960 : stdgo.GoInt)].enable = _enable_263720;
                    _i_263960++;
                    _gotoNext = 264047i32;
                } else if (__value__ == (264046i32)) {
                    _i_263960 = 0i32;
                    _gotoNext = 264047i32;
                } else if (__value__ == (264047i32)) {
                    if (_i_263960 < (stdgo._internal.internal.cpu.Cpu__options._options.length)) {
                        _gotoNext = 263979i32;
                    } else {
                        _gotoNext = 264052i32;
                    };
                } else if (__value__ == (264052i32)) {
                    _gotoNext = 263328i32;
                } else if (__value__ == (264074i32)) {
                    if ((0i32 : stdgo.GoInt) < (stdgo._internal.internal.cpu.Cpu__options._options.length)) {
                        _gotoNext = 264218i32;
                    } else {
                        _gotoNext = 264224i32;
                    };
                } else if (__value__ == (264078i32)) {
                    _i_264078++;
                    _gotoNext = 264219i32;
                } else if (__value__ == (264097i32)) {
                    if (stdgo._internal.internal.cpu.Cpu__options._options[(_i_264078 : stdgo.GoInt)].name == (_key_263654)) {
                        _gotoNext = 264128i32;
                    } else {
                        _gotoNext = 264078i32;
                    };
                } else if (__value__ == (264128i32)) {
                    stdgo._internal.internal.cpu.Cpu__options._options[(_i_264078 : stdgo.GoInt)].specified = true;
                    stdgo._internal.internal.cpu.Cpu__options._options[(_i_264078 : stdgo.GoInt)].enable = _enable_263720;
                    _gotoNext = 263328i32;
                } else if (__value__ == (264218i32)) {
                    _i_264078 = 0i32;
                    _gotoNext = 264219i32;
                } else if (__value__ == (264219i32)) {
                    if (_i_264078 < (stdgo._internal.internal.cpu.Cpu__options._options.length)) {
                        _gotoNext = 264097i32;
                    } else {
                        _gotoNext = 264224i32;
                    };
                } else if (__value__ == (264224i32)) {
                    stdgo.Go.print(("GODEBUG: unknown cpu feature \"" : stdgo.GoString), _key_263654, ("\"\n" : stdgo.GoString));
                    _gotoNext = 263328i32;
                } else if (__value__ == (264283i32)) {
                    if ((0i32 : stdgo.GoInt) < (stdgo._internal.internal.cpu.Cpu__options._options.length)) {
                        _gotoNext = 264496i32;
                    } else {
                        _gotoNext = 264499i32;
                    };
                } else if (__value__ == (264309i32)) {
                    _o_264290 = stdgo._internal.internal.cpu.Cpu__options._options[(_i_264295_0 : stdgo.GoInt)];
                    if (!_o_264290.specified) {
                        _gotoNext = 264329i32;
                    } else {
                        _gotoNext = 264350i32;
                    };
                } else if (__value__ == (264329i32)) {
                    _i_264295_0++;
                    _gotoNext = 264497i32;
                } else if (__value__ == (264350i32)) {
                    if ((_o_264290.enable && !_o_264290.feature.value : Bool)) {
                        _gotoNext = 264377i32;
                    } else {
                        _gotoNext = 264474i32;
                    };
                } else if (__value__ == (264377i32)) {
                    stdgo.Go.print(("GODEBUG: can not enable \"" : stdgo.GoString), _o_264290.name, ("\", missing CPU support\n" : stdgo.GoString));
                    _i_264295_0++;
                    _gotoNext = 264497i32;
                } else if (__value__ == (264474i32)) {
                    _o_264290.feature.value = _o_264290.enable;
                    _i_264295_0++;
                    _gotoNext = 264497i32;
                } else if (__value__ == (264496i32)) {
                    {
                        final __tmp__0 = 0i32;
                        final __tmp__1 = stdgo._internal.internal.cpu.Cpu__options._options[(0i32 : stdgo.GoInt)];
                        _i_264295_0 = __tmp__0;
                        _o_264290 = __tmp__1;
                    };
                    _gotoNext = 264497i32;
                } else if (__value__ == (264497i32)) {
                    if (_i_264295_0 < (stdgo._internal.internal.cpu.Cpu__options._options.length)) {
                        _gotoNext = 264309i32;
                    } else {
                        _gotoNext = 264499i32;
                    };
                } else if (__value__ == (264499i32)) {
                    _gotoNext = -1i32;
                };
            };
        };
    }
