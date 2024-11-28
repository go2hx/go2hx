package stdgo._internal.internal.cpu;
function _processOptions(_env:stdgo.GoString):Void {
        var _field_312188:stdgo.GoString = ("" : stdgo.GoString);
        var _fieldBreak = false;
        var _i_312920:stdgo.GoInt = (0 : stdgo.GoInt);
        var _key_312496:stdgo.GoString = ("" : stdgo.GoString);
        var _i_312202:stdgo.GoInt = (0 : stdgo.GoInt);
        var _o_313132:stdgo._internal.internal.cpu.Cpu_T_option.T_option = ({} : stdgo._internal.internal.cpu.Cpu_T_option.T_option);
        var _i_313137_0:stdgo.GoInt = (0 : stdgo.GoInt);
        var _i_312802:stdgo.GoInt = (0 : stdgo.GoInt);
        var _enable_312562:Bool = false;
        var _value_312501:stdgo.GoString = ("" : stdgo.GoString);
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    _gotoNext = 312162i32;
                } else if (__value__ == (312162i32)) {
                    var __blank__ = 0i32;
                    _fieldBreak = false;
                    _gotoNext = 312170i32;
                } else if (__value__ == (312170i32)) {
                    if (!_fieldBreak && (_env != stdgo.Go.str())) {
                        _gotoNext = 312184i32;
                    } else {
                        _gotoNext = 313125i32;
                    };
                } else if (__value__ == (312184i32)) {
                    _field_312188 = stdgo.Go.str()?.__copy__();
                    _i_312202 = stdgo._internal.internal.cpu.Cpu__indexByte._indexByte(_env?.__copy__(), (44 : stdgo.GoUInt8));
                    if ((_i_312202 < (0 : stdgo.GoInt) : Bool)) {
                        _gotoNext = 312238i32;
                    } else {
                        _gotoNext = 312273i32;
                    };
                } else if (__value__ == (312238i32)) {
                    {
                        final __tmp__0 = _env?.__copy__();
                        final __tmp__1 = stdgo.Go.str()?.__copy__();
                        _field_312188 = __tmp__0;
                        _env = __tmp__1;
                    };
                    _gotoNext = 312316i32;
                } else if (__value__ == (312273i32)) {
                    _gotoNext = 312273i32;
                    {
                        final __tmp__0 = (_env.__slice__(0, _i_312202) : stdgo.GoString)?.__copy__();
                        final __tmp__1 = (_env.__slice__((_i_312202 + (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        _field_312188 = __tmp__0;
                        _env = __tmp__1;
                    };
                    var __blank__ = 0i32;
                    _gotoNext = 312316i32;
                } else if (__value__ == (312316i32)) {
                    if ((((_field_312188.length) < (4 : stdgo.GoInt) : Bool) || ((_field_312188.__slice__(0, (4 : stdgo.GoInt)) : stdgo.GoString) != ("cpu." : stdgo.GoString)) : Bool)) {
                        _gotoNext = 312357i32;
                    } else {
                        _gotoNext = 312377i32;
                    };
                } else if (__value__ == (312357i32)) {
                    var __blank__ = 0i32;
                    _gotoNext = 312170i32;
                } else if (__value__ == (312377i32)) {
                    _i_312202 = stdgo._internal.internal.cpu.Cpu__indexByte._indexByte(_field_312188?.__copy__(), (61 : stdgo.GoUInt8));
                    if ((_i_312202 < (0 : stdgo.GoInt) : Bool)) {
                        _gotoNext = 312414i32;
                    } else {
                        _gotoNext = 312496i32;
                    };
                } else if (__value__ == (312414i32)) {
                    stdgo.Go.print(("GODEBUG: no value specified for \"" : stdgo.GoString), _field_312188, ("\"\n" : stdgo.GoString));
                    var __blank__ = 0i32;
                    _gotoNext = 312170i32;
                } else if (__value__ == (312496i32)) {
                    {
                        final __tmp__0 = (_field_312188.__slice__((4 : stdgo.GoInt), _i_312202) : stdgo.GoString)?.__copy__();
                        final __tmp__1 = (_field_312188.__slice__((_i_312202 + (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        _key_312496 = __tmp__0;
                        _value_312501 = __tmp__1;
                    };
                    _gotoNext = 312576i32;
                } else if (__value__ == (312576i32)) {
                    {
                        final __value__ = _value_312501;
                        if (__value__ == (("on" : stdgo.GoString))) {
                            _gotoNext = 312593i32;
                        } else if (__value__ == (("off" : stdgo.GoString))) {
                            _gotoNext = 312623i32;
                        } else {
                            _gotoNext = 312655i32;
                        };
                    };
                } else if (__value__ == (312593i32)) {
                    _enable_312562 = true;
                    _gotoNext = 312777i32;
                } else if (__value__ == (312623i32)) {
                    _enable_312562 = false;
                    _gotoNext = 312777i32;
                } else if (__value__ == (312655i32)) {
                    stdgo.Go.print(("GODEBUG: value \"" : stdgo.GoString), _value_312501, ("\" not supported for cpu option \"" : stdgo.GoString), _key_312496, ("\"\n" : stdgo.GoString));
                    _gotoNext = 312170i32;
                } else if (__value__ == (312777i32)) {
                    if (_key_312496 == (("all" : stdgo.GoString))) {
                        _gotoNext = 312793i32;
                    } else {
                        _gotoNext = 312916i32;
                    };
                } else if (__value__ == (312793i32)) {
                    if ((0i32 : stdgo.GoInt) < (stdgo._internal.internal.cpu.Cpu__options._options.length)) {
                        _gotoNext = 312888i32;
                    } else {
                        _gotoNext = 312894i32;
                    };
                } else if (__value__ == (312821i32)) {
                    stdgo._internal.internal.cpu.Cpu__options._options[(_i_312802 : stdgo.GoInt)].specified = true;
                    stdgo._internal.internal.cpu.Cpu__options._options[(_i_312802 : stdgo.GoInt)].enable = _enable_312562;
                    _i_312802++;
                    _gotoNext = 312889i32;
                } else if (__value__ == (312888i32)) {
                    _i_312802 = 0i32;
                    _gotoNext = 312889i32;
                } else if (__value__ == (312889i32)) {
                    if (_i_312802 < (stdgo._internal.internal.cpu.Cpu__options._options.length)) {
                        _gotoNext = 312821i32;
                    } else {
                        _gotoNext = 312894i32;
                    };
                } else if (__value__ == (312894i32)) {
                    _gotoNext = 312170i32;
                } else if (__value__ == (312916i32)) {
                    if ((0i32 : stdgo.GoInt) < (stdgo._internal.internal.cpu.Cpu__options._options.length)) {
                        _gotoNext = 313060i32;
                    } else {
                        _gotoNext = 313066i32;
                    };
                } else if (__value__ == (312920i32)) {
                    _i_312920++;
                    _gotoNext = 313061i32;
                } else if (__value__ == (312939i32)) {
                    if (stdgo._internal.internal.cpu.Cpu__options._options[(_i_312920 : stdgo.GoInt)].name == (_key_312496)) {
                        _gotoNext = 312970i32;
                    } else {
                        _gotoNext = 312920i32;
                    };
                } else if (__value__ == (312970i32)) {
                    stdgo._internal.internal.cpu.Cpu__options._options[(_i_312920 : stdgo.GoInt)].specified = true;
                    stdgo._internal.internal.cpu.Cpu__options._options[(_i_312920 : stdgo.GoInt)].enable = _enable_312562;
                    _gotoNext = 312170i32;
                } else if (__value__ == (313060i32)) {
                    _i_312920 = 0i32;
                    _gotoNext = 313061i32;
                } else if (__value__ == (313061i32)) {
                    if (_i_312920 < (stdgo._internal.internal.cpu.Cpu__options._options.length)) {
                        _gotoNext = 312939i32;
                    } else {
                        _gotoNext = 313066i32;
                    };
                } else if (__value__ == (313066i32)) {
                    stdgo.Go.print(("GODEBUG: unknown cpu feature \"" : stdgo.GoString), _key_312496, ("\"\n" : stdgo.GoString));
                    _gotoNext = 312170i32;
                } else if (__value__ == (313125i32)) {
                    if ((0i32 : stdgo.GoInt) < (stdgo._internal.internal.cpu.Cpu__options._options.length)) {
                        _gotoNext = 313338i32;
                    } else {
                        _gotoNext = 313341i32;
                    };
                } else if (__value__ == (313151i32)) {
                    _o_313132 = stdgo._internal.internal.cpu.Cpu__options._options[(_i_313137_0 : stdgo.GoInt)];
                    if (!_o_313132.specified) {
                        _gotoNext = 313171i32;
                    } else {
                        _gotoNext = 313192i32;
                    };
                } else if (__value__ == (313171i32)) {
                    _i_313137_0++;
                    _gotoNext = 313339i32;
                } else if (__value__ == (313192i32)) {
                    if ((_o_313132.enable && !_o_313132.feature.value : Bool)) {
                        _gotoNext = 313219i32;
                    } else {
                        _gotoNext = 313316i32;
                    };
                } else if (__value__ == (313219i32)) {
                    stdgo.Go.print(("GODEBUG: can not enable \"" : stdgo.GoString), _o_313132.name, ("\", missing CPU support\n" : stdgo.GoString));
                    _i_313137_0++;
                    _gotoNext = 313339i32;
                } else if (__value__ == (313316i32)) {
                    _o_313132.feature.value = _o_313132.enable;
                    _i_313137_0++;
                    _gotoNext = 313339i32;
                } else if (__value__ == (313338i32)) {
                    {
                        final __tmp__0 = 0i32;
                        final __tmp__1 = stdgo._internal.internal.cpu.Cpu__options._options[(0i32 : stdgo.GoInt)];
                        _i_313137_0 = __tmp__0;
                        _o_313132 = __tmp__1;
                    };
                    _gotoNext = 313339i32;
                } else if (__value__ == (313339i32)) {
                    if (_i_313137_0 < (stdgo._internal.internal.cpu.Cpu__options._options.length)) {
                        _gotoNext = 313151i32;
                    } else {
                        _gotoNext = 313341i32;
                    };
                } else if (__value__ == (313341i32)) {
                    _gotoNext = -1i32;
                };
            };
        };
    }
