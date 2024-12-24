package stdgo._internal.internal.cpu;
function _processOptions(_env:stdgo.GoString):Void {
        var _enable_28893:Bool = false;
        var _i_28533:stdgo.GoInt = (0 : stdgo.GoInt);
        var _i_29251:stdgo.GoInt = (0 : stdgo.GoInt);
        var _i_29133:stdgo.GoInt = (0 : stdgo.GoInt);
        var _value_28832:stdgo.GoString = ("" : stdgo.GoString);
        var _key_28827:stdgo.GoString = ("" : stdgo.GoString);
        var _field_28519:stdgo.GoString = ("" : stdgo.GoString);
        var _fieldBreak = false;
        var _o_29463:stdgo._internal.internal.cpu.Cpu_T_option.T_option = ({} : stdgo._internal.internal.cpu.Cpu_T_option.T_option);
        var _i_29468_0:stdgo.GoInt = (0 : stdgo.GoInt);
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    _gotoNext = 28493i32;
                } else if (__value__ == (28493i32)) {
                    var __blank__ = 0i32;
                    _fieldBreak = false;
                    _gotoNext = 28501i32;
                } else if (__value__ == (28501i32)) {
                    if (!_fieldBreak && (_env != stdgo.Go.str())) {
                        _gotoNext = 28515i32;
                    } else {
                        _gotoNext = 29456i32;
                    };
                } else if (__value__ == (28515i32)) {
                    _field_28519 = stdgo.Go.str()?.__copy__();
                    _i_28533 = stdgo._internal.internal.cpu.Cpu__indexByte._indexByte(_env?.__copy__(), (44 : stdgo.GoUInt8));
                    if ((_i_28533 < (0 : stdgo.GoInt) : Bool)) {
                        _gotoNext = 28569i32;
                    } else {
                        _gotoNext = 28604i32;
                    };
                } else if (__value__ == (28569i32)) {
                    {
                        final __tmp__0 = _env?.__copy__();
                        final __tmp__1 = stdgo.Go.str()?.__copy__();
                        _field_28519 = __tmp__0;
                        _env = __tmp__1;
                    };
                    _gotoNext = 28647i32;
                } else if (__value__ == (28604i32)) {
                    _gotoNext = 28604i32;
                    {
                        final __tmp__0 = (_env.__slice__(0, _i_28533) : stdgo.GoString)?.__copy__();
                        final __tmp__1 = (_env.__slice__((_i_28533 + (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        _field_28519 = __tmp__0;
                        _env = __tmp__1;
                    };
                    var __blank__ = 0i32;
                    _gotoNext = 28647i32;
                } else if (__value__ == (28647i32)) {
                    if ((((_field_28519.length) < (4 : stdgo.GoInt) : Bool) || ((_field_28519.__slice__(0, (4 : stdgo.GoInt)) : stdgo.GoString) != ("cpu." : stdgo.GoString)) : Bool)) {
                        _gotoNext = 28688i32;
                    } else {
                        _gotoNext = 28708i32;
                    };
                } else if (__value__ == (28688i32)) {
                    var __blank__ = 0i32;
                    _gotoNext = 28501i32;
                } else if (__value__ == (28708i32)) {
                    _i_28533 = stdgo._internal.internal.cpu.Cpu__indexByte._indexByte(_field_28519?.__copy__(), (61 : stdgo.GoUInt8));
                    if ((_i_28533 < (0 : stdgo.GoInt) : Bool)) {
                        _gotoNext = 28745i32;
                    } else {
                        _gotoNext = 28827i32;
                    };
                } else if (__value__ == (28745i32)) {
                    stdgo.Go.print(("GODEBUG: no value specified for \"" : stdgo.GoString), _field_28519, ("\"\n" : stdgo.GoString));
                    var __blank__ = 0i32;
                    _gotoNext = 28501i32;
                } else if (__value__ == (28827i32)) {
                    {
                        final __tmp__0 = (_field_28519.__slice__((4 : stdgo.GoInt), _i_28533) : stdgo.GoString)?.__copy__();
                        final __tmp__1 = (_field_28519.__slice__((_i_28533 + (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        _key_28827 = __tmp__0;
                        _value_28832 = __tmp__1;
                    };
                    _gotoNext = 28907i32;
                } else if (__value__ == (28907i32)) {
                    {
                        final __value__ = _value_28832;
                        if (__value__ == (("on" : stdgo.GoString))) {
                            _gotoNext = 28924i32;
                        } else if (__value__ == (("off" : stdgo.GoString))) {
                            _gotoNext = 28954i32;
                        } else {
                            _gotoNext = 28986i32;
                        };
                    };
                } else if (__value__ == (28924i32)) {
                    _enable_28893 = true;
                    _gotoNext = 29108i32;
                } else if (__value__ == (28954i32)) {
                    _enable_28893 = false;
                    _gotoNext = 29108i32;
                } else if (__value__ == (28986i32)) {
                    stdgo.Go.print(("GODEBUG: value \"" : stdgo.GoString), _value_28832, ("\" not supported for cpu option \"" : stdgo.GoString), _key_28827, ("\"\n" : stdgo.GoString));
                    _gotoNext = 28501i32;
                } else if (__value__ == (29108i32)) {
                    if (_key_28827 == (("all" : stdgo.GoString))) {
                        _gotoNext = 29124i32;
                    } else {
                        _gotoNext = 29247i32;
                    };
                } else if (__value__ == (29124i32)) {
                    if ((0i32 : stdgo.GoInt) < (stdgo._internal.internal.cpu.Cpu__options._options.length)) {
                        _gotoNext = 29219i32;
                    } else {
                        _gotoNext = 29225i32;
                    };
                } else if (__value__ == (29152i32)) {
                    stdgo._internal.internal.cpu.Cpu__options._options[(_i_29133 : stdgo.GoInt)].specified = true;
                    stdgo._internal.internal.cpu.Cpu__options._options[(_i_29133 : stdgo.GoInt)].enable = _enable_28893;
                    _i_29133++;
                    _gotoNext = 29220i32;
                } else if (__value__ == (29219i32)) {
                    _i_29133 = 0i32;
                    _gotoNext = 29220i32;
                } else if (__value__ == (29220i32)) {
                    if (_i_29133 < (stdgo._internal.internal.cpu.Cpu__options._options.length)) {
                        _gotoNext = 29152i32;
                    } else {
                        _gotoNext = 29225i32;
                    };
                } else if (__value__ == (29225i32)) {
                    _gotoNext = 28501i32;
                } else if (__value__ == (29247i32)) {
                    if ((0i32 : stdgo.GoInt) < (stdgo._internal.internal.cpu.Cpu__options._options.length)) {
                        _gotoNext = 29391i32;
                    } else {
                        _gotoNext = 29397i32;
                    };
                } else if (__value__ == (29251i32)) {
                    _i_29251++;
                    _gotoNext = 29392i32;
                } else if (__value__ == (29270i32)) {
                    if (stdgo._internal.internal.cpu.Cpu__options._options[(_i_29251 : stdgo.GoInt)].name == (_key_28827)) {
                        _gotoNext = 29301i32;
                    } else {
                        _gotoNext = 29251i32;
                    };
                } else if (__value__ == (29301i32)) {
                    stdgo._internal.internal.cpu.Cpu__options._options[(_i_29251 : stdgo.GoInt)].specified = true;
                    stdgo._internal.internal.cpu.Cpu__options._options[(_i_29251 : stdgo.GoInt)].enable = _enable_28893;
                    _gotoNext = 28501i32;
                } else if (__value__ == (29391i32)) {
                    _i_29251 = 0i32;
                    _gotoNext = 29392i32;
                } else if (__value__ == (29392i32)) {
                    if (_i_29251 < (stdgo._internal.internal.cpu.Cpu__options._options.length)) {
                        _gotoNext = 29270i32;
                    } else {
                        _gotoNext = 29397i32;
                    };
                } else if (__value__ == (29397i32)) {
                    stdgo.Go.print(("GODEBUG: unknown cpu feature \"" : stdgo.GoString), _key_28827, ("\"\n" : stdgo.GoString));
                    _gotoNext = 28501i32;
                } else if (__value__ == (29456i32)) {
                    if ((0i32 : stdgo.GoInt) < (stdgo._internal.internal.cpu.Cpu__options._options.length)) {
                        _gotoNext = 29669i32;
                    } else {
                        _gotoNext = 29672i32;
                    };
                } else if (__value__ == (29482i32)) {
                    _o_29463 = stdgo._internal.internal.cpu.Cpu__options._options[(_i_29468_0 : stdgo.GoInt)];
                    if (!_o_29463.specified) {
                        _gotoNext = 29502i32;
                    } else {
                        _gotoNext = 29523i32;
                    };
                } else if (__value__ == (29502i32)) {
                    _i_29468_0++;
                    _gotoNext = 29670i32;
                } else if (__value__ == (29523i32)) {
                    if ((_o_29463.enable && !_o_29463.feature.value : Bool)) {
                        _gotoNext = 29550i32;
                    } else {
                        _gotoNext = 29647i32;
                    };
                } else if (__value__ == (29550i32)) {
                    stdgo.Go.print(("GODEBUG: can not enable \"" : stdgo.GoString), _o_29463.name, ("\", missing CPU support\n" : stdgo.GoString));
                    _i_29468_0++;
                    _gotoNext = 29670i32;
                } else if (__value__ == (29647i32)) {
                    _o_29463.feature.value = _o_29463.enable;
                    _i_29468_0++;
                    _gotoNext = 29670i32;
                } else if (__value__ == (29669i32)) {
                    {
                        final __tmp__0 = 0i32;
                        final __tmp__1 = stdgo._internal.internal.cpu.Cpu__options._options[(0i32 : stdgo.GoInt)];
                        _i_29468_0 = __tmp__0;
                        _o_29463 = __tmp__1;
                    };
                    _gotoNext = 29670i32;
                } else if (__value__ == (29670i32)) {
                    if (_i_29468_0 < (stdgo._internal.internal.cpu.Cpu__options._options.length)) {
                        _gotoNext = 29482i32;
                    } else {
                        _gotoNext = 29672i32;
                    };
                } else if (__value__ == (29672i32)) {
                    _gotoNext = -1i32;
                };
            };
        };
    }
