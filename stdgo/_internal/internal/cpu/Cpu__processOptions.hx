package stdgo._internal.internal.cpu;
function _processOptions(_env:stdgo.GoString):Void {
        var _key_11936:stdgo.GoString = ("" : stdgo.GoString);
        var _i_11642:stdgo.GoInt = (0 : stdgo.GoInt);
        var _field_11628:stdgo.GoString = ("" : stdgo.GoString);
        var _fieldBreak = false;
        var _value_11941:stdgo.GoString = ("" : stdgo.GoString);
        var _i_12577_0:stdgo.GoInt = (0 : stdgo.GoInt);
        var _i_12360:stdgo.GoInt = (0 : stdgo.GoInt);
        var _i_12242:stdgo.GoInt = (0 : stdgo.GoInt);
        var _enable_12002:Bool = false;
        var _o_12572:stdgo._internal.internal.cpu.Cpu_T_option.T_option = ({} : stdgo._internal.internal.cpu.Cpu_T_option.T_option);
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    _gotoNext = 11602i32;
                } else if (__value__ == (11602i32)) {
                    var __blank__ = 0i32;
                    _fieldBreak = false;
                    _gotoNext = 11610i32;
                } else if (__value__ == (11610i32)) {
                    if (!_fieldBreak && (_env != stdgo.Go.str())) {
                        _gotoNext = 11624i32;
                    } else {
                        _gotoNext = 12565i32;
                    };
                } else if (__value__ == (11624i32)) {
                    _field_11628 = stdgo.Go.str()?.__copy__();
                    _i_11642 = stdgo._internal.internal.cpu.Cpu__indexByte._indexByte(_env?.__copy__(), (44 : stdgo.GoUInt8));
                    if ((_i_11642 < (0 : stdgo.GoInt) : Bool)) {
                        _gotoNext = 11678i32;
                    } else {
                        _gotoNext = 11713i32;
                    };
                } else if (__value__ == (11678i32)) {
                    {
                        final __tmp__0 = _env?.__copy__();
                        final __tmp__1 = stdgo.Go.str()?.__copy__();
                        _field_11628 = __tmp__0;
                        _env = __tmp__1;
                    };
                    _gotoNext = 11756i32;
                } else if (__value__ == (11713i32)) {
                    _gotoNext = 11713i32;
                    {
                        final __tmp__0 = (_env.__slice__(0, _i_11642) : stdgo.GoString)?.__copy__();
                        final __tmp__1 = (_env.__slice__((_i_11642 + (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        _field_11628 = __tmp__0;
                        _env = __tmp__1;
                    };
                    var __blank__ = 0i32;
                    _gotoNext = 11756i32;
                } else if (__value__ == (11756i32)) {
                    if ((((_field_11628.length) < (4 : stdgo.GoInt) : Bool) || ((_field_11628.__slice__(0, (4 : stdgo.GoInt)) : stdgo.GoString) != ("cpu." : stdgo.GoString)) : Bool)) {
                        _gotoNext = 11797i32;
                    } else {
                        _gotoNext = 11817i32;
                    };
                } else if (__value__ == (11797i32)) {
                    var __blank__ = 0i32;
                    _gotoNext = 11610i32;
                } else if (__value__ == (11817i32)) {
                    _i_11642 = stdgo._internal.internal.cpu.Cpu__indexByte._indexByte(_field_11628?.__copy__(), (61 : stdgo.GoUInt8));
                    if ((_i_11642 < (0 : stdgo.GoInt) : Bool)) {
                        _gotoNext = 11854i32;
                    } else {
                        _gotoNext = 11936i32;
                    };
                } else if (__value__ == (11854i32)) {
                    stdgo.Go.print(("GODEBUG: no value specified for \"" : stdgo.GoString), _field_11628, ("\"\n" : stdgo.GoString));
                    var __blank__ = 0i32;
                    _gotoNext = 11610i32;
                } else if (__value__ == (11936i32)) {
                    {
                        final __tmp__0 = (_field_11628.__slice__((4 : stdgo.GoInt), _i_11642) : stdgo.GoString)?.__copy__();
                        final __tmp__1 = (_field_11628.__slice__((_i_11642 + (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        _key_11936 = __tmp__0;
                        _value_11941 = __tmp__1;
                    };
                    _gotoNext = 12016i32;
                } else if (__value__ == (12016i32)) {
                    {
                        final __value__ = _value_11941;
                        if (__value__ == (("on" : stdgo.GoString))) {
                            _gotoNext = 12033i32;
                        } else if (__value__ == (("off" : stdgo.GoString))) {
                            _gotoNext = 12063i32;
                        } else {
                            _gotoNext = 12095i32;
                        };
                    };
                } else if (__value__ == (12033i32)) {
                    _enable_12002 = true;
                    _gotoNext = 12217i32;
                } else if (__value__ == (12063i32)) {
                    _enable_12002 = false;
                    _gotoNext = 12217i32;
                } else if (__value__ == (12095i32)) {
                    stdgo.Go.print(("GODEBUG: value \"" : stdgo.GoString), _value_11941, ("\" not supported for cpu option \"" : stdgo.GoString), _key_11936, ("\"\n" : stdgo.GoString));
                    _gotoNext = 11610i32;
                } else if (__value__ == (12217i32)) {
                    if (_key_11936 == (("all" : stdgo.GoString))) {
                        _gotoNext = 12233i32;
                    } else {
                        _gotoNext = 12356i32;
                    };
                } else if (__value__ == (12233i32)) {
                    if ((0i32 : stdgo.GoInt) < (stdgo._internal.internal.cpu.Cpu__options._options.length)) {
                        _gotoNext = 12328i32;
                    } else {
                        _gotoNext = 12334i32;
                    };
                } else if (__value__ == (12261i32)) {
                    stdgo._internal.internal.cpu.Cpu__options._options[(_i_12242 : stdgo.GoInt)].specified = true;
                    stdgo._internal.internal.cpu.Cpu__options._options[(_i_12242 : stdgo.GoInt)].enable = _enable_12002;
                    _i_12242++;
                    _gotoNext = 12329i32;
                } else if (__value__ == (12328i32)) {
                    _i_12242 = 0i32;
                    _gotoNext = 12329i32;
                } else if (__value__ == (12329i32)) {
                    if (_i_12242 < (stdgo._internal.internal.cpu.Cpu__options._options.length)) {
                        _gotoNext = 12261i32;
                    } else {
                        _gotoNext = 12334i32;
                    };
                } else if (__value__ == (12334i32)) {
                    _gotoNext = 11610i32;
                } else if (__value__ == (12356i32)) {
                    if ((0i32 : stdgo.GoInt) < (stdgo._internal.internal.cpu.Cpu__options._options.length)) {
                        _gotoNext = 12500i32;
                    } else {
                        _gotoNext = 12506i32;
                    };
                } else if (__value__ == (12360i32)) {
                    _i_12360++;
                    _gotoNext = 12501i32;
                } else if (__value__ == (12379i32)) {
                    if (stdgo._internal.internal.cpu.Cpu__options._options[(_i_12360 : stdgo.GoInt)].name == (_key_11936)) {
                        _gotoNext = 12410i32;
                    } else {
                        _gotoNext = 12360i32;
                    };
                } else if (__value__ == (12410i32)) {
                    stdgo._internal.internal.cpu.Cpu__options._options[(_i_12360 : stdgo.GoInt)].specified = true;
                    stdgo._internal.internal.cpu.Cpu__options._options[(_i_12360 : stdgo.GoInt)].enable = _enable_12002;
                    _gotoNext = 11610i32;
                } else if (__value__ == (12500i32)) {
                    _i_12360 = 0i32;
                    _gotoNext = 12501i32;
                } else if (__value__ == (12501i32)) {
                    if (_i_12360 < (stdgo._internal.internal.cpu.Cpu__options._options.length)) {
                        _gotoNext = 12379i32;
                    } else {
                        _gotoNext = 12506i32;
                    };
                } else if (__value__ == (12506i32)) {
                    stdgo.Go.print(("GODEBUG: unknown cpu feature \"" : stdgo.GoString), _key_11936, ("\"\n" : stdgo.GoString));
                    _gotoNext = 11610i32;
                } else if (__value__ == (12565i32)) {
                    if ((0i32 : stdgo.GoInt) < (stdgo._internal.internal.cpu.Cpu__options._options.length)) {
                        _gotoNext = 12778i32;
                    } else {
                        _gotoNext = 12781i32;
                    };
                } else if (__value__ == (12591i32)) {
                    _o_12572 = stdgo._internal.internal.cpu.Cpu__options._options[(_i_12577_0 : stdgo.GoInt)];
                    if (!_o_12572.specified) {
                        _gotoNext = 12611i32;
                    } else {
                        _gotoNext = 12632i32;
                    };
                } else if (__value__ == (12611i32)) {
                    _i_12577_0++;
                    _gotoNext = 12779i32;
                } else if (__value__ == (12632i32)) {
                    if ((_o_12572.enable && !_o_12572.feature.value : Bool)) {
                        _gotoNext = 12659i32;
                    } else {
                        _gotoNext = 12756i32;
                    };
                } else if (__value__ == (12659i32)) {
                    stdgo.Go.print(("GODEBUG: can not enable \"" : stdgo.GoString), _o_12572.name, ("\", missing CPU support\n" : stdgo.GoString));
                    _i_12577_0++;
                    _gotoNext = 12779i32;
                } else if (__value__ == (12756i32)) {
                    _o_12572.feature.value = _o_12572.enable;
                    _i_12577_0++;
                    _gotoNext = 12779i32;
                } else if (__value__ == (12778i32)) {
                    {
                        final __tmp__0 = 0i32;
                        final __tmp__1 = stdgo._internal.internal.cpu.Cpu__options._options[(0i32 : stdgo.GoInt)];
                        _i_12577_0 = __tmp__0;
                        _o_12572 = __tmp__1;
                    };
                    _gotoNext = 12779i32;
                } else if (__value__ == (12779i32)) {
                    if (_i_12577_0 < (stdgo._internal.internal.cpu.Cpu__options._options.length)) {
                        _gotoNext = 12591i32;
                    } else {
                        _gotoNext = 12781i32;
                    };
                } else if (__value__ == (12781i32)) {
                    _gotoNext = -1i32;
                };
            };
        };
    }
