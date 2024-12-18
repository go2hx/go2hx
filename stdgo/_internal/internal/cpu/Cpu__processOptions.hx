package stdgo._internal.internal.cpu;
function _processOptions(_env:stdgo.GoString):Void {
        var _fieldBreak = false;
        var _o_27333:stdgo._internal.internal.cpu.Cpu_T_option.T_option = ({} : stdgo._internal.internal.cpu.Cpu_T_option.T_option);
        var _i_27338_0:stdgo.GoInt = (0 : stdgo.GoInt);
        var _enable_26763:Bool = false;
        var _value_26702:stdgo.GoString = ("" : stdgo.GoString);
        var _key_26697:stdgo.GoString = ("" : stdgo.GoString);
        var _field_26389:stdgo.GoString = ("" : stdgo.GoString);
        var _i_26403:stdgo.GoInt = (0 : stdgo.GoInt);
        var _i_27121:stdgo.GoInt = (0 : stdgo.GoInt);
        var _i_27003:stdgo.GoInt = (0 : stdgo.GoInt);
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    _gotoNext = 26363i32;
                } else if (__value__ == (26363i32)) {
                    var __blank__ = 0i32;
                    _fieldBreak = false;
                    _gotoNext = 26371i32;
                } else if (__value__ == (26371i32)) {
                    if (!_fieldBreak && (_env != stdgo.Go.str())) {
                        _gotoNext = 26385i32;
                    } else {
                        _gotoNext = 27326i32;
                    };
                } else if (__value__ == (26385i32)) {
                    _field_26389 = stdgo.Go.str()?.__copy__();
                    _i_26403 = stdgo._internal.internal.cpu.Cpu__indexByte._indexByte(_env?.__copy__(), (44 : stdgo.GoUInt8));
                    if ((_i_26403 < (0 : stdgo.GoInt) : Bool)) {
                        _gotoNext = 26439i32;
                    } else {
                        _gotoNext = 26474i32;
                    };
                } else if (__value__ == (26439i32)) {
                    {
                        final __tmp__0 = _env?.__copy__();
                        final __tmp__1 = stdgo.Go.str()?.__copy__();
                        _field_26389 = __tmp__0;
                        _env = __tmp__1;
                    };
                    _gotoNext = 26517i32;
                } else if (__value__ == (26474i32)) {
                    _gotoNext = 26474i32;
                    {
                        final __tmp__0 = (_env.__slice__(0, _i_26403) : stdgo.GoString)?.__copy__();
                        final __tmp__1 = (_env.__slice__((_i_26403 + (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        _field_26389 = __tmp__0;
                        _env = __tmp__1;
                    };
                    var __blank__ = 0i32;
                    _gotoNext = 26517i32;
                } else if (__value__ == (26517i32)) {
                    if ((((_field_26389.length) < (4 : stdgo.GoInt) : Bool) || ((_field_26389.__slice__(0, (4 : stdgo.GoInt)) : stdgo.GoString) != ("cpu." : stdgo.GoString)) : Bool)) {
                        _gotoNext = 26558i32;
                    } else {
                        _gotoNext = 26578i32;
                    };
                } else if (__value__ == (26558i32)) {
                    var __blank__ = 0i32;
                    _gotoNext = 26371i32;
                } else if (__value__ == (26578i32)) {
                    _i_26403 = stdgo._internal.internal.cpu.Cpu__indexByte._indexByte(_field_26389?.__copy__(), (61 : stdgo.GoUInt8));
                    if ((_i_26403 < (0 : stdgo.GoInt) : Bool)) {
                        _gotoNext = 26615i32;
                    } else {
                        _gotoNext = 26697i32;
                    };
                } else if (__value__ == (26615i32)) {
                    stdgo.Go.print(("GODEBUG: no value specified for \"" : stdgo.GoString), _field_26389, ("\"\n" : stdgo.GoString));
                    var __blank__ = 0i32;
                    _gotoNext = 26371i32;
                } else if (__value__ == (26697i32)) {
                    {
                        final __tmp__0 = (_field_26389.__slice__((4 : stdgo.GoInt), _i_26403) : stdgo.GoString)?.__copy__();
                        final __tmp__1 = (_field_26389.__slice__((_i_26403 + (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        _key_26697 = __tmp__0;
                        _value_26702 = __tmp__1;
                    };
                    _gotoNext = 26777i32;
                } else if (__value__ == (26777i32)) {
                    {
                        final __value__ = _value_26702;
                        if (__value__ == (("on" : stdgo.GoString))) {
                            _gotoNext = 26794i32;
                        } else if (__value__ == (("off" : stdgo.GoString))) {
                            _gotoNext = 26824i32;
                        } else {
                            _gotoNext = 26856i32;
                        };
                    };
                } else if (__value__ == (26794i32)) {
                    _enable_26763 = true;
                    _gotoNext = 26978i32;
                } else if (__value__ == (26824i32)) {
                    _enable_26763 = false;
                    _gotoNext = 26978i32;
                } else if (__value__ == (26856i32)) {
                    stdgo.Go.print(("GODEBUG: value \"" : stdgo.GoString), _value_26702, ("\" not supported for cpu option \"" : stdgo.GoString), _key_26697, ("\"\n" : stdgo.GoString));
                    _gotoNext = 26371i32;
                } else if (__value__ == (26978i32)) {
                    if (_key_26697 == (("all" : stdgo.GoString))) {
                        _gotoNext = 26994i32;
                    } else {
                        _gotoNext = 27117i32;
                    };
                } else if (__value__ == (26994i32)) {
                    if ((0i32 : stdgo.GoInt) < (stdgo._internal.internal.cpu.Cpu__options._options.length)) {
                        _gotoNext = 27089i32;
                    } else {
                        _gotoNext = 27095i32;
                    };
                } else if (__value__ == (27022i32)) {
                    stdgo._internal.internal.cpu.Cpu__options._options[(_i_27003 : stdgo.GoInt)].specified = true;
                    stdgo._internal.internal.cpu.Cpu__options._options[(_i_27003 : stdgo.GoInt)].enable = _enable_26763;
                    _i_27003++;
                    _gotoNext = 27090i32;
                } else if (__value__ == (27089i32)) {
                    _i_27003 = 0i32;
                    _gotoNext = 27090i32;
                } else if (__value__ == (27090i32)) {
                    if (_i_27003 < (stdgo._internal.internal.cpu.Cpu__options._options.length)) {
                        _gotoNext = 27022i32;
                    } else {
                        _gotoNext = 27095i32;
                    };
                } else if (__value__ == (27095i32)) {
                    _gotoNext = 26371i32;
                } else if (__value__ == (27117i32)) {
                    if ((0i32 : stdgo.GoInt) < (stdgo._internal.internal.cpu.Cpu__options._options.length)) {
                        _gotoNext = 27261i32;
                    } else {
                        _gotoNext = 27267i32;
                    };
                } else if (__value__ == (27121i32)) {
                    _i_27121++;
                    _gotoNext = 27262i32;
                } else if (__value__ == (27140i32)) {
                    if (stdgo._internal.internal.cpu.Cpu__options._options[(_i_27121 : stdgo.GoInt)].name == (_key_26697)) {
                        _gotoNext = 27171i32;
                    } else {
                        _gotoNext = 27121i32;
                    };
                } else if (__value__ == (27171i32)) {
                    stdgo._internal.internal.cpu.Cpu__options._options[(_i_27121 : stdgo.GoInt)].specified = true;
                    stdgo._internal.internal.cpu.Cpu__options._options[(_i_27121 : stdgo.GoInt)].enable = _enable_26763;
                    _gotoNext = 26371i32;
                } else if (__value__ == (27261i32)) {
                    _i_27121 = 0i32;
                    _gotoNext = 27262i32;
                } else if (__value__ == (27262i32)) {
                    if (_i_27121 < (stdgo._internal.internal.cpu.Cpu__options._options.length)) {
                        _gotoNext = 27140i32;
                    } else {
                        _gotoNext = 27267i32;
                    };
                } else if (__value__ == (27267i32)) {
                    stdgo.Go.print(("GODEBUG: unknown cpu feature \"" : stdgo.GoString), _key_26697, ("\"\n" : stdgo.GoString));
                    _gotoNext = 26371i32;
                } else if (__value__ == (27326i32)) {
                    if ((0i32 : stdgo.GoInt) < (stdgo._internal.internal.cpu.Cpu__options._options.length)) {
                        _gotoNext = 27539i32;
                    } else {
                        _gotoNext = 27542i32;
                    };
                } else if (__value__ == (27352i32)) {
                    _o_27333 = stdgo._internal.internal.cpu.Cpu__options._options[(_i_27338_0 : stdgo.GoInt)];
                    if (!_o_27333.specified) {
                        _gotoNext = 27372i32;
                    } else {
                        _gotoNext = 27393i32;
                    };
                } else if (__value__ == (27372i32)) {
                    _i_27338_0++;
                    _gotoNext = 27540i32;
                } else if (__value__ == (27393i32)) {
                    if ((_o_27333.enable && !_o_27333.feature.value : Bool)) {
                        _gotoNext = 27420i32;
                    } else {
                        _gotoNext = 27517i32;
                    };
                } else if (__value__ == (27420i32)) {
                    stdgo.Go.print(("GODEBUG: can not enable \"" : stdgo.GoString), _o_27333.name, ("\", missing CPU support\n" : stdgo.GoString));
                    _i_27338_0++;
                    _gotoNext = 27540i32;
                } else if (__value__ == (27517i32)) {
                    _o_27333.feature.value = _o_27333.enable;
                    _i_27338_0++;
                    _gotoNext = 27540i32;
                } else if (__value__ == (27539i32)) {
                    {
                        final __tmp__0 = 0i32;
                        final __tmp__1 = stdgo._internal.internal.cpu.Cpu__options._options[(0i32 : stdgo.GoInt)];
                        _i_27338_0 = __tmp__0;
                        _o_27333 = __tmp__1;
                    };
                    _gotoNext = 27540i32;
                } else if (__value__ == (27540i32)) {
                    if (_i_27338_0 < (stdgo._internal.internal.cpu.Cpu__options._options.length)) {
                        _gotoNext = 27352i32;
                    } else {
                        _gotoNext = 27542i32;
                    };
                } else if (__value__ == (27542i32)) {
                    _gotoNext = -1i32;
                };
            };
        };
    }
