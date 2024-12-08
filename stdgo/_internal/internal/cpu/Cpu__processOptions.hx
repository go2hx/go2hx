package stdgo._internal.internal.cpu;
function _processOptions(_env:stdgo.GoString):Void {
        var _o_12715:stdgo._internal.internal.cpu.Cpu_T_option.T_option = ({} : stdgo._internal.internal.cpu.Cpu_T_option.T_option);
        var _i_12503:stdgo.GoInt = (0 : stdgo.GoInt);
        var _field_11771:stdgo.GoString = ("" : stdgo.GoString);
        var _fieldBreak = false;
        var _i_12720_0:stdgo.GoInt = (0 : stdgo.GoInt);
        var _i_12385:stdgo.GoInt = (0 : stdgo.GoInt);
        var _enable_12145:Bool = false;
        var _value_12084:stdgo.GoString = ("" : stdgo.GoString);
        var _key_12079:stdgo.GoString = ("" : stdgo.GoString);
        var _i_11785:stdgo.GoInt = (0 : stdgo.GoInt);
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    _gotoNext = 11745i32;
                } else if (__value__ == (11745i32)) {
                    var __blank__ = 0i32;
                    _fieldBreak = false;
                    _gotoNext = 11753i32;
                } else if (__value__ == (11753i32)) {
                    if (!_fieldBreak && (_env != stdgo.Go.str())) {
                        _gotoNext = 11767i32;
                    } else {
                        _gotoNext = 12708i32;
                    };
                } else if (__value__ == (11767i32)) {
                    _field_11771 = stdgo.Go.str()?.__copy__();
                    _i_11785 = stdgo._internal.internal.cpu.Cpu__indexByte._indexByte(_env?.__copy__(), (44 : stdgo.GoUInt8));
                    if ((_i_11785 < (0 : stdgo.GoInt) : Bool)) {
                        _gotoNext = 11821i32;
                    } else {
                        _gotoNext = 11856i32;
                    };
                } else if (__value__ == (11821i32)) {
                    {
                        final __tmp__0 = _env?.__copy__();
                        final __tmp__1 = stdgo.Go.str()?.__copy__();
                        _field_11771 = __tmp__0;
                        _env = __tmp__1;
                    };
                    _gotoNext = 11899i32;
                } else if (__value__ == (11856i32)) {
                    _gotoNext = 11856i32;
                    {
                        final __tmp__0 = (_env.__slice__(0, _i_11785) : stdgo.GoString)?.__copy__();
                        final __tmp__1 = (_env.__slice__((_i_11785 + (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        _field_11771 = __tmp__0;
                        _env = __tmp__1;
                    };
                    var __blank__ = 0i32;
                    _gotoNext = 11899i32;
                } else if (__value__ == (11899i32)) {
                    if ((((_field_11771.length) < (4 : stdgo.GoInt) : Bool) || ((_field_11771.__slice__(0, (4 : stdgo.GoInt)) : stdgo.GoString) != ("cpu." : stdgo.GoString)) : Bool)) {
                        _gotoNext = 11940i32;
                    } else {
                        _gotoNext = 11960i32;
                    };
                } else if (__value__ == (11940i32)) {
                    var __blank__ = 0i32;
                    _gotoNext = 11753i32;
                } else if (__value__ == (11960i32)) {
                    _i_11785 = stdgo._internal.internal.cpu.Cpu__indexByte._indexByte(_field_11771?.__copy__(), (61 : stdgo.GoUInt8));
                    if ((_i_11785 < (0 : stdgo.GoInt) : Bool)) {
                        _gotoNext = 11997i32;
                    } else {
                        _gotoNext = 12079i32;
                    };
                } else if (__value__ == (11997i32)) {
                    stdgo.Go.print(("GODEBUG: no value specified for \"" : stdgo.GoString), _field_11771, ("\"\n" : stdgo.GoString));
                    var __blank__ = 0i32;
                    _gotoNext = 11753i32;
                } else if (__value__ == (12079i32)) {
                    {
                        final __tmp__0 = (_field_11771.__slice__((4 : stdgo.GoInt), _i_11785) : stdgo.GoString)?.__copy__();
                        final __tmp__1 = (_field_11771.__slice__((_i_11785 + (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        _key_12079 = __tmp__0;
                        _value_12084 = __tmp__1;
                    };
                    _gotoNext = 12159i32;
                } else if (__value__ == (12159i32)) {
                    {
                        final __value__ = _value_12084;
                        if (__value__ == (("on" : stdgo.GoString))) {
                            _gotoNext = 12176i32;
                        } else if (__value__ == (("off" : stdgo.GoString))) {
                            _gotoNext = 12206i32;
                        } else {
                            _gotoNext = 12238i32;
                        };
                    };
                } else if (__value__ == (12176i32)) {
                    _enable_12145 = true;
                    _gotoNext = 12360i32;
                } else if (__value__ == (12206i32)) {
                    _enable_12145 = false;
                    _gotoNext = 12360i32;
                } else if (__value__ == (12238i32)) {
                    stdgo.Go.print(("GODEBUG: value \"" : stdgo.GoString), _value_12084, ("\" not supported for cpu option \"" : stdgo.GoString), _key_12079, ("\"\n" : stdgo.GoString));
                    _gotoNext = 11753i32;
                } else if (__value__ == (12360i32)) {
                    if (_key_12079 == (("all" : stdgo.GoString))) {
                        _gotoNext = 12376i32;
                    } else {
                        _gotoNext = 12499i32;
                    };
                } else if (__value__ == (12376i32)) {
                    if ((0i32 : stdgo.GoInt) < (stdgo._internal.internal.cpu.Cpu__options._options.length)) {
                        _gotoNext = 12471i32;
                    } else {
                        _gotoNext = 12477i32;
                    };
                } else if (__value__ == (12404i32)) {
                    stdgo._internal.internal.cpu.Cpu__options._options[(_i_12385 : stdgo.GoInt)].specified = true;
                    stdgo._internal.internal.cpu.Cpu__options._options[(_i_12385 : stdgo.GoInt)].enable = _enable_12145;
                    _i_12385++;
                    _gotoNext = 12472i32;
                } else if (__value__ == (12471i32)) {
                    _i_12385 = 0i32;
                    _gotoNext = 12472i32;
                } else if (__value__ == (12472i32)) {
                    if (_i_12385 < (stdgo._internal.internal.cpu.Cpu__options._options.length)) {
                        _gotoNext = 12404i32;
                    } else {
                        _gotoNext = 12477i32;
                    };
                } else if (__value__ == (12477i32)) {
                    _gotoNext = 11753i32;
                } else if (__value__ == (12499i32)) {
                    if ((0i32 : stdgo.GoInt) < (stdgo._internal.internal.cpu.Cpu__options._options.length)) {
                        _gotoNext = 12643i32;
                    } else {
                        _gotoNext = 12649i32;
                    };
                } else if (__value__ == (12503i32)) {
                    _i_12503++;
                    _gotoNext = 12644i32;
                } else if (__value__ == (12522i32)) {
                    if (stdgo._internal.internal.cpu.Cpu__options._options[(_i_12503 : stdgo.GoInt)].name == (_key_12079)) {
                        _gotoNext = 12553i32;
                    } else {
                        _gotoNext = 12503i32;
                    };
                } else if (__value__ == (12553i32)) {
                    stdgo._internal.internal.cpu.Cpu__options._options[(_i_12503 : stdgo.GoInt)].specified = true;
                    stdgo._internal.internal.cpu.Cpu__options._options[(_i_12503 : stdgo.GoInt)].enable = _enable_12145;
                    _gotoNext = 11753i32;
                } else if (__value__ == (12643i32)) {
                    _i_12503 = 0i32;
                    _gotoNext = 12644i32;
                } else if (__value__ == (12644i32)) {
                    if (_i_12503 < (stdgo._internal.internal.cpu.Cpu__options._options.length)) {
                        _gotoNext = 12522i32;
                    } else {
                        _gotoNext = 12649i32;
                    };
                } else if (__value__ == (12649i32)) {
                    stdgo.Go.print(("GODEBUG: unknown cpu feature \"" : stdgo.GoString), _key_12079, ("\"\n" : stdgo.GoString));
                    _gotoNext = 11753i32;
                } else if (__value__ == (12708i32)) {
                    if ((0i32 : stdgo.GoInt) < (stdgo._internal.internal.cpu.Cpu__options._options.length)) {
                        _gotoNext = 12921i32;
                    } else {
                        _gotoNext = 12924i32;
                    };
                } else if (__value__ == (12734i32)) {
                    _o_12715 = stdgo._internal.internal.cpu.Cpu__options._options[(_i_12720_0 : stdgo.GoInt)];
                    if (!_o_12715.specified) {
                        _gotoNext = 12754i32;
                    } else {
                        _gotoNext = 12775i32;
                    };
                } else if (__value__ == (12754i32)) {
                    _i_12720_0++;
                    _gotoNext = 12922i32;
                } else if (__value__ == (12775i32)) {
                    if ((_o_12715.enable && !_o_12715.feature.value : Bool)) {
                        _gotoNext = 12802i32;
                    } else {
                        _gotoNext = 12899i32;
                    };
                } else if (__value__ == (12802i32)) {
                    stdgo.Go.print(("GODEBUG: can not enable \"" : stdgo.GoString), _o_12715.name, ("\", missing CPU support\n" : stdgo.GoString));
                    _i_12720_0++;
                    _gotoNext = 12922i32;
                } else if (__value__ == (12899i32)) {
                    _o_12715.feature.value = _o_12715.enable;
                    _i_12720_0++;
                    _gotoNext = 12922i32;
                } else if (__value__ == (12921i32)) {
                    {
                        final __tmp__0 = 0i32;
                        final __tmp__1 = stdgo._internal.internal.cpu.Cpu__options._options[(0i32 : stdgo.GoInt)];
                        _i_12720_0 = __tmp__0;
                        _o_12715 = __tmp__1;
                    };
                    _gotoNext = 12922i32;
                } else if (__value__ == (12922i32)) {
                    if (_i_12720_0 < (stdgo._internal.internal.cpu.Cpu__options._options.length)) {
                        _gotoNext = 12734i32;
                    } else {
                        _gotoNext = 12924i32;
                    };
                } else if (__value__ == (12924i32)) {
                    _gotoNext = -1i32;
                };
            };
        };
    }
