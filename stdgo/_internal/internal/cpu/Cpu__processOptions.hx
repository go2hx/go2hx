package stdgo._internal.internal.cpu;
function _processOptions(_env:stdgo.GoString):Void {
        var _i_264898:stdgo.GoInt = (0 : stdgo.GoInt);
        var _i_264780:stdgo.GoInt = (0 : stdgo.GoInt);
        var _enable_264540:Bool = false;
        var _value_264479:stdgo.GoString = ("" : stdgo.GoString);
        var _i_264180:stdgo.GoInt = (0 : stdgo.GoInt);
        var _field_264166:stdgo.GoString = ("" : stdgo.GoString);
        var _o_265110:stdgo._internal.internal.cpu.Cpu_T_option.T_option = ({} : stdgo._internal.internal.cpu.Cpu_T_option.T_option);
        var _i_265115_0:stdgo.GoInt = (0 : stdgo.GoInt);
        var _key_264474:stdgo.GoString = ("" : stdgo.GoString);
        var _fieldBreak = false;
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    _gotoNext = 264140i32;
                } else if (__value__ == (264140i32)) {
                    var __blank__ = 0i32;
                    _fieldBreak = false;
                    _gotoNext = 264148i32;
                } else if (__value__ == (264148i32)) {
                    if (!_fieldBreak && (_env != stdgo.Go.str())) {
                        _gotoNext = 264162i32;
                    } else {
                        _gotoNext = 265103i32;
                    };
                } else if (__value__ == (264162i32)) {
                    _field_264166 = stdgo.Go.str()?.__copy__();
                    _i_264180 = stdgo._internal.internal.cpu.Cpu__indexByte._indexByte(_env?.__copy__(), (44 : stdgo.GoUInt8));
                    if ((_i_264180 < (0 : stdgo.GoInt) : Bool)) {
                        _gotoNext = 264216i32;
                    } else {
                        _gotoNext = 264251i32;
                    };
                } else if (__value__ == (264216i32)) {
                    {
                        final __tmp__0 = _env?.__copy__();
                        final __tmp__1 = stdgo.Go.str()?.__copy__();
                        _field_264166 = __tmp__0;
                        _env = __tmp__1;
                    };
                    _gotoNext = 264294i32;
                } else if (__value__ == (264251i32)) {
                    {
                        final __tmp__0 = (_env.__slice__(0, _i_264180) : stdgo.GoString)?.__copy__();
                        final __tmp__1 = (_env.__slice__((_i_264180 + (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        _field_264166 = __tmp__0;
                        _env = __tmp__1;
                    };
                    _gotoNext = 264294i32;
                } else if (__value__ == (264294i32)) {
                    if ((((_field_264166.length) < (4 : stdgo.GoInt) : Bool) || ((_field_264166.__slice__(0, (4 : stdgo.GoInt)) : stdgo.GoString) != ("cpu." : stdgo.GoString)) : Bool)) {
                        _gotoNext = 264335i32;
                    } else {
                        _gotoNext = 264355i32;
                    };
                } else if (__value__ == (264335i32)) {
                    var __blank__ = 0i32;
                    _gotoNext = 264148i32;
                } else if (__value__ == (264355i32)) {
                    _i_264180 = stdgo._internal.internal.cpu.Cpu__indexByte._indexByte(_field_264166?.__copy__(), (61 : stdgo.GoUInt8));
                    if ((_i_264180 < (0 : stdgo.GoInt) : Bool)) {
                        _gotoNext = 264392i32;
                    } else {
                        _gotoNext = 264474i32;
                    };
                } else if (__value__ == (264392i32)) {
                    stdgo.Go.print(("GODEBUG: no value specified for \"" : stdgo.GoString), _field_264166, ("\"\n" : stdgo.GoString));
                    var __blank__ = 0i32;
                    _gotoNext = 264148i32;
                } else if (__value__ == (264474i32)) {
                    {
                        final __tmp__0 = (_field_264166.__slice__((4 : stdgo.GoInt), _i_264180) : stdgo.GoString)?.__copy__();
                        final __tmp__1 = (_field_264166.__slice__((_i_264180 + (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        _key_264474 = __tmp__0;
                        _value_264479 = __tmp__1;
                    };
                    var __blank__ = 0i32;
                    _gotoNext = 264554i32;
                } else if (__value__ == (264554i32)) {
                    {
                        final __value__ = _value_264479;
                        if (__value__ == (("on" : stdgo.GoString))) {
                            _gotoNext = 264571i32;
                        } else if (__value__ == (("off" : stdgo.GoString))) {
                            _gotoNext = 264601i32;
                        } else {
                            _gotoNext = 264633i32;
                        };
                    };
                } else if (__value__ == (264571i32)) {
                    _enable_264540 = true;
                    _gotoNext = 264755i32;
                } else if (__value__ == (264601i32)) {
                    _enable_264540 = false;
                    _gotoNext = 264755i32;
                } else if (__value__ == (264633i32)) {
                    stdgo.Go.print(("GODEBUG: value \"" : stdgo.GoString), _value_264479, ("\" not supported for cpu option \"" : stdgo.GoString), _key_264474, ("\"\n" : stdgo.GoString));
                    _gotoNext = 264148i32;
                } else if (__value__ == (264755i32)) {
                    if (_key_264474 == (("all" : stdgo.GoString))) {
                        _gotoNext = 264771i32;
                    } else {
                        _gotoNext = 264894i32;
                    };
                } else if (__value__ == (264771i32)) {
                    if ((0i32 : stdgo.GoInt) < (stdgo._internal.internal.cpu.Cpu__options._options.length)) {
                        _gotoNext = 264866i32;
                    } else {
                        _gotoNext = 264872i32;
                    };
                } else if (__value__ == (264799i32)) {
                    stdgo._internal.internal.cpu.Cpu__options._options[(_i_264780 : stdgo.GoInt)].specified = true;
                    stdgo._internal.internal.cpu.Cpu__options._options[(_i_264780 : stdgo.GoInt)].enable = _enable_264540;
                    _i_264780++;
                    _gotoNext = 264867i32;
                } else if (__value__ == (264866i32)) {
                    _i_264780 = 0i32;
                    _gotoNext = 264867i32;
                } else if (__value__ == (264867i32)) {
                    if (_i_264780 < (stdgo._internal.internal.cpu.Cpu__options._options.length)) {
                        _gotoNext = 264799i32;
                    } else {
                        _gotoNext = 264872i32;
                    };
                } else if (__value__ == (264872i32)) {
                    _gotoNext = 264148i32;
                } else if (__value__ == (264894i32)) {
                    if ((0i32 : stdgo.GoInt) < (stdgo._internal.internal.cpu.Cpu__options._options.length)) {
                        _gotoNext = 265038i32;
                    } else {
                        _gotoNext = 265044i32;
                    };
                } else if (__value__ == (264898i32)) {
                    _i_264898++;
                    _gotoNext = 265039i32;
                } else if (__value__ == (264917i32)) {
                    if (stdgo._internal.internal.cpu.Cpu__options._options[(_i_264898 : stdgo.GoInt)].name == (_key_264474)) {
                        _gotoNext = 264948i32;
                    } else {
                        _gotoNext = 264898i32;
                    };
                } else if (__value__ == (264948i32)) {
                    stdgo._internal.internal.cpu.Cpu__options._options[(_i_264898 : stdgo.GoInt)].specified = true;
                    stdgo._internal.internal.cpu.Cpu__options._options[(_i_264898 : stdgo.GoInt)].enable = _enable_264540;
                    _gotoNext = 264148i32;
                } else if (__value__ == (265038i32)) {
                    _i_264898 = 0i32;
                    _gotoNext = 265039i32;
                } else if (__value__ == (265039i32)) {
                    if (_i_264898 < (stdgo._internal.internal.cpu.Cpu__options._options.length)) {
                        _gotoNext = 264917i32;
                    } else {
                        _gotoNext = 265044i32;
                    };
                } else if (__value__ == (265044i32)) {
                    stdgo.Go.print(("GODEBUG: unknown cpu feature \"" : stdgo.GoString), _key_264474, ("\"\n" : stdgo.GoString));
                    _gotoNext = 264148i32;
                } else if (__value__ == (265103i32)) {
                    if ((0i32 : stdgo.GoInt) < (stdgo._internal.internal.cpu.Cpu__options._options.length)) {
                        _gotoNext = 265316i32;
                    } else {
                        _gotoNext = 265319i32;
                    };
                } else if (__value__ == (265129i32)) {
                    _o_265110 = stdgo._internal.internal.cpu.Cpu__options._options[(_i_265115_0 : stdgo.GoInt)];
                    if (!_o_265110.specified) {
                        _gotoNext = 265149i32;
                    } else {
                        _gotoNext = 265170i32;
                    };
                } else if (__value__ == (265149i32)) {
                    _i_265115_0++;
                    _gotoNext = 265317i32;
                } else if (__value__ == (265170i32)) {
                    if ((_o_265110.enable && !_o_265110.feature.value : Bool)) {
                        _gotoNext = 265197i32;
                    } else {
                        _gotoNext = 265294i32;
                    };
                } else if (__value__ == (265197i32)) {
                    stdgo.Go.print(("GODEBUG: can not enable \"" : stdgo.GoString), _o_265110.name, ("\", missing CPU support\n" : stdgo.GoString));
                    _i_265115_0++;
                    _gotoNext = 265317i32;
                } else if (__value__ == (265294i32)) {
                    _o_265110.feature.value = _o_265110.enable;
                    _i_265115_0++;
                    _gotoNext = 265317i32;
                } else if (__value__ == (265316i32)) {
                    {
                        final __tmp__0 = 0i32;
                        final __tmp__1 = stdgo._internal.internal.cpu.Cpu__options._options[(0i32 : stdgo.GoInt)];
                        _i_265115_0 = __tmp__0;
                        _o_265110 = __tmp__1;
                    };
                    _gotoNext = 265317i32;
                } else if (__value__ == (265317i32)) {
                    if (_i_265115_0 < (stdgo._internal.internal.cpu.Cpu__options._options.length)) {
                        _gotoNext = 265129i32;
                    } else {
                        _gotoNext = 265319i32;
                    };
                } else if (__value__ == (265319i32)) {
                    _gotoNext = -1i32;
                };
            };
        };
    }
