package stdgo._internal.internal.cpu;
function _processOptions(_env:stdgo.GoString):Void {
        var _i_29577:stdgo.GoInt = (0 : stdgo.GoInt);
        var _field_29563:stdgo.GoString = ("" : stdgo.GoString);
        var _i_30177:stdgo.GoInt = (0 : stdgo.GoInt);
        var _enable_29937:Bool = false;
        var _value_29876:stdgo.GoString = ("" : stdgo.GoString);
        var _key_29871:stdgo.GoString = ("" : stdgo.GoString);
        var _i_30295:stdgo.GoInt = (0 : stdgo.GoInt);
        var _fieldBreak = false;
        var _o_30507:stdgo._internal.internal.cpu.Cpu_T_option.T_option = ({} : stdgo._internal.internal.cpu.Cpu_T_option.T_option);
        var _i_30512_0:stdgo.GoInt = (0 : stdgo.GoInt);
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    _gotoNext = 29537i32;
                } else if (__value__ == (29537i32)) {
                    var __blank__ = 0i32;
                    _fieldBreak = false;
                    _gotoNext = 29545i32;
                } else if (__value__ == (29545i32)) {
                    if (!_fieldBreak && (_env != stdgo.Go.str())) {
                        _gotoNext = 29559i32;
                    } else {
                        _gotoNext = 30500i32;
                    };
                } else if (__value__ == (29559i32)) {
                    _field_29563 = stdgo.Go.str()?.__copy__();
                    _i_29577 = stdgo._internal.internal.cpu.Cpu__indexByte._indexByte(_env?.__copy__(), (44 : stdgo.GoUInt8));
                    if ((_i_29577 < (0 : stdgo.GoInt) : Bool)) {
                        _gotoNext = 29613i32;
                    } else {
                        _gotoNext = 29648i32;
                    };
                } else if (__value__ == (29613i32)) {
                    {
                        final __tmp__0 = _env?.__copy__();
                        final __tmp__1 = stdgo.Go.str()?.__copy__();
                        _field_29563 = __tmp__0;
                        _env = __tmp__1;
                    };
                    _gotoNext = 29691i32;
                } else if (__value__ == (29648i32)) {
                    _gotoNext = 29648i32;
                    {
                        final __tmp__0 = (_env.__slice__(0, _i_29577) : stdgo.GoString)?.__copy__();
                        final __tmp__1 = (_env.__slice__((_i_29577 + (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        _field_29563 = __tmp__0;
                        _env = __tmp__1;
                    };
                    var __blank__ = 0i32;
                    _gotoNext = 29691i32;
                } else if (__value__ == (29691i32)) {
                    if ((((_field_29563.length) < (4 : stdgo.GoInt) : Bool) || ((_field_29563.__slice__(0, (4 : stdgo.GoInt)) : stdgo.GoString) != ("cpu." : stdgo.GoString)) : Bool)) {
                        _gotoNext = 29732i32;
                    } else {
                        _gotoNext = 29752i32;
                    };
                } else if (__value__ == (29732i32)) {
                    var __blank__ = 0i32;
                    _gotoNext = 29545i32;
                } else if (__value__ == (29752i32)) {
                    _i_29577 = stdgo._internal.internal.cpu.Cpu__indexByte._indexByte(_field_29563?.__copy__(), (61 : stdgo.GoUInt8));
                    if ((_i_29577 < (0 : stdgo.GoInt) : Bool)) {
                        _gotoNext = 29789i32;
                    } else {
                        _gotoNext = 29871i32;
                    };
                } else if (__value__ == (29789i32)) {
                    stdgo.Go.print(("GODEBUG: no value specified for \"" : stdgo.GoString), _field_29563, ("\"\n" : stdgo.GoString));
                    var __blank__ = 0i32;
                    _gotoNext = 29545i32;
                } else if (__value__ == (29871i32)) {
                    {
                        final __tmp__0 = (_field_29563.__slice__((4 : stdgo.GoInt), _i_29577) : stdgo.GoString)?.__copy__();
                        final __tmp__1 = (_field_29563.__slice__((_i_29577 + (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        _key_29871 = __tmp__0;
                        _value_29876 = __tmp__1;
                    };
                    _gotoNext = 29951i32;
                } else if (__value__ == (29951i32)) {
                    {
                        final __value__ = _value_29876;
                        if (__value__ == (("on" : stdgo.GoString))) {
                            _gotoNext = 29968i32;
                        } else if (__value__ == (("off" : stdgo.GoString))) {
                            _gotoNext = 29998i32;
                        } else {
                            _gotoNext = 30030i32;
                        };
                    };
                } else if (__value__ == (29968i32)) {
                    _enable_29937 = true;
                    _gotoNext = 30152i32;
                } else if (__value__ == (29998i32)) {
                    _enable_29937 = false;
                    _gotoNext = 30152i32;
                } else if (__value__ == (30030i32)) {
                    stdgo.Go.print(("GODEBUG: value \"" : stdgo.GoString), _value_29876, ("\" not supported for cpu option \"" : stdgo.GoString), _key_29871, ("\"\n" : stdgo.GoString));
                    _gotoNext = 29545i32;
                } else if (__value__ == (30152i32)) {
                    if (_key_29871 == (("all" : stdgo.GoString))) {
                        _gotoNext = 30168i32;
                    } else {
                        _gotoNext = 30291i32;
                    };
                } else if (__value__ == (30168i32)) {
                    if ((0i32 : stdgo.GoInt) < (stdgo._internal.internal.cpu.Cpu__options._options.length)) {
                        _gotoNext = 30263i32;
                    } else {
                        _gotoNext = 30269i32;
                    };
                } else if (__value__ == (30196i32)) {
                    stdgo._internal.internal.cpu.Cpu__options._options[(_i_30177 : stdgo.GoInt)].specified = true;
                    stdgo._internal.internal.cpu.Cpu__options._options[(_i_30177 : stdgo.GoInt)].enable = _enable_29937;
                    _i_30177++;
                    _gotoNext = 30264i32;
                } else if (__value__ == (30263i32)) {
                    _i_30177 = 0i32;
                    _gotoNext = 30264i32;
                } else if (__value__ == (30264i32)) {
                    if (_i_30177 < (stdgo._internal.internal.cpu.Cpu__options._options.length)) {
                        _gotoNext = 30196i32;
                    } else {
                        _gotoNext = 30269i32;
                    };
                } else if (__value__ == (30269i32)) {
                    _gotoNext = 29545i32;
                } else if (__value__ == (30291i32)) {
                    if ((0i32 : stdgo.GoInt) < (stdgo._internal.internal.cpu.Cpu__options._options.length)) {
                        _gotoNext = 30435i32;
                    } else {
                        _gotoNext = 30441i32;
                    };
                } else if (__value__ == (30295i32)) {
                    _i_30295++;
                    _gotoNext = 30436i32;
                } else if (__value__ == (30314i32)) {
                    if (stdgo._internal.internal.cpu.Cpu__options._options[(_i_30295 : stdgo.GoInt)].name == (_key_29871)) {
                        _gotoNext = 30345i32;
                    } else {
                        _gotoNext = 30295i32;
                    };
                } else if (__value__ == (30345i32)) {
                    stdgo._internal.internal.cpu.Cpu__options._options[(_i_30295 : stdgo.GoInt)].specified = true;
                    stdgo._internal.internal.cpu.Cpu__options._options[(_i_30295 : stdgo.GoInt)].enable = _enable_29937;
                    _gotoNext = 29545i32;
                } else if (__value__ == (30435i32)) {
                    _i_30295 = 0i32;
                    _gotoNext = 30436i32;
                } else if (__value__ == (30436i32)) {
                    if (_i_30295 < (stdgo._internal.internal.cpu.Cpu__options._options.length)) {
                        _gotoNext = 30314i32;
                    } else {
                        _gotoNext = 30441i32;
                    };
                } else if (__value__ == (30441i32)) {
                    stdgo.Go.print(("GODEBUG: unknown cpu feature \"" : stdgo.GoString), _key_29871, ("\"\n" : stdgo.GoString));
                    _gotoNext = 29545i32;
                } else if (__value__ == (30500i32)) {
                    if ((0i32 : stdgo.GoInt) < (stdgo._internal.internal.cpu.Cpu__options._options.length)) {
                        _gotoNext = 30713i32;
                    } else {
                        _gotoNext = 30716i32;
                    };
                } else if (__value__ == (30526i32)) {
                    _o_30507 = stdgo._internal.internal.cpu.Cpu__options._options[(_i_30512_0 : stdgo.GoInt)];
                    if (!_o_30507.specified) {
                        _gotoNext = 30546i32;
                    } else {
                        _gotoNext = 30567i32;
                    };
                } else if (__value__ == (30546i32)) {
                    _i_30512_0++;
                    _gotoNext = 30714i32;
                } else if (__value__ == (30567i32)) {
                    if ((_o_30507.enable && !_o_30507.feature.value : Bool)) {
                        _gotoNext = 30594i32;
                    } else {
                        _gotoNext = 30691i32;
                    };
                } else if (__value__ == (30594i32)) {
                    stdgo.Go.print(("GODEBUG: can not enable \"" : stdgo.GoString), _o_30507.name, ("\", missing CPU support\n" : stdgo.GoString));
                    _i_30512_0++;
                    _gotoNext = 30714i32;
                } else if (__value__ == (30691i32)) {
                    _o_30507.feature.value = _o_30507.enable;
                    _i_30512_0++;
                    _gotoNext = 30714i32;
                } else if (__value__ == (30713i32)) {
                    {
                        final __tmp__0 = 0i32;
                        final __tmp__1 = stdgo._internal.internal.cpu.Cpu__options._options[(0i32 : stdgo.GoInt)];
                        _i_30512_0 = __tmp__0;
                        _o_30507 = __tmp__1;
                    };
                    _gotoNext = 30714i32;
                } else if (__value__ == (30714i32)) {
                    if (_i_30512_0 < (stdgo._internal.internal.cpu.Cpu__options._options.length)) {
                        _gotoNext = 30526i32;
                    } else {
                        _gotoNext = 30716i32;
                    };
                } else if (__value__ == (30716i32)) {
                    _gotoNext = -1i32;
                };
            };
        };
    }
