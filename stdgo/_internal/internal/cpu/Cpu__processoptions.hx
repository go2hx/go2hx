package stdgo._internal.internal.cpu;
function _processOptions(_env:stdgo.GoString):Void {
        var _enable_4:Bool = false;
        var _value_3:stdgo.GoString = ("" : stdgo.GoString);
        var _i_1:stdgo.GoInt = (0 : stdgo.GoInt);
        var _field_0:stdgo.GoString = ("" : stdgo.GoString);
        var _fieldBreak = false;
        var _o_8:stdgo._internal.internal.cpu.Cpu_t_option.T_option = ({} : stdgo._internal.internal.cpu.Cpu_t_option.T_option);
        var _i_19727_7:stdgo.GoInt = (0 : stdgo.GoInt);
        var _i_6:stdgo.GoInt = (0 : stdgo.GoInt);
        var _i_5:stdgo.GoInt = (0 : stdgo.GoInt);
        var _key_2:stdgo.GoString = ("" : stdgo.GoString);
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    _gotoNext = 18752i32;
                } else if (__value__ == (18752i32)) {
                    var __blank__ = 0i32;
                    _fieldBreak = false;
                    _gotoNext = 18760i32;
                } else if (__value__ == (18760i32)) {
                    if (!_fieldBreak && (_env != (stdgo.Go.str() : stdgo.GoString))) {
                        _gotoNext = 18774i32;
                    } else {
                        _gotoNext = 19715i32;
                    };
                } else if (__value__ == (18774i32)) {
                    _field_0 = (stdgo.Go.str() : stdgo.GoString)?.__copy__();
                    _i_1 = stdgo._internal.internal.cpu.Cpu__indexbyte._indexByte(_env?.__copy__(), (44 : stdgo.GoUInt8));
                    if ((_i_1 < (0 : stdgo.GoInt) : Bool)) {
                        _gotoNext = 18828i32;
                    } else {
                        _gotoNext = 18863i32;
                    };
                } else if (__value__ == (18828i32)) {
                    {
                        final __tmp__0 = _env?.__copy__();
                        final __tmp__1 = (stdgo.Go.str() : stdgo.GoString)?.__copy__();
                        _field_0 = __tmp__0;
                        _env = __tmp__1;
                    };
                    _gotoNext = 18906i32;
                } else if (__value__ == (18863i32)) {
                    _gotoNext = 18863i32;
                    {
                        final __tmp__0 = (_env.__slice__(0, _i_1) : stdgo.GoString)?.__copy__();
                        final __tmp__1 = (_env.__slice__((_i_1 + (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        _field_0 = __tmp__0;
                        _env = __tmp__1;
                    };
                    var __blank__ = 0i32;
                    _gotoNext = 18906i32;
                } else if (__value__ == (18906i32)) {
                    if ((((_field_0.length) < (4 : stdgo.GoInt) : Bool) || ((_field_0.__slice__(0, (4 : stdgo.GoInt)) : stdgo.GoString) != ("cpu." : stdgo.GoString)) : Bool)) {
                        _gotoNext = 18947i32;
                    } else {
                        _gotoNext = 18967i32;
                    };
                } else if (__value__ == (18947i32)) {
                    var __blank__ = 0i32;
                    _gotoNext = 18760i32;
                } else if (__value__ == (18967i32)) {
                    _i_1 = stdgo._internal.internal.cpu.Cpu__indexbyte._indexByte(_field_0?.__copy__(), (61 : stdgo.GoUInt8));
                    if ((_i_1 < (0 : stdgo.GoInt) : Bool)) {
                        _gotoNext = 19004i32;
                    } else {
                        _gotoNext = 19086i32;
                    };
                } else if (__value__ == (19004i32)) {
                    stdgo.Go.print(("GODEBUG: no value specified for \"" : stdgo.GoString), _field_0, ("\"\n" : stdgo.GoString));
                    var __blank__ = 0i32;
                    _gotoNext = 18760i32;
                } else if (__value__ == (19086i32)) {
                    {
                        final __tmp__0 = (_field_0.__slice__((4 : stdgo.GoInt), _i_1) : stdgo.GoString)?.__copy__();
                        final __tmp__1 = (_field_0.__slice__((_i_1 + (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        _key_2 = __tmp__0;
                        _value_3 = __tmp__1;
                    };
                    _gotoNext = 19166i32;
                } else if (__value__ == (19166i32)) {
                    {
                        final __value__ = _value_3;
                        if (__value__ == (("on" : stdgo.GoString))) {
                            _gotoNext = 19183i32;
                        } else if (__value__ == (("off" : stdgo.GoString))) {
                            _gotoNext = 19213i32;
                        } else {
                            _gotoNext = 19245i32;
                        };
                    };
                } else if (__value__ == (19183i32)) {
                    _enable_4 = true;
                    _gotoNext = 19367i32;
                } else if (__value__ == (19213i32)) {
                    _enable_4 = false;
                    _gotoNext = 19367i32;
                } else if (__value__ == (19245i32)) {
                    stdgo.Go.print(("GODEBUG: value \"" : stdgo.GoString), _value_3, ("\" not supported for cpu option \"" : stdgo.GoString), _key_2, ("\"\n" : stdgo.GoString));
                    _gotoNext = 18760i32;
                } else if (__value__ == (19367i32)) {
                    if (_key_2 == (("all" : stdgo.GoString))) {
                        _gotoNext = 19383i32;
                    } else {
                        _gotoNext = 19506i32;
                    };
                } else if (__value__ == (19383i32)) {
                    if ((0i32 : stdgo.GoInt) < (stdgo._internal.internal.cpu.Cpu__options._options.length)) {
                        _gotoNext = 19478i32;
                    } else {
                        _gotoNext = 19484i32;
                    };
                } else if (__value__ == (19411i32)) {
                    stdgo._internal.internal.cpu.Cpu__options._options[(_i_5 : stdgo.GoInt)].specified = true;
                    stdgo._internal.internal.cpu.Cpu__options._options[(_i_5 : stdgo.GoInt)].enable = _enable_4;
                    _i_5++;
                    _gotoNext = 19479i32;
                } else if (__value__ == (19478i32)) {
                    _i_5 = 0i32;
                    _gotoNext = 19479i32;
                } else if (__value__ == (19479i32)) {
                    if (_i_5 < (stdgo._internal.internal.cpu.Cpu__options._options.length)) {
                        _gotoNext = 19411i32;
                    } else {
                        _gotoNext = 19484i32;
                    };
                } else if (__value__ == (19484i32)) {
                    _gotoNext = 18760i32;
                } else if (__value__ == (19506i32)) {
                    if ((0i32 : stdgo.GoInt) < (stdgo._internal.internal.cpu.Cpu__options._options.length)) {
                        _gotoNext = 19650i32;
                    } else {
                        _gotoNext = 19656i32;
                    };
                } else if (__value__ == (19510i32)) {
                    _i_6++;
                    _gotoNext = 19651i32;
                } else if (__value__ == (19529i32)) {
                    if (stdgo._internal.internal.cpu.Cpu__options._options[(_i_6 : stdgo.GoInt)].name == (_key_2)) {
                        _gotoNext = 19560i32;
                    } else {
                        _gotoNext = 19510i32;
                    };
                } else if (__value__ == (19560i32)) {
                    stdgo._internal.internal.cpu.Cpu__options._options[(_i_6 : stdgo.GoInt)].specified = true;
                    stdgo._internal.internal.cpu.Cpu__options._options[(_i_6 : stdgo.GoInt)].enable = _enable_4;
                    _gotoNext = 18760i32;
                } else if (__value__ == (19650i32)) {
                    _i_6 = 0i32;
                    _gotoNext = 19651i32;
                } else if (__value__ == (19651i32)) {
                    if (_i_6 < (stdgo._internal.internal.cpu.Cpu__options._options.length)) {
                        _gotoNext = 19529i32;
                    } else {
                        _gotoNext = 19656i32;
                    };
                } else if (__value__ == (19656i32)) {
                    stdgo.Go.print(("GODEBUG: unknown cpu feature \"" : stdgo.GoString), _key_2, ("\"\n" : stdgo.GoString));
                    _gotoNext = 18760i32;
                } else if (__value__ == (19715i32)) {
                    if ((0i32 : stdgo.GoInt) < (stdgo._internal.internal.cpu.Cpu__options._options.length)) {
                        _gotoNext = 19928i32;
                    } else {
                        _gotoNext = 19931i32;
                    };
                } else if (__value__ == (19741i32)) {
                    _o_8 = stdgo._internal.internal.cpu.Cpu__options._options[(_i_19727_7 : stdgo.GoInt)];
                    if (!_o_8.specified) {
                        _gotoNext = 19761i32;
                    } else {
                        _gotoNext = 19782i32;
                    };
                } else if (__value__ == (19761i32)) {
                    _i_19727_7++;
                    _gotoNext = 19929i32;
                } else if (__value__ == (19782i32)) {
                    if ((_o_8.enable && !_o_8.feature.value : Bool)) {
                        _gotoNext = 19809i32;
                    } else {
                        _gotoNext = 19906i32;
                    };
                } else if (__value__ == (19809i32)) {
                    stdgo.Go.print(("GODEBUG: can not enable \"" : stdgo.GoString), _o_8.name, ("\", missing CPU support\n" : stdgo.GoString));
                    _i_19727_7++;
                    _gotoNext = 19929i32;
                } else if (__value__ == (19906i32)) {
                    _o_8.feature.value = _o_8.enable;
                    _i_19727_7++;
                    _gotoNext = 19929i32;
                } else if (__value__ == (19928i32)) {
                    {
                        final __tmp__0 = 0i32;
                        final __tmp__1 = stdgo._internal.internal.cpu.Cpu__options._options[(0i32 : stdgo.GoInt)];
                        _i_19727_7 = __tmp__0;
                        _o_8 = __tmp__1;
                    };
                    _gotoNext = 19929i32;
                } else if (__value__ == (19929i32)) {
                    if (_i_19727_7 < (stdgo._internal.internal.cpu.Cpu__options._options.length)) {
                        _gotoNext = 19741i32;
                    } else {
                        _gotoNext = 19931i32;
                    };
                } else if (__value__ == (19931i32)) {
                    _gotoNext = -1i32;
                };
            };
        };
    }
