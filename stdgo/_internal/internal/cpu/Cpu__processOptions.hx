package stdgo._internal.internal.cpu;
function _processOptions(_env:stdgo.GoString):Void {
        var _o_337305:stdgo._internal.internal.cpu.Cpu_T_option.T_option = ({} : stdgo._internal.internal.cpu.Cpu_T_option.T_option);
        var _i_337310_0:stdgo.GoInt = (0 : stdgo.GoInt);
        var _i_337093:stdgo.GoInt = (0 : stdgo.GoInt);
        var _enable_336735:Bool = false;
        var _value_336674:stdgo.GoString = ("" : stdgo.GoString);
        var _key_336669:stdgo.GoString = ("" : stdgo.GoString);
        var _i_336375:stdgo.GoInt = (0 : stdgo.GoInt);
        var _field_336361:stdgo.GoString = ("" : stdgo.GoString);
        var _fieldBreak = false;
        var _i_336975:stdgo.GoInt = (0 : stdgo.GoInt);
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    _gotoNext = 336335i32;
                } else if (__value__ == (336335i32)) {
                    var __blank__ = 0i32;
                    _fieldBreak = false;
                    _gotoNext = 336343i32;
                } else if (__value__ == (336343i32)) {
                    if (!_fieldBreak && (_env != stdgo.Go.str())) {
                        _gotoNext = 336357i32;
                    } else {
                        _gotoNext = 337298i32;
                    };
                } else if (__value__ == (336357i32)) {
                    _field_336361 = stdgo.Go.str()?.__copy__();
                    _i_336375 = stdgo._internal.internal.cpu.Cpu__indexByte._indexByte(_env?.__copy__(), (44 : stdgo.GoUInt8));
                    if ((_i_336375 < (0 : stdgo.GoInt) : Bool)) {
                        _gotoNext = 336411i32;
                    } else {
                        _gotoNext = 336446i32;
                    };
                } else if (__value__ == (336411i32)) {
                    {
                        final __tmp__0 = _env?.__copy__();
                        final __tmp__1 = stdgo.Go.str()?.__copy__();
                        _field_336361 = __tmp__0;
                        _env = __tmp__1;
                    };
                    _gotoNext = 336489i32;
                } else if (__value__ == (336446i32)) {
                    _gotoNext = 336446i32;
                    {
                        final __tmp__0 = (_env.__slice__(0, _i_336375) : stdgo.GoString)?.__copy__();
                        final __tmp__1 = (_env.__slice__((_i_336375 + (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        _field_336361 = __tmp__0;
                        _env = __tmp__1;
                    };
                    var __blank__ = 0i32;
                    _gotoNext = 336489i32;
                } else if (__value__ == (336489i32)) {
                    if ((((_field_336361.length) < (4 : stdgo.GoInt) : Bool) || ((_field_336361.__slice__(0, (4 : stdgo.GoInt)) : stdgo.GoString) != ("cpu." : stdgo.GoString)) : Bool)) {
                        _gotoNext = 336530i32;
                    } else {
                        _gotoNext = 336550i32;
                    };
                } else if (__value__ == (336530i32)) {
                    var __blank__ = 0i32;
                    _gotoNext = 336343i32;
                } else if (__value__ == (336550i32)) {
                    _i_336375 = stdgo._internal.internal.cpu.Cpu__indexByte._indexByte(_field_336361?.__copy__(), (61 : stdgo.GoUInt8));
                    if ((_i_336375 < (0 : stdgo.GoInt) : Bool)) {
                        _gotoNext = 336587i32;
                    } else {
                        _gotoNext = 336669i32;
                    };
                } else if (__value__ == (336587i32)) {
                    stdgo.Go.print(("GODEBUG: no value specified for \"" : stdgo.GoString), _field_336361, ("\"\n" : stdgo.GoString));
                    var __blank__ = 0i32;
                    _gotoNext = 336343i32;
                } else if (__value__ == (336669i32)) {
                    {
                        final __tmp__0 = (_field_336361.__slice__((4 : stdgo.GoInt), _i_336375) : stdgo.GoString)?.__copy__();
                        final __tmp__1 = (_field_336361.__slice__((_i_336375 + (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        _key_336669 = __tmp__0;
                        _value_336674 = __tmp__1;
                    };
                    _gotoNext = 336749i32;
                } else if (__value__ == (336749i32)) {
                    {
                        final __value__ = _value_336674;
                        if (__value__ == (("on" : stdgo.GoString))) {
                            _gotoNext = 336766i32;
                        } else if (__value__ == (("off" : stdgo.GoString))) {
                            _gotoNext = 336796i32;
                        } else {
                            _gotoNext = 336828i32;
                        };
                    };
                } else if (__value__ == (336766i32)) {
                    _enable_336735 = true;
                    _gotoNext = 336950i32;
                } else if (__value__ == (336796i32)) {
                    _enable_336735 = false;
                    _gotoNext = 336950i32;
                } else if (__value__ == (336828i32)) {
                    stdgo.Go.print(("GODEBUG: value \"" : stdgo.GoString), _value_336674, ("\" not supported for cpu option \"" : stdgo.GoString), _key_336669, ("\"\n" : stdgo.GoString));
                    _gotoNext = 336343i32;
                } else if (__value__ == (336950i32)) {
                    if (_key_336669 == (("all" : stdgo.GoString))) {
                        _gotoNext = 336966i32;
                    } else {
                        _gotoNext = 337089i32;
                    };
                } else if (__value__ == (336966i32)) {
                    if ((0i32 : stdgo.GoInt) < (stdgo._internal.internal.cpu.Cpu__options._options.length)) {
                        _gotoNext = 337061i32;
                    } else {
                        _gotoNext = 337067i32;
                    };
                } else if (__value__ == (336994i32)) {
                    stdgo._internal.internal.cpu.Cpu__options._options[(_i_336975 : stdgo.GoInt)].specified = true;
                    stdgo._internal.internal.cpu.Cpu__options._options[(_i_336975 : stdgo.GoInt)].enable = _enable_336735;
                    _i_336975++;
                    _gotoNext = 337062i32;
                } else if (__value__ == (337061i32)) {
                    _i_336975 = 0i32;
                    _gotoNext = 337062i32;
                } else if (__value__ == (337062i32)) {
                    if (_i_336975 < (stdgo._internal.internal.cpu.Cpu__options._options.length)) {
                        _gotoNext = 336994i32;
                    } else {
                        _gotoNext = 337067i32;
                    };
                } else if (__value__ == (337067i32)) {
                    _gotoNext = 336343i32;
                } else if (__value__ == (337089i32)) {
                    if ((0i32 : stdgo.GoInt) < (stdgo._internal.internal.cpu.Cpu__options._options.length)) {
                        _gotoNext = 337233i32;
                    } else {
                        _gotoNext = 337239i32;
                    };
                } else if (__value__ == (337093i32)) {
                    _i_337093++;
                    _gotoNext = 337234i32;
                } else if (__value__ == (337112i32)) {
                    if (stdgo._internal.internal.cpu.Cpu__options._options[(_i_337093 : stdgo.GoInt)].name == (_key_336669)) {
                        _gotoNext = 337143i32;
                    } else {
                        _gotoNext = 337093i32;
                    };
                } else if (__value__ == (337143i32)) {
                    stdgo._internal.internal.cpu.Cpu__options._options[(_i_337093 : stdgo.GoInt)].specified = true;
                    stdgo._internal.internal.cpu.Cpu__options._options[(_i_337093 : stdgo.GoInt)].enable = _enable_336735;
                    _gotoNext = 336343i32;
                } else if (__value__ == (337233i32)) {
                    _i_337093 = 0i32;
                    _gotoNext = 337234i32;
                } else if (__value__ == (337234i32)) {
                    if (_i_337093 < (stdgo._internal.internal.cpu.Cpu__options._options.length)) {
                        _gotoNext = 337112i32;
                    } else {
                        _gotoNext = 337239i32;
                    };
                } else if (__value__ == (337239i32)) {
                    stdgo.Go.print(("GODEBUG: unknown cpu feature \"" : stdgo.GoString), _key_336669, ("\"\n" : stdgo.GoString));
                    _gotoNext = 336343i32;
                } else if (__value__ == (337298i32)) {
                    if ((0i32 : stdgo.GoInt) < (stdgo._internal.internal.cpu.Cpu__options._options.length)) {
                        _gotoNext = 337511i32;
                    } else {
                        _gotoNext = 337514i32;
                    };
                } else if (__value__ == (337324i32)) {
                    _o_337305 = stdgo._internal.internal.cpu.Cpu__options._options[(_i_337310_0 : stdgo.GoInt)];
                    if (!_o_337305.specified) {
                        _gotoNext = 337344i32;
                    } else {
                        _gotoNext = 337365i32;
                    };
                } else if (__value__ == (337344i32)) {
                    _i_337310_0++;
                    _gotoNext = 337512i32;
                } else if (__value__ == (337365i32)) {
                    if ((_o_337305.enable && !_o_337305.feature.value : Bool)) {
                        _gotoNext = 337392i32;
                    } else {
                        _gotoNext = 337489i32;
                    };
                } else if (__value__ == (337392i32)) {
                    stdgo.Go.print(("GODEBUG: can not enable \"" : stdgo.GoString), _o_337305.name, ("\", missing CPU support\n" : stdgo.GoString));
                    _i_337310_0++;
                    _gotoNext = 337512i32;
                } else if (__value__ == (337489i32)) {
                    _o_337305.feature.value = _o_337305.enable;
                    _i_337310_0++;
                    _gotoNext = 337512i32;
                } else if (__value__ == (337511i32)) {
                    {
                        final __tmp__0 = 0i32;
                        final __tmp__1 = stdgo._internal.internal.cpu.Cpu__options._options[(0i32 : stdgo.GoInt)];
                        _i_337310_0 = __tmp__0;
                        _o_337305 = __tmp__1;
                    };
                    _gotoNext = 337512i32;
                } else if (__value__ == (337512i32)) {
                    if (_i_337310_0 < (stdgo._internal.internal.cpu.Cpu__options._options.length)) {
                        _gotoNext = 337324i32;
                    } else {
                        _gotoNext = 337514i32;
                    };
                } else if (__value__ == (337514i32)) {
                    _gotoNext = -1i32;
                };
            };
        };
    }
