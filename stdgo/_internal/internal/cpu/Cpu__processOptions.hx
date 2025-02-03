package stdgo._internal.internal.cpu;
function _processOptions(_env:stdgo.GoString):Void {
        var _value_253380:stdgo.GoString = ("" : stdgo.GoString);
        var _key_253375:stdgo.GoString = ("" : stdgo.GoString);
        var _field_253067:stdgo.GoString = ("" : stdgo.GoString);
        var _o_254011:stdgo._internal.internal.cpu.Cpu_T_option.T_option = ({} : stdgo._internal.internal.cpu.Cpu_T_option.T_option);
        var _i_253799:stdgo.GoInt = (0 : stdgo.GoInt);
        var _enable_253441:Bool = false;
        var _i_253681:stdgo.GoInt = (0 : stdgo.GoInt);
        var _i_253081:stdgo.GoInt = (0 : stdgo.GoInt);
        var _fieldBreak = false;
        var _i_254016_0:stdgo.GoInt = (0 : stdgo.GoInt);
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    _gotoNext = 253041i32;
                } else if (__value__ == (253041i32)) {
                    var __blank__ = 0i32;
                    _fieldBreak = false;
                    _gotoNext = 253049i32;
                } else if (__value__ == (253049i32)) {
                    if (!_fieldBreak && (_env != (stdgo.Go.str() : stdgo.GoString))) {
                        _gotoNext = 253063i32;
                    } else {
                        _gotoNext = 254004i32;
                    };
                } else if (__value__ == (253063i32)) {
                    _field_253067 = (stdgo.Go.str() : stdgo.GoString)?.__copy__();
                    _i_253081 = stdgo._internal.internal.cpu.Cpu__indexByte._indexByte(_env?.__copy__(), (44 : stdgo.GoUInt8));
                    if ((_i_253081 < (0 : stdgo.GoInt) : Bool)) {
                        _gotoNext = 253117i32;
                    } else {
                        _gotoNext = 253152i32;
                    };
                } else if (__value__ == (253117i32)) {
                    {
                        final __tmp__0 = _env?.__copy__();
                        final __tmp__1 = (stdgo.Go.str() : stdgo.GoString)?.__copy__();
                        _field_253067 = __tmp__0;
                        _env = __tmp__1;
                    };
                    _gotoNext = 253195i32;
                } else if (__value__ == (253152i32)) {
                    _gotoNext = 253152i32;
                    {
                        final __tmp__0 = (_env.__slice__(0, _i_253081) : stdgo.GoString)?.__copy__();
                        final __tmp__1 = (_env.__slice__((_i_253081 + (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        _field_253067 = __tmp__0;
                        _env = __tmp__1;
                    };
                    var __blank__ = 0i32;
                    _gotoNext = 253195i32;
                } else if (__value__ == (253195i32)) {
                    if ((((_field_253067.length) < (4 : stdgo.GoInt) : Bool) || ((_field_253067.__slice__(0, (4 : stdgo.GoInt)) : stdgo.GoString) != ("cpu." : stdgo.GoString)) : Bool)) {
                        _gotoNext = 253236i32;
                    } else {
                        _gotoNext = 253256i32;
                    };
                } else if (__value__ == (253236i32)) {
                    var __blank__ = 0i32;
                    _gotoNext = 253049i32;
                } else if (__value__ == (253256i32)) {
                    _i_253081 = stdgo._internal.internal.cpu.Cpu__indexByte._indexByte(_field_253067?.__copy__(), (61 : stdgo.GoUInt8));
                    if ((_i_253081 < (0 : stdgo.GoInt) : Bool)) {
                        _gotoNext = 253293i32;
                    } else {
                        _gotoNext = 253375i32;
                    };
                } else if (__value__ == (253293i32)) {
                    stdgo.Go.print(("GODEBUG: no value specified for \"" : stdgo.GoString), _field_253067, ("\"\n" : stdgo.GoString));
                    var __blank__ = 0i32;
                    _gotoNext = 253049i32;
                } else if (__value__ == (253375i32)) {
                    {
                        final __tmp__0 = (_field_253067.__slice__((4 : stdgo.GoInt), _i_253081) : stdgo.GoString)?.__copy__();
                        final __tmp__1 = (_field_253067.__slice__((_i_253081 + (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        _key_253375 = __tmp__0;
                        _value_253380 = __tmp__1;
                    };
                    _gotoNext = 253455i32;
                } else if (__value__ == (253455i32)) {
                    {
                        final __value__ = _value_253380;
                        if (__value__ == (("on" : stdgo.GoString))) {
                            _gotoNext = 253472i32;
                        } else if (__value__ == (("off" : stdgo.GoString))) {
                            _gotoNext = 253502i32;
                        } else {
                            _gotoNext = 253534i32;
                        };
                    };
                } else if (__value__ == (253472i32)) {
                    _enable_253441 = true;
                    _gotoNext = 253656i32;
                } else if (__value__ == (253502i32)) {
                    _enable_253441 = false;
                    _gotoNext = 253656i32;
                } else if (__value__ == (253534i32)) {
                    stdgo.Go.print(("GODEBUG: value \"" : stdgo.GoString), _value_253380, ("\" not supported for cpu option \"" : stdgo.GoString), _key_253375, ("\"\n" : stdgo.GoString));
                    _gotoNext = 253049i32;
                } else if (__value__ == (253656i32)) {
                    if (_key_253375 == (("all" : stdgo.GoString))) {
                        _gotoNext = 253672i32;
                    } else {
                        _gotoNext = 253795i32;
                    };
                } else if (__value__ == (253672i32)) {
                    if ((0i32 : stdgo.GoInt) < (stdgo._internal.internal.cpu.Cpu__options._options.length)) {
                        _gotoNext = 253767i32;
                    } else {
                        _gotoNext = 253773i32;
                    };
                } else if (__value__ == (253700i32)) {
                    stdgo._internal.internal.cpu.Cpu__options._options[(_i_253681 : stdgo.GoInt)].specified = true;
                    stdgo._internal.internal.cpu.Cpu__options._options[(_i_253681 : stdgo.GoInt)].enable = _enable_253441;
                    _i_253681++;
                    _gotoNext = 253768i32;
                } else if (__value__ == (253767i32)) {
                    _i_253681 = 0i32;
                    _gotoNext = 253768i32;
                } else if (__value__ == (253768i32)) {
                    if (_i_253681 < (stdgo._internal.internal.cpu.Cpu__options._options.length)) {
                        _gotoNext = 253700i32;
                    } else {
                        _gotoNext = 253773i32;
                    };
                } else if (__value__ == (253773i32)) {
                    _gotoNext = 253049i32;
                } else if (__value__ == (253795i32)) {
                    if ((0i32 : stdgo.GoInt) < (stdgo._internal.internal.cpu.Cpu__options._options.length)) {
                        _gotoNext = 253939i32;
                    } else {
                        _gotoNext = 253945i32;
                    };
                } else if (__value__ == (253799i32)) {
                    _i_253799++;
                    _gotoNext = 253940i32;
                } else if (__value__ == (253818i32)) {
                    if (stdgo._internal.internal.cpu.Cpu__options._options[(_i_253799 : stdgo.GoInt)].name == (_key_253375)) {
                        _gotoNext = 253849i32;
                    } else {
                        _gotoNext = 253799i32;
                    };
                } else if (__value__ == (253849i32)) {
                    stdgo._internal.internal.cpu.Cpu__options._options[(_i_253799 : stdgo.GoInt)].specified = true;
                    stdgo._internal.internal.cpu.Cpu__options._options[(_i_253799 : stdgo.GoInt)].enable = _enable_253441;
                    _gotoNext = 253049i32;
                } else if (__value__ == (253939i32)) {
                    _i_253799 = 0i32;
                    _gotoNext = 253940i32;
                } else if (__value__ == (253940i32)) {
                    if (_i_253799 < (stdgo._internal.internal.cpu.Cpu__options._options.length)) {
                        _gotoNext = 253818i32;
                    } else {
                        _gotoNext = 253945i32;
                    };
                } else if (__value__ == (253945i32)) {
                    stdgo.Go.print(("GODEBUG: unknown cpu feature \"" : stdgo.GoString), _key_253375, ("\"\n" : stdgo.GoString));
                    _gotoNext = 253049i32;
                } else if (__value__ == (254004i32)) {
                    if ((0i32 : stdgo.GoInt) < (stdgo._internal.internal.cpu.Cpu__options._options.length)) {
                        _gotoNext = 254217i32;
                    } else {
                        _gotoNext = 254220i32;
                    };
                } else if (__value__ == (254030i32)) {
                    _o_254011 = stdgo._internal.internal.cpu.Cpu__options._options[(_i_254016_0 : stdgo.GoInt)];
                    if (!_o_254011.specified) {
                        _gotoNext = 254050i32;
                    } else {
                        _gotoNext = 254071i32;
                    };
                } else if (__value__ == (254050i32)) {
                    _i_254016_0++;
                    _gotoNext = 254218i32;
                } else if (__value__ == (254071i32)) {
                    if ((_o_254011.enable && !_o_254011.feature.value : Bool)) {
                        _gotoNext = 254098i32;
                    } else {
                        _gotoNext = 254195i32;
                    };
                } else if (__value__ == (254098i32)) {
                    stdgo.Go.print(("GODEBUG: can not enable \"" : stdgo.GoString), _o_254011.name, ("\", missing CPU support\n" : stdgo.GoString));
                    _i_254016_0++;
                    _gotoNext = 254218i32;
                } else if (__value__ == (254195i32)) {
                    _o_254011.feature.value = _o_254011.enable;
                    _i_254016_0++;
                    _gotoNext = 254218i32;
                } else if (__value__ == (254217i32)) {
                    {
                        final __tmp__0 = 0i32;
                        final __tmp__1 = stdgo._internal.internal.cpu.Cpu__options._options[(0i32 : stdgo.GoInt)];
                        _i_254016_0 = __tmp__0;
                        _o_254011 = __tmp__1;
                    };
                    _gotoNext = 254218i32;
                } else if (__value__ == (254218i32)) {
                    if (_i_254016_0 < (stdgo._internal.internal.cpu.Cpu__options._options.length)) {
                        _gotoNext = 254030i32;
                    } else {
                        _gotoNext = 254220i32;
                    };
                } else if (__value__ == (254220i32)) {
                    _gotoNext = -1i32;
                };
            };
        };
    }
