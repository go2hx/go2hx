package stdgo._internal.internal.cpu;
function _processOptions(_env:stdgo.GoString):Void {
        var _i_7083:stdgo.GoInt = (0 : stdgo.GoInt);
        var _i_6965:stdgo.GoInt = (0 : stdgo.GoInt);
        var _i_6365:stdgo.GoInt = (0 : stdgo.GoInt);
        var _field_6351:stdgo.GoString = ("" : stdgo.GoString);
        var _o_7295:stdgo._internal.internal.cpu.Cpu_T_option.T_option = ({} : stdgo._internal.internal.cpu.Cpu_T_option.T_option);
        var _i_7300_0:stdgo.GoInt = (0 : stdgo.GoInt);
        var _enable_6725:Bool = false;
        var _value_6664:stdgo.GoString = ("" : stdgo.GoString);
        var _key_6659:stdgo.GoString = ("" : stdgo.GoString);
        var _fieldBreak = false;
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    _gotoNext = 6325i32;
                } else if (__value__ == (6325i32)) {
                    var __blank__ = 0i32;
                    _fieldBreak = false;
                    _gotoNext = 6333i32;
                } else if (__value__ == (6333i32)) {
                    if (!_fieldBreak && (_env != stdgo.Go.str())) {
                        _gotoNext = 6347i32;
                    } else {
                        _gotoNext = 7288i32;
                    };
                } else if (__value__ == (6347i32)) {
                    _field_6351 = stdgo.Go.str()?.__copy__();
                    _i_6365 = stdgo._internal.internal.cpu.Cpu__indexByte._indexByte(_env?.__copy__(), (44 : stdgo.GoUInt8));
                    if ((_i_6365 < (0 : stdgo.GoInt) : Bool)) {
                        _gotoNext = 6401i32;
                    } else {
                        _gotoNext = 6436i32;
                    };
                } else if (__value__ == (6401i32)) {
                    {
                        final __tmp__0 = _env?.__copy__();
                        final __tmp__1 = stdgo.Go.str()?.__copy__();
                        _field_6351 = __tmp__0;
                        _env = __tmp__1;
                    };
                    _gotoNext = 6479i32;
                } else if (__value__ == (6436i32)) {
                    _gotoNext = 6436i32;
                    {
                        final __tmp__0 = (_env.__slice__(0, _i_6365) : stdgo.GoString)?.__copy__();
                        final __tmp__1 = (_env.__slice__((_i_6365 + (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        _field_6351 = __tmp__0;
                        _env = __tmp__1;
                    };
                    var __blank__ = 0i32;
                    _gotoNext = 6479i32;
                } else if (__value__ == (6479i32)) {
                    if ((((_field_6351.length) < (4 : stdgo.GoInt) : Bool) || ((_field_6351.__slice__(0, (4 : stdgo.GoInt)) : stdgo.GoString) != ("cpu." : stdgo.GoString)) : Bool)) {
                        _gotoNext = 6520i32;
                    } else {
                        _gotoNext = 6540i32;
                    };
                } else if (__value__ == (6520i32)) {
                    var __blank__ = 0i32;
                    _gotoNext = 6333i32;
                } else if (__value__ == (6540i32)) {
                    _i_6365 = stdgo._internal.internal.cpu.Cpu__indexByte._indexByte(_field_6351?.__copy__(), (61 : stdgo.GoUInt8));
                    if ((_i_6365 < (0 : stdgo.GoInt) : Bool)) {
                        _gotoNext = 6577i32;
                    } else {
                        _gotoNext = 6659i32;
                    };
                } else if (__value__ == (6577i32)) {
                    stdgo.Go.print(("GODEBUG: no value specified for \"" : stdgo.GoString), _field_6351, ("\"\n" : stdgo.GoString));
                    var __blank__ = 0i32;
                    _gotoNext = 6333i32;
                } else if (__value__ == (6659i32)) {
                    {
                        final __tmp__0 = (_field_6351.__slice__((4 : stdgo.GoInt), _i_6365) : stdgo.GoString)?.__copy__();
                        final __tmp__1 = (_field_6351.__slice__((_i_6365 + (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        _key_6659 = __tmp__0;
                        _value_6664 = __tmp__1;
                    };
                    _gotoNext = 6739i32;
                } else if (__value__ == (6739i32)) {
                    {
                        final __value__ = _value_6664;
                        if (__value__ == (("on" : stdgo.GoString))) {
                            _gotoNext = 6756i32;
                        } else if (__value__ == (("off" : stdgo.GoString))) {
                            _gotoNext = 6786i32;
                        } else {
                            _gotoNext = 6818i32;
                        };
                    };
                } else if (__value__ == (6756i32)) {
                    _enable_6725 = true;
                    _gotoNext = 6940i32;
                } else if (__value__ == (6786i32)) {
                    _enable_6725 = false;
                    _gotoNext = 6940i32;
                } else if (__value__ == (6818i32)) {
                    stdgo.Go.print(("GODEBUG: value \"" : stdgo.GoString), _value_6664, ("\" not supported for cpu option \"" : stdgo.GoString), _key_6659, ("\"\n" : stdgo.GoString));
                    _gotoNext = 6333i32;
                } else if (__value__ == (6940i32)) {
                    if (_key_6659 == (("all" : stdgo.GoString))) {
                        _gotoNext = 6956i32;
                    } else {
                        _gotoNext = 7079i32;
                    };
                } else if (__value__ == (6956i32)) {
                    if ((0i32 : stdgo.GoInt) < (stdgo._internal.internal.cpu.Cpu__options._options.length)) {
                        _gotoNext = 7051i32;
                    } else {
                        _gotoNext = 7057i32;
                    };
                } else if (__value__ == (6984i32)) {
                    stdgo._internal.internal.cpu.Cpu__options._options[(_i_6965 : stdgo.GoInt)].specified = true;
                    stdgo._internal.internal.cpu.Cpu__options._options[(_i_6965 : stdgo.GoInt)].enable = _enable_6725;
                    _i_6965++;
                    _gotoNext = 7052i32;
                } else if (__value__ == (7051i32)) {
                    _i_6965 = 0i32;
                    _gotoNext = 7052i32;
                } else if (__value__ == (7052i32)) {
                    if (_i_6965 < (stdgo._internal.internal.cpu.Cpu__options._options.length)) {
                        _gotoNext = 6984i32;
                    } else {
                        _gotoNext = 7057i32;
                    };
                } else if (__value__ == (7057i32)) {
                    _gotoNext = 6333i32;
                } else if (__value__ == (7079i32)) {
                    if ((0i32 : stdgo.GoInt) < (stdgo._internal.internal.cpu.Cpu__options._options.length)) {
                        _gotoNext = 7223i32;
                    } else {
                        _gotoNext = 7229i32;
                    };
                } else if (__value__ == (7083i32)) {
                    _i_7083++;
                    _gotoNext = 7224i32;
                } else if (__value__ == (7102i32)) {
                    if (stdgo._internal.internal.cpu.Cpu__options._options[(_i_7083 : stdgo.GoInt)].name == (_key_6659)) {
                        _gotoNext = 7133i32;
                    } else {
                        _gotoNext = 7083i32;
                    };
                } else if (__value__ == (7133i32)) {
                    stdgo._internal.internal.cpu.Cpu__options._options[(_i_7083 : stdgo.GoInt)].specified = true;
                    stdgo._internal.internal.cpu.Cpu__options._options[(_i_7083 : stdgo.GoInt)].enable = _enable_6725;
                    _gotoNext = 6333i32;
                } else if (__value__ == (7223i32)) {
                    _i_7083 = 0i32;
                    _gotoNext = 7224i32;
                } else if (__value__ == (7224i32)) {
                    if (_i_7083 < (stdgo._internal.internal.cpu.Cpu__options._options.length)) {
                        _gotoNext = 7102i32;
                    } else {
                        _gotoNext = 7229i32;
                    };
                } else if (__value__ == (7229i32)) {
                    stdgo.Go.print(("GODEBUG: unknown cpu feature \"" : stdgo.GoString), _key_6659, ("\"\n" : stdgo.GoString));
                    _gotoNext = 6333i32;
                } else if (__value__ == (7288i32)) {
                    if ((0i32 : stdgo.GoInt) < (stdgo._internal.internal.cpu.Cpu__options._options.length)) {
                        _gotoNext = 7501i32;
                    } else {
                        _gotoNext = 7504i32;
                    };
                } else if (__value__ == (7314i32)) {
                    _o_7295 = stdgo._internal.internal.cpu.Cpu__options._options[(_i_7300_0 : stdgo.GoInt)];
                    if (!_o_7295.specified) {
                        _gotoNext = 7334i32;
                    } else {
                        _gotoNext = 7355i32;
                    };
                } else if (__value__ == (7334i32)) {
                    _i_7300_0++;
                    _gotoNext = 7502i32;
                } else if (__value__ == (7355i32)) {
                    if ((_o_7295.enable && !_o_7295.feature.value : Bool)) {
                        _gotoNext = 7382i32;
                    } else {
                        _gotoNext = 7479i32;
                    };
                } else if (__value__ == (7382i32)) {
                    stdgo.Go.print(("GODEBUG: can not enable \"" : stdgo.GoString), _o_7295.name, ("\", missing CPU support\n" : stdgo.GoString));
                    _i_7300_0++;
                    _gotoNext = 7502i32;
                } else if (__value__ == (7479i32)) {
                    _o_7295.feature.value = _o_7295.enable;
                    _i_7300_0++;
                    _gotoNext = 7502i32;
                } else if (__value__ == (7501i32)) {
                    {
                        final __tmp__0 = 0i32;
                        final __tmp__1 = stdgo._internal.internal.cpu.Cpu__options._options[(0i32 : stdgo.GoInt)];
                        _i_7300_0 = __tmp__0;
                        _o_7295 = __tmp__1;
                    };
                    _gotoNext = 7502i32;
                } else if (__value__ == (7502i32)) {
                    if (_i_7300_0 < (stdgo._internal.internal.cpu.Cpu__options._options.length)) {
                        _gotoNext = 7314i32;
                    } else {
                        _gotoNext = 7504i32;
                    };
                } else if (__value__ == (7504i32)) {
                    _gotoNext = -1i32;
                };
            };
        };
    }
