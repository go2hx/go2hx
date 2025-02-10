package stdgo._internal.internal.cpu;
function _processOptions(_env:stdgo.GoString):Void {
        var _i_76642_0:stdgo.GoInt = (0 : stdgo.GoInt);
        var _i_75707:stdgo.GoInt = (0 : stdgo.GoInt);
        var _fieldBreak = false;
        var _o_76637:stdgo._internal.internal.cpu.Cpu_t_option.T_option = ({} : stdgo._internal.internal.cpu.Cpu_t_option.T_option);
        var _i_76425:stdgo.GoInt = (0 : stdgo.GoInt);
        var _i_76307:stdgo.GoInt = (0 : stdgo.GoInt);
        var _enable_76067:Bool = false;
        var _value_76006:stdgo.GoString = ("" : stdgo.GoString);
        var _key_76001:stdgo.GoString = ("" : stdgo.GoString);
        var _field_75693:stdgo.GoString = ("" : stdgo.GoString);
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    _gotoNext = 75667i32;
                } else if (__value__ == (75667i32)) {
                    var __blank__ = 0i32;
                    _fieldBreak = false;
                    _gotoNext = 75675i32;
                } else if (__value__ == (75675i32)) {
                    if (!_fieldBreak && (_env != (stdgo.Go.str() : stdgo.GoString))) {
                        _gotoNext = 75689i32;
                    } else {
                        _gotoNext = 76630i32;
                    };
                } else if (__value__ == (75689i32)) {
                    _field_75693 = (stdgo.Go.str() : stdgo.GoString)?.__copy__();
                    _i_75707 = stdgo._internal.internal.cpu.Cpu__indexbyte._indexByte(_env?.__copy__(), (44 : stdgo.GoUInt8));
                    if ((_i_75707 < (0 : stdgo.GoInt) : Bool)) {
                        _gotoNext = 75743i32;
                    } else {
                        _gotoNext = 75778i32;
                    };
                } else if (__value__ == (75743i32)) {
                    {
                        final __tmp__0 = _env?.__copy__();
                        final __tmp__1 = (stdgo.Go.str() : stdgo.GoString)?.__copy__();
                        _field_75693 = __tmp__0;
                        _env = __tmp__1;
                    };
                    _gotoNext = 75821i32;
                } else if (__value__ == (75778i32)) {
                    _gotoNext = 75778i32;
                    {
                        final __tmp__0 = (_env.__slice__(0, _i_75707) : stdgo.GoString)?.__copy__();
                        final __tmp__1 = (_env.__slice__((_i_75707 + (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        _field_75693 = __tmp__0;
                        _env = __tmp__1;
                    };
                    var __blank__ = 0i32;
                    _gotoNext = 75821i32;
                } else if (__value__ == (75821i32)) {
                    if ((((_field_75693.length) < (4 : stdgo.GoInt) : Bool) || ((_field_75693.__slice__(0, (4 : stdgo.GoInt)) : stdgo.GoString) != ("cpu." : stdgo.GoString)) : Bool)) {
                        _gotoNext = 75862i32;
                    } else {
                        _gotoNext = 75882i32;
                    };
                } else if (__value__ == (75862i32)) {
                    var __blank__ = 0i32;
                    _gotoNext = 75675i32;
                } else if (__value__ == (75882i32)) {
                    _i_75707 = stdgo._internal.internal.cpu.Cpu__indexbyte._indexByte(_field_75693?.__copy__(), (61 : stdgo.GoUInt8));
                    if ((_i_75707 < (0 : stdgo.GoInt) : Bool)) {
                        _gotoNext = 75919i32;
                    } else {
                        _gotoNext = 76001i32;
                    };
                } else if (__value__ == (75919i32)) {
                    stdgo.Go.print(("GODEBUG: no value specified for \"" : stdgo.GoString), _field_75693, ("\"\n" : stdgo.GoString));
                    var __blank__ = 0i32;
                    _gotoNext = 75675i32;
                } else if (__value__ == (76001i32)) {
                    {
                        final __tmp__0 = (_field_75693.__slice__((4 : stdgo.GoInt), _i_75707) : stdgo.GoString)?.__copy__();
                        final __tmp__1 = (_field_75693.__slice__((_i_75707 + (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        _key_76001 = __tmp__0;
                        _value_76006 = __tmp__1;
                    };
                    _gotoNext = 76081i32;
                } else if (__value__ == (76081i32)) {
                    {
                        final __value__ = _value_76006;
                        if (__value__ == (("on" : stdgo.GoString))) {
                            _gotoNext = 76098i32;
                        } else if (__value__ == (("off" : stdgo.GoString))) {
                            _gotoNext = 76128i32;
                        } else {
                            _gotoNext = 76160i32;
                        };
                    };
                } else if (__value__ == (76098i32)) {
                    _enable_76067 = true;
                    _gotoNext = 76282i32;
                } else if (__value__ == (76128i32)) {
                    _enable_76067 = false;
                    _gotoNext = 76282i32;
                } else if (__value__ == (76160i32)) {
                    stdgo.Go.print(("GODEBUG: value \"" : stdgo.GoString), _value_76006, ("\" not supported for cpu option \"" : stdgo.GoString), _key_76001, ("\"\n" : stdgo.GoString));
                    _gotoNext = 75675i32;
                } else if (__value__ == (76282i32)) {
                    if (_key_76001 == (("all" : stdgo.GoString))) {
                        _gotoNext = 76298i32;
                    } else {
                        _gotoNext = 76421i32;
                    };
                } else if (__value__ == (76298i32)) {
                    if ((0i32 : stdgo.GoInt) < (stdgo._internal.internal.cpu.Cpu__options._options.length)) {
                        _gotoNext = 76393i32;
                    } else {
                        _gotoNext = 76399i32;
                    };
                } else if (__value__ == (76326i32)) {
                    stdgo._internal.internal.cpu.Cpu__options._options[(_i_76307 : stdgo.GoInt)].specified = true;
                    stdgo._internal.internal.cpu.Cpu__options._options[(_i_76307 : stdgo.GoInt)].enable = _enable_76067;
                    _i_76307++;
                    _gotoNext = 76394i32;
                } else if (__value__ == (76393i32)) {
                    _i_76307 = 0i32;
                    _gotoNext = 76394i32;
                } else if (__value__ == (76394i32)) {
                    if (_i_76307 < (stdgo._internal.internal.cpu.Cpu__options._options.length)) {
                        _gotoNext = 76326i32;
                    } else {
                        _gotoNext = 76399i32;
                    };
                } else if (__value__ == (76399i32)) {
                    _gotoNext = 75675i32;
                } else if (__value__ == (76421i32)) {
                    if ((0i32 : stdgo.GoInt) < (stdgo._internal.internal.cpu.Cpu__options._options.length)) {
                        _gotoNext = 76565i32;
                    } else {
                        _gotoNext = 76571i32;
                    };
                } else if (__value__ == (76425i32)) {
                    _i_76425++;
                    _gotoNext = 76566i32;
                } else if (__value__ == (76444i32)) {
                    if (stdgo._internal.internal.cpu.Cpu__options._options[(_i_76425 : stdgo.GoInt)].name == (_key_76001)) {
                        _gotoNext = 76475i32;
                    } else {
                        _gotoNext = 76425i32;
                    };
                } else if (__value__ == (76475i32)) {
                    stdgo._internal.internal.cpu.Cpu__options._options[(_i_76425 : stdgo.GoInt)].specified = true;
                    stdgo._internal.internal.cpu.Cpu__options._options[(_i_76425 : stdgo.GoInt)].enable = _enable_76067;
                    _gotoNext = 75675i32;
                } else if (__value__ == (76565i32)) {
                    _i_76425 = 0i32;
                    _gotoNext = 76566i32;
                } else if (__value__ == (76566i32)) {
                    if (_i_76425 < (stdgo._internal.internal.cpu.Cpu__options._options.length)) {
                        _gotoNext = 76444i32;
                    } else {
                        _gotoNext = 76571i32;
                    };
                } else if (__value__ == (76571i32)) {
                    stdgo.Go.print(("GODEBUG: unknown cpu feature \"" : stdgo.GoString), _key_76001, ("\"\n" : stdgo.GoString));
                    _gotoNext = 75675i32;
                } else if (__value__ == (76630i32)) {
                    if ((0i32 : stdgo.GoInt) < (stdgo._internal.internal.cpu.Cpu__options._options.length)) {
                        _gotoNext = 76843i32;
                    } else {
                        _gotoNext = 76846i32;
                    };
                } else if (__value__ == (76656i32)) {
                    _o_76637 = stdgo._internal.internal.cpu.Cpu__options._options[(_i_76642_0 : stdgo.GoInt)];
                    if (!_o_76637.specified) {
                        _gotoNext = 76676i32;
                    } else {
                        _gotoNext = 76697i32;
                    };
                } else if (__value__ == (76676i32)) {
                    _i_76642_0++;
                    _gotoNext = 76844i32;
                } else if (__value__ == (76697i32)) {
                    if ((_o_76637.enable && !_o_76637.feature.value : Bool)) {
                        _gotoNext = 76724i32;
                    } else {
                        _gotoNext = 76821i32;
                    };
                } else if (__value__ == (76724i32)) {
                    stdgo.Go.print(("GODEBUG: can not enable \"" : stdgo.GoString), _o_76637.name, ("\", missing CPU support\n" : stdgo.GoString));
                    _i_76642_0++;
                    _gotoNext = 76844i32;
                } else if (__value__ == (76821i32)) {
                    _o_76637.feature.value = _o_76637.enable;
                    _i_76642_0++;
                    _gotoNext = 76844i32;
                } else if (__value__ == (76843i32)) {
                    {
                        final __tmp__0 = 0i32;
                        final __tmp__1 = stdgo._internal.internal.cpu.Cpu__options._options[(0i32 : stdgo.GoInt)];
                        _i_76642_0 = __tmp__0;
                        _o_76637 = __tmp__1;
                    };
                    _gotoNext = 76844i32;
                } else if (__value__ == (76844i32)) {
                    if (_i_76642_0 < (stdgo._internal.internal.cpu.Cpu__options._options.length)) {
                        _gotoNext = 76656i32;
                    } else {
                        _gotoNext = 76846i32;
                    };
                } else if (__value__ == (76846i32)) {
                    _gotoNext = -1i32;
                };
            };
        };
    }
