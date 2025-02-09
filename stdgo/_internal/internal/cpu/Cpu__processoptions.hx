package stdgo._internal.internal.cpu;
function _processOptions(_env:stdgo.GoString):Void {
        var _i_26555_0:stdgo.GoInt = (0 : stdgo.GoInt);
        var _i_25620:stdgo.GoInt = (0 : stdgo.GoInt);
        var _fieldBreak = false;
        var _o_26550:stdgo._internal.internal.cpu.Cpu_t_option.T_option = ({} : stdgo._internal.internal.cpu.Cpu_t_option.T_option);
        var _i_26338:stdgo.GoInt = (0 : stdgo.GoInt);
        var _i_26220:stdgo.GoInt = (0 : stdgo.GoInt);
        var _enable_25980:Bool = false;
        var _value_25919:stdgo.GoString = ("" : stdgo.GoString);
        var _key_25914:stdgo.GoString = ("" : stdgo.GoString);
        var _field_25606:stdgo.GoString = ("" : stdgo.GoString);
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    _gotoNext = 25580i32;
                } else if (__value__ == (25580i32)) {
                    var __blank__ = 0i32;
                    _fieldBreak = false;
                    _gotoNext = 25588i32;
                } else if (__value__ == (25588i32)) {
                    if (!_fieldBreak && (_env != (stdgo.Go.str() : stdgo.GoString))) {
                        _gotoNext = 25602i32;
                    } else {
                        _gotoNext = 26543i32;
                    };
                } else if (__value__ == (25602i32)) {
                    _field_25606 = (stdgo.Go.str() : stdgo.GoString)?.__copy__();
                    _i_25620 = stdgo._internal.internal.cpu.Cpu__indexbyte._indexByte(_env?.__copy__(), (44 : stdgo.GoUInt8));
                    if ((_i_25620 < (0 : stdgo.GoInt) : Bool)) {
                        _gotoNext = 25656i32;
                    } else {
                        _gotoNext = 25691i32;
                    };
                } else if (__value__ == (25656i32)) {
                    {
                        final __tmp__0 = _env?.__copy__();
                        final __tmp__1 = (stdgo.Go.str() : stdgo.GoString)?.__copy__();
                        _field_25606 = __tmp__0;
                        _env = __tmp__1;
                    };
                    _gotoNext = 25734i32;
                } else if (__value__ == (25691i32)) {
                    _gotoNext = 25691i32;
                    {
                        final __tmp__0 = (_env.__slice__(0, _i_25620) : stdgo.GoString)?.__copy__();
                        final __tmp__1 = (_env.__slice__((_i_25620 + (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        _field_25606 = __tmp__0;
                        _env = __tmp__1;
                    };
                    var __blank__ = 0i32;
                    _gotoNext = 25734i32;
                } else if (__value__ == (25734i32)) {
                    if ((((_field_25606.length) < (4 : stdgo.GoInt) : Bool) || ((_field_25606.__slice__(0, (4 : stdgo.GoInt)) : stdgo.GoString) != ("cpu." : stdgo.GoString)) : Bool)) {
                        _gotoNext = 25775i32;
                    } else {
                        _gotoNext = 25795i32;
                    };
                } else if (__value__ == (25775i32)) {
                    var __blank__ = 0i32;
                    _gotoNext = 25588i32;
                } else if (__value__ == (25795i32)) {
                    _i_25620 = stdgo._internal.internal.cpu.Cpu__indexbyte._indexByte(_field_25606?.__copy__(), (61 : stdgo.GoUInt8));
                    if ((_i_25620 < (0 : stdgo.GoInt) : Bool)) {
                        _gotoNext = 25832i32;
                    } else {
                        _gotoNext = 25914i32;
                    };
                } else if (__value__ == (25832i32)) {
                    stdgo.Go.print(("GODEBUG: no value specified for \"" : stdgo.GoString), _field_25606, ("\"\n" : stdgo.GoString));
                    var __blank__ = 0i32;
                    _gotoNext = 25588i32;
                } else if (__value__ == (25914i32)) {
                    {
                        final __tmp__0 = (_field_25606.__slice__((4 : stdgo.GoInt), _i_25620) : stdgo.GoString)?.__copy__();
                        final __tmp__1 = (_field_25606.__slice__((_i_25620 + (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        _key_25914 = __tmp__0;
                        _value_25919 = __tmp__1;
                    };
                    _gotoNext = 25994i32;
                } else if (__value__ == (25994i32)) {
                    {
                        final __value__ = _value_25919;
                        if (__value__ == (("on" : stdgo.GoString))) {
                            _gotoNext = 26011i32;
                        } else if (__value__ == (("off" : stdgo.GoString))) {
                            _gotoNext = 26041i32;
                        } else {
                            _gotoNext = 26073i32;
                        };
                    };
                } else if (__value__ == (26011i32)) {
                    _enable_25980 = true;
                    _gotoNext = 26195i32;
                } else if (__value__ == (26041i32)) {
                    _enable_25980 = false;
                    _gotoNext = 26195i32;
                } else if (__value__ == (26073i32)) {
                    stdgo.Go.print(("GODEBUG: value \"" : stdgo.GoString), _value_25919, ("\" not supported for cpu option \"" : stdgo.GoString), _key_25914, ("\"\n" : stdgo.GoString));
                    _gotoNext = 25588i32;
                } else if (__value__ == (26195i32)) {
                    if (_key_25914 == (("all" : stdgo.GoString))) {
                        _gotoNext = 26211i32;
                    } else {
                        _gotoNext = 26334i32;
                    };
                } else if (__value__ == (26211i32)) {
                    if ((0i32 : stdgo.GoInt) < (stdgo._internal.internal.cpu.Cpu__options._options.length)) {
                        _gotoNext = 26306i32;
                    } else {
                        _gotoNext = 26312i32;
                    };
                } else if (__value__ == (26239i32)) {
                    stdgo._internal.internal.cpu.Cpu__options._options[(_i_26220 : stdgo.GoInt)].specified = true;
                    stdgo._internal.internal.cpu.Cpu__options._options[(_i_26220 : stdgo.GoInt)].enable = _enable_25980;
                    _i_26220++;
                    _gotoNext = 26307i32;
                } else if (__value__ == (26306i32)) {
                    _i_26220 = 0i32;
                    _gotoNext = 26307i32;
                } else if (__value__ == (26307i32)) {
                    if (_i_26220 < (stdgo._internal.internal.cpu.Cpu__options._options.length)) {
                        _gotoNext = 26239i32;
                    } else {
                        _gotoNext = 26312i32;
                    };
                } else if (__value__ == (26312i32)) {
                    _gotoNext = 25588i32;
                } else if (__value__ == (26334i32)) {
                    if ((0i32 : stdgo.GoInt) < (stdgo._internal.internal.cpu.Cpu__options._options.length)) {
                        _gotoNext = 26478i32;
                    } else {
                        _gotoNext = 26484i32;
                    };
                } else if (__value__ == (26338i32)) {
                    _i_26338++;
                    _gotoNext = 26479i32;
                } else if (__value__ == (26357i32)) {
                    if (stdgo._internal.internal.cpu.Cpu__options._options[(_i_26338 : stdgo.GoInt)].name == (_key_25914)) {
                        _gotoNext = 26388i32;
                    } else {
                        _gotoNext = 26338i32;
                    };
                } else if (__value__ == (26388i32)) {
                    stdgo._internal.internal.cpu.Cpu__options._options[(_i_26338 : stdgo.GoInt)].specified = true;
                    stdgo._internal.internal.cpu.Cpu__options._options[(_i_26338 : stdgo.GoInt)].enable = _enable_25980;
                    _gotoNext = 25588i32;
                } else if (__value__ == (26478i32)) {
                    _i_26338 = 0i32;
                    _gotoNext = 26479i32;
                } else if (__value__ == (26479i32)) {
                    if (_i_26338 < (stdgo._internal.internal.cpu.Cpu__options._options.length)) {
                        _gotoNext = 26357i32;
                    } else {
                        _gotoNext = 26484i32;
                    };
                } else if (__value__ == (26484i32)) {
                    stdgo.Go.print(("GODEBUG: unknown cpu feature \"" : stdgo.GoString), _key_25914, ("\"\n" : stdgo.GoString));
                    _gotoNext = 25588i32;
                } else if (__value__ == (26543i32)) {
                    if ((0i32 : stdgo.GoInt) < (stdgo._internal.internal.cpu.Cpu__options._options.length)) {
                        _gotoNext = 26756i32;
                    } else {
                        _gotoNext = 26759i32;
                    };
                } else if (__value__ == (26569i32)) {
                    _o_26550 = stdgo._internal.internal.cpu.Cpu__options._options[(_i_26555_0 : stdgo.GoInt)];
                    if (!_o_26550.specified) {
                        _gotoNext = 26589i32;
                    } else {
                        _gotoNext = 26610i32;
                    };
                } else if (__value__ == (26589i32)) {
                    _i_26555_0++;
                    _gotoNext = 26757i32;
                } else if (__value__ == (26610i32)) {
                    if ((_o_26550.enable && !_o_26550.feature.value : Bool)) {
                        _gotoNext = 26637i32;
                    } else {
                        _gotoNext = 26734i32;
                    };
                } else if (__value__ == (26637i32)) {
                    stdgo.Go.print(("GODEBUG: can not enable \"" : stdgo.GoString), _o_26550.name, ("\", missing CPU support\n" : stdgo.GoString));
                    _i_26555_0++;
                    _gotoNext = 26757i32;
                } else if (__value__ == (26734i32)) {
                    _o_26550.feature.value = _o_26550.enable;
                    _i_26555_0++;
                    _gotoNext = 26757i32;
                } else if (__value__ == (26756i32)) {
                    {
                        final __tmp__0 = 0i32;
                        final __tmp__1 = stdgo._internal.internal.cpu.Cpu__options._options[(0i32 : stdgo.GoInt)];
                        _i_26555_0 = __tmp__0;
                        _o_26550 = __tmp__1;
                    };
                    _gotoNext = 26757i32;
                } else if (__value__ == (26757i32)) {
                    if (_i_26555_0 < (stdgo._internal.internal.cpu.Cpu__options._options.length)) {
                        _gotoNext = 26569i32;
                    } else {
                        _gotoNext = 26759i32;
                    };
                } else if (__value__ == (26759i32)) {
                    _gotoNext = -1i32;
                };
            };
        };
    }
