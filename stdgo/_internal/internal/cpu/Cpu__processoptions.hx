package stdgo._internal.internal.cpu;
function _processOptions(_env:stdgo.GoString):Void {
        var _key_2:stdgo.GoString = ("" : stdgo.GoString);
        var _i_1:stdgo.GoInt = (0 : stdgo.GoInt);
        var _field_0:stdgo.GoString = ("" : stdgo.GoString);
        var _enable_4:Bool = false;
        var _value_3:stdgo.GoString = ("" : stdgo.GoString);
        var _fieldBreak = false;
        var _o_8:stdgo._internal.internal.cpu.Cpu_t_option.T_option = ({} : stdgo._internal.internal.cpu.Cpu_t_option.T_option);
        var _i_233705_7:stdgo.GoInt = (0 : stdgo.GoInt);
        var _i_6:stdgo.GoInt = (0 : stdgo.GoInt);
        var _i_5:stdgo.GoInt = (0 : stdgo.GoInt);
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    _gotoNext = 232730i32;
                } else if (__value__ == (232730i32)) {
                    var __blank__ = 0i32;
                    _fieldBreak = false;
                    _gotoNext = 232738i32;
                } else if (__value__ == (232738i32)) {
                    if (!_fieldBreak && (_env != (stdgo.Go.str() : stdgo.GoString))) {
                        _gotoNext = 232752i32;
                    } else {
                        _gotoNext = 233693i32;
                    };
                } else if (__value__ == (232752i32)) {
                    _field_0 = (stdgo.Go.str() : stdgo.GoString)?.__copy__();
                    _i_1 = stdgo._internal.internal.cpu.Cpu__indexbyte._indexByte(_env?.__copy__(), (44 : stdgo.GoUInt8));
                    if ((_i_1 < (0 : stdgo.GoInt) : Bool)) {
                        _gotoNext = 232806i32;
                    } else {
                        _gotoNext = 232841i32;
                    };
                } else if (__value__ == (232806i32)) {
                    {
                        final __tmp__0 = _env?.__copy__();
                        final __tmp__1 = (stdgo.Go.str() : stdgo.GoString)?.__copy__();
                        _field_0 = @:binopAssign __tmp__0;
                        _env = @:binopAssign __tmp__1;
                    };
                    _gotoNext = 232884i32;
                } else if (__value__ == (232841i32)) {
                    _gotoNext = 232841i32;
                    {
                        final __tmp__0 = (_env.__slice__(0, _i_1) : stdgo.GoString)?.__copy__();
                        final __tmp__1 = (_env.__slice__((_i_1 + (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        _field_0 = @:binopAssign __tmp__0;
                        _env = @:binopAssign __tmp__1;
                    };
                    var __blank__ = 0i32;
                    _gotoNext = 232884i32;
                } else if (__value__ == (232884i32)) {
                    if ((((_field_0.length) < (4 : stdgo.GoInt) : Bool) || ((_field_0.__slice__(0, (4 : stdgo.GoInt)) : stdgo.GoString) != ("cpu." : stdgo.GoString)) : Bool)) {
                        _gotoNext = 232925i32;
                    } else {
                        _gotoNext = 232945i32;
                    };
                } else if (__value__ == (232925i32)) {
                    var __blank__ = 0i32;
                    _gotoNext = 232738i32;
                } else if (__value__ == (232945i32)) {
                    _i_1 = stdgo._internal.internal.cpu.Cpu__indexbyte._indexByte(_field_0?.__copy__(), (61 : stdgo.GoUInt8));
                    if ((_i_1 < (0 : stdgo.GoInt) : Bool)) {
                        _gotoNext = 232982i32;
                    } else {
                        _gotoNext = 233064i32;
                    };
                } else if (__value__ == (232982i32)) {
                    stdgo.Go.print(("GODEBUG: no value specified for \"" : stdgo.GoString), _field_0, ("\"\n" : stdgo.GoString));
                    var __blank__ = 0i32;
                    _gotoNext = 232738i32;
                } else if (__value__ == (233064i32)) {
                    {
                        final __tmp__0 = (_field_0.__slice__((4 : stdgo.GoInt), _i_1) : stdgo.GoString)?.__copy__();
                        final __tmp__1 = (_field_0.__slice__((_i_1 + (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        _key_2 = @:binopAssign __tmp__0;
                        _value_3 = @:binopAssign __tmp__1;
                    };
                    _gotoNext = 233144i32;
                } else if (__value__ == (233144i32)) {
                    {
                        final __value__ = _value_3;
                        if (__value__ == (("on" : stdgo.GoString))) {
                            _gotoNext = 233161i32;
                        } else if (__value__ == (("off" : stdgo.GoString))) {
                            _gotoNext = 233191i32;
                        } else {
                            _gotoNext = 233223i32;
                        };
                    };
                } else if (__value__ == (233161i32)) {
                    _enable_4 = true;
                    _gotoNext = 233345i32;
                } else if (__value__ == (233191i32)) {
                    _enable_4 = false;
                    _gotoNext = 233345i32;
                } else if (__value__ == (233223i32)) {
                    stdgo.Go.print(("GODEBUG: value \"" : stdgo.GoString), _value_3, ("\" not supported for cpu option \"" : stdgo.GoString), _key_2, ("\"\n" : stdgo.GoString));
                    _gotoNext = 232738i32;
                } else if (__value__ == (233345i32)) {
                    if (_key_2 == (("all" : stdgo.GoString))) {
                        _gotoNext = 233361i32;
                    } else {
                        _gotoNext = 233484i32;
                    };
                } else if (__value__ == (233361i32)) {
                    if ((0i32 : stdgo.GoInt) < (stdgo._internal.internal.cpu.Cpu__options._options.length)) {
                        _gotoNext = 233456i32;
                    } else {
                        _gotoNext = 233462i32;
                    };
                } else if (__value__ == (233389i32)) {
                    stdgo._internal.internal.cpu.Cpu__options._options[(_i_5 : stdgo.GoInt)].specified = true;
                    stdgo._internal.internal.cpu.Cpu__options._options[(_i_5 : stdgo.GoInt)].enable = _enable_4;
                    _i_5++;
                    _gotoNext = 233457i32;
                } else if (__value__ == (233456i32)) {
                    _i_5 = 0i32;
                    _gotoNext = 233457i32;
                } else if (__value__ == (233457i32)) {
                    if (_i_5 < (stdgo._internal.internal.cpu.Cpu__options._options.length)) {
                        _gotoNext = 233389i32;
                    } else {
                        _gotoNext = 233462i32;
                    };
                } else if (__value__ == (233462i32)) {
                    _gotoNext = 232738i32;
                } else if (__value__ == (233484i32)) {
                    if ((0i32 : stdgo.GoInt) < (stdgo._internal.internal.cpu.Cpu__options._options.length)) {
                        _gotoNext = 233628i32;
                    } else {
                        _gotoNext = 233634i32;
                    };
                } else if (__value__ == (233488i32)) {
                    _i_6++;
                    _gotoNext = 233629i32;
                } else if (__value__ == (233507i32)) {
                    if (stdgo._internal.internal.cpu.Cpu__options._options[(_i_6 : stdgo.GoInt)].name == (_key_2)) {
                        _gotoNext = 233538i32;
                    } else {
                        _gotoNext = 233488i32;
                    };
                } else if (__value__ == (233538i32)) {
                    stdgo._internal.internal.cpu.Cpu__options._options[(_i_6 : stdgo.GoInt)].specified = true;
                    stdgo._internal.internal.cpu.Cpu__options._options[(_i_6 : stdgo.GoInt)].enable = _enable_4;
                    _gotoNext = 232738i32;
                } else if (__value__ == (233628i32)) {
                    _i_6 = 0i32;
                    _gotoNext = 233629i32;
                } else if (__value__ == (233629i32)) {
                    if (_i_6 < (stdgo._internal.internal.cpu.Cpu__options._options.length)) {
                        _gotoNext = 233507i32;
                    } else {
                        _gotoNext = 233634i32;
                    };
                } else if (__value__ == (233634i32)) {
                    stdgo.Go.print(("GODEBUG: unknown cpu feature \"" : stdgo.GoString), _key_2, ("\"\n" : stdgo.GoString));
                    _gotoNext = 232738i32;
                } else if (__value__ == (233693i32)) {
                    if ((0i32 : stdgo.GoInt) < (stdgo._internal.internal.cpu.Cpu__options._options.length)) {
                        _gotoNext = 233906i32;
                    } else {
                        _gotoNext = 233909i32;
                    };
                } else if (__value__ == (233719i32)) {
                    _o_8 = stdgo._internal.internal.cpu.Cpu__options._options[(_i_233705_7 : stdgo.GoInt)];
                    if (!_o_8.specified) {
                        _gotoNext = 233739i32;
                    } else {
                        _gotoNext = 233760i32;
                    };
                } else if (__value__ == (233739i32)) {
                    _i_233705_7++;
                    _gotoNext = 233907i32;
                } else if (__value__ == (233760i32)) {
                    if ((_o_8.enable && !_o_8.feature.value : Bool)) {
                        _gotoNext = 233787i32;
                    } else {
                        _gotoNext = 233884i32;
                    };
                } else if (__value__ == (233787i32)) {
                    stdgo.Go.print(("GODEBUG: can not enable \"" : stdgo.GoString), _o_8.name, ("\", missing CPU support\n" : stdgo.GoString));
                    _i_233705_7++;
                    _gotoNext = 233907i32;
                } else if (__value__ == (233884i32)) {
                    _o_8.feature.value = _o_8.enable;
                    _i_233705_7++;
                    _gotoNext = 233907i32;
                } else if (__value__ == (233906i32)) {
                    {
                        final __tmp__0 = 0i32;
                        final __tmp__1 = stdgo._internal.internal.cpu.Cpu__options._options[(0i32 : stdgo.GoInt)];
                        _i_233705_7 = @:binopAssign __tmp__0;
                        _o_8 = @:binopAssign __tmp__1;
                    };
                    _gotoNext = 233907i32;
                } else if (__value__ == (233907i32)) {
                    if (_i_233705_7 < (stdgo._internal.internal.cpu.Cpu__options._options.length)) {
                        _gotoNext = 233719i32;
                    } else {
                        _gotoNext = 233909i32;
                    };
                } else if (__value__ == (233909i32)) {
                    _gotoNext = -1i32;
                };
            };
        };
    }
