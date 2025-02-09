package stdgo._internal.internal.cpu;
function _processOptions(_env:stdgo.GoString):Void {
        var _i_39091:stdgo.GoInt = (0 : stdgo.GoInt);
        var _key_38785:stdgo.GoString = ("" : stdgo.GoString);
        var _fieldBreak = false;
        var _i_39426_0:stdgo.GoInt = (0 : stdgo.GoInt);
        var _value_38790:stdgo.GoString = ("" : stdgo.GoString);
        var _i_38491:stdgo.GoInt = (0 : stdgo.GoInt);
        var _field_38477:stdgo.GoString = ("" : stdgo.GoString);
        var _o_39421:stdgo._internal.internal.cpu.Cpu_t_option.T_option = ({} : stdgo._internal.internal.cpu.Cpu_t_option.T_option);
        var _i_39209:stdgo.GoInt = (0 : stdgo.GoInt);
        var _enable_38851:Bool = false;
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    _gotoNext = 38451i32;
                } else if (__value__ == (38451i32)) {
                    var __blank__ = 0i32;
                    _fieldBreak = false;
                    _gotoNext = 38459i32;
                } else if (__value__ == (38459i32)) {
                    if (!_fieldBreak && (_env != (stdgo.Go.str() : stdgo.GoString))) {
                        _gotoNext = 38473i32;
                    } else {
                        _gotoNext = 39414i32;
                    };
                } else if (__value__ == (38473i32)) {
                    _field_38477 = (stdgo.Go.str() : stdgo.GoString)?.__copy__();
                    _i_38491 = stdgo._internal.internal.cpu.Cpu__indexbyte._indexByte(_env?.__copy__(), (44 : stdgo.GoUInt8));
                    if ((_i_38491 < (0 : stdgo.GoInt) : Bool)) {
                        _gotoNext = 38527i32;
                    } else {
                        _gotoNext = 38562i32;
                    };
                } else if (__value__ == (38527i32)) {
                    {
                        final __tmp__0 = _env?.__copy__();
                        final __tmp__1 = (stdgo.Go.str() : stdgo.GoString)?.__copy__();
                        _field_38477 = __tmp__0;
                        _env = __tmp__1;
                    };
                    _gotoNext = 38605i32;
                } else if (__value__ == (38562i32)) {
                    _gotoNext = 38562i32;
                    {
                        final __tmp__0 = (_env.__slice__(0, _i_38491) : stdgo.GoString)?.__copy__();
                        final __tmp__1 = (_env.__slice__((_i_38491 + (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        _field_38477 = __tmp__0;
                        _env = __tmp__1;
                    };
                    var __blank__ = 0i32;
                    _gotoNext = 38605i32;
                } else if (__value__ == (38605i32)) {
                    if ((((_field_38477.length) < (4 : stdgo.GoInt) : Bool) || ((_field_38477.__slice__(0, (4 : stdgo.GoInt)) : stdgo.GoString) != ("cpu." : stdgo.GoString)) : Bool)) {
                        _gotoNext = 38646i32;
                    } else {
                        _gotoNext = 38666i32;
                    };
                } else if (__value__ == (38646i32)) {
                    var __blank__ = 0i32;
                    _gotoNext = 38459i32;
                } else if (__value__ == (38666i32)) {
                    _i_38491 = stdgo._internal.internal.cpu.Cpu__indexbyte._indexByte(_field_38477?.__copy__(), (61 : stdgo.GoUInt8));
                    if ((_i_38491 < (0 : stdgo.GoInt) : Bool)) {
                        _gotoNext = 38703i32;
                    } else {
                        _gotoNext = 38785i32;
                    };
                } else if (__value__ == (38703i32)) {
                    stdgo.Go.print(("GODEBUG: no value specified for \"" : stdgo.GoString), _field_38477, ("\"\n" : stdgo.GoString));
                    var __blank__ = 0i32;
                    _gotoNext = 38459i32;
                } else if (__value__ == (38785i32)) {
                    {
                        final __tmp__0 = (_field_38477.__slice__((4 : stdgo.GoInt), _i_38491) : stdgo.GoString)?.__copy__();
                        final __tmp__1 = (_field_38477.__slice__((_i_38491 + (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        _key_38785 = __tmp__0;
                        _value_38790 = __tmp__1;
                    };
                    _gotoNext = 38865i32;
                } else if (__value__ == (38865i32)) {
                    {
                        final __value__ = _value_38790;
                        if (__value__ == (("on" : stdgo.GoString))) {
                            _gotoNext = 38882i32;
                        } else if (__value__ == (("off" : stdgo.GoString))) {
                            _gotoNext = 38912i32;
                        } else {
                            _gotoNext = 38944i32;
                        };
                    };
                } else if (__value__ == (38882i32)) {
                    _enable_38851 = true;
                    _gotoNext = 39066i32;
                } else if (__value__ == (38912i32)) {
                    _enable_38851 = false;
                    _gotoNext = 39066i32;
                } else if (__value__ == (38944i32)) {
                    stdgo.Go.print(("GODEBUG: value \"" : stdgo.GoString), _value_38790, ("\" not supported for cpu option \"" : stdgo.GoString), _key_38785, ("\"\n" : stdgo.GoString));
                    _gotoNext = 38459i32;
                } else if (__value__ == (39066i32)) {
                    if (_key_38785 == (("all" : stdgo.GoString))) {
                        _gotoNext = 39082i32;
                    } else {
                        _gotoNext = 39205i32;
                    };
                } else if (__value__ == (39082i32)) {
                    if ((0i32 : stdgo.GoInt) < (stdgo._internal.internal.cpu.Cpu__options._options.length)) {
                        _gotoNext = 39177i32;
                    } else {
                        _gotoNext = 39183i32;
                    };
                } else if (__value__ == (39110i32)) {
                    stdgo._internal.internal.cpu.Cpu__options._options[(_i_39091 : stdgo.GoInt)].specified = true;
                    stdgo._internal.internal.cpu.Cpu__options._options[(_i_39091 : stdgo.GoInt)].enable = _enable_38851;
                    _i_39091++;
                    _gotoNext = 39178i32;
                } else if (__value__ == (39177i32)) {
                    _i_39091 = 0i32;
                    _gotoNext = 39178i32;
                } else if (__value__ == (39178i32)) {
                    if (_i_39091 < (stdgo._internal.internal.cpu.Cpu__options._options.length)) {
                        _gotoNext = 39110i32;
                    } else {
                        _gotoNext = 39183i32;
                    };
                } else if (__value__ == (39183i32)) {
                    _gotoNext = 38459i32;
                } else if (__value__ == (39205i32)) {
                    if ((0i32 : stdgo.GoInt) < (stdgo._internal.internal.cpu.Cpu__options._options.length)) {
                        _gotoNext = 39349i32;
                    } else {
                        _gotoNext = 39355i32;
                    };
                } else if (__value__ == (39209i32)) {
                    _i_39209++;
                    _gotoNext = 39350i32;
                } else if (__value__ == (39228i32)) {
                    if (stdgo._internal.internal.cpu.Cpu__options._options[(_i_39209 : stdgo.GoInt)].name == (_key_38785)) {
                        _gotoNext = 39259i32;
                    } else {
                        _gotoNext = 39209i32;
                    };
                } else if (__value__ == (39259i32)) {
                    stdgo._internal.internal.cpu.Cpu__options._options[(_i_39209 : stdgo.GoInt)].specified = true;
                    stdgo._internal.internal.cpu.Cpu__options._options[(_i_39209 : stdgo.GoInt)].enable = _enable_38851;
                    _gotoNext = 38459i32;
                } else if (__value__ == (39349i32)) {
                    _i_39209 = 0i32;
                    _gotoNext = 39350i32;
                } else if (__value__ == (39350i32)) {
                    if (_i_39209 < (stdgo._internal.internal.cpu.Cpu__options._options.length)) {
                        _gotoNext = 39228i32;
                    } else {
                        _gotoNext = 39355i32;
                    };
                } else if (__value__ == (39355i32)) {
                    stdgo.Go.print(("GODEBUG: unknown cpu feature \"" : stdgo.GoString), _key_38785, ("\"\n" : stdgo.GoString));
                    _gotoNext = 38459i32;
                } else if (__value__ == (39414i32)) {
                    if ((0i32 : stdgo.GoInt) < (stdgo._internal.internal.cpu.Cpu__options._options.length)) {
                        _gotoNext = 39627i32;
                    } else {
                        _gotoNext = 39630i32;
                    };
                } else if (__value__ == (39440i32)) {
                    _o_39421 = stdgo._internal.internal.cpu.Cpu__options._options[(_i_39426_0 : stdgo.GoInt)];
                    if (!_o_39421.specified) {
                        _gotoNext = 39460i32;
                    } else {
                        _gotoNext = 39481i32;
                    };
                } else if (__value__ == (39460i32)) {
                    _i_39426_0++;
                    _gotoNext = 39628i32;
                } else if (__value__ == (39481i32)) {
                    if ((_o_39421.enable && !_o_39421.feature.value : Bool)) {
                        _gotoNext = 39508i32;
                    } else {
                        _gotoNext = 39605i32;
                    };
                } else if (__value__ == (39508i32)) {
                    stdgo.Go.print(("GODEBUG: can not enable \"" : stdgo.GoString), _o_39421.name, ("\", missing CPU support\n" : stdgo.GoString));
                    _i_39426_0++;
                    _gotoNext = 39628i32;
                } else if (__value__ == (39605i32)) {
                    _o_39421.feature.value = _o_39421.enable;
                    _i_39426_0++;
                    _gotoNext = 39628i32;
                } else if (__value__ == (39627i32)) {
                    {
                        final __tmp__0 = 0i32;
                        final __tmp__1 = stdgo._internal.internal.cpu.Cpu__options._options[(0i32 : stdgo.GoInt)];
                        _i_39426_0 = __tmp__0;
                        _o_39421 = __tmp__1;
                    };
                    _gotoNext = 39628i32;
                } else if (__value__ == (39628i32)) {
                    if (_i_39426_0 < (stdgo._internal.internal.cpu.Cpu__options._options.length)) {
                        _gotoNext = 39440i32;
                    } else {
                        _gotoNext = 39630i32;
                    };
                } else if (__value__ == (39630i32)) {
                    _gotoNext = -1i32;
                };
            };
        };
    }
