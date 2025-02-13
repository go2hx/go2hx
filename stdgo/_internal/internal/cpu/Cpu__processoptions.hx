package stdgo._internal.internal.cpu;
function _processOptions(_env:stdgo.GoString):Void {
        var _i_6808:stdgo.GoInt = (0 : stdgo.GoInt);
        var _value_6507:stdgo.GoString = ("" : stdgo.GoString);
        var _fieldBreak = false;
        var _key_6502:stdgo.GoString = ("" : stdgo.GoString);
        var _i_6208:stdgo.GoInt = (0 : stdgo.GoInt);
        var _field_6194:stdgo.GoString = ("" : stdgo.GoString);
        var _o_7138:stdgo._internal.internal.cpu.Cpu_t_option.T_option = ({} : stdgo._internal.internal.cpu.Cpu_t_option.T_option);
        var _i_7143_0:stdgo.GoInt = (0 : stdgo.GoInt);
        var _i_6926:stdgo.GoInt = (0 : stdgo.GoInt);
        var _enable_6568:Bool = false;
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    _gotoNext = 6168i32;
                } else if (__value__ == (6168i32)) {
                    var __blank__ = 0i32;
                    _fieldBreak = false;
                    _gotoNext = 6176i32;
                } else if (__value__ == (6176i32)) {
                    if (!_fieldBreak && (_env != (stdgo.Go.str() : stdgo.GoString))) {
                        _gotoNext = 6190i32;
                    } else {
                        _gotoNext = 7131i32;
                    };
                } else if (__value__ == (6190i32)) {
                    _field_6194 = (stdgo.Go.str() : stdgo.GoString)?.__copy__();
                    _i_6208 = stdgo._internal.internal.cpu.Cpu__indexbyte._indexByte(_env?.__copy__(), (44 : stdgo.GoUInt8));
                    if ((_i_6208 < (0 : stdgo.GoInt) : Bool)) {
                        _gotoNext = 6244i32;
                    } else {
                        _gotoNext = 6279i32;
                    };
                } else if (__value__ == (6244i32)) {
                    {
                        final __tmp__0 = _env?.__copy__();
                        final __tmp__1 = (stdgo.Go.str() : stdgo.GoString)?.__copy__();
                        _field_6194 = __tmp__0;
                        _env = __tmp__1;
                    };
                    _gotoNext = 6322i32;
                } else if (__value__ == (6279i32)) {
                    _gotoNext = 6279i32;
                    {
                        final __tmp__0 = (_env.__slice__(0, _i_6208) : stdgo.GoString)?.__copy__();
                        final __tmp__1 = (_env.__slice__((_i_6208 + (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        _field_6194 = __tmp__0;
                        _env = __tmp__1;
                    };
                    var __blank__ = 0i32;
                    _gotoNext = 6322i32;
                } else if (__value__ == (6322i32)) {
                    if ((((_field_6194.length) < (4 : stdgo.GoInt) : Bool) || ((_field_6194.__slice__(0, (4 : stdgo.GoInt)) : stdgo.GoString) != ("cpu." : stdgo.GoString)) : Bool)) {
                        _gotoNext = 6363i32;
                    } else {
                        _gotoNext = 6383i32;
                    };
                } else if (__value__ == (6363i32)) {
                    var __blank__ = 0i32;
                    _gotoNext = 6176i32;
                } else if (__value__ == (6383i32)) {
                    _i_6208 = stdgo._internal.internal.cpu.Cpu__indexbyte._indexByte(_field_6194?.__copy__(), (61 : stdgo.GoUInt8));
                    if ((_i_6208 < (0 : stdgo.GoInt) : Bool)) {
                        _gotoNext = 6420i32;
                    } else {
                        _gotoNext = 6502i32;
                    };
                } else if (__value__ == (6420i32)) {
                    stdgo.Go.print(("GODEBUG: no value specified for \"" : stdgo.GoString), _field_6194, ("\"\n" : stdgo.GoString));
                    var __blank__ = 0i32;
                    _gotoNext = 6176i32;
                } else if (__value__ == (6502i32)) {
                    {
                        final __tmp__0 = (_field_6194.__slice__((4 : stdgo.GoInt), _i_6208) : stdgo.GoString)?.__copy__();
                        final __tmp__1 = (_field_6194.__slice__((_i_6208 + (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        _key_6502 = __tmp__0;
                        _value_6507 = __tmp__1;
                    };
                    _gotoNext = 6582i32;
                } else if (__value__ == (6582i32)) {
                    {
                        final __value__ = _value_6507;
                        if (__value__ == (("on" : stdgo.GoString))) {
                            _gotoNext = 6599i32;
                        } else if (__value__ == (("off" : stdgo.GoString))) {
                            _gotoNext = 6629i32;
                        } else {
                            _gotoNext = 6661i32;
                        };
                    };
                } else if (__value__ == (6599i32)) {
                    _enable_6568 = true;
                    _gotoNext = 6783i32;
                } else if (__value__ == (6629i32)) {
                    _enable_6568 = false;
                    _gotoNext = 6783i32;
                } else if (__value__ == (6661i32)) {
                    stdgo.Go.print(("GODEBUG: value \"" : stdgo.GoString), _value_6507, ("\" not supported for cpu option \"" : stdgo.GoString), _key_6502, ("\"\n" : stdgo.GoString));
                    _gotoNext = 6176i32;
                } else if (__value__ == (6783i32)) {
                    if (_key_6502 == (("all" : stdgo.GoString))) {
                        _gotoNext = 6799i32;
                    } else {
                        _gotoNext = 6922i32;
                    };
                } else if (__value__ == (6799i32)) {
                    if ((0i32 : stdgo.GoInt) < (stdgo._internal.internal.cpu.Cpu__options._options.length)) {
                        _gotoNext = 6894i32;
                    } else {
                        _gotoNext = 6900i32;
                    };
                } else if (__value__ == (6827i32)) {
                    stdgo._internal.internal.cpu.Cpu__options._options[(_i_6808 : stdgo.GoInt)].specified = true;
                    stdgo._internal.internal.cpu.Cpu__options._options[(_i_6808 : stdgo.GoInt)].enable = _enable_6568;
                    _i_6808++;
                    _gotoNext = 6895i32;
                } else if (__value__ == (6894i32)) {
                    _i_6808 = 0i32;
                    _gotoNext = 6895i32;
                } else if (__value__ == (6895i32)) {
                    if (_i_6808 < (stdgo._internal.internal.cpu.Cpu__options._options.length)) {
                        _gotoNext = 6827i32;
                    } else {
                        _gotoNext = 6900i32;
                    };
                } else if (__value__ == (6900i32)) {
                    _gotoNext = 6176i32;
                } else if (__value__ == (6922i32)) {
                    if ((0i32 : stdgo.GoInt) < (stdgo._internal.internal.cpu.Cpu__options._options.length)) {
                        _gotoNext = 7066i32;
                    } else {
                        _gotoNext = 7072i32;
                    };
                } else if (__value__ == (6926i32)) {
                    _i_6926++;
                    _gotoNext = 7067i32;
                } else if (__value__ == (6945i32)) {
                    if (stdgo._internal.internal.cpu.Cpu__options._options[(_i_6926 : stdgo.GoInt)].name == (_key_6502)) {
                        _gotoNext = 6976i32;
                    } else {
                        _gotoNext = 6926i32;
                    };
                } else if (__value__ == (6976i32)) {
                    stdgo._internal.internal.cpu.Cpu__options._options[(_i_6926 : stdgo.GoInt)].specified = true;
                    stdgo._internal.internal.cpu.Cpu__options._options[(_i_6926 : stdgo.GoInt)].enable = _enable_6568;
                    _gotoNext = 6176i32;
                } else if (__value__ == (7066i32)) {
                    _i_6926 = 0i32;
                    _gotoNext = 7067i32;
                } else if (__value__ == (7067i32)) {
                    if (_i_6926 < (stdgo._internal.internal.cpu.Cpu__options._options.length)) {
                        _gotoNext = 6945i32;
                    } else {
                        _gotoNext = 7072i32;
                    };
                } else if (__value__ == (7072i32)) {
                    stdgo.Go.print(("GODEBUG: unknown cpu feature \"" : stdgo.GoString), _key_6502, ("\"\n" : stdgo.GoString));
                    _gotoNext = 6176i32;
                } else if (__value__ == (7131i32)) {
                    if ((0i32 : stdgo.GoInt) < (stdgo._internal.internal.cpu.Cpu__options._options.length)) {
                        _gotoNext = 7344i32;
                    } else {
                        _gotoNext = 7347i32;
                    };
                } else if (__value__ == (7157i32)) {
                    _o_7138 = stdgo._internal.internal.cpu.Cpu__options._options[(_i_7143_0 : stdgo.GoInt)];
                    if (!_o_7138.specified) {
                        _gotoNext = 7177i32;
                    } else {
                        _gotoNext = 7198i32;
                    };
                } else if (__value__ == (7177i32)) {
                    _i_7143_0++;
                    _gotoNext = 7345i32;
                } else if (__value__ == (7198i32)) {
                    if ((_o_7138.enable && !_o_7138.feature.value : Bool)) {
                        _gotoNext = 7225i32;
                    } else {
                        _gotoNext = 7322i32;
                    };
                } else if (__value__ == (7225i32)) {
                    stdgo.Go.print(("GODEBUG: can not enable \"" : stdgo.GoString), _o_7138.name, ("\", missing CPU support\n" : stdgo.GoString));
                    _i_7143_0++;
                    _gotoNext = 7345i32;
                } else if (__value__ == (7322i32)) {
                    _o_7138.feature.value = _o_7138.enable;
                    _i_7143_0++;
                    _gotoNext = 7345i32;
                } else if (__value__ == (7344i32)) {
                    {
                        final __tmp__0 = 0i32;
                        final __tmp__1 = stdgo._internal.internal.cpu.Cpu__options._options[(0i32 : stdgo.GoInt)];
                        _i_7143_0 = __tmp__0;
                        _o_7138 = __tmp__1;
                    };
                    _gotoNext = 7345i32;
                } else if (__value__ == (7345i32)) {
                    if (_i_7143_0 < (stdgo._internal.internal.cpu.Cpu__options._options.length)) {
                        _gotoNext = 7157i32;
                    } else {
                        _gotoNext = 7347i32;
                    };
                } else if (__value__ == (7347i32)) {
                    _gotoNext = -1i32;
                };
            };
        };
    }
