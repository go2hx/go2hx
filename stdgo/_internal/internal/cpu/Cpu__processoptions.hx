package stdgo._internal.internal.cpu;
function _processOptions(_env:stdgo.GoString):Void {
        var _o_233295:stdgo._internal.internal.cpu.Cpu_t_option.T_option = ({} : stdgo._internal.internal.cpu.Cpu_t_option.T_option);
        var _i_233300_0:stdgo.GoInt = (0 : stdgo.GoInt);
        var _value_232664:stdgo.GoString = ("" : stdgo.GoString);
        var _field_232351:stdgo.GoString = ("" : stdgo.GoString);
        var _i_233083:stdgo.GoInt = (0 : stdgo.GoInt);
        var _i_232965:stdgo.GoInt = (0 : stdgo.GoInt);
        var _enable_232725:Bool = false;
        var _key_232659:stdgo.GoString = ("" : stdgo.GoString);
        var _i_232365:stdgo.GoInt = (0 : stdgo.GoInt);
        var _fieldBreak = false;
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    _gotoNext = 232325i32;
                } else if (__value__ == (232325i32)) {
                    var __blank__ = 0i32;
                    _fieldBreak = false;
                    _gotoNext = 232333i32;
                } else if (__value__ == (232333i32)) {
                    if (!_fieldBreak && (_env != (stdgo.Go.str() : stdgo.GoString))) {
                        _gotoNext = 232347i32;
                    } else {
                        _gotoNext = 233288i32;
                    };
                } else if (__value__ == (232347i32)) {
                    _field_232351 = (stdgo.Go.str() : stdgo.GoString)?.__copy__();
                    _i_232365 = stdgo._internal.internal.cpu.Cpu__indexbyte._indexByte(_env?.__copy__(), (44 : stdgo.GoUInt8));
                    if ((_i_232365 < (0 : stdgo.GoInt) : Bool)) {
                        _gotoNext = 232401i32;
                    } else {
                        _gotoNext = 232436i32;
                    };
                } else if (__value__ == (232401i32)) {
                    {
                        final __tmp__0 = _env?.__copy__();
                        final __tmp__1 = (stdgo.Go.str() : stdgo.GoString)?.__copy__();
                        _field_232351 = __tmp__0;
                        _env = __tmp__1;
                    };
                    _gotoNext = 232479i32;
                } else if (__value__ == (232436i32)) {
                    _gotoNext = 232436i32;
                    {
                        final __tmp__0 = (_env.__slice__(0, _i_232365) : stdgo.GoString)?.__copy__();
                        final __tmp__1 = (_env.__slice__((_i_232365 + (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        _field_232351 = __tmp__0;
                        _env = __tmp__1;
                    };
                    var __blank__ = 0i32;
                    _gotoNext = 232479i32;
                } else if (__value__ == (232479i32)) {
                    if ((((_field_232351.length) < (4 : stdgo.GoInt) : Bool) || ((_field_232351.__slice__(0, (4 : stdgo.GoInt)) : stdgo.GoString) != ("cpu." : stdgo.GoString)) : Bool)) {
                        _gotoNext = 232520i32;
                    } else {
                        _gotoNext = 232540i32;
                    };
                } else if (__value__ == (232520i32)) {
                    var __blank__ = 0i32;
                    _gotoNext = 232333i32;
                } else if (__value__ == (232540i32)) {
                    _i_232365 = stdgo._internal.internal.cpu.Cpu__indexbyte._indexByte(_field_232351?.__copy__(), (61 : stdgo.GoUInt8));
                    if ((_i_232365 < (0 : stdgo.GoInt) : Bool)) {
                        _gotoNext = 232577i32;
                    } else {
                        _gotoNext = 232659i32;
                    };
                } else if (__value__ == (232577i32)) {
                    stdgo.Go.print(("GODEBUG: no value specified for \"" : stdgo.GoString), _field_232351, ("\"\n" : stdgo.GoString));
                    var __blank__ = 0i32;
                    _gotoNext = 232333i32;
                } else if (__value__ == (232659i32)) {
                    {
                        final __tmp__0 = (_field_232351.__slice__((4 : stdgo.GoInt), _i_232365) : stdgo.GoString)?.__copy__();
                        final __tmp__1 = (_field_232351.__slice__((_i_232365 + (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        _key_232659 = __tmp__0;
                        _value_232664 = __tmp__1;
                    };
                    _gotoNext = 232739i32;
                } else if (__value__ == (232739i32)) {
                    {
                        final __value__ = _value_232664;
                        if (__value__ == (("on" : stdgo.GoString))) {
                            _gotoNext = 232756i32;
                        } else if (__value__ == (("off" : stdgo.GoString))) {
                            _gotoNext = 232786i32;
                        } else {
                            _gotoNext = 232818i32;
                        };
                    };
                } else if (__value__ == (232756i32)) {
                    _enable_232725 = true;
                    _gotoNext = 232940i32;
                } else if (__value__ == (232786i32)) {
                    _enable_232725 = false;
                    _gotoNext = 232940i32;
                } else if (__value__ == (232818i32)) {
                    stdgo.Go.print(("GODEBUG: value \"" : stdgo.GoString), _value_232664, ("\" not supported for cpu option \"" : stdgo.GoString), _key_232659, ("\"\n" : stdgo.GoString));
                    _gotoNext = 232333i32;
                } else if (__value__ == (232940i32)) {
                    if (_key_232659 == (("all" : stdgo.GoString))) {
                        _gotoNext = 232956i32;
                    } else {
                        _gotoNext = 233079i32;
                    };
                } else if (__value__ == (232956i32)) {
                    if ((0i32 : stdgo.GoInt) < (stdgo._internal.internal.cpu.Cpu__options._options.length)) {
                        _gotoNext = 233051i32;
                    } else {
                        _gotoNext = 233057i32;
                    };
                } else if (__value__ == (232984i32)) {
                    stdgo._internal.internal.cpu.Cpu__options._options[(_i_232965 : stdgo.GoInt)].specified = true;
                    stdgo._internal.internal.cpu.Cpu__options._options[(_i_232965 : stdgo.GoInt)].enable = _enable_232725;
                    _i_232965++;
                    _gotoNext = 233052i32;
                } else if (__value__ == (233051i32)) {
                    _i_232965 = 0i32;
                    _gotoNext = 233052i32;
                } else if (__value__ == (233052i32)) {
                    if (_i_232965 < (stdgo._internal.internal.cpu.Cpu__options._options.length)) {
                        _gotoNext = 232984i32;
                    } else {
                        _gotoNext = 233057i32;
                    };
                } else if (__value__ == (233057i32)) {
                    _gotoNext = 232333i32;
                } else if (__value__ == (233079i32)) {
                    if ((0i32 : stdgo.GoInt) < (stdgo._internal.internal.cpu.Cpu__options._options.length)) {
                        _gotoNext = 233223i32;
                    } else {
                        _gotoNext = 233229i32;
                    };
                } else if (__value__ == (233083i32)) {
                    _i_233083++;
                    _gotoNext = 233224i32;
                } else if (__value__ == (233102i32)) {
                    if (stdgo._internal.internal.cpu.Cpu__options._options[(_i_233083 : stdgo.GoInt)].name == (_key_232659)) {
                        _gotoNext = 233133i32;
                    } else {
                        _gotoNext = 233083i32;
                    };
                } else if (__value__ == (233133i32)) {
                    stdgo._internal.internal.cpu.Cpu__options._options[(_i_233083 : stdgo.GoInt)].specified = true;
                    stdgo._internal.internal.cpu.Cpu__options._options[(_i_233083 : stdgo.GoInt)].enable = _enable_232725;
                    _gotoNext = 232333i32;
                } else if (__value__ == (233223i32)) {
                    _i_233083 = 0i32;
                    _gotoNext = 233224i32;
                } else if (__value__ == (233224i32)) {
                    if (_i_233083 < (stdgo._internal.internal.cpu.Cpu__options._options.length)) {
                        _gotoNext = 233102i32;
                    } else {
                        _gotoNext = 233229i32;
                    };
                } else if (__value__ == (233229i32)) {
                    stdgo.Go.print(("GODEBUG: unknown cpu feature \"" : stdgo.GoString), _key_232659, ("\"\n" : stdgo.GoString));
                    _gotoNext = 232333i32;
                } else if (__value__ == (233288i32)) {
                    if ((0i32 : stdgo.GoInt) < (stdgo._internal.internal.cpu.Cpu__options._options.length)) {
                        _gotoNext = 233501i32;
                    } else {
                        _gotoNext = 233504i32;
                    };
                } else if (__value__ == (233314i32)) {
                    _o_233295 = stdgo._internal.internal.cpu.Cpu__options._options[(_i_233300_0 : stdgo.GoInt)];
                    if (!_o_233295.specified) {
                        _gotoNext = 233334i32;
                    } else {
                        _gotoNext = 233355i32;
                    };
                } else if (__value__ == (233334i32)) {
                    _i_233300_0++;
                    _gotoNext = 233502i32;
                } else if (__value__ == (233355i32)) {
                    if ((_o_233295.enable && !_o_233295.feature.value : Bool)) {
                        _gotoNext = 233382i32;
                    } else {
                        _gotoNext = 233479i32;
                    };
                } else if (__value__ == (233382i32)) {
                    stdgo.Go.print(("GODEBUG: can not enable \"" : stdgo.GoString), _o_233295.name, ("\", missing CPU support\n" : stdgo.GoString));
                    _i_233300_0++;
                    _gotoNext = 233502i32;
                } else if (__value__ == (233479i32)) {
                    _o_233295.feature.value = _o_233295.enable;
                    _i_233300_0++;
                    _gotoNext = 233502i32;
                } else if (__value__ == (233501i32)) {
                    {
                        final __tmp__0 = 0i32;
                        final __tmp__1 = stdgo._internal.internal.cpu.Cpu__options._options[(0i32 : stdgo.GoInt)];
                        _i_233300_0 = __tmp__0;
                        _o_233295 = __tmp__1;
                    };
                    _gotoNext = 233502i32;
                } else if (__value__ == (233502i32)) {
                    if (_i_233300_0 < (stdgo._internal.internal.cpu.Cpu__options._options.length)) {
                        _gotoNext = 233314i32;
                    } else {
                        _gotoNext = 233504i32;
                    };
                } else if (__value__ == (233504i32)) {
                    _gotoNext = -1i32;
                };
            };
        };
    }
