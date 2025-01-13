package stdgo._internal.internal.cpu;
function _processOptions(_env:stdgo.GoString):Void {
        var _o_240648:stdgo._internal.internal.cpu.Cpu_T_option.T_option = ({} : stdgo._internal.internal.cpu.Cpu_T_option.T_option);
        var _i_240436:stdgo.GoInt = (0 : stdgo.GoInt);
        var _i_240318:stdgo.GoInt = (0 : stdgo.GoInt);
        var _enable_240078:Bool = false;
        var _field_239704:stdgo.GoString = ("" : stdgo.GoString);
        var _fieldBreak = false;
        var _i_240653_0:stdgo.GoInt = (0 : stdgo.GoInt);
        var _value_240017:stdgo.GoString = ("" : stdgo.GoString);
        var _key_240012:stdgo.GoString = ("" : stdgo.GoString);
        var _i_239718:stdgo.GoInt = (0 : stdgo.GoInt);
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    _gotoNext = 239678i32;
                } else if (__value__ == (239678i32)) {
                    var __blank__ = 0i32;
                    _fieldBreak = false;
                    _gotoNext = 239686i32;
                } else if (__value__ == (239686i32)) {
                    if (!_fieldBreak && (_env != stdgo.Go.str())) {
                        _gotoNext = 239700i32;
                    } else {
                        _gotoNext = 240641i32;
                    };
                } else if (__value__ == (239700i32)) {
                    _field_239704 = stdgo.Go.str()?.__copy__();
                    _i_239718 = stdgo._internal.internal.cpu.Cpu__indexByte._indexByte(_env?.__copy__(), (44 : stdgo.GoUInt8));
                    if ((_i_239718 < (0 : stdgo.GoInt) : Bool)) {
                        _gotoNext = 239754i32;
                    } else {
                        _gotoNext = 239789i32;
                    };
                } else if (__value__ == (239754i32)) {
                    {
                        final __tmp__0 = _env?.__copy__();
                        final __tmp__1 = stdgo.Go.str()?.__copy__();
                        _field_239704 = __tmp__0;
                        _env = __tmp__1;
                    };
                    _gotoNext = 239832i32;
                } else if (__value__ == (239789i32)) {
                    _gotoNext = 239789i32;
                    {
                        final __tmp__0 = (_env.__slice__(0, _i_239718) : stdgo.GoString)?.__copy__();
                        final __tmp__1 = (_env.__slice__((_i_239718 + (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        _field_239704 = __tmp__0;
                        _env = __tmp__1;
                    };
                    var __blank__ = 0i32;
                    _gotoNext = 239832i32;
                } else if (__value__ == (239832i32)) {
                    if ((((_field_239704.length) < (4 : stdgo.GoInt) : Bool) || ((_field_239704.__slice__(0, (4 : stdgo.GoInt)) : stdgo.GoString) != ("cpu." : stdgo.GoString)) : Bool)) {
                        _gotoNext = 239873i32;
                    } else {
                        _gotoNext = 239893i32;
                    };
                } else if (__value__ == (239873i32)) {
                    var __blank__ = 0i32;
                    _gotoNext = 239686i32;
                } else if (__value__ == (239893i32)) {
                    _i_239718 = stdgo._internal.internal.cpu.Cpu__indexByte._indexByte(_field_239704?.__copy__(), (61 : stdgo.GoUInt8));
                    if ((_i_239718 < (0 : stdgo.GoInt) : Bool)) {
                        _gotoNext = 239930i32;
                    } else {
                        _gotoNext = 240012i32;
                    };
                } else if (__value__ == (239930i32)) {
                    stdgo.Go.print(("GODEBUG: no value specified for \"" : stdgo.GoString), _field_239704, ("\"\n" : stdgo.GoString));
                    var __blank__ = 0i32;
                    _gotoNext = 239686i32;
                } else if (__value__ == (240012i32)) {
                    {
                        final __tmp__0 = (_field_239704.__slice__((4 : stdgo.GoInt), _i_239718) : stdgo.GoString)?.__copy__();
                        final __tmp__1 = (_field_239704.__slice__((_i_239718 + (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        _key_240012 = __tmp__0;
                        _value_240017 = __tmp__1;
                    };
                    _gotoNext = 240092i32;
                } else if (__value__ == (240092i32)) {
                    {
                        final __value__ = _value_240017;
                        if (__value__ == (("on" : stdgo.GoString))) {
                            _gotoNext = 240109i32;
                        } else if (__value__ == (("off" : stdgo.GoString))) {
                            _gotoNext = 240139i32;
                        } else {
                            _gotoNext = 240171i32;
                        };
                    };
                } else if (__value__ == (240109i32)) {
                    _enable_240078 = true;
                    _gotoNext = 240293i32;
                } else if (__value__ == (240139i32)) {
                    _enable_240078 = false;
                    _gotoNext = 240293i32;
                } else if (__value__ == (240171i32)) {
                    stdgo.Go.print(("GODEBUG: value \"" : stdgo.GoString), _value_240017, ("\" not supported for cpu option \"" : stdgo.GoString), _key_240012, ("\"\n" : stdgo.GoString));
                    _gotoNext = 239686i32;
                } else if (__value__ == (240293i32)) {
                    if (_key_240012 == (("all" : stdgo.GoString))) {
                        _gotoNext = 240309i32;
                    } else {
                        _gotoNext = 240432i32;
                    };
                } else if (__value__ == (240309i32)) {
                    if ((0i32 : stdgo.GoInt) < (stdgo._internal.internal.cpu.Cpu__options._options.length)) {
                        _gotoNext = 240404i32;
                    } else {
                        _gotoNext = 240410i32;
                    };
                } else if (__value__ == (240337i32)) {
                    stdgo._internal.internal.cpu.Cpu__options._options[(_i_240318 : stdgo.GoInt)].specified = true;
                    stdgo._internal.internal.cpu.Cpu__options._options[(_i_240318 : stdgo.GoInt)].enable = _enable_240078;
                    _i_240318++;
                    _gotoNext = 240405i32;
                } else if (__value__ == (240404i32)) {
                    _i_240318 = 0i32;
                    _gotoNext = 240405i32;
                } else if (__value__ == (240405i32)) {
                    if (_i_240318 < (stdgo._internal.internal.cpu.Cpu__options._options.length)) {
                        _gotoNext = 240337i32;
                    } else {
                        _gotoNext = 240410i32;
                    };
                } else if (__value__ == (240410i32)) {
                    _gotoNext = 239686i32;
                } else if (__value__ == (240432i32)) {
                    if ((0i32 : stdgo.GoInt) < (stdgo._internal.internal.cpu.Cpu__options._options.length)) {
                        _gotoNext = 240576i32;
                    } else {
                        _gotoNext = 240582i32;
                    };
                } else if (__value__ == (240436i32)) {
                    _i_240436++;
                    _gotoNext = 240577i32;
                } else if (__value__ == (240455i32)) {
                    if (stdgo._internal.internal.cpu.Cpu__options._options[(_i_240436 : stdgo.GoInt)].name == (_key_240012)) {
                        _gotoNext = 240486i32;
                    } else {
                        _gotoNext = 240436i32;
                    };
                } else if (__value__ == (240486i32)) {
                    stdgo._internal.internal.cpu.Cpu__options._options[(_i_240436 : stdgo.GoInt)].specified = true;
                    stdgo._internal.internal.cpu.Cpu__options._options[(_i_240436 : stdgo.GoInt)].enable = _enable_240078;
                    _gotoNext = 239686i32;
                } else if (__value__ == (240576i32)) {
                    _i_240436 = 0i32;
                    _gotoNext = 240577i32;
                } else if (__value__ == (240577i32)) {
                    if (_i_240436 < (stdgo._internal.internal.cpu.Cpu__options._options.length)) {
                        _gotoNext = 240455i32;
                    } else {
                        _gotoNext = 240582i32;
                    };
                } else if (__value__ == (240582i32)) {
                    stdgo.Go.print(("GODEBUG: unknown cpu feature \"" : stdgo.GoString), _key_240012, ("\"\n" : stdgo.GoString));
                    _gotoNext = 239686i32;
                } else if (__value__ == (240641i32)) {
                    if ((0i32 : stdgo.GoInt) < (stdgo._internal.internal.cpu.Cpu__options._options.length)) {
                        _gotoNext = 240854i32;
                    } else {
                        _gotoNext = 240857i32;
                    };
                } else if (__value__ == (240667i32)) {
                    _o_240648 = stdgo._internal.internal.cpu.Cpu__options._options[(_i_240653_0 : stdgo.GoInt)];
                    if (!_o_240648.specified) {
                        _gotoNext = 240687i32;
                    } else {
                        _gotoNext = 240708i32;
                    };
                } else if (__value__ == (240687i32)) {
                    _i_240653_0++;
                    _gotoNext = 240855i32;
                } else if (__value__ == (240708i32)) {
                    if ((_o_240648.enable && !_o_240648.feature.value : Bool)) {
                        _gotoNext = 240735i32;
                    } else {
                        _gotoNext = 240832i32;
                    };
                } else if (__value__ == (240735i32)) {
                    stdgo.Go.print(("GODEBUG: can not enable \"" : stdgo.GoString), _o_240648.name, ("\", missing CPU support\n" : stdgo.GoString));
                    _i_240653_0++;
                    _gotoNext = 240855i32;
                } else if (__value__ == (240832i32)) {
                    _o_240648.feature.value = _o_240648.enable;
                    _i_240653_0++;
                    _gotoNext = 240855i32;
                } else if (__value__ == (240854i32)) {
                    {
                        final __tmp__0 = 0i32;
                        final __tmp__1 = stdgo._internal.internal.cpu.Cpu__options._options[(0i32 : stdgo.GoInt)];
                        _i_240653_0 = __tmp__0;
                        _o_240648 = __tmp__1;
                    };
                    _gotoNext = 240855i32;
                } else if (__value__ == (240855i32)) {
                    if (_i_240653_0 < (stdgo._internal.internal.cpu.Cpu__options._options.length)) {
                        _gotoNext = 240667i32;
                    } else {
                        _gotoNext = 240857i32;
                    };
                } else if (__value__ == (240857i32)) {
                    _gotoNext = -1i32;
                };
            };
        };
    }
