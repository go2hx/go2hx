package stdgo._internal.internal.cpu;
function _processOptions(_env:stdgo.GoString):Void {
        var _i_48189:stdgo.GoInt = (0 : stdgo.GoInt);
        var _i_48071:stdgo.GoInt = (0 : stdgo.GoInt);
        var _i_47471:stdgo.GoInt = (0 : stdgo.GoInt);
        var _i_48406_0:stdgo.GoInt = (0 : stdgo.GoInt);
        var _enable_47831:Bool = false;
        var _value_47770:stdgo.GoString = ("" : stdgo.GoString);
        var _key_47765:stdgo.GoString = ("" : stdgo.GoString);
        var _field_47457:stdgo.GoString = ("" : stdgo.GoString);
        var _fieldBreak = false;
        var _o_48401:stdgo._internal.internal.cpu.Cpu_T_option.T_option = ({} : stdgo._internal.internal.cpu.Cpu_T_option.T_option);
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    _gotoNext = 47431i32;
                } else if (__value__ == (47431i32)) {
                    var __blank__ = 0i32;
                    _fieldBreak = false;
                    _gotoNext = 47439i32;
                } else if (__value__ == (47439i32)) {
                    if (!_fieldBreak && (_env != stdgo.Go.str())) {
                        _gotoNext = 47453i32;
                    } else {
                        _gotoNext = 48394i32;
                    };
                } else if (__value__ == (47453i32)) {
                    _field_47457 = stdgo.Go.str()?.__copy__();
                    _i_47471 = stdgo._internal.internal.cpu.Cpu__indexByte._indexByte(_env?.__copy__(), (44 : stdgo.GoUInt8));
                    if ((_i_47471 < (0 : stdgo.GoInt) : Bool)) {
                        _gotoNext = 47507i32;
                    } else {
                        _gotoNext = 47542i32;
                    };
                } else if (__value__ == (47507i32)) {
                    {
                        final __tmp__0 = _env?.__copy__();
                        final __tmp__1 = stdgo.Go.str()?.__copy__();
                        _field_47457 = __tmp__0;
                        _env = __tmp__1;
                    };
                    _gotoNext = 47585i32;
                } else if (__value__ == (47542i32)) {
                    _gotoNext = 47542i32;
                    {
                        final __tmp__0 = (_env.__slice__(0, _i_47471) : stdgo.GoString)?.__copy__();
                        final __tmp__1 = (_env.__slice__((_i_47471 + (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        _field_47457 = __tmp__0;
                        _env = __tmp__1;
                    };
                    var __blank__ = 0i32;
                    _gotoNext = 47585i32;
                } else if (__value__ == (47585i32)) {
                    if ((((_field_47457.length) < (4 : stdgo.GoInt) : Bool) || ((_field_47457.__slice__(0, (4 : stdgo.GoInt)) : stdgo.GoString) != ("cpu." : stdgo.GoString)) : Bool)) {
                        _gotoNext = 47626i32;
                    } else {
                        _gotoNext = 47646i32;
                    };
                } else if (__value__ == (47626i32)) {
                    var __blank__ = 0i32;
                    _gotoNext = 47439i32;
                } else if (__value__ == (47646i32)) {
                    _i_47471 = stdgo._internal.internal.cpu.Cpu__indexByte._indexByte(_field_47457?.__copy__(), (61 : stdgo.GoUInt8));
                    if ((_i_47471 < (0 : stdgo.GoInt) : Bool)) {
                        _gotoNext = 47683i32;
                    } else {
                        _gotoNext = 47765i32;
                    };
                } else if (__value__ == (47683i32)) {
                    stdgo.Go.print(("GODEBUG: no value specified for \"" : stdgo.GoString), _field_47457, ("\"\n" : stdgo.GoString));
                    var __blank__ = 0i32;
                    _gotoNext = 47439i32;
                } else if (__value__ == (47765i32)) {
                    {
                        final __tmp__0 = (_field_47457.__slice__((4 : stdgo.GoInt), _i_47471) : stdgo.GoString)?.__copy__();
                        final __tmp__1 = (_field_47457.__slice__((_i_47471 + (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        _key_47765 = __tmp__0;
                        _value_47770 = __tmp__1;
                    };
                    _gotoNext = 47845i32;
                } else if (__value__ == (47845i32)) {
                    {
                        final __value__ = _value_47770;
                        if (__value__ == (("on" : stdgo.GoString))) {
                            _gotoNext = 47862i32;
                        } else if (__value__ == (("off" : stdgo.GoString))) {
                            _gotoNext = 47892i32;
                        } else {
                            _gotoNext = 47924i32;
                        };
                    };
                } else if (__value__ == (47862i32)) {
                    _enable_47831 = true;
                    _gotoNext = 48046i32;
                } else if (__value__ == (47892i32)) {
                    _enable_47831 = false;
                    _gotoNext = 48046i32;
                } else if (__value__ == (47924i32)) {
                    stdgo.Go.print(("GODEBUG: value \"" : stdgo.GoString), _value_47770, ("\" not supported for cpu option \"" : stdgo.GoString), _key_47765, ("\"\n" : stdgo.GoString));
                    _gotoNext = 47439i32;
                } else if (__value__ == (48046i32)) {
                    if (_key_47765 == (("all" : stdgo.GoString))) {
                        _gotoNext = 48062i32;
                    } else {
                        _gotoNext = 48185i32;
                    };
                } else if (__value__ == (48062i32)) {
                    if ((0i32 : stdgo.GoInt) < (stdgo._internal.internal.cpu.Cpu__options._options.length)) {
                        _gotoNext = 48157i32;
                    } else {
                        _gotoNext = 48163i32;
                    };
                } else if (__value__ == (48090i32)) {
                    stdgo._internal.internal.cpu.Cpu__options._options[(_i_48071 : stdgo.GoInt)].specified = true;
                    stdgo._internal.internal.cpu.Cpu__options._options[(_i_48071 : stdgo.GoInt)].enable = _enable_47831;
                    _i_48071++;
                    _gotoNext = 48158i32;
                } else if (__value__ == (48157i32)) {
                    _i_48071 = 0i32;
                    _gotoNext = 48158i32;
                } else if (__value__ == (48158i32)) {
                    if (_i_48071 < (stdgo._internal.internal.cpu.Cpu__options._options.length)) {
                        _gotoNext = 48090i32;
                    } else {
                        _gotoNext = 48163i32;
                    };
                } else if (__value__ == (48163i32)) {
                    _gotoNext = 47439i32;
                } else if (__value__ == (48185i32)) {
                    if ((0i32 : stdgo.GoInt) < (stdgo._internal.internal.cpu.Cpu__options._options.length)) {
                        _gotoNext = 48329i32;
                    } else {
                        _gotoNext = 48335i32;
                    };
                } else if (__value__ == (48189i32)) {
                    _i_48189++;
                    _gotoNext = 48330i32;
                } else if (__value__ == (48208i32)) {
                    if (stdgo._internal.internal.cpu.Cpu__options._options[(_i_48189 : stdgo.GoInt)].name == (_key_47765)) {
                        _gotoNext = 48239i32;
                    } else {
                        _gotoNext = 48189i32;
                    };
                } else if (__value__ == (48239i32)) {
                    stdgo._internal.internal.cpu.Cpu__options._options[(_i_48189 : stdgo.GoInt)].specified = true;
                    stdgo._internal.internal.cpu.Cpu__options._options[(_i_48189 : stdgo.GoInt)].enable = _enable_47831;
                    _gotoNext = 47439i32;
                } else if (__value__ == (48329i32)) {
                    _i_48189 = 0i32;
                    _gotoNext = 48330i32;
                } else if (__value__ == (48330i32)) {
                    if (_i_48189 < (stdgo._internal.internal.cpu.Cpu__options._options.length)) {
                        _gotoNext = 48208i32;
                    } else {
                        _gotoNext = 48335i32;
                    };
                } else if (__value__ == (48335i32)) {
                    stdgo.Go.print(("GODEBUG: unknown cpu feature \"" : stdgo.GoString), _key_47765, ("\"\n" : stdgo.GoString));
                    _gotoNext = 47439i32;
                } else if (__value__ == (48394i32)) {
                    if ((0i32 : stdgo.GoInt) < (stdgo._internal.internal.cpu.Cpu__options._options.length)) {
                        _gotoNext = 48607i32;
                    } else {
                        _gotoNext = 48610i32;
                    };
                } else if (__value__ == (48420i32)) {
                    _o_48401 = stdgo._internal.internal.cpu.Cpu__options._options[(_i_48406_0 : stdgo.GoInt)];
                    if (!_o_48401.specified) {
                        _gotoNext = 48440i32;
                    } else {
                        _gotoNext = 48461i32;
                    };
                } else if (__value__ == (48440i32)) {
                    _i_48406_0++;
                    _gotoNext = 48608i32;
                } else if (__value__ == (48461i32)) {
                    if ((_o_48401.enable && !_o_48401.feature.value : Bool)) {
                        _gotoNext = 48488i32;
                    } else {
                        _gotoNext = 48585i32;
                    };
                } else if (__value__ == (48488i32)) {
                    stdgo.Go.print(("GODEBUG: can not enable \"" : stdgo.GoString), _o_48401.name, ("\", missing CPU support\n" : stdgo.GoString));
                    _i_48406_0++;
                    _gotoNext = 48608i32;
                } else if (__value__ == (48585i32)) {
                    _o_48401.feature.value = _o_48401.enable;
                    _i_48406_0++;
                    _gotoNext = 48608i32;
                } else if (__value__ == (48607i32)) {
                    {
                        final __tmp__0 = 0i32;
                        final __tmp__1 = stdgo._internal.internal.cpu.Cpu__options._options[(0i32 : stdgo.GoInt)];
                        _i_48406_0 = __tmp__0;
                        _o_48401 = __tmp__1;
                    };
                    _gotoNext = 48608i32;
                } else if (__value__ == (48608i32)) {
                    if (_i_48406_0 < (stdgo._internal.internal.cpu.Cpu__options._options.length)) {
                        _gotoNext = 48420i32;
                    } else {
                        _gotoNext = 48610i32;
                    };
                } else if (__value__ == (48610i32)) {
                    _gotoNext = -1i32;
                };
            };
        };
    }
