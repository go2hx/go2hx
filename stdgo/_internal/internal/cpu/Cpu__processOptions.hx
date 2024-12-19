package stdgo._internal.internal.cpu;
function _processOptions(_env:stdgo.GoString):Void {
        var _o_15988:stdgo._internal.internal.cpu.Cpu_T_option.T_option = ({} : stdgo._internal.internal.cpu.Cpu_T_option.T_option);
        var _i_15776:stdgo.GoInt = (0 : stdgo.GoInt);
        var _enable_15418:Bool = false;
        var _value_15357:stdgo.GoString = ("" : stdgo.GoString);
        var _key_15352:stdgo.GoString = ("" : stdgo.GoString);
        var _fieldBreak = false;
        var _i_15993_0:stdgo.GoInt = (0 : stdgo.GoInt);
        var _i_15658:stdgo.GoInt = (0 : stdgo.GoInt);
        var _i_15058:stdgo.GoInt = (0 : stdgo.GoInt);
        var _field_15044:stdgo.GoString = ("" : stdgo.GoString);
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    _gotoNext = 15018i32;
                } else if (__value__ == (15018i32)) {
                    var __blank__ = 0i32;
                    _fieldBreak = false;
                    _gotoNext = 15026i32;
                } else if (__value__ == (15026i32)) {
                    if (!_fieldBreak && (_env != stdgo.Go.str())) {
                        _gotoNext = 15040i32;
                    } else {
                        _gotoNext = 15981i32;
                    };
                } else if (__value__ == (15040i32)) {
                    _field_15044 = stdgo.Go.str()?.__copy__();
                    _i_15058 = stdgo._internal.internal.cpu.Cpu__indexByte._indexByte(_env?.__copy__(), (44 : stdgo.GoUInt8));
                    if ((_i_15058 < (0 : stdgo.GoInt) : Bool)) {
                        _gotoNext = 15094i32;
                    } else {
                        _gotoNext = 15129i32;
                    };
                } else if (__value__ == (15094i32)) {
                    {
                        final __tmp__0 = _env?.__copy__();
                        final __tmp__1 = stdgo.Go.str()?.__copy__();
                        _field_15044 = __tmp__0;
                        _env = __tmp__1;
                    };
                    _gotoNext = 15172i32;
                } else if (__value__ == (15129i32)) {
                    _gotoNext = 15129i32;
                    {
                        final __tmp__0 = (_env.__slice__(0, _i_15058) : stdgo.GoString)?.__copy__();
                        final __tmp__1 = (_env.__slice__((_i_15058 + (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        _field_15044 = __tmp__0;
                        _env = __tmp__1;
                    };
                    var __blank__ = 0i32;
                    _gotoNext = 15172i32;
                } else if (__value__ == (15172i32)) {
                    if ((((_field_15044.length) < (4 : stdgo.GoInt) : Bool) || ((_field_15044.__slice__(0, (4 : stdgo.GoInt)) : stdgo.GoString) != ("cpu." : stdgo.GoString)) : Bool)) {
                        _gotoNext = 15213i32;
                    } else {
                        _gotoNext = 15233i32;
                    };
                } else if (__value__ == (15213i32)) {
                    var __blank__ = 0i32;
                    _gotoNext = 15026i32;
                } else if (__value__ == (15233i32)) {
                    _i_15058 = stdgo._internal.internal.cpu.Cpu__indexByte._indexByte(_field_15044?.__copy__(), (61 : stdgo.GoUInt8));
                    if ((_i_15058 < (0 : stdgo.GoInt) : Bool)) {
                        _gotoNext = 15270i32;
                    } else {
                        _gotoNext = 15352i32;
                    };
                } else if (__value__ == (15270i32)) {
                    stdgo.Go.print(("GODEBUG: no value specified for \"" : stdgo.GoString), _field_15044, ("\"\n" : stdgo.GoString));
                    var __blank__ = 0i32;
                    _gotoNext = 15026i32;
                } else if (__value__ == (15352i32)) {
                    {
                        final __tmp__0 = (_field_15044.__slice__((4 : stdgo.GoInt), _i_15058) : stdgo.GoString)?.__copy__();
                        final __tmp__1 = (_field_15044.__slice__((_i_15058 + (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        _key_15352 = __tmp__0;
                        _value_15357 = __tmp__1;
                    };
                    _gotoNext = 15432i32;
                } else if (__value__ == (15432i32)) {
                    {
                        final __value__ = _value_15357;
                        if (__value__ == (("on" : stdgo.GoString))) {
                            _gotoNext = 15449i32;
                        } else if (__value__ == (("off" : stdgo.GoString))) {
                            _gotoNext = 15479i32;
                        } else {
                            _gotoNext = 15511i32;
                        };
                    };
                } else if (__value__ == (15449i32)) {
                    _enable_15418 = true;
                    _gotoNext = 15633i32;
                } else if (__value__ == (15479i32)) {
                    _enable_15418 = false;
                    _gotoNext = 15633i32;
                } else if (__value__ == (15511i32)) {
                    stdgo.Go.print(("GODEBUG: value \"" : stdgo.GoString), _value_15357, ("\" not supported for cpu option \"" : stdgo.GoString), _key_15352, ("\"\n" : stdgo.GoString));
                    _gotoNext = 15026i32;
                } else if (__value__ == (15633i32)) {
                    if (_key_15352 == (("all" : stdgo.GoString))) {
                        _gotoNext = 15649i32;
                    } else {
                        _gotoNext = 15772i32;
                    };
                } else if (__value__ == (15649i32)) {
                    if ((0i32 : stdgo.GoInt) < (stdgo._internal.internal.cpu.Cpu__options._options.length)) {
                        _gotoNext = 15744i32;
                    } else {
                        _gotoNext = 15750i32;
                    };
                } else if (__value__ == (15677i32)) {
                    stdgo._internal.internal.cpu.Cpu__options._options[(_i_15658 : stdgo.GoInt)].specified = true;
                    stdgo._internal.internal.cpu.Cpu__options._options[(_i_15658 : stdgo.GoInt)].enable = _enable_15418;
                    _i_15658++;
                    _gotoNext = 15745i32;
                } else if (__value__ == (15744i32)) {
                    _i_15658 = 0i32;
                    _gotoNext = 15745i32;
                } else if (__value__ == (15745i32)) {
                    if (_i_15658 < (stdgo._internal.internal.cpu.Cpu__options._options.length)) {
                        _gotoNext = 15677i32;
                    } else {
                        _gotoNext = 15750i32;
                    };
                } else if (__value__ == (15750i32)) {
                    _gotoNext = 15026i32;
                } else if (__value__ == (15772i32)) {
                    if ((0i32 : stdgo.GoInt) < (stdgo._internal.internal.cpu.Cpu__options._options.length)) {
                        _gotoNext = 15916i32;
                    } else {
                        _gotoNext = 15922i32;
                    };
                } else if (__value__ == (15776i32)) {
                    _i_15776++;
                    _gotoNext = 15917i32;
                } else if (__value__ == (15795i32)) {
                    if (stdgo._internal.internal.cpu.Cpu__options._options[(_i_15776 : stdgo.GoInt)].name == (_key_15352)) {
                        _gotoNext = 15826i32;
                    } else {
                        _gotoNext = 15776i32;
                    };
                } else if (__value__ == (15826i32)) {
                    stdgo._internal.internal.cpu.Cpu__options._options[(_i_15776 : stdgo.GoInt)].specified = true;
                    stdgo._internal.internal.cpu.Cpu__options._options[(_i_15776 : stdgo.GoInt)].enable = _enable_15418;
                    _gotoNext = 15026i32;
                } else if (__value__ == (15916i32)) {
                    _i_15776 = 0i32;
                    _gotoNext = 15917i32;
                } else if (__value__ == (15917i32)) {
                    if (_i_15776 < (stdgo._internal.internal.cpu.Cpu__options._options.length)) {
                        _gotoNext = 15795i32;
                    } else {
                        _gotoNext = 15922i32;
                    };
                } else if (__value__ == (15922i32)) {
                    stdgo.Go.print(("GODEBUG: unknown cpu feature \"" : stdgo.GoString), _key_15352, ("\"\n" : stdgo.GoString));
                    _gotoNext = 15026i32;
                } else if (__value__ == (15981i32)) {
                    if ((0i32 : stdgo.GoInt) < (stdgo._internal.internal.cpu.Cpu__options._options.length)) {
                        _gotoNext = 16194i32;
                    } else {
                        _gotoNext = 16197i32;
                    };
                } else if (__value__ == (16007i32)) {
                    _o_15988 = stdgo._internal.internal.cpu.Cpu__options._options[(_i_15993_0 : stdgo.GoInt)];
                    if (!_o_15988.specified) {
                        _gotoNext = 16027i32;
                    } else {
                        _gotoNext = 16048i32;
                    };
                } else if (__value__ == (16027i32)) {
                    _i_15993_0++;
                    _gotoNext = 16195i32;
                } else if (__value__ == (16048i32)) {
                    if ((_o_15988.enable && !_o_15988.feature.value : Bool)) {
                        _gotoNext = 16075i32;
                    } else {
                        _gotoNext = 16172i32;
                    };
                } else if (__value__ == (16075i32)) {
                    stdgo.Go.print(("GODEBUG: can not enable \"" : stdgo.GoString), _o_15988.name, ("\", missing CPU support\n" : stdgo.GoString));
                    _i_15993_0++;
                    _gotoNext = 16195i32;
                } else if (__value__ == (16172i32)) {
                    _o_15988.feature.value = _o_15988.enable;
                    _i_15993_0++;
                    _gotoNext = 16195i32;
                } else if (__value__ == (16194i32)) {
                    {
                        final __tmp__0 = 0i32;
                        final __tmp__1 = stdgo._internal.internal.cpu.Cpu__options._options[(0i32 : stdgo.GoInt)];
                        _i_15993_0 = __tmp__0;
                        _o_15988 = __tmp__1;
                    };
                    _gotoNext = 16195i32;
                } else if (__value__ == (16195i32)) {
                    if (_i_15993_0 < (stdgo._internal.internal.cpu.Cpu__options._options.length)) {
                        _gotoNext = 16007i32;
                    } else {
                        _gotoNext = 16197i32;
                    };
                } else if (__value__ == (16197i32)) {
                    _gotoNext = -1i32;
                };
            };
        };
    }
