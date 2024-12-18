package stdgo._internal.internal.cpu;
function _processOptions(_env:stdgo.GoString):Void {
        var _fieldBreak = false;
        var _i_15950_0:stdgo.GoInt = (0 : stdgo.GoInt);
        var _i_15733:stdgo.GoInt = (0 : stdgo.GoInt);
        var _i_15015:stdgo.GoInt = (0 : stdgo.GoInt);
        var _field_15001:stdgo.GoString = ("" : stdgo.GoString);
        var _key_15309:stdgo.GoString = ("" : stdgo.GoString);
        var _o_15945:stdgo._internal.internal.cpu.Cpu_T_option.T_option = ({} : stdgo._internal.internal.cpu.Cpu_T_option.T_option);
        var _i_15615:stdgo.GoInt = (0 : stdgo.GoInt);
        var _enable_15375:Bool = false;
        var _value_15314:stdgo.GoString = ("" : stdgo.GoString);
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    _gotoNext = 14975i32;
                } else if (__value__ == (14975i32)) {
                    var __blank__ = 0i32;
                    _fieldBreak = false;
                    _gotoNext = 14983i32;
                } else if (__value__ == (14983i32)) {
                    if (!_fieldBreak && (_env != stdgo.Go.str())) {
                        _gotoNext = 14997i32;
                    } else {
                        _gotoNext = 15938i32;
                    };
                } else if (__value__ == (14997i32)) {
                    _field_15001 = stdgo.Go.str()?.__copy__();
                    _i_15015 = stdgo._internal.internal.cpu.Cpu__indexByte._indexByte(_env?.__copy__(), (44 : stdgo.GoUInt8));
                    if ((_i_15015 < (0 : stdgo.GoInt) : Bool)) {
                        _gotoNext = 15051i32;
                    } else {
                        _gotoNext = 15086i32;
                    };
                } else if (__value__ == (15051i32)) {
                    {
                        final __tmp__0 = _env?.__copy__();
                        final __tmp__1 = stdgo.Go.str()?.__copy__();
                        _field_15001 = __tmp__0;
                        _env = __tmp__1;
                    };
                    _gotoNext = 15129i32;
                } else if (__value__ == (15086i32)) {
                    _gotoNext = 15086i32;
                    {
                        final __tmp__0 = (_env.__slice__(0, _i_15015) : stdgo.GoString)?.__copy__();
                        final __tmp__1 = (_env.__slice__((_i_15015 + (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        _field_15001 = __tmp__0;
                        _env = __tmp__1;
                    };
                    var __blank__ = 0i32;
                    _gotoNext = 15129i32;
                } else if (__value__ == (15129i32)) {
                    if ((((_field_15001.length) < (4 : stdgo.GoInt) : Bool) || ((_field_15001.__slice__(0, (4 : stdgo.GoInt)) : stdgo.GoString) != ("cpu." : stdgo.GoString)) : Bool)) {
                        _gotoNext = 15170i32;
                    } else {
                        _gotoNext = 15190i32;
                    };
                } else if (__value__ == (15170i32)) {
                    var __blank__ = 0i32;
                    _gotoNext = 14983i32;
                } else if (__value__ == (15190i32)) {
                    _i_15015 = stdgo._internal.internal.cpu.Cpu__indexByte._indexByte(_field_15001?.__copy__(), (61 : stdgo.GoUInt8));
                    if ((_i_15015 < (0 : stdgo.GoInt) : Bool)) {
                        _gotoNext = 15227i32;
                    } else {
                        _gotoNext = 15309i32;
                    };
                } else if (__value__ == (15227i32)) {
                    stdgo.Go.print(("GODEBUG: no value specified for \"" : stdgo.GoString), _field_15001, ("\"\n" : stdgo.GoString));
                    var __blank__ = 0i32;
                    _gotoNext = 14983i32;
                } else if (__value__ == (15309i32)) {
                    {
                        final __tmp__0 = (_field_15001.__slice__((4 : stdgo.GoInt), _i_15015) : stdgo.GoString)?.__copy__();
                        final __tmp__1 = (_field_15001.__slice__((_i_15015 + (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        _key_15309 = __tmp__0;
                        _value_15314 = __tmp__1;
                    };
                    _gotoNext = 15389i32;
                } else if (__value__ == (15389i32)) {
                    {
                        final __value__ = _value_15314;
                        if (__value__ == (("on" : stdgo.GoString))) {
                            _gotoNext = 15406i32;
                        } else if (__value__ == (("off" : stdgo.GoString))) {
                            _gotoNext = 15436i32;
                        } else {
                            _gotoNext = 15468i32;
                        };
                    };
                } else if (__value__ == (15406i32)) {
                    _enable_15375 = true;
                    _gotoNext = 15590i32;
                } else if (__value__ == (15436i32)) {
                    _enable_15375 = false;
                    _gotoNext = 15590i32;
                } else if (__value__ == (15468i32)) {
                    stdgo.Go.print(("GODEBUG: value \"" : stdgo.GoString), _value_15314, ("\" not supported for cpu option \"" : stdgo.GoString), _key_15309, ("\"\n" : stdgo.GoString));
                    _gotoNext = 14983i32;
                } else if (__value__ == (15590i32)) {
                    if (_key_15309 == (("all" : stdgo.GoString))) {
                        _gotoNext = 15606i32;
                    } else {
                        _gotoNext = 15729i32;
                    };
                } else if (__value__ == (15606i32)) {
                    if ((0i32 : stdgo.GoInt) < (stdgo._internal.internal.cpu.Cpu__options._options.length)) {
                        _gotoNext = 15701i32;
                    } else {
                        _gotoNext = 15707i32;
                    };
                } else if (__value__ == (15634i32)) {
                    stdgo._internal.internal.cpu.Cpu__options._options[(_i_15615 : stdgo.GoInt)].specified = true;
                    stdgo._internal.internal.cpu.Cpu__options._options[(_i_15615 : stdgo.GoInt)].enable = _enable_15375;
                    _i_15615++;
                    _gotoNext = 15702i32;
                } else if (__value__ == (15701i32)) {
                    _i_15615 = 0i32;
                    _gotoNext = 15702i32;
                } else if (__value__ == (15702i32)) {
                    if (_i_15615 < (stdgo._internal.internal.cpu.Cpu__options._options.length)) {
                        _gotoNext = 15634i32;
                    } else {
                        _gotoNext = 15707i32;
                    };
                } else if (__value__ == (15707i32)) {
                    _gotoNext = 14983i32;
                } else if (__value__ == (15729i32)) {
                    if ((0i32 : stdgo.GoInt) < (stdgo._internal.internal.cpu.Cpu__options._options.length)) {
                        _gotoNext = 15873i32;
                    } else {
                        _gotoNext = 15879i32;
                    };
                } else if (__value__ == (15733i32)) {
                    _i_15733++;
                    _gotoNext = 15874i32;
                } else if (__value__ == (15752i32)) {
                    if (stdgo._internal.internal.cpu.Cpu__options._options[(_i_15733 : stdgo.GoInt)].name == (_key_15309)) {
                        _gotoNext = 15783i32;
                    } else {
                        _gotoNext = 15733i32;
                    };
                } else if (__value__ == (15783i32)) {
                    stdgo._internal.internal.cpu.Cpu__options._options[(_i_15733 : stdgo.GoInt)].specified = true;
                    stdgo._internal.internal.cpu.Cpu__options._options[(_i_15733 : stdgo.GoInt)].enable = _enable_15375;
                    _gotoNext = 14983i32;
                } else if (__value__ == (15873i32)) {
                    _i_15733 = 0i32;
                    _gotoNext = 15874i32;
                } else if (__value__ == (15874i32)) {
                    if (_i_15733 < (stdgo._internal.internal.cpu.Cpu__options._options.length)) {
                        _gotoNext = 15752i32;
                    } else {
                        _gotoNext = 15879i32;
                    };
                } else if (__value__ == (15879i32)) {
                    stdgo.Go.print(("GODEBUG: unknown cpu feature \"" : stdgo.GoString), _key_15309, ("\"\n" : stdgo.GoString));
                    _gotoNext = 14983i32;
                } else if (__value__ == (15938i32)) {
                    if ((0i32 : stdgo.GoInt) < (stdgo._internal.internal.cpu.Cpu__options._options.length)) {
                        _gotoNext = 16151i32;
                    } else {
                        _gotoNext = 16154i32;
                    };
                } else if (__value__ == (15964i32)) {
                    _o_15945 = stdgo._internal.internal.cpu.Cpu__options._options[(_i_15950_0 : stdgo.GoInt)];
                    if (!_o_15945.specified) {
                        _gotoNext = 15984i32;
                    } else {
                        _gotoNext = 16005i32;
                    };
                } else if (__value__ == (15984i32)) {
                    _i_15950_0++;
                    _gotoNext = 16152i32;
                } else if (__value__ == (16005i32)) {
                    if ((_o_15945.enable && !_o_15945.feature.value : Bool)) {
                        _gotoNext = 16032i32;
                    } else {
                        _gotoNext = 16129i32;
                    };
                } else if (__value__ == (16032i32)) {
                    stdgo.Go.print(("GODEBUG: can not enable \"" : stdgo.GoString), _o_15945.name, ("\", missing CPU support\n" : stdgo.GoString));
                    _i_15950_0++;
                    _gotoNext = 16152i32;
                } else if (__value__ == (16129i32)) {
                    _o_15945.feature.value = _o_15945.enable;
                    _i_15950_0++;
                    _gotoNext = 16152i32;
                } else if (__value__ == (16151i32)) {
                    {
                        final __tmp__0 = 0i32;
                        final __tmp__1 = stdgo._internal.internal.cpu.Cpu__options._options[(0i32 : stdgo.GoInt)];
                        _i_15950_0 = __tmp__0;
                        _o_15945 = __tmp__1;
                    };
                    _gotoNext = 16152i32;
                } else if (__value__ == (16152i32)) {
                    if (_i_15950_0 < (stdgo._internal.internal.cpu.Cpu__options._options.length)) {
                        _gotoNext = 15964i32;
                    } else {
                        _gotoNext = 16154i32;
                    };
                } else if (__value__ == (16154i32)) {
                    _gotoNext = -1i32;
                };
            };
        };
    }
