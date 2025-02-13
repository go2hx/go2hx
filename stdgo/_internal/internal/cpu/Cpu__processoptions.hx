package stdgo._internal.internal.cpu;
function _processOptions(_env:stdgo.GoString):Void {
        var _o_21921:stdgo._internal.internal.cpu.Cpu_t_option.T_option = ({} : stdgo._internal.internal.cpu.Cpu_t_option.T_option);
        var _i_21591:stdgo.GoInt = (0 : stdgo.GoInt);
        var _enable_21351:Bool = false;
        var _value_21290:stdgo.GoString = ("" : stdgo.GoString);
        var _field_20977:stdgo.GoString = ("" : stdgo.GoString);
        var _fieldBreak = false;
        var _i_21926_0:stdgo.GoInt = (0 : stdgo.GoInt);
        var _i_21709:stdgo.GoInt = (0 : stdgo.GoInt);
        var _key_21285:stdgo.GoString = ("" : stdgo.GoString);
        var _i_20991:stdgo.GoInt = (0 : stdgo.GoInt);
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    _gotoNext = 20951i32;
                } else if (__value__ == (20951i32)) {
                    var __blank__ = 0i32;
                    _fieldBreak = false;
                    _gotoNext = 20959i32;
                } else if (__value__ == (20959i32)) {
                    if (!_fieldBreak && (_env != (stdgo.Go.str() : stdgo.GoString))) {
                        _gotoNext = 20973i32;
                    } else {
                        _gotoNext = 21914i32;
                    };
                } else if (__value__ == (20973i32)) {
                    _field_20977 = (stdgo.Go.str() : stdgo.GoString)?.__copy__();
                    _i_20991 = stdgo._internal.internal.cpu.Cpu__indexbyte._indexByte(_env?.__copy__(), (44 : stdgo.GoUInt8));
                    if ((_i_20991 < (0 : stdgo.GoInt) : Bool)) {
                        _gotoNext = 21027i32;
                    } else {
                        _gotoNext = 21062i32;
                    };
                } else if (__value__ == (21027i32)) {
                    {
                        final __tmp__0 = _env?.__copy__();
                        final __tmp__1 = (stdgo.Go.str() : stdgo.GoString)?.__copy__();
                        _field_20977 = __tmp__0;
                        _env = __tmp__1;
                    };
                    _gotoNext = 21105i32;
                } else if (__value__ == (21062i32)) {
                    _gotoNext = 21062i32;
                    {
                        final __tmp__0 = (_env.__slice__(0, _i_20991) : stdgo.GoString)?.__copy__();
                        final __tmp__1 = (_env.__slice__((_i_20991 + (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        _field_20977 = __tmp__0;
                        _env = __tmp__1;
                    };
                    var __blank__ = 0i32;
                    _gotoNext = 21105i32;
                } else if (__value__ == (21105i32)) {
                    if ((((_field_20977.length) < (4 : stdgo.GoInt) : Bool) || ((_field_20977.__slice__(0, (4 : stdgo.GoInt)) : stdgo.GoString) != ("cpu." : stdgo.GoString)) : Bool)) {
                        _gotoNext = 21146i32;
                    } else {
                        _gotoNext = 21166i32;
                    };
                } else if (__value__ == (21146i32)) {
                    var __blank__ = 0i32;
                    _gotoNext = 20959i32;
                } else if (__value__ == (21166i32)) {
                    _i_20991 = stdgo._internal.internal.cpu.Cpu__indexbyte._indexByte(_field_20977?.__copy__(), (61 : stdgo.GoUInt8));
                    if ((_i_20991 < (0 : stdgo.GoInt) : Bool)) {
                        _gotoNext = 21203i32;
                    } else {
                        _gotoNext = 21285i32;
                    };
                } else if (__value__ == (21203i32)) {
                    stdgo.Go.print(("GODEBUG: no value specified for \"" : stdgo.GoString), _field_20977, ("\"\n" : stdgo.GoString));
                    var __blank__ = 0i32;
                    _gotoNext = 20959i32;
                } else if (__value__ == (21285i32)) {
                    {
                        final __tmp__0 = (_field_20977.__slice__((4 : stdgo.GoInt), _i_20991) : stdgo.GoString)?.__copy__();
                        final __tmp__1 = (_field_20977.__slice__((_i_20991 + (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        _key_21285 = __tmp__0;
                        _value_21290 = __tmp__1;
                    };
                    _gotoNext = 21365i32;
                } else if (__value__ == (21365i32)) {
                    {
                        final __value__ = _value_21290;
                        if (__value__ == (("on" : stdgo.GoString))) {
                            _gotoNext = 21382i32;
                        } else if (__value__ == (("off" : stdgo.GoString))) {
                            _gotoNext = 21412i32;
                        } else {
                            _gotoNext = 21444i32;
                        };
                    };
                } else if (__value__ == (21382i32)) {
                    _enable_21351 = true;
                    _gotoNext = 21566i32;
                } else if (__value__ == (21412i32)) {
                    _enable_21351 = false;
                    _gotoNext = 21566i32;
                } else if (__value__ == (21444i32)) {
                    stdgo.Go.print(("GODEBUG: value \"" : stdgo.GoString), _value_21290, ("\" not supported for cpu option \"" : stdgo.GoString), _key_21285, ("\"\n" : stdgo.GoString));
                    _gotoNext = 20959i32;
                } else if (__value__ == (21566i32)) {
                    if (_key_21285 == (("all" : stdgo.GoString))) {
                        _gotoNext = 21582i32;
                    } else {
                        _gotoNext = 21705i32;
                    };
                } else if (__value__ == (21582i32)) {
                    if ((0i32 : stdgo.GoInt) < (stdgo._internal.internal.cpu.Cpu__options._options.length)) {
                        _gotoNext = 21677i32;
                    } else {
                        _gotoNext = 21683i32;
                    };
                } else if (__value__ == (21610i32)) {
                    stdgo._internal.internal.cpu.Cpu__options._options[(_i_21591 : stdgo.GoInt)].specified = true;
                    stdgo._internal.internal.cpu.Cpu__options._options[(_i_21591 : stdgo.GoInt)].enable = _enable_21351;
                    _i_21591++;
                    _gotoNext = 21678i32;
                } else if (__value__ == (21677i32)) {
                    _i_21591 = 0i32;
                    _gotoNext = 21678i32;
                } else if (__value__ == (21678i32)) {
                    if (_i_21591 < (stdgo._internal.internal.cpu.Cpu__options._options.length)) {
                        _gotoNext = 21610i32;
                    } else {
                        _gotoNext = 21683i32;
                    };
                } else if (__value__ == (21683i32)) {
                    _gotoNext = 20959i32;
                } else if (__value__ == (21705i32)) {
                    if ((0i32 : stdgo.GoInt) < (stdgo._internal.internal.cpu.Cpu__options._options.length)) {
                        _gotoNext = 21849i32;
                    } else {
                        _gotoNext = 21855i32;
                    };
                } else if (__value__ == (21709i32)) {
                    _i_21709++;
                    _gotoNext = 21850i32;
                } else if (__value__ == (21728i32)) {
                    if (stdgo._internal.internal.cpu.Cpu__options._options[(_i_21709 : stdgo.GoInt)].name == (_key_21285)) {
                        _gotoNext = 21759i32;
                    } else {
                        _gotoNext = 21709i32;
                    };
                } else if (__value__ == (21759i32)) {
                    stdgo._internal.internal.cpu.Cpu__options._options[(_i_21709 : stdgo.GoInt)].specified = true;
                    stdgo._internal.internal.cpu.Cpu__options._options[(_i_21709 : stdgo.GoInt)].enable = _enable_21351;
                    _gotoNext = 20959i32;
                } else if (__value__ == (21849i32)) {
                    _i_21709 = 0i32;
                    _gotoNext = 21850i32;
                } else if (__value__ == (21850i32)) {
                    if (_i_21709 < (stdgo._internal.internal.cpu.Cpu__options._options.length)) {
                        _gotoNext = 21728i32;
                    } else {
                        _gotoNext = 21855i32;
                    };
                } else if (__value__ == (21855i32)) {
                    stdgo.Go.print(("GODEBUG: unknown cpu feature \"" : stdgo.GoString), _key_21285, ("\"\n" : stdgo.GoString));
                    _gotoNext = 20959i32;
                } else if (__value__ == (21914i32)) {
                    if ((0i32 : stdgo.GoInt) < (stdgo._internal.internal.cpu.Cpu__options._options.length)) {
                        _gotoNext = 22127i32;
                    } else {
                        _gotoNext = 22130i32;
                    };
                } else if (__value__ == (21940i32)) {
                    _o_21921 = stdgo._internal.internal.cpu.Cpu__options._options[(_i_21926_0 : stdgo.GoInt)];
                    if (!_o_21921.specified) {
                        _gotoNext = 21960i32;
                    } else {
                        _gotoNext = 21981i32;
                    };
                } else if (__value__ == (21960i32)) {
                    _i_21926_0++;
                    _gotoNext = 22128i32;
                } else if (__value__ == (21981i32)) {
                    if ((_o_21921.enable && !_o_21921.feature.value : Bool)) {
                        _gotoNext = 22008i32;
                    } else {
                        _gotoNext = 22105i32;
                    };
                } else if (__value__ == (22008i32)) {
                    stdgo.Go.print(("GODEBUG: can not enable \"" : stdgo.GoString), _o_21921.name, ("\", missing CPU support\n" : stdgo.GoString));
                    _i_21926_0++;
                    _gotoNext = 22128i32;
                } else if (__value__ == (22105i32)) {
                    _o_21921.feature.value = _o_21921.enable;
                    _i_21926_0++;
                    _gotoNext = 22128i32;
                } else if (__value__ == (22127i32)) {
                    {
                        final __tmp__0 = 0i32;
                        final __tmp__1 = stdgo._internal.internal.cpu.Cpu__options._options[(0i32 : stdgo.GoInt)];
                        _i_21926_0 = __tmp__0;
                        _o_21921 = __tmp__1;
                    };
                    _gotoNext = 22128i32;
                } else if (__value__ == (22128i32)) {
                    if (_i_21926_0 < (stdgo._internal.internal.cpu.Cpu__options._options.length)) {
                        _gotoNext = 21940i32;
                    } else {
                        _gotoNext = 22130i32;
                    };
                } else if (__value__ == (22130i32)) {
                    _gotoNext = -1i32;
                };
            };
        };
    }
