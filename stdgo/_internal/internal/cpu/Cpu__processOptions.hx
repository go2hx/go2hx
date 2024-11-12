package stdgo._internal.internal.cpu;
function _processOptions(_env:stdgo.GoString):Void {
        var _i_250936:stdgo.GoInt = (0 : stdgo.GoInt);
        var _key_250512:stdgo.GoString = ("" : stdgo.GoString);
        var _field_250204:stdgo.GoString = ("" : stdgo.GoString);
        var _i_250818:stdgo.GoInt = (0 : stdgo.GoInt);
        var _enable_250578:Bool = false;
        var _value_250517:stdgo.GoString = ("" : stdgo.GoString);
        var _i_250218:stdgo.GoInt = (0 : stdgo.GoInt);
        var _fieldBreak = false;
        var _o_251148:stdgo._internal.internal.cpu.Cpu_T_option.T_option = ({} : stdgo._internal.internal.cpu.Cpu_T_option.T_option);
        var _i_251153_0:stdgo.GoInt = (0 : stdgo.GoInt);
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    _gotoNext = 250178i32;
                } else if (__value__ == (250178i32)) {
                    var __blank__ = 0i32;
                    _fieldBreak = false;
                    _gotoNext = 250186i32;
                } else if (__value__ == (250186i32)) {
                    if (!_fieldBreak && (_env != stdgo.Go.str())) {
                        _gotoNext = 250200i32;
                    } else {
                        _gotoNext = 251141i32;
                    };
                } else if (__value__ == (250200i32)) {
                    _field_250204 = stdgo.Go.str()?.__copy__();
                    _i_250218 = stdgo._internal.internal.cpu.Cpu__indexByte._indexByte(_env?.__copy__(), (44 : stdgo.GoUInt8));
                    if ((_i_250218 < (0 : stdgo.GoInt) : Bool)) {
                        _gotoNext = 250254i32;
                    } else {
                        _gotoNext = 250289i32;
                    };
                } else if (__value__ == (250254i32)) {
                    {
                        final __tmp__0 = _env?.__copy__();
                        final __tmp__1 = stdgo.Go.str()?.__copy__();
                        _field_250204 = __tmp__0;
                        _env = __tmp__1;
                    };
                    _gotoNext = 250332i32;
                } else if (__value__ == (250289i32)) {
                    _gotoNext = 250289i32;
                    {
                        final __tmp__0 = (_env.__slice__(0, _i_250218) : stdgo.GoString)?.__copy__();
                        final __tmp__1 = (_env.__slice__((_i_250218 + (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        _field_250204 = __tmp__0;
                        _env = __tmp__1;
                    };
                    var __blank__ = 0i32;
                    _gotoNext = 250332i32;
                } else if (__value__ == (250332i32)) {
                    if ((((_field_250204.length) < (4 : stdgo.GoInt) : Bool) || ((_field_250204.__slice__(0, (4 : stdgo.GoInt)) : stdgo.GoString) != ("cpu." : stdgo.GoString)) : Bool)) {
                        _gotoNext = 250373i32;
                    } else {
                        _gotoNext = 250393i32;
                    };
                } else if (__value__ == (250373i32)) {
                    var __blank__ = 0i32;
                    _gotoNext = 250186i32;
                } else if (__value__ == (250393i32)) {
                    _i_250218 = stdgo._internal.internal.cpu.Cpu__indexByte._indexByte(_field_250204?.__copy__(), (61 : stdgo.GoUInt8));
                    if ((_i_250218 < (0 : stdgo.GoInt) : Bool)) {
                        _gotoNext = 250430i32;
                    } else {
                        _gotoNext = 250512i32;
                    };
                } else if (__value__ == (250430i32)) {
                    stdgo.Go.print(("GODEBUG: no value specified for \"" : stdgo.GoString), _field_250204, ("\"\n" : stdgo.GoString));
                    var __blank__ = 0i32;
                    _gotoNext = 250186i32;
                } else if (__value__ == (250512i32)) {
                    {
                        final __tmp__0 = (_field_250204.__slice__((4 : stdgo.GoInt), _i_250218) : stdgo.GoString)?.__copy__();
                        final __tmp__1 = (_field_250204.__slice__((_i_250218 + (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        _key_250512 = __tmp__0;
                        _value_250517 = __tmp__1;
                    };
                    _gotoNext = 250592i32;
                } else if (__value__ == (250592i32)) {
                    {
                        final __value__ = _value_250517;
                        if (__value__ == (("on" : stdgo.GoString))) {
                            _gotoNext = 250609i32;
                        } else if (__value__ == (("off" : stdgo.GoString))) {
                            _gotoNext = 250639i32;
                        } else {
                            _gotoNext = 250671i32;
                        };
                    };
                } else if (__value__ == (250609i32)) {
                    _enable_250578 = true;
                    _gotoNext = 250793i32;
                } else if (__value__ == (250639i32)) {
                    _enable_250578 = false;
                    _gotoNext = 250793i32;
                } else if (__value__ == (250671i32)) {
                    stdgo.Go.print(("GODEBUG: value \"" : stdgo.GoString), _value_250517, ("\" not supported for cpu option \"" : stdgo.GoString), _key_250512, ("\"\n" : stdgo.GoString));
                    _gotoNext = 250186i32;
                } else if (__value__ == (250793i32)) {
                    if (_key_250512 == (("all" : stdgo.GoString))) {
                        _gotoNext = 250809i32;
                    } else {
                        _gotoNext = 250932i32;
                    };
                } else if (__value__ == (250809i32)) {
                    if ((0i32 : stdgo.GoInt) < (stdgo._internal.internal.cpu.Cpu__options._options.length)) {
                        _gotoNext = 250904i32;
                    } else {
                        _gotoNext = 250910i32;
                    };
                } else if (__value__ == (250837i32)) {
                    stdgo._internal.internal.cpu.Cpu__options._options[(_i_250818 : stdgo.GoInt)].specified = true;
                    stdgo._internal.internal.cpu.Cpu__options._options[(_i_250818 : stdgo.GoInt)].enable = _enable_250578;
                    _i_250818++;
                    _gotoNext = 250905i32;
                } else if (__value__ == (250904i32)) {
                    _i_250818 = 0i32;
                    _gotoNext = 250905i32;
                } else if (__value__ == (250905i32)) {
                    if (_i_250818 < (stdgo._internal.internal.cpu.Cpu__options._options.length)) {
                        _gotoNext = 250837i32;
                    } else {
                        _gotoNext = 250910i32;
                    };
                } else if (__value__ == (250910i32)) {
                    _gotoNext = 250186i32;
                } else if (__value__ == (250932i32)) {
                    if ((0i32 : stdgo.GoInt) < (stdgo._internal.internal.cpu.Cpu__options._options.length)) {
                        _gotoNext = 251076i32;
                    } else {
                        _gotoNext = 251082i32;
                    };
                } else if (__value__ == (250936i32)) {
                    _i_250936++;
                    _gotoNext = 251077i32;
                } else if (__value__ == (250955i32)) {
                    if (stdgo._internal.internal.cpu.Cpu__options._options[(_i_250936 : stdgo.GoInt)].name == (_key_250512)) {
                        _gotoNext = 250986i32;
                    } else {
                        _gotoNext = 250936i32;
                    };
                } else if (__value__ == (250986i32)) {
                    stdgo._internal.internal.cpu.Cpu__options._options[(_i_250936 : stdgo.GoInt)].specified = true;
                    stdgo._internal.internal.cpu.Cpu__options._options[(_i_250936 : stdgo.GoInt)].enable = _enable_250578;
                    _gotoNext = 250186i32;
                } else if (__value__ == (251076i32)) {
                    _i_250936 = 0i32;
                    _gotoNext = 251077i32;
                } else if (__value__ == (251077i32)) {
                    if (_i_250936 < (stdgo._internal.internal.cpu.Cpu__options._options.length)) {
                        _gotoNext = 250955i32;
                    } else {
                        _gotoNext = 251082i32;
                    };
                } else if (__value__ == (251082i32)) {
                    stdgo.Go.print(("GODEBUG: unknown cpu feature \"" : stdgo.GoString), _key_250512, ("\"\n" : stdgo.GoString));
                    _gotoNext = 250186i32;
                } else if (__value__ == (251141i32)) {
                    if ((0i32 : stdgo.GoInt) < (stdgo._internal.internal.cpu.Cpu__options._options.length)) {
                        _gotoNext = 251354i32;
                    } else {
                        _gotoNext = 251357i32;
                    };
                } else if (__value__ == (251167i32)) {
                    _o_251148 = stdgo._internal.internal.cpu.Cpu__options._options[(_i_251153_0 : stdgo.GoInt)];
                    if (!_o_251148.specified) {
                        _gotoNext = 251187i32;
                    } else {
                        _gotoNext = 251208i32;
                    };
                } else if (__value__ == (251187i32)) {
                    _i_251153_0++;
                    _gotoNext = 251355i32;
                } else if (__value__ == (251208i32)) {
                    if ((_o_251148.enable && !_o_251148.feature.value : Bool)) {
                        _gotoNext = 251235i32;
                    } else {
                        _gotoNext = 251332i32;
                    };
                } else if (__value__ == (251235i32)) {
                    stdgo.Go.print(("GODEBUG: can not enable \"" : stdgo.GoString), _o_251148.name, ("\", missing CPU support\n" : stdgo.GoString));
                    _i_251153_0++;
                    _gotoNext = 251355i32;
                } else if (__value__ == (251332i32)) {
                    _o_251148.feature.value = _o_251148.enable;
                    _i_251153_0++;
                    _gotoNext = 251355i32;
                } else if (__value__ == (251354i32)) {
                    {
                        final __tmp__0 = 0i32;
                        final __tmp__1 = stdgo._internal.internal.cpu.Cpu__options._options[(0i32 : stdgo.GoInt)];
                        _i_251153_0 = __tmp__0;
                        _o_251148 = __tmp__1;
                    };
                    _gotoNext = 251355i32;
                } else if (__value__ == (251355i32)) {
                    if (_i_251153_0 < (stdgo._internal.internal.cpu.Cpu__options._options.length)) {
                        _gotoNext = 251167i32;
                    } else {
                        _gotoNext = 251357i32;
                    };
                } else if (__value__ == (251357i32)) {
                    _gotoNext = -1i32;
                };
            };
        };
    }
