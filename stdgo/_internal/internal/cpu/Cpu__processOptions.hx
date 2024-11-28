package stdgo._internal.internal.cpu;
function _processOptions(_env:stdgo.GoString):Void {
        var _o_7383:stdgo._internal.internal.cpu.Cpu_T_option.T_option = ({} : stdgo._internal.internal.cpu.Cpu_T_option.T_option);
        var _i_7053:stdgo.GoInt = (0 : stdgo.GoInt);
        var _value_6752:stdgo.GoString = ("" : stdgo.GoString);
        var _key_6747:stdgo.GoString = ("" : stdgo.GoString);
        var _i_6453:stdgo.GoInt = (0 : stdgo.GoInt);
        var _i_7388_0:stdgo.GoInt = (0 : stdgo.GoInt);
        var _i_7171:stdgo.GoInt = (0 : stdgo.GoInt);
        var _enable_6813:Bool = false;
        var _field_6439:stdgo.GoString = ("" : stdgo.GoString);
        var _fieldBreak = false;
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    _gotoNext = 6413i32;
                } else if (__value__ == (6413i32)) {
                    var __blank__ = 0i32;
                    _fieldBreak = false;
                    _gotoNext = 6421i32;
                } else if (__value__ == (6421i32)) {
                    if (!_fieldBreak && (_env != stdgo.Go.str())) {
                        _gotoNext = 6435i32;
                    } else {
                        _gotoNext = 7376i32;
                    };
                } else if (__value__ == (6435i32)) {
                    _field_6439 = stdgo.Go.str()?.__copy__();
                    _i_6453 = stdgo._internal.internal.cpu.Cpu__indexByte._indexByte(_env?.__copy__(), (44 : stdgo.GoUInt8));
                    if ((_i_6453 < (0 : stdgo.GoInt) : Bool)) {
                        _gotoNext = 6489i32;
                    } else {
                        _gotoNext = 6524i32;
                    };
                } else if (__value__ == (6489i32)) {
                    {
                        final __tmp__0 = _env?.__copy__();
                        final __tmp__1 = stdgo.Go.str()?.__copy__();
                        _field_6439 = __tmp__0;
                        _env = __tmp__1;
                    };
                    _gotoNext = 6567i32;
                } else if (__value__ == (6524i32)) {
                    _gotoNext = 6524i32;
                    {
                        final __tmp__0 = (_env.__slice__(0, _i_6453) : stdgo.GoString)?.__copy__();
                        final __tmp__1 = (_env.__slice__((_i_6453 + (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        _field_6439 = __tmp__0;
                        _env = __tmp__1;
                    };
                    var __blank__ = 0i32;
                    _gotoNext = 6567i32;
                } else if (__value__ == (6567i32)) {
                    if ((((_field_6439.length) < (4 : stdgo.GoInt) : Bool) || ((_field_6439.__slice__(0, (4 : stdgo.GoInt)) : stdgo.GoString) != ("cpu." : stdgo.GoString)) : Bool)) {
                        _gotoNext = 6608i32;
                    } else {
                        _gotoNext = 6628i32;
                    };
                } else if (__value__ == (6608i32)) {
                    var __blank__ = 0i32;
                    _gotoNext = 6421i32;
                } else if (__value__ == (6628i32)) {
                    _i_6453 = stdgo._internal.internal.cpu.Cpu__indexByte._indexByte(_field_6439?.__copy__(), (61 : stdgo.GoUInt8));
                    if ((_i_6453 < (0 : stdgo.GoInt) : Bool)) {
                        _gotoNext = 6665i32;
                    } else {
                        _gotoNext = 6747i32;
                    };
                } else if (__value__ == (6665i32)) {
                    stdgo.Go.print(("GODEBUG: no value specified for \"" : stdgo.GoString), _field_6439, ("\"\n" : stdgo.GoString));
                    var __blank__ = 0i32;
                    _gotoNext = 6421i32;
                } else if (__value__ == (6747i32)) {
                    {
                        final __tmp__0 = (_field_6439.__slice__((4 : stdgo.GoInt), _i_6453) : stdgo.GoString)?.__copy__();
                        final __tmp__1 = (_field_6439.__slice__((_i_6453 + (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        _key_6747 = __tmp__0;
                        _value_6752 = __tmp__1;
                    };
                    _gotoNext = 6827i32;
                } else if (__value__ == (6827i32)) {
                    {
                        final __value__ = _value_6752;
                        if (__value__ == (("on" : stdgo.GoString))) {
                            _gotoNext = 6844i32;
                        } else if (__value__ == (("off" : stdgo.GoString))) {
                            _gotoNext = 6874i32;
                        } else {
                            _gotoNext = 6906i32;
                        };
                    };
                } else if (__value__ == (6844i32)) {
                    _enable_6813 = true;
                    _gotoNext = 7028i32;
                } else if (__value__ == (6874i32)) {
                    _enable_6813 = false;
                    _gotoNext = 7028i32;
                } else if (__value__ == (6906i32)) {
                    stdgo.Go.print(("GODEBUG: value \"" : stdgo.GoString), _value_6752, ("\" not supported for cpu option \"" : stdgo.GoString), _key_6747, ("\"\n" : stdgo.GoString));
                    _gotoNext = 6421i32;
                } else if (__value__ == (7028i32)) {
                    if (_key_6747 == (("all" : stdgo.GoString))) {
                        _gotoNext = 7044i32;
                    } else {
                        _gotoNext = 7167i32;
                    };
                } else if (__value__ == (7044i32)) {
                    if ((0i32 : stdgo.GoInt) < (stdgo._internal.internal.cpu.Cpu__options._options.length)) {
                        _gotoNext = 7139i32;
                    } else {
                        _gotoNext = 7145i32;
                    };
                } else if (__value__ == (7072i32)) {
                    stdgo._internal.internal.cpu.Cpu__options._options[(_i_7053 : stdgo.GoInt)].specified = true;
                    stdgo._internal.internal.cpu.Cpu__options._options[(_i_7053 : stdgo.GoInt)].enable = _enable_6813;
                    _i_7053++;
                    _gotoNext = 7140i32;
                } else if (__value__ == (7139i32)) {
                    _i_7053 = 0i32;
                    _gotoNext = 7140i32;
                } else if (__value__ == (7140i32)) {
                    if (_i_7053 < (stdgo._internal.internal.cpu.Cpu__options._options.length)) {
                        _gotoNext = 7072i32;
                    } else {
                        _gotoNext = 7145i32;
                    };
                } else if (__value__ == (7145i32)) {
                    _gotoNext = 6421i32;
                } else if (__value__ == (7167i32)) {
                    if ((0i32 : stdgo.GoInt) < (stdgo._internal.internal.cpu.Cpu__options._options.length)) {
                        _gotoNext = 7311i32;
                    } else {
                        _gotoNext = 7317i32;
                    };
                } else if (__value__ == (7171i32)) {
                    _i_7171++;
                    _gotoNext = 7312i32;
                } else if (__value__ == (7190i32)) {
                    if (stdgo._internal.internal.cpu.Cpu__options._options[(_i_7171 : stdgo.GoInt)].name == (_key_6747)) {
                        _gotoNext = 7221i32;
                    } else {
                        _gotoNext = 7171i32;
                    };
                } else if (__value__ == (7221i32)) {
                    stdgo._internal.internal.cpu.Cpu__options._options[(_i_7171 : stdgo.GoInt)].specified = true;
                    stdgo._internal.internal.cpu.Cpu__options._options[(_i_7171 : stdgo.GoInt)].enable = _enable_6813;
                    _gotoNext = 6421i32;
                } else if (__value__ == (7311i32)) {
                    _i_7171 = 0i32;
                    _gotoNext = 7312i32;
                } else if (__value__ == (7312i32)) {
                    if (_i_7171 < (stdgo._internal.internal.cpu.Cpu__options._options.length)) {
                        _gotoNext = 7190i32;
                    } else {
                        _gotoNext = 7317i32;
                    };
                } else if (__value__ == (7317i32)) {
                    stdgo.Go.print(("GODEBUG: unknown cpu feature \"" : stdgo.GoString), _key_6747, ("\"\n" : stdgo.GoString));
                    _gotoNext = 6421i32;
                } else if (__value__ == (7376i32)) {
                    if ((0i32 : stdgo.GoInt) < (stdgo._internal.internal.cpu.Cpu__options._options.length)) {
                        _gotoNext = 7589i32;
                    } else {
                        _gotoNext = 7592i32;
                    };
                } else if (__value__ == (7402i32)) {
                    _o_7383 = stdgo._internal.internal.cpu.Cpu__options._options[(_i_7388_0 : stdgo.GoInt)];
                    if (!_o_7383.specified) {
                        _gotoNext = 7422i32;
                    } else {
                        _gotoNext = 7443i32;
                    };
                } else if (__value__ == (7422i32)) {
                    _i_7388_0++;
                    _gotoNext = 7590i32;
                } else if (__value__ == (7443i32)) {
                    if ((_o_7383.enable && !_o_7383.feature.value : Bool)) {
                        _gotoNext = 7470i32;
                    } else {
                        _gotoNext = 7567i32;
                    };
                } else if (__value__ == (7470i32)) {
                    stdgo.Go.print(("GODEBUG: can not enable \"" : stdgo.GoString), _o_7383.name, ("\", missing CPU support\n" : stdgo.GoString));
                    _i_7388_0++;
                    _gotoNext = 7590i32;
                } else if (__value__ == (7567i32)) {
                    _o_7383.feature.value = _o_7383.enable;
                    _i_7388_0++;
                    _gotoNext = 7590i32;
                } else if (__value__ == (7589i32)) {
                    {
                        final __tmp__0 = 0i32;
                        final __tmp__1 = stdgo._internal.internal.cpu.Cpu__options._options[(0i32 : stdgo.GoInt)];
                        _i_7388_0 = __tmp__0;
                        _o_7383 = __tmp__1;
                    };
                    _gotoNext = 7590i32;
                } else if (__value__ == (7590i32)) {
                    if (_i_7388_0 < (stdgo._internal.internal.cpu.Cpu__options._options.length)) {
                        _gotoNext = 7402i32;
                    } else {
                        _gotoNext = 7592i32;
                    };
                } else if (__value__ == (7592i32)) {
                    _gotoNext = -1i32;
                };
            };
        };
    }
