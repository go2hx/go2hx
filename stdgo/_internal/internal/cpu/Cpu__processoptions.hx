package stdgo._internal.internal.cpu;
function _processOptions(_env:stdgo.GoString):Void {
        var _i_314454_7:stdgo.GoInt = (0 : stdgo.GoInt);
        var _i_5:stdgo.GoInt = (0 : stdgo.GoInt);
        var _enable_4:Bool = false;
        var _key_2:stdgo.GoString = ("" : stdgo.GoString);
        var _field_0:stdgo.GoString = ("" : stdgo.GoString);
        var _o_8:stdgo._internal.internal.cpu.Cpu_t_option.T_option = ({} : stdgo._internal.internal.cpu.Cpu_t_option.T_option);
        var _i_6:stdgo.GoInt = (0 : stdgo.GoInt);
        var _value_3:stdgo.GoString = ("" : stdgo.GoString);
        var _i_1:stdgo.GoInt = (0 : stdgo.GoInt);
        var _fieldBreak = false;
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    _gotoNext = 313479i32;
                } else if (__value__ == (313479i32)) {
                    var __blank__ = 0i32;
                    _fieldBreak = false;
                    _gotoNext = 313487i32;
                } else if (__value__ == (313487i32)) {
                    if (!_fieldBreak && (_env != (stdgo.Go.str() : stdgo.GoString))) {
                        _gotoNext = 313501i32;
                    } else {
                        _gotoNext = 314442i32;
                    };
                } else if (__value__ == (313501i32)) {
                    _field_0 = (stdgo.Go.str() : stdgo.GoString)?.__copy__();
                    _i_1 = stdgo._internal.internal.cpu.Cpu__indexbyte._indexByte(_env?.__copy__(), (44 : stdgo.GoUInt8));
                    if ((_i_1 < (0 : stdgo.GoInt) : Bool)) {
                        _gotoNext = 313555i32;
                    } else {
                        _gotoNext = 313590i32;
                    };
                } else if (__value__ == (313555i32)) {
                    {
                        final __tmp__0 = _env?.__copy__();
                        final __tmp__1 = (stdgo.Go.str() : stdgo.GoString)?.__copy__();
                        _field_0 = @:binopAssign __tmp__0;
                        _env = @:binopAssign __tmp__1;
                    };
                    _gotoNext = 313633i32;
                } else if (__value__ == (313590i32)) {
                    _gotoNext = 313590i32;
                    {
                        final __tmp__0 = (_env.__slice__(0, _i_1) : stdgo.GoString)?.__copy__();
                        final __tmp__1 = (_env.__slice__((_i_1 + (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        _field_0 = @:binopAssign __tmp__0;
                        _env = @:binopAssign __tmp__1;
                    };
                    var __blank__ = 0i32;
                    _gotoNext = 313633i32;
                } else if (__value__ == (313633i32)) {
                    if ((((_field_0.length) < (4 : stdgo.GoInt) : Bool) || ((_field_0.__slice__(0, (4 : stdgo.GoInt)) : stdgo.GoString) != ("cpu." : stdgo.GoString)) : Bool)) {
                        _gotoNext = 313674i32;
                    } else {
                        _gotoNext = 313694i32;
                    };
                } else if (__value__ == (313674i32)) {
                    var __blank__ = 0i32;
                    _gotoNext = 313487i32;
                } else if (__value__ == (313694i32)) {
                    _i_1 = stdgo._internal.internal.cpu.Cpu__indexbyte._indexByte(_field_0?.__copy__(), (61 : stdgo.GoUInt8));
                    if ((_i_1 < (0 : stdgo.GoInt) : Bool)) {
                        _gotoNext = 313731i32;
                    } else {
                        _gotoNext = 313813i32;
                    };
                } else if (__value__ == (313731i32)) {
                    stdgo.Go.print(("GODEBUG: no value specified for \"" : stdgo.GoString), _field_0, ("\"\n" : stdgo.GoString));
                    var __blank__ = 0i32;
                    _gotoNext = 313487i32;
                } else if (__value__ == (313813i32)) {
                    {
                        final __tmp__0 = (_field_0.__slice__((4 : stdgo.GoInt), _i_1) : stdgo.GoString)?.__copy__();
                        final __tmp__1 = (_field_0.__slice__((_i_1 + (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        _key_2 = @:binopAssign __tmp__0;
                        _value_3 = @:binopAssign __tmp__1;
                    };
                    _gotoNext = 313893i32;
                } else if (__value__ == (313893i32)) {
                    {
                        final __value__ = _value_3;
                        if (__value__ == (("on" : stdgo.GoString))) {
                            _gotoNext = 313910i32;
                        } else if (__value__ == (("off" : stdgo.GoString))) {
                            _gotoNext = 313940i32;
                        } else {
                            _gotoNext = 313972i32;
                        };
                    };
                } else if (__value__ == (313910i32)) {
                    _enable_4 = true;
                    _gotoNext = 314094i32;
                } else if (__value__ == (313940i32)) {
                    _enable_4 = false;
                    _gotoNext = 314094i32;
                } else if (__value__ == (313972i32)) {
                    stdgo.Go.print(("GODEBUG: value \"" : stdgo.GoString), _value_3, ("\" not supported for cpu option \"" : stdgo.GoString), _key_2, ("\"\n" : stdgo.GoString));
                    _gotoNext = 313487i32;
                } else if (__value__ == (314094i32)) {
                    if (_key_2 == (("all" : stdgo.GoString))) {
                        _gotoNext = 314110i32;
                    } else {
                        _gotoNext = 314233i32;
                    };
                } else if (__value__ == (314110i32)) {
                    if ((0i32 : stdgo.GoInt) < (stdgo._internal.internal.cpu.Cpu__options._options.length)) {
                        _gotoNext = 314205i32;
                    } else {
                        _gotoNext = 314211i32;
                    };
                } else if (__value__ == (314138i32)) {
                    stdgo._internal.internal.cpu.Cpu__options._options[(_i_5 : stdgo.GoInt)].specified = true;
                    stdgo._internal.internal.cpu.Cpu__options._options[(_i_5 : stdgo.GoInt)].enable = _enable_4;
                    _i_5++;
                    _gotoNext = 314206i32;
                } else if (__value__ == (314205i32)) {
                    _i_5 = 0i32;
                    _gotoNext = 314206i32;
                } else if (__value__ == (314206i32)) {
                    if (_i_5 < (stdgo._internal.internal.cpu.Cpu__options._options.length)) {
                        _gotoNext = 314138i32;
                    } else {
                        _gotoNext = 314211i32;
                    };
                } else if (__value__ == (314211i32)) {
                    _gotoNext = 313487i32;
                } else if (__value__ == (314233i32)) {
                    if ((0i32 : stdgo.GoInt) < (stdgo._internal.internal.cpu.Cpu__options._options.length)) {
                        _gotoNext = 314377i32;
                    } else {
                        _gotoNext = 314383i32;
                    };
                } else if (__value__ == (314237i32)) {
                    _i_6++;
                    _gotoNext = 314378i32;
                } else if (__value__ == (314256i32)) {
                    if (stdgo._internal.internal.cpu.Cpu__options._options[(_i_6 : stdgo.GoInt)].name == (_key_2)) {
                        _gotoNext = 314287i32;
                    } else {
                        _gotoNext = 314237i32;
                    };
                } else if (__value__ == (314287i32)) {
                    stdgo._internal.internal.cpu.Cpu__options._options[(_i_6 : stdgo.GoInt)].specified = true;
                    stdgo._internal.internal.cpu.Cpu__options._options[(_i_6 : stdgo.GoInt)].enable = _enable_4;
                    _gotoNext = 313487i32;
                } else if (__value__ == (314377i32)) {
                    _i_6 = 0i32;
                    _gotoNext = 314378i32;
                } else if (__value__ == (314378i32)) {
                    if (_i_6 < (stdgo._internal.internal.cpu.Cpu__options._options.length)) {
                        _gotoNext = 314256i32;
                    } else {
                        _gotoNext = 314383i32;
                    };
                } else if (__value__ == (314383i32)) {
                    stdgo.Go.print(("GODEBUG: unknown cpu feature \"" : stdgo.GoString), _key_2, ("\"\n" : stdgo.GoString));
                    _gotoNext = 313487i32;
                } else if (__value__ == (314442i32)) {
                    if ((0i32 : stdgo.GoInt) < (stdgo._internal.internal.cpu.Cpu__options._options.length)) {
                        _gotoNext = 314655i32;
                    } else {
                        _gotoNext = 314658i32;
                    };
                } else if (__value__ == (314468i32)) {
                    _o_8 = stdgo._internal.internal.cpu.Cpu__options._options[(_i_314454_7 : stdgo.GoInt)];
                    if (!_o_8.specified) {
                        _gotoNext = 314488i32;
                    } else {
                        _gotoNext = 314509i32;
                    };
                } else if (__value__ == (314488i32)) {
                    _i_314454_7++;
                    _gotoNext = 314656i32;
                } else if (__value__ == (314509i32)) {
                    if ((_o_8.enable && !_o_8.feature.value : Bool)) {
                        _gotoNext = 314536i32;
                    } else {
                        _gotoNext = 314633i32;
                    };
                } else if (__value__ == (314536i32)) {
                    stdgo.Go.print(("GODEBUG: can not enable \"" : stdgo.GoString), _o_8.name, ("\", missing CPU support\n" : stdgo.GoString));
                    _i_314454_7++;
                    _gotoNext = 314656i32;
                } else if (__value__ == (314633i32)) {
                    _o_8.feature.value = _o_8.enable;
                    _i_314454_7++;
                    _gotoNext = 314656i32;
                } else if (__value__ == (314655i32)) {
                    {
                        final __tmp__0 = 0i32;
                        final __tmp__1 = stdgo._internal.internal.cpu.Cpu__options._options[(0i32 : stdgo.GoInt)];
                        _i_314454_7 = @:binopAssign __tmp__0;
                        _o_8 = @:binopAssign __tmp__1;
                    };
                    _gotoNext = 314656i32;
                } else if (__value__ == (314656i32)) {
                    if (_i_314454_7 < (stdgo._internal.internal.cpu.Cpu__options._options.length)) {
                        _gotoNext = 314468i32;
                    } else {
                        _gotoNext = 314658i32;
                    };
                } else if (__value__ == (314658i32)) {
                    _gotoNext = -1i32;
                };
            };
        };
    }
