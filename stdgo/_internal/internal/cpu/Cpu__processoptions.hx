package stdgo._internal.internal.cpu;
function _processOptions(_env:stdgo.GoString):Void {
        var _i_34946:stdgo.GoInt = (0 : stdgo.GoInt);
        var _field_34932:stdgo.GoString = ("" : stdgo.GoString);
        var _fieldBreak = false;
        var _o_35876:stdgo._internal.internal.cpu.Cpu_t_option.T_option = ({} : stdgo._internal.internal.cpu.Cpu_t_option.T_option);
        var _i_35664:stdgo.GoInt = (0 : stdgo.GoInt);
        var _i_35546:stdgo.GoInt = (0 : stdgo.GoInt);
        var _value_35245:stdgo.GoString = ("" : stdgo.GoString);
        var _i_35881_0:stdgo.GoInt = (0 : stdgo.GoInt);
        var _enable_35306:Bool = false;
        var _key_35240:stdgo.GoString = ("" : stdgo.GoString);
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    _gotoNext = 34906i32;
                } else if (__value__ == (34906i32)) {
                    var __blank__ = 0i32;
                    _fieldBreak = false;
                    _gotoNext = 34914i32;
                } else if (__value__ == (34914i32)) {
                    if (!_fieldBreak && (_env != (stdgo.Go.str() : stdgo.GoString))) {
                        _gotoNext = 34928i32;
                    } else {
                        _gotoNext = 35869i32;
                    };
                } else if (__value__ == (34928i32)) {
                    _field_34932 = (stdgo.Go.str() : stdgo.GoString)?.__copy__();
                    _i_34946 = stdgo._internal.internal.cpu.Cpu__indexbyte._indexByte(_env?.__copy__(), (44 : stdgo.GoUInt8));
                    if ((_i_34946 < (0 : stdgo.GoInt) : Bool)) {
                        _gotoNext = 34982i32;
                    } else {
                        _gotoNext = 35017i32;
                    };
                } else if (__value__ == (34982i32)) {
                    {
                        final __tmp__0 = _env?.__copy__();
                        final __tmp__1 = (stdgo.Go.str() : stdgo.GoString)?.__copy__();
                        _field_34932 = __tmp__0;
                        _env = __tmp__1;
                    };
                    _gotoNext = 35060i32;
                } else if (__value__ == (35017i32)) {
                    _gotoNext = 35017i32;
                    {
                        final __tmp__0 = (_env.__slice__(0, _i_34946) : stdgo.GoString)?.__copy__();
                        final __tmp__1 = (_env.__slice__((_i_34946 + (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        _field_34932 = __tmp__0;
                        _env = __tmp__1;
                    };
                    var __blank__ = 0i32;
                    _gotoNext = 35060i32;
                } else if (__value__ == (35060i32)) {
                    if ((((_field_34932.length) < (4 : stdgo.GoInt) : Bool) || ((_field_34932.__slice__(0, (4 : stdgo.GoInt)) : stdgo.GoString) != ("cpu." : stdgo.GoString)) : Bool)) {
                        _gotoNext = 35101i32;
                    } else {
                        _gotoNext = 35121i32;
                    };
                } else if (__value__ == (35101i32)) {
                    var __blank__ = 0i32;
                    _gotoNext = 34914i32;
                } else if (__value__ == (35121i32)) {
                    _i_34946 = stdgo._internal.internal.cpu.Cpu__indexbyte._indexByte(_field_34932?.__copy__(), (61 : stdgo.GoUInt8));
                    if ((_i_34946 < (0 : stdgo.GoInt) : Bool)) {
                        _gotoNext = 35158i32;
                    } else {
                        _gotoNext = 35240i32;
                    };
                } else if (__value__ == (35158i32)) {
                    stdgo.Go.print(("GODEBUG: no value specified for \"" : stdgo.GoString), _field_34932, ("\"\n" : stdgo.GoString));
                    var __blank__ = 0i32;
                    _gotoNext = 34914i32;
                } else if (__value__ == (35240i32)) {
                    {
                        final __tmp__0 = (_field_34932.__slice__((4 : stdgo.GoInt), _i_34946) : stdgo.GoString)?.__copy__();
                        final __tmp__1 = (_field_34932.__slice__((_i_34946 + (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        _key_35240 = __tmp__0;
                        _value_35245 = __tmp__1;
                    };
                    _gotoNext = 35320i32;
                } else if (__value__ == (35320i32)) {
                    {
                        final __value__ = _value_35245;
                        if (__value__ == (("on" : stdgo.GoString))) {
                            _gotoNext = 35337i32;
                        } else if (__value__ == (("off" : stdgo.GoString))) {
                            _gotoNext = 35367i32;
                        } else {
                            _gotoNext = 35399i32;
                        };
                    };
                } else if (__value__ == (35337i32)) {
                    _enable_35306 = true;
                    _gotoNext = 35521i32;
                } else if (__value__ == (35367i32)) {
                    _enable_35306 = false;
                    _gotoNext = 35521i32;
                } else if (__value__ == (35399i32)) {
                    stdgo.Go.print(("GODEBUG: value \"" : stdgo.GoString), _value_35245, ("\" not supported for cpu option \"" : stdgo.GoString), _key_35240, ("\"\n" : stdgo.GoString));
                    _gotoNext = 34914i32;
                } else if (__value__ == (35521i32)) {
                    if (_key_35240 == (("all" : stdgo.GoString))) {
                        _gotoNext = 35537i32;
                    } else {
                        _gotoNext = 35660i32;
                    };
                } else if (__value__ == (35537i32)) {
                    if ((0i32 : stdgo.GoInt) < (stdgo._internal.internal.cpu.Cpu__options._options.length)) {
                        _gotoNext = 35632i32;
                    } else {
                        _gotoNext = 35638i32;
                    };
                } else if (__value__ == (35565i32)) {
                    stdgo._internal.internal.cpu.Cpu__options._options[(_i_35546 : stdgo.GoInt)].specified = true;
                    stdgo._internal.internal.cpu.Cpu__options._options[(_i_35546 : stdgo.GoInt)].enable = _enable_35306;
                    _i_35546++;
                    _gotoNext = 35633i32;
                } else if (__value__ == (35632i32)) {
                    _i_35546 = 0i32;
                    _gotoNext = 35633i32;
                } else if (__value__ == (35633i32)) {
                    if (_i_35546 < (stdgo._internal.internal.cpu.Cpu__options._options.length)) {
                        _gotoNext = 35565i32;
                    } else {
                        _gotoNext = 35638i32;
                    };
                } else if (__value__ == (35638i32)) {
                    _gotoNext = 34914i32;
                } else if (__value__ == (35660i32)) {
                    if ((0i32 : stdgo.GoInt) < (stdgo._internal.internal.cpu.Cpu__options._options.length)) {
                        _gotoNext = 35804i32;
                    } else {
                        _gotoNext = 35810i32;
                    };
                } else if (__value__ == (35664i32)) {
                    _i_35664++;
                    _gotoNext = 35805i32;
                } else if (__value__ == (35683i32)) {
                    if (stdgo._internal.internal.cpu.Cpu__options._options[(_i_35664 : stdgo.GoInt)].name == (_key_35240)) {
                        _gotoNext = 35714i32;
                    } else {
                        _gotoNext = 35664i32;
                    };
                } else if (__value__ == (35714i32)) {
                    stdgo._internal.internal.cpu.Cpu__options._options[(_i_35664 : stdgo.GoInt)].specified = true;
                    stdgo._internal.internal.cpu.Cpu__options._options[(_i_35664 : stdgo.GoInt)].enable = _enable_35306;
                    _gotoNext = 34914i32;
                } else if (__value__ == (35804i32)) {
                    _i_35664 = 0i32;
                    _gotoNext = 35805i32;
                } else if (__value__ == (35805i32)) {
                    if (_i_35664 < (stdgo._internal.internal.cpu.Cpu__options._options.length)) {
                        _gotoNext = 35683i32;
                    } else {
                        _gotoNext = 35810i32;
                    };
                } else if (__value__ == (35810i32)) {
                    stdgo.Go.print(("GODEBUG: unknown cpu feature \"" : stdgo.GoString), _key_35240, ("\"\n" : stdgo.GoString));
                    _gotoNext = 34914i32;
                } else if (__value__ == (35869i32)) {
                    if ((0i32 : stdgo.GoInt) < (stdgo._internal.internal.cpu.Cpu__options._options.length)) {
                        _gotoNext = 36082i32;
                    } else {
                        _gotoNext = 36085i32;
                    };
                } else if (__value__ == (35895i32)) {
                    _o_35876 = stdgo._internal.internal.cpu.Cpu__options._options[(_i_35881_0 : stdgo.GoInt)];
                    if (!_o_35876.specified) {
                        _gotoNext = 35915i32;
                    } else {
                        _gotoNext = 35936i32;
                    };
                } else if (__value__ == (35915i32)) {
                    _i_35881_0++;
                    _gotoNext = 36083i32;
                } else if (__value__ == (35936i32)) {
                    if ((_o_35876.enable && !_o_35876.feature.value : Bool)) {
                        _gotoNext = 35963i32;
                    } else {
                        _gotoNext = 36060i32;
                    };
                } else if (__value__ == (35963i32)) {
                    stdgo.Go.print(("GODEBUG: can not enable \"" : stdgo.GoString), _o_35876.name, ("\", missing CPU support\n" : stdgo.GoString));
                    _i_35881_0++;
                    _gotoNext = 36083i32;
                } else if (__value__ == (36060i32)) {
                    _o_35876.feature.value = _o_35876.enable;
                    _i_35881_0++;
                    _gotoNext = 36083i32;
                } else if (__value__ == (36082i32)) {
                    {
                        final __tmp__0 = 0i32;
                        final __tmp__1 = stdgo._internal.internal.cpu.Cpu__options._options[(0i32 : stdgo.GoInt)];
                        _i_35881_0 = __tmp__0;
                        _o_35876 = __tmp__1;
                    };
                    _gotoNext = 36083i32;
                } else if (__value__ == (36083i32)) {
                    if (_i_35881_0 < (stdgo._internal.internal.cpu.Cpu__options._options.length)) {
                        _gotoNext = 35895i32;
                    } else {
                        _gotoNext = 36085i32;
                    };
                } else if (__value__ == (36085i32)) {
                    _gotoNext = -1i32;
                };
            };
        };
    }
