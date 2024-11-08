package stdgo._internal.internal.cpu;
function _processOptions(_env:stdgo.GoString):Void {
        var _i_250996_0:stdgo.GoInt = (0 : stdgo.GoInt);
        var _i_250661:stdgo.GoInt = (0 : stdgo.GoInt);
        var _field_250047:stdgo.GoString = ("" : stdgo.GoString);
        var _enable_250421:Bool = false;
        var _value_250360:stdgo.GoString = ("" : stdgo.GoString);
        var _key_250355:stdgo.GoString = ("" : stdgo.GoString);
        var _i_250061:stdgo.GoInt = (0 : stdgo.GoInt);
        var _fieldBreak = false;
        var _o_250991:stdgo._internal.internal.cpu.Cpu_T_option.T_option = ({} : stdgo._internal.internal.cpu.Cpu_T_option.T_option);
        var _i_250779:stdgo.GoInt = (0 : stdgo.GoInt);
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    _gotoNext = 250021i32;
                } else if (__value__ == (250021i32)) {
                    var __blank__ = 0i32;
                    _fieldBreak = false;
                    _gotoNext = 250029i32;
                } else if (__value__ == (250029i32)) {
                    if (!_fieldBreak && (_env != stdgo.Go.str())) {
                        _gotoNext = 250043i32;
                    } else {
                        _gotoNext = 250984i32;
                    };
                } else if (__value__ == (250043i32)) {
                    _field_250047 = stdgo.Go.str()?.__copy__();
                    _i_250061 = stdgo._internal.internal.cpu.Cpu__indexByte._indexByte(_env?.__copy__(), (44 : stdgo.GoUInt8));
                    if ((_i_250061 < (0 : stdgo.GoInt) : Bool)) {
                        _gotoNext = 250097i32;
                    } else {
                        _gotoNext = 250132i32;
                    };
                } else if (__value__ == (250097i32)) {
                    {
                        final __tmp__0 = _env?.__copy__();
                        final __tmp__1 = stdgo.Go.str()?.__copy__();
                        _field_250047 = __tmp__0;
                        _env = __tmp__1;
                    };
                    _gotoNext = 250175i32;
                } else if (__value__ == (250132i32)) {
                    {
                        final __tmp__0 = (_env.__slice__(0, _i_250061) : stdgo.GoString)?.__copy__();
                        final __tmp__1 = (_env.__slice__((_i_250061 + (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        _field_250047 = __tmp__0;
                        _env = __tmp__1;
                    };
                    _gotoNext = 250175i32;
                } else if (__value__ == (250175i32)) {
                    if ((((_field_250047.length) < (4 : stdgo.GoInt) : Bool) || ((_field_250047.__slice__(0, (4 : stdgo.GoInt)) : stdgo.GoString) != ("cpu." : stdgo.GoString)) : Bool)) {
                        _gotoNext = 250216i32;
                    } else {
                        _gotoNext = 250236i32;
                    };
                } else if (__value__ == (250216i32)) {
                    var __blank__ = 0i32;
                    _gotoNext = 250029i32;
                } else if (__value__ == (250236i32)) {
                    _i_250061 = stdgo._internal.internal.cpu.Cpu__indexByte._indexByte(_field_250047?.__copy__(), (61 : stdgo.GoUInt8));
                    if ((_i_250061 < (0 : stdgo.GoInt) : Bool)) {
                        _gotoNext = 250273i32;
                    } else {
                        _gotoNext = 250355i32;
                    };
                } else if (__value__ == (250273i32)) {
                    stdgo.Go.print(("GODEBUG: no value specified for \"" : stdgo.GoString), _field_250047, ("\"\n" : stdgo.GoString));
                    var __blank__ = 0i32;
                    _gotoNext = 250029i32;
                } else if (__value__ == (250355i32)) {
                    {
                        final __tmp__0 = (_field_250047.__slice__((4 : stdgo.GoInt), _i_250061) : stdgo.GoString)?.__copy__();
                        final __tmp__1 = (_field_250047.__slice__((_i_250061 + (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        _key_250355 = __tmp__0;
                        _value_250360 = __tmp__1;
                    };
                    var __blank__ = 0i32;
                    _gotoNext = 250435i32;
                } else if (__value__ == (250435i32)) {
                    {
                        final __value__ = _value_250360;
                        if (__value__ == (("on" : stdgo.GoString))) {
                            _gotoNext = 250452i32;
                        } else if (__value__ == (("off" : stdgo.GoString))) {
                            _gotoNext = 250482i32;
                        } else {
                            _gotoNext = 250514i32;
                        };
                    };
                } else if (__value__ == (250452i32)) {
                    _enable_250421 = true;
                    _gotoNext = 250636i32;
                } else if (__value__ == (250482i32)) {
                    _enable_250421 = false;
                    _gotoNext = 250636i32;
                } else if (__value__ == (250514i32)) {
                    stdgo.Go.print(("GODEBUG: value \"" : stdgo.GoString), _value_250360, ("\" not supported for cpu option \"" : stdgo.GoString), _key_250355, ("\"\n" : stdgo.GoString));
                    _gotoNext = 250029i32;
                } else if (__value__ == (250636i32)) {
                    if (_key_250355 == (("all" : stdgo.GoString))) {
                        _gotoNext = 250652i32;
                    } else {
                        _gotoNext = 250775i32;
                    };
                } else if (__value__ == (250652i32)) {
                    if ((0i32 : stdgo.GoInt) < (stdgo._internal.internal.cpu.Cpu__options._options.length)) {
                        _gotoNext = 250747i32;
                    } else {
                        _gotoNext = 250753i32;
                    };
                } else if (__value__ == (250680i32)) {
                    stdgo._internal.internal.cpu.Cpu__options._options[(_i_250661 : stdgo.GoInt)].specified = true;
                    stdgo._internal.internal.cpu.Cpu__options._options[(_i_250661 : stdgo.GoInt)].enable = _enable_250421;
                    _i_250661++;
                    _gotoNext = 250748i32;
                } else if (__value__ == (250747i32)) {
                    _i_250661 = 0i32;
                    _gotoNext = 250748i32;
                } else if (__value__ == (250748i32)) {
                    if (_i_250661 < (stdgo._internal.internal.cpu.Cpu__options._options.length)) {
                        _gotoNext = 250680i32;
                    } else {
                        _gotoNext = 250753i32;
                    };
                } else if (__value__ == (250753i32)) {
                    _gotoNext = 250029i32;
                } else if (__value__ == (250775i32)) {
                    if ((0i32 : stdgo.GoInt) < (stdgo._internal.internal.cpu.Cpu__options._options.length)) {
                        _gotoNext = 250919i32;
                    } else {
                        _gotoNext = 250925i32;
                    };
                } else if (__value__ == (250779i32)) {
                    _i_250779++;
                    _gotoNext = 250920i32;
                } else if (__value__ == (250798i32)) {
                    if (stdgo._internal.internal.cpu.Cpu__options._options[(_i_250779 : stdgo.GoInt)].name == (_key_250355)) {
                        _gotoNext = 250829i32;
                    } else {
                        _gotoNext = 250779i32;
                    };
                } else if (__value__ == (250829i32)) {
                    stdgo._internal.internal.cpu.Cpu__options._options[(_i_250779 : stdgo.GoInt)].specified = true;
                    stdgo._internal.internal.cpu.Cpu__options._options[(_i_250779 : stdgo.GoInt)].enable = _enable_250421;
                    _gotoNext = 250029i32;
                } else if (__value__ == (250919i32)) {
                    _i_250779 = 0i32;
                    _gotoNext = 250920i32;
                } else if (__value__ == (250920i32)) {
                    if (_i_250779 < (stdgo._internal.internal.cpu.Cpu__options._options.length)) {
                        _gotoNext = 250798i32;
                    } else {
                        _gotoNext = 250925i32;
                    };
                } else if (__value__ == (250925i32)) {
                    stdgo.Go.print(("GODEBUG: unknown cpu feature \"" : stdgo.GoString), _key_250355, ("\"\n" : stdgo.GoString));
                    _gotoNext = 250029i32;
                } else if (__value__ == (250984i32)) {
                    if ((0i32 : stdgo.GoInt) < (stdgo._internal.internal.cpu.Cpu__options._options.length)) {
                        _gotoNext = 251197i32;
                    } else {
                        _gotoNext = 251200i32;
                    };
                } else if (__value__ == (251010i32)) {
                    _o_250991 = stdgo._internal.internal.cpu.Cpu__options._options[(_i_250996_0 : stdgo.GoInt)];
                    if (!_o_250991.specified) {
                        _gotoNext = 251030i32;
                    } else {
                        _gotoNext = 251051i32;
                    };
                } else if (__value__ == (251030i32)) {
                    _i_250996_0++;
                    _gotoNext = 251198i32;
                } else if (__value__ == (251051i32)) {
                    if ((_o_250991.enable && !_o_250991.feature.value : Bool)) {
                        _gotoNext = 251078i32;
                    } else {
                        _gotoNext = 251175i32;
                    };
                } else if (__value__ == (251078i32)) {
                    stdgo.Go.print(("GODEBUG: can not enable \"" : stdgo.GoString), _o_250991.name, ("\", missing CPU support\n" : stdgo.GoString));
                    _i_250996_0++;
                    _gotoNext = 251198i32;
                } else if (__value__ == (251175i32)) {
                    _o_250991.feature.value = _o_250991.enable;
                    _i_250996_0++;
                    _gotoNext = 251198i32;
                } else if (__value__ == (251197i32)) {
                    {
                        final __tmp__0 = 0i32;
                        final __tmp__1 = stdgo._internal.internal.cpu.Cpu__options._options[(0i32 : stdgo.GoInt)];
                        _i_250996_0 = __tmp__0;
                        _o_250991 = __tmp__1;
                    };
                    _gotoNext = 251198i32;
                } else if (__value__ == (251198i32)) {
                    if (_i_250996_0 < (stdgo._internal.internal.cpu.Cpu__options._options.length)) {
                        _gotoNext = 251010i32;
                    } else {
                        _gotoNext = 251200i32;
                    };
                } else if (__value__ == (251200i32)) {
                    _gotoNext = -1i32;
                };
            };
        };
    }
