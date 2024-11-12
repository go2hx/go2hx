package stdgo._internal.internal.cpu;
function _processOptions(_env:stdgo.GoString):Void {
        var _o_35557:stdgo._internal.internal.cpu.Cpu_T_option.T_option = ({} : stdgo._internal.internal.cpu.Cpu_T_option.T_option);
        var _i_35345:stdgo.GoInt = (0 : stdgo.GoInt);
        var _key_34921:stdgo.GoString = ("" : stdgo.GoString);
        var _i_34627:stdgo.GoInt = (0 : stdgo.GoInt);
        var _fieldBreak = false;
        var _i_35562_0:stdgo.GoInt = (0 : stdgo.GoInt);
        var _i_35227:stdgo.GoInt = (0 : stdgo.GoInt);
        var _enable_34987:Bool = false;
        var _value_34926:stdgo.GoString = ("" : stdgo.GoString);
        var _field_34613:stdgo.GoString = ("" : stdgo.GoString);
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    _gotoNext = 34587i32;
                } else if (__value__ == (34587i32)) {
                    var __blank__ = 0i32;
                    _fieldBreak = false;
                    _gotoNext = 34595i32;
                } else if (__value__ == (34595i32)) {
                    if (!_fieldBreak && (_env != stdgo.Go.str())) {
                        _gotoNext = 34609i32;
                    } else {
                        _gotoNext = 35550i32;
                    };
                } else if (__value__ == (34609i32)) {
                    _field_34613 = stdgo.Go.str()?.__copy__();
                    _i_34627 = stdgo._internal.internal.cpu.Cpu__indexByte._indexByte(_env?.__copy__(), (44 : stdgo.GoUInt8));
                    if ((_i_34627 < (0 : stdgo.GoInt) : Bool)) {
                        _gotoNext = 34663i32;
                    } else {
                        _gotoNext = 34698i32;
                    };
                } else if (__value__ == (34663i32)) {
                    {
                        final __tmp__0 = _env?.__copy__();
                        final __tmp__1 = stdgo.Go.str()?.__copy__();
                        _field_34613 = __tmp__0;
                        _env = __tmp__1;
                    };
                    _gotoNext = 34741i32;
                } else if (__value__ == (34698i32)) {
                    _gotoNext = 34698i32;
                    {
                        final __tmp__0 = (_env.__slice__(0, _i_34627) : stdgo.GoString)?.__copy__();
                        final __tmp__1 = (_env.__slice__((_i_34627 + (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        _field_34613 = __tmp__0;
                        _env = __tmp__1;
                    };
                    var __blank__ = 0i32;
                    _gotoNext = 34741i32;
                } else if (__value__ == (34741i32)) {
                    if ((((_field_34613.length) < (4 : stdgo.GoInt) : Bool) || ((_field_34613.__slice__(0, (4 : stdgo.GoInt)) : stdgo.GoString) != ("cpu." : stdgo.GoString)) : Bool)) {
                        _gotoNext = 34782i32;
                    } else {
                        _gotoNext = 34802i32;
                    };
                } else if (__value__ == (34782i32)) {
                    var __blank__ = 0i32;
                    _gotoNext = 34595i32;
                } else if (__value__ == (34802i32)) {
                    _i_34627 = stdgo._internal.internal.cpu.Cpu__indexByte._indexByte(_field_34613?.__copy__(), (61 : stdgo.GoUInt8));
                    if ((_i_34627 < (0 : stdgo.GoInt) : Bool)) {
                        _gotoNext = 34839i32;
                    } else {
                        _gotoNext = 34921i32;
                    };
                } else if (__value__ == (34839i32)) {
                    stdgo.Go.print(("GODEBUG: no value specified for \"" : stdgo.GoString), _field_34613, ("\"\n" : stdgo.GoString));
                    var __blank__ = 0i32;
                    _gotoNext = 34595i32;
                } else if (__value__ == (34921i32)) {
                    {
                        final __tmp__0 = (_field_34613.__slice__((4 : stdgo.GoInt), _i_34627) : stdgo.GoString)?.__copy__();
                        final __tmp__1 = (_field_34613.__slice__((_i_34627 + (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        _key_34921 = __tmp__0;
                        _value_34926 = __tmp__1;
                    };
                    _gotoNext = 35001i32;
                } else if (__value__ == (35001i32)) {
                    {
                        final __value__ = _value_34926;
                        if (__value__ == (("on" : stdgo.GoString))) {
                            _gotoNext = 35018i32;
                        } else if (__value__ == (("off" : stdgo.GoString))) {
                            _gotoNext = 35048i32;
                        } else {
                            _gotoNext = 35080i32;
                        };
                    };
                } else if (__value__ == (35018i32)) {
                    _enable_34987 = true;
                    _gotoNext = 35202i32;
                } else if (__value__ == (35048i32)) {
                    _enable_34987 = false;
                    _gotoNext = 35202i32;
                } else if (__value__ == (35080i32)) {
                    stdgo.Go.print(("GODEBUG: value \"" : stdgo.GoString), _value_34926, ("\" not supported for cpu option \"" : stdgo.GoString), _key_34921, ("\"\n" : stdgo.GoString));
                    _gotoNext = 34595i32;
                } else if (__value__ == (35202i32)) {
                    if (_key_34921 == (("all" : stdgo.GoString))) {
                        _gotoNext = 35218i32;
                    } else {
                        _gotoNext = 35341i32;
                    };
                } else if (__value__ == (35218i32)) {
                    if ((0i32 : stdgo.GoInt) < (stdgo._internal.internal.cpu.Cpu__options._options.length)) {
                        _gotoNext = 35313i32;
                    } else {
                        _gotoNext = 35319i32;
                    };
                } else if (__value__ == (35246i32)) {
                    stdgo._internal.internal.cpu.Cpu__options._options[(_i_35227 : stdgo.GoInt)].specified = true;
                    stdgo._internal.internal.cpu.Cpu__options._options[(_i_35227 : stdgo.GoInt)].enable = _enable_34987;
                    _i_35227++;
                    _gotoNext = 35314i32;
                } else if (__value__ == (35313i32)) {
                    _i_35227 = 0i32;
                    _gotoNext = 35314i32;
                } else if (__value__ == (35314i32)) {
                    if (_i_35227 < (stdgo._internal.internal.cpu.Cpu__options._options.length)) {
                        _gotoNext = 35246i32;
                    } else {
                        _gotoNext = 35319i32;
                    };
                } else if (__value__ == (35319i32)) {
                    _gotoNext = 34595i32;
                } else if (__value__ == (35341i32)) {
                    if ((0i32 : stdgo.GoInt) < (stdgo._internal.internal.cpu.Cpu__options._options.length)) {
                        _gotoNext = 35485i32;
                    } else {
                        _gotoNext = 35491i32;
                    };
                } else if (__value__ == (35345i32)) {
                    _i_35345++;
                    _gotoNext = 35486i32;
                } else if (__value__ == (35364i32)) {
                    if (stdgo._internal.internal.cpu.Cpu__options._options[(_i_35345 : stdgo.GoInt)].name == (_key_34921)) {
                        _gotoNext = 35395i32;
                    } else {
                        _gotoNext = 35345i32;
                    };
                } else if (__value__ == (35395i32)) {
                    stdgo._internal.internal.cpu.Cpu__options._options[(_i_35345 : stdgo.GoInt)].specified = true;
                    stdgo._internal.internal.cpu.Cpu__options._options[(_i_35345 : stdgo.GoInt)].enable = _enable_34987;
                    _gotoNext = 34595i32;
                } else if (__value__ == (35485i32)) {
                    _i_35345 = 0i32;
                    _gotoNext = 35486i32;
                } else if (__value__ == (35486i32)) {
                    if (_i_35345 < (stdgo._internal.internal.cpu.Cpu__options._options.length)) {
                        _gotoNext = 35364i32;
                    } else {
                        _gotoNext = 35491i32;
                    };
                } else if (__value__ == (35491i32)) {
                    stdgo.Go.print(("GODEBUG: unknown cpu feature \"" : stdgo.GoString), _key_34921, ("\"\n" : stdgo.GoString));
                    _gotoNext = 34595i32;
                } else if (__value__ == (35550i32)) {
                    if ((0i32 : stdgo.GoInt) < (stdgo._internal.internal.cpu.Cpu__options._options.length)) {
                        _gotoNext = 35763i32;
                    } else {
                        _gotoNext = 35766i32;
                    };
                } else if (__value__ == (35576i32)) {
                    _o_35557 = stdgo._internal.internal.cpu.Cpu__options._options[(_i_35562_0 : stdgo.GoInt)];
                    if (!_o_35557.specified) {
                        _gotoNext = 35596i32;
                    } else {
                        _gotoNext = 35617i32;
                    };
                } else if (__value__ == (35596i32)) {
                    _i_35562_0++;
                    _gotoNext = 35764i32;
                } else if (__value__ == (35617i32)) {
                    if ((_o_35557.enable && !_o_35557.feature.value : Bool)) {
                        _gotoNext = 35644i32;
                    } else {
                        _gotoNext = 35741i32;
                    };
                } else if (__value__ == (35644i32)) {
                    stdgo.Go.print(("GODEBUG: can not enable \"" : stdgo.GoString), _o_35557.name, ("\", missing CPU support\n" : stdgo.GoString));
                    _i_35562_0++;
                    _gotoNext = 35764i32;
                } else if (__value__ == (35741i32)) {
                    _o_35557.feature.value = _o_35557.enable;
                    _i_35562_0++;
                    _gotoNext = 35764i32;
                } else if (__value__ == (35763i32)) {
                    {
                        final __tmp__0 = 0i32;
                        final __tmp__1 = stdgo._internal.internal.cpu.Cpu__options._options[(0i32 : stdgo.GoInt)];
                        _i_35562_0 = __tmp__0;
                        _o_35557 = __tmp__1;
                    };
                    _gotoNext = 35764i32;
                } else if (__value__ == (35764i32)) {
                    if (_i_35562_0 < (stdgo._internal.internal.cpu.Cpu__options._options.length)) {
                        _gotoNext = 35576i32;
                    } else {
                        _gotoNext = 35766i32;
                    };
                } else if (__value__ == (35766i32)) {
                    _gotoNext = -1i32;
                };
            };
        };
    }
