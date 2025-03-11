package stdgo._internal.internal.cpu;
function _processOptions(_env:stdgo.GoString):Void {
        var _key_2:stdgo.GoString = ("" : stdgo.GoString);
        var _field_0:stdgo.GoString = ("" : stdgo.GoString);
        var _i_29679_7:stdgo.GoInt = (0 : stdgo.GoInt);
        var _value_3:stdgo.GoString = ("" : stdgo.GoString);
        var _i_1:stdgo.GoInt = (0 : stdgo.GoInt);
        var _fieldBreak = false;
        var _o_8:stdgo._internal.internal.cpu.Cpu_t_option.T_option = ({} : stdgo._internal.internal.cpu.Cpu_t_option.T_option);
        var _i_6:stdgo.GoInt = (0 : stdgo.GoInt);
        var _i_5:stdgo.GoInt = (0 : stdgo.GoInt);
        var _enable_4:Bool = false;
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    _gotoNext = 28704i32;
                } else if (__value__ == (28704i32)) {
                    var __blank__ = 0i32;
                    _fieldBreak = false;
                    _gotoNext = 28712i32;
                } else if (__value__ == (28712i32)) {
                    if (!_fieldBreak && (_env != (stdgo.Go.str() : stdgo.GoString))) {
                        _gotoNext = 28726i32;
                    } else {
                        _gotoNext = 29667i32;
                    };
                } else if (__value__ == (28726i32)) {
                    _field_0 = (stdgo.Go.str() : stdgo.GoString)?.__copy__();
                    _i_1 = stdgo._internal.internal.cpu.Cpu__indexbyte._indexByte(_env?.__copy__(), (44 : stdgo.GoUInt8));
                    if ((_i_1 < (0 : stdgo.GoInt) : Bool)) {
                        _gotoNext = 28780i32;
                    } else {
                        _gotoNext = 28815i32;
                    };
                } else if (__value__ == (28780i32)) {
                    {
                        final __tmp__0 = _env?.__copy__();
                        final __tmp__1 = (stdgo.Go.str() : stdgo.GoString)?.__copy__();
                        _field_0 = @:binopAssign __tmp__0;
                        _env = @:binopAssign __tmp__1;
                    };
                    _gotoNext = 28858i32;
                } else if (__value__ == (28815i32)) {
                    _gotoNext = 28815i32;
                    {
                        final __tmp__0 = (_env.__slice__(0, _i_1) : stdgo.GoString)?.__copy__();
                        final __tmp__1 = (_env.__slice__((_i_1 + (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        _field_0 = @:binopAssign __tmp__0;
                        _env = @:binopAssign __tmp__1;
                    };
                    var __blank__ = 0i32;
                    _gotoNext = 28858i32;
                } else if (__value__ == (28858i32)) {
                    if ((((_field_0.length) < (4 : stdgo.GoInt) : Bool) || ((_field_0.__slice__(0, (4 : stdgo.GoInt)) : stdgo.GoString) != ("cpu." : stdgo.GoString)) : Bool)) {
                        _gotoNext = 28899i32;
                    } else {
                        _gotoNext = 28919i32;
                    };
                } else if (__value__ == (28899i32)) {
                    var __blank__ = 0i32;
                    _gotoNext = 28712i32;
                } else if (__value__ == (28919i32)) {
                    _i_1 = stdgo._internal.internal.cpu.Cpu__indexbyte._indexByte(_field_0?.__copy__(), (61 : stdgo.GoUInt8));
                    if ((_i_1 < (0 : stdgo.GoInt) : Bool)) {
                        _gotoNext = 28956i32;
                    } else {
                        _gotoNext = 29038i32;
                    };
                } else if (__value__ == (28956i32)) {
                    stdgo.Go.print(("GODEBUG: no value specified for \"" : stdgo.GoString), _field_0, ("\"\n" : stdgo.GoString));
                    var __blank__ = 0i32;
                    _gotoNext = 28712i32;
                } else if (__value__ == (29038i32)) {
                    {
                        final __tmp__0 = (_field_0.__slice__((4 : stdgo.GoInt), _i_1) : stdgo.GoString)?.__copy__();
                        final __tmp__1 = (_field_0.__slice__((_i_1 + (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        _key_2 = @:binopAssign __tmp__0;
                        _value_3 = @:binopAssign __tmp__1;
                    };
                    _gotoNext = 29118i32;
                } else if (__value__ == (29118i32)) {
                    {
                        final __value__ = _value_3;
                        if (__value__ == (("on" : stdgo.GoString))) {
                            _gotoNext = 29135i32;
                        } else if (__value__ == (("off" : stdgo.GoString))) {
                            _gotoNext = 29165i32;
                        } else {
                            _gotoNext = 29197i32;
                        };
                    };
                } else if (__value__ == (29135i32)) {
                    _enable_4 = true;
                    _gotoNext = 29319i32;
                } else if (__value__ == (29165i32)) {
                    _enable_4 = false;
                    _gotoNext = 29319i32;
                } else if (__value__ == (29197i32)) {
                    stdgo.Go.print(("GODEBUG: value \"" : stdgo.GoString), _value_3, ("\" not supported for cpu option \"" : stdgo.GoString), _key_2, ("\"\n" : stdgo.GoString));
                    _gotoNext = 28712i32;
                } else if (__value__ == (29319i32)) {
                    if (_key_2 == (("all" : stdgo.GoString))) {
                        _gotoNext = 29335i32;
                    } else {
                        _gotoNext = 29458i32;
                    };
                } else if (__value__ == (29335i32)) {
                    if ((0i32 : stdgo.GoInt) < (stdgo._internal.internal.cpu.Cpu__options._options.length)) {
                        _gotoNext = 29430i32;
                    } else {
                        _gotoNext = 29436i32;
                    };
                } else if (__value__ == (29363i32)) {
                    stdgo._internal.internal.cpu.Cpu__options._options[(_i_5 : stdgo.GoInt)].specified = true;
                    stdgo._internal.internal.cpu.Cpu__options._options[(_i_5 : stdgo.GoInt)].enable = _enable_4;
                    _i_5++;
                    _gotoNext = 29431i32;
                } else if (__value__ == (29430i32)) {
                    _i_5 = 0i32;
                    _gotoNext = 29431i32;
                } else if (__value__ == (29431i32)) {
                    if (_i_5 < (stdgo._internal.internal.cpu.Cpu__options._options.length)) {
                        _gotoNext = 29363i32;
                    } else {
                        _gotoNext = 29436i32;
                    };
                } else if (__value__ == (29436i32)) {
                    _gotoNext = 28712i32;
                } else if (__value__ == (29458i32)) {
                    if ((0i32 : stdgo.GoInt) < (stdgo._internal.internal.cpu.Cpu__options._options.length)) {
                        _gotoNext = 29602i32;
                    } else {
                        _gotoNext = 29608i32;
                    };
                } else if (__value__ == (29462i32)) {
                    _i_6++;
                    _gotoNext = 29603i32;
                } else if (__value__ == (29481i32)) {
                    if (stdgo._internal.internal.cpu.Cpu__options._options[(_i_6 : stdgo.GoInt)].name == (_key_2)) {
                        _gotoNext = 29512i32;
                    } else {
                        _gotoNext = 29462i32;
                    };
                } else if (__value__ == (29512i32)) {
                    stdgo._internal.internal.cpu.Cpu__options._options[(_i_6 : stdgo.GoInt)].specified = true;
                    stdgo._internal.internal.cpu.Cpu__options._options[(_i_6 : stdgo.GoInt)].enable = _enable_4;
                    _gotoNext = 28712i32;
                } else if (__value__ == (29602i32)) {
                    _i_6 = 0i32;
                    _gotoNext = 29603i32;
                } else if (__value__ == (29603i32)) {
                    if (_i_6 < (stdgo._internal.internal.cpu.Cpu__options._options.length)) {
                        _gotoNext = 29481i32;
                    } else {
                        _gotoNext = 29608i32;
                    };
                } else if (__value__ == (29608i32)) {
                    stdgo.Go.print(("GODEBUG: unknown cpu feature \"" : stdgo.GoString), _key_2, ("\"\n" : stdgo.GoString));
                    _gotoNext = 28712i32;
                } else if (__value__ == (29667i32)) {
                    if ((0i32 : stdgo.GoInt) < (stdgo._internal.internal.cpu.Cpu__options._options.length)) {
                        _gotoNext = 29880i32;
                    } else {
                        _gotoNext = 29883i32;
                    };
                } else if (__value__ == (29693i32)) {
                    _o_8 = stdgo._internal.internal.cpu.Cpu__options._options[(_i_29679_7 : stdgo.GoInt)];
                    if (!_o_8.specified) {
                        _gotoNext = 29713i32;
                    } else {
                        _gotoNext = 29734i32;
                    };
                } else if (__value__ == (29713i32)) {
                    _i_29679_7++;
                    _gotoNext = 29881i32;
                } else if (__value__ == (29734i32)) {
                    if ((_o_8.enable && !_o_8.feature.value : Bool)) {
                        _gotoNext = 29761i32;
                    } else {
                        _gotoNext = 29858i32;
                    };
                } else if (__value__ == (29761i32)) {
                    stdgo.Go.print(("GODEBUG: can not enable \"" : stdgo.GoString), _o_8.name, ("\", missing CPU support\n" : stdgo.GoString));
                    _i_29679_7++;
                    _gotoNext = 29881i32;
                } else if (__value__ == (29858i32)) {
                    _o_8.feature.value = _o_8.enable;
                    _i_29679_7++;
                    _gotoNext = 29881i32;
                } else if (__value__ == (29880i32)) {
                    {
                        final __tmp__0 = 0i32;
                        final __tmp__1 = stdgo._internal.internal.cpu.Cpu__options._options[(0i32 : stdgo.GoInt)];
                        _i_29679_7 = @:binopAssign __tmp__0;
                        _o_8 = @:binopAssign __tmp__1;
                    };
                    _gotoNext = 29881i32;
                } else if (__value__ == (29881i32)) {
                    if (_i_29679_7 < (stdgo._internal.internal.cpu.Cpu__options._options.length)) {
                        _gotoNext = 29693i32;
                    } else {
                        _gotoNext = 29883i32;
                    };
                } else if (__value__ == (29883i32)) {
                    _gotoNext = -1i32;
                };
            };
        };
    }
