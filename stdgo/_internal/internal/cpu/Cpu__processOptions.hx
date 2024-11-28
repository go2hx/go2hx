package stdgo._internal.internal.cpu;
function _processOptions(_env:stdgo.GoString):Void {
        var _o_9357:stdgo._internal.internal.cpu.Cpu_T_option.T_option = ({} : stdgo._internal.internal.cpu.Cpu_T_option.T_option);
        var _i_9145:stdgo.GoInt = (0 : stdgo.GoInt);
        var _i_8427:stdgo.GoInt = (0 : stdgo.GoInt);
        var _fieldBreak = false;
        var _enable_8787:Bool = false;
        var _value_8726:stdgo.GoString = ("" : stdgo.GoString);
        var _key_8721:stdgo.GoString = ("" : stdgo.GoString);
        var _field_8413:stdgo.GoString = ("" : stdgo.GoString);
        var _i_9362_0:stdgo.GoInt = (0 : stdgo.GoInt);
        var _i_9027:stdgo.GoInt = (0 : stdgo.GoInt);
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    _gotoNext = 8387i32;
                } else if (__value__ == (8387i32)) {
                    var __blank__ = 0i32;
                    _fieldBreak = false;
                    _gotoNext = 8395i32;
                } else if (__value__ == (8395i32)) {
                    if (!_fieldBreak && (_env != stdgo.Go.str())) {
                        _gotoNext = 8409i32;
                    } else {
                        _gotoNext = 9350i32;
                    };
                } else if (__value__ == (8409i32)) {
                    _field_8413 = stdgo.Go.str()?.__copy__();
                    _i_8427 = stdgo._internal.internal.cpu.Cpu__indexByte._indexByte(_env?.__copy__(), (44 : stdgo.GoUInt8));
                    if ((_i_8427 < (0 : stdgo.GoInt) : Bool)) {
                        _gotoNext = 8463i32;
                    } else {
                        _gotoNext = 8498i32;
                    };
                } else if (__value__ == (8463i32)) {
                    {
                        final __tmp__0 = _env?.__copy__();
                        final __tmp__1 = stdgo.Go.str()?.__copy__();
                        _field_8413 = __tmp__0;
                        _env = __tmp__1;
                    };
                    _gotoNext = 8541i32;
                } else if (__value__ == (8498i32)) {
                    _gotoNext = 8498i32;
                    {
                        final __tmp__0 = (_env.__slice__(0, _i_8427) : stdgo.GoString)?.__copy__();
                        final __tmp__1 = (_env.__slice__((_i_8427 + (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        _field_8413 = __tmp__0;
                        _env = __tmp__1;
                    };
                    var __blank__ = 0i32;
                    _gotoNext = 8541i32;
                } else if (__value__ == (8541i32)) {
                    if ((((_field_8413.length) < (4 : stdgo.GoInt) : Bool) || ((_field_8413.__slice__(0, (4 : stdgo.GoInt)) : stdgo.GoString) != ("cpu." : stdgo.GoString)) : Bool)) {
                        _gotoNext = 8582i32;
                    } else {
                        _gotoNext = 8602i32;
                    };
                } else if (__value__ == (8582i32)) {
                    var __blank__ = 0i32;
                    _gotoNext = 8395i32;
                } else if (__value__ == (8602i32)) {
                    _i_8427 = stdgo._internal.internal.cpu.Cpu__indexByte._indexByte(_field_8413?.__copy__(), (61 : stdgo.GoUInt8));
                    if ((_i_8427 < (0 : stdgo.GoInt) : Bool)) {
                        _gotoNext = 8639i32;
                    } else {
                        _gotoNext = 8721i32;
                    };
                } else if (__value__ == (8639i32)) {
                    stdgo.Go.print(("GODEBUG: no value specified for \"" : stdgo.GoString), _field_8413, ("\"\n" : stdgo.GoString));
                    var __blank__ = 0i32;
                    _gotoNext = 8395i32;
                } else if (__value__ == (8721i32)) {
                    {
                        final __tmp__0 = (_field_8413.__slice__((4 : stdgo.GoInt), _i_8427) : stdgo.GoString)?.__copy__();
                        final __tmp__1 = (_field_8413.__slice__((_i_8427 + (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        _key_8721 = __tmp__0;
                        _value_8726 = __tmp__1;
                    };
                    _gotoNext = 8801i32;
                } else if (__value__ == (8801i32)) {
                    {
                        final __value__ = _value_8726;
                        if (__value__ == (("on" : stdgo.GoString))) {
                            _gotoNext = 8818i32;
                        } else if (__value__ == (("off" : stdgo.GoString))) {
                            _gotoNext = 8848i32;
                        } else {
                            _gotoNext = 8880i32;
                        };
                    };
                } else if (__value__ == (8818i32)) {
                    _enable_8787 = true;
                    _gotoNext = 9002i32;
                } else if (__value__ == (8848i32)) {
                    _enable_8787 = false;
                    _gotoNext = 9002i32;
                } else if (__value__ == (8880i32)) {
                    stdgo.Go.print(("GODEBUG: value \"" : stdgo.GoString), _value_8726, ("\" not supported for cpu option \"" : stdgo.GoString), _key_8721, ("\"\n" : stdgo.GoString));
                    _gotoNext = 8395i32;
                } else if (__value__ == (9002i32)) {
                    if (_key_8721 == (("all" : stdgo.GoString))) {
                        _gotoNext = 9018i32;
                    } else {
                        _gotoNext = 9141i32;
                    };
                } else if (__value__ == (9018i32)) {
                    if ((0i32 : stdgo.GoInt) < (stdgo._internal.internal.cpu.Cpu__options._options.length)) {
                        _gotoNext = 9113i32;
                    } else {
                        _gotoNext = 9119i32;
                    };
                } else if (__value__ == (9046i32)) {
                    stdgo._internal.internal.cpu.Cpu__options._options[(_i_9027 : stdgo.GoInt)].specified = true;
                    stdgo._internal.internal.cpu.Cpu__options._options[(_i_9027 : stdgo.GoInt)].enable = _enable_8787;
                    _i_9027++;
                    _gotoNext = 9114i32;
                } else if (__value__ == (9113i32)) {
                    _i_9027 = 0i32;
                    _gotoNext = 9114i32;
                } else if (__value__ == (9114i32)) {
                    if (_i_9027 < (stdgo._internal.internal.cpu.Cpu__options._options.length)) {
                        _gotoNext = 9046i32;
                    } else {
                        _gotoNext = 9119i32;
                    };
                } else if (__value__ == (9119i32)) {
                    _gotoNext = 8395i32;
                } else if (__value__ == (9141i32)) {
                    if ((0i32 : stdgo.GoInt) < (stdgo._internal.internal.cpu.Cpu__options._options.length)) {
                        _gotoNext = 9285i32;
                    } else {
                        _gotoNext = 9291i32;
                    };
                } else if (__value__ == (9145i32)) {
                    _i_9145++;
                    _gotoNext = 9286i32;
                } else if (__value__ == (9164i32)) {
                    if (stdgo._internal.internal.cpu.Cpu__options._options[(_i_9145 : stdgo.GoInt)].name == (_key_8721)) {
                        _gotoNext = 9195i32;
                    } else {
                        _gotoNext = 9145i32;
                    };
                } else if (__value__ == (9195i32)) {
                    stdgo._internal.internal.cpu.Cpu__options._options[(_i_9145 : stdgo.GoInt)].specified = true;
                    stdgo._internal.internal.cpu.Cpu__options._options[(_i_9145 : stdgo.GoInt)].enable = _enable_8787;
                    _gotoNext = 8395i32;
                } else if (__value__ == (9285i32)) {
                    _i_9145 = 0i32;
                    _gotoNext = 9286i32;
                } else if (__value__ == (9286i32)) {
                    if (_i_9145 < (stdgo._internal.internal.cpu.Cpu__options._options.length)) {
                        _gotoNext = 9164i32;
                    } else {
                        _gotoNext = 9291i32;
                    };
                } else if (__value__ == (9291i32)) {
                    stdgo.Go.print(("GODEBUG: unknown cpu feature \"" : stdgo.GoString), _key_8721, ("\"\n" : stdgo.GoString));
                    _gotoNext = 8395i32;
                } else if (__value__ == (9350i32)) {
                    if ((0i32 : stdgo.GoInt) < (stdgo._internal.internal.cpu.Cpu__options._options.length)) {
                        _gotoNext = 9563i32;
                    } else {
                        _gotoNext = 9566i32;
                    };
                } else if (__value__ == (9376i32)) {
                    _o_9357 = stdgo._internal.internal.cpu.Cpu__options._options[(_i_9362_0 : stdgo.GoInt)];
                    if (!_o_9357.specified) {
                        _gotoNext = 9396i32;
                    } else {
                        _gotoNext = 9417i32;
                    };
                } else if (__value__ == (9396i32)) {
                    _i_9362_0++;
                    _gotoNext = 9564i32;
                } else if (__value__ == (9417i32)) {
                    if ((_o_9357.enable && !_o_9357.feature.value : Bool)) {
                        _gotoNext = 9444i32;
                    } else {
                        _gotoNext = 9541i32;
                    };
                } else if (__value__ == (9444i32)) {
                    stdgo.Go.print(("GODEBUG: can not enable \"" : stdgo.GoString), _o_9357.name, ("\", missing CPU support\n" : stdgo.GoString));
                    _i_9362_0++;
                    _gotoNext = 9564i32;
                } else if (__value__ == (9541i32)) {
                    _o_9357.feature.value = _o_9357.enable;
                    _i_9362_0++;
                    _gotoNext = 9564i32;
                } else if (__value__ == (9563i32)) {
                    {
                        final __tmp__0 = 0i32;
                        final __tmp__1 = stdgo._internal.internal.cpu.Cpu__options._options[(0i32 : stdgo.GoInt)];
                        _i_9362_0 = __tmp__0;
                        _o_9357 = __tmp__1;
                    };
                    _gotoNext = 9564i32;
                } else if (__value__ == (9564i32)) {
                    if (_i_9362_0 < (stdgo._internal.internal.cpu.Cpu__options._options.length)) {
                        _gotoNext = 9376i32;
                    } else {
                        _gotoNext = 9566i32;
                    };
                } else if (__value__ == (9566i32)) {
                    _gotoNext = -1i32;
                };
            };
        };
    }
