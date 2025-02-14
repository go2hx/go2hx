package stdgo._internal.internal.cpu;
function _processOptions(_env:stdgo.GoString):Void {
        var _o_8:stdgo._internal.internal.cpu.Cpu_t_option.T_option = ({} : stdgo._internal.internal.cpu.Cpu_t_option.T_option);
        var _i_6:stdgo.GoInt = (0 : stdgo.GoInt);
        var _i_5:stdgo.GoInt = (0 : stdgo.GoInt);
        var _value_3:stdgo.GoString = ("" : stdgo.GoString);
        var _key_2:stdgo.GoString = ("" : stdgo.GoString);
        var _i_1:stdgo.GoInt = (0 : stdgo.GoInt);
        var _i_235404_7:stdgo.GoInt = (0 : stdgo.GoInt);
        var _enable_4:Bool = false;
        var _field_0:stdgo.GoString = ("" : stdgo.GoString);
        var _fieldBreak = false;
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    _gotoNext = 234429i32;
                } else if (__value__ == (234429i32)) {
                    var __blank__ = 0i32;
                    _fieldBreak = false;
                    _gotoNext = 234437i32;
                } else if (__value__ == (234437i32)) {
                    if (!_fieldBreak && (_env != (stdgo.Go.str() : stdgo.GoString))) {
                        _gotoNext = 234451i32;
                    } else {
                        _gotoNext = 235392i32;
                    };
                } else if (__value__ == (234451i32)) {
                    _field_0 = (stdgo.Go.str() : stdgo.GoString)?.__copy__();
                    _i_1 = stdgo._internal.internal.cpu.Cpu__indexbyte._indexByte(_env?.__copy__(), (44 : stdgo.GoUInt8));
                    if ((_i_1 < (0 : stdgo.GoInt) : Bool)) {
                        _gotoNext = 234505i32;
                    } else {
                        _gotoNext = 234540i32;
                    };
                } else if (__value__ == (234505i32)) {
                    {
                        final __tmp__0 = _env?.__copy__();
                        final __tmp__1 = (stdgo.Go.str() : stdgo.GoString)?.__copy__();
                        _field_0 = __tmp__0;
                        _env = __tmp__1;
                    };
                    _gotoNext = 234583i32;
                } else if (__value__ == (234540i32)) {
                    _gotoNext = 234540i32;
                    {
                        final __tmp__0 = (_env.__slice__(0, _i_1) : stdgo.GoString)?.__copy__();
                        final __tmp__1 = (_env.__slice__((_i_1 + (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        _field_0 = __tmp__0;
                        _env = __tmp__1;
                    };
                    var __blank__ = 0i32;
                    _gotoNext = 234583i32;
                } else if (__value__ == (234583i32)) {
                    if ((((_field_0.length) < (4 : stdgo.GoInt) : Bool) || ((_field_0.__slice__(0, (4 : stdgo.GoInt)) : stdgo.GoString) != ("cpu." : stdgo.GoString)) : Bool)) {
                        _gotoNext = 234624i32;
                    } else {
                        _gotoNext = 234644i32;
                    };
                } else if (__value__ == (234624i32)) {
                    var __blank__ = 0i32;
                    _gotoNext = 234437i32;
                } else if (__value__ == (234644i32)) {
                    _i_1 = stdgo._internal.internal.cpu.Cpu__indexbyte._indexByte(_field_0?.__copy__(), (61 : stdgo.GoUInt8));
                    if ((_i_1 < (0 : stdgo.GoInt) : Bool)) {
                        _gotoNext = 234681i32;
                    } else {
                        _gotoNext = 234763i32;
                    };
                } else if (__value__ == (234681i32)) {
                    stdgo.Go.print(("GODEBUG: no value specified for \"" : stdgo.GoString), _field_0, ("\"\n" : stdgo.GoString));
                    var __blank__ = 0i32;
                    _gotoNext = 234437i32;
                } else if (__value__ == (234763i32)) {
                    {
                        final __tmp__0 = (_field_0.__slice__((4 : stdgo.GoInt), _i_1) : stdgo.GoString)?.__copy__();
                        final __tmp__1 = (_field_0.__slice__((_i_1 + (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        _key_2 = __tmp__0;
                        _value_3 = __tmp__1;
                    };
                    _gotoNext = 234843i32;
                } else if (__value__ == (234843i32)) {
                    {
                        final __value__ = _value_3;
                        if (__value__ == (("on" : stdgo.GoString))) {
                            _gotoNext = 234860i32;
                        } else if (__value__ == (("off" : stdgo.GoString))) {
                            _gotoNext = 234890i32;
                        } else {
                            _gotoNext = 234922i32;
                        };
                    };
                } else if (__value__ == (234860i32)) {
                    _enable_4 = true;
                    _gotoNext = 235044i32;
                } else if (__value__ == (234890i32)) {
                    _enable_4 = false;
                    _gotoNext = 235044i32;
                } else if (__value__ == (234922i32)) {
                    stdgo.Go.print(("GODEBUG: value \"" : stdgo.GoString), _value_3, ("\" not supported for cpu option \"" : stdgo.GoString), _key_2, ("\"\n" : stdgo.GoString));
                    _gotoNext = 234437i32;
                } else if (__value__ == (235044i32)) {
                    if (_key_2 == (("all" : stdgo.GoString))) {
                        _gotoNext = 235060i32;
                    } else {
                        _gotoNext = 235183i32;
                    };
                } else if (__value__ == (235060i32)) {
                    if ((0i32 : stdgo.GoInt) < (stdgo._internal.internal.cpu.Cpu__options._options.length)) {
                        _gotoNext = 235155i32;
                    } else {
                        _gotoNext = 235161i32;
                    };
                } else if (__value__ == (235088i32)) {
                    stdgo._internal.internal.cpu.Cpu__options._options[(_i_5 : stdgo.GoInt)].specified = true;
                    stdgo._internal.internal.cpu.Cpu__options._options[(_i_5 : stdgo.GoInt)].enable = _enable_4;
                    _i_5++;
                    _gotoNext = 235156i32;
                } else if (__value__ == (235155i32)) {
                    _i_5 = 0i32;
                    _gotoNext = 235156i32;
                } else if (__value__ == (235156i32)) {
                    if (_i_5 < (stdgo._internal.internal.cpu.Cpu__options._options.length)) {
                        _gotoNext = 235088i32;
                    } else {
                        _gotoNext = 235161i32;
                    };
                } else if (__value__ == (235161i32)) {
                    _gotoNext = 234437i32;
                } else if (__value__ == (235183i32)) {
                    if ((0i32 : stdgo.GoInt) < (stdgo._internal.internal.cpu.Cpu__options._options.length)) {
                        _gotoNext = 235327i32;
                    } else {
                        _gotoNext = 235333i32;
                    };
                } else if (__value__ == (235187i32)) {
                    _i_6++;
                    _gotoNext = 235328i32;
                } else if (__value__ == (235206i32)) {
                    if (stdgo._internal.internal.cpu.Cpu__options._options[(_i_6 : stdgo.GoInt)].name == (_key_2)) {
                        _gotoNext = 235237i32;
                    } else {
                        _gotoNext = 235187i32;
                    };
                } else if (__value__ == (235237i32)) {
                    stdgo._internal.internal.cpu.Cpu__options._options[(_i_6 : stdgo.GoInt)].specified = true;
                    stdgo._internal.internal.cpu.Cpu__options._options[(_i_6 : stdgo.GoInt)].enable = _enable_4;
                    _gotoNext = 234437i32;
                } else if (__value__ == (235327i32)) {
                    _i_6 = 0i32;
                    _gotoNext = 235328i32;
                } else if (__value__ == (235328i32)) {
                    if (_i_6 < (stdgo._internal.internal.cpu.Cpu__options._options.length)) {
                        _gotoNext = 235206i32;
                    } else {
                        _gotoNext = 235333i32;
                    };
                } else if (__value__ == (235333i32)) {
                    stdgo.Go.print(("GODEBUG: unknown cpu feature \"" : stdgo.GoString), _key_2, ("\"\n" : stdgo.GoString));
                    _gotoNext = 234437i32;
                } else if (__value__ == (235392i32)) {
                    if ((0i32 : stdgo.GoInt) < (stdgo._internal.internal.cpu.Cpu__options._options.length)) {
                        _gotoNext = 235605i32;
                    } else {
                        _gotoNext = 235608i32;
                    };
                } else if (__value__ == (235418i32)) {
                    _o_8 = stdgo._internal.internal.cpu.Cpu__options._options[(_i_235404_7 : stdgo.GoInt)];
                    if (!_o_8.specified) {
                        _gotoNext = 235438i32;
                    } else {
                        _gotoNext = 235459i32;
                    };
                } else if (__value__ == (235438i32)) {
                    _i_235404_7++;
                    _gotoNext = 235606i32;
                } else if (__value__ == (235459i32)) {
                    if ((_o_8.enable && !_o_8.feature.value : Bool)) {
                        _gotoNext = 235486i32;
                    } else {
                        _gotoNext = 235583i32;
                    };
                } else if (__value__ == (235486i32)) {
                    stdgo.Go.print(("GODEBUG: can not enable \"" : stdgo.GoString), _o_8.name, ("\", missing CPU support\n" : stdgo.GoString));
                    _i_235404_7++;
                    _gotoNext = 235606i32;
                } else if (__value__ == (235583i32)) {
                    _o_8.feature.value = _o_8.enable;
                    _i_235404_7++;
                    _gotoNext = 235606i32;
                } else if (__value__ == (235605i32)) {
                    {
                        final __tmp__0 = 0i32;
                        final __tmp__1 = stdgo._internal.internal.cpu.Cpu__options._options[(0i32 : stdgo.GoInt)];
                        _i_235404_7 = __tmp__0;
                        _o_8 = __tmp__1;
                    };
                    _gotoNext = 235606i32;
                } else if (__value__ == (235606i32)) {
                    if (_i_235404_7 < (stdgo._internal.internal.cpu.Cpu__options._options.length)) {
                        _gotoNext = 235418i32;
                    } else {
                        _gotoNext = 235608i32;
                    };
                } else if (__value__ == (235608i32)) {
                    _gotoNext = -1i32;
                };
            };
        };
    }
