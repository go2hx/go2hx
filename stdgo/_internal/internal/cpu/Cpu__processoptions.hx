package stdgo._internal.internal.cpu;
function _processOptions(_env:stdgo.GoString):Void {
        var _o_8:stdgo._internal.internal.cpu.Cpu_t_option.T_option = ({} : stdgo._internal.internal.cpu.Cpu_t_option.T_option);
        var _i_17731_7:stdgo.GoInt = (0 : stdgo.GoInt);
        var _i_6:stdgo.GoInt = (0 : stdgo.GoInt);
        var _enable_4:Bool = false;
        var _key_2:stdgo.GoString = ("" : stdgo.GoString);
        var _i_5:stdgo.GoInt = (0 : stdgo.GoInt);
        var _value_3:stdgo.GoString = ("" : stdgo.GoString);
        var _i_1:stdgo.GoInt = (0 : stdgo.GoInt);
        var _field_0:stdgo.GoString = ("" : stdgo.GoString);
        var _fieldBreak = false;
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    _gotoNext = 16756i32;
                } else if (__value__ == (16756i32)) {
                    var __blank__ = 0i32;
                    _fieldBreak = false;
                    _gotoNext = 16764i32;
                } else if (__value__ == (16764i32)) {
                    if (!_fieldBreak && (_env != (stdgo.Go.str() : stdgo.GoString))) {
                        _gotoNext = 16778i32;
                    } else {
                        _gotoNext = 17719i32;
                    };
                } else if (__value__ == (16778i32)) {
                    _field_0 = (stdgo.Go.str() : stdgo.GoString)?.__copy__();
                    _i_1 = stdgo._internal.internal.cpu.Cpu__indexbyte._indexByte(_env?.__copy__(), (44 : stdgo.GoUInt8));
                    if ((_i_1 < (0 : stdgo.GoInt) : Bool)) {
                        _gotoNext = 16832i32;
                    } else {
                        _gotoNext = 16867i32;
                    };
                } else if (__value__ == (16832i32)) {
                    {
                        final __tmp__0 = _env?.__copy__();
                        final __tmp__1 = (stdgo.Go.str() : stdgo.GoString)?.__copy__();
                        _field_0 = @:binopAssign __tmp__0;
                        _env = @:binopAssign __tmp__1;
                    };
                    _gotoNext = 16910i32;
                } else if (__value__ == (16867i32)) {
                    _gotoNext = 16867i32;
                    {
                        final __tmp__0 = (_env.__slice__(0, _i_1) : stdgo.GoString)?.__copy__();
                        final __tmp__1 = (_env.__slice__((_i_1 + (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        _field_0 = @:binopAssign __tmp__0;
                        _env = @:binopAssign __tmp__1;
                    };
                    var __blank__ = 0i32;
                    _gotoNext = 16910i32;
                } else if (__value__ == (16910i32)) {
                    if ((((_field_0.length) < (4 : stdgo.GoInt) : Bool) || ((_field_0.__slice__(0, (4 : stdgo.GoInt)) : stdgo.GoString) != ("cpu." : stdgo.GoString)) : Bool)) {
                        _gotoNext = 16951i32;
                    } else {
                        _gotoNext = 16971i32;
                    };
                } else if (__value__ == (16951i32)) {
                    var __blank__ = 0i32;
                    _gotoNext = 16764i32;
                } else if (__value__ == (16971i32)) {
                    _i_1 = stdgo._internal.internal.cpu.Cpu__indexbyte._indexByte(_field_0?.__copy__(), (61 : stdgo.GoUInt8));
                    if ((_i_1 < (0 : stdgo.GoInt) : Bool)) {
                        _gotoNext = 17008i32;
                    } else {
                        _gotoNext = 17090i32;
                    };
                } else if (__value__ == (17008i32)) {
                    stdgo.Go.print(("GODEBUG: no value specified for \"" : stdgo.GoString), _field_0, ("\"\n" : stdgo.GoString));
                    var __blank__ = 0i32;
                    _gotoNext = 16764i32;
                } else if (__value__ == (17090i32)) {
                    {
                        final __tmp__0 = (_field_0.__slice__((4 : stdgo.GoInt), _i_1) : stdgo.GoString)?.__copy__();
                        final __tmp__1 = (_field_0.__slice__((_i_1 + (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        _key_2 = @:binopAssign __tmp__0;
                        _value_3 = @:binopAssign __tmp__1;
                    };
                    _gotoNext = 17170i32;
                } else if (__value__ == (17170i32)) {
                    {
                        final __value__ = _value_3;
                        if (__value__ == (("on" : stdgo.GoString))) {
                            _gotoNext = 17187i32;
                        } else if (__value__ == (("off" : stdgo.GoString))) {
                            _gotoNext = 17217i32;
                        } else {
                            _gotoNext = 17249i32;
                        };
                    };
                } else if (__value__ == (17187i32)) {
                    _enable_4 = true;
                    _gotoNext = 17371i32;
                } else if (__value__ == (17217i32)) {
                    _enable_4 = false;
                    _gotoNext = 17371i32;
                } else if (__value__ == (17249i32)) {
                    stdgo.Go.print(("GODEBUG: value \"" : stdgo.GoString), _value_3, ("\" not supported for cpu option \"" : stdgo.GoString), _key_2, ("\"\n" : stdgo.GoString));
                    _gotoNext = 16764i32;
                } else if (__value__ == (17371i32)) {
                    if (_key_2 == (("all" : stdgo.GoString))) {
                        _gotoNext = 17387i32;
                    } else {
                        _gotoNext = 17510i32;
                    };
                } else if (__value__ == (17387i32)) {
                    if ((0i32 : stdgo.GoInt) < (stdgo._internal.internal.cpu.Cpu__options._options.length)) {
                        _gotoNext = 17482i32;
                    } else {
                        _gotoNext = 17488i32;
                    };
                } else if (__value__ == (17415i32)) {
                    stdgo._internal.internal.cpu.Cpu__options._options[(_i_5 : stdgo.GoInt)].specified = true;
                    stdgo._internal.internal.cpu.Cpu__options._options[(_i_5 : stdgo.GoInt)].enable = _enable_4;
                    _i_5++;
                    _gotoNext = 17483i32;
                } else if (__value__ == (17482i32)) {
                    _i_5 = 0i32;
                    _gotoNext = 17483i32;
                } else if (__value__ == (17483i32)) {
                    if (_i_5 < (stdgo._internal.internal.cpu.Cpu__options._options.length)) {
                        _gotoNext = 17415i32;
                    } else {
                        _gotoNext = 17488i32;
                    };
                } else if (__value__ == (17488i32)) {
                    _gotoNext = 16764i32;
                } else if (__value__ == (17510i32)) {
                    if ((0i32 : stdgo.GoInt) < (stdgo._internal.internal.cpu.Cpu__options._options.length)) {
                        _gotoNext = 17654i32;
                    } else {
                        _gotoNext = 17660i32;
                    };
                } else if (__value__ == (17514i32)) {
                    _i_6++;
                    _gotoNext = 17655i32;
                } else if (__value__ == (17533i32)) {
                    if (stdgo._internal.internal.cpu.Cpu__options._options[(_i_6 : stdgo.GoInt)].name == (_key_2)) {
                        _gotoNext = 17564i32;
                    } else {
                        _gotoNext = 17514i32;
                    };
                } else if (__value__ == (17564i32)) {
                    stdgo._internal.internal.cpu.Cpu__options._options[(_i_6 : stdgo.GoInt)].specified = true;
                    stdgo._internal.internal.cpu.Cpu__options._options[(_i_6 : stdgo.GoInt)].enable = _enable_4;
                    _gotoNext = 16764i32;
                } else if (__value__ == (17654i32)) {
                    _i_6 = 0i32;
                    _gotoNext = 17655i32;
                } else if (__value__ == (17655i32)) {
                    if (_i_6 < (stdgo._internal.internal.cpu.Cpu__options._options.length)) {
                        _gotoNext = 17533i32;
                    } else {
                        _gotoNext = 17660i32;
                    };
                } else if (__value__ == (17660i32)) {
                    stdgo.Go.print(("GODEBUG: unknown cpu feature \"" : stdgo.GoString), _key_2, ("\"\n" : stdgo.GoString));
                    _gotoNext = 16764i32;
                } else if (__value__ == (17719i32)) {
                    if ((0i32 : stdgo.GoInt) < (stdgo._internal.internal.cpu.Cpu__options._options.length)) {
                        _gotoNext = 17932i32;
                    } else {
                        _gotoNext = 17935i32;
                    };
                } else if (__value__ == (17745i32)) {
                    _o_8 = stdgo._internal.internal.cpu.Cpu__options._options[(_i_17731_7 : stdgo.GoInt)];
                    if (!_o_8.specified) {
                        _gotoNext = 17765i32;
                    } else {
                        _gotoNext = 17786i32;
                    };
                } else if (__value__ == (17765i32)) {
                    _i_17731_7++;
                    _gotoNext = 17933i32;
                } else if (__value__ == (17786i32)) {
                    if ((_o_8.enable && !_o_8.feature.value : Bool)) {
                        _gotoNext = 17813i32;
                    } else {
                        _gotoNext = 17910i32;
                    };
                } else if (__value__ == (17813i32)) {
                    stdgo.Go.print(("GODEBUG: can not enable \"" : stdgo.GoString), _o_8.name, ("\", missing CPU support\n" : stdgo.GoString));
                    _i_17731_7++;
                    _gotoNext = 17933i32;
                } else if (__value__ == (17910i32)) {
                    _o_8.feature.value = _o_8.enable;
                    _i_17731_7++;
                    _gotoNext = 17933i32;
                } else if (__value__ == (17932i32)) {
                    {
                        final __tmp__0 = 0i32;
                        final __tmp__1 = stdgo._internal.internal.cpu.Cpu__options._options[(0i32 : stdgo.GoInt)];
                        _i_17731_7 = @:binopAssign __tmp__0;
                        _o_8 = @:binopAssign __tmp__1;
                    };
                    _gotoNext = 17933i32;
                } else if (__value__ == (17933i32)) {
                    if (_i_17731_7 < (stdgo._internal.internal.cpu.Cpu__options._options.length)) {
                        _gotoNext = 17745i32;
                    } else {
                        _gotoNext = 17935i32;
                    };
                } else if (__value__ == (17935i32)) {
                    _gotoNext = -1i32;
                };
            };
        };
    }
