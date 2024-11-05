package stdgo._internal.internal.cpu;
function _processOptions(_env:stdgo.GoString):Void {
        var _i_240642:stdgo.GoInt = (0 : stdgo.GoInt);
        var _key_240218:stdgo.GoString = ("" : stdgo.GoString);
        var _i_239924:stdgo.GoInt = (0 : stdgo.GoInt);
        var _field_239910:stdgo.GoString = ("" : stdgo.GoString);
        var _fieldBreak = false;
        var _o_240854:stdgo._internal.internal.cpu.Cpu_T_option.T_option = ({} : stdgo._internal.internal.cpu.Cpu_T_option.T_option);
        var _i_240859_0:stdgo.GoInt = (0 : stdgo.GoInt);
        var _i_240524:stdgo.GoInt = (0 : stdgo.GoInt);
        var _enable_240284:Bool = false;
        var _value_240223:stdgo.GoString = ("" : stdgo.GoString);
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    _gotoNext = 239884i32;
                } else if (__value__ == (239884i32)) {
                    var __blank__ = 0i32;
                    _fieldBreak = false;
                    _gotoNext = 239892i32;
                } else if (__value__ == (239892i32)) {
                    if (!_fieldBreak && (_env != stdgo.Go.str())) {
                        _gotoNext = 239906i32;
                    } else {
                        _gotoNext = 240847i32;
                    };
                } else if (__value__ == (239906i32)) {
                    _field_239910 = stdgo.Go.str()?.__copy__();
                    _i_239924 = stdgo._internal.internal.cpu.Cpu__indexByte._indexByte(_env?.__copy__(), (44 : stdgo.GoUInt8));
                    if ((_i_239924 < (0 : stdgo.GoInt) : Bool)) {
                        _gotoNext = 239960i32;
                    } else {
                        _gotoNext = 239995i32;
                    };
                } else if (__value__ == (239960i32)) {
                    {
                        final __tmp__0 = _env?.__copy__();
                        final __tmp__1 = stdgo.Go.str()?.__copy__();
                        _field_239910 = __tmp__0;
                        _env = __tmp__1;
                    };
                    _gotoNext = 240038i32;
                } else if (__value__ == (239995i32)) {
                    {
                        final __tmp__0 = (_env.__slice__(0, _i_239924) : stdgo.GoString)?.__copy__();
                        final __tmp__1 = (_env.__slice__((_i_239924 + (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        _field_239910 = __tmp__0;
                        _env = __tmp__1;
                    };
                    _gotoNext = 240038i32;
                } else if (__value__ == (240038i32)) {
                    if ((((_field_239910.length) < (4 : stdgo.GoInt) : Bool) || ((_field_239910.__slice__(0, (4 : stdgo.GoInt)) : stdgo.GoString) != ("cpu." : stdgo.GoString)) : Bool)) {
                        _gotoNext = 240079i32;
                    } else {
                        _gotoNext = 240099i32;
                    };
                } else if (__value__ == (240079i32)) {
                    var __blank__ = 0i32;
                    _gotoNext = 239892i32;
                } else if (__value__ == (240099i32)) {
                    _i_239924 = stdgo._internal.internal.cpu.Cpu__indexByte._indexByte(_field_239910?.__copy__(), (61 : stdgo.GoUInt8));
                    if ((_i_239924 < (0 : stdgo.GoInt) : Bool)) {
                        _gotoNext = 240136i32;
                    } else {
                        _gotoNext = 240218i32;
                    };
                } else if (__value__ == (240136i32)) {
                    stdgo.Go.print(("GODEBUG: no value specified for \"" : stdgo.GoString), _field_239910, ("\"\n" : stdgo.GoString));
                    var __blank__ = 0i32;
                    _gotoNext = 239892i32;
                } else if (__value__ == (240218i32)) {
                    {
                        final __tmp__0 = (_field_239910.__slice__((4 : stdgo.GoInt), _i_239924) : stdgo.GoString)?.__copy__();
                        final __tmp__1 = (_field_239910.__slice__((_i_239924 + (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        _key_240218 = __tmp__0;
                        _value_240223 = __tmp__1;
                    };
                    var __blank__ = 0i32;
                    _gotoNext = 240298i32;
                } else if (__value__ == (240298i32)) {
                    {
                        final __value__ = _value_240223;
                        if (__value__ == (("on" : stdgo.GoString))) {
                            _gotoNext = 240315i32;
                        } else if (__value__ == (("off" : stdgo.GoString))) {
                            _gotoNext = 240345i32;
                        } else {
                            _gotoNext = 240377i32;
                        };
                    };
                } else if (__value__ == (240315i32)) {
                    _enable_240284 = true;
                    _gotoNext = 240499i32;
                } else if (__value__ == (240345i32)) {
                    _enable_240284 = false;
                    _gotoNext = 240499i32;
                } else if (__value__ == (240377i32)) {
                    stdgo.Go.print(("GODEBUG: value \"" : stdgo.GoString), _value_240223, ("\" not supported for cpu option \"" : stdgo.GoString), _key_240218, ("\"\n" : stdgo.GoString));
                    _gotoNext = 239892i32;
                } else if (__value__ == (240499i32)) {
                    if (_key_240218 == (("all" : stdgo.GoString))) {
                        _gotoNext = 240515i32;
                    } else {
                        _gotoNext = 240638i32;
                    };
                } else if (__value__ == (240515i32)) {
                    if ((0i32 : stdgo.GoInt) < (stdgo._internal.internal.cpu.Cpu__options._options.length)) {
                        _gotoNext = 240610i32;
                    } else {
                        _gotoNext = 240616i32;
                    };
                } else if (__value__ == (240543i32)) {
                    stdgo._internal.internal.cpu.Cpu__options._options[(_i_240524 : stdgo.GoInt)].specified = true;
                    stdgo._internal.internal.cpu.Cpu__options._options[(_i_240524 : stdgo.GoInt)].enable = _enable_240284;
                    _i_240524++;
                    _gotoNext = 240611i32;
                } else if (__value__ == (240610i32)) {
                    _i_240524 = 0i32;
                    _gotoNext = 240611i32;
                } else if (__value__ == (240611i32)) {
                    if (_i_240524 < (stdgo._internal.internal.cpu.Cpu__options._options.length)) {
                        _gotoNext = 240543i32;
                    } else {
                        _gotoNext = 240616i32;
                    };
                } else if (__value__ == (240616i32)) {
                    _gotoNext = 239892i32;
                } else if (__value__ == (240638i32)) {
                    if ((0i32 : stdgo.GoInt) < (stdgo._internal.internal.cpu.Cpu__options._options.length)) {
                        _gotoNext = 240782i32;
                    } else {
                        _gotoNext = 240788i32;
                    };
                } else if (__value__ == (240642i32)) {
                    _i_240642++;
                    _gotoNext = 240783i32;
                } else if (__value__ == (240661i32)) {
                    if (stdgo._internal.internal.cpu.Cpu__options._options[(_i_240642 : stdgo.GoInt)].name == (_key_240218)) {
                        _gotoNext = 240692i32;
                    } else {
                        _gotoNext = 240642i32;
                    };
                } else if (__value__ == (240692i32)) {
                    stdgo._internal.internal.cpu.Cpu__options._options[(_i_240642 : stdgo.GoInt)].specified = true;
                    stdgo._internal.internal.cpu.Cpu__options._options[(_i_240642 : stdgo.GoInt)].enable = _enable_240284;
                    _gotoNext = 239892i32;
                } else if (__value__ == (240782i32)) {
                    _i_240642 = 0i32;
                    _gotoNext = 240783i32;
                } else if (__value__ == (240783i32)) {
                    if (_i_240642 < (stdgo._internal.internal.cpu.Cpu__options._options.length)) {
                        _gotoNext = 240661i32;
                    } else {
                        _gotoNext = 240788i32;
                    };
                } else if (__value__ == (240788i32)) {
                    stdgo.Go.print(("GODEBUG: unknown cpu feature \"" : stdgo.GoString), _key_240218, ("\"\n" : stdgo.GoString));
                    _gotoNext = 239892i32;
                } else if (__value__ == (240847i32)) {
                    if ((0i32 : stdgo.GoInt) < (stdgo._internal.internal.cpu.Cpu__options._options.length)) {
                        _gotoNext = 241060i32;
                    } else {
                        _gotoNext = 241063i32;
                    };
                } else if (__value__ == (240873i32)) {
                    _o_240854 = stdgo._internal.internal.cpu.Cpu__options._options[(_i_240859_0 : stdgo.GoInt)];
                    if (!_o_240854.specified) {
                        _gotoNext = 240893i32;
                    } else {
                        _gotoNext = 240914i32;
                    };
                } else if (__value__ == (240893i32)) {
                    _i_240859_0++;
                    _gotoNext = 241061i32;
                } else if (__value__ == (240914i32)) {
                    if ((_o_240854.enable && !_o_240854.feature.value : Bool)) {
                        _gotoNext = 240941i32;
                    } else {
                        _gotoNext = 241038i32;
                    };
                } else if (__value__ == (240941i32)) {
                    stdgo.Go.print(("GODEBUG: can not enable \"" : stdgo.GoString), _o_240854.name, ("\", missing CPU support\n" : stdgo.GoString));
                    _i_240859_0++;
                    _gotoNext = 241061i32;
                } else if (__value__ == (241038i32)) {
                    _o_240854.feature.value = _o_240854.enable;
                    _i_240859_0++;
                    _gotoNext = 241061i32;
                } else if (__value__ == (241060i32)) {
                    {
                        final __tmp__0 = 0i32;
                        final __tmp__1 = stdgo._internal.internal.cpu.Cpu__options._options[(0i32 : stdgo.GoInt)];
                        _i_240859_0 = __tmp__0;
                        _o_240854 = __tmp__1;
                    };
                    _gotoNext = 241061i32;
                } else if (__value__ == (241061i32)) {
                    if (_i_240859_0 < (stdgo._internal.internal.cpu.Cpu__options._options.length)) {
                        _gotoNext = 240873i32;
                    } else {
                        _gotoNext = 241063i32;
                    };
                } else if (__value__ == (241063i32)) {
                    _gotoNext = -1i32;
                };
            };
        };
    }
