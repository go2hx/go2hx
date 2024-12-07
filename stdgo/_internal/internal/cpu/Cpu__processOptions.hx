package stdgo._internal.internal.cpu;
function _processOptions(_env:stdgo.GoString):Void {
        var _o_37883:stdgo._internal.internal.cpu.Cpu_T_option.T_option = ({} : stdgo._internal.internal.cpu.Cpu_T_option.T_option);
        var _i_37671:stdgo.GoInt = (0 : stdgo.GoInt);
        var _enable_37313:Bool = false;
        var _field_36939:stdgo.GoString = ("" : stdgo.GoString);
        var _fieldBreak = false;
        var _i_37888_0:stdgo.GoInt = (0 : stdgo.GoInt);
        var _i_37553:stdgo.GoInt = (0 : stdgo.GoInt);
        var _value_37252:stdgo.GoString = ("" : stdgo.GoString);
        var _key_37247:stdgo.GoString = ("" : stdgo.GoString);
        var _i_36953:stdgo.GoInt = (0 : stdgo.GoInt);
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    _gotoNext = 36913i32;
                } else if (__value__ == (36913i32)) {
                    var __blank__ = 0i32;
                    _fieldBreak = false;
                    _gotoNext = 36921i32;
                } else if (__value__ == (36921i32)) {
                    if (!_fieldBreak && (_env != stdgo.Go.str())) {
                        _gotoNext = 36935i32;
                    } else {
                        _gotoNext = 37876i32;
                    };
                } else if (__value__ == (36935i32)) {
                    _field_36939 = stdgo.Go.str()?.__copy__();
                    _i_36953 = stdgo._internal.internal.cpu.Cpu__indexByte._indexByte(_env?.__copy__(), (44 : stdgo.GoUInt8));
                    if ((_i_36953 < (0 : stdgo.GoInt) : Bool)) {
                        _gotoNext = 36989i32;
                    } else {
                        _gotoNext = 37024i32;
                    };
                } else if (__value__ == (36989i32)) {
                    {
                        final __tmp__0 = _env?.__copy__();
                        final __tmp__1 = stdgo.Go.str()?.__copy__();
                        _field_36939 = __tmp__0;
                        _env = __tmp__1;
                    };
                    _gotoNext = 37067i32;
                } else if (__value__ == (37024i32)) {
                    _gotoNext = 37024i32;
                    {
                        final __tmp__0 = (_env.__slice__(0, _i_36953) : stdgo.GoString)?.__copy__();
                        final __tmp__1 = (_env.__slice__((_i_36953 + (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        _field_36939 = __tmp__0;
                        _env = __tmp__1;
                    };
                    var __blank__ = 0i32;
                    _gotoNext = 37067i32;
                } else if (__value__ == (37067i32)) {
                    if ((((_field_36939.length) < (4 : stdgo.GoInt) : Bool) || ((_field_36939.__slice__(0, (4 : stdgo.GoInt)) : stdgo.GoString) != ("cpu." : stdgo.GoString)) : Bool)) {
                        _gotoNext = 37108i32;
                    } else {
                        _gotoNext = 37128i32;
                    };
                } else if (__value__ == (37108i32)) {
                    var __blank__ = 0i32;
                    _gotoNext = 36921i32;
                } else if (__value__ == (37128i32)) {
                    _i_36953 = stdgo._internal.internal.cpu.Cpu__indexByte._indexByte(_field_36939?.__copy__(), (61 : stdgo.GoUInt8));
                    if ((_i_36953 < (0 : stdgo.GoInt) : Bool)) {
                        _gotoNext = 37165i32;
                    } else {
                        _gotoNext = 37247i32;
                    };
                } else if (__value__ == (37165i32)) {
                    stdgo.Go.print(("GODEBUG: no value specified for \"" : stdgo.GoString), _field_36939, ("\"\n" : stdgo.GoString));
                    var __blank__ = 0i32;
                    _gotoNext = 36921i32;
                } else if (__value__ == (37247i32)) {
                    {
                        final __tmp__0 = (_field_36939.__slice__((4 : stdgo.GoInt), _i_36953) : stdgo.GoString)?.__copy__();
                        final __tmp__1 = (_field_36939.__slice__((_i_36953 + (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        _key_37247 = __tmp__0;
                        _value_37252 = __tmp__1;
                    };
                    _gotoNext = 37327i32;
                } else if (__value__ == (37327i32)) {
                    {
                        final __value__ = _value_37252;
                        if (__value__ == (("on" : stdgo.GoString))) {
                            _gotoNext = 37344i32;
                        } else if (__value__ == (("off" : stdgo.GoString))) {
                            _gotoNext = 37374i32;
                        } else {
                            _gotoNext = 37406i32;
                        };
                    };
                } else if (__value__ == (37344i32)) {
                    _enable_37313 = true;
                    _gotoNext = 37528i32;
                } else if (__value__ == (37374i32)) {
                    _enable_37313 = false;
                    _gotoNext = 37528i32;
                } else if (__value__ == (37406i32)) {
                    stdgo.Go.print(("GODEBUG: value \"" : stdgo.GoString), _value_37252, ("\" not supported for cpu option \"" : stdgo.GoString), _key_37247, ("\"\n" : stdgo.GoString));
                    _gotoNext = 36921i32;
                } else if (__value__ == (37528i32)) {
                    if (_key_37247 == (("all" : stdgo.GoString))) {
                        _gotoNext = 37544i32;
                    } else {
                        _gotoNext = 37667i32;
                    };
                } else if (__value__ == (37544i32)) {
                    if ((0i32 : stdgo.GoInt) < (stdgo._internal.internal.cpu.Cpu__options._options.length)) {
                        _gotoNext = 37639i32;
                    } else {
                        _gotoNext = 37645i32;
                    };
                } else if (__value__ == (37572i32)) {
                    stdgo._internal.internal.cpu.Cpu__options._options[(_i_37553 : stdgo.GoInt)].specified = true;
                    stdgo._internal.internal.cpu.Cpu__options._options[(_i_37553 : stdgo.GoInt)].enable = _enable_37313;
                    _i_37553++;
                    _gotoNext = 37640i32;
                } else if (__value__ == (37639i32)) {
                    _i_37553 = 0i32;
                    _gotoNext = 37640i32;
                } else if (__value__ == (37640i32)) {
                    if (_i_37553 < (stdgo._internal.internal.cpu.Cpu__options._options.length)) {
                        _gotoNext = 37572i32;
                    } else {
                        _gotoNext = 37645i32;
                    };
                } else if (__value__ == (37645i32)) {
                    _gotoNext = 36921i32;
                } else if (__value__ == (37667i32)) {
                    if ((0i32 : stdgo.GoInt) < (stdgo._internal.internal.cpu.Cpu__options._options.length)) {
                        _gotoNext = 37811i32;
                    } else {
                        _gotoNext = 37817i32;
                    };
                } else if (__value__ == (37671i32)) {
                    _i_37671++;
                    _gotoNext = 37812i32;
                } else if (__value__ == (37690i32)) {
                    if (stdgo._internal.internal.cpu.Cpu__options._options[(_i_37671 : stdgo.GoInt)].name == (_key_37247)) {
                        _gotoNext = 37721i32;
                    } else {
                        _gotoNext = 37671i32;
                    };
                } else if (__value__ == (37721i32)) {
                    stdgo._internal.internal.cpu.Cpu__options._options[(_i_37671 : stdgo.GoInt)].specified = true;
                    stdgo._internal.internal.cpu.Cpu__options._options[(_i_37671 : stdgo.GoInt)].enable = _enable_37313;
                    _gotoNext = 36921i32;
                } else if (__value__ == (37811i32)) {
                    _i_37671 = 0i32;
                    _gotoNext = 37812i32;
                } else if (__value__ == (37812i32)) {
                    if (_i_37671 < (stdgo._internal.internal.cpu.Cpu__options._options.length)) {
                        _gotoNext = 37690i32;
                    } else {
                        _gotoNext = 37817i32;
                    };
                } else if (__value__ == (37817i32)) {
                    stdgo.Go.print(("GODEBUG: unknown cpu feature \"" : stdgo.GoString), _key_37247, ("\"\n" : stdgo.GoString));
                    _gotoNext = 36921i32;
                } else if (__value__ == (37876i32)) {
                    if ((0i32 : stdgo.GoInt) < (stdgo._internal.internal.cpu.Cpu__options._options.length)) {
                        _gotoNext = 38089i32;
                    } else {
                        _gotoNext = 38092i32;
                    };
                } else if (__value__ == (37902i32)) {
                    _o_37883 = stdgo._internal.internal.cpu.Cpu__options._options[(_i_37888_0 : stdgo.GoInt)];
                    if (!_o_37883.specified) {
                        _gotoNext = 37922i32;
                    } else {
                        _gotoNext = 37943i32;
                    };
                } else if (__value__ == (37922i32)) {
                    _i_37888_0++;
                    _gotoNext = 38090i32;
                } else if (__value__ == (37943i32)) {
                    if ((_o_37883.enable && !_o_37883.feature.value : Bool)) {
                        _gotoNext = 37970i32;
                    } else {
                        _gotoNext = 38067i32;
                    };
                } else if (__value__ == (37970i32)) {
                    stdgo.Go.print(("GODEBUG: can not enable \"" : stdgo.GoString), _o_37883.name, ("\", missing CPU support\n" : stdgo.GoString));
                    _i_37888_0++;
                    _gotoNext = 38090i32;
                } else if (__value__ == (38067i32)) {
                    _o_37883.feature.value = _o_37883.enable;
                    _i_37888_0++;
                    _gotoNext = 38090i32;
                } else if (__value__ == (38089i32)) {
                    {
                        final __tmp__0 = 0i32;
                        final __tmp__1 = stdgo._internal.internal.cpu.Cpu__options._options[(0i32 : stdgo.GoInt)];
                        _i_37888_0 = __tmp__0;
                        _o_37883 = __tmp__1;
                    };
                    _gotoNext = 38090i32;
                } else if (__value__ == (38090i32)) {
                    if (_i_37888_0 < (stdgo._internal.internal.cpu.Cpu__options._options.length)) {
                        _gotoNext = 37902i32;
                    } else {
                        _gotoNext = 38092i32;
                    };
                } else if (__value__ == (38092i32)) {
                    _gotoNext = -1i32;
                };
            };
        };
    }
