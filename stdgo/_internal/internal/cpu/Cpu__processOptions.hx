package stdgo._internal.internal.cpu;
function _processOptions(_env:stdgo.GoString):Void {
        var _i_80204_0:stdgo.GoInt = (0 : stdgo.GoInt);
        var _i_79869:stdgo.GoInt = (0 : stdgo.GoInt);
        var _enable_79629:Bool = false;
        var _o_80199:stdgo._internal.internal.cpu.Cpu_T_option.T_option = ({} : stdgo._internal.internal.cpu.Cpu_T_option.T_option);
        var _i_79269:stdgo.GoInt = (0 : stdgo.GoInt);
        var _field_79255:stdgo.GoString = ("" : stdgo.GoString);
        var _fieldBreak = false;
        var _i_79987:stdgo.GoInt = (0 : stdgo.GoInt);
        var _value_79568:stdgo.GoString = ("" : stdgo.GoString);
        var _key_79563:stdgo.GoString = ("" : stdgo.GoString);
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    _gotoNext = 79229i32;
                } else if (__value__ == (79229i32)) {
                    var __blank__ = 0i32;
                    _fieldBreak = false;
                    _gotoNext = 79237i32;
                } else if (__value__ == (79237i32)) {
                    if (!_fieldBreak && (_env != stdgo.Go.str())) {
                        _gotoNext = 79251i32;
                    } else {
                        _gotoNext = 80192i32;
                    };
                } else if (__value__ == (79251i32)) {
                    _field_79255 = stdgo.Go.str()?.__copy__();
                    _i_79269 = stdgo._internal.internal.cpu.Cpu__indexByte._indexByte(_env?.__copy__(), (44 : stdgo.GoUInt8));
                    if ((_i_79269 < (0 : stdgo.GoInt) : Bool)) {
                        _gotoNext = 79305i32;
                    } else {
                        _gotoNext = 79340i32;
                    };
                } else if (__value__ == (79305i32)) {
                    {
                        final __tmp__0 = _env?.__copy__();
                        final __tmp__1 = stdgo.Go.str()?.__copy__();
                        _field_79255 = __tmp__0;
                        _env = __tmp__1;
                    };
                    _gotoNext = 79383i32;
                } else if (__value__ == (79340i32)) {
                    _gotoNext = 79340i32;
                    {
                        final __tmp__0 = (_env.__slice__(0, _i_79269) : stdgo.GoString)?.__copy__();
                        final __tmp__1 = (_env.__slice__((_i_79269 + (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        _field_79255 = __tmp__0;
                        _env = __tmp__1;
                    };
                    var __blank__ = 0i32;
                    _gotoNext = 79383i32;
                } else if (__value__ == (79383i32)) {
                    if ((((_field_79255.length) < (4 : stdgo.GoInt) : Bool) || ((_field_79255.__slice__(0, (4 : stdgo.GoInt)) : stdgo.GoString) != ("cpu." : stdgo.GoString)) : Bool)) {
                        _gotoNext = 79424i32;
                    } else {
                        _gotoNext = 79444i32;
                    };
                } else if (__value__ == (79424i32)) {
                    var __blank__ = 0i32;
                    _gotoNext = 79237i32;
                } else if (__value__ == (79444i32)) {
                    _i_79269 = stdgo._internal.internal.cpu.Cpu__indexByte._indexByte(_field_79255?.__copy__(), (61 : stdgo.GoUInt8));
                    if ((_i_79269 < (0 : stdgo.GoInt) : Bool)) {
                        _gotoNext = 79481i32;
                    } else {
                        _gotoNext = 79563i32;
                    };
                } else if (__value__ == (79481i32)) {
                    stdgo.Go.print(("GODEBUG: no value specified for \"" : stdgo.GoString), _field_79255, ("\"\n" : stdgo.GoString));
                    var __blank__ = 0i32;
                    _gotoNext = 79237i32;
                } else if (__value__ == (79563i32)) {
                    {
                        final __tmp__0 = (_field_79255.__slice__((4 : stdgo.GoInt), _i_79269) : stdgo.GoString)?.__copy__();
                        final __tmp__1 = (_field_79255.__slice__((_i_79269 + (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        _key_79563 = __tmp__0;
                        _value_79568 = __tmp__1;
                    };
                    _gotoNext = 79643i32;
                } else if (__value__ == (79643i32)) {
                    {
                        final __value__ = _value_79568;
                        if (__value__ == (("on" : stdgo.GoString))) {
                            _gotoNext = 79660i32;
                        } else if (__value__ == (("off" : stdgo.GoString))) {
                            _gotoNext = 79690i32;
                        } else {
                            _gotoNext = 79722i32;
                        };
                    };
                } else if (__value__ == (79660i32)) {
                    _enable_79629 = true;
                    _gotoNext = 79844i32;
                } else if (__value__ == (79690i32)) {
                    _enable_79629 = false;
                    _gotoNext = 79844i32;
                } else if (__value__ == (79722i32)) {
                    stdgo.Go.print(("GODEBUG: value \"" : stdgo.GoString), _value_79568, ("\" not supported for cpu option \"" : stdgo.GoString), _key_79563, ("\"\n" : stdgo.GoString));
                    _gotoNext = 79237i32;
                } else if (__value__ == (79844i32)) {
                    if (_key_79563 == (("all" : stdgo.GoString))) {
                        _gotoNext = 79860i32;
                    } else {
                        _gotoNext = 79983i32;
                    };
                } else if (__value__ == (79860i32)) {
                    if ((0i32 : stdgo.GoInt) < (stdgo._internal.internal.cpu.Cpu__options._options.length)) {
                        _gotoNext = 79955i32;
                    } else {
                        _gotoNext = 79961i32;
                    };
                } else if (__value__ == (79888i32)) {
                    stdgo._internal.internal.cpu.Cpu__options._options[(_i_79869 : stdgo.GoInt)].specified = true;
                    stdgo._internal.internal.cpu.Cpu__options._options[(_i_79869 : stdgo.GoInt)].enable = _enable_79629;
                    _i_79869++;
                    _gotoNext = 79956i32;
                } else if (__value__ == (79955i32)) {
                    _i_79869 = 0i32;
                    _gotoNext = 79956i32;
                } else if (__value__ == (79956i32)) {
                    if (_i_79869 < (stdgo._internal.internal.cpu.Cpu__options._options.length)) {
                        _gotoNext = 79888i32;
                    } else {
                        _gotoNext = 79961i32;
                    };
                } else if (__value__ == (79961i32)) {
                    _gotoNext = 79237i32;
                } else if (__value__ == (79983i32)) {
                    if ((0i32 : stdgo.GoInt) < (stdgo._internal.internal.cpu.Cpu__options._options.length)) {
                        _gotoNext = 80127i32;
                    } else {
                        _gotoNext = 80133i32;
                    };
                } else if (__value__ == (79987i32)) {
                    _i_79987++;
                    _gotoNext = 80128i32;
                } else if (__value__ == (80006i32)) {
                    if (stdgo._internal.internal.cpu.Cpu__options._options[(_i_79987 : stdgo.GoInt)].name == (_key_79563)) {
                        _gotoNext = 80037i32;
                    } else {
                        _gotoNext = 79987i32;
                    };
                } else if (__value__ == (80037i32)) {
                    stdgo._internal.internal.cpu.Cpu__options._options[(_i_79987 : stdgo.GoInt)].specified = true;
                    stdgo._internal.internal.cpu.Cpu__options._options[(_i_79987 : stdgo.GoInt)].enable = _enable_79629;
                    _gotoNext = 79237i32;
                } else if (__value__ == (80127i32)) {
                    _i_79987 = 0i32;
                    _gotoNext = 80128i32;
                } else if (__value__ == (80128i32)) {
                    if (_i_79987 < (stdgo._internal.internal.cpu.Cpu__options._options.length)) {
                        _gotoNext = 80006i32;
                    } else {
                        _gotoNext = 80133i32;
                    };
                } else if (__value__ == (80133i32)) {
                    stdgo.Go.print(("GODEBUG: unknown cpu feature \"" : stdgo.GoString), _key_79563, ("\"\n" : stdgo.GoString));
                    _gotoNext = 79237i32;
                } else if (__value__ == (80192i32)) {
                    if ((0i32 : stdgo.GoInt) < (stdgo._internal.internal.cpu.Cpu__options._options.length)) {
                        _gotoNext = 80405i32;
                    } else {
                        _gotoNext = 80408i32;
                    };
                } else if (__value__ == (80218i32)) {
                    _o_80199 = stdgo._internal.internal.cpu.Cpu__options._options[(_i_80204_0 : stdgo.GoInt)];
                    if (!_o_80199.specified) {
                        _gotoNext = 80238i32;
                    } else {
                        _gotoNext = 80259i32;
                    };
                } else if (__value__ == (80238i32)) {
                    _i_80204_0++;
                    _gotoNext = 80406i32;
                } else if (__value__ == (80259i32)) {
                    if ((_o_80199.enable && !_o_80199.feature.value : Bool)) {
                        _gotoNext = 80286i32;
                    } else {
                        _gotoNext = 80383i32;
                    };
                } else if (__value__ == (80286i32)) {
                    stdgo.Go.print(("GODEBUG: can not enable \"" : stdgo.GoString), _o_80199.name, ("\", missing CPU support\n" : stdgo.GoString));
                    _i_80204_0++;
                    _gotoNext = 80406i32;
                } else if (__value__ == (80383i32)) {
                    _o_80199.feature.value = _o_80199.enable;
                    _i_80204_0++;
                    _gotoNext = 80406i32;
                } else if (__value__ == (80405i32)) {
                    {
                        final __tmp__0 = 0i32;
                        final __tmp__1 = stdgo._internal.internal.cpu.Cpu__options._options[(0i32 : stdgo.GoInt)];
                        _i_80204_0 = __tmp__0;
                        _o_80199 = __tmp__1;
                    };
                    _gotoNext = 80406i32;
                } else if (__value__ == (80406i32)) {
                    if (_i_80204_0 < (stdgo._internal.internal.cpu.Cpu__options._options.length)) {
                        _gotoNext = 80218i32;
                    } else {
                        _gotoNext = 80408i32;
                    };
                } else if (__value__ == (80408i32)) {
                    _gotoNext = -1i32;
                };
            };
        };
    }
