package stdgo._internal.internal.cpu;
function _processOptions(_env:stdgo.GoString):Void {
        var _fieldBreak = false;
        var _i_306323_7:stdgo.GoInt = (0 : stdgo.GoInt);
        var _enable_4:Bool = false;
        var _key_2:stdgo.GoString = ("" : stdgo.GoString);
        var _i_1:stdgo.GoInt = (0 : stdgo.GoInt);
        var _field_0:stdgo.GoString = ("" : stdgo.GoString);
        var _value_3:stdgo.GoString = ("" : stdgo.GoString);
        var _o_8:stdgo._internal.internal.cpu.Cpu_t_option.T_option = ({} : stdgo._internal.internal.cpu.Cpu_t_option.T_option);
        var _i_6:stdgo.GoInt = (0 : stdgo.GoInt);
        var _i_5:stdgo.GoInt = (0 : stdgo.GoInt);
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    _gotoNext = 305348i32;
                } else if (__value__ == (305348i32)) {
                    var __blank__ = 0i32;
                    _fieldBreak = false;
                    _gotoNext = 305356i32;
                } else if (__value__ == (305356i32)) {
                    if (!_fieldBreak && (_env != (stdgo.Go.str() : stdgo.GoString))) {
                        _gotoNext = 305370i32;
                    } else {
                        _gotoNext = 306311i32;
                    };
                } else if (__value__ == (305370i32)) {
                    _field_0 = (stdgo.Go.str() : stdgo.GoString)?.__copy__();
                    _i_1 = stdgo._internal.internal.cpu.Cpu__indexbyte._indexByte(_env?.__copy__(), (44 : stdgo.GoUInt8));
                    if ((_i_1 < (0 : stdgo.GoInt) : Bool)) {
                        _gotoNext = 305424i32;
                    } else {
                        _gotoNext = 305459i32;
                    };
                } else if (__value__ == (305424i32)) {
                    {
                        final __tmp__0 = _env?.__copy__();
                        final __tmp__1 = (stdgo.Go.str() : stdgo.GoString)?.__copy__();
                        _field_0 = @:binopAssign __tmp__0;
                        _env = @:binopAssign __tmp__1;
                    };
                    _gotoNext = 305502i32;
                } else if (__value__ == (305459i32)) {
                    _gotoNext = 305459i32;
                    {
                        final __tmp__0 = (_env.__slice__(0, _i_1) : stdgo.GoString)?.__copy__();
                        final __tmp__1 = (_env.__slice__((_i_1 + (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        _field_0 = @:binopAssign __tmp__0;
                        _env = @:binopAssign __tmp__1;
                    };
                    var __blank__ = 0i32;
                    _gotoNext = 305502i32;
                } else if (__value__ == (305502i32)) {
                    if ((((_field_0.length) < (4 : stdgo.GoInt) : Bool) || ((_field_0.__slice__(0, (4 : stdgo.GoInt)) : stdgo.GoString) != ("cpu." : stdgo.GoString)) : Bool)) {
                        _gotoNext = 305543i32;
                    } else {
                        _gotoNext = 305563i32;
                    };
                } else if (__value__ == (305543i32)) {
                    var __blank__ = 0i32;
                    _gotoNext = 305356i32;
                } else if (__value__ == (305563i32)) {
                    _i_1 = stdgo._internal.internal.cpu.Cpu__indexbyte._indexByte(_field_0?.__copy__(), (61 : stdgo.GoUInt8));
                    if ((_i_1 < (0 : stdgo.GoInt) : Bool)) {
                        _gotoNext = 305600i32;
                    } else {
                        _gotoNext = 305682i32;
                    };
                } else if (__value__ == (305600i32)) {
                    stdgo.Go.print(("GODEBUG: no value specified for \"" : stdgo.GoString), _field_0, ("\"\n" : stdgo.GoString));
                    var __blank__ = 0i32;
                    _gotoNext = 305356i32;
                } else if (__value__ == (305682i32)) {
                    {
                        final __tmp__0 = (_field_0.__slice__((4 : stdgo.GoInt), _i_1) : stdgo.GoString)?.__copy__();
                        final __tmp__1 = (_field_0.__slice__((_i_1 + (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        _key_2 = @:binopAssign __tmp__0;
                        _value_3 = @:binopAssign __tmp__1;
                    };
                    _gotoNext = 305762i32;
                } else if (__value__ == (305762i32)) {
                    {
                        final __value__ = _value_3;
                        if (__value__ == (("on" : stdgo.GoString))) {
                            _gotoNext = 305779i32;
                        } else if (__value__ == (("off" : stdgo.GoString))) {
                            _gotoNext = 305809i32;
                        } else {
                            _gotoNext = 305841i32;
                        };
                    };
                } else if (__value__ == (305779i32)) {
                    _enable_4 = true;
                    _gotoNext = 305963i32;
                } else if (__value__ == (305809i32)) {
                    _enable_4 = false;
                    _gotoNext = 305963i32;
                } else if (__value__ == (305841i32)) {
                    stdgo.Go.print(("GODEBUG: value \"" : stdgo.GoString), _value_3, ("\" not supported for cpu option \"" : stdgo.GoString), _key_2, ("\"\n" : stdgo.GoString));
                    _gotoNext = 305356i32;
                } else if (__value__ == (305963i32)) {
                    if (_key_2 == (("all" : stdgo.GoString))) {
                        _gotoNext = 305979i32;
                    } else {
                        _gotoNext = 306102i32;
                    };
                } else if (__value__ == (305979i32)) {
                    if ((0i32 : stdgo.GoInt) < (stdgo._internal.internal.cpu.Cpu__options._options.length)) {
                        _gotoNext = 306074i32;
                    } else {
                        _gotoNext = 306080i32;
                    };
                } else if (__value__ == (306007i32)) {
                    stdgo._internal.internal.cpu.Cpu__options._options[(_i_5 : stdgo.GoInt)].specified = true;
                    stdgo._internal.internal.cpu.Cpu__options._options[(_i_5 : stdgo.GoInt)].enable = _enable_4;
                    _i_5++;
                    _gotoNext = 306075i32;
                } else if (__value__ == (306074i32)) {
                    _i_5 = 0i32;
                    _gotoNext = 306075i32;
                } else if (__value__ == (306075i32)) {
                    if (_i_5 < (stdgo._internal.internal.cpu.Cpu__options._options.length)) {
                        _gotoNext = 306007i32;
                    } else {
                        _gotoNext = 306080i32;
                    };
                } else if (__value__ == (306080i32)) {
                    _gotoNext = 305356i32;
                } else if (__value__ == (306102i32)) {
                    if ((0i32 : stdgo.GoInt) < (stdgo._internal.internal.cpu.Cpu__options._options.length)) {
                        _gotoNext = 306246i32;
                    } else {
                        _gotoNext = 306252i32;
                    };
                } else if (__value__ == (306106i32)) {
                    _i_6++;
                    _gotoNext = 306247i32;
                } else if (__value__ == (306125i32)) {
                    if (stdgo._internal.internal.cpu.Cpu__options._options[(_i_6 : stdgo.GoInt)].name == (_key_2)) {
                        _gotoNext = 306156i32;
                    } else {
                        _gotoNext = 306106i32;
                    };
                } else if (__value__ == (306156i32)) {
                    stdgo._internal.internal.cpu.Cpu__options._options[(_i_6 : stdgo.GoInt)].specified = true;
                    stdgo._internal.internal.cpu.Cpu__options._options[(_i_6 : stdgo.GoInt)].enable = _enable_4;
                    _gotoNext = 305356i32;
                } else if (__value__ == (306246i32)) {
                    _i_6 = 0i32;
                    _gotoNext = 306247i32;
                } else if (__value__ == (306247i32)) {
                    if (_i_6 < (stdgo._internal.internal.cpu.Cpu__options._options.length)) {
                        _gotoNext = 306125i32;
                    } else {
                        _gotoNext = 306252i32;
                    };
                } else if (__value__ == (306252i32)) {
                    stdgo.Go.print(("GODEBUG: unknown cpu feature \"" : stdgo.GoString), _key_2, ("\"\n" : stdgo.GoString));
                    _gotoNext = 305356i32;
                } else if (__value__ == (306311i32)) {
                    if ((0i32 : stdgo.GoInt) < (stdgo._internal.internal.cpu.Cpu__options._options.length)) {
                        _gotoNext = 306524i32;
                    } else {
                        _gotoNext = 306527i32;
                    };
                } else if (__value__ == (306337i32)) {
                    _o_8 = stdgo._internal.internal.cpu.Cpu__options._options[(_i_306323_7 : stdgo.GoInt)];
                    if (!_o_8.specified) {
                        _gotoNext = 306357i32;
                    } else {
                        _gotoNext = 306378i32;
                    };
                } else if (__value__ == (306357i32)) {
                    _i_306323_7++;
                    _gotoNext = 306525i32;
                } else if (__value__ == (306378i32)) {
                    if ((_o_8.enable && !_o_8.feature.value : Bool)) {
                        _gotoNext = 306405i32;
                    } else {
                        _gotoNext = 306502i32;
                    };
                } else if (__value__ == (306405i32)) {
                    stdgo.Go.print(("GODEBUG: can not enable \"" : stdgo.GoString), _o_8.name, ("\", missing CPU support\n" : stdgo.GoString));
                    _i_306323_7++;
                    _gotoNext = 306525i32;
                } else if (__value__ == (306502i32)) {
                    _o_8.feature.value = _o_8.enable;
                    _i_306323_7++;
                    _gotoNext = 306525i32;
                } else if (__value__ == (306524i32)) {
                    {
                        final __tmp__0 = 0i32;
                        final __tmp__1 = stdgo._internal.internal.cpu.Cpu__options._options[(0i32 : stdgo.GoInt)];
                        _i_306323_7 = @:binopAssign __tmp__0;
                        _o_8 = @:binopAssign __tmp__1;
                    };
                    _gotoNext = 306525i32;
                } else if (__value__ == (306525i32)) {
                    if (_i_306323_7 < (stdgo._internal.internal.cpu.Cpu__options._options.length)) {
                        _gotoNext = 306337i32;
                    } else {
                        _gotoNext = 306527i32;
                    };
                } else if (__value__ == (306527i32)) {
                    _gotoNext = -1i32;
                };
            };
        };
    }
