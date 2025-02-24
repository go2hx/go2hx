package stdgo._internal.internal.cpu;
function _processOptions(_env:stdgo.GoString):Void {
        var _i_1:stdgo.GoInt = (0 : stdgo.GoInt);
        var _field_0:stdgo.GoString = ("" : stdgo.GoString);
        var _o_8:stdgo._internal.internal.cpu.Cpu_t_option.T_option = ({} : stdgo._internal.internal.cpu.Cpu_t_option.T_option);
        var _i_6:stdgo.GoInt = (0 : stdgo.GoInt);
        var _enable_4:Bool = false;
        var _value_3:stdgo.GoString = ("" : stdgo.GoString);
        var _key_2:stdgo.GoString = ("" : stdgo.GoString);
        var _i_5:stdgo.GoInt = (0 : stdgo.GoInt);
        var _fieldBreak = false;
        var _i_240615_7:stdgo.GoInt = (0 : stdgo.GoInt);
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    _gotoNext = 239640i32;
                } else if (__value__ == (239640i32)) {
                    var __blank__ = 0i32;
                    _fieldBreak = false;
                    _gotoNext = 239648i32;
                } else if (__value__ == (239648i32)) {
                    if (!_fieldBreak && (_env != (stdgo.Go.str() : stdgo.GoString))) {
                        _gotoNext = 239662i32;
                    } else {
                        _gotoNext = 240603i32;
                    };
                } else if (__value__ == (239662i32)) {
                    _field_0 = (stdgo.Go.str() : stdgo.GoString)?.__copy__();
                    _i_1 = stdgo._internal.internal.cpu.Cpu__indexbyte._indexByte(_env?.__copy__(), (44 : stdgo.GoUInt8));
                    if ((_i_1 < (0 : stdgo.GoInt) : Bool)) {
                        _gotoNext = 239716i32;
                    } else {
                        _gotoNext = 239751i32;
                    };
                } else if (__value__ == (239716i32)) {
                    {
                        final __tmp__0 = _env?.__copy__();
                        final __tmp__1 = (stdgo.Go.str() : stdgo.GoString)?.__copy__();
                        _field_0 = @:binopAssign __tmp__0;
                        _env = @:binopAssign __tmp__1;
                    };
                    _gotoNext = 239794i32;
                } else if (__value__ == (239751i32)) {
                    _gotoNext = 239751i32;
                    {
                        final __tmp__0 = (_env.__slice__(0, _i_1) : stdgo.GoString)?.__copy__();
                        final __tmp__1 = (_env.__slice__((_i_1 + (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        _field_0 = @:binopAssign __tmp__0;
                        _env = @:binopAssign __tmp__1;
                    };
                    var __blank__ = 0i32;
                    _gotoNext = 239794i32;
                } else if (__value__ == (239794i32)) {
                    if ((((_field_0.length) < (4 : stdgo.GoInt) : Bool) || ((_field_0.__slice__(0, (4 : stdgo.GoInt)) : stdgo.GoString) != ("cpu." : stdgo.GoString)) : Bool)) {
                        _gotoNext = 239835i32;
                    } else {
                        _gotoNext = 239855i32;
                    };
                } else if (__value__ == (239835i32)) {
                    var __blank__ = 0i32;
                    _gotoNext = 239648i32;
                } else if (__value__ == (239855i32)) {
                    _i_1 = stdgo._internal.internal.cpu.Cpu__indexbyte._indexByte(_field_0?.__copy__(), (61 : stdgo.GoUInt8));
                    if ((_i_1 < (0 : stdgo.GoInt) : Bool)) {
                        _gotoNext = 239892i32;
                    } else {
                        _gotoNext = 239974i32;
                    };
                } else if (__value__ == (239892i32)) {
                    stdgo.Go.print(("GODEBUG: no value specified for \"" : stdgo.GoString), _field_0, ("\"\n" : stdgo.GoString));
                    var __blank__ = 0i32;
                    _gotoNext = 239648i32;
                } else if (__value__ == (239974i32)) {
                    {
                        final __tmp__0 = (_field_0.__slice__((4 : stdgo.GoInt), _i_1) : stdgo.GoString)?.__copy__();
                        final __tmp__1 = (_field_0.__slice__((_i_1 + (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        _key_2 = @:binopAssign __tmp__0;
                        _value_3 = @:binopAssign __tmp__1;
                    };
                    _gotoNext = 240054i32;
                } else if (__value__ == (240054i32)) {
                    {
                        final __value__ = _value_3;
                        if (__value__ == (("on" : stdgo.GoString))) {
                            _gotoNext = 240071i32;
                        } else if (__value__ == (("off" : stdgo.GoString))) {
                            _gotoNext = 240101i32;
                        } else {
                            _gotoNext = 240133i32;
                        };
                    };
                } else if (__value__ == (240071i32)) {
                    _enable_4 = true;
                    _gotoNext = 240255i32;
                } else if (__value__ == (240101i32)) {
                    _enable_4 = false;
                    _gotoNext = 240255i32;
                } else if (__value__ == (240133i32)) {
                    stdgo.Go.print(("GODEBUG: value \"" : stdgo.GoString), _value_3, ("\" not supported for cpu option \"" : stdgo.GoString), _key_2, ("\"\n" : stdgo.GoString));
                    _gotoNext = 239648i32;
                } else if (__value__ == (240255i32)) {
                    if (_key_2 == (("all" : stdgo.GoString))) {
                        _gotoNext = 240271i32;
                    } else {
                        _gotoNext = 240394i32;
                    };
                } else if (__value__ == (240271i32)) {
                    if ((0i32 : stdgo.GoInt) < (stdgo._internal.internal.cpu.Cpu__options._options.length)) {
                        _gotoNext = 240366i32;
                    } else {
                        _gotoNext = 240372i32;
                    };
                } else if (__value__ == (240299i32)) {
                    stdgo._internal.internal.cpu.Cpu__options._options[(_i_5 : stdgo.GoInt)].specified = true;
                    stdgo._internal.internal.cpu.Cpu__options._options[(_i_5 : stdgo.GoInt)].enable = _enable_4;
                    _i_5++;
                    _gotoNext = 240367i32;
                } else if (__value__ == (240366i32)) {
                    _i_5 = 0i32;
                    _gotoNext = 240367i32;
                } else if (__value__ == (240367i32)) {
                    if (_i_5 < (stdgo._internal.internal.cpu.Cpu__options._options.length)) {
                        _gotoNext = 240299i32;
                    } else {
                        _gotoNext = 240372i32;
                    };
                } else if (__value__ == (240372i32)) {
                    _gotoNext = 239648i32;
                } else if (__value__ == (240394i32)) {
                    if ((0i32 : stdgo.GoInt) < (stdgo._internal.internal.cpu.Cpu__options._options.length)) {
                        _gotoNext = 240538i32;
                    } else {
                        _gotoNext = 240544i32;
                    };
                } else if (__value__ == (240398i32)) {
                    _i_6++;
                    _gotoNext = 240539i32;
                } else if (__value__ == (240417i32)) {
                    if (stdgo._internal.internal.cpu.Cpu__options._options[(_i_6 : stdgo.GoInt)].name == (_key_2)) {
                        _gotoNext = 240448i32;
                    } else {
                        _gotoNext = 240398i32;
                    };
                } else if (__value__ == (240448i32)) {
                    stdgo._internal.internal.cpu.Cpu__options._options[(_i_6 : stdgo.GoInt)].specified = true;
                    stdgo._internal.internal.cpu.Cpu__options._options[(_i_6 : stdgo.GoInt)].enable = _enable_4;
                    _gotoNext = 239648i32;
                } else if (__value__ == (240538i32)) {
                    _i_6 = 0i32;
                    _gotoNext = 240539i32;
                } else if (__value__ == (240539i32)) {
                    if (_i_6 < (stdgo._internal.internal.cpu.Cpu__options._options.length)) {
                        _gotoNext = 240417i32;
                    } else {
                        _gotoNext = 240544i32;
                    };
                } else if (__value__ == (240544i32)) {
                    stdgo.Go.print(("GODEBUG: unknown cpu feature \"" : stdgo.GoString), _key_2, ("\"\n" : stdgo.GoString));
                    _gotoNext = 239648i32;
                } else if (__value__ == (240603i32)) {
                    if ((0i32 : stdgo.GoInt) < (stdgo._internal.internal.cpu.Cpu__options._options.length)) {
                        _gotoNext = 240816i32;
                    } else {
                        _gotoNext = 240819i32;
                    };
                } else if (__value__ == (240629i32)) {
                    _o_8 = stdgo._internal.internal.cpu.Cpu__options._options[(_i_240615_7 : stdgo.GoInt)];
                    if (!_o_8.specified) {
                        _gotoNext = 240649i32;
                    } else {
                        _gotoNext = 240670i32;
                    };
                } else if (__value__ == (240649i32)) {
                    _i_240615_7++;
                    _gotoNext = 240817i32;
                } else if (__value__ == (240670i32)) {
                    if ((_o_8.enable && !_o_8.feature.value : Bool)) {
                        _gotoNext = 240697i32;
                    } else {
                        _gotoNext = 240794i32;
                    };
                } else if (__value__ == (240697i32)) {
                    stdgo.Go.print(("GODEBUG: can not enable \"" : stdgo.GoString), _o_8.name, ("\", missing CPU support\n" : stdgo.GoString));
                    _i_240615_7++;
                    _gotoNext = 240817i32;
                } else if (__value__ == (240794i32)) {
                    _o_8.feature.value = _o_8.enable;
                    _i_240615_7++;
                    _gotoNext = 240817i32;
                } else if (__value__ == (240816i32)) {
                    {
                        final __tmp__0 = 0i32;
                        final __tmp__1 = stdgo._internal.internal.cpu.Cpu__options._options[(0i32 : stdgo.GoInt)];
                        _i_240615_7 = @:binopAssign __tmp__0;
                        _o_8 = @:binopAssign __tmp__1;
                    };
                    _gotoNext = 240817i32;
                } else if (__value__ == (240817i32)) {
                    if (_i_240615_7 < (stdgo._internal.internal.cpu.Cpu__options._options.length)) {
                        _gotoNext = 240629i32;
                    } else {
                        _gotoNext = 240819i32;
                    };
                } else if (__value__ == (240819i32)) {
                    _gotoNext = -1i32;
                };
            };
        };
    }
