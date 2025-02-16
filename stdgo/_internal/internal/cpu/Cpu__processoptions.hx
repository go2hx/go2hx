package stdgo._internal.internal.cpu;
function _processOptions(_env:stdgo.GoString):Void {
        var _o_8:stdgo._internal.internal.cpu.Cpu_t_option.T_option = ({} : stdgo._internal.internal.cpu.Cpu_t_option.T_option);
        var _enable_4:Bool = false;
        var _key_2:stdgo.GoString = ("" : stdgo.GoString);
        var _i_1:stdgo.GoInt = (0 : stdgo.GoInt);
        var _field_0:stdgo.GoString = ("" : stdgo.GoString);
        var _fieldBreak = false;
        var _i_56556_7:stdgo.GoInt = (0 : stdgo.GoInt);
        var _i_6:stdgo.GoInt = (0 : stdgo.GoInt);
        var _i_5:stdgo.GoInt = (0 : stdgo.GoInt);
        var _value_3:stdgo.GoString = ("" : stdgo.GoString);
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    _gotoNext = 55581i32;
                } else if (__value__ == (55581i32)) {
                    var __blank__ = 0i32;
                    _fieldBreak = false;
                    _gotoNext = 55589i32;
                } else if (__value__ == (55589i32)) {
                    if (!_fieldBreak && (_env != (stdgo.Go.str() : stdgo.GoString))) {
                        _gotoNext = 55603i32;
                    } else {
                        _gotoNext = 56544i32;
                    };
                } else if (__value__ == (55603i32)) {
                    _field_0 = (stdgo.Go.str() : stdgo.GoString)?.__copy__();
                    _i_1 = stdgo._internal.internal.cpu.Cpu__indexbyte._indexByte(_env?.__copy__(), (44 : stdgo.GoUInt8));
                    if ((_i_1 < (0 : stdgo.GoInt) : Bool)) {
                        _gotoNext = 55657i32;
                    } else {
                        _gotoNext = 55692i32;
                    };
                } else if (__value__ == (55657i32)) {
                    {
                        final __tmp__0 = _env?.__copy__();
                        final __tmp__1 = (stdgo.Go.str() : stdgo.GoString)?.__copy__();
                        _field_0 = __tmp__0;
                        _env = __tmp__1;
                    };
                    _gotoNext = 55735i32;
                } else if (__value__ == (55692i32)) {
                    _gotoNext = 55692i32;
                    {
                        final __tmp__0 = (_env.__slice__(0, _i_1) : stdgo.GoString)?.__copy__();
                        final __tmp__1 = (_env.__slice__((_i_1 + (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        _field_0 = __tmp__0;
                        _env = __tmp__1;
                    };
                    var __blank__ = 0i32;
                    _gotoNext = 55735i32;
                } else if (__value__ == (55735i32)) {
                    if ((((_field_0.length) < (4 : stdgo.GoInt) : Bool) || ((_field_0.__slice__(0, (4 : stdgo.GoInt)) : stdgo.GoString) != ("cpu." : stdgo.GoString)) : Bool)) {
                        _gotoNext = 55776i32;
                    } else {
                        _gotoNext = 55796i32;
                    };
                } else if (__value__ == (55776i32)) {
                    var __blank__ = 0i32;
                    _gotoNext = 55589i32;
                } else if (__value__ == (55796i32)) {
                    _i_1 = stdgo._internal.internal.cpu.Cpu__indexbyte._indexByte(_field_0?.__copy__(), (61 : stdgo.GoUInt8));
                    if ((_i_1 < (0 : stdgo.GoInt) : Bool)) {
                        _gotoNext = 55833i32;
                    } else {
                        _gotoNext = 55915i32;
                    };
                } else if (__value__ == (55833i32)) {
                    stdgo.Go.print(("GODEBUG: no value specified for \"" : stdgo.GoString), _field_0, ("\"\n" : stdgo.GoString));
                    var __blank__ = 0i32;
                    _gotoNext = 55589i32;
                } else if (__value__ == (55915i32)) {
                    {
                        final __tmp__0 = (_field_0.__slice__((4 : stdgo.GoInt), _i_1) : stdgo.GoString)?.__copy__();
                        final __tmp__1 = (_field_0.__slice__((_i_1 + (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        _key_2 = __tmp__0;
                        _value_3 = __tmp__1;
                    };
                    _gotoNext = 55995i32;
                } else if (__value__ == (55995i32)) {
                    {
                        final __value__ = _value_3;
                        if (__value__ == (("on" : stdgo.GoString))) {
                            _gotoNext = 56012i32;
                        } else if (__value__ == (("off" : stdgo.GoString))) {
                            _gotoNext = 56042i32;
                        } else {
                            _gotoNext = 56074i32;
                        };
                    };
                } else if (__value__ == (56012i32)) {
                    _enable_4 = true;
                    _gotoNext = 56196i32;
                } else if (__value__ == (56042i32)) {
                    _enable_4 = false;
                    _gotoNext = 56196i32;
                } else if (__value__ == (56074i32)) {
                    stdgo.Go.print(("GODEBUG: value \"" : stdgo.GoString), _value_3, ("\" not supported for cpu option \"" : stdgo.GoString), _key_2, ("\"\n" : stdgo.GoString));
                    _gotoNext = 55589i32;
                } else if (__value__ == (56196i32)) {
                    if (_key_2 == (("all" : stdgo.GoString))) {
                        _gotoNext = 56212i32;
                    } else {
                        _gotoNext = 56335i32;
                    };
                } else if (__value__ == (56212i32)) {
                    if ((0i32 : stdgo.GoInt) < (stdgo._internal.internal.cpu.Cpu__options._options.length)) {
                        _gotoNext = 56307i32;
                    } else {
                        _gotoNext = 56313i32;
                    };
                } else if (__value__ == (56240i32)) {
                    stdgo._internal.internal.cpu.Cpu__options._options[(_i_5 : stdgo.GoInt)].specified = true;
                    stdgo._internal.internal.cpu.Cpu__options._options[(_i_5 : stdgo.GoInt)].enable = _enable_4;
                    _i_5++;
                    _gotoNext = 56308i32;
                } else if (__value__ == (56307i32)) {
                    _i_5 = 0i32;
                    _gotoNext = 56308i32;
                } else if (__value__ == (56308i32)) {
                    if (_i_5 < (stdgo._internal.internal.cpu.Cpu__options._options.length)) {
                        _gotoNext = 56240i32;
                    } else {
                        _gotoNext = 56313i32;
                    };
                } else if (__value__ == (56313i32)) {
                    _gotoNext = 55589i32;
                } else if (__value__ == (56335i32)) {
                    if ((0i32 : stdgo.GoInt) < (stdgo._internal.internal.cpu.Cpu__options._options.length)) {
                        _gotoNext = 56479i32;
                    } else {
                        _gotoNext = 56485i32;
                    };
                } else if (__value__ == (56339i32)) {
                    _i_6++;
                    _gotoNext = 56480i32;
                } else if (__value__ == (56358i32)) {
                    if (stdgo._internal.internal.cpu.Cpu__options._options[(_i_6 : stdgo.GoInt)].name == (_key_2)) {
                        _gotoNext = 56389i32;
                    } else {
                        _gotoNext = 56339i32;
                    };
                } else if (__value__ == (56389i32)) {
                    stdgo._internal.internal.cpu.Cpu__options._options[(_i_6 : stdgo.GoInt)].specified = true;
                    stdgo._internal.internal.cpu.Cpu__options._options[(_i_6 : stdgo.GoInt)].enable = _enable_4;
                    _gotoNext = 55589i32;
                } else if (__value__ == (56479i32)) {
                    _i_6 = 0i32;
                    _gotoNext = 56480i32;
                } else if (__value__ == (56480i32)) {
                    if (_i_6 < (stdgo._internal.internal.cpu.Cpu__options._options.length)) {
                        _gotoNext = 56358i32;
                    } else {
                        _gotoNext = 56485i32;
                    };
                } else if (__value__ == (56485i32)) {
                    stdgo.Go.print(("GODEBUG: unknown cpu feature \"" : stdgo.GoString), _key_2, ("\"\n" : stdgo.GoString));
                    _gotoNext = 55589i32;
                } else if (__value__ == (56544i32)) {
                    if ((0i32 : stdgo.GoInt) < (stdgo._internal.internal.cpu.Cpu__options._options.length)) {
                        _gotoNext = 56757i32;
                    } else {
                        _gotoNext = 56760i32;
                    };
                } else if (__value__ == (56570i32)) {
                    _o_8 = stdgo._internal.internal.cpu.Cpu__options._options[(_i_56556_7 : stdgo.GoInt)];
                    if (!_o_8.specified) {
                        _gotoNext = 56590i32;
                    } else {
                        _gotoNext = 56611i32;
                    };
                } else if (__value__ == (56590i32)) {
                    _i_56556_7++;
                    _gotoNext = 56758i32;
                } else if (__value__ == (56611i32)) {
                    if ((_o_8.enable && !_o_8.feature.value : Bool)) {
                        _gotoNext = 56638i32;
                    } else {
                        _gotoNext = 56735i32;
                    };
                } else if (__value__ == (56638i32)) {
                    stdgo.Go.print(("GODEBUG: can not enable \"" : stdgo.GoString), _o_8.name, ("\", missing CPU support\n" : stdgo.GoString));
                    _i_56556_7++;
                    _gotoNext = 56758i32;
                } else if (__value__ == (56735i32)) {
                    _o_8.feature.value = _o_8.enable;
                    _i_56556_7++;
                    _gotoNext = 56758i32;
                } else if (__value__ == (56757i32)) {
                    {
                        final __tmp__0 = 0i32;
                        final __tmp__1 = stdgo._internal.internal.cpu.Cpu__options._options[(0i32 : stdgo.GoInt)];
                        _i_56556_7 = __tmp__0;
                        _o_8 = __tmp__1;
                    };
                    _gotoNext = 56758i32;
                } else if (__value__ == (56758i32)) {
                    if (_i_56556_7 < (stdgo._internal.internal.cpu.Cpu__options._options.length)) {
                        _gotoNext = 56570i32;
                    } else {
                        _gotoNext = 56760i32;
                    };
                } else if (__value__ == (56760i32)) {
                    _gotoNext = -1i32;
                };
            };
        };
    }
