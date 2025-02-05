package stdgo._internal.internal.cpu;
function _processOptions(_env:stdgo.GoString):Void {
        var _o_43750:stdgo._internal.internal.cpu.Cpu_t_option.T_option = ({} : stdgo._internal.internal.cpu.Cpu_t_option.T_option);
        var _i_43755_0:stdgo.GoInt = (0 : stdgo.GoInt);
        var _value_43119:stdgo.GoString = ("" : stdgo.GoString);
        var _key_43114:stdgo.GoString = ("" : stdgo.GoString);
        var _i_42820:stdgo.GoInt = (0 : stdgo.GoInt);
        var _i_43538:stdgo.GoInt = (0 : stdgo.GoInt);
        var _i_43420:stdgo.GoInt = (0 : stdgo.GoInt);
        var _enable_43180:Bool = false;
        var _field_42806:stdgo.GoString = ("" : stdgo.GoString);
        var _fieldBreak = false;
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    _gotoNext = 42780i32;
                } else if (__value__ == (42780i32)) {
                    var __blank__ = 0i32;
                    _fieldBreak = false;
                    _gotoNext = 42788i32;
                } else if (__value__ == (42788i32)) {
                    if (!_fieldBreak && (_env != (stdgo.Go.str() : stdgo.GoString))) {
                        _gotoNext = 42802i32;
                    } else {
                        _gotoNext = 43743i32;
                    };
                } else if (__value__ == (42802i32)) {
                    _field_42806 = (stdgo.Go.str() : stdgo.GoString)?.__copy__();
                    _i_42820 = stdgo._internal.internal.cpu.Cpu__indexbyte._indexByte(_env?.__copy__(), (44 : stdgo.GoUInt8));
                    if ((_i_42820 < (0 : stdgo.GoInt) : Bool)) {
                        _gotoNext = 42856i32;
                    } else {
                        _gotoNext = 42891i32;
                    };
                } else if (__value__ == (42856i32)) {
                    {
                        final __tmp__0 = _env?.__copy__();
                        final __tmp__1 = (stdgo.Go.str() : stdgo.GoString)?.__copy__();
                        _field_42806 = __tmp__0;
                        _env = __tmp__1;
                    };
                    _gotoNext = 42934i32;
                } else if (__value__ == (42891i32)) {
                    _gotoNext = 42891i32;
                    {
                        final __tmp__0 = (_env.__slice__(0, _i_42820) : stdgo.GoString)?.__copy__();
                        final __tmp__1 = (_env.__slice__((_i_42820 + (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        _field_42806 = __tmp__0;
                        _env = __tmp__1;
                    };
                    var __blank__ = 0i32;
                    _gotoNext = 42934i32;
                } else if (__value__ == (42934i32)) {
                    if ((((_field_42806.length) < (4 : stdgo.GoInt) : Bool) || ((_field_42806.__slice__(0, (4 : stdgo.GoInt)) : stdgo.GoString) != ("cpu." : stdgo.GoString)) : Bool)) {
                        _gotoNext = 42975i32;
                    } else {
                        _gotoNext = 42995i32;
                    };
                } else if (__value__ == (42975i32)) {
                    var __blank__ = 0i32;
                    _gotoNext = 42788i32;
                } else if (__value__ == (42995i32)) {
                    _i_42820 = stdgo._internal.internal.cpu.Cpu__indexbyte._indexByte(_field_42806?.__copy__(), (61 : stdgo.GoUInt8));
                    if ((_i_42820 < (0 : stdgo.GoInt) : Bool)) {
                        _gotoNext = 43032i32;
                    } else {
                        _gotoNext = 43114i32;
                    };
                } else if (__value__ == (43032i32)) {
                    stdgo.Go.print(("GODEBUG: no value specified for \"" : stdgo.GoString), _field_42806, ("\"\n" : stdgo.GoString));
                    var __blank__ = 0i32;
                    _gotoNext = 42788i32;
                } else if (__value__ == (43114i32)) {
                    {
                        final __tmp__0 = (_field_42806.__slice__((4 : stdgo.GoInt), _i_42820) : stdgo.GoString)?.__copy__();
                        final __tmp__1 = (_field_42806.__slice__((_i_42820 + (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        _key_43114 = __tmp__0;
                        _value_43119 = __tmp__1;
                    };
                    _gotoNext = 43194i32;
                } else if (__value__ == (43194i32)) {
                    {
                        final __value__ = _value_43119;
                        if (__value__ == (("on" : stdgo.GoString))) {
                            _gotoNext = 43211i32;
                        } else if (__value__ == (("off" : stdgo.GoString))) {
                            _gotoNext = 43241i32;
                        } else {
                            _gotoNext = 43273i32;
                        };
                    };
                } else if (__value__ == (43211i32)) {
                    _enable_43180 = true;
                    _gotoNext = 43395i32;
                } else if (__value__ == (43241i32)) {
                    _enable_43180 = false;
                    _gotoNext = 43395i32;
                } else if (__value__ == (43273i32)) {
                    stdgo.Go.print(("GODEBUG: value \"" : stdgo.GoString), _value_43119, ("\" not supported for cpu option \"" : stdgo.GoString), _key_43114, ("\"\n" : stdgo.GoString));
                    _gotoNext = 42788i32;
                } else if (__value__ == (43395i32)) {
                    if (_key_43114 == (("all" : stdgo.GoString))) {
                        _gotoNext = 43411i32;
                    } else {
                        _gotoNext = 43534i32;
                    };
                } else if (__value__ == (43411i32)) {
                    if ((0i32 : stdgo.GoInt) < (stdgo._internal.internal.cpu.Cpu__options._options.length)) {
                        _gotoNext = 43506i32;
                    } else {
                        _gotoNext = 43512i32;
                    };
                } else if (__value__ == (43439i32)) {
                    stdgo._internal.internal.cpu.Cpu__options._options[(_i_43420 : stdgo.GoInt)].specified = true;
                    stdgo._internal.internal.cpu.Cpu__options._options[(_i_43420 : stdgo.GoInt)].enable = _enable_43180;
                    _i_43420++;
                    _gotoNext = 43507i32;
                } else if (__value__ == (43506i32)) {
                    _i_43420 = 0i32;
                    _gotoNext = 43507i32;
                } else if (__value__ == (43507i32)) {
                    if (_i_43420 < (stdgo._internal.internal.cpu.Cpu__options._options.length)) {
                        _gotoNext = 43439i32;
                    } else {
                        _gotoNext = 43512i32;
                    };
                } else if (__value__ == (43512i32)) {
                    _gotoNext = 42788i32;
                } else if (__value__ == (43534i32)) {
                    if ((0i32 : stdgo.GoInt) < (stdgo._internal.internal.cpu.Cpu__options._options.length)) {
                        _gotoNext = 43678i32;
                    } else {
                        _gotoNext = 43684i32;
                    };
                } else if (__value__ == (43538i32)) {
                    _i_43538++;
                    _gotoNext = 43679i32;
                } else if (__value__ == (43557i32)) {
                    if (stdgo._internal.internal.cpu.Cpu__options._options[(_i_43538 : stdgo.GoInt)].name == (_key_43114)) {
                        _gotoNext = 43588i32;
                    } else {
                        _gotoNext = 43538i32;
                    };
                } else if (__value__ == (43588i32)) {
                    stdgo._internal.internal.cpu.Cpu__options._options[(_i_43538 : stdgo.GoInt)].specified = true;
                    stdgo._internal.internal.cpu.Cpu__options._options[(_i_43538 : stdgo.GoInt)].enable = _enable_43180;
                    _gotoNext = 42788i32;
                } else if (__value__ == (43678i32)) {
                    _i_43538 = 0i32;
                    _gotoNext = 43679i32;
                } else if (__value__ == (43679i32)) {
                    if (_i_43538 < (stdgo._internal.internal.cpu.Cpu__options._options.length)) {
                        _gotoNext = 43557i32;
                    } else {
                        _gotoNext = 43684i32;
                    };
                } else if (__value__ == (43684i32)) {
                    stdgo.Go.print(("GODEBUG: unknown cpu feature \"" : stdgo.GoString), _key_43114, ("\"\n" : stdgo.GoString));
                    _gotoNext = 42788i32;
                } else if (__value__ == (43743i32)) {
                    if ((0i32 : stdgo.GoInt) < (stdgo._internal.internal.cpu.Cpu__options._options.length)) {
                        _gotoNext = 43956i32;
                    } else {
                        _gotoNext = 43959i32;
                    };
                } else if (__value__ == (43769i32)) {
                    _o_43750 = stdgo._internal.internal.cpu.Cpu__options._options[(_i_43755_0 : stdgo.GoInt)];
                    if (!_o_43750.specified) {
                        _gotoNext = 43789i32;
                    } else {
                        _gotoNext = 43810i32;
                    };
                } else if (__value__ == (43789i32)) {
                    _i_43755_0++;
                    _gotoNext = 43957i32;
                } else if (__value__ == (43810i32)) {
                    if ((_o_43750.enable && !_o_43750.feature.value : Bool)) {
                        _gotoNext = 43837i32;
                    } else {
                        _gotoNext = 43934i32;
                    };
                } else if (__value__ == (43837i32)) {
                    stdgo.Go.print(("GODEBUG: can not enable \"" : stdgo.GoString), _o_43750.name, ("\", missing CPU support\n" : stdgo.GoString));
                    _i_43755_0++;
                    _gotoNext = 43957i32;
                } else if (__value__ == (43934i32)) {
                    _o_43750.feature.value = _o_43750.enable;
                    _i_43755_0++;
                    _gotoNext = 43957i32;
                } else if (__value__ == (43956i32)) {
                    {
                        final __tmp__0 = 0i32;
                        final __tmp__1 = stdgo._internal.internal.cpu.Cpu__options._options[(0i32 : stdgo.GoInt)];
                        _i_43755_0 = __tmp__0;
                        _o_43750 = __tmp__1;
                    };
                    _gotoNext = 43957i32;
                } else if (__value__ == (43957i32)) {
                    if (_i_43755_0 < (stdgo._internal.internal.cpu.Cpu__options._options.length)) {
                        _gotoNext = 43769i32;
                    } else {
                        _gotoNext = 43959i32;
                    };
                } else if (__value__ == (43959i32)) {
                    _gotoNext = -1i32;
                };
            };
        };
    }
