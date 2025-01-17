package stdgo._internal.internal.cpu;
function _processOptions(_env:stdgo.GoString):Void {
        var _o_25827:stdgo._internal.internal.cpu.Cpu_T_option.T_option = ({} : stdgo._internal.internal.cpu.Cpu_T_option.T_option);
        var _i_25615:stdgo.GoInt = (0 : stdgo.GoInt);
        var _enable_25257:Bool = false;
        var _value_25196:stdgo.GoString = ("" : stdgo.GoString);
        var _i_24897:stdgo.GoInt = (0 : stdgo.GoInt);
        var _i_25832_0:stdgo.GoInt = (0 : stdgo.GoInt);
        var _i_25497:stdgo.GoInt = (0 : stdgo.GoInt);
        var _key_25191:stdgo.GoString = ("" : stdgo.GoString);
        var _field_24883:stdgo.GoString = ("" : stdgo.GoString);
        var _fieldBreak = false;
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    _gotoNext = 24857i32;
                } else if (__value__ == (24857i32)) {
                    var __blank__ = 0i32;
                    _fieldBreak = false;
                    _gotoNext = 24865i32;
                } else if (__value__ == (24865i32)) {
                    if (!_fieldBreak && (_env != stdgo.Go.str())) {
                        _gotoNext = 24879i32;
                    } else {
                        _gotoNext = 25820i32;
                    };
                } else if (__value__ == (24879i32)) {
                    _field_24883 = stdgo.Go.str()?.__copy__();
                    _i_24897 = stdgo._internal.internal.cpu.Cpu__indexByte._indexByte(_env?.__copy__(), (44 : stdgo.GoUInt8));
                    if ((_i_24897 < (0 : stdgo.GoInt) : Bool)) {
                        _gotoNext = 24933i32;
                    } else {
                        _gotoNext = 24968i32;
                    };
                } else if (__value__ == (24933i32)) {
                    {
                        final __tmp__0 = _env?.__copy__();
                        final __tmp__1 = stdgo.Go.str()?.__copy__();
                        _field_24883 = __tmp__0;
                        _env = __tmp__1;
                    };
                    _gotoNext = 25011i32;
                } else if (__value__ == (24968i32)) {
                    _gotoNext = 24968i32;
                    {
                        final __tmp__0 = (_env.__slice__(0, _i_24897) : stdgo.GoString)?.__copy__();
                        final __tmp__1 = (_env.__slice__((_i_24897 + (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        _field_24883 = __tmp__0;
                        _env = __tmp__1;
                    };
                    var __blank__ = 0i32;
                    _gotoNext = 25011i32;
                } else if (__value__ == (25011i32)) {
                    if ((((_field_24883.length) < (4 : stdgo.GoInt) : Bool) || ((_field_24883.__slice__(0, (4 : stdgo.GoInt)) : stdgo.GoString) != ("cpu." : stdgo.GoString)) : Bool)) {
                        _gotoNext = 25052i32;
                    } else {
                        _gotoNext = 25072i32;
                    };
                } else if (__value__ == (25052i32)) {
                    var __blank__ = 0i32;
                    _gotoNext = 24865i32;
                } else if (__value__ == (25072i32)) {
                    _i_24897 = stdgo._internal.internal.cpu.Cpu__indexByte._indexByte(_field_24883?.__copy__(), (61 : stdgo.GoUInt8));
                    if ((_i_24897 < (0 : stdgo.GoInt) : Bool)) {
                        _gotoNext = 25109i32;
                    } else {
                        _gotoNext = 25191i32;
                    };
                } else if (__value__ == (25109i32)) {
                    stdgo.Go.print(("GODEBUG: no value specified for \"" : stdgo.GoString), _field_24883, ("\"\n" : stdgo.GoString));
                    var __blank__ = 0i32;
                    _gotoNext = 24865i32;
                } else if (__value__ == (25191i32)) {
                    {
                        final __tmp__0 = (_field_24883.__slice__((4 : stdgo.GoInt), _i_24897) : stdgo.GoString)?.__copy__();
                        final __tmp__1 = (_field_24883.__slice__((_i_24897 + (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        _key_25191 = __tmp__0;
                        _value_25196 = __tmp__1;
                    };
                    _gotoNext = 25271i32;
                } else if (__value__ == (25271i32)) {
                    {
                        final __value__ = _value_25196;
                        if (__value__ == (("on" : stdgo.GoString))) {
                            _gotoNext = 25288i32;
                        } else if (__value__ == (("off" : stdgo.GoString))) {
                            _gotoNext = 25318i32;
                        } else {
                            _gotoNext = 25350i32;
                        };
                    };
                } else if (__value__ == (25288i32)) {
                    _enable_25257 = true;
                    _gotoNext = 25472i32;
                } else if (__value__ == (25318i32)) {
                    _enable_25257 = false;
                    _gotoNext = 25472i32;
                } else if (__value__ == (25350i32)) {
                    stdgo.Go.print(("GODEBUG: value \"" : stdgo.GoString), _value_25196, ("\" not supported for cpu option \"" : stdgo.GoString), _key_25191, ("\"\n" : stdgo.GoString));
                    _gotoNext = 24865i32;
                } else if (__value__ == (25472i32)) {
                    if (_key_25191 == (("all" : stdgo.GoString))) {
                        _gotoNext = 25488i32;
                    } else {
                        _gotoNext = 25611i32;
                    };
                } else if (__value__ == (25488i32)) {
                    if ((0i32 : stdgo.GoInt) < (stdgo._internal.internal.cpu.Cpu__options._options.length)) {
                        _gotoNext = 25583i32;
                    } else {
                        _gotoNext = 25589i32;
                    };
                } else if (__value__ == (25516i32)) {
                    stdgo._internal.internal.cpu.Cpu__options._options[(_i_25497 : stdgo.GoInt)].specified = true;
                    stdgo._internal.internal.cpu.Cpu__options._options[(_i_25497 : stdgo.GoInt)].enable = _enable_25257;
                    _i_25497++;
                    _gotoNext = 25584i32;
                } else if (__value__ == (25583i32)) {
                    _i_25497 = 0i32;
                    _gotoNext = 25584i32;
                } else if (__value__ == (25584i32)) {
                    if (_i_25497 < (stdgo._internal.internal.cpu.Cpu__options._options.length)) {
                        _gotoNext = 25516i32;
                    } else {
                        _gotoNext = 25589i32;
                    };
                } else if (__value__ == (25589i32)) {
                    _gotoNext = 24865i32;
                } else if (__value__ == (25611i32)) {
                    if ((0i32 : stdgo.GoInt) < (stdgo._internal.internal.cpu.Cpu__options._options.length)) {
                        _gotoNext = 25755i32;
                    } else {
                        _gotoNext = 25761i32;
                    };
                } else if (__value__ == (25615i32)) {
                    _i_25615++;
                    _gotoNext = 25756i32;
                } else if (__value__ == (25634i32)) {
                    if (stdgo._internal.internal.cpu.Cpu__options._options[(_i_25615 : stdgo.GoInt)].name == (_key_25191)) {
                        _gotoNext = 25665i32;
                    } else {
                        _gotoNext = 25615i32;
                    };
                } else if (__value__ == (25665i32)) {
                    stdgo._internal.internal.cpu.Cpu__options._options[(_i_25615 : stdgo.GoInt)].specified = true;
                    stdgo._internal.internal.cpu.Cpu__options._options[(_i_25615 : stdgo.GoInt)].enable = _enable_25257;
                    _gotoNext = 24865i32;
                } else if (__value__ == (25755i32)) {
                    _i_25615 = 0i32;
                    _gotoNext = 25756i32;
                } else if (__value__ == (25756i32)) {
                    if (_i_25615 < (stdgo._internal.internal.cpu.Cpu__options._options.length)) {
                        _gotoNext = 25634i32;
                    } else {
                        _gotoNext = 25761i32;
                    };
                } else if (__value__ == (25761i32)) {
                    stdgo.Go.print(("GODEBUG: unknown cpu feature \"" : stdgo.GoString), _key_25191, ("\"\n" : stdgo.GoString));
                    _gotoNext = 24865i32;
                } else if (__value__ == (25820i32)) {
                    if ((0i32 : stdgo.GoInt) < (stdgo._internal.internal.cpu.Cpu__options._options.length)) {
                        _gotoNext = 26033i32;
                    } else {
                        _gotoNext = 26036i32;
                    };
                } else if (__value__ == (25846i32)) {
                    _o_25827 = stdgo._internal.internal.cpu.Cpu__options._options[(_i_25832_0 : stdgo.GoInt)];
                    if (!_o_25827.specified) {
                        _gotoNext = 25866i32;
                    } else {
                        _gotoNext = 25887i32;
                    };
                } else if (__value__ == (25866i32)) {
                    _i_25832_0++;
                    _gotoNext = 26034i32;
                } else if (__value__ == (25887i32)) {
                    if ((_o_25827.enable && !_o_25827.feature.value : Bool)) {
                        _gotoNext = 25914i32;
                    } else {
                        _gotoNext = 26011i32;
                    };
                } else if (__value__ == (25914i32)) {
                    stdgo.Go.print(("GODEBUG: can not enable \"" : stdgo.GoString), _o_25827.name, ("\", missing CPU support\n" : stdgo.GoString));
                    _i_25832_0++;
                    _gotoNext = 26034i32;
                } else if (__value__ == (26011i32)) {
                    _o_25827.feature.value = _o_25827.enable;
                    _i_25832_0++;
                    _gotoNext = 26034i32;
                } else if (__value__ == (26033i32)) {
                    {
                        final __tmp__0 = 0i32;
                        final __tmp__1 = stdgo._internal.internal.cpu.Cpu__options._options[(0i32 : stdgo.GoInt)];
                        _i_25832_0 = __tmp__0;
                        _o_25827 = __tmp__1;
                    };
                    _gotoNext = 26034i32;
                } else if (__value__ == (26034i32)) {
                    if (_i_25832_0 < (stdgo._internal.internal.cpu.Cpu__options._options.length)) {
                        _gotoNext = 25846i32;
                    } else {
                        _gotoNext = 26036i32;
                    };
                } else if (__value__ == (26036i32)) {
                    _gotoNext = -1i32;
                };
            };
        };
    }
