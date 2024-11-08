package stdgo._internal.internal.cpu;
function _processOptions(_env:stdgo.GoString):Void {
        var _o_78130:stdgo._internal.internal.cpu.Cpu_T_option.T_option = ({} : stdgo._internal.internal.cpu.Cpu_T_option.T_option);
        var _key_77494:stdgo.GoString = ("" : stdgo.GoString);
        var _field_77186:stdgo.GoString = ("" : stdgo.GoString);
        var _i_78135_0:stdgo.GoInt = (0 : stdgo.GoInt);
        var _i_77918:stdgo.GoInt = (0 : stdgo.GoInt);
        var _i_77800:stdgo.GoInt = (0 : stdgo.GoInt);
        var _enable_77560:Bool = false;
        var _value_77499:stdgo.GoString = ("" : stdgo.GoString);
        var _i_77200:stdgo.GoInt = (0 : stdgo.GoInt);
        var _fieldBreak = false;
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    _gotoNext = 77160i32;
                } else if (__value__ == (77160i32)) {
                    var __blank__ = 0i32;
                    _fieldBreak = false;
                    _gotoNext = 77168i32;
                } else if (__value__ == (77168i32)) {
                    if (!_fieldBreak && (_env != stdgo.Go.str())) {
                        _gotoNext = 77182i32;
                    } else {
                        _gotoNext = 78123i32;
                    };
                } else if (__value__ == (77182i32)) {
                    _field_77186 = stdgo.Go.str()?.__copy__();
                    _i_77200 = stdgo._internal.internal.cpu.Cpu__indexByte._indexByte(_env?.__copy__(), (44 : stdgo.GoUInt8));
                    if ((_i_77200 < (0 : stdgo.GoInt) : Bool)) {
                        _gotoNext = 77236i32;
                    } else {
                        _gotoNext = 77271i32;
                    };
                } else if (__value__ == (77236i32)) {
                    {
                        final __tmp__0 = _env?.__copy__();
                        final __tmp__1 = stdgo.Go.str()?.__copy__();
                        _field_77186 = __tmp__0;
                        _env = __tmp__1;
                    };
                    _gotoNext = 77314i32;
                } else if (__value__ == (77271i32)) {
                    _gotoNext = 77271i32;
                    {
                        final __tmp__0 = (_env.__slice__(0, _i_77200) : stdgo.GoString)?.__copy__();
                        final __tmp__1 = (_env.__slice__((_i_77200 + (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        _field_77186 = __tmp__0;
                        _env = __tmp__1;
                    };
                    var __blank__ = 0i32;
                    _gotoNext = 77314i32;
                } else if (__value__ == (77314i32)) {
                    if ((((_field_77186.length) < (4 : stdgo.GoInt) : Bool) || ((_field_77186.__slice__(0, (4 : stdgo.GoInt)) : stdgo.GoString) != ("cpu." : stdgo.GoString)) : Bool)) {
                        _gotoNext = 77355i32;
                    } else {
                        _gotoNext = 77375i32;
                    };
                } else if (__value__ == (77355i32)) {
                    var __blank__ = 0i32;
                    _gotoNext = 77168i32;
                } else if (__value__ == (77375i32)) {
                    _i_77200 = stdgo._internal.internal.cpu.Cpu__indexByte._indexByte(_field_77186?.__copy__(), (61 : stdgo.GoUInt8));
                    if ((_i_77200 < (0 : stdgo.GoInt) : Bool)) {
                        _gotoNext = 77412i32;
                    } else {
                        _gotoNext = 77494i32;
                    };
                } else if (__value__ == (77412i32)) {
                    stdgo.Go.print(("GODEBUG: no value specified for \"" : stdgo.GoString), _field_77186, ("\"\n" : stdgo.GoString));
                    var __blank__ = 0i32;
                    _gotoNext = 77168i32;
                } else if (__value__ == (77494i32)) {
                    {
                        final __tmp__0 = (_field_77186.__slice__((4 : stdgo.GoInt), _i_77200) : stdgo.GoString)?.__copy__();
                        final __tmp__1 = (_field_77186.__slice__((_i_77200 + (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        _key_77494 = __tmp__0;
                        _value_77499 = __tmp__1;
                    };
                    var __blank__ = 0i32;
                    _gotoNext = 77574i32;
                } else if (__value__ == (77574i32)) {
                    {
                        final __value__ = _value_77499;
                        if (__value__ == (("on" : stdgo.GoString))) {
                            _gotoNext = 77591i32;
                        } else if (__value__ == (("off" : stdgo.GoString))) {
                            _gotoNext = 77621i32;
                        } else {
                            _gotoNext = 77653i32;
                        };
                    };
                } else if (__value__ == (77591i32)) {
                    _enable_77560 = true;
                    _gotoNext = 77775i32;
                } else if (__value__ == (77621i32)) {
                    _enable_77560 = false;
                    _gotoNext = 77775i32;
                } else if (__value__ == (77653i32)) {
                    stdgo.Go.print(("GODEBUG: value \"" : stdgo.GoString), _value_77499, ("\" not supported for cpu option \"" : stdgo.GoString), _key_77494, ("\"\n" : stdgo.GoString));
                    _gotoNext = 77168i32;
                } else if (__value__ == (77775i32)) {
                    if (_key_77494 == (("all" : stdgo.GoString))) {
                        _gotoNext = 77791i32;
                    } else {
                        _gotoNext = 77914i32;
                    };
                } else if (__value__ == (77791i32)) {
                    if ((0i32 : stdgo.GoInt) < (stdgo._internal.internal.cpu.Cpu__options._options.length)) {
                        _gotoNext = 77886i32;
                    } else {
                        _gotoNext = 77892i32;
                    };
                } else if (__value__ == (77819i32)) {
                    stdgo._internal.internal.cpu.Cpu__options._options[(_i_77800 : stdgo.GoInt)].specified = true;
                    stdgo._internal.internal.cpu.Cpu__options._options[(_i_77800 : stdgo.GoInt)].enable = _enable_77560;
                    _i_77800++;
                    _gotoNext = 77887i32;
                } else if (__value__ == (77886i32)) {
                    _i_77800 = 0i32;
                    _gotoNext = 77887i32;
                } else if (__value__ == (77887i32)) {
                    if (_i_77800 < (stdgo._internal.internal.cpu.Cpu__options._options.length)) {
                        _gotoNext = 77819i32;
                    } else {
                        _gotoNext = 77892i32;
                    };
                } else if (__value__ == (77892i32)) {
                    _gotoNext = 77168i32;
                } else if (__value__ == (77914i32)) {
                    if ((0i32 : stdgo.GoInt) < (stdgo._internal.internal.cpu.Cpu__options._options.length)) {
                        _gotoNext = 78058i32;
                    } else {
                        _gotoNext = 78064i32;
                    };
                } else if (__value__ == (77918i32)) {
                    _i_77918++;
                    _gotoNext = 78059i32;
                } else if (__value__ == (77937i32)) {
                    if (stdgo._internal.internal.cpu.Cpu__options._options[(_i_77918 : stdgo.GoInt)].name == (_key_77494)) {
                        _gotoNext = 77968i32;
                    } else {
                        _gotoNext = 77918i32;
                    };
                } else if (__value__ == (77968i32)) {
                    stdgo._internal.internal.cpu.Cpu__options._options[(_i_77918 : stdgo.GoInt)].specified = true;
                    stdgo._internal.internal.cpu.Cpu__options._options[(_i_77918 : stdgo.GoInt)].enable = _enable_77560;
                    _gotoNext = 77168i32;
                } else if (__value__ == (78058i32)) {
                    _i_77918 = 0i32;
                    _gotoNext = 78059i32;
                } else if (__value__ == (78059i32)) {
                    if (_i_77918 < (stdgo._internal.internal.cpu.Cpu__options._options.length)) {
                        _gotoNext = 77937i32;
                    } else {
                        _gotoNext = 78064i32;
                    };
                } else if (__value__ == (78064i32)) {
                    stdgo.Go.print(("GODEBUG: unknown cpu feature \"" : stdgo.GoString), _key_77494, ("\"\n" : stdgo.GoString));
                    _gotoNext = 77168i32;
                } else if (__value__ == (78123i32)) {
                    if ((0i32 : stdgo.GoInt) < (stdgo._internal.internal.cpu.Cpu__options._options.length)) {
                        _gotoNext = 78336i32;
                    } else {
                        _gotoNext = 78339i32;
                    };
                } else if (__value__ == (78149i32)) {
                    _o_78130 = stdgo._internal.internal.cpu.Cpu__options._options[(_i_78135_0 : stdgo.GoInt)];
                    if (!_o_78130.specified) {
                        _gotoNext = 78169i32;
                    } else {
                        _gotoNext = 78190i32;
                    };
                } else if (__value__ == (78169i32)) {
                    _i_78135_0++;
                    _gotoNext = 78337i32;
                } else if (__value__ == (78190i32)) {
                    if ((_o_78130.enable && !_o_78130.feature.value : Bool)) {
                        _gotoNext = 78217i32;
                    } else {
                        _gotoNext = 78314i32;
                    };
                } else if (__value__ == (78217i32)) {
                    stdgo.Go.print(("GODEBUG: can not enable \"" : stdgo.GoString), _o_78130.name, ("\", missing CPU support\n" : stdgo.GoString));
                    _i_78135_0++;
                    _gotoNext = 78337i32;
                } else if (__value__ == (78314i32)) {
                    _o_78130.feature.value = _o_78130.enable;
                    _i_78135_0++;
                    _gotoNext = 78337i32;
                } else if (__value__ == (78336i32)) {
                    {
                        final __tmp__0 = 0i32;
                        final __tmp__1 = stdgo._internal.internal.cpu.Cpu__options._options[(0i32 : stdgo.GoInt)];
                        _i_78135_0 = __tmp__0;
                        _o_78130 = __tmp__1;
                    };
                    _gotoNext = 78337i32;
                } else if (__value__ == (78337i32)) {
                    if (_i_78135_0 < (stdgo._internal.internal.cpu.Cpu__options._options.length)) {
                        _gotoNext = 78149i32;
                    } else {
                        _gotoNext = 78339i32;
                    };
                } else if (__value__ == (78339i32)) {
                    _gotoNext = -1i32;
                };
            };
        };
    }
