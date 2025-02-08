package stdgo._internal.internal.cpu;
function _processOptions(_env:stdgo.GoString):Void {
        var _i_278122:stdgo.GoInt = (0 : stdgo.GoInt);
        var _field_277390:stdgo.GoString = ("" : stdgo.GoString);
        var _o_278334:stdgo._internal.internal.cpu.Cpu_t_option.T_option = ({} : stdgo._internal.internal.cpu.Cpu_t_option.T_option);
        var _i_277404:stdgo.GoInt = (0 : stdgo.GoInt);
        var _fieldBreak = false;
        var _i_278339_0:stdgo.GoInt = (0 : stdgo.GoInt);
        var _i_278004:stdgo.GoInt = (0 : stdgo.GoInt);
        var _enable_277764:Bool = false;
        var _value_277703:stdgo.GoString = ("" : stdgo.GoString);
        var _key_277698:stdgo.GoString = ("" : stdgo.GoString);
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    _gotoNext = 277364i32;
                } else if (__value__ == (277364i32)) {
                    var __blank__ = 0i32;
                    _fieldBreak = false;
                    _gotoNext = 277372i32;
                } else if (__value__ == (277372i32)) {
                    if (!_fieldBreak && (_env != (stdgo.Go.str() : stdgo.GoString))) {
                        _gotoNext = 277386i32;
                    } else {
                        _gotoNext = 278327i32;
                    };
                } else if (__value__ == (277386i32)) {
                    _field_277390 = (stdgo.Go.str() : stdgo.GoString)?.__copy__();
                    _i_277404 = stdgo._internal.internal.cpu.Cpu__indexbyte._indexByte(_env?.__copy__(), (44 : stdgo.GoUInt8));
                    if ((_i_277404 < (0 : stdgo.GoInt) : Bool)) {
                        _gotoNext = 277440i32;
                    } else {
                        _gotoNext = 277475i32;
                    };
                } else if (__value__ == (277440i32)) {
                    {
                        final __tmp__0 = _env?.__copy__();
                        final __tmp__1 = (stdgo.Go.str() : stdgo.GoString)?.__copy__();
                        _field_277390 = __tmp__0;
                        _env = __tmp__1;
                    };
                    _gotoNext = 277518i32;
                } else if (__value__ == (277475i32)) {
                    _gotoNext = 277475i32;
                    {
                        final __tmp__0 = (_env.__slice__(0, _i_277404) : stdgo.GoString)?.__copy__();
                        final __tmp__1 = (_env.__slice__((_i_277404 + (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        _field_277390 = __tmp__0;
                        _env = __tmp__1;
                    };
                    var __blank__ = 0i32;
                    _gotoNext = 277518i32;
                } else if (__value__ == (277518i32)) {
                    if ((((_field_277390.length) < (4 : stdgo.GoInt) : Bool) || ((_field_277390.__slice__(0, (4 : stdgo.GoInt)) : stdgo.GoString) != ("cpu." : stdgo.GoString)) : Bool)) {
                        _gotoNext = 277559i32;
                    } else {
                        _gotoNext = 277579i32;
                    };
                } else if (__value__ == (277559i32)) {
                    var __blank__ = 0i32;
                    _gotoNext = 277372i32;
                } else if (__value__ == (277579i32)) {
                    _i_277404 = stdgo._internal.internal.cpu.Cpu__indexbyte._indexByte(_field_277390?.__copy__(), (61 : stdgo.GoUInt8));
                    if ((_i_277404 < (0 : stdgo.GoInt) : Bool)) {
                        _gotoNext = 277616i32;
                    } else {
                        _gotoNext = 277698i32;
                    };
                } else if (__value__ == (277616i32)) {
                    stdgo.Go.print(("GODEBUG: no value specified for \"" : stdgo.GoString), _field_277390, ("\"\n" : stdgo.GoString));
                    var __blank__ = 0i32;
                    _gotoNext = 277372i32;
                } else if (__value__ == (277698i32)) {
                    {
                        final __tmp__0 = (_field_277390.__slice__((4 : stdgo.GoInt), _i_277404) : stdgo.GoString)?.__copy__();
                        final __tmp__1 = (_field_277390.__slice__((_i_277404 + (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        _key_277698 = __tmp__0;
                        _value_277703 = __tmp__1;
                    };
                    _gotoNext = 277778i32;
                } else if (__value__ == (277778i32)) {
                    {
                        final __value__ = _value_277703;
                        if (__value__ == (("on" : stdgo.GoString))) {
                            _gotoNext = 277795i32;
                        } else if (__value__ == (("off" : stdgo.GoString))) {
                            _gotoNext = 277825i32;
                        } else {
                            _gotoNext = 277857i32;
                        };
                    };
                } else if (__value__ == (277795i32)) {
                    _enable_277764 = true;
                    _gotoNext = 277979i32;
                } else if (__value__ == (277825i32)) {
                    _enable_277764 = false;
                    _gotoNext = 277979i32;
                } else if (__value__ == (277857i32)) {
                    stdgo.Go.print(("GODEBUG: value \"" : stdgo.GoString), _value_277703, ("\" not supported for cpu option \"" : stdgo.GoString), _key_277698, ("\"\n" : stdgo.GoString));
                    _gotoNext = 277372i32;
                } else if (__value__ == (277979i32)) {
                    if (_key_277698 == (("all" : stdgo.GoString))) {
                        _gotoNext = 277995i32;
                    } else {
                        _gotoNext = 278118i32;
                    };
                } else if (__value__ == (277995i32)) {
                    if ((0i32 : stdgo.GoInt) < (stdgo._internal.internal.cpu.Cpu__options._options.length)) {
                        _gotoNext = 278090i32;
                    } else {
                        _gotoNext = 278096i32;
                    };
                } else if (__value__ == (278023i32)) {
                    stdgo._internal.internal.cpu.Cpu__options._options[(_i_278004 : stdgo.GoInt)].specified = true;
                    stdgo._internal.internal.cpu.Cpu__options._options[(_i_278004 : stdgo.GoInt)].enable = _enable_277764;
                    _i_278004++;
                    _gotoNext = 278091i32;
                } else if (__value__ == (278090i32)) {
                    _i_278004 = 0i32;
                    _gotoNext = 278091i32;
                } else if (__value__ == (278091i32)) {
                    if (_i_278004 < (stdgo._internal.internal.cpu.Cpu__options._options.length)) {
                        _gotoNext = 278023i32;
                    } else {
                        _gotoNext = 278096i32;
                    };
                } else if (__value__ == (278096i32)) {
                    _gotoNext = 277372i32;
                } else if (__value__ == (278118i32)) {
                    if ((0i32 : stdgo.GoInt) < (stdgo._internal.internal.cpu.Cpu__options._options.length)) {
                        _gotoNext = 278262i32;
                    } else {
                        _gotoNext = 278268i32;
                    };
                } else if (__value__ == (278122i32)) {
                    _i_278122++;
                    _gotoNext = 278263i32;
                } else if (__value__ == (278141i32)) {
                    if (stdgo._internal.internal.cpu.Cpu__options._options[(_i_278122 : stdgo.GoInt)].name == (_key_277698)) {
                        _gotoNext = 278172i32;
                    } else {
                        _gotoNext = 278122i32;
                    };
                } else if (__value__ == (278172i32)) {
                    stdgo._internal.internal.cpu.Cpu__options._options[(_i_278122 : stdgo.GoInt)].specified = true;
                    stdgo._internal.internal.cpu.Cpu__options._options[(_i_278122 : stdgo.GoInt)].enable = _enable_277764;
                    _gotoNext = 277372i32;
                } else if (__value__ == (278262i32)) {
                    _i_278122 = 0i32;
                    _gotoNext = 278263i32;
                } else if (__value__ == (278263i32)) {
                    if (_i_278122 < (stdgo._internal.internal.cpu.Cpu__options._options.length)) {
                        _gotoNext = 278141i32;
                    } else {
                        _gotoNext = 278268i32;
                    };
                } else if (__value__ == (278268i32)) {
                    stdgo.Go.print(("GODEBUG: unknown cpu feature \"" : stdgo.GoString), _key_277698, ("\"\n" : stdgo.GoString));
                    _gotoNext = 277372i32;
                } else if (__value__ == (278327i32)) {
                    if ((0i32 : stdgo.GoInt) < (stdgo._internal.internal.cpu.Cpu__options._options.length)) {
                        _gotoNext = 278540i32;
                    } else {
                        _gotoNext = 278543i32;
                    };
                } else if (__value__ == (278353i32)) {
                    _o_278334 = stdgo._internal.internal.cpu.Cpu__options._options[(_i_278339_0 : stdgo.GoInt)];
                    if (!_o_278334.specified) {
                        _gotoNext = 278373i32;
                    } else {
                        _gotoNext = 278394i32;
                    };
                } else if (__value__ == (278373i32)) {
                    _i_278339_0++;
                    _gotoNext = 278541i32;
                } else if (__value__ == (278394i32)) {
                    if ((_o_278334.enable && !_o_278334.feature.value : Bool)) {
                        _gotoNext = 278421i32;
                    } else {
                        _gotoNext = 278518i32;
                    };
                } else if (__value__ == (278421i32)) {
                    stdgo.Go.print(("GODEBUG: can not enable \"" : stdgo.GoString), _o_278334.name, ("\", missing CPU support\n" : stdgo.GoString));
                    _i_278339_0++;
                    _gotoNext = 278541i32;
                } else if (__value__ == (278518i32)) {
                    _o_278334.feature.value = _o_278334.enable;
                    _i_278339_0++;
                    _gotoNext = 278541i32;
                } else if (__value__ == (278540i32)) {
                    {
                        final __tmp__0 = 0i32;
                        final __tmp__1 = stdgo._internal.internal.cpu.Cpu__options._options[(0i32 : stdgo.GoInt)];
                        _i_278339_0 = __tmp__0;
                        _o_278334 = __tmp__1;
                    };
                    _gotoNext = 278541i32;
                } else if (__value__ == (278541i32)) {
                    if (_i_278339_0 < (stdgo._internal.internal.cpu.Cpu__options._options.length)) {
                        _gotoNext = 278353i32;
                    } else {
                        _gotoNext = 278543i32;
                    };
                } else if (__value__ == (278543i32)) {
                    _gotoNext = -1i32;
                };
            };
        };
    }
