package stdgo._internal.internal.cpu;
function _processOptions(_env:stdgo.GoString):Void {
        var _o_43618:stdgo._internal.internal.cpu.Cpu_T_option.T_option = ({} : stdgo._internal.internal.cpu.Cpu_T_option.T_option);
        var _i_43623_0:stdgo.GoInt = (0 : stdgo.GoInt);
        var _i_43288:stdgo.GoInt = (0 : stdgo.GoInt);
        var _enable_43048:Bool = false;
        var _key_42982:stdgo.GoString = ("" : stdgo.GoString);
        var _field_42674:stdgo.GoString = ("" : stdgo.GoString);
        var _fieldBreak = false;
        var _i_43406:stdgo.GoInt = (0 : stdgo.GoInt);
        var _value_42987:stdgo.GoString = ("" : stdgo.GoString);
        var _i_42688:stdgo.GoInt = (0 : stdgo.GoInt);
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    _gotoNext = 42648i32;
                } else if (__value__ == (42648i32)) {
                    var __blank__ = 0i32;
                    _fieldBreak = false;
                    _gotoNext = 42656i32;
                } else if (__value__ == (42656i32)) {
                    if (!_fieldBreak && (_env != stdgo.Go.str())) {
                        _gotoNext = 42670i32;
                    } else {
                        _gotoNext = 43611i32;
                    };
                } else if (__value__ == (42670i32)) {
                    _field_42674 = stdgo.Go.str()?.__copy__();
                    _i_42688 = stdgo._internal.internal.cpu.Cpu__indexByte._indexByte(_env?.__copy__(), (44 : stdgo.GoUInt8));
                    if ((_i_42688 < (0 : stdgo.GoInt) : Bool)) {
                        _gotoNext = 42724i32;
                    } else {
                        _gotoNext = 42759i32;
                    };
                } else if (__value__ == (42724i32)) {
                    {
                        final __tmp__0 = _env?.__copy__();
                        final __tmp__1 = stdgo.Go.str()?.__copy__();
                        _field_42674 = __tmp__0;
                        _env = __tmp__1;
                    };
                    _gotoNext = 42802i32;
                } else if (__value__ == (42759i32)) {
                    _gotoNext = 42759i32;
                    {
                        final __tmp__0 = (_env.__slice__(0, _i_42688) : stdgo.GoString)?.__copy__();
                        final __tmp__1 = (_env.__slice__((_i_42688 + (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        _field_42674 = __tmp__0;
                        _env = __tmp__1;
                    };
                    var __blank__ = 0i32;
                    _gotoNext = 42802i32;
                } else if (__value__ == (42802i32)) {
                    if ((((_field_42674.length) < (4 : stdgo.GoInt) : Bool) || ((_field_42674.__slice__(0, (4 : stdgo.GoInt)) : stdgo.GoString) != ("cpu." : stdgo.GoString)) : Bool)) {
                        _gotoNext = 42843i32;
                    } else {
                        _gotoNext = 42863i32;
                    };
                } else if (__value__ == (42843i32)) {
                    var __blank__ = 0i32;
                    _gotoNext = 42656i32;
                } else if (__value__ == (42863i32)) {
                    _i_42688 = stdgo._internal.internal.cpu.Cpu__indexByte._indexByte(_field_42674?.__copy__(), (61 : stdgo.GoUInt8));
                    if ((_i_42688 < (0 : stdgo.GoInt) : Bool)) {
                        _gotoNext = 42900i32;
                    } else {
                        _gotoNext = 42982i32;
                    };
                } else if (__value__ == (42900i32)) {
                    stdgo.Go.print(("GODEBUG: no value specified for \"" : stdgo.GoString), _field_42674, ("\"\n" : stdgo.GoString));
                    var __blank__ = 0i32;
                    _gotoNext = 42656i32;
                } else if (__value__ == (42982i32)) {
                    {
                        final __tmp__0 = (_field_42674.__slice__((4 : stdgo.GoInt), _i_42688) : stdgo.GoString)?.__copy__();
                        final __tmp__1 = (_field_42674.__slice__((_i_42688 + (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        _key_42982 = __tmp__0;
                        _value_42987 = __tmp__1;
                    };
                    _gotoNext = 43062i32;
                } else if (__value__ == (43062i32)) {
                    {
                        final __value__ = _value_42987;
                        if (__value__ == (("on" : stdgo.GoString))) {
                            _gotoNext = 43079i32;
                        } else if (__value__ == (("off" : stdgo.GoString))) {
                            _gotoNext = 43109i32;
                        } else {
                            _gotoNext = 43141i32;
                        };
                    };
                } else if (__value__ == (43079i32)) {
                    _enable_43048 = true;
                    _gotoNext = 43263i32;
                } else if (__value__ == (43109i32)) {
                    _enable_43048 = false;
                    _gotoNext = 43263i32;
                } else if (__value__ == (43141i32)) {
                    stdgo.Go.print(("GODEBUG: value \"" : stdgo.GoString), _value_42987, ("\" not supported for cpu option \"" : stdgo.GoString), _key_42982, ("\"\n" : stdgo.GoString));
                    _gotoNext = 42656i32;
                } else if (__value__ == (43263i32)) {
                    if (_key_42982 == (("all" : stdgo.GoString))) {
                        _gotoNext = 43279i32;
                    } else {
                        _gotoNext = 43402i32;
                    };
                } else if (__value__ == (43279i32)) {
                    if ((0i32 : stdgo.GoInt) < (stdgo._internal.internal.cpu.Cpu__options._options.length)) {
                        _gotoNext = 43374i32;
                    } else {
                        _gotoNext = 43380i32;
                    };
                } else if (__value__ == (43307i32)) {
                    stdgo._internal.internal.cpu.Cpu__options._options[(_i_43288 : stdgo.GoInt)].specified = true;
                    stdgo._internal.internal.cpu.Cpu__options._options[(_i_43288 : stdgo.GoInt)].enable = _enable_43048;
                    _i_43288++;
                    _gotoNext = 43375i32;
                } else if (__value__ == (43374i32)) {
                    _i_43288 = 0i32;
                    _gotoNext = 43375i32;
                } else if (__value__ == (43375i32)) {
                    if (_i_43288 < (stdgo._internal.internal.cpu.Cpu__options._options.length)) {
                        _gotoNext = 43307i32;
                    } else {
                        _gotoNext = 43380i32;
                    };
                } else if (__value__ == (43380i32)) {
                    _gotoNext = 42656i32;
                } else if (__value__ == (43402i32)) {
                    if ((0i32 : stdgo.GoInt) < (stdgo._internal.internal.cpu.Cpu__options._options.length)) {
                        _gotoNext = 43546i32;
                    } else {
                        _gotoNext = 43552i32;
                    };
                } else if (__value__ == (43406i32)) {
                    _i_43406++;
                    _gotoNext = 43547i32;
                } else if (__value__ == (43425i32)) {
                    if (stdgo._internal.internal.cpu.Cpu__options._options[(_i_43406 : stdgo.GoInt)].name == (_key_42982)) {
                        _gotoNext = 43456i32;
                    } else {
                        _gotoNext = 43406i32;
                    };
                } else if (__value__ == (43456i32)) {
                    stdgo._internal.internal.cpu.Cpu__options._options[(_i_43406 : stdgo.GoInt)].specified = true;
                    stdgo._internal.internal.cpu.Cpu__options._options[(_i_43406 : stdgo.GoInt)].enable = _enable_43048;
                    _gotoNext = 42656i32;
                } else if (__value__ == (43546i32)) {
                    _i_43406 = 0i32;
                    _gotoNext = 43547i32;
                } else if (__value__ == (43547i32)) {
                    if (_i_43406 < (stdgo._internal.internal.cpu.Cpu__options._options.length)) {
                        _gotoNext = 43425i32;
                    } else {
                        _gotoNext = 43552i32;
                    };
                } else if (__value__ == (43552i32)) {
                    stdgo.Go.print(("GODEBUG: unknown cpu feature \"" : stdgo.GoString), _key_42982, ("\"\n" : stdgo.GoString));
                    _gotoNext = 42656i32;
                } else if (__value__ == (43611i32)) {
                    if ((0i32 : stdgo.GoInt) < (stdgo._internal.internal.cpu.Cpu__options._options.length)) {
                        _gotoNext = 43824i32;
                    } else {
                        _gotoNext = 43827i32;
                    };
                } else if (__value__ == (43637i32)) {
                    _o_43618 = stdgo._internal.internal.cpu.Cpu__options._options[(_i_43623_0 : stdgo.GoInt)];
                    if (!_o_43618.specified) {
                        _gotoNext = 43657i32;
                    } else {
                        _gotoNext = 43678i32;
                    };
                } else if (__value__ == (43657i32)) {
                    _i_43623_0++;
                    _gotoNext = 43825i32;
                } else if (__value__ == (43678i32)) {
                    if ((_o_43618.enable && !_o_43618.feature.value : Bool)) {
                        _gotoNext = 43705i32;
                    } else {
                        _gotoNext = 43802i32;
                    };
                } else if (__value__ == (43705i32)) {
                    stdgo.Go.print(("GODEBUG: can not enable \"" : stdgo.GoString), _o_43618.name, ("\", missing CPU support\n" : stdgo.GoString));
                    _i_43623_0++;
                    _gotoNext = 43825i32;
                } else if (__value__ == (43802i32)) {
                    _o_43618.feature.value = _o_43618.enable;
                    _i_43623_0++;
                    _gotoNext = 43825i32;
                } else if (__value__ == (43824i32)) {
                    {
                        final __tmp__0 = 0i32;
                        final __tmp__1 = stdgo._internal.internal.cpu.Cpu__options._options[(0i32 : stdgo.GoInt)];
                        _i_43623_0 = __tmp__0;
                        _o_43618 = __tmp__1;
                    };
                    _gotoNext = 43825i32;
                } else if (__value__ == (43825i32)) {
                    if (_i_43623_0 < (stdgo._internal.internal.cpu.Cpu__options._options.length)) {
                        _gotoNext = 43637i32;
                    } else {
                        _gotoNext = 43827i32;
                    };
                } else if (__value__ == (43827i32)) {
                    _gotoNext = -1i32;
                };
            };
        };
    }
