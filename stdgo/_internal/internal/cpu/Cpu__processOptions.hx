package stdgo._internal.internal.cpu;
function _processOptions(_env:stdgo.GoString):Void {
        var _enable_227352:Bool = false;
        var _i_226992:stdgo.GoInt = (0 : stdgo.GoInt);
        var _fieldBreak = false;
        var _value_227291:stdgo.GoString = ("" : stdgo.GoString);
        var _key_227286:stdgo.GoString = ("" : stdgo.GoString);
        var _field_226978:stdgo.GoString = ("" : stdgo.GoString);
        var _o_227922:stdgo._internal.internal.cpu.Cpu_T_option.T_option = ({} : stdgo._internal.internal.cpu.Cpu_T_option.T_option);
        var _i_227927_0:stdgo.GoInt = (0 : stdgo.GoInt);
        var _i_227710:stdgo.GoInt = (0 : stdgo.GoInt);
        var _i_227592:stdgo.GoInt = (0 : stdgo.GoInt);
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    _gotoNext = 226952i32;
                } else if (__value__ == (226952i32)) {
                    var __blank__ = 0i32;
                    _fieldBreak = false;
                    _gotoNext = 226960i32;
                } else if (__value__ == (226960i32)) {
                    if (!_fieldBreak && (_env != stdgo.Go.str())) {
                        _gotoNext = 226974i32;
                    } else {
                        _gotoNext = 227915i32;
                    };
                } else if (__value__ == (226974i32)) {
                    _field_226978 = stdgo.Go.str()?.__copy__();
                    _i_226992 = stdgo._internal.internal.cpu.Cpu__indexByte._indexByte(_env?.__copy__(), (44 : stdgo.GoUInt8));
                    if ((_i_226992 < (0 : stdgo.GoInt) : Bool)) {
                        _gotoNext = 227028i32;
                    } else {
                        _gotoNext = 227063i32;
                    };
                } else if (__value__ == (227028i32)) {
                    {
                        final __tmp__0 = _env?.__copy__();
                        final __tmp__1 = stdgo.Go.str()?.__copy__();
                        _field_226978 = __tmp__0;
                        _env = __tmp__1;
                    };
                    _gotoNext = 227106i32;
                } else if (__value__ == (227063i32)) {
                    _gotoNext = 227063i32;
                    {
                        final __tmp__0 = (_env.__slice__(0, _i_226992) : stdgo.GoString)?.__copy__();
                        final __tmp__1 = (_env.__slice__((_i_226992 + (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        _field_226978 = __tmp__0;
                        _env = __tmp__1;
                    };
                    var __blank__ = 0i32;
                    _gotoNext = 227106i32;
                } else if (__value__ == (227106i32)) {
                    if ((((_field_226978.length) < (4 : stdgo.GoInt) : Bool) || ((_field_226978.__slice__(0, (4 : stdgo.GoInt)) : stdgo.GoString) != ("cpu." : stdgo.GoString)) : Bool)) {
                        _gotoNext = 227147i32;
                    } else {
                        _gotoNext = 227167i32;
                    };
                } else if (__value__ == (227147i32)) {
                    var __blank__ = 0i32;
                    _gotoNext = 226960i32;
                } else if (__value__ == (227167i32)) {
                    _i_226992 = stdgo._internal.internal.cpu.Cpu__indexByte._indexByte(_field_226978?.__copy__(), (61 : stdgo.GoUInt8));
                    if ((_i_226992 < (0 : stdgo.GoInt) : Bool)) {
                        _gotoNext = 227204i32;
                    } else {
                        _gotoNext = 227286i32;
                    };
                } else if (__value__ == (227204i32)) {
                    stdgo.Go.print(("GODEBUG: no value specified for \"" : stdgo.GoString), _field_226978, ("\"\n" : stdgo.GoString));
                    var __blank__ = 0i32;
                    _gotoNext = 226960i32;
                } else if (__value__ == (227286i32)) {
                    {
                        final __tmp__0 = (_field_226978.__slice__((4 : stdgo.GoInt), _i_226992) : stdgo.GoString)?.__copy__();
                        final __tmp__1 = (_field_226978.__slice__((_i_226992 + (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        _key_227286 = __tmp__0;
                        _value_227291 = __tmp__1;
                    };
                    _gotoNext = 227366i32;
                } else if (__value__ == (227366i32)) {
                    {
                        final __value__ = _value_227291;
                        if (__value__ == (("on" : stdgo.GoString))) {
                            _gotoNext = 227383i32;
                        } else if (__value__ == (("off" : stdgo.GoString))) {
                            _gotoNext = 227413i32;
                        } else {
                            _gotoNext = 227445i32;
                        };
                    };
                } else if (__value__ == (227383i32)) {
                    _enable_227352 = true;
                    _gotoNext = 227567i32;
                } else if (__value__ == (227413i32)) {
                    _enable_227352 = false;
                    _gotoNext = 227567i32;
                } else if (__value__ == (227445i32)) {
                    stdgo.Go.print(("GODEBUG: value \"" : stdgo.GoString), _value_227291, ("\" not supported for cpu option \"" : stdgo.GoString), _key_227286, ("\"\n" : stdgo.GoString));
                    _gotoNext = 226960i32;
                } else if (__value__ == (227567i32)) {
                    if (_key_227286 == (("all" : stdgo.GoString))) {
                        _gotoNext = 227583i32;
                    } else {
                        _gotoNext = 227706i32;
                    };
                } else if (__value__ == (227583i32)) {
                    if ((0i32 : stdgo.GoInt) < (stdgo._internal.internal.cpu.Cpu__options._options.length)) {
                        _gotoNext = 227678i32;
                    } else {
                        _gotoNext = 227684i32;
                    };
                } else if (__value__ == (227611i32)) {
                    stdgo._internal.internal.cpu.Cpu__options._options[(_i_227592 : stdgo.GoInt)].specified = true;
                    stdgo._internal.internal.cpu.Cpu__options._options[(_i_227592 : stdgo.GoInt)].enable = _enable_227352;
                    _i_227592++;
                    _gotoNext = 227679i32;
                } else if (__value__ == (227678i32)) {
                    _i_227592 = 0i32;
                    _gotoNext = 227679i32;
                } else if (__value__ == (227679i32)) {
                    if (_i_227592 < (stdgo._internal.internal.cpu.Cpu__options._options.length)) {
                        _gotoNext = 227611i32;
                    } else {
                        _gotoNext = 227684i32;
                    };
                } else if (__value__ == (227684i32)) {
                    _gotoNext = 226960i32;
                } else if (__value__ == (227706i32)) {
                    if ((0i32 : stdgo.GoInt) < (stdgo._internal.internal.cpu.Cpu__options._options.length)) {
                        _gotoNext = 227850i32;
                    } else {
                        _gotoNext = 227856i32;
                    };
                } else if (__value__ == (227710i32)) {
                    _i_227710++;
                    _gotoNext = 227851i32;
                } else if (__value__ == (227729i32)) {
                    if (stdgo._internal.internal.cpu.Cpu__options._options[(_i_227710 : stdgo.GoInt)].name == (_key_227286)) {
                        _gotoNext = 227760i32;
                    } else {
                        _gotoNext = 227710i32;
                    };
                } else if (__value__ == (227760i32)) {
                    stdgo._internal.internal.cpu.Cpu__options._options[(_i_227710 : stdgo.GoInt)].specified = true;
                    stdgo._internal.internal.cpu.Cpu__options._options[(_i_227710 : stdgo.GoInt)].enable = _enable_227352;
                    _gotoNext = 226960i32;
                } else if (__value__ == (227850i32)) {
                    _i_227710 = 0i32;
                    _gotoNext = 227851i32;
                } else if (__value__ == (227851i32)) {
                    if (_i_227710 < (stdgo._internal.internal.cpu.Cpu__options._options.length)) {
                        _gotoNext = 227729i32;
                    } else {
                        _gotoNext = 227856i32;
                    };
                } else if (__value__ == (227856i32)) {
                    stdgo.Go.print(("GODEBUG: unknown cpu feature \"" : stdgo.GoString), _key_227286, ("\"\n" : stdgo.GoString));
                    _gotoNext = 226960i32;
                } else if (__value__ == (227915i32)) {
                    if ((0i32 : stdgo.GoInt) < (stdgo._internal.internal.cpu.Cpu__options._options.length)) {
                        _gotoNext = 228128i32;
                    } else {
                        _gotoNext = 228131i32;
                    };
                } else if (__value__ == (227941i32)) {
                    _o_227922 = stdgo._internal.internal.cpu.Cpu__options._options[(_i_227927_0 : stdgo.GoInt)];
                    if (!_o_227922.specified) {
                        _gotoNext = 227961i32;
                    } else {
                        _gotoNext = 227982i32;
                    };
                } else if (__value__ == (227961i32)) {
                    _i_227927_0++;
                    _gotoNext = 228129i32;
                } else if (__value__ == (227982i32)) {
                    if ((_o_227922.enable && !_o_227922.feature.value : Bool)) {
                        _gotoNext = 228009i32;
                    } else {
                        _gotoNext = 228106i32;
                    };
                } else if (__value__ == (228009i32)) {
                    stdgo.Go.print(("GODEBUG: can not enable \"" : stdgo.GoString), _o_227922.name, ("\", missing CPU support\n" : stdgo.GoString));
                    _i_227927_0++;
                    _gotoNext = 228129i32;
                } else if (__value__ == (228106i32)) {
                    _o_227922.feature.value = _o_227922.enable;
                    _i_227927_0++;
                    _gotoNext = 228129i32;
                } else if (__value__ == (228128i32)) {
                    {
                        final __tmp__0 = 0i32;
                        final __tmp__1 = stdgo._internal.internal.cpu.Cpu__options._options[(0i32 : stdgo.GoInt)];
                        _i_227927_0 = __tmp__0;
                        _o_227922 = __tmp__1;
                    };
                    _gotoNext = 228129i32;
                } else if (__value__ == (228129i32)) {
                    if (_i_227927_0 < (stdgo._internal.internal.cpu.Cpu__options._options.length)) {
                        _gotoNext = 227941i32;
                    } else {
                        _gotoNext = 228131i32;
                    };
                } else if (__value__ == (228131i32)) {
                    _gotoNext = -1i32;
                };
            };
        };
    }
