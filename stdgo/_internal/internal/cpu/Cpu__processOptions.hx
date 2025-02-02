package stdgo._internal.internal.cpu;
function _processOptions(_env:stdgo.GoString):Void {
        var _o_7923:stdgo._internal.internal.cpu.Cpu_T_option.T_option = ({} : stdgo._internal.internal.cpu.Cpu_T_option.T_option);
        var _i_7928_0:stdgo.GoInt = (0 : stdgo.GoInt);
        var _i_7593:stdgo.GoInt = (0 : stdgo.GoInt);
        var _enable_7353:Bool = false;
        var _key_7287:stdgo.GoString = ("" : stdgo.GoString);
        var _i_6993:stdgo.GoInt = (0 : stdgo.GoInt);
        var _i_7711:stdgo.GoInt = (0 : stdgo.GoInt);
        var _value_7292:stdgo.GoString = ("" : stdgo.GoString);
        var _field_6979:stdgo.GoString = ("" : stdgo.GoString);
        var _fieldBreak = false;
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    _gotoNext = 6953i32;
                } else if (__value__ == (6953i32)) {
                    var __blank__ = 0i32;
                    _fieldBreak = false;
                    _gotoNext = 6961i32;
                } else if (__value__ == (6961i32)) {
                    if (!_fieldBreak && (_env != stdgo.Go.str())) {
                        _gotoNext = 6975i32;
                    } else {
                        _gotoNext = 7916i32;
                    };
                } else if (__value__ == (6975i32)) {
                    _field_6979 = stdgo.Go.str()?.__copy__();
                    _i_6993 = stdgo._internal.internal.cpu.Cpu__indexByte._indexByte(_env?.__copy__(), (44 : stdgo.GoUInt8));
                    if ((_i_6993 < (0 : stdgo.GoInt) : Bool)) {
                        _gotoNext = 7029i32;
                    } else {
                        _gotoNext = 7064i32;
                    };
                } else if (__value__ == (7029i32)) {
                    {
                        final __tmp__0 = _env?.__copy__();
                        final __tmp__1 = stdgo.Go.str()?.__copy__();
                        _field_6979 = __tmp__0;
                        _env = __tmp__1;
                    };
                    _gotoNext = 7107i32;
                } else if (__value__ == (7064i32)) {
                    _gotoNext = 7064i32;
                    {
                        final __tmp__0 = (_env.__slice__(0, _i_6993) : stdgo.GoString)?.__copy__();
                        final __tmp__1 = (_env.__slice__((_i_6993 + (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        _field_6979 = __tmp__0;
                        _env = __tmp__1;
                    };
                    var __blank__ = 0i32;
                    _gotoNext = 7107i32;
                } else if (__value__ == (7107i32)) {
                    if ((((_field_6979.length) < (4 : stdgo.GoInt) : Bool) || ((_field_6979.__slice__(0, (4 : stdgo.GoInt)) : stdgo.GoString) != ("cpu." : stdgo.GoString)) : Bool)) {
                        _gotoNext = 7148i32;
                    } else {
                        _gotoNext = 7168i32;
                    };
                } else if (__value__ == (7148i32)) {
                    var __blank__ = 0i32;
                    _gotoNext = 6961i32;
                } else if (__value__ == (7168i32)) {
                    _i_6993 = stdgo._internal.internal.cpu.Cpu__indexByte._indexByte(_field_6979?.__copy__(), (61 : stdgo.GoUInt8));
                    if ((_i_6993 < (0 : stdgo.GoInt) : Bool)) {
                        _gotoNext = 7205i32;
                    } else {
                        _gotoNext = 7287i32;
                    };
                } else if (__value__ == (7205i32)) {
                    stdgo.Go.print(("GODEBUG: no value specified for \"" : stdgo.GoString), _field_6979, ("\"\n" : stdgo.GoString));
                    var __blank__ = 0i32;
                    _gotoNext = 6961i32;
                } else if (__value__ == (7287i32)) {
                    {
                        final __tmp__0 = (_field_6979.__slice__((4 : stdgo.GoInt), _i_6993) : stdgo.GoString)?.__copy__();
                        final __tmp__1 = (_field_6979.__slice__((_i_6993 + (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        _key_7287 = __tmp__0;
                        _value_7292 = __tmp__1;
                    };
                    _gotoNext = 7367i32;
                } else if (__value__ == (7367i32)) {
                    {
                        final __value__ = _value_7292;
                        if (__value__ == (("on" : stdgo.GoString))) {
                            _gotoNext = 7384i32;
                        } else if (__value__ == (("off" : stdgo.GoString))) {
                            _gotoNext = 7414i32;
                        } else {
                            _gotoNext = 7446i32;
                        };
                    };
                } else if (__value__ == (7384i32)) {
                    _enable_7353 = true;
                    _gotoNext = 7568i32;
                } else if (__value__ == (7414i32)) {
                    _enable_7353 = false;
                    _gotoNext = 7568i32;
                } else if (__value__ == (7446i32)) {
                    stdgo.Go.print(("GODEBUG: value \"" : stdgo.GoString), _value_7292, ("\" not supported for cpu option \"" : stdgo.GoString), _key_7287, ("\"\n" : stdgo.GoString));
                    _gotoNext = 6961i32;
                } else if (__value__ == (7568i32)) {
                    if (_key_7287 == (("all" : stdgo.GoString))) {
                        _gotoNext = 7584i32;
                    } else {
                        _gotoNext = 7707i32;
                    };
                } else if (__value__ == (7584i32)) {
                    if ((0i32 : stdgo.GoInt) < (stdgo._internal.internal.cpu.Cpu__options._options.length)) {
                        _gotoNext = 7679i32;
                    } else {
                        _gotoNext = 7685i32;
                    };
                } else if (__value__ == (7612i32)) {
                    stdgo._internal.internal.cpu.Cpu__options._options[(_i_7593 : stdgo.GoInt)].specified = true;
                    stdgo._internal.internal.cpu.Cpu__options._options[(_i_7593 : stdgo.GoInt)].enable = _enable_7353;
                    _i_7593++;
                    _gotoNext = 7680i32;
                } else if (__value__ == (7679i32)) {
                    _i_7593 = 0i32;
                    _gotoNext = 7680i32;
                } else if (__value__ == (7680i32)) {
                    if (_i_7593 < (stdgo._internal.internal.cpu.Cpu__options._options.length)) {
                        _gotoNext = 7612i32;
                    } else {
                        _gotoNext = 7685i32;
                    };
                } else if (__value__ == (7685i32)) {
                    _gotoNext = 6961i32;
                } else if (__value__ == (7707i32)) {
                    if ((0i32 : stdgo.GoInt) < (stdgo._internal.internal.cpu.Cpu__options._options.length)) {
                        _gotoNext = 7851i32;
                    } else {
                        _gotoNext = 7857i32;
                    };
                } else if (__value__ == (7711i32)) {
                    _i_7711++;
                    _gotoNext = 7852i32;
                } else if (__value__ == (7730i32)) {
                    if (stdgo._internal.internal.cpu.Cpu__options._options[(_i_7711 : stdgo.GoInt)].name == (_key_7287)) {
                        _gotoNext = 7761i32;
                    } else {
                        _gotoNext = 7711i32;
                    };
                } else if (__value__ == (7761i32)) {
                    stdgo._internal.internal.cpu.Cpu__options._options[(_i_7711 : stdgo.GoInt)].specified = true;
                    stdgo._internal.internal.cpu.Cpu__options._options[(_i_7711 : stdgo.GoInt)].enable = _enable_7353;
                    _gotoNext = 6961i32;
                } else if (__value__ == (7851i32)) {
                    _i_7711 = 0i32;
                    _gotoNext = 7852i32;
                } else if (__value__ == (7852i32)) {
                    if (_i_7711 < (stdgo._internal.internal.cpu.Cpu__options._options.length)) {
                        _gotoNext = 7730i32;
                    } else {
                        _gotoNext = 7857i32;
                    };
                } else if (__value__ == (7857i32)) {
                    stdgo.Go.print(("GODEBUG: unknown cpu feature \"" : stdgo.GoString), _key_7287, ("\"\n" : stdgo.GoString));
                    _gotoNext = 6961i32;
                } else if (__value__ == (7916i32)) {
                    if ((0i32 : stdgo.GoInt) < (stdgo._internal.internal.cpu.Cpu__options._options.length)) {
                        _gotoNext = 8129i32;
                    } else {
                        _gotoNext = 8132i32;
                    };
                } else if (__value__ == (7942i32)) {
                    _o_7923 = stdgo._internal.internal.cpu.Cpu__options._options[(_i_7928_0 : stdgo.GoInt)];
                    if (!_o_7923.specified) {
                        _gotoNext = 7962i32;
                    } else {
                        _gotoNext = 7983i32;
                    };
                } else if (__value__ == (7962i32)) {
                    _i_7928_0++;
                    _gotoNext = 8130i32;
                } else if (__value__ == (7983i32)) {
                    if ((_o_7923.enable && !_o_7923.feature.value : Bool)) {
                        _gotoNext = 8010i32;
                    } else {
                        _gotoNext = 8107i32;
                    };
                } else if (__value__ == (8010i32)) {
                    stdgo.Go.print(("GODEBUG: can not enable \"" : stdgo.GoString), _o_7923.name, ("\", missing CPU support\n" : stdgo.GoString));
                    _i_7928_0++;
                    _gotoNext = 8130i32;
                } else if (__value__ == (8107i32)) {
                    _o_7923.feature.value = _o_7923.enable;
                    _i_7928_0++;
                    _gotoNext = 8130i32;
                } else if (__value__ == (8129i32)) {
                    {
                        final __tmp__0 = 0i32;
                        final __tmp__1 = stdgo._internal.internal.cpu.Cpu__options._options[(0i32 : stdgo.GoInt)];
                        _i_7928_0 = __tmp__0;
                        _o_7923 = __tmp__1;
                    };
                    _gotoNext = 8130i32;
                } else if (__value__ == (8130i32)) {
                    if (_i_7928_0 < (stdgo._internal.internal.cpu.Cpu__options._options.length)) {
                        _gotoNext = 7942i32;
                    } else {
                        _gotoNext = 8132i32;
                    };
                } else if (__value__ == (8132i32)) {
                    _gotoNext = -1i32;
                };
            };
        };
    }
