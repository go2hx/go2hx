package stdgo._internal.internal.cpu;
function _processOptions(_env:stdgo.GoString):Void {
        var _i_41444:stdgo.GoInt = (0 : stdgo.GoInt);
        var _fieldBreak = false;
        var _key_41738:stdgo.GoString = ("" : stdgo.GoString);
        var _value_41743:stdgo.GoString = ("" : stdgo.GoString);
        var _field_41430:stdgo.GoString = ("" : stdgo.GoString);
        var _o_42374:stdgo._internal.internal.cpu.Cpu_T_option.T_option = ({} : stdgo._internal.internal.cpu.Cpu_T_option.T_option);
        var _i_42379_0:stdgo.GoInt = (0 : stdgo.GoInt);
        var _i_42162:stdgo.GoInt = (0 : stdgo.GoInt);
        var _i_42044:stdgo.GoInt = (0 : stdgo.GoInt);
        var _enable_41804:Bool = false;
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    _gotoNext = 41404i32;
                } else if (__value__ == (41404i32)) {
                    var __blank__ = 0i32;
                    _fieldBreak = false;
                    _gotoNext = 41412i32;
                } else if (__value__ == (41412i32)) {
                    if (!_fieldBreak && (_env != stdgo.Go.str())) {
                        _gotoNext = 41426i32;
                    } else {
                        _gotoNext = 42367i32;
                    };
                } else if (__value__ == (41426i32)) {
                    _field_41430 = stdgo.Go.str()?.__copy__();
                    _i_41444 = stdgo._internal.internal.cpu.Cpu__indexByte._indexByte(_env?.__copy__(), (44 : stdgo.GoUInt8));
                    if ((_i_41444 < (0 : stdgo.GoInt) : Bool)) {
                        _gotoNext = 41480i32;
                    } else {
                        _gotoNext = 41515i32;
                    };
                } else if (__value__ == (41480i32)) {
                    {
                        final __tmp__0 = _env?.__copy__();
                        final __tmp__1 = stdgo.Go.str()?.__copy__();
                        _field_41430 = __tmp__0;
                        _env = __tmp__1;
                    };
                    _gotoNext = 41558i32;
                } else if (__value__ == (41515i32)) {
                    _gotoNext = 41515i32;
                    {
                        final __tmp__0 = (_env.__slice__(0, _i_41444) : stdgo.GoString)?.__copy__();
                        final __tmp__1 = (_env.__slice__((_i_41444 + (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        _field_41430 = __tmp__0;
                        _env = __tmp__1;
                    };
                    var __blank__ = 0i32;
                    _gotoNext = 41558i32;
                } else if (__value__ == (41558i32)) {
                    if ((((_field_41430.length) < (4 : stdgo.GoInt) : Bool) || ((_field_41430.__slice__(0, (4 : stdgo.GoInt)) : stdgo.GoString) != ("cpu." : stdgo.GoString)) : Bool)) {
                        _gotoNext = 41599i32;
                    } else {
                        _gotoNext = 41619i32;
                    };
                } else if (__value__ == (41599i32)) {
                    var __blank__ = 0i32;
                    _gotoNext = 41412i32;
                } else if (__value__ == (41619i32)) {
                    _i_41444 = stdgo._internal.internal.cpu.Cpu__indexByte._indexByte(_field_41430?.__copy__(), (61 : stdgo.GoUInt8));
                    if ((_i_41444 < (0 : stdgo.GoInt) : Bool)) {
                        _gotoNext = 41656i32;
                    } else {
                        _gotoNext = 41738i32;
                    };
                } else if (__value__ == (41656i32)) {
                    stdgo.Go.print(("GODEBUG: no value specified for \"" : stdgo.GoString), _field_41430, ("\"\n" : stdgo.GoString));
                    var __blank__ = 0i32;
                    _gotoNext = 41412i32;
                } else if (__value__ == (41738i32)) {
                    {
                        final __tmp__0 = (_field_41430.__slice__((4 : stdgo.GoInt), _i_41444) : stdgo.GoString)?.__copy__();
                        final __tmp__1 = (_field_41430.__slice__((_i_41444 + (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        _key_41738 = __tmp__0;
                        _value_41743 = __tmp__1;
                    };
                    _gotoNext = 41818i32;
                } else if (__value__ == (41818i32)) {
                    {
                        final __value__ = _value_41743;
                        if (__value__ == (("on" : stdgo.GoString))) {
                            _gotoNext = 41835i32;
                        } else if (__value__ == (("off" : stdgo.GoString))) {
                            _gotoNext = 41865i32;
                        } else {
                            _gotoNext = 41897i32;
                        };
                    };
                } else if (__value__ == (41835i32)) {
                    _enable_41804 = true;
                    _gotoNext = 42019i32;
                } else if (__value__ == (41865i32)) {
                    _enable_41804 = false;
                    _gotoNext = 42019i32;
                } else if (__value__ == (41897i32)) {
                    stdgo.Go.print(("GODEBUG: value \"" : stdgo.GoString), _value_41743, ("\" not supported for cpu option \"" : stdgo.GoString), _key_41738, ("\"\n" : stdgo.GoString));
                    _gotoNext = 41412i32;
                } else if (__value__ == (42019i32)) {
                    if (_key_41738 == (("all" : stdgo.GoString))) {
                        _gotoNext = 42035i32;
                    } else {
                        _gotoNext = 42158i32;
                    };
                } else if (__value__ == (42035i32)) {
                    if ((0i32 : stdgo.GoInt) < (stdgo._internal.internal.cpu.Cpu__options._options.length)) {
                        _gotoNext = 42130i32;
                    } else {
                        _gotoNext = 42136i32;
                    };
                } else if (__value__ == (42063i32)) {
                    stdgo._internal.internal.cpu.Cpu__options._options[(_i_42044 : stdgo.GoInt)].specified = true;
                    stdgo._internal.internal.cpu.Cpu__options._options[(_i_42044 : stdgo.GoInt)].enable = _enable_41804;
                    _i_42044++;
                    _gotoNext = 42131i32;
                } else if (__value__ == (42130i32)) {
                    _i_42044 = 0i32;
                    _gotoNext = 42131i32;
                } else if (__value__ == (42131i32)) {
                    if (_i_42044 < (stdgo._internal.internal.cpu.Cpu__options._options.length)) {
                        _gotoNext = 42063i32;
                    } else {
                        _gotoNext = 42136i32;
                    };
                } else if (__value__ == (42136i32)) {
                    _gotoNext = 41412i32;
                } else if (__value__ == (42158i32)) {
                    if ((0i32 : stdgo.GoInt) < (stdgo._internal.internal.cpu.Cpu__options._options.length)) {
                        _gotoNext = 42302i32;
                    } else {
                        _gotoNext = 42308i32;
                    };
                } else if (__value__ == (42162i32)) {
                    _i_42162++;
                    _gotoNext = 42303i32;
                } else if (__value__ == (42181i32)) {
                    if (stdgo._internal.internal.cpu.Cpu__options._options[(_i_42162 : stdgo.GoInt)].name == (_key_41738)) {
                        _gotoNext = 42212i32;
                    } else {
                        _gotoNext = 42162i32;
                    };
                } else if (__value__ == (42212i32)) {
                    stdgo._internal.internal.cpu.Cpu__options._options[(_i_42162 : stdgo.GoInt)].specified = true;
                    stdgo._internal.internal.cpu.Cpu__options._options[(_i_42162 : stdgo.GoInt)].enable = _enable_41804;
                    _gotoNext = 41412i32;
                } else if (__value__ == (42302i32)) {
                    _i_42162 = 0i32;
                    _gotoNext = 42303i32;
                } else if (__value__ == (42303i32)) {
                    if (_i_42162 < (stdgo._internal.internal.cpu.Cpu__options._options.length)) {
                        _gotoNext = 42181i32;
                    } else {
                        _gotoNext = 42308i32;
                    };
                } else if (__value__ == (42308i32)) {
                    stdgo.Go.print(("GODEBUG: unknown cpu feature \"" : stdgo.GoString), _key_41738, ("\"\n" : stdgo.GoString));
                    _gotoNext = 41412i32;
                } else if (__value__ == (42367i32)) {
                    if ((0i32 : stdgo.GoInt) < (stdgo._internal.internal.cpu.Cpu__options._options.length)) {
                        _gotoNext = 42580i32;
                    } else {
                        _gotoNext = 42583i32;
                    };
                } else if (__value__ == (42393i32)) {
                    _o_42374 = stdgo._internal.internal.cpu.Cpu__options._options[(_i_42379_0 : stdgo.GoInt)];
                    if (!_o_42374.specified) {
                        _gotoNext = 42413i32;
                    } else {
                        _gotoNext = 42434i32;
                    };
                } else if (__value__ == (42413i32)) {
                    _i_42379_0++;
                    _gotoNext = 42581i32;
                } else if (__value__ == (42434i32)) {
                    if ((_o_42374.enable && !_o_42374.feature.value : Bool)) {
                        _gotoNext = 42461i32;
                    } else {
                        _gotoNext = 42558i32;
                    };
                } else if (__value__ == (42461i32)) {
                    stdgo.Go.print(("GODEBUG: can not enable \"" : stdgo.GoString), _o_42374.name, ("\", missing CPU support\n" : stdgo.GoString));
                    _i_42379_0++;
                    _gotoNext = 42581i32;
                } else if (__value__ == (42558i32)) {
                    _o_42374.feature.value = _o_42374.enable;
                    _i_42379_0++;
                    _gotoNext = 42581i32;
                } else if (__value__ == (42580i32)) {
                    {
                        final __tmp__0 = 0i32;
                        final __tmp__1 = stdgo._internal.internal.cpu.Cpu__options._options[(0i32 : stdgo.GoInt)];
                        _i_42379_0 = __tmp__0;
                        _o_42374 = __tmp__1;
                    };
                    _gotoNext = 42581i32;
                } else if (__value__ == (42581i32)) {
                    if (_i_42379_0 < (stdgo._internal.internal.cpu.Cpu__options._options.length)) {
                        _gotoNext = 42393i32;
                    } else {
                        _gotoNext = 42583i32;
                    };
                } else if (__value__ == (42583i32)) {
                    _gotoNext = -1i32;
                };
            };
        };
    }
