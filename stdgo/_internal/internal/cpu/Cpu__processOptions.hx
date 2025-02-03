package stdgo._internal.internal.cpu;
function _processOptions(_env:stdgo.GoString):Void {
        var _enable_233741:Bool = false;
        var _value_233680:stdgo.GoString = ("" : stdgo.GoString);
        var _key_233675:stdgo.GoString = ("" : stdgo.GoString);
        var _i_233381:stdgo.GoInt = (0 : stdgo.GoInt);
        var _field_233367:stdgo.GoString = ("" : stdgo.GoString);
        var _fieldBreak = false;
        var _o_234311:stdgo._internal.internal.cpu.Cpu_T_option.T_option = ({} : stdgo._internal.internal.cpu.Cpu_T_option.T_option);
        var _i_234316_0:stdgo.GoInt = (0 : stdgo.GoInt);
        var _i_234099:stdgo.GoInt = (0 : stdgo.GoInt);
        var _i_233981:stdgo.GoInt = (0 : stdgo.GoInt);
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    _gotoNext = 233341i32;
                } else if (__value__ == (233341i32)) {
                    var __blank__ = 0i32;
                    _fieldBreak = false;
                    _gotoNext = 233349i32;
                } else if (__value__ == (233349i32)) {
                    if (!_fieldBreak && (_env != (stdgo.Go.str() : stdgo.GoString))) {
                        _gotoNext = 233363i32;
                    } else {
                        _gotoNext = 234304i32;
                    };
                } else if (__value__ == (233363i32)) {
                    _field_233367 = (stdgo.Go.str() : stdgo.GoString)?.__copy__();
                    _i_233381 = stdgo._internal.internal.cpu.Cpu__indexByte._indexByte(_env?.__copy__(), (44 : stdgo.GoUInt8));
                    if ((_i_233381 < (0 : stdgo.GoInt) : Bool)) {
                        _gotoNext = 233417i32;
                    } else {
                        _gotoNext = 233452i32;
                    };
                } else if (__value__ == (233417i32)) {
                    {
                        final __tmp__0 = _env?.__copy__();
                        final __tmp__1 = (stdgo.Go.str() : stdgo.GoString)?.__copy__();
                        _field_233367 = __tmp__0;
                        _env = __tmp__1;
                    };
                    _gotoNext = 233495i32;
                } else if (__value__ == (233452i32)) {
                    _gotoNext = 233452i32;
                    {
                        final __tmp__0 = (_env.__slice__(0, _i_233381) : stdgo.GoString)?.__copy__();
                        final __tmp__1 = (_env.__slice__((_i_233381 + (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        _field_233367 = __tmp__0;
                        _env = __tmp__1;
                    };
                    var __blank__ = 0i32;
                    _gotoNext = 233495i32;
                } else if (__value__ == (233495i32)) {
                    if ((((_field_233367.length) < (4 : stdgo.GoInt) : Bool) || ((_field_233367.__slice__(0, (4 : stdgo.GoInt)) : stdgo.GoString) != ("cpu." : stdgo.GoString)) : Bool)) {
                        _gotoNext = 233536i32;
                    } else {
                        _gotoNext = 233556i32;
                    };
                } else if (__value__ == (233536i32)) {
                    var __blank__ = 0i32;
                    _gotoNext = 233349i32;
                } else if (__value__ == (233556i32)) {
                    _i_233381 = stdgo._internal.internal.cpu.Cpu__indexByte._indexByte(_field_233367?.__copy__(), (61 : stdgo.GoUInt8));
                    if ((_i_233381 < (0 : stdgo.GoInt) : Bool)) {
                        _gotoNext = 233593i32;
                    } else {
                        _gotoNext = 233675i32;
                    };
                } else if (__value__ == (233593i32)) {
                    stdgo.Go.print(("GODEBUG: no value specified for \"" : stdgo.GoString), _field_233367, ("\"\n" : stdgo.GoString));
                    var __blank__ = 0i32;
                    _gotoNext = 233349i32;
                } else if (__value__ == (233675i32)) {
                    {
                        final __tmp__0 = (_field_233367.__slice__((4 : stdgo.GoInt), _i_233381) : stdgo.GoString)?.__copy__();
                        final __tmp__1 = (_field_233367.__slice__((_i_233381 + (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        _key_233675 = __tmp__0;
                        _value_233680 = __tmp__1;
                    };
                    _gotoNext = 233755i32;
                } else if (__value__ == (233755i32)) {
                    {
                        final __value__ = _value_233680;
                        if (__value__ == (("on" : stdgo.GoString))) {
                            _gotoNext = 233772i32;
                        } else if (__value__ == (("off" : stdgo.GoString))) {
                            _gotoNext = 233802i32;
                        } else {
                            _gotoNext = 233834i32;
                        };
                    };
                } else if (__value__ == (233772i32)) {
                    _enable_233741 = true;
                    _gotoNext = 233956i32;
                } else if (__value__ == (233802i32)) {
                    _enable_233741 = false;
                    _gotoNext = 233956i32;
                } else if (__value__ == (233834i32)) {
                    stdgo.Go.print(("GODEBUG: value \"" : stdgo.GoString), _value_233680, ("\" not supported for cpu option \"" : stdgo.GoString), _key_233675, ("\"\n" : stdgo.GoString));
                    _gotoNext = 233349i32;
                } else if (__value__ == (233956i32)) {
                    if (_key_233675 == (("all" : stdgo.GoString))) {
                        _gotoNext = 233972i32;
                    } else {
                        _gotoNext = 234095i32;
                    };
                } else if (__value__ == (233972i32)) {
                    if ((0i32 : stdgo.GoInt) < (stdgo._internal.internal.cpu.Cpu__options._options.length)) {
                        _gotoNext = 234067i32;
                    } else {
                        _gotoNext = 234073i32;
                    };
                } else if (__value__ == (234000i32)) {
                    stdgo._internal.internal.cpu.Cpu__options._options[(_i_233981 : stdgo.GoInt)].specified = true;
                    stdgo._internal.internal.cpu.Cpu__options._options[(_i_233981 : stdgo.GoInt)].enable = _enable_233741;
                    _i_233981++;
                    _gotoNext = 234068i32;
                } else if (__value__ == (234067i32)) {
                    _i_233981 = 0i32;
                    _gotoNext = 234068i32;
                } else if (__value__ == (234068i32)) {
                    if (_i_233981 < (stdgo._internal.internal.cpu.Cpu__options._options.length)) {
                        _gotoNext = 234000i32;
                    } else {
                        _gotoNext = 234073i32;
                    };
                } else if (__value__ == (234073i32)) {
                    _gotoNext = 233349i32;
                } else if (__value__ == (234095i32)) {
                    if ((0i32 : stdgo.GoInt) < (stdgo._internal.internal.cpu.Cpu__options._options.length)) {
                        _gotoNext = 234239i32;
                    } else {
                        _gotoNext = 234245i32;
                    };
                } else if (__value__ == (234099i32)) {
                    _i_234099++;
                    _gotoNext = 234240i32;
                } else if (__value__ == (234118i32)) {
                    if (stdgo._internal.internal.cpu.Cpu__options._options[(_i_234099 : stdgo.GoInt)].name == (_key_233675)) {
                        _gotoNext = 234149i32;
                    } else {
                        _gotoNext = 234099i32;
                    };
                } else if (__value__ == (234149i32)) {
                    stdgo._internal.internal.cpu.Cpu__options._options[(_i_234099 : stdgo.GoInt)].specified = true;
                    stdgo._internal.internal.cpu.Cpu__options._options[(_i_234099 : stdgo.GoInt)].enable = _enable_233741;
                    _gotoNext = 233349i32;
                } else if (__value__ == (234239i32)) {
                    _i_234099 = 0i32;
                    _gotoNext = 234240i32;
                } else if (__value__ == (234240i32)) {
                    if (_i_234099 < (stdgo._internal.internal.cpu.Cpu__options._options.length)) {
                        _gotoNext = 234118i32;
                    } else {
                        _gotoNext = 234245i32;
                    };
                } else if (__value__ == (234245i32)) {
                    stdgo.Go.print(("GODEBUG: unknown cpu feature \"" : stdgo.GoString), _key_233675, ("\"\n" : stdgo.GoString));
                    _gotoNext = 233349i32;
                } else if (__value__ == (234304i32)) {
                    if ((0i32 : stdgo.GoInt) < (stdgo._internal.internal.cpu.Cpu__options._options.length)) {
                        _gotoNext = 234517i32;
                    } else {
                        _gotoNext = 234520i32;
                    };
                } else if (__value__ == (234330i32)) {
                    _o_234311 = stdgo._internal.internal.cpu.Cpu__options._options[(_i_234316_0 : stdgo.GoInt)];
                    if (!_o_234311.specified) {
                        _gotoNext = 234350i32;
                    } else {
                        _gotoNext = 234371i32;
                    };
                } else if (__value__ == (234350i32)) {
                    _i_234316_0++;
                    _gotoNext = 234518i32;
                } else if (__value__ == (234371i32)) {
                    if ((_o_234311.enable && !_o_234311.feature.value : Bool)) {
                        _gotoNext = 234398i32;
                    } else {
                        _gotoNext = 234495i32;
                    };
                } else if (__value__ == (234398i32)) {
                    stdgo.Go.print(("GODEBUG: can not enable \"" : stdgo.GoString), _o_234311.name, ("\", missing CPU support\n" : stdgo.GoString));
                    _i_234316_0++;
                    _gotoNext = 234518i32;
                } else if (__value__ == (234495i32)) {
                    _o_234311.feature.value = _o_234311.enable;
                    _i_234316_0++;
                    _gotoNext = 234518i32;
                } else if (__value__ == (234517i32)) {
                    {
                        final __tmp__0 = 0i32;
                        final __tmp__1 = stdgo._internal.internal.cpu.Cpu__options._options[(0i32 : stdgo.GoInt)];
                        _i_234316_0 = __tmp__0;
                        _o_234311 = __tmp__1;
                    };
                    _gotoNext = 234518i32;
                } else if (__value__ == (234518i32)) {
                    if (_i_234316_0 < (stdgo._internal.internal.cpu.Cpu__options._options.length)) {
                        _gotoNext = 234330i32;
                    } else {
                        _gotoNext = 234520i32;
                    };
                } else if (__value__ == (234520i32)) {
                    _gotoNext = -1i32;
                };
            };
        };
    }
