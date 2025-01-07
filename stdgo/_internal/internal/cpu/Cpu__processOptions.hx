package stdgo._internal.internal.cpu;
function _processOptions(_env:stdgo.GoString):Void {
        var _o_265498:stdgo._internal.internal.cpu.Cpu_T_option.T_option = ({} : stdgo._internal.internal.cpu.Cpu_T_option.T_option);
        var _i_265503_0:stdgo.GoInt = (0 : stdgo.GoInt);
        var _enable_264928:Bool = false;
        var _value_264867:stdgo.GoString = ("" : stdgo.GoString);
        var _i_264568:stdgo.GoInt = (0 : stdgo.GoInt);
        var _field_264554:stdgo.GoString = ("" : stdgo.GoString);
        var _i_265286:stdgo.GoInt = (0 : stdgo.GoInt);
        var _i_265168:stdgo.GoInt = (0 : stdgo.GoInt);
        var _key_264862:stdgo.GoString = ("" : stdgo.GoString);
        var _fieldBreak = false;
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    _gotoNext = 264528i32;
                } else if (__value__ == (264528i32)) {
                    var __blank__ = 0i32;
                    _fieldBreak = false;
                    _gotoNext = 264536i32;
                } else if (__value__ == (264536i32)) {
                    if (!_fieldBreak && (_env != stdgo.Go.str())) {
                        _gotoNext = 264550i32;
                    } else {
                        _gotoNext = 265491i32;
                    };
                } else if (__value__ == (264550i32)) {
                    _field_264554 = stdgo.Go.str()?.__copy__();
                    _i_264568 = stdgo._internal.internal.cpu.Cpu__indexByte._indexByte(_env?.__copy__(), (44 : stdgo.GoUInt8));
                    if ((_i_264568 < (0 : stdgo.GoInt) : Bool)) {
                        _gotoNext = 264604i32;
                    } else {
                        _gotoNext = 264639i32;
                    };
                } else if (__value__ == (264604i32)) {
                    {
                        final __tmp__0 = _env?.__copy__();
                        final __tmp__1 = stdgo.Go.str()?.__copy__();
                        _field_264554 = __tmp__0;
                        _env = __tmp__1;
                    };
                    _gotoNext = 264682i32;
                } else if (__value__ == (264639i32)) {
                    _gotoNext = 264639i32;
                    {
                        final __tmp__0 = (_env.__slice__(0, _i_264568) : stdgo.GoString)?.__copy__();
                        final __tmp__1 = (_env.__slice__((_i_264568 + (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        _field_264554 = __tmp__0;
                        _env = __tmp__1;
                    };
                    var __blank__ = 0i32;
                    _gotoNext = 264682i32;
                } else if (__value__ == (264682i32)) {
                    if ((((_field_264554.length) < (4 : stdgo.GoInt) : Bool) || ((_field_264554.__slice__(0, (4 : stdgo.GoInt)) : stdgo.GoString) != ("cpu." : stdgo.GoString)) : Bool)) {
                        _gotoNext = 264723i32;
                    } else {
                        _gotoNext = 264743i32;
                    };
                } else if (__value__ == (264723i32)) {
                    var __blank__ = 0i32;
                    _gotoNext = 264536i32;
                } else if (__value__ == (264743i32)) {
                    _i_264568 = stdgo._internal.internal.cpu.Cpu__indexByte._indexByte(_field_264554?.__copy__(), (61 : stdgo.GoUInt8));
                    if ((_i_264568 < (0 : stdgo.GoInt) : Bool)) {
                        _gotoNext = 264780i32;
                    } else {
                        _gotoNext = 264862i32;
                    };
                } else if (__value__ == (264780i32)) {
                    stdgo.Go.print(("GODEBUG: no value specified for \"" : stdgo.GoString), _field_264554, ("\"\n" : stdgo.GoString));
                    var __blank__ = 0i32;
                    _gotoNext = 264536i32;
                } else if (__value__ == (264862i32)) {
                    {
                        final __tmp__0 = (_field_264554.__slice__((4 : stdgo.GoInt), _i_264568) : stdgo.GoString)?.__copy__();
                        final __tmp__1 = (_field_264554.__slice__((_i_264568 + (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        _key_264862 = __tmp__0;
                        _value_264867 = __tmp__1;
                    };
                    _gotoNext = 264942i32;
                } else if (__value__ == (264942i32)) {
                    {
                        final __value__ = _value_264867;
                        if (__value__ == (("on" : stdgo.GoString))) {
                            _gotoNext = 264959i32;
                        } else if (__value__ == (("off" : stdgo.GoString))) {
                            _gotoNext = 264989i32;
                        } else {
                            _gotoNext = 265021i32;
                        };
                    };
                } else if (__value__ == (264959i32)) {
                    _enable_264928 = true;
                    _gotoNext = 265143i32;
                } else if (__value__ == (264989i32)) {
                    _enable_264928 = false;
                    _gotoNext = 265143i32;
                } else if (__value__ == (265021i32)) {
                    stdgo.Go.print(("GODEBUG: value \"" : stdgo.GoString), _value_264867, ("\" not supported for cpu option \"" : stdgo.GoString), _key_264862, ("\"\n" : stdgo.GoString));
                    _gotoNext = 264536i32;
                } else if (__value__ == (265143i32)) {
                    if (_key_264862 == (("all" : stdgo.GoString))) {
                        _gotoNext = 265159i32;
                    } else {
                        _gotoNext = 265282i32;
                    };
                } else if (__value__ == (265159i32)) {
                    if ((0i32 : stdgo.GoInt) < (stdgo._internal.internal.cpu.Cpu__options._options.length)) {
                        _gotoNext = 265254i32;
                    } else {
                        _gotoNext = 265260i32;
                    };
                } else if (__value__ == (265187i32)) {
                    stdgo._internal.internal.cpu.Cpu__options._options[(_i_265168 : stdgo.GoInt)].specified = true;
                    stdgo._internal.internal.cpu.Cpu__options._options[(_i_265168 : stdgo.GoInt)].enable = _enable_264928;
                    _i_265168++;
                    _gotoNext = 265255i32;
                } else if (__value__ == (265254i32)) {
                    _i_265168 = 0i32;
                    _gotoNext = 265255i32;
                } else if (__value__ == (265255i32)) {
                    if (_i_265168 < (stdgo._internal.internal.cpu.Cpu__options._options.length)) {
                        _gotoNext = 265187i32;
                    } else {
                        _gotoNext = 265260i32;
                    };
                } else if (__value__ == (265260i32)) {
                    _gotoNext = 264536i32;
                } else if (__value__ == (265282i32)) {
                    if ((0i32 : stdgo.GoInt) < (stdgo._internal.internal.cpu.Cpu__options._options.length)) {
                        _gotoNext = 265426i32;
                    } else {
                        _gotoNext = 265432i32;
                    };
                } else if (__value__ == (265286i32)) {
                    _i_265286++;
                    _gotoNext = 265427i32;
                } else if (__value__ == (265305i32)) {
                    if (stdgo._internal.internal.cpu.Cpu__options._options[(_i_265286 : stdgo.GoInt)].name == (_key_264862)) {
                        _gotoNext = 265336i32;
                    } else {
                        _gotoNext = 265286i32;
                    };
                } else if (__value__ == (265336i32)) {
                    stdgo._internal.internal.cpu.Cpu__options._options[(_i_265286 : stdgo.GoInt)].specified = true;
                    stdgo._internal.internal.cpu.Cpu__options._options[(_i_265286 : stdgo.GoInt)].enable = _enable_264928;
                    _gotoNext = 264536i32;
                } else if (__value__ == (265426i32)) {
                    _i_265286 = 0i32;
                    _gotoNext = 265427i32;
                } else if (__value__ == (265427i32)) {
                    if (_i_265286 < (stdgo._internal.internal.cpu.Cpu__options._options.length)) {
                        _gotoNext = 265305i32;
                    } else {
                        _gotoNext = 265432i32;
                    };
                } else if (__value__ == (265432i32)) {
                    stdgo.Go.print(("GODEBUG: unknown cpu feature \"" : stdgo.GoString), _key_264862, ("\"\n" : stdgo.GoString));
                    _gotoNext = 264536i32;
                } else if (__value__ == (265491i32)) {
                    if ((0i32 : stdgo.GoInt) < (stdgo._internal.internal.cpu.Cpu__options._options.length)) {
                        _gotoNext = 265704i32;
                    } else {
                        _gotoNext = 265707i32;
                    };
                } else if (__value__ == (265517i32)) {
                    _o_265498 = stdgo._internal.internal.cpu.Cpu__options._options[(_i_265503_0 : stdgo.GoInt)];
                    if (!_o_265498.specified) {
                        _gotoNext = 265537i32;
                    } else {
                        _gotoNext = 265558i32;
                    };
                } else if (__value__ == (265537i32)) {
                    _i_265503_0++;
                    _gotoNext = 265705i32;
                } else if (__value__ == (265558i32)) {
                    if ((_o_265498.enable && !_o_265498.feature.value : Bool)) {
                        _gotoNext = 265585i32;
                    } else {
                        _gotoNext = 265682i32;
                    };
                } else if (__value__ == (265585i32)) {
                    stdgo.Go.print(("GODEBUG: can not enable \"" : stdgo.GoString), _o_265498.name, ("\", missing CPU support\n" : stdgo.GoString));
                    _i_265503_0++;
                    _gotoNext = 265705i32;
                } else if (__value__ == (265682i32)) {
                    _o_265498.feature.value = _o_265498.enable;
                    _i_265503_0++;
                    _gotoNext = 265705i32;
                } else if (__value__ == (265704i32)) {
                    {
                        final __tmp__0 = 0i32;
                        final __tmp__1 = stdgo._internal.internal.cpu.Cpu__options._options[(0i32 : stdgo.GoInt)];
                        _i_265503_0 = __tmp__0;
                        _o_265498 = __tmp__1;
                    };
                    _gotoNext = 265705i32;
                } else if (__value__ == (265705i32)) {
                    if (_i_265503_0 < (stdgo._internal.internal.cpu.Cpu__options._options.length)) {
                        _gotoNext = 265517i32;
                    } else {
                        _gotoNext = 265707i32;
                    };
                } else if (__value__ == (265707i32)) {
                    _gotoNext = -1i32;
                };
            };
        };
    }
