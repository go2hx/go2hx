package stdgo._internal.internal.cpu;
function _processOptions(_env:stdgo.GoString):Void {
        var _o_8:stdgo._internal.internal.cpu.Cpu_t_option.T_option = ({} : stdgo._internal.internal.cpu.Cpu_t_option.T_option);
        var _i_6:stdgo.GoInt = (0 : stdgo.GoInt);
        var _value_3:stdgo.GoString = ("" : stdgo.GoString);
        var _field_0:stdgo.GoString = ("" : stdgo.GoString);
        var _i_312921_7:stdgo.GoInt = (0 : stdgo.GoInt);
        var _i_5:stdgo.GoInt = (0 : stdgo.GoInt);
        var _enable_4:Bool = false;
        var _key_2:stdgo.GoString = ("" : stdgo.GoString);
        var _i_1:stdgo.GoInt = (0 : stdgo.GoInt);
        var _fieldBreak = false;
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    _gotoNext = 311946i32;
                } else if (__value__ == (311946i32)) {
                    var __blank__ = 0i32;
                    _fieldBreak = false;
                    _gotoNext = 311954i32;
                } else if (__value__ == (311954i32)) {
                    if (!_fieldBreak && (_env != (stdgo.Go.str() : stdgo.GoString))) {
                        _gotoNext = 311968i32;
                    } else {
                        _gotoNext = 312909i32;
                    };
                } else if (__value__ == (311968i32)) {
                    _field_0 = (stdgo.Go.str() : stdgo.GoString)?.__copy__();
                    _i_1 = stdgo._internal.internal.cpu.Cpu__indexbyte._indexByte(_env?.__copy__(), (44 : stdgo.GoUInt8));
                    if ((_i_1 < (0 : stdgo.GoInt) : Bool)) {
                        _gotoNext = 312022i32;
                    } else {
                        _gotoNext = 312057i32;
                    };
                } else if (__value__ == (312022i32)) {
                    {
                        final __tmp__0 = _env?.__copy__();
                        final __tmp__1 = (stdgo.Go.str() : stdgo.GoString)?.__copy__();
                        _field_0 = __tmp__0;
                        _env = __tmp__1;
                    };
                    _gotoNext = 312100i32;
                } else if (__value__ == (312057i32)) {
                    _gotoNext = 312057i32;
                    {
                        final __tmp__0 = (_env.__slice__(0, _i_1) : stdgo.GoString)?.__copy__();
                        final __tmp__1 = (_env.__slice__((_i_1 + (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        _field_0 = __tmp__0;
                        _env = __tmp__1;
                    };
                    var __blank__ = 0i32;
                    _gotoNext = 312100i32;
                } else if (__value__ == (312100i32)) {
                    if ((((_field_0.length) < (4 : stdgo.GoInt) : Bool) || ((_field_0.__slice__(0, (4 : stdgo.GoInt)) : stdgo.GoString) != ("cpu." : stdgo.GoString)) : Bool)) {
                        _gotoNext = 312141i32;
                    } else {
                        _gotoNext = 312161i32;
                    };
                } else if (__value__ == (312141i32)) {
                    var __blank__ = 0i32;
                    _gotoNext = 311954i32;
                } else if (__value__ == (312161i32)) {
                    _i_1 = stdgo._internal.internal.cpu.Cpu__indexbyte._indexByte(_field_0?.__copy__(), (61 : stdgo.GoUInt8));
                    if ((_i_1 < (0 : stdgo.GoInt) : Bool)) {
                        _gotoNext = 312198i32;
                    } else {
                        _gotoNext = 312280i32;
                    };
                } else if (__value__ == (312198i32)) {
                    stdgo.Go.print(("GODEBUG: no value specified for \"" : stdgo.GoString), _field_0, ("\"\n" : stdgo.GoString));
                    var __blank__ = 0i32;
                    _gotoNext = 311954i32;
                } else if (__value__ == (312280i32)) {
                    {
                        final __tmp__0 = (_field_0.__slice__((4 : stdgo.GoInt), _i_1) : stdgo.GoString)?.__copy__();
                        final __tmp__1 = (_field_0.__slice__((_i_1 + (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        _key_2 = __tmp__0;
                        _value_3 = __tmp__1;
                    };
                    _gotoNext = 312360i32;
                } else if (__value__ == (312360i32)) {
                    {
                        final __value__ = _value_3;
                        if (__value__ == (("on" : stdgo.GoString))) {
                            _gotoNext = 312377i32;
                        } else if (__value__ == (("off" : stdgo.GoString))) {
                            _gotoNext = 312407i32;
                        } else {
                            _gotoNext = 312439i32;
                        };
                    };
                } else if (__value__ == (312377i32)) {
                    _enable_4 = true;
                    _gotoNext = 312561i32;
                } else if (__value__ == (312407i32)) {
                    _enable_4 = false;
                    _gotoNext = 312561i32;
                } else if (__value__ == (312439i32)) {
                    stdgo.Go.print(("GODEBUG: value \"" : stdgo.GoString), _value_3, ("\" not supported for cpu option \"" : stdgo.GoString), _key_2, ("\"\n" : stdgo.GoString));
                    _gotoNext = 311954i32;
                } else if (__value__ == (312561i32)) {
                    if (_key_2 == (("all" : stdgo.GoString))) {
                        _gotoNext = 312577i32;
                    } else {
                        _gotoNext = 312700i32;
                    };
                } else if (__value__ == (312577i32)) {
                    if ((0i32 : stdgo.GoInt) < (stdgo._internal.internal.cpu.Cpu__options._options.length)) {
                        _gotoNext = 312672i32;
                    } else {
                        _gotoNext = 312678i32;
                    };
                } else if (__value__ == (312605i32)) {
                    stdgo._internal.internal.cpu.Cpu__options._options[(_i_5 : stdgo.GoInt)].specified = true;
                    stdgo._internal.internal.cpu.Cpu__options._options[(_i_5 : stdgo.GoInt)].enable = _enable_4;
                    _i_5++;
                    _gotoNext = 312673i32;
                } else if (__value__ == (312672i32)) {
                    _i_5 = 0i32;
                    _gotoNext = 312673i32;
                } else if (__value__ == (312673i32)) {
                    if (_i_5 < (stdgo._internal.internal.cpu.Cpu__options._options.length)) {
                        _gotoNext = 312605i32;
                    } else {
                        _gotoNext = 312678i32;
                    };
                } else if (__value__ == (312678i32)) {
                    _gotoNext = 311954i32;
                } else if (__value__ == (312700i32)) {
                    if ((0i32 : stdgo.GoInt) < (stdgo._internal.internal.cpu.Cpu__options._options.length)) {
                        _gotoNext = 312844i32;
                    } else {
                        _gotoNext = 312850i32;
                    };
                } else if (__value__ == (312704i32)) {
                    _i_6++;
                    _gotoNext = 312845i32;
                } else if (__value__ == (312723i32)) {
                    if (stdgo._internal.internal.cpu.Cpu__options._options[(_i_6 : stdgo.GoInt)].name == (_key_2)) {
                        _gotoNext = 312754i32;
                    } else {
                        _gotoNext = 312704i32;
                    };
                } else if (__value__ == (312754i32)) {
                    stdgo._internal.internal.cpu.Cpu__options._options[(_i_6 : stdgo.GoInt)].specified = true;
                    stdgo._internal.internal.cpu.Cpu__options._options[(_i_6 : stdgo.GoInt)].enable = _enable_4;
                    _gotoNext = 311954i32;
                } else if (__value__ == (312844i32)) {
                    _i_6 = 0i32;
                    _gotoNext = 312845i32;
                } else if (__value__ == (312845i32)) {
                    if (_i_6 < (stdgo._internal.internal.cpu.Cpu__options._options.length)) {
                        _gotoNext = 312723i32;
                    } else {
                        _gotoNext = 312850i32;
                    };
                } else if (__value__ == (312850i32)) {
                    stdgo.Go.print(("GODEBUG: unknown cpu feature \"" : stdgo.GoString), _key_2, ("\"\n" : stdgo.GoString));
                    _gotoNext = 311954i32;
                } else if (__value__ == (312909i32)) {
                    if ((0i32 : stdgo.GoInt) < (stdgo._internal.internal.cpu.Cpu__options._options.length)) {
                        _gotoNext = 313122i32;
                    } else {
                        _gotoNext = 313125i32;
                    };
                } else if (__value__ == (312935i32)) {
                    _o_8 = stdgo._internal.internal.cpu.Cpu__options._options[(_i_312921_7 : stdgo.GoInt)];
                    if (!_o_8.specified) {
                        _gotoNext = 312955i32;
                    } else {
                        _gotoNext = 312976i32;
                    };
                } else if (__value__ == (312955i32)) {
                    _i_312921_7++;
                    _gotoNext = 313123i32;
                } else if (__value__ == (312976i32)) {
                    if ((_o_8.enable && !_o_8.feature.value : Bool)) {
                        _gotoNext = 313003i32;
                    } else {
                        _gotoNext = 313100i32;
                    };
                } else if (__value__ == (313003i32)) {
                    stdgo.Go.print(("GODEBUG: can not enable \"" : stdgo.GoString), _o_8.name, ("\", missing CPU support\n" : stdgo.GoString));
                    _i_312921_7++;
                    _gotoNext = 313123i32;
                } else if (__value__ == (313100i32)) {
                    _o_8.feature.value = _o_8.enable;
                    _i_312921_7++;
                    _gotoNext = 313123i32;
                } else if (__value__ == (313122i32)) {
                    {
                        final __tmp__0 = 0i32;
                        final __tmp__1 = stdgo._internal.internal.cpu.Cpu__options._options[(0i32 : stdgo.GoInt)];
                        _i_312921_7 = __tmp__0;
                        _o_8 = __tmp__1;
                    };
                    _gotoNext = 313123i32;
                } else if (__value__ == (313123i32)) {
                    if (_i_312921_7 < (stdgo._internal.internal.cpu.Cpu__options._options.length)) {
                        _gotoNext = 312935i32;
                    } else {
                        _gotoNext = 313125i32;
                    };
                } else if (__value__ == (313125i32)) {
                    _gotoNext = -1i32;
                };
            };
        };
    }
