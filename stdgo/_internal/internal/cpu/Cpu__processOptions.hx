package stdgo._internal.internal.cpu;
function _processOptions(_env:stdgo.GoString):Void {
        var _key_6373:stdgo.GoString = ("" : stdgo.GoString);
        var _fieldBreak = false;
        var _i_7014_0:stdgo.GoInt = (0 : stdgo.GoInt);
        var _i_6679:stdgo.GoInt = (0 : stdgo.GoInt);
        var _value_6378:stdgo.GoString = ("" : stdgo.GoString);
        var _i_6079:stdgo.GoInt = (0 : stdgo.GoInt);
        var _field_6065:stdgo.GoString = ("" : stdgo.GoString);
        var _o_7009:stdgo._internal.internal.cpu.Cpu_T_option.T_option = ({} : stdgo._internal.internal.cpu.Cpu_T_option.T_option);
        var _i_6797:stdgo.GoInt = (0 : stdgo.GoInt);
        var _enable_6439:Bool = false;
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    _gotoNext = 6039i32;
                } else if (__value__ == (6039i32)) {
                    var __blank__ = 0i32;
                    _fieldBreak = false;
                    _gotoNext = 6047i32;
                } else if (__value__ == (6047i32)) {
                    if (!_fieldBreak && (_env != stdgo.Go.str())) {
                        _gotoNext = 6061i32;
                    } else {
                        _gotoNext = 7002i32;
                    };
                } else if (__value__ == (6061i32)) {
                    _field_6065 = stdgo.Go.str()?.__copy__();
                    _i_6079 = stdgo._internal.internal.cpu.Cpu__indexByte._indexByte(_env?.__copy__(), (44 : stdgo.GoUInt8));
                    if ((_i_6079 < (0 : stdgo.GoInt) : Bool)) {
                        _gotoNext = 6115i32;
                    } else {
                        _gotoNext = 6150i32;
                    };
                } else if (__value__ == (6115i32)) {
                    {
                        final __tmp__0 = _env?.__copy__();
                        final __tmp__1 = stdgo.Go.str()?.__copy__();
                        _field_6065 = __tmp__0;
                        _env = __tmp__1;
                    };
                    _gotoNext = 6193i32;
                } else if (__value__ == (6150i32)) {
                    _gotoNext = 6150i32;
                    {
                        final __tmp__0 = (_env.__slice__(0, _i_6079) : stdgo.GoString)?.__copy__();
                        final __tmp__1 = (_env.__slice__((_i_6079 + (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        _field_6065 = __tmp__0;
                        _env = __tmp__1;
                    };
                    var __blank__ = 0i32;
                    _gotoNext = 6193i32;
                } else if (__value__ == (6193i32)) {
                    if ((((_field_6065.length) < (4 : stdgo.GoInt) : Bool) || ((_field_6065.__slice__(0, (4 : stdgo.GoInt)) : stdgo.GoString) != ("cpu." : stdgo.GoString)) : Bool)) {
                        _gotoNext = 6234i32;
                    } else {
                        _gotoNext = 6254i32;
                    };
                } else if (__value__ == (6234i32)) {
                    var __blank__ = 0i32;
                    _gotoNext = 6047i32;
                } else if (__value__ == (6254i32)) {
                    _i_6079 = stdgo._internal.internal.cpu.Cpu__indexByte._indexByte(_field_6065?.__copy__(), (61 : stdgo.GoUInt8));
                    if ((_i_6079 < (0 : stdgo.GoInt) : Bool)) {
                        _gotoNext = 6291i32;
                    } else {
                        _gotoNext = 6373i32;
                    };
                } else if (__value__ == (6291i32)) {
                    stdgo.Go.print(("GODEBUG: no value specified for \"" : stdgo.GoString), _field_6065, ("\"\n" : stdgo.GoString));
                    var __blank__ = 0i32;
                    _gotoNext = 6047i32;
                } else if (__value__ == (6373i32)) {
                    {
                        final __tmp__0 = (_field_6065.__slice__((4 : stdgo.GoInt), _i_6079) : stdgo.GoString)?.__copy__();
                        final __tmp__1 = (_field_6065.__slice__((_i_6079 + (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        _key_6373 = __tmp__0;
                        _value_6378 = __tmp__1;
                    };
                    var __blank__ = 0i32;
                    _gotoNext = 6453i32;
                } else if (__value__ == (6453i32)) {
                    {
                        final __value__ = _value_6378;
                        if (__value__ == (("on" : stdgo.GoString))) {
                            _gotoNext = 6470i32;
                        } else if (__value__ == (("off" : stdgo.GoString))) {
                            _gotoNext = 6500i32;
                        } else {
                            _gotoNext = 6532i32;
                        };
                    };
                } else if (__value__ == (6470i32)) {
                    _enable_6439 = true;
                    _gotoNext = 6654i32;
                } else if (__value__ == (6500i32)) {
                    _enable_6439 = false;
                    _gotoNext = 6654i32;
                } else if (__value__ == (6532i32)) {
                    stdgo.Go.print(("GODEBUG: value \"" : stdgo.GoString), _value_6378, ("\" not supported for cpu option \"" : stdgo.GoString), _key_6373, ("\"\n" : stdgo.GoString));
                    _gotoNext = 6047i32;
                } else if (__value__ == (6654i32)) {
                    if (_key_6373 == (("all" : stdgo.GoString))) {
                        _gotoNext = 6670i32;
                    } else {
                        _gotoNext = 6793i32;
                    };
                } else if (__value__ == (6670i32)) {
                    if ((0i32 : stdgo.GoInt) < (stdgo._internal.internal.cpu.Cpu__options._options.length)) {
                        _gotoNext = 6765i32;
                    } else {
                        _gotoNext = 6771i32;
                    };
                } else if (__value__ == (6698i32)) {
                    stdgo._internal.internal.cpu.Cpu__options._options[(_i_6679 : stdgo.GoInt)].specified = true;
                    stdgo._internal.internal.cpu.Cpu__options._options[(_i_6679 : stdgo.GoInt)].enable = _enable_6439;
                    _i_6679++;
                    _gotoNext = 6766i32;
                } else if (__value__ == (6765i32)) {
                    _i_6679 = 0i32;
                    _gotoNext = 6766i32;
                } else if (__value__ == (6766i32)) {
                    if (_i_6679 < (stdgo._internal.internal.cpu.Cpu__options._options.length)) {
                        _gotoNext = 6698i32;
                    } else {
                        _gotoNext = 6771i32;
                    };
                } else if (__value__ == (6771i32)) {
                    _gotoNext = 6047i32;
                } else if (__value__ == (6793i32)) {
                    if ((0i32 : stdgo.GoInt) < (stdgo._internal.internal.cpu.Cpu__options._options.length)) {
                        _gotoNext = 6937i32;
                    } else {
                        _gotoNext = 6943i32;
                    };
                } else if (__value__ == (6797i32)) {
                    _i_6797++;
                    _gotoNext = 6938i32;
                } else if (__value__ == (6816i32)) {
                    if (stdgo._internal.internal.cpu.Cpu__options._options[(_i_6797 : stdgo.GoInt)].name == (_key_6373)) {
                        _gotoNext = 6847i32;
                    } else {
                        _gotoNext = 6797i32;
                    };
                } else if (__value__ == (6847i32)) {
                    stdgo._internal.internal.cpu.Cpu__options._options[(_i_6797 : stdgo.GoInt)].specified = true;
                    stdgo._internal.internal.cpu.Cpu__options._options[(_i_6797 : stdgo.GoInt)].enable = _enable_6439;
                    _gotoNext = 6047i32;
                } else if (__value__ == (6937i32)) {
                    _i_6797 = 0i32;
                    _gotoNext = 6938i32;
                } else if (__value__ == (6938i32)) {
                    if (_i_6797 < (stdgo._internal.internal.cpu.Cpu__options._options.length)) {
                        _gotoNext = 6816i32;
                    } else {
                        _gotoNext = 6943i32;
                    };
                } else if (__value__ == (6943i32)) {
                    stdgo.Go.print(("GODEBUG: unknown cpu feature \"" : stdgo.GoString), _key_6373, ("\"\n" : stdgo.GoString));
                    _gotoNext = 6047i32;
                } else if (__value__ == (7002i32)) {
                    if ((0i32 : stdgo.GoInt) < (stdgo._internal.internal.cpu.Cpu__options._options.length)) {
                        _gotoNext = 7215i32;
                    } else {
                        _gotoNext = 7218i32;
                    };
                } else if (__value__ == (7028i32)) {
                    _o_7009 = stdgo._internal.internal.cpu.Cpu__options._options[(_i_7014_0 : stdgo.GoInt)];
                    if (!_o_7009.specified) {
                        _gotoNext = 7048i32;
                    } else {
                        _gotoNext = 7069i32;
                    };
                } else if (__value__ == (7048i32)) {
                    _i_7014_0++;
                    _gotoNext = 7216i32;
                } else if (__value__ == (7069i32)) {
                    if ((_o_7009.enable && !_o_7009.feature.value : Bool)) {
                        _gotoNext = 7096i32;
                    } else {
                        _gotoNext = 7193i32;
                    };
                } else if (__value__ == (7096i32)) {
                    stdgo.Go.print(("GODEBUG: can not enable \"" : stdgo.GoString), _o_7009.name, ("\", missing CPU support\n" : stdgo.GoString));
                    _i_7014_0++;
                    _gotoNext = 7216i32;
                } else if (__value__ == (7193i32)) {
                    _o_7009.feature.value = _o_7009.enable;
                    _i_7014_0++;
                    _gotoNext = 7216i32;
                } else if (__value__ == (7215i32)) {
                    {
                        final __tmp__0 = 0i32;
                        final __tmp__1 = stdgo._internal.internal.cpu.Cpu__options._options[(0i32 : stdgo.GoInt)];
                        _i_7014_0 = __tmp__0;
                        _o_7009 = __tmp__1;
                    };
                    _gotoNext = 7216i32;
                } else if (__value__ == (7216i32)) {
                    if (_i_7014_0 < (stdgo._internal.internal.cpu.Cpu__options._options.length)) {
                        _gotoNext = 7028i32;
                    } else {
                        _gotoNext = 7218i32;
                    };
                } else if (__value__ == (7218i32)) {
                    _gotoNext = -1i32;
                };
            };
        };
    }
