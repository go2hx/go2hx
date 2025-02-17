package stdgo._internal.internal.cpu;
function _processOptions(_env:stdgo.GoString):Void {
        var _field_0:stdgo.GoString = ("" : stdgo.GoString);
        var _i_66387_7:stdgo.GoInt = (0 : stdgo.GoInt);
        var _enable_4:Bool = false;
        var _key_2:stdgo.GoString = ("" : stdgo.GoString);
        var _i_1:stdgo.GoInt = (0 : stdgo.GoInt);
        var _fieldBreak = false;
        var _o_8:stdgo._internal.internal.cpu.Cpu_t_option.T_option = ({} : stdgo._internal.internal.cpu.Cpu_t_option.T_option);
        var _i_6:stdgo.GoInt = (0 : stdgo.GoInt);
        var _i_5:stdgo.GoInt = (0 : stdgo.GoInt);
        var _value_3:stdgo.GoString = ("" : stdgo.GoString);
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    _gotoNext = 65412i32;
                } else if (__value__ == (65412i32)) {
                    var __blank__ = 0i32;
                    _fieldBreak = false;
                    _gotoNext = 65420i32;
                } else if (__value__ == (65420i32)) {
                    if (!_fieldBreak && (_env != (stdgo.Go.str() : stdgo.GoString))) {
                        _gotoNext = 65434i32;
                    } else {
                        _gotoNext = 66375i32;
                    };
                } else if (__value__ == (65434i32)) {
                    _field_0 = (stdgo.Go.str() : stdgo.GoString)?.__copy__();
                    _i_1 = stdgo._internal.internal.cpu.Cpu__indexbyte._indexByte(_env?.__copy__(), (44 : stdgo.GoUInt8));
                    if ((_i_1 < (0 : stdgo.GoInt) : Bool)) {
                        _gotoNext = 65488i32;
                    } else {
                        _gotoNext = 65523i32;
                    };
                } else if (__value__ == (65488i32)) {
                    {
                        final __tmp__0 = _env?.__copy__();
                        final __tmp__1 = (stdgo.Go.str() : stdgo.GoString)?.__copy__();
                        _field_0 = __tmp__0;
                        _env = __tmp__1;
                    };
                    _gotoNext = 65566i32;
                } else if (__value__ == (65523i32)) {
                    _gotoNext = 65523i32;
                    {
                        final __tmp__0 = (_env.__slice__(0, _i_1) : stdgo.GoString)?.__copy__();
                        final __tmp__1 = (_env.__slice__((_i_1 + (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        _field_0 = __tmp__0;
                        _env = __tmp__1;
                    };
                    var __blank__ = 0i32;
                    _gotoNext = 65566i32;
                } else if (__value__ == (65566i32)) {
                    if ((((_field_0.length) < (4 : stdgo.GoInt) : Bool) || ((_field_0.__slice__(0, (4 : stdgo.GoInt)) : stdgo.GoString) != ("cpu." : stdgo.GoString)) : Bool)) {
                        _gotoNext = 65607i32;
                    } else {
                        _gotoNext = 65627i32;
                    };
                } else if (__value__ == (65607i32)) {
                    var __blank__ = 0i32;
                    _gotoNext = 65420i32;
                } else if (__value__ == (65627i32)) {
                    _i_1 = stdgo._internal.internal.cpu.Cpu__indexbyte._indexByte(_field_0?.__copy__(), (61 : stdgo.GoUInt8));
                    if ((_i_1 < (0 : stdgo.GoInt) : Bool)) {
                        _gotoNext = 65664i32;
                    } else {
                        _gotoNext = 65746i32;
                    };
                } else if (__value__ == (65664i32)) {
                    stdgo.Go.print(("GODEBUG: no value specified for \"" : stdgo.GoString), _field_0, ("\"\n" : stdgo.GoString));
                    var __blank__ = 0i32;
                    _gotoNext = 65420i32;
                } else if (__value__ == (65746i32)) {
                    {
                        final __tmp__0 = (_field_0.__slice__((4 : stdgo.GoInt), _i_1) : stdgo.GoString)?.__copy__();
                        final __tmp__1 = (_field_0.__slice__((_i_1 + (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        _key_2 = __tmp__0;
                        _value_3 = __tmp__1;
                    };
                    _gotoNext = 65826i32;
                } else if (__value__ == (65826i32)) {
                    {
                        final __value__ = _value_3;
                        if (__value__ == (("on" : stdgo.GoString))) {
                            _gotoNext = 65843i32;
                        } else if (__value__ == (("off" : stdgo.GoString))) {
                            _gotoNext = 65873i32;
                        } else {
                            _gotoNext = 65905i32;
                        };
                    };
                } else if (__value__ == (65843i32)) {
                    _enable_4 = true;
                    _gotoNext = 66027i32;
                } else if (__value__ == (65873i32)) {
                    _enable_4 = false;
                    _gotoNext = 66027i32;
                } else if (__value__ == (65905i32)) {
                    stdgo.Go.print(("GODEBUG: value \"" : stdgo.GoString), _value_3, ("\" not supported for cpu option \"" : stdgo.GoString), _key_2, ("\"\n" : stdgo.GoString));
                    _gotoNext = 65420i32;
                } else if (__value__ == (66027i32)) {
                    if (_key_2 == (("all" : stdgo.GoString))) {
                        _gotoNext = 66043i32;
                    } else {
                        _gotoNext = 66166i32;
                    };
                } else if (__value__ == (66043i32)) {
                    if ((0i32 : stdgo.GoInt) < (stdgo._internal.internal.cpu.Cpu__options._options.length)) {
                        _gotoNext = 66138i32;
                    } else {
                        _gotoNext = 66144i32;
                    };
                } else if (__value__ == (66071i32)) {
                    stdgo._internal.internal.cpu.Cpu__options._options[(_i_5 : stdgo.GoInt)].specified = true;
                    stdgo._internal.internal.cpu.Cpu__options._options[(_i_5 : stdgo.GoInt)].enable = _enable_4;
                    _i_5++;
                    _gotoNext = 66139i32;
                } else if (__value__ == (66138i32)) {
                    _i_5 = 0i32;
                    _gotoNext = 66139i32;
                } else if (__value__ == (66139i32)) {
                    if (_i_5 < (stdgo._internal.internal.cpu.Cpu__options._options.length)) {
                        _gotoNext = 66071i32;
                    } else {
                        _gotoNext = 66144i32;
                    };
                } else if (__value__ == (66144i32)) {
                    _gotoNext = 65420i32;
                } else if (__value__ == (66166i32)) {
                    if ((0i32 : stdgo.GoInt) < (stdgo._internal.internal.cpu.Cpu__options._options.length)) {
                        _gotoNext = 66310i32;
                    } else {
                        _gotoNext = 66316i32;
                    };
                } else if (__value__ == (66170i32)) {
                    _i_6++;
                    _gotoNext = 66311i32;
                } else if (__value__ == (66189i32)) {
                    if (stdgo._internal.internal.cpu.Cpu__options._options[(_i_6 : stdgo.GoInt)].name == (_key_2)) {
                        _gotoNext = 66220i32;
                    } else {
                        _gotoNext = 66170i32;
                    };
                } else if (__value__ == (66220i32)) {
                    stdgo._internal.internal.cpu.Cpu__options._options[(_i_6 : stdgo.GoInt)].specified = true;
                    stdgo._internal.internal.cpu.Cpu__options._options[(_i_6 : stdgo.GoInt)].enable = _enable_4;
                    _gotoNext = 65420i32;
                } else if (__value__ == (66310i32)) {
                    _i_6 = 0i32;
                    _gotoNext = 66311i32;
                } else if (__value__ == (66311i32)) {
                    if (_i_6 < (stdgo._internal.internal.cpu.Cpu__options._options.length)) {
                        _gotoNext = 66189i32;
                    } else {
                        _gotoNext = 66316i32;
                    };
                } else if (__value__ == (66316i32)) {
                    stdgo.Go.print(("GODEBUG: unknown cpu feature \"" : stdgo.GoString), _key_2, ("\"\n" : stdgo.GoString));
                    _gotoNext = 65420i32;
                } else if (__value__ == (66375i32)) {
                    if ((0i32 : stdgo.GoInt) < (stdgo._internal.internal.cpu.Cpu__options._options.length)) {
                        _gotoNext = 66588i32;
                    } else {
                        _gotoNext = 66591i32;
                    };
                } else if (__value__ == (66401i32)) {
                    _o_8 = stdgo._internal.internal.cpu.Cpu__options._options[(_i_66387_7 : stdgo.GoInt)];
                    if (!_o_8.specified) {
                        _gotoNext = 66421i32;
                    } else {
                        _gotoNext = 66442i32;
                    };
                } else if (__value__ == (66421i32)) {
                    _i_66387_7++;
                    _gotoNext = 66589i32;
                } else if (__value__ == (66442i32)) {
                    if ((_o_8.enable && !_o_8.feature.value : Bool)) {
                        _gotoNext = 66469i32;
                    } else {
                        _gotoNext = 66566i32;
                    };
                } else if (__value__ == (66469i32)) {
                    stdgo.Go.print(("GODEBUG: can not enable \"" : stdgo.GoString), _o_8.name, ("\", missing CPU support\n" : stdgo.GoString));
                    _i_66387_7++;
                    _gotoNext = 66589i32;
                } else if (__value__ == (66566i32)) {
                    _o_8.feature.value = _o_8.enable;
                    _i_66387_7++;
                    _gotoNext = 66589i32;
                } else if (__value__ == (66588i32)) {
                    {
                        final __tmp__0 = 0i32;
                        final __tmp__1 = stdgo._internal.internal.cpu.Cpu__options._options[(0i32 : stdgo.GoInt)];
                        _i_66387_7 = __tmp__0;
                        _o_8 = __tmp__1;
                    };
                    _gotoNext = 66589i32;
                } else if (__value__ == (66589i32)) {
                    if (_i_66387_7 < (stdgo._internal.internal.cpu.Cpu__options._options.length)) {
                        _gotoNext = 66401i32;
                    } else {
                        _gotoNext = 66591i32;
                    };
                } else if (__value__ == (66591i32)) {
                    _gotoNext = -1i32;
                };
            };
        };
    }
