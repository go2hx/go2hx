package stdgo._internal.internal.cpu;
function _processOptions(_env:stdgo.GoString):Void {
        var _value_43449:stdgo.GoString = ("" : stdgo.GoString);
        var _key_43444:stdgo.GoString = ("" : stdgo.GoString);
        var _i_43750:stdgo.GoInt = (0 : stdgo.GoInt);
        var _enable_43510:Bool = false;
        var _i_43150:stdgo.GoInt = (0 : stdgo.GoInt);
        var _field_43136:stdgo.GoString = ("" : stdgo.GoString);
        var _fieldBreak = false;
        var _o_44080:stdgo._internal.internal.cpu.Cpu_T_option.T_option = ({} : stdgo._internal.internal.cpu.Cpu_T_option.T_option);
        var _i_44085_0:stdgo.GoInt = (0 : stdgo.GoInt);
        var _i_43868:stdgo.GoInt = (0 : stdgo.GoInt);
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    _gotoNext = 43110i32;
                } else if (__value__ == (43110i32)) {
                    var __blank__ = 0i32;
                    _fieldBreak = false;
                    _gotoNext = 43118i32;
                } else if (__value__ == (43118i32)) {
                    if (!_fieldBreak && (_env != stdgo.Go.str())) {
                        _gotoNext = 43132i32;
                    } else {
                        _gotoNext = 44073i32;
                    };
                } else if (__value__ == (43132i32)) {
                    _field_43136 = stdgo.Go.str()?.__copy__();
                    _i_43150 = stdgo._internal.internal.cpu.Cpu__indexByte._indexByte(_env?.__copy__(), (44 : stdgo.GoUInt8));
                    if ((_i_43150 < (0 : stdgo.GoInt) : Bool)) {
                        _gotoNext = 43186i32;
                    } else {
                        _gotoNext = 43221i32;
                    };
                } else if (__value__ == (43186i32)) {
                    {
                        final __tmp__0 = _env?.__copy__();
                        final __tmp__1 = stdgo.Go.str()?.__copy__();
                        _field_43136 = __tmp__0;
                        _env = __tmp__1;
                    };
                    _gotoNext = 43264i32;
                } else if (__value__ == (43221i32)) {
                    {
                        final __tmp__0 = (_env.__slice__(0, _i_43150) : stdgo.GoString)?.__copy__();
                        final __tmp__1 = (_env.__slice__((_i_43150 + (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        _field_43136 = __tmp__0;
                        _env = __tmp__1;
                    };
                    _gotoNext = 43264i32;
                } else if (__value__ == (43264i32)) {
                    if ((((_field_43136.length) < (4 : stdgo.GoInt) : Bool) || ((_field_43136.__slice__(0, (4 : stdgo.GoInt)) : stdgo.GoString) != ("cpu." : stdgo.GoString)) : Bool)) {
                        _gotoNext = 43305i32;
                    } else {
                        _gotoNext = 43325i32;
                    };
                } else if (__value__ == (43305i32)) {
                    var __blank__ = 0i32;
                    _gotoNext = 43118i32;
                } else if (__value__ == (43325i32)) {
                    _i_43150 = stdgo._internal.internal.cpu.Cpu__indexByte._indexByte(_field_43136?.__copy__(), (61 : stdgo.GoUInt8));
                    if ((_i_43150 < (0 : stdgo.GoInt) : Bool)) {
                        _gotoNext = 43362i32;
                    } else {
                        _gotoNext = 43444i32;
                    };
                } else if (__value__ == (43362i32)) {
                    stdgo.Go.print(("GODEBUG: no value specified for \"" : stdgo.GoString), _field_43136, ("\"\n" : stdgo.GoString));
                    var __blank__ = 0i32;
                    _gotoNext = 43118i32;
                } else if (__value__ == (43444i32)) {
                    {
                        final __tmp__0 = (_field_43136.__slice__((4 : stdgo.GoInt), _i_43150) : stdgo.GoString)?.__copy__();
                        final __tmp__1 = (_field_43136.__slice__((_i_43150 + (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        _key_43444 = __tmp__0;
                        _value_43449 = __tmp__1;
                    };
                    var __blank__ = 0i32;
                    _gotoNext = 43524i32;
                } else if (__value__ == (43524i32)) {
                    {
                        final __value__ = _value_43449;
                        if (__value__ == (("on" : stdgo.GoString))) {
                            _gotoNext = 43541i32;
                        } else if (__value__ == (("off" : stdgo.GoString))) {
                            _gotoNext = 43571i32;
                        } else {
                            _gotoNext = 43603i32;
                        };
                    };
                } else if (__value__ == (43541i32)) {
                    _enable_43510 = true;
                    _gotoNext = 43725i32;
                } else if (__value__ == (43571i32)) {
                    _enable_43510 = false;
                    _gotoNext = 43725i32;
                } else if (__value__ == (43603i32)) {
                    stdgo.Go.print(("GODEBUG: value \"" : stdgo.GoString), _value_43449, ("\" not supported for cpu option \"" : stdgo.GoString), _key_43444, ("\"\n" : stdgo.GoString));
                    _gotoNext = 43118i32;
                } else if (__value__ == (43725i32)) {
                    if (_key_43444 == (("all" : stdgo.GoString))) {
                        _gotoNext = 43741i32;
                    } else {
                        _gotoNext = 43864i32;
                    };
                } else if (__value__ == (43741i32)) {
                    if ((0i32 : stdgo.GoInt) < (stdgo._internal.internal.cpu.Cpu__options._options.length)) {
                        _gotoNext = 43836i32;
                    } else {
                        _gotoNext = 43842i32;
                    };
                } else if (__value__ == (43769i32)) {
                    stdgo._internal.internal.cpu.Cpu__options._options[(_i_43750 : stdgo.GoInt)].specified = true;
                    stdgo._internal.internal.cpu.Cpu__options._options[(_i_43750 : stdgo.GoInt)].enable = _enable_43510;
                    _i_43750++;
                    _gotoNext = 43837i32;
                } else if (__value__ == (43836i32)) {
                    _i_43750 = 0i32;
                    _gotoNext = 43837i32;
                } else if (__value__ == (43837i32)) {
                    if (_i_43750 < (stdgo._internal.internal.cpu.Cpu__options._options.length)) {
                        _gotoNext = 43769i32;
                    } else {
                        _gotoNext = 43842i32;
                    };
                } else if (__value__ == (43842i32)) {
                    _gotoNext = 43118i32;
                } else if (__value__ == (43864i32)) {
                    if ((0i32 : stdgo.GoInt) < (stdgo._internal.internal.cpu.Cpu__options._options.length)) {
                        _gotoNext = 44008i32;
                    } else {
                        _gotoNext = 44014i32;
                    };
                } else if (__value__ == (43868i32)) {
                    _i_43868++;
                    _gotoNext = 44009i32;
                } else if (__value__ == (43887i32)) {
                    if (stdgo._internal.internal.cpu.Cpu__options._options[(_i_43868 : stdgo.GoInt)].name == (_key_43444)) {
                        _gotoNext = 43918i32;
                    } else {
                        _gotoNext = 43868i32;
                    };
                } else if (__value__ == (43918i32)) {
                    stdgo._internal.internal.cpu.Cpu__options._options[(_i_43868 : stdgo.GoInt)].specified = true;
                    stdgo._internal.internal.cpu.Cpu__options._options[(_i_43868 : stdgo.GoInt)].enable = _enable_43510;
                    _gotoNext = 43118i32;
                } else if (__value__ == (44008i32)) {
                    _i_43868 = 0i32;
                    _gotoNext = 44009i32;
                } else if (__value__ == (44009i32)) {
                    if (_i_43868 < (stdgo._internal.internal.cpu.Cpu__options._options.length)) {
                        _gotoNext = 43887i32;
                    } else {
                        _gotoNext = 44014i32;
                    };
                } else if (__value__ == (44014i32)) {
                    stdgo.Go.print(("GODEBUG: unknown cpu feature \"" : stdgo.GoString), _key_43444, ("\"\n" : stdgo.GoString));
                    _gotoNext = 43118i32;
                } else if (__value__ == (44073i32)) {
                    if ((0i32 : stdgo.GoInt) < (stdgo._internal.internal.cpu.Cpu__options._options.length)) {
                        _gotoNext = 44286i32;
                    } else {
                        _gotoNext = 44289i32;
                    };
                } else if (__value__ == (44099i32)) {
                    _o_44080 = stdgo._internal.internal.cpu.Cpu__options._options[(_i_44085_0 : stdgo.GoInt)];
                    if (!_o_44080.specified) {
                        _gotoNext = 44119i32;
                    } else {
                        _gotoNext = 44140i32;
                    };
                } else if (__value__ == (44119i32)) {
                    _i_44085_0++;
                    _gotoNext = 44287i32;
                } else if (__value__ == (44140i32)) {
                    if ((_o_44080.enable && !_o_44080.feature.value : Bool)) {
                        _gotoNext = 44167i32;
                    } else {
                        _gotoNext = 44264i32;
                    };
                } else if (__value__ == (44167i32)) {
                    stdgo.Go.print(("GODEBUG: can not enable \"" : stdgo.GoString), _o_44080.name, ("\", missing CPU support\n" : stdgo.GoString));
                    _i_44085_0++;
                    _gotoNext = 44287i32;
                } else if (__value__ == (44264i32)) {
                    _o_44080.feature.value = _o_44080.enable;
                    _i_44085_0++;
                    _gotoNext = 44287i32;
                } else if (__value__ == (44286i32)) {
                    {
                        final __tmp__0 = 0i32;
                        final __tmp__1 = stdgo._internal.internal.cpu.Cpu__options._options[(0i32 : stdgo.GoInt)];
                        _i_44085_0 = __tmp__0;
                        _o_44080 = __tmp__1;
                    };
                    _gotoNext = 44287i32;
                } else if (__value__ == (44287i32)) {
                    if (_i_44085_0 < (stdgo._internal.internal.cpu.Cpu__options._options.length)) {
                        _gotoNext = 44099i32;
                    } else {
                        _gotoNext = 44289i32;
                    };
                } else if (__value__ == (44289i32)) {
                    _gotoNext = -1i32;
                };
            };
        };
    }
