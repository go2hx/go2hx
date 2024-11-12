package stdgo._internal.internal.cpu;
function _processOptions(_env:stdgo.GoString):Void {
        var _o_377143:stdgo._internal.internal.cpu.Cpu_T_option.T_option = ({} : stdgo._internal.internal.cpu.Cpu_T_option.T_option);
        var _i_376813:stdgo.GoInt = (0 : stdgo.GoInt);
        var _key_376507:stdgo.GoString = ("" : stdgo.GoString);
        var _i_376213:stdgo.GoInt = (0 : stdgo.GoInt);
        var _field_376199:stdgo.GoString = ("" : stdgo.GoString);
        var _i_377148_0:stdgo.GoInt = (0 : stdgo.GoInt);
        var _i_376931:stdgo.GoInt = (0 : stdgo.GoInt);
        var _enable_376573:Bool = false;
        var _value_376512:stdgo.GoString = ("" : stdgo.GoString);
        var _fieldBreak = false;
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    _gotoNext = 376173i32;
                } else if (__value__ == (376173i32)) {
                    var __blank__ = 0i32;
                    _fieldBreak = false;
                    _gotoNext = 376181i32;
                } else if (__value__ == (376181i32)) {
                    if (!_fieldBreak && (_env != stdgo.Go.str())) {
                        _gotoNext = 376195i32;
                    } else {
                        _gotoNext = 377136i32;
                    };
                } else if (__value__ == (376195i32)) {
                    _field_376199 = stdgo.Go.str()?.__copy__();
                    _i_376213 = stdgo._internal.internal.cpu.Cpu__indexByte._indexByte(_env?.__copy__(), (44 : stdgo.GoUInt8));
                    if ((_i_376213 < (0 : stdgo.GoInt) : Bool)) {
                        _gotoNext = 376249i32;
                    } else {
                        _gotoNext = 376284i32;
                    };
                } else if (__value__ == (376249i32)) {
                    {
                        final __tmp__0 = _env?.__copy__();
                        final __tmp__1 = stdgo.Go.str()?.__copy__();
                        _field_376199 = __tmp__0;
                        _env = __tmp__1;
                    };
                    _gotoNext = 376327i32;
                } else if (__value__ == (376284i32)) {
                    _gotoNext = 376284i32;
                    {
                        final __tmp__0 = (_env.__slice__(0, _i_376213) : stdgo.GoString)?.__copy__();
                        final __tmp__1 = (_env.__slice__((_i_376213 + (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        _field_376199 = __tmp__0;
                        _env = __tmp__1;
                    };
                    var __blank__ = 0i32;
                    _gotoNext = 376327i32;
                } else if (__value__ == (376327i32)) {
                    if ((((_field_376199.length) < (4 : stdgo.GoInt) : Bool) || ((_field_376199.__slice__(0, (4 : stdgo.GoInt)) : stdgo.GoString) != ("cpu." : stdgo.GoString)) : Bool)) {
                        _gotoNext = 376368i32;
                    } else {
                        _gotoNext = 376388i32;
                    };
                } else if (__value__ == (376368i32)) {
                    var __blank__ = 0i32;
                    _gotoNext = 376181i32;
                } else if (__value__ == (376388i32)) {
                    _i_376213 = stdgo._internal.internal.cpu.Cpu__indexByte._indexByte(_field_376199?.__copy__(), (61 : stdgo.GoUInt8));
                    if ((_i_376213 < (0 : stdgo.GoInt) : Bool)) {
                        _gotoNext = 376425i32;
                    } else {
                        _gotoNext = 376507i32;
                    };
                } else if (__value__ == (376425i32)) {
                    stdgo.Go.print(("GODEBUG: no value specified for \"" : stdgo.GoString), _field_376199, ("\"\n" : stdgo.GoString));
                    var __blank__ = 0i32;
                    _gotoNext = 376181i32;
                } else if (__value__ == (376507i32)) {
                    {
                        final __tmp__0 = (_field_376199.__slice__((4 : stdgo.GoInt), _i_376213) : stdgo.GoString)?.__copy__();
                        final __tmp__1 = (_field_376199.__slice__((_i_376213 + (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        _key_376507 = __tmp__0;
                        _value_376512 = __tmp__1;
                    };
                    _gotoNext = 376587i32;
                } else if (__value__ == (376587i32)) {
                    {
                        final __value__ = _value_376512;
                        if (__value__ == (("on" : stdgo.GoString))) {
                            _gotoNext = 376604i32;
                        } else if (__value__ == (("off" : stdgo.GoString))) {
                            _gotoNext = 376634i32;
                        } else {
                            _gotoNext = 376666i32;
                        };
                    };
                } else if (__value__ == (376604i32)) {
                    _enable_376573 = true;
                    _gotoNext = 376788i32;
                } else if (__value__ == (376634i32)) {
                    _enable_376573 = false;
                    _gotoNext = 376788i32;
                } else if (__value__ == (376666i32)) {
                    stdgo.Go.print(("GODEBUG: value \"" : stdgo.GoString), _value_376512, ("\" not supported for cpu option \"" : stdgo.GoString), _key_376507, ("\"\n" : stdgo.GoString));
                    _gotoNext = 376181i32;
                } else if (__value__ == (376788i32)) {
                    if (_key_376507 == (("all" : stdgo.GoString))) {
                        _gotoNext = 376804i32;
                    } else {
                        _gotoNext = 376927i32;
                    };
                } else if (__value__ == (376804i32)) {
                    if ((0i32 : stdgo.GoInt) < (stdgo._internal.internal.cpu.Cpu__options._options.length)) {
                        _gotoNext = 376899i32;
                    } else {
                        _gotoNext = 376905i32;
                    };
                } else if (__value__ == (376832i32)) {
                    stdgo._internal.internal.cpu.Cpu__options._options[(_i_376813 : stdgo.GoInt)].specified = true;
                    stdgo._internal.internal.cpu.Cpu__options._options[(_i_376813 : stdgo.GoInt)].enable = _enable_376573;
                    _i_376813++;
                    _gotoNext = 376900i32;
                } else if (__value__ == (376899i32)) {
                    _i_376813 = 0i32;
                    _gotoNext = 376900i32;
                } else if (__value__ == (376900i32)) {
                    if (_i_376813 < (stdgo._internal.internal.cpu.Cpu__options._options.length)) {
                        _gotoNext = 376832i32;
                    } else {
                        _gotoNext = 376905i32;
                    };
                } else if (__value__ == (376905i32)) {
                    _gotoNext = 376181i32;
                } else if (__value__ == (376927i32)) {
                    if ((0i32 : stdgo.GoInt) < (stdgo._internal.internal.cpu.Cpu__options._options.length)) {
                        _gotoNext = 377071i32;
                    } else {
                        _gotoNext = 377077i32;
                    };
                } else if (__value__ == (376931i32)) {
                    _i_376931++;
                    _gotoNext = 377072i32;
                } else if (__value__ == (376950i32)) {
                    if (stdgo._internal.internal.cpu.Cpu__options._options[(_i_376931 : stdgo.GoInt)].name == (_key_376507)) {
                        _gotoNext = 376981i32;
                    } else {
                        _gotoNext = 376931i32;
                    };
                } else if (__value__ == (376981i32)) {
                    stdgo._internal.internal.cpu.Cpu__options._options[(_i_376931 : stdgo.GoInt)].specified = true;
                    stdgo._internal.internal.cpu.Cpu__options._options[(_i_376931 : stdgo.GoInt)].enable = _enable_376573;
                    _gotoNext = 376181i32;
                } else if (__value__ == (377071i32)) {
                    _i_376931 = 0i32;
                    _gotoNext = 377072i32;
                } else if (__value__ == (377072i32)) {
                    if (_i_376931 < (stdgo._internal.internal.cpu.Cpu__options._options.length)) {
                        _gotoNext = 376950i32;
                    } else {
                        _gotoNext = 377077i32;
                    };
                } else if (__value__ == (377077i32)) {
                    stdgo.Go.print(("GODEBUG: unknown cpu feature \"" : stdgo.GoString), _key_376507, ("\"\n" : stdgo.GoString));
                    _gotoNext = 376181i32;
                } else if (__value__ == (377136i32)) {
                    if ((0i32 : stdgo.GoInt) < (stdgo._internal.internal.cpu.Cpu__options._options.length)) {
                        _gotoNext = 377349i32;
                    } else {
                        _gotoNext = 377352i32;
                    };
                } else if (__value__ == (377162i32)) {
                    _o_377143 = stdgo._internal.internal.cpu.Cpu__options._options[(_i_377148_0 : stdgo.GoInt)];
                    if (!_o_377143.specified) {
                        _gotoNext = 377182i32;
                    } else {
                        _gotoNext = 377203i32;
                    };
                } else if (__value__ == (377182i32)) {
                    _i_377148_0++;
                    _gotoNext = 377350i32;
                } else if (__value__ == (377203i32)) {
                    if ((_o_377143.enable && !_o_377143.feature.value : Bool)) {
                        _gotoNext = 377230i32;
                    } else {
                        _gotoNext = 377327i32;
                    };
                } else if (__value__ == (377230i32)) {
                    stdgo.Go.print(("GODEBUG: can not enable \"" : stdgo.GoString), _o_377143.name, ("\", missing CPU support\n" : stdgo.GoString));
                    _i_377148_0++;
                    _gotoNext = 377350i32;
                } else if (__value__ == (377327i32)) {
                    _o_377143.feature.value = _o_377143.enable;
                    _i_377148_0++;
                    _gotoNext = 377350i32;
                } else if (__value__ == (377349i32)) {
                    {
                        final __tmp__0 = 0i32;
                        final __tmp__1 = stdgo._internal.internal.cpu.Cpu__options._options[(0i32 : stdgo.GoInt)];
                        _i_377148_0 = __tmp__0;
                        _o_377143 = __tmp__1;
                    };
                    _gotoNext = 377350i32;
                } else if (__value__ == (377350i32)) {
                    if (_i_377148_0 < (stdgo._internal.internal.cpu.Cpu__options._options.length)) {
                        _gotoNext = 377162i32;
                    } else {
                        _gotoNext = 377352i32;
                    };
                } else if (__value__ == (377352i32)) {
                    _gotoNext = -1i32;
                };
            };
        };
    }
