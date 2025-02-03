package stdgo._internal.internal.cpu;
function _processOptions(_env:stdgo.GoString):Void {
        var _i_49946:stdgo.GoInt = (0 : stdgo.GoInt);
        var _value_49645:stdgo.GoString = ("" : stdgo.GoString);
        var _i_49346:stdgo.GoInt = (0 : stdgo.GoInt);
        var _field_49332:stdgo.GoString = ("" : stdgo.GoString);
        var _o_50276:stdgo._internal.internal.cpu.Cpu_T_option.T_option = ({} : stdgo._internal.internal.cpu.Cpu_T_option.T_option);
        var _i_50281_0:stdgo.GoInt = (0 : stdgo.GoInt);
        var _i_50064:stdgo.GoInt = (0 : stdgo.GoInt);
        var _enable_49706:Bool = false;
        var _key_49640:stdgo.GoString = ("" : stdgo.GoString);
        var _fieldBreak = false;
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    _gotoNext = 49306i32;
                } else if (__value__ == (49306i32)) {
                    var __blank__ = 0i32;
                    _fieldBreak = false;
                    _gotoNext = 49314i32;
                } else if (__value__ == (49314i32)) {
                    if (!_fieldBreak && (_env != (stdgo.Go.str() : stdgo.GoString))) {
                        _gotoNext = 49328i32;
                    } else {
                        _gotoNext = 50269i32;
                    };
                } else if (__value__ == (49328i32)) {
                    _field_49332 = (stdgo.Go.str() : stdgo.GoString)?.__copy__();
                    _i_49346 = stdgo._internal.internal.cpu.Cpu__indexByte._indexByte(_env?.__copy__(), (44 : stdgo.GoUInt8));
                    if ((_i_49346 < (0 : stdgo.GoInt) : Bool)) {
                        _gotoNext = 49382i32;
                    } else {
                        _gotoNext = 49417i32;
                    };
                } else if (__value__ == (49382i32)) {
                    {
                        final __tmp__0 = _env?.__copy__();
                        final __tmp__1 = (stdgo.Go.str() : stdgo.GoString)?.__copy__();
                        _field_49332 = __tmp__0;
                        _env = __tmp__1;
                    };
                    _gotoNext = 49460i32;
                } else if (__value__ == (49417i32)) {
                    _gotoNext = 49417i32;
                    {
                        final __tmp__0 = (_env.__slice__(0, _i_49346) : stdgo.GoString)?.__copy__();
                        final __tmp__1 = (_env.__slice__((_i_49346 + (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        _field_49332 = __tmp__0;
                        _env = __tmp__1;
                    };
                    var __blank__ = 0i32;
                    _gotoNext = 49460i32;
                } else if (__value__ == (49460i32)) {
                    if ((((_field_49332.length) < (4 : stdgo.GoInt) : Bool) || ((_field_49332.__slice__(0, (4 : stdgo.GoInt)) : stdgo.GoString) != ("cpu." : stdgo.GoString)) : Bool)) {
                        _gotoNext = 49501i32;
                    } else {
                        _gotoNext = 49521i32;
                    };
                } else if (__value__ == (49501i32)) {
                    var __blank__ = 0i32;
                    _gotoNext = 49314i32;
                } else if (__value__ == (49521i32)) {
                    _i_49346 = stdgo._internal.internal.cpu.Cpu__indexByte._indexByte(_field_49332?.__copy__(), (61 : stdgo.GoUInt8));
                    if ((_i_49346 < (0 : stdgo.GoInt) : Bool)) {
                        _gotoNext = 49558i32;
                    } else {
                        _gotoNext = 49640i32;
                    };
                } else if (__value__ == (49558i32)) {
                    stdgo.Go.print(("GODEBUG: no value specified for \"" : stdgo.GoString), _field_49332, ("\"\n" : stdgo.GoString));
                    var __blank__ = 0i32;
                    _gotoNext = 49314i32;
                } else if (__value__ == (49640i32)) {
                    {
                        final __tmp__0 = (_field_49332.__slice__((4 : stdgo.GoInt), _i_49346) : stdgo.GoString)?.__copy__();
                        final __tmp__1 = (_field_49332.__slice__((_i_49346 + (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        _key_49640 = __tmp__0;
                        _value_49645 = __tmp__1;
                    };
                    _gotoNext = 49720i32;
                } else if (__value__ == (49720i32)) {
                    {
                        final __value__ = _value_49645;
                        if (__value__ == (("on" : stdgo.GoString))) {
                            _gotoNext = 49737i32;
                        } else if (__value__ == (("off" : stdgo.GoString))) {
                            _gotoNext = 49767i32;
                        } else {
                            _gotoNext = 49799i32;
                        };
                    };
                } else if (__value__ == (49737i32)) {
                    _enable_49706 = true;
                    _gotoNext = 49921i32;
                } else if (__value__ == (49767i32)) {
                    _enable_49706 = false;
                    _gotoNext = 49921i32;
                } else if (__value__ == (49799i32)) {
                    stdgo.Go.print(("GODEBUG: value \"" : stdgo.GoString), _value_49645, ("\" not supported for cpu option \"" : stdgo.GoString), _key_49640, ("\"\n" : stdgo.GoString));
                    _gotoNext = 49314i32;
                } else if (__value__ == (49921i32)) {
                    if (_key_49640 == (("all" : stdgo.GoString))) {
                        _gotoNext = 49937i32;
                    } else {
                        _gotoNext = 50060i32;
                    };
                } else if (__value__ == (49937i32)) {
                    if ((0i32 : stdgo.GoInt) < (stdgo._internal.internal.cpu.Cpu__options._options.length)) {
                        _gotoNext = 50032i32;
                    } else {
                        _gotoNext = 50038i32;
                    };
                } else if (__value__ == (49965i32)) {
                    stdgo._internal.internal.cpu.Cpu__options._options[(_i_49946 : stdgo.GoInt)].specified = true;
                    stdgo._internal.internal.cpu.Cpu__options._options[(_i_49946 : stdgo.GoInt)].enable = _enable_49706;
                    _i_49946++;
                    _gotoNext = 50033i32;
                } else if (__value__ == (50032i32)) {
                    _i_49946 = 0i32;
                    _gotoNext = 50033i32;
                } else if (__value__ == (50033i32)) {
                    if (_i_49946 < (stdgo._internal.internal.cpu.Cpu__options._options.length)) {
                        _gotoNext = 49965i32;
                    } else {
                        _gotoNext = 50038i32;
                    };
                } else if (__value__ == (50038i32)) {
                    _gotoNext = 49314i32;
                } else if (__value__ == (50060i32)) {
                    if ((0i32 : stdgo.GoInt) < (stdgo._internal.internal.cpu.Cpu__options._options.length)) {
                        _gotoNext = 50204i32;
                    } else {
                        _gotoNext = 50210i32;
                    };
                } else if (__value__ == (50064i32)) {
                    _i_50064++;
                    _gotoNext = 50205i32;
                } else if (__value__ == (50083i32)) {
                    if (stdgo._internal.internal.cpu.Cpu__options._options[(_i_50064 : stdgo.GoInt)].name == (_key_49640)) {
                        _gotoNext = 50114i32;
                    } else {
                        _gotoNext = 50064i32;
                    };
                } else if (__value__ == (50114i32)) {
                    stdgo._internal.internal.cpu.Cpu__options._options[(_i_50064 : stdgo.GoInt)].specified = true;
                    stdgo._internal.internal.cpu.Cpu__options._options[(_i_50064 : stdgo.GoInt)].enable = _enable_49706;
                    _gotoNext = 49314i32;
                } else if (__value__ == (50204i32)) {
                    _i_50064 = 0i32;
                    _gotoNext = 50205i32;
                } else if (__value__ == (50205i32)) {
                    if (_i_50064 < (stdgo._internal.internal.cpu.Cpu__options._options.length)) {
                        _gotoNext = 50083i32;
                    } else {
                        _gotoNext = 50210i32;
                    };
                } else if (__value__ == (50210i32)) {
                    stdgo.Go.print(("GODEBUG: unknown cpu feature \"" : stdgo.GoString), _key_49640, ("\"\n" : stdgo.GoString));
                    _gotoNext = 49314i32;
                } else if (__value__ == (50269i32)) {
                    if ((0i32 : stdgo.GoInt) < (stdgo._internal.internal.cpu.Cpu__options._options.length)) {
                        _gotoNext = 50482i32;
                    } else {
                        _gotoNext = 50485i32;
                    };
                } else if (__value__ == (50295i32)) {
                    _o_50276 = stdgo._internal.internal.cpu.Cpu__options._options[(_i_50281_0 : stdgo.GoInt)];
                    if (!_o_50276.specified) {
                        _gotoNext = 50315i32;
                    } else {
                        _gotoNext = 50336i32;
                    };
                } else if (__value__ == (50315i32)) {
                    _i_50281_0++;
                    _gotoNext = 50483i32;
                } else if (__value__ == (50336i32)) {
                    if ((_o_50276.enable && !_o_50276.feature.value : Bool)) {
                        _gotoNext = 50363i32;
                    } else {
                        _gotoNext = 50460i32;
                    };
                } else if (__value__ == (50363i32)) {
                    stdgo.Go.print(("GODEBUG: can not enable \"" : stdgo.GoString), _o_50276.name, ("\", missing CPU support\n" : stdgo.GoString));
                    _i_50281_0++;
                    _gotoNext = 50483i32;
                } else if (__value__ == (50460i32)) {
                    _o_50276.feature.value = _o_50276.enable;
                    _i_50281_0++;
                    _gotoNext = 50483i32;
                } else if (__value__ == (50482i32)) {
                    {
                        final __tmp__0 = 0i32;
                        final __tmp__1 = stdgo._internal.internal.cpu.Cpu__options._options[(0i32 : stdgo.GoInt)];
                        _i_50281_0 = __tmp__0;
                        _o_50276 = __tmp__1;
                    };
                    _gotoNext = 50483i32;
                } else if (__value__ == (50483i32)) {
                    if (_i_50281_0 < (stdgo._internal.internal.cpu.Cpu__options._options.length)) {
                        _gotoNext = 50295i32;
                    } else {
                        _gotoNext = 50485i32;
                    };
                } else if (__value__ == (50485i32)) {
                    _gotoNext = -1i32;
                };
            };
        };
    }
