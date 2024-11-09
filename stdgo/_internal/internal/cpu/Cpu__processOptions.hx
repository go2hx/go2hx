package stdgo._internal.internal.cpu;
function _processOptions(_env:stdgo.GoString):Void {
        var _enable_14675:Bool = false;
        var _value_14614:stdgo.GoString = ("" : stdgo.GoString);
        var _o_15245:stdgo._internal.internal.cpu.Cpu_T_option.T_option = ({} : stdgo._internal.internal.cpu.Cpu_T_option.T_option);
        var _i_15250_0:stdgo.GoInt = (0 : stdgo.GoInt);
        var _i_15033:stdgo.GoInt = (0 : stdgo.GoInt);
        var _field_14301:stdgo.GoString = ("" : stdgo.GoString);
        var _fieldBreak = false;
        var _i_14915:stdgo.GoInt = (0 : stdgo.GoInt);
        var _key_14609:stdgo.GoString = ("" : stdgo.GoString);
        var _i_14315:stdgo.GoInt = (0 : stdgo.GoInt);
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    _gotoNext = 14275i32;
                } else if (__value__ == (14275i32)) {
                    var __blank__ = 0i32;
                    _fieldBreak = false;
                    _gotoNext = 14283i32;
                } else if (__value__ == (14283i32)) {
                    if (!_fieldBreak && (_env != stdgo.Go.str())) {
                        _gotoNext = 14297i32;
                    } else {
                        _gotoNext = 15238i32;
                    };
                } else if (__value__ == (14297i32)) {
                    _field_14301 = stdgo.Go.str()?.__copy__();
                    _i_14315 = stdgo._internal.internal.cpu.Cpu__indexByte._indexByte(_env?.__copy__(), (44 : stdgo.GoUInt8));
                    if ((_i_14315 < (0 : stdgo.GoInt) : Bool)) {
                        _gotoNext = 14351i32;
                    } else {
                        _gotoNext = 14386i32;
                    };
                } else if (__value__ == (14351i32)) {
                    {
                        final __tmp__0 = _env?.__copy__();
                        final __tmp__1 = stdgo.Go.str()?.__copy__();
                        _field_14301 = __tmp__0;
                        _env = __tmp__1;
                    };
                    _gotoNext = 14429i32;
                } else if (__value__ == (14386i32)) {
                    _gotoNext = 14386i32;
                    {
                        final __tmp__0 = (_env.__slice__(0, _i_14315) : stdgo.GoString)?.__copy__();
                        final __tmp__1 = (_env.__slice__((_i_14315 + (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        _field_14301 = __tmp__0;
                        _env = __tmp__1;
                    };
                    var __blank__ = 0i32;
                    _gotoNext = 14429i32;
                } else if (__value__ == (14429i32)) {
                    if ((((_field_14301.length) < (4 : stdgo.GoInt) : Bool) || ((_field_14301.__slice__(0, (4 : stdgo.GoInt)) : stdgo.GoString) != ("cpu." : stdgo.GoString)) : Bool)) {
                        _gotoNext = 14470i32;
                    } else {
                        _gotoNext = 14490i32;
                    };
                } else if (__value__ == (14470i32)) {
                    var __blank__ = 0i32;
                    _gotoNext = 14283i32;
                } else if (__value__ == (14490i32)) {
                    _i_14315 = stdgo._internal.internal.cpu.Cpu__indexByte._indexByte(_field_14301?.__copy__(), (61 : stdgo.GoUInt8));
                    if ((_i_14315 < (0 : stdgo.GoInt) : Bool)) {
                        _gotoNext = 14527i32;
                    } else {
                        _gotoNext = 14609i32;
                    };
                } else if (__value__ == (14527i32)) {
                    stdgo.Go.print(("GODEBUG: no value specified for \"" : stdgo.GoString), _field_14301, ("\"\n" : stdgo.GoString));
                    var __blank__ = 0i32;
                    _gotoNext = 14283i32;
                } else if (__value__ == (14609i32)) {
                    {
                        final __tmp__0 = (_field_14301.__slice__((4 : stdgo.GoInt), _i_14315) : stdgo.GoString)?.__copy__();
                        final __tmp__1 = (_field_14301.__slice__((_i_14315 + (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        _key_14609 = __tmp__0;
                        _value_14614 = __tmp__1;
                    };
                    var __blank__ = 0i32;
                    _gotoNext = 14689i32;
                } else if (__value__ == (14689i32)) {
                    {
                        final __value__ = _value_14614;
                        if (__value__ == (("on" : stdgo.GoString))) {
                            _gotoNext = 14706i32;
                        } else if (__value__ == (("off" : stdgo.GoString))) {
                            _gotoNext = 14736i32;
                        } else {
                            _gotoNext = 14768i32;
                        };
                    };
                } else if (__value__ == (14706i32)) {
                    _enable_14675 = true;
                    _gotoNext = 14890i32;
                } else if (__value__ == (14736i32)) {
                    _enable_14675 = false;
                    _gotoNext = 14890i32;
                } else if (__value__ == (14768i32)) {
                    stdgo.Go.print(("GODEBUG: value \"" : stdgo.GoString), _value_14614, ("\" not supported for cpu option \"" : stdgo.GoString), _key_14609, ("\"\n" : stdgo.GoString));
                    _gotoNext = 14283i32;
                } else if (__value__ == (14890i32)) {
                    if (_key_14609 == (("all" : stdgo.GoString))) {
                        _gotoNext = 14906i32;
                    } else {
                        _gotoNext = 15029i32;
                    };
                } else if (__value__ == (14906i32)) {
                    if ((0i32 : stdgo.GoInt) < (stdgo._internal.internal.cpu.Cpu__options._options.length)) {
                        _gotoNext = 15001i32;
                    } else {
                        _gotoNext = 15007i32;
                    };
                } else if (__value__ == (14934i32)) {
                    stdgo._internal.internal.cpu.Cpu__options._options[(_i_14915 : stdgo.GoInt)].specified = true;
                    stdgo._internal.internal.cpu.Cpu__options._options[(_i_14915 : stdgo.GoInt)].enable = _enable_14675;
                    _i_14915++;
                    _gotoNext = 15002i32;
                } else if (__value__ == (15001i32)) {
                    _i_14915 = 0i32;
                    _gotoNext = 15002i32;
                } else if (__value__ == (15002i32)) {
                    if (_i_14915 < (stdgo._internal.internal.cpu.Cpu__options._options.length)) {
                        _gotoNext = 14934i32;
                    } else {
                        _gotoNext = 15007i32;
                    };
                } else if (__value__ == (15007i32)) {
                    _gotoNext = 14283i32;
                } else if (__value__ == (15029i32)) {
                    if ((0i32 : stdgo.GoInt) < (stdgo._internal.internal.cpu.Cpu__options._options.length)) {
                        _gotoNext = 15173i32;
                    } else {
                        _gotoNext = 15179i32;
                    };
                } else if (__value__ == (15033i32)) {
                    _i_15033++;
                    _gotoNext = 15174i32;
                } else if (__value__ == (15052i32)) {
                    if (stdgo._internal.internal.cpu.Cpu__options._options[(_i_15033 : stdgo.GoInt)].name == (_key_14609)) {
                        _gotoNext = 15083i32;
                    } else {
                        _gotoNext = 15033i32;
                    };
                } else if (__value__ == (15083i32)) {
                    stdgo._internal.internal.cpu.Cpu__options._options[(_i_15033 : stdgo.GoInt)].specified = true;
                    stdgo._internal.internal.cpu.Cpu__options._options[(_i_15033 : stdgo.GoInt)].enable = _enable_14675;
                    _gotoNext = 14283i32;
                } else if (__value__ == (15173i32)) {
                    _i_15033 = 0i32;
                    _gotoNext = 15174i32;
                } else if (__value__ == (15174i32)) {
                    if (_i_15033 < (stdgo._internal.internal.cpu.Cpu__options._options.length)) {
                        _gotoNext = 15052i32;
                    } else {
                        _gotoNext = 15179i32;
                    };
                } else if (__value__ == (15179i32)) {
                    stdgo.Go.print(("GODEBUG: unknown cpu feature \"" : stdgo.GoString), _key_14609, ("\"\n" : stdgo.GoString));
                    _gotoNext = 14283i32;
                } else if (__value__ == (15238i32)) {
                    if ((0i32 : stdgo.GoInt) < (stdgo._internal.internal.cpu.Cpu__options._options.length)) {
                        _gotoNext = 15451i32;
                    } else {
                        _gotoNext = 15454i32;
                    };
                } else if (__value__ == (15264i32)) {
                    _o_15245 = stdgo._internal.internal.cpu.Cpu__options._options[(_i_15250_0 : stdgo.GoInt)];
                    if (!_o_15245.specified) {
                        _gotoNext = 15284i32;
                    } else {
                        _gotoNext = 15305i32;
                    };
                } else if (__value__ == (15284i32)) {
                    _i_15250_0++;
                    _gotoNext = 15452i32;
                } else if (__value__ == (15305i32)) {
                    if ((_o_15245.enable && !_o_15245.feature.value : Bool)) {
                        _gotoNext = 15332i32;
                    } else {
                        _gotoNext = 15429i32;
                    };
                } else if (__value__ == (15332i32)) {
                    stdgo.Go.print(("GODEBUG: can not enable \"" : stdgo.GoString), _o_15245.name, ("\", missing CPU support\n" : stdgo.GoString));
                    _i_15250_0++;
                    _gotoNext = 15452i32;
                } else if (__value__ == (15429i32)) {
                    _o_15245.feature.value = _o_15245.enable;
                    _i_15250_0++;
                    _gotoNext = 15452i32;
                } else if (__value__ == (15451i32)) {
                    {
                        final __tmp__0 = 0i32;
                        final __tmp__1 = stdgo._internal.internal.cpu.Cpu__options._options[(0i32 : stdgo.GoInt)];
                        _i_15250_0 = __tmp__0;
                        _o_15245 = __tmp__1;
                    };
                    _gotoNext = 15452i32;
                } else if (__value__ == (15452i32)) {
                    if (_i_15250_0 < (stdgo._internal.internal.cpu.Cpu__options._options.length)) {
                        _gotoNext = 15264i32;
                    } else {
                        _gotoNext = 15454i32;
                    };
                } else if (__value__ == (15454i32)) {
                    _gotoNext = -1i32;
                };
            };
        };
    }
