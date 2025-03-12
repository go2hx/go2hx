package stdgo._internal.internal.cpu;
function _processOptions(_env:stdgo.GoString):Void {
        var _i_284946_7:stdgo.GoInt = (0 : stdgo.GoInt);
        var _i_6:stdgo.GoInt = (0 : stdgo.GoInt);
        var _enable_4:Bool = false;
        var _value_3:stdgo.GoString = ("" : stdgo.GoString);
        var _key_2:stdgo.GoString = ("" : stdgo.GoString);
        var _i_1:stdgo.GoInt = (0 : stdgo.GoInt);
        var _field_0:stdgo.GoString = ("" : stdgo.GoString);
        var _o_8:stdgo._internal.internal.cpu.Cpu_t_option.T_option = ({} : stdgo._internal.internal.cpu.Cpu_t_option.T_option);
        var _i_5:stdgo.GoInt = (0 : stdgo.GoInt);
        var _fieldBreak = false;
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    _gotoNext = 283971i32;
                } else if (__value__ == (283971i32)) {
                    var __blank__ = 0i32;
                    _fieldBreak = false;
                    _gotoNext = 283979i32;
                } else if (__value__ == (283979i32)) {
                    if (!_fieldBreak && (_env != (stdgo.Go.str() : stdgo.GoString))) {
                        _gotoNext = 283993i32;
                    } else {
                        _gotoNext = 284934i32;
                    };
                } else if (__value__ == (283993i32)) {
                    _field_0 = (stdgo.Go.str() : stdgo.GoString)?.__copy__();
                    _i_1 = stdgo._internal.internal.cpu.Cpu__indexbyte._indexByte(_env?.__copy__(), (44 : stdgo.GoUInt8));
                    if ((_i_1 < (0 : stdgo.GoInt) : Bool)) {
                        _gotoNext = 284047i32;
                    } else {
                        _gotoNext = 284082i32;
                    };
                } else if (__value__ == (284047i32)) {
                    {
                        final __tmp__0 = _env?.__copy__();
                        final __tmp__1 = (stdgo.Go.str() : stdgo.GoString)?.__copy__();
                        _field_0 = @:binopAssign __tmp__0;
                        _env = @:binopAssign __tmp__1;
                    };
                    _gotoNext = 284125i32;
                } else if (__value__ == (284082i32)) {
                    _gotoNext = 284082i32;
                    {
                        final __tmp__0 = (_env.__slice__(0, _i_1) : stdgo.GoString)?.__copy__();
                        final __tmp__1 = (_env.__slice__((_i_1 + (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        _field_0 = @:binopAssign __tmp__0;
                        _env = @:binopAssign __tmp__1;
                    };
                    var __blank__ = 0i32;
                    _gotoNext = 284125i32;
                } else if (__value__ == (284125i32)) {
                    if ((((_field_0.length) < (4 : stdgo.GoInt) : Bool) || ((_field_0.__slice__(0, (4 : stdgo.GoInt)) : stdgo.GoString) != ("cpu." : stdgo.GoString)) : Bool)) {
                        _gotoNext = 284166i32;
                    } else {
                        _gotoNext = 284186i32;
                    };
                } else if (__value__ == (284166i32)) {
                    var __blank__ = 0i32;
                    _gotoNext = 283979i32;
                } else if (__value__ == (284186i32)) {
                    _i_1 = stdgo._internal.internal.cpu.Cpu__indexbyte._indexByte(_field_0?.__copy__(), (61 : stdgo.GoUInt8));
                    if ((_i_1 < (0 : stdgo.GoInt) : Bool)) {
                        _gotoNext = 284223i32;
                    } else {
                        _gotoNext = 284305i32;
                    };
                } else if (__value__ == (284223i32)) {
                    stdgo.Go.print(("GODEBUG: no value specified for \"" : stdgo.GoString), _field_0, ("\"\n" : stdgo.GoString));
                    var __blank__ = 0i32;
                    _gotoNext = 283979i32;
                } else if (__value__ == (284305i32)) {
                    {
                        final __tmp__0 = (_field_0.__slice__((4 : stdgo.GoInt), _i_1) : stdgo.GoString)?.__copy__();
                        final __tmp__1 = (_field_0.__slice__((_i_1 + (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        _key_2 = @:binopAssign __tmp__0;
                        _value_3 = @:binopAssign __tmp__1;
                    };
                    _gotoNext = 284385i32;
                } else if (__value__ == (284385i32)) {
                    {
                        final __value__ = _value_3;
                        if (__value__ == (("on" : stdgo.GoString))) {
                            _gotoNext = 284402i32;
                        } else if (__value__ == (("off" : stdgo.GoString))) {
                            _gotoNext = 284432i32;
                        } else {
                            _gotoNext = 284464i32;
                        };
                    };
                } else if (__value__ == (284402i32)) {
                    _enable_4 = true;
                    _gotoNext = 284586i32;
                } else if (__value__ == (284432i32)) {
                    _enable_4 = false;
                    _gotoNext = 284586i32;
                } else if (__value__ == (284464i32)) {
                    stdgo.Go.print(("GODEBUG: value \"" : stdgo.GoString), _value_3, ("\" not supported for cpu option \"" : stdgo.GoString), _key_2, ("\"\n" : stdgo.GoString));
                    _gotoNext = 283979i32;
                } else if (__value__ == (284586i32)) {
                    if (_key_2 == (("all" : stdgo.GoString))) {
                        _gotoNext = 284602i32;
                    } else {
                        _gotoNext = 284725i32;
                    };
                } else if (__value__ == (284602i32)) {
                    if ((0i32 : stdgo.GoInt) < (stdgo._internal.internal.cpu.Cpu__options._options.length)) {
                        _gotoNext = 284697i32;
                    } else {
                        _gotoNext = 284703i32;
                    };
                } else if (__value__ == (284630i32)) {
                    stdgo._internal.internal.cpu.Cpu__options._options[(_i_5 : stdgo.GoInt)].specified = true;
                    stdgo._internal.internal.cpu.Cpu__options._options[(_i_5 : stdgo.GoInt)].enable = _enable_4;
                    _i_5++;
                    _gotoNext = 284698i32;
                } else if (__value__ == (284697i32)) {
                    _i_5 = 0i32;
                    _gotoNext = 284698i32;
                } else if (__value__ == (284698i32)) {
                    if (_i_5 < (stdgo._internal.internal.cpu.Cpu__options._options.length)) {
                        _gotoNext = 284630i32;
                    } else {
                        _gotoNext = 284703i32;
                    };
                } else if (__value__ == (284703i32)) {
                    _gotoNext = 283979i32;
                } else if (__value__ == (284725i32)) {
                    if ((0i32 : stdgo.GoInt) < (stdgo._internal.internal.cpu.Cpu__options._options.length)) {
                        _gotoNext = 284869i32;
                    } else {
                        _gotoNext = 284875i32;
                    };
                } else if (__value__ == (284729i32)) {
                    _i_6++;
                    _gotoNext = 284870i32;
                } else if (__value__ == (284748i32)) {
                    if (stdgo._internal.internal.cpu.Cpu__options._options[(_i_6 : stdgo.GoInt)].name == (_key_2)) {
                        _gotoNext = 284779i32;
                    } else {
                        _gotoNext = 284729i32;
                    };
                } else if (__value__ == (284779i32)) {
                    stdgo._internal.internal.cpu.Cpu__options._options[(_i_6 : stdgo.GoInt)].specified = true;
                    stdgo._internal.internal.cpu.Cpu__options._options[(_i_6 : stdgo.GoInt)].enable = _enable_4;
                    _gotoNext = 283979i32;
                } else if (__value__ == (284869i32)) {
                    _i_6 = 0i32;
                    _gotoNext = 284870i32;
                } else if (__value__ == (284870i32)) {
                    if (_i_6 < (stdgo._internal.internal.cpu.Cpu__options._options.length)) {
                        _gotoNext = 284748i32;
                    } else {
                        _gotoNext = 284875i32;
                    };
                } else if (__value__ == (284875i32)) {
                    stdgo.Go.print(("GODEBUG: unknown cpu feature \"" : stdgo.GoString), _key_2, ("\"\n" : stdgo.GoString));
                    _gotoNext = 283979i32;
                } else if (__value__ == (284934i32)) {
                    if ((0i32 : stdgo.GoInt) < (stdgo._internal.internal.cpu.Cpu__options._options.length)) {
                        _gotoNext = 285147i32;
                    } else {
                        _gotoNext = 285150i32;
                    };
                } else if (__value__ == (284960i32)) {
                    _o_8 = stdgo._internal.internal.cpu.Cpu__options._options[(_i_284946_7 : stdgo.GoInt)];
                    if (!_o_8.specified) {
                        _gotoNext = 284980i32;
                    } else {
                        _gotoNext = 285001i32;
                    };
                } else if (__value__ == (284980i32)) {
                    _i_284946_7++;
                    _gotoNext = 285148i32;
                } else if (__value__ == (285001i32)) {
                    if ((_o_8.enable && !_o_8.feature.value : Bool)) {
                        _gotoNext = 285028i32;
                    } else {
                        _gotoNext = 285125i32;
                    };
                } else if (__value__ == (285028i32)) {
                    stdgo.Go.print(("GODEBUG: can not enable \"" : stdgo.GoString), _o_8.name, ("\", missing CPU support\n" : stdgo.GoString));
                    _i_284946_7++;
                    _gotoNext = 285148i32;
                } else if (__value__ == (285125i32)) {
                    _o_8.feature.value = _o_8.enable;
                    _i_284946_7++;
                    _gotoNext = 285148i32;
                } else if (__value__ == (285147i32)) {
                    {
                        final __tmp__0 = 0i32;
                        final __tmp__1 = stdgo._internal.internal.cpu.Cpu__options._options[(0i32 : stdgo.GoInt)];
                        _i_284946_7 = @:binopAssign __tmp__0;
                        _o_8 = @:binopAssign __tmp__1;
                    };
                    _gotoNext = 285148i32;
                } else if (__value__ == (285148i32)) {
                    if (_i_284946_7 < (stdgo._internal.internal.cpu.Cpu__options._options.length)) {
                        _gotoNext = 284960i32;
                    } else {
                        _gotoNext = 285150i32;
                    };
                } else if (__value__ == (285150i32)) {
                    _gotoNext = -1i32;
                };
            };
        };
    }
