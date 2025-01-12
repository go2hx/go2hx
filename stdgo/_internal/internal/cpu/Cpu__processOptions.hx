package stdgo._internal.internal.cpu;
function _processOptions(_env:stdgo.GoString):Void {
        var _i_238689:stdgo.GoInt = (0 : stdgo.GoInt);
        var _i_238571:stdgo.GoInt = (0 : stdgo.GoInt);
        var _value_238270:stdgo.GoString = ("" : stdgo.GoString);
        var _o_238901:stdgo._internal.internal.cpu.Cpu_T_option.T_option = ({} : stdgo._internal.internal.cpu.Cpu_T_option.T_option);
        var _i_238906_0:stdgo.GoInt = (0 : stdgo.GoInt);
        var _enable_238331:Bool = false;
        var _key_238265:stdgo.GoString = ("" : stdgo.GoString);
        var _i_237971:stdgo.GoInt = (0 : stdgo.GoInt);
        var _field_237957:stdgo.GoString = ("" : stdgo.GoString);
        var _fieldBreak = false;
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    _gotoNext = 237931i32;
                } else if (__value__ == (237931i32)) {
                    var __blank__ = 0i32;
                    _fieldBreak = false;
                    _gotoNext = 237939i32;
                } else if (__value__ == (237939i32)) {
                    if (!_fieldBreak && (_env != stdgo.Go.str())) {
                        _gotoNext = 237953i32;
                    } else {
                        _gotoNext = 238894i32;
                    };
                } else if (__value__ == (237953i32)) {
                    _field_237957 = stdgo.Go.str()?.__copy__();
                    _i_237971 = stdgo._internal.internal.cpu.Cpu__indexByte._indexByte(_env?.__copy__(), (44 : stdgo.GoUInt8));
                    if ((_i_237971 < (0 : stdgo.GoInt) : Bool)) {
                        _gotoNext = 238007i32;
                    } else {
                        _gotoNext = 238042i32;
                    };
                } else if (__value__ == (238007i32)) {
                    {
                        final __tmp__0 = _env?.__copy__();
                        final __tmp__1 = stdgo.Go.str()?.__copy__();
                        _field_237957 = __tmp__0;
                        _env = __tmp__1;
                    };
                    _gotoNext = 238085i32;
                } else if (__value__ == (238042i32)) {
                    _gotoNext = 238042i32;
                    {
                        final __tmp__0 = (_env.__slice__(0, _i_237971) : stdgo.GoString)?.__copy__();
                        final __tmp__1 = (_env.__slice__((_i_237971 + (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        _field_237957 = __tmp__0;
                        _env = __tmp__1;
                    };
                    var __blank__ = 0i32;
                    _gotoNext = 238085i32;
                } else if (__value__ == (238085i32)) {
                    if ((((_field_237957.length) < (4 : stdgo.GoInt) : Bool) || ((_field_237957.__slice__(0, (4 : stdgo.GoInt)) : stdgo.GoString) != ("cpu." : stdgo.GoString)) : Bool)) {
                        _gotoNext = 238126i32;
                    } else {
                        _gotoNext = 238146i32;
                    };
                } else if (__value__ == (238126i32)) {
                    var __blank__ = 0i32;
                    _gotoNext = 237939i32;
                } else if (__value__ == (238146i32)) {
                    _i_237971 = stdgo._internal.internal.cpu.Cpu__indexByte._indexByte(_field_237957?.__copy__(), (61 : stdgo.GoUInt8));
                    if ((_i_237971 < (0 : stdgo.GoInt) : Bool)) {
                        _gotoNext = 238183i32;
                    } else {
                        _gotoNext = 238265i32;
                    };
                } else if (__value__ == (238183i32)) {
                    stdgo.Go.print(("GODEBUG: no value specified for \"" : stdgo.GoString), _field_237957, ("\"\n" : stdgo.GoString));
                    var __blank__ = 0i32;
                    _gotoNext = 237939i32;
                } else if (__value__ == (238265i32)) {
                    {
                        final __tmp__0 = (_field_237957.__slice__((4 : stdgo.GoInt), _i_237971) : stdgo.GoString)?.__copy__();
                        final __tmp__1 = (_field_237957.__slice__((_i_237971 + (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        _key_238265 = __tmp__0;
                        _value_238270 = __tmp__1;
                    };
                    _gotoNext = 238345i32;
                } else if (__value__ == (238345i32)) {
                    {
                        final __value__ = _value_238270;
                        if (__value__ == (("on" : stdgo.GoString))) {
                            _gotoNext = 238362i32;
                        } else if (__value__ == (("off" : stdgo.GoString))) {
                            _gotoNext = 238392i32;
                        } else {
                            _gotoNext = 238424i32;
                        };
                    };
                } else if (__value__ == (238362i32)) {
                    _enable_238331 = true;
                    _gotoNext = 238546i32;
                } else if (__value__ == (238392i32)) {
                    _enable_238331 = false;
                    _gotoNext = 238546i32;
                } else if (__value__ == (238424i32)) {
                    stdgo.Go.print(("GODEBUG: value \"" : stdgo.GoString), _value_238270, ("\" not supported for cpu option \"" : stdgo.GoString), _key_238265, ("\"\n" : stdgo.GoString));
                    _gotoNext = 237939i32;
                } else if (__value__ == (238546i32)) {
                    if (_key_238265 == (("all" : stdgo.GoString))) {
                        _gotoNext = 238562i32;
                    } else {
                        _gotoNext = 238685i32;
                    };
                } else if (__value__ == (238562i32)) {
                    if ((0i32 : stdgo.GoInt) < (stdgo._internal.internal.cpu.Cpu__options._options.length)) {
                        _gotoNext = 238657i32;
                    } else {
                        _gotoNext = 238663i32;
                    };
                } else if (__value__ == (238590i32)) {
                    stdgo._internal.internal.cpu.Cpu__options._options[(_i_238571 : stdgo.GoInt)].specified = true;
                    stdgo._internal.internal.cpu.Cpu__options._options[(_i_238571 : stdgo.GoInt)].enable = _enable_238331;
                    _i_238571++;
                    _gotoNext = 238658i32;
                } else if (__value__ == (238657i32)) {
                    _i_238571 = 0i32;
                    _gotoNext = 238658i32;
                } else if (__value__ == (238658i32)) {
                    if (_i_238571 < (stdgo._internal.internal.cpu.Cpu__options._options.length)) {
                        _gotoNext = 238590i32;
                    } else {
                        _gotoNext = 238663i32;
                    };
                } else if (__value__ == (238663i32)) {
                    _gotoNext = 237939i32;
                } else if (__value__ == (238685i32)) {
                    if ((0i32 : stdgo.GoInt) < (stdgo._internal.internal.cpu.Cpu__options._options.length)) {
                        _gotoNext = 238829i32;
                    } else {
                        _gotoNext = 238835i32;
                    };
                } else if (__value__ == (238689i32)) {
                    _i_238689++;
                    _gotoNext = 238830i32;
                } else if (__value__ == (238708i32)) {
                    if (stdgo._internal.internal.cpu.Cpu__options._options[(_i_238689 : stdgo.GoInt)].name == (_key_238265)) {
                        _gotoNext = 238739i32;
                    } else {
                        _gotoNext = 238689i32;
                    };
                } else if (__value__ == (238739i32)) {
                    stdgo._internal.internal.cpu.Cpu__options._options[(_i_238689 : stdgo.GoInt)].specified = true;
                    stdgo._internal.internal.cpu.Cpu__options._options[(_i_238689 : stdgo.GoInt)].enable = _enable_238331;
                    _gotoNext = 237939i32;
                } else if (__value__ == (238829i32)) {
                    _i_238689 = 0i32;
                    _gotoNext = 238830i32;
                } else if (__value__ == (238830i32)) {
                    if (_i_238689 < (stdgo._internal.internal.cpu.Cpu__options._options.length)) {
                        _gotoNext = 238708i32;
                    } else {
                        _gotoNext = 238835i32;
                    };
                } else if (__value__ == (238835i32)) {
                    stdgo.Go.print(("GODEBUG: unknown cpu feature \"" : stdgo.GoString), _key_238265, ("\"\n" : stdgo.GoString));
                    _gotoNext = 237939i32;
                } else if (__value__ == (238894i32)) {
                    if ((0i32 : stdgo.GoInt) < (stdgo._internal.internal.cpu.Cpu__options._options.length)) {
                        _gotoNext = 239107i32;
                    } else {
                        _gotoNext = 239110i32;
                    };
                } else if (__value__ == (238920i32)) {
                    _o_238901 = stdgo._internal.internal.cpu.Cpu__options._options[(_i_238906_0 : stdgo.GoInt)];
                    if (!_o_238901.specified) {
                        _gotoNext = 238940i32;
                    } else {
                        _gotoNext = 238961i32;
                    };
                } else if (__value__ == (238940i32)) {
                    _i_238906_0++;
                    _gotoNext = 239108i32;
                } else if (__value__ == (238961i32)) {
                    if ((_o_238901.enable && !_o_238901.feature.value : Bool)) {
                        _gotoNext = 238988i32;
                    } else {
                        _gotoNext = 239085i32;
                    };
                } else if (__value__ == (238988i32)) {
                    stdgo.Go.print(("GODEBUG: can not enable \"" : stdgo.GoString), _o_238901.name, ("\", missing CPU support\n" : stdgo.GoString));
                    _i_238906_0++;
                    _gotoNext = 239108i32;
                } else if (__value__ == (239085i32)) {
                    _o_238901.feature.value = _o_238901.enable;
                    _i_238906_0++;
                    _gotoNext = 239108i32;
                } else if (__value__ == (239107i32)) {
                    {
                        final __tmp__0 = 0i32;
                        final __tmp__1 = stdgo._internal.internal.cpu.Cpu__options._options[(0i32 : stdgo.GoInt)];
                        _i_238906_0 = __tmp__0;
                        _o_238901 = __tmp__1;
                    };
                    _gotoNext = 239108i32;
                } else if (__value__ == (239108i32)) {
                    if (_i_238906_0 < (stdgo._internal.internal.cpu.Cpu__options._options.length)) {
                        _gotoNext = 238920i32;
                    } else {
                        _gotoNext = 239110i32;
                    };
                } else if (__value__ == (239110i32)) {
                    _gotoNext = -1i32;
                };
            };
        };
    }
