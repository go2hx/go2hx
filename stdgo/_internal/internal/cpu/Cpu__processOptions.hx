package stdgo._internal.internal.cpu;
function _processOptions(_env:stdgo.GoString):Void {
        var _field_57993:stdgo.GoString = ("" : stdgo.GoString);
        var _i_58007:stdgo.GoInt = (0 : stdgo.GoInt);
        var _fieldBreak = false;
        var _o_58937:stdgo._internal.internal.cpu.Cpu_T_option.T_option = ({} : stdgo._internal.internal.cpu.Cpu_T_option.T_option);
        var _i_58942_0:stdgo.GoInt = (0 : stdgo.GoInt);
        var _i_58725:stdgo.GoInt = (0 : stdgo.GoInt);
        var _i_58607:stdgo.GoInt = (0 : stdgo.GoInt);
        var _enable_58367:Bool = false;
        var _value_58306:stdgo.GoString = ("" : stdgo.GoString);
        var _key_58301:stdgo.GoString = ("" : stdgo.GoString);
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    _gotoNext = 57967i32;
                } else if (__value__ == (57967i32)) {
                    var __blank__ = 0i32;
                    _fieldBreak = false;
                    _gotoNext = 57975i32;
                } else if (__value__ == (57975i32)) {
                    if (!_fieldBreak && (_env != stdgo.Go.str())) {
                        _gotoNext = 57989i32;
                    } else {
                        _gotoNext = 58930i32;
                    };
                } else if (__value__ == (57989i32)) {
                    _field_57993 = stdgo.Go.str()?.__copy__();
                    _i_58007 = stdgo._internal.internal.cpu.Cpu__indexByte._indexByte(_env?.__copy__(), (44 : stdgo.GoUInt8));
                    if ((_i_58007 < (0 : stdgo.GoInt) : Bool)) {
                        _gotoNext = 58043i32;
                    } else {
                        _gotoNext = 58078i32;
                    };
                } else if (__value__ == (58043i32)) {
                    {
                        final __tmp__0 = _env?.__copy__();
                        final __tmp__1 = stdgo.Go.str()?.__copy__();
                        _field_57993 = __tmp__0;
                        _env = __tmp__1;
                    };
                    _gotoNext = 58121i32;
                } else if (__value__ == (58078i32)) {
                    _gotoNext = 58078i32;
                    {
                        final __tmp__0 = (_env.__slice__(0, _i_58007) : stdgo.GoString)?.__copy__();
                        final __tmp__1 = (_env.__slice__((_i_58007 + (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        _field_57993 = __tmp__0;
                        _env = __tmp__1;
                    };
                    var __blank__ = 0i32;
                    _gotoNext = 58121i32;
                } else if (__value__ == (58121i32)) {
                    if ((((_field_57993.length) < (4 : stdgo.GoInt) : Bool) || ((_field_57993.__slice__(0, (4 : stdgo.GoInt)) : stdgo.GoString) != ("cpu." : stdgo.GoString)) : Bool)) {
                        _gotoNext = 58162i32;
                    } else {
                        _gotoNext = 58182i32;
                    };
                } else if (__value__ == (58162i32)) {
                    var __blank__ = 0i32;
                    _gotoNext = 57975i32;
                } else if (__value__ == (58182i32)) {
                    _i_58007 = stdgo._internal.internal.cpu.Cpu__indexByte._indexByte(_field_57993?.__copy__(), (61 : stdgo.GoUInt8));
                    if ((_i_58007 < (0 : stdgo.GoInt) : Bool)) {
                        _gotoNext = 58219i32;
                    } else {
                        _gotoNext = 58301i32;
                    };
                } else if (__value__ == (58219i32)) {
                    stdgo.Go.print(("GODEBUG: no value specified for \"" : stdgo.GoString), _field_57993, ("\"\n" : stdgo.GoString));
                    var __blank__ = 0i32;
                    _gotoNext = 57975i32;
                } else if (__value__ == (58301i32)) {
                    {
                        final __tmp__0 = (_field_57993.__slice__((4 : stdgo.GoInt), _i_58007) : stdgo.GoString)?.__copy__();
                        final __tmp__1 = (_field_57993.__slice__((_i_58007 + (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        _key_58301 = __tmp__0;
                        _value_58306 = __tmp__1;
                    };
                    var __blank__ = 0i32;
                    _gotoNext = 58381i32;
                } else if (__value__ == (58381i32)) {
                    {
                        final __value__ = _value_58306;
                        if (__value__ == (("on" : stdgo.GoString))) {
                            _gotoNext = 58398i32;
                        } else if (__value__ == (("off" : stdgo.GoString))) {
                            _gotoNext = 58428i32;
                        } else {
                            _gotoNext = 58460i32;
                        };
                    };
                } else if (__value__ == (58398i32)) {
                    _enable_58367 = true;
                    _gotoNext = 58582i32;
                } else if (__value__ == (58428i32)) {
                    _enable_58367 = false;
                    _gotoNext = 58582i32;
                } else if (__value__ == (58460i32)) {
                    stdgo.Go.print(("GODEBUG: value \"" : stdgo.GoString), _value_58306, ("\" not supported for cpu option \"" : stdgo.GoString), _key_58301, ("\"\n" : stdgo.GoString));
                    _gotoNext = 57975i32;
                } else if (__value__ == (58582i32)) {
                    if (_key_58301 == (("all" : stdgo.GoString))) {
                        _gotoNext = 58598i32;
                    } else {
                        _gotoNext = 58721i32;
                    };
                } else if (__value__ == (58598i32)) {
                    if ((0i32 : stdgo.GoInt) < (stdgo._internal.internal.cpu.Cpu__options._options.length)) {
                        _gotoNext = 58693i32;
                    } else {
                        _gotoNext = 58699i32;
                    };
                } else if (__value__ == (58626i32)) {
                    stdgo._internal.internal.cpu.Cpu__options._options[(_i_58607 : stdgo.GoInt)].specified = true;
                    stdgo._internal.internal.cpu.Cpu__options._options[(_i_58607 : stdgo.GoInt)].enable = _enable_58367;
                    _i_58607++;
                    _gotoNext = 58694i32;
                } else if (__value__ == (58693i32)) {
                    _i_58607 = 0i32;
                    _gotoNext = 58694i32;
                } else if (__value__ == (58694i32)) {
                    if (_i_58607 < (stdgo._internal.internal.cpu.Cpu__options._options.length)) {
                        _gotoNext = 58626i32;
                    } else {
                        _gotoNext = 58699i32;
                    };
                } else if (__value__ == (58699i32)) {
                    _gotoNext = 57975i32;
                } else if (__value__ == (58721i32)) {
                    if ((0i32 : stdgo.GoInt) < (stdgo._internal.internal.cpu.Cpu__options._options.length)) {
                        _gotoNext = 58865i32;
                    } else {
                        _gotoNext = 58871i32;
                    };
                } else if (__value__ == (58725i32)) {
                    _i_58725++;
                    _gotoNext = 58866i32;
                } else if (__value__ == (58744i32)) {
                    if (stdgo._internal.internal.cpu.Cpu__options._options[(_i_58725 : stdgo.GoInt)].name == (_key_58301)) {
                        _gotoNext = 58775i32;
                    } else {
                        _gotoNext = 58725i32;
                    };
                } else if (__value__ == (58775i32)) {
                    stdgo._internal.internal.cpu.Cpu__options._options[(_i_58725 : stdgo.GoInt)].specified = true;
                    stdgo._internal.internal.cpu.Cpu__options._options[(_i_58725 : stdgo.GoInt)].enable = _enable_58367;
                    _gotoNext = 57975i32;
                } else if (__value__ == (58865i32)) {
                    _i_58725 = 0i32;
                    _gotoNext = 58866i32;
                } else if (__value__ == (58866i32)) {
                    if (_i_58725 < (stdgo._internal.internal.cpu.Cpu__options._options.length)) {
                        _gotoNext = 58744i32;
                    } else {
                        _gotoNext = 58871i32;
                    };
                } else if (__value__ == (58871i32)) {
                    stdgo.Go.print(("GODEBUG: unknown cpu feature \"" : stdgo.GoString), _key_58301, ("\"\n" : stdgo.GoString));
                    _gotoNext = 57975i32;
                } else if (__value__ == (58930i32)) {
                    if ((0i32 : stdgo.GoInt) < (stdgo._internal.internal.cpu.Cpu__options._options.length)) {
                        _gotoNext = 59143i32;
                    } else {
                        _gotoNext = 59146i32;
                    };
                } else if (__value__ == (58956i32)) {
                    _o_58937 = stdgo._internal.internal.cpu.Cpu__options._options[(_i_58942_0 : stdgo.GoInt)];
                    if (!_o_58937.specified) {
                        _gotoNext = 58976i32;
                    } else {
                        _gotoNext = 58997i32;
                    };
                } else if (__value__ == (58976i32)) {
                    _i_58942_0++;
                    _gotoNext = 59144i32;
                } else if (__value__ == (58997i32)) {
                    if ((_o_58937.enable && !_o_58937.feature.value : Bool)) {
                        _gotoNext = 59024i32;
                    } else {
                        _gotoNext = 59121i32;
                    };
                } else if (__value__ == (59024i32)) {
                    stdgo.Go.print(("GODEBUG: can not enable \"" : stdgo.GoString), _o_58937.name, ("\", missing CPU support\n" : stdgo.GoString));
                    _i_58942_0++;
                    _gotoNext = 59144i32;
                } else if (__value__ == (59121i32)) {
                    _o_58937.feature.value = _o_58937.enable;
                    _i_58942_0++;
                    _gotoNext = 59144i32;
                } else if (__value__ == (59143i32)) {
                    {
                        final __tmp__0 = 0i32;
                        final __tmp__1 = stdgo._internal.internal.cpu.Cpu__options._options[(0i32 : stdgo.GoInt)];
                        _i_58942_0 = __tmp__0;
                        _o_58937 = __tmp__1;
                    };
                    _gotoNext = 59144i32;
                } else if (__value__ == (59144i32)) {
                    if (_i_58942_0 < (stdgo._internal.internal.cpu.Cpu__options._options.length)) {
                        _gotoNext = 58956i32;
                    } else {
                        _gotoNext = 59146i32;
                    };
                } else if (__value__ == (59146i32)) {
                    _gotoNext = -1i32;
                };
            };
        };
    }
