package stdgo._internal.internal.cpu;
function _processOptions(_env:stdgo.GoString):Void {
        var _enable_279711:Bool = false;
        var _value_279650:stdgo.GoString = ("" : stdgo.GoString);
        var _i_279351:stdgo.GoInt = (0 : stdgo.GoInt);
        var _i_280286_0:stdgo.GoInt = (0 : stdgo.GoInt);
        var _i_280069:stdgo.GoInt = (0 : stdgo.GoInt);
        var _key_279645:stdgo.GoString = ("" : stdgo.GoString);
        var _field_279337:stdgo.GoString = ("" : stdgo.GoString);
        var _fieldBreak = false;
        var _o_280281:stdgo._internal.internal.cpu.Cpu_t_option.T_option = ({} : stdgo._internal.internal.cpu.Cpu_t_option.T_option);
        var _i_279951:stdgo.GoInt = (0 : stdgo.GoInt);
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    _gotoNext = 279311i32;
                } else if (__value__ == (279311i32)) {
                    var __blank__ = 0i32;
                    _fieldBreak = false;
                    _gotoNext = 279319i32;
                } else if (__value__ == (279319i32)) {
                    if (!_fieldBreak && (_env != (stdgo.Go.str() : stdgo.GoString))) {
                        _gotoNext = 279333i32;
                    } else {
                        _gotoNext = 280274i32;
                    };
                } else if (__value__ == (279333i32)) {
                    _field_279337 = (stdgo.Go.str() : stdgo.GoString)?.__copy__();
                    _i_279351 = stdgo._internal.internal.cpu.Cpu__indexbyte._indexByte(_env?.__copy__(), (44 : stdgo.GoUInt8));
                    if ((_i_279351 < (0 : stdgo.GoInt) : Bool)) {
                        _gotoNext = 279387i32;
                    } else {
                        _gotoNext = 279422i32;
                    };
                } else if (__value__ == (279387i32)) {
                    {
                        final __tmp__0 = _env?.__copy__();
                        final __tmp__1 = (stdgo.Go.str() : stdgo.GoString)?.__copy__();
                        _field_279337 = __tmp__0;
                        _env = __tmp__1;
                    };
                    _gotoNext = 279465i32;
                } else if (__value__ == (279422i32)) {
                    _gotoNext = 279422i32;
                    {
                        final __tmp__0 = (_env.__slice__(0, _i_279351) : stdgo.GoString)?.__copy__();
                        final __tmp__1 = (_env.__slice__((_i_279351 + (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        _field_279337 = __tmp__0;
                        _env = __tmp__1;
                    };
                    var __blank__ = 0i32;
                    _gotoNext = 279465i32;
                } else if (__value__ == (279465i32)) {
                    if ((((_field_279337.length) < (4 : stdgo.GoInt) : Bool) || ((_field_279337.__slice__(0, (4 : stdgo.GoInt)) : stdgo.GoString) != ("cpu." : stdgo.GoString)) : Bool)) {
                        _gotoNext = 279506i32;
                    } else {
                        _gotoNext = 279526i32;
                    };
                } else if (__value__ == (279506i32)) {
                    var __blank__ = 0i32;
                    _gotoNext = 279319i32;
                } else if (__value__ == (279526i32)) {
                    _i_279351 = stdgo._internal.internal.cpu.Cpu__indexbyte._indexByte(_field_279337?.__copy__(), (61 : stdgo.GoUInt8));
                    if ((_i_279351 < (0 : stdgo.GoInt) : Bool)) {
                        _gotoNext = 279563i32;
                    } else {
                        _gotoNext = 279645i32;
                    };
                } else if (__value__ == (279563i32)) {
                    stdgo.Go.print(("GODEBUG: no value specified for \"" : stdgo.GoString), _field_279337, ("\"\n" : stdgo.GoString));
                    var __blank__ = 0i32;
                    _gotoNext = 279319i32;
                } else if (__value__ == (279645i32)) {
                    {
                        final __tmp__0 = (_field_279337.__slice__((4 : stdgo.GoInt), _i_279351) : stdgo.GoString)?.__copy__();
                        final __tmp__1 = (_field_279337.__slice__((_i_279351 + (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        _key_279645 = __tmp__0;
                        _value_279650 = __tmp__1;
                    };
                    _gotoNext = 279725i32;
                } else if (__value__ == (279725i32)) {
                    {
                        final __value__ = _value_279650;
                        if (__value__ == (("on" : stdgo.GoString))) {
                            _gotoNext = 279742i32;
                        } else if (__value__ == (("off" : stdgo.GoString))) {
                            _gotoNext = 279772i32;
                        } else {
                            _gotoNext = 279804i32;
                        };
                    };
                } else if (__value__ == (279742i32)) {
                    _enable_279711 = true;
                    _gotoNext = 279926i32;
                } else if (__value__ == (279772i32)) {
                    _enable_279711 = false;
                    _gotoNext = 279926i32;
                } else if (__value__ == (279804i32)) {
                    stdgo.Go.print(("GODEBUG: value \"" : stdgo.GoString), _value_279650, ("\" not supported for cpu option \"" : stdgo.GoString), _key_279645, ("\"\n" : stdgo.GoString));
                    _gotoNext = 279319i32;
                } else if (__value__ == (279926i32)) {
                    if (_key_279645 == (("all" : stdgo.GoString))) {
                        _gotoNext = 279942i32;
                    } else {
                        _gotoNext = 280065i32;
                    };
                } else if (__value__ == (279942i32)) {
                    if ((0i32 : stdgo.GoInt) < (stdgo._internal.internal.cpu.Cpu__options._options.length)) {
                        _gotoNext = 280037i32;
                    } else {
                        _gotoNext = 280043i32;
                    };
                } else if (__value__ == (279970i32)) {
                    stdgo._internal.internal.cpu.Cpu__options._options[(_i_279951 : stdgo.GoInt)].specified = true;
                    stdgo._internal.internal.cpu.Cpu__options._options[(_i_279951 : stdgo.GoInt)].enable = _enable_279711;
                    _i_279951++;
                    _gotoNext = 280038i32;
                } else if (__value__ == (280037i32)) {
                    _i_279951 = 0i32;
                    _gotoNext = 280038i32;
                } else if (__value__ == (280038i32)) {
                    if (_i_279951 < (stdgo._internal.internal.cpu.Cpu__options._options.length)) {
                        _gotoNext = 279970i32;
                    } else {
                        _gotoNext = 280043i32;
                    };
                } else if (__value__ == (280043i32)) {
                    _gotoNext = 279319i32;
                } else if (__value__ == (280065i32)) {
                    if ((0i32 : stdgo.GoInt) < (stdgo._internal.internal.cpu.Cpu__options._options.length)) {
                        _gotoNext = 280209i32;
                    } else {
                        _gotoNext = 280215i32;
                    };
                } else if (__value__ == (280069i32)) {
                    _i_280069++;
                    _gotoNext = 280210i32;
                } else if (__value__ == (280088i32)) {
                    if (stdgo._internal.internal.cpu.Cpu__options._options[(_i_280069 : stdgo.GoInt)].name == (_key_279645)) {
                        _gotoNext = 280119i32;
                    } else {
                        _gotoNext = 280069i32;
                    };
                } else if (__value__ == (280119i32)) {
                    stdgo._internal.internal.cpu.Cpu__options._options[(_i_280069 : stdgo.GoInt)].specified = true;
                    stdgo._internal.internal.cpu.Cpu__options._options[(_i_280069 : stdgo.GoInt)].enable = _enable_279711;
                    _gotoNext = 279319i32;
                } else if (__value__ == (280209i32)) {
                    _i_280069 = 0i32;
                    _gotoNext = 280210i32;
                } else if (__value__ == (280210i32)) {
                    if (_i_280069 < (stdgo._internal.internal.cpu.Cpu__options._options.length)) {
                        _gotoNext = 280088i32;
                    } else {
                        _gotoNext = 280215i32;
                    };
                } else if (__value__ == (280215i32)) {
                    stdgo.Go.print(("GODEBUG: unknown cpu feature \"" : stdgo.GoString), _key_279645, ("\"\n" : stdgo.GoString));
                    _gotoNext = 279319i32;
                } else if (__value__ == (280274i32)) {
                    if ((0i32 : stdgo.GoInt) < (stdgo._internal.internal.cpu.Cpu__options._options.length)) {
                        _gotoNext = 280487i32;
                    } else {
                        _gotoNext = 280490i32;
                    };
                } else if (__value__ == (280300i32)) {
                    _o_280281 = stdgo._internal.internal.cpu.Cpu__options._options[(_i_280286_0 : stdgo.GoInt)];
                    if (!_o_280281.specified) {
                        _gotoNext = 280320i32;
                    } else {
                        _gotoNext = 280341i32;
                    };
                } else if (__value__ == (280320i32)) {
                    _i_280286_0++;
                    _gotoNext = 280488i32;
                } else if (__value__ == (280341i32)) {
                    if ((_o_280281.enable && !_o_280281.feature.value : Bool)) {
                        _gotoNext = 280368i32;
                    } else {
                        _gotoNext = 280465i32;
                    };
                } else if (__value__ == (280368i32)) {
                    stdgo.Go.print(("GODEBUG: can not enable \"" : stdgo.GoString), _o_280281.name, ("\", missing CPU support\n" : stdgo.GoString));
                    _i_280286_0++;
                    _gotoNext = 280488i32;
                } else if (__value__ == (280465i32)) {
                    _o_280281.feature.value = _o_280281.enable;
                    _i_280286_0++;
                    _gotoNext = 280488i32;
                } else if (__value__ == (280487i32)) {
                    {
                        final __tmp__0 = 0i32;
                        final __tmp__1 = stdgo._internal.internal.cpu.Cpu__options._options[(0i32 : stdgo.GoInt)];
                        _i_280286_0 = __tmp__0;
                        _o_280281 = __tmp__1;
                    };
                    _gotoNext = 280488i32;
                } else if (__value__ == (280488i32)) {
                    if (_i_280286_0 < (stdgo._internal.internal.cpu.Cpu__options._options.length)) {
                        _gotoNext = 280300i32;
                    } else {
                        _gotoNext = 280490i32;
                    };
                } else if (__value__ == (280490i32)) {
                    _gotoNext = -1i32;
                };
            };
        };
    }
