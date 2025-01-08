package stdgo._internal.internal.cpu;
function _processOptions(_env:stdgo.GoString):Void {
        var _key_40195:stdgo.GoString = ("" : stdgo.GoString);
        var _field_39887:stdgo.GoString = ("" : stdgo.GoString);
        var _i_40836_0:stdgo.GoInt = (0 : stdgo.GoInt);
        var _i_40619:stdgo.GoInt = (0 : stdgo.GoInt);
        var _i_40501:stdgo.GoInt = (0 : stdgo.GoInt);
        var _enable_40261:Bool = false;
        var _i_39901:stdgo.GoInt = (0 : stdgo.GoInt);
        var _fieldBreak = false;
        var _o_40831:stdgo._internal.internal.cpu.Cpu_T_option.T_option = ({} : stdgo._internal.internal.cpu.Cpu_T_option.T_option);
        var _value_40200:stdgo.GoString = ("" : stdgo.GoString);
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    _gotoNext = 39861i32;
                } else if (__value__ == (39861i32)) {
                    var __blank__ = 0i32;
                    _fieldBreak = false;
                    _gotoNext = 39869i32;
                } else if (__value__ == (39869i32)) {
                    if (!_fieldBreak && (_env != stdgo.Go.str())) {
                        _gotoNext = 39883i32;
                    } else {
                        _gotoNext = 40824i32;
                    };
                } else if (__value__ == (39883i32)) {
                    _field_39887 = stdgo.Go.str()?.__copy__();
                    _i_39901 = stdgo._internal.internal.cpu.Cpu__indexByte._indexByte(_env?.__copy__(), (44 : stdgo.GoUInt8));
                    if ((_i_39901 < (0 : stdgo.GoInt) : Bool)) {
                        _gotoNext = 39937i32;
                    } else {
                        _gotoNext = 39972i32;
                    };
                } else if (__value__ == (39937i32)) {
                    {
                        final __tmp__0 = _env?.__copy__();
                        final __tmp__1 = stdgo.Go.str()?.__copy__();
                        _field_39887 = __tmp__0;
                        _env = __tmp__1;
                    };
                    _gotoNext = 40015i32;
                } else if (__value__ == (39972i32)) {
                    _gotoNext = 39972i32;
                    {
                        final __tmp__0 = (_env.__slice__(0, _i_39901) : stdgo.GoString)?.__copy__();
                        final __tmp__1 = (_env.__slice__((_i_39901 + (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        _field_39887 = __tmp__0;
                        _env = __tmp__1;
                    };
                    var __blank__ = 0i32;
                    _gotoNext = 40015i32;
                } else if (__value__ == (40015i32)) {
                    if ((((_field_39887.length) < (4 : stdgo.GoInt) : Bool) || ((_field_39887.__slice__(0, (4 : stdgo.GoInt)) : stdgo.GoString) != ("cpu." : stdgo.GoString)) : Bool)) {
                        _gotoNext = 40056i32;
                    } else {
                        _gotoNext = 40076i32;
                    };
                } else if (__value__ == (40056i32)) {
                    var __blank__ = 0i32;
                    _gotoNext = 39869i32;
                } else if (__value__ == (40076i32)) {
                    _i_39901 = stdgo._internal.internal.cpu.Cpu__indexByte._indexByte(_field_39887?.__copy__(), (61 : stdgo.GoUInt8));
                    if ((_i_39901 < (0 : stdgo.GoInt) : Bool)) {
                        _gotoNext = 40113i32;
                    } else {
                        _gotoNext = 40195i32;
                    };
                } else if (__value__ == (40113i32)) {
                    stdgo.Go.print(("GODEBUG: no value specified for \"" : stdgo.GoString), _field_39887, ("\"\n" : stdgo.GoString));
                    var __blank__ = 0i32;
                    _gotoNext = 39869i32;
                } else if (__value__ == (40195i32)) {
                    {
                        final __tmp__0 = (_field_39887.__slice__((4 : stdgo.GoInt), _i_39901) : stdgo.GoString)?.__copy__();
                        final __tmp__1 = (_field_39887.__slice__((_i_39901 + (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        _key_40195 = __tmp__0;
                        _value_40200 = __tmp__1;
                    };
                    _gotoNext = 40275i32;
                } else if (__value__ == (40275i32)) {
                    {
                        final __value__ = _value_40200;
                        if (__value__ == (("on" : stdgo.GoString))) {
                            _gotoNext = 40292i32;
                        } else if (__value__ == (("off" : stdgo.GoString))) {
                            _gotoNext = 40322i32;
                        } else {
                            _gotoNext = 40354i32;
                        };
                    };
                } else if (__value__ == (40292i32)) {
                    _enable_40261 = true;
                    _gotoNext = 40476i32;
                } else if (__value__ == (40322i32)) {
                    _enable_40261 = false;
                    _gotoNext = 40476i32;
                } else if (__value__ == (40354i32)) {
                    stdgo.Go.print(("GODEBUG: value \"" : stdgo.GoString), _value_40200, ("\" not supported for cpu option \"" : stdgo.GoString), _key_40195, ("\"\n" : stdgo.GoString));
                    _gotoNext = 39869i32;
                } else if (__value__ == (40476i32)) {
                    if (_key_40195 == (("all" : stdgo.GoString))) {
                        _gotoNext = 40492i32;
                    } else {
                        _gotoNext = 40615i32;
                    };
                } else if (__value__ == (40492i32)) {
                    if ((0i32 : stdgo.GoInt) < (stdgo._internal.internal.cpu.Cpu__options._options.length)) {
                        _gotoNext = 40587i32;
                    } else {
                        _gotoNext = 40593i32;
                    };
                } else if (__value__ == (40520i32)) {
                    stdgo._internal.internal.cpu.Cpu__options._options[(_i_40501 : stdgo.GoInt)].specified = true;
                    stdgo._internal.internal.cpu.Cpu__options._options[(_i_40501 : stdgo.GoInt)].enable = _enable_40261;
                    _i_40501++;
                    _gotoNext = 40588i32;
                } else if (__value__ == (40587i32)) {
                    _i_40501 = 0i32;
                    _gotoNext = 40588i32;
                } else if (__value__ == (40588i32)) {
                    if (_i_40501 < (stdgo._internal.internal.cpu.Cpu__options._options.length)) {
                        _gotoNext = 40520i32;
                    } else {
                        _gotoNext = 40593i32;
                    };
                } else if (__value__ == (40593i32)) {
                    _gotoNext = 39869i32;
                } else if (__value__ == (40615i32)) {
                    if ((0i32 : stdgo.GoInt) < (stdgo._internal.internal.cpu.Cpu__options._options.length)) {
                        _gotoNext = 40759i32;
                    } else {
                        _gotoNext = 40765i32;
                    };
                } else if (__value__ == (40619i32)) {
                    _i_40619++;
                    _gotoNext = 40760i32;
                } else if (__value__ == (40638i32)) {
                    if (stdgo._internal.internal.cpu.Cpu__options._options[(_i_40619 : stdgo.GoInt)].name == (_key_40195)) {
                        _gotoNext = 40669i32;
                    } else {
                        _gotoNext = 40619i32;
                    };
                } else if (__value__ == (40669i32)) {
                    stdgo._internal.internal.cpu.Cpu__options._options[(_i_40619 : stdgo.GoInt)].specified = true;
                    stdgo._internal.internal.cpu.Cpu__options._options[(_i_40619 : stdgo.GoInt)].enable = _enable_40261;
                    _gotoNext = 39869i32;
                } else if (__value__ == (40759i32)) {
                    _i_40619 = 0i32;
                    _gotoNext = 40760i32;
                } else if (__value__ == (40760i32)) {
                    if (_i_40619 < (stdgo._internal.internal.cpu.Cpu__options._options.length)) {
                        _gotoNext = 40638i32;
                    } else {
                        _gotoNext = 40765i32;
                    };
                } else if (__value__ == (40765i32)) {
                    stdgo.Go.print(("GODEBUG: unknown cpu feature \"" : stdgo.GoString), _key_40195, ("\"\n" : stdgo.GoString));
                    _gotoNext = 39869i32;
                } else if (__value__ == (40824i32)) {
                    if ((0i32 : stdgo.GoInt) < (stdgo._internal.internal.cpu.Cpu__options._options.length)) {
                        _gotoNext = 41037i32;
                    } else {
                        _gotoNext = 41040i32;
                    };
                } else if (__value__ == (40850i32)) {
                    _o_40831 = stdgo._internal.internal.cpu.Cpu__options._options[(_i_40836_0 : stdgo.GoInt)];
                    if (!_o_40831.specified) {
                        _gotoNext = 40870i32;
                    } else {
                        _gotoNext = 40891i32;
                    };
                } else if (__value__ == (40870i32)) {
                    _i_40836_0++;
                    _gotoNext = 41038i32;
                } else if (__value__ == (40891i32)) {
                    if ((_o_40831.enable && !_o_40831.feature.value : Bool)) {
                        _gotoNext = 40918i32;
                    } else {
                        _gotoNext = 41015i32;
                    };
                } else if (__value__ == (40918i32)) {
                    stdgo.Go.print(("GODEBUG: can not enable \"" : stdgo.GoString), _o_40831.name, ("\", missing CPU support\n" : stdgo.GoString));
                    _i_40836_0++;
                    _gotoNext = 41038i32;
                } else if (__value__ == (41015i32)) {
                    _o_40831.feature.value = _o_40831.enable;
                    _i_40836_0++;
                    _gotoNext = 41038i32;
                } else if (__value__ == (41037i32)) {
                    {
                        final __tmp__0 = 0i32;
                        final __tmp__1 = stdgo._internal.internal.cpu.Cpu__options._options[(0i32 : stdgo.GoInt)];
                        _i_40836_0 = __tmp__0;
                        _o_40831 = __tmp__1;
                    };
                    _gotoNext = 41038i32;
                } else if (__value__ == (41038i32)) {
                    if (_i_40836_0 < (stdgo._internal.internal.cpu.Cpu__options._options.length)) {
                        _gotoNext = 40850i32;
                    } else {
                        _gotoNext = 41040i32;
                    };
                } else if (__value__ == (41040i32)) {
                    _gotoNext = -1i32;
                };
            };
        };
    }
