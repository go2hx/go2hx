package stdgo._internal.internal.cpu;
function _processOptions(_env:stdgo.GoString):Void {
        var _i_5:stdgo.GoInt = (0 : stdgo.GoInt);
        var _value_3:stdgo.GoString = ("" : stdgo.GoString);
        var _i_1:stdgo.GoInt = (0 : stdgo.GoInt);
        var _field_0:stdgo.GoString = ("" : stdgo.GoString);
        var _fieldBreak = false;
        var _o_8:stdgo._internal.internal.cpu.Cpu_t_option.T_option = ({} : stdgo._internal.internal.cpu.Cpu_t_option.T_option);
        var _i_6:stdgo.GoInt = (0 : stdgo.GoInt);
        var _i_9038_7:stdgo.GoInt = (0 : stdgo.GoInt);
        var _enable_4:Bool = false;
        var _key_2:stdgo.GoString = ("" : stdgo.GoString);
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    _gotoNext = 8063i32;
                } else if (__value__ == (8063i32)) {
                    var __blank__ = 0i32;
                    _fieldBreak = false;
                    _gotoNext = 8071i32;
                } else if (__value__ == (8071i32)) {
                    if (!_fieldBreak && (_env != (stdgo.Go.str() : stdgo.GoString))) {
                        _gotoNext = 8085i32;
                    } else {
                        _gotoNext = 9026i32;
                    };
                } else if (__value__ == (8085i32)) {
                    _field_0 = (stdgo.Go.str() : stdgo.GoString)?.__copy__();
                    _i_1 = stdgo._internal.internal.cpu.Cpu__indexbyte._indexByte(_env?.__copy__(), (44 : stdgo.GoUInt8));
                    if ((_i_1 < (0 : stdgo.GoInt) : Bool)) {
                        _gotoNext = 8139i32;
                    } else {
                        _gotoNext = 8174i32;
                    };
                } else if (__value__ == (8139i32)) {
                    {
                        final __tmp__0 = _env?.__copy__();
                        final __tmp__1 = (stdgo.Go.str() : stdgo.GoString)?.__copy__();
                        _field_0 = __tmp__0;
                        _env = __tmp__1;
                    };
                    _gotoNext = 8217i32;
                } else if (__value__ == (8174i32)) {
                    _gotoNext = 8174i32;
                    {
                        final __tmp__0 = (_env.__slice__(0, _i_1) : stdgo.GoString)?.__copy__();
                        final __tmp__1 = (_env.__slice__((_i_1 + (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        _field_0 = __tmp__0;
                        _env = __tmp__1;
                    };
                    var __blank__ = 0i32;
                    _gotoNext = 8217i32;
                } else if (__value__ == (8217i32)) {
                    if ((((_field_0.length) < (4 : stdgo.GoInt) : Bool) || ((_field_0.__slice__(0, (4 : stdgo.GoInt)) : stdgo.GoString) != ("cpu." : stdgo.GoString)) : Bool)) {
                        _gotoNext = 8258i32;
                    } else {
                        _gotoNext = 8278i32;
                    };
                } else if (__value__ == (8258i32)) {
                    var __blank__ = 0i32;
                    _gotoNext = 8071i32;
                } else if (__value__ == (8278i32)) {
                    _i_1 = stdgo._internal.internal.cpu.Cpu__indexbyte._indexByte(_field_0?.__copy__(), (61 : stdgo.GoUInt8));
                    if ((_i_1 < (0 : stdgo.GoInt) : Bool)) {
                        _gotoNext = 8315i32;
                    } else {
                        _gotoNext = 8397i32;
                    };
                } else if (__value__ == (8315i32)) {
                    stdgo.Go.print(("GODEBUG: no value specified for \"" : stdgo.GoString), _field_0, ("\"\n" : stdgo.GoString));
                    var __blank__ = 0i32;
                    _gotoNext = 8071i32;
                } else if (__value__ == (8397i32)) {
                    {
                        final __tmp__0 = (_field_0.__slice__((4 : stdgo.GoInt), _i_1) : stdgo.GoString)?.__copy__();
                        final __tmp__1 = (_field_0.__slice__((_i_1 + (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        _key_2 = __tmp__0;
                        _value_3 = __tmp__1;
                    };
                    _gotoNext = 8477i32;
                } else if (__value__ == (8477i32)) {
                    {
                        final __value__ = _value_3;
                        if (__value__ == (("on" : stdgo.GoString))) {
                            _gotoNext = 8494i32;
                        } else if (__value__ == (("off" : stdgo.GoString))) {
                            _gotoNext = 8524i32;
                        } else {
                            _gotoNext = 8556i32;
                        };
                    };
                } else if (__value__ == (8494i32)) {
                    _enable_4 = true;
                    _gotoNext = 8678i32;
                } else if (__value__ == (8524i32)) {
                    _enable_4 = false;
                    _gotoNext = 8678i32;
                } else if (__value__ == (8556i32)) {
                    stdgo.Go.print(("GODEBUG: value \"" : stdgo.GoString), _value_3, ("\" not supported for cpu option \"" : stdgo.GoString), _key_2, ("\"\n" : stdgo.GoString));
                    _gotoNext = 8071i32;
                } else if (__value__ == (8678i32)) {
                    if (_key_2 == (("all" : stdgo.GoString))) {
                        _gotoNext = 8694i32;
                    } else {
                        _gotoNext = 8817i32;
                    };
                } else if (__value__ == (8694i32)) {
                    if ((0i32 : stdgo.GoInt) < (stdgo._internal.internal.cpu.Cpu__options._options.length)) {
                        _gotoNext = 8789i32;
                    } else {
                        _gotoNext = 8795i32;
                    };
                } else if (__value__ == (8722i32)) {
                    stdgo._internal.internal.cpu.Cpu__options._options[(_i_5 : stdgo.GoInt)].specified = true;
                    stdgo._internal.internal.cpu.Cpu__options._options[(_i_5 : stdgo.GoInt)].enable = _enable_4;
                    _i_5++;
                    _gotoNext = 8790i32;
                } else if (__value__ == (8789i32)) {
                    _i_5 = 0i32;
                    _gotoNext = 8790i32;
                } else if (__value__ == (8790i32)) {
                    if (_i_5 < (stdgo._internal.internal.cpu.Cpu__options._options.length)) {
                        _gotoNext = 8722i32;
                    } else {
                        _gotoNext = 8795i32;
                    };
                } else if (__value__ == (8795i32)) {
                    _gotoNext = 8071i32;
                } else if (__value__ == (8817i32)) {
                    if ((0i32 : stdgo.GoInt) < (stdgo._internal.internal.cpu.Cpu__options._options.length)) {
                        _gotoNext = 8961i32;
                    } else {
                        _gotoNext = 8967i32;
                    };
                } else if (__value__ == (8821i32)) {
                    _i_6++;
                    _gotoNext = 8962i32;
                } else if (__value__ == (8840i32)) {
                    if (stdgo._internal.internal.cpu.Cpu__options._options[(_i_6 : stdgo.GoInt)].name == (_key_2)) {
                        _gotoNext = 8871i32;
                    } else {
                        _gotoNext = 8821i32;
                    };
                } else if (__value__ == (8871i32)) {
                    stdgo._internal.internal.cpu.Cpu__options._options[(_i_6 : stdgo.GoInt)].specified = true;
                    stdgo._internal.internal.cpu.Cpu__options._options[(_i_6 : stdgo.GoInt)].enable = _enable_4;
                    _gotoNext = 8071i32;
                } else if (__value__ == (8961i32)) {
                    _i_6 = 0i32;
                    _gotoNext = 8962i32;
                } else if (__value__ == (8962i32)) {
                    if (_i_6 < (stdgo._internal.internal.cpu.Cpu__options._options.length)) {
                        _gotoNext = 8840i32;
                    } else {
                        _gotoNext = 8967i32;
                    };
                } else if (__value__ == (8967i32)) {
                    stdgo.Go.print(("GODEBUG: unknown cpu feature \"" : stdgo.GoString), _key_2, ("\"\n" : stdgo.GoString));
                    _gotoNext = 8071i32;
                } else if (__value__ == (9026i32)) {
                    if ((0i32 : stdgo.GoInt) < (stdgo._internal.internal.cpu.Cpu__options._options.length)) {
                        _gotoNext = 9239i32;
                    } else {
                        _gotoNext = 9242i32;
                    };
                } else if (__value__ == (9052i32)) {
                    _o_8 = stdgo._internal.internal.cpu.Cpu__options._options[(_i_9038_7 : stdgo.GoInt)];
                    if (!_o_8.specified) {
                        _gotoNext = 9072i32;
                    } else {
                        _gotoNext = 9093i32;
                    };
                } else if (__value__ == (9072i32)) {
                    _i_9038_7++;
                    _gotoNext = 9240i32;
                } else if (__value__ == (9093i32)) {
                    if ((_o_8.enable && !_o_8.feature.value : Bool)) {
                        _gotoNext = 9120i32;
                    } else {
                        _gotoNext = 9217i32;
                    };
                } else if (__value__ == (9120i32)) {
                    stdgo.Go.print(("GODEBUG: can not enable \"" : stdgo.GoString), _o_8.name, ("\", missing CPU support\n" : stdgo.GoString));
                    _i_9038_7++;
                    _gotoNext = 9240i32;
                } else if (__value__ == (9217i32)) {
                    _o_8.feature.value = _o_8.enable;
                    _i_9038_7++;
                    _gotoNext = 9240i32;
                } else if (__value__ == (9239i32)) {
                    {
                        final __tmp__0 = 0i32;
                        final __tmp__1 = stdgo._internal.internal.cpu.Cpu__options._options[(0i32 : stdgo.GoInt)];
                        _i_9038_7 = __tmp__0;
                        _o_8 = __tmp__1;
                    };
                    _gotoNext = 9240i32;
                } else if (__value__ == (9240i32)) {
                    if (_i_9038_7 < (stdgo._internal.internal.cpu.Cpu__options._options.length)) {
                        _gotoNext = 9052i32;
                    } else {
                        _gotoNext = 9242i32;
                    };
                } else if (__value__ == (9242i32)) {
                    _gotoNext = -1i32;
                };
            };
        };
    }
