package stdgo._internal.internal.cpu;
function _processOptions(_env:stdgo.GoString):Void {
        var _key_2:stdgo.GoString = ("" : stdgo.GoString);
        var _i_5:stdgo.GoInt = (0 : stdgo.GoInt);
        var _fieldBreak = false;
        var _o_8:stdgo._internal.internal.cpu.Cpu_t_option.T_option = ({} : stdgo._internal.internal.cpu.Cpu_t_option.T_option);
        var _i_276166_7:stdgo.GoInt = (0 : stdgo.GoInt);
        var _i_6:stdgo.GoInt = (0 : stdgo.GoInt);
        var _enable_4:Bool = false;
        var _value_3:stdgo.GoString = ("" : stdgo.GoString);
        var _i_1:stdgo.GoInt = (0 : stdgo.GoInt);
        var _field_0:stdgo.GoString = ("" : stdgo.GoString);
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    _gotoNext = 275191i32;
                } else if (__value__ == (275191i32)) {
                    var __blank__ = 0i32;
                    _fieldBreak = false;
                    _gotoNext = 275199i32;
                } else if (__value__ == (275199i32)) {
                    if (!_fieldBreak && (_env != (stdgo.Go.str() : stdgo.GoString))) {
                        _gotoNext = 275213i32;
                    } else {
                        _gotoNext = 276154i32;
                    };
                } else if (__value__ == (275213i32)) {
                    _field_0 = (stdgo.Go.str() : stdgo.GoString)?.__copy__();
                    _i_1 = stdgo._internal.internal.cpu.Cpu__indexbyte._indexByte(_env?.__copy__(), (44 : stdgo.GoUInt8));
                    if ((_i_1 < (0 : stdgo.GoInt) : Bool)) {
                        _gotoNext = 275267i32;
                    } else {
                        _gotoNext = 275302i32;
                    };
                } else if (__value__ == (275267i32)) {
                    {
                        final __tmp__0 = _env?.__copy__();
                        final __tmp__1 = (stdgo.Go.str() : stdgo.GoString)?.__copy__();
                        _field_0 = __tmp__0;
                        _env = __tmp__1;
                    };
                    _gotoNext = 275345i32;
                } else if (__value__ == (275302i32)) {
                    _gotoNext = 275302i32;
                    {
                        final __tmp__0 = (_env.__slice__(0, _i_1) : stdgo.GoString)?.__copy__();
                        final __tmp__1 = (_env.__slice__((_i_1 + (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        _field_0 = __tmp__0;
                        _env = __tmp__1;
                    };
                    var __blank__ = 0i32;
                    _gotoNext = 275345i32;
                } else if (__value__ == (275345i32)) {
                    if ((((_field_0.length) < (4 : stdgo.GoInt) : Bool) || ((_field_0.__slice__(0, (4 : stdgo.GoInt)) : stdgo.GoString) != ("cpu." : stdgo.GoString)) : Bool)) {
                        _gotoNext = 275386i32;
                    } else {
                        _gotoNext = 275406i32;
                    };
                } else if (__value__ == (275386i32)) {
                    var __blank__ = 0i32;
                    _gotoNext = 275199i32;
                } else if (__value__ == (275406i32)) {
                    _i_1 = stdgo._internal.internal.cpu.Cpu__indexbyte._indexByte(_field_0?.__copy__(), (61 : stdgo.GoUInt8));
                    if ((_i_1 < (0 : stdgo.GoInt) : Bool)) {
                        _gotoNext = 275443i32;
                    } else {
                        _gotoNext = 275525i32;
                    };
                } else if (__value__ == (275443i32)) {
                    stdgo.Go.print(("GODEBUG: no value specified for \"" : stdgo.GoString), _field_0, ("\"\n" : stdgo.GoString));
                    var __blank__ = 0i32;
                    _gotoNext = 275199i32;
                } else if (__value__ == (275525i32)) {
                    {
                        final __tmp__0 = (_field_0.__slice__((4 : stdgo.GoInt), _i_1) : stdgo.GoString)?.__copy__();
                        final __tmp__1 = (_field_0.__slice__((_i_1 + (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        _key_2 = __tmp__0;
                        _value_3 = __tmp__1;
                    };
                    _gotoNext = 275605i32;
                } else if (__value__ == (275605i32)) {
                    {
                        final __value__ = _value_3;
                        if (__value__ == (("on" : stdgo.GoString))) {
                            _gotoNext = 275622i32;
                        } else if (__value__ == (("off" : stdgo.GoString))) {
                            _gotoNext = 275652i32;
                        } else {
                            _gotoNext = 275684i32;
                        };
                    };
                } else if (__value__ == (275622i32)) {
                    _enable_4 = true;
                    _gotoNext = 275806i32;
                } else if (__value__ == (275652i32)) {
                    _enable_4 = false;
                    _gotoNext = 275806i32;
                } else if (__value__ == (275684i32)) {
                    stdgo.Go.print(("GODEBUG: value \"" : stdgo.GoString), _value_3, ("\" not supported for cpu option \"" : stdgo.GoString), _key_2, ("\"\n" : stdgo.GoString));
                    _gotoNext = 275199i32;
                } else if (__value__ == (275806i32)) {
                    if (_key_2 == (("all" : stdgo.GoString))) {
                        _gotoNext = 275822i32;
                    } else {
                        _gotoNext = 275945i32;
                    };
                } else if (__value__ == (275822i32)) {
                    if ((0i32 : stdgo.GoInt) < (stdgo._internal.internal.cpu.Cpu__options._options.length)) {
                        _gotoNext = 275917i32;
                    } else {
                        _gotoNext = 275923i32;
                    };
                } else if (__value__ == (275850i32)) {
                    stdgo._internal.internal.cpu.Cpu__options._options[(_i_5 : stdgo.GoInt)].specified = true;
                    stdgo._internal.internal.cpu.Cpu__options._options[(_i_5 : stdgo.GoInt)].enable = _enable_4;
                    _i_5++;
                    _gotoNext = 275918i32;
                } else if (__value__ == (275917i32)) {
                    _i_5 = 0i32;
                    _gotoNext = 275918i32;
                } else if (__value__ == (275918i32)) {
                    if (_i_5 < (stdgo._internal.internal.cpu.Cpu__options._options.length)) {
                        _gotoNext = 275850i32;
                    } else {
                        _gotoNext = 275923i32;
                    };
                } else if (__value__ == (275923i32)) {
                    _gotoNext = 275199i32;
                } else if (__value__ == (275945i32)) {
                    if ((0i32 : stdgo.GoInt) < (stdgo._internal.internal.cpu.Cpu__options._options.length)) {
                        _gotoNext = 276089i32;
                    } else {
                        _gotoNext = 276095i32;
                    };
                } else if (__value__ == (275949i32)) {
                    _i_6++;
                    _gotoNext = 276090i32;
                } else if (__value__ == (275968i32)) {
                    if (stdgo._internal.internal.cpu.Cpu__options._options[(_i_6 : stdgo.GoInt)].name == (_key_2)) {
                        _gotoNext = 275999i32;
                    } else {
                        _gotoNext = 275949i32;
                    };
                } else if (__value__ == (275999i32)) {
                    stdgo._internal.internal.cpu.Cpu__options._options[(_i_6 : stdgo.GoInt)].specified = true;
                    stdgo._internal.internal.cpu.Cpu__options._options[(_i_6 : stdgo.GoInt)].enable = _enable_4;
                    _gotoNext = 275199i32;
                } else if (__value__ == (276089i32)) {
                    _i_6 = 0i32;
                    _gotoNext = 276090i32;
                } else if (__value__ == (276090i32)) {
                    if (_i_6 < (stdgo._internal.internal.cpu.Cpu__options._options.length)) {
                        _gotoNext = 275968i32;
                    } else {
                        _gotoNext = 276095i32;
                    };
                } else if (__value__ == (276095i32)) {
                    stdgo.Go.print(("GODEBUG: unknown cpu feature \"" : stdgo.GoString), _key_2, ("\"\n" : stdgo.GoString));
                    _gotoNext = 275199i32;
                } else if (__value__ == (276154i32)) {
                    if ((0i32 : stdgo.GoInt) < (stdgo._internal.internal.cpu.Cpu__options._options.length)) {
                        _gotoNext = 276367i32;
                    } else {
                        _gotoNext = 276370i32;
                    };
                } else if (__value__ == (276180i32)) {
                    _o_8 = stdgo._internal.internal.cpu.Cpu__options._options[(_i_276166_7 : stdgo.GoInt)];
                    if (!_o_8.specified) {
                        _gotoNext = 276200i32;
                    } else {
                        _gotoNext = 276221i32;
                    };
                } else if (__value__ == (276200i32)) {
                    _i_276166_7++;
                    _gotoNext = 276368i32;
                } else if (__value__ == (276221i32)) {
                    if ((_o_8.enable && !_o_8.feature.value : Bool)) {
                        _gotoNext = 276248i32;
                    } else {
                        _gotoNext = 276345i32;
                    };
                } else if (__value__ == (276248i32)) {
                    stdgo.Go.print(("GODEBUG: can not enable \"" : stdgo.GoString), _o_8.name, ("\", missing CPU support\n" : stdgo.GoString));
                    _i_276166_7++;
                    _gotoNext = 276368i32;
                } else if (__value__ == (276345i32)) {
                    _o_8.feature.value = _o_8.enable;
                    _i_276166_7++;
                    _gotoNext = 276368i32;
                } else if (__value__ == (276367i32)) {
                    {
                        final __tmp__0 = 0i32;
                        final __tmp__1 = stdgo._internal.internal.cpu.Cpu__options._options[(0i32 : stdgo.GoInt)];
                        _i_276166_7 = __tmp__0;
                        _o_8 = __tmp__1;
                    };
                    _gotoNext = 276368i32;
                } else if (__value__ == (276368i32)) {
                    if (_i_276166_7 < (stdgo._internal.internal.cpu.Cpu__options._options.length)) {
                        _gotoNext = 276180i32;
                    } else {
                        _gotoNext = 276370i32;
                    };
                } else if (__value__ == (276370i32)) {
                    _gotoNext = -1i32;
                };
            };
        };
    }
