package stdgo._internal.internal.cpu;
function _processOptions(_env:stdgo.GoString):Void {
        var _field_28422:stdgo.GoString = ("" : stdgo.GoString);
        var _o_29366:stdgo._internal.internal.cpu.Cpu_T_option.T_option = ({} : stdgo._internal.internal.cpu.Cpu_T_option.T_option);
        var _i_29036:stdgo.GoInt = (0 : stdgo.GoInt);
        var _value_28735:stdgo.GoString = ("" : stdgo.GoString);
        var _i_28436:stdgo.GoInt = (0 : stdgo.GoInt);
        var _fieldBreak = false;
        var _i_29371_0:stdgo.GoInt = (0 : stdgo.GoInt);
        var _i_29154:stdgo.GoInt = (0 : stdgo.GoInt);
        var _enable_28796:Bool = false;
        var _key_28730:stdgo.GoString = ("" : stdgo.GoString);
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    _gotoNext = 28396i32;
                } else if (__value__ == (28396i32)) {
                    var __blank__ = 0i32;
                    _fieldBreak = false;
                    _gotoNext = 28404i32;
                } else if (__value__ == (28404i32)) {
                    if (!_fieldBreak && (_env != stdgo.Go.str())) {
                        _gotoNext = 28418i32;
                    } else {
                        _gotoNext = 29359i32;
                    };
                } else if (__value__ == (28418i32)) {
                    _field_28422 = stdgo.Go.str()?.__copy__();
                    _i_28436 = stdgo._internal.internal.cpu.Cpu__indexByte._indexByte(_env?.__copy__(), (44 : stdgo.GoUInt8));
                    if ((_i_28436 < (0 : stdgo.GoInt) : Bool)) {
                        _gotoNext = 28472i32;
                    } else {
                        _gotoNext = 28507i32;
                    };
                } else if (__value__ == (28472i32)) {
                    {
                        final __tmp__0 = _env?.__copy__();
                        final __tmp__1 = stdgo.Go.str()?.__copy__();
                        _field_28422 = __tmp__0;
                        _env = __tmp__1;
                    };
                    _gotoNext = 28550i32;
                } else if (__value__ == (28507i32)) {
                    _gotoNext = 28507i32;
                    {
                        final __tmp__0 = (_env.__slice__(0, _i_28436) : stdgo.GoString)?.__copy__();
                        final __tmp__1 = (_env.__slice__((_i_28436 + (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        _field_28422 = __tmp__0;
                        _env = __tmp__1;
                    };
                    var __blank__ = 0i32;
                    _gotoNext = 28550i32;
                } else if (__value__ == (28550i32)) {
                    if ((((_field_28422.length) < (4 : stdgo.GoInt) : Bool) || ((_field_28422.__slice__(0, (4 : stdgo.GoInt)) : stdgo.GoString) != ("cpu." : stdgo.GoString)) : Bool)) {
                        _gotoNext = 28591i32;
                    } else {
                        _gotoNext = 28611i32;
                    };
                } else if (__value__ == (28591i32)) {
                    var __blank__ = 0i32;
                    _gotoNext = 28404i32;
                } else if (__value__ == (28611i32)) {
                    _i_28436 = stdgo._internal.internal.cpu.Cpu__indexByte._indexByte(_field_28422?.__copy__(), (61 : stdgo.GoUInt8));
                    if ((_i_28436 < (0 : stdgo.GoInt) : Bool)) {
                        _gotoNext = 28648i32;
                    } else {
                        _gotoNext = 28730i32;
                    };
                } else if (__value__ == (28648i32)) {
                    stdgo.Go.print(("GODEBUG: no value specified for \"" : stdgo.GoString), _field_28422, ("\"\n" : stdgo.GoString));
                    var __blank__ = 0i32;
                    _gotoNext = 28404i32;
                } else if (__value__ == (28730i32)) {
                    {
                        final __tmp__0 = (_field_28422.__slice__((4 : stdgo.GoInt), _i_28436) : stdgo.GoString)?.__copy__();
                        final __tmp__1 = (_field_28422.__slice__((_i_28436 + (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        _key_28730 = __tmp__0;
                        _value_28735 = __tmp__1;
                    };
                    _gotoNext = 28810i32;
                } else if (__value__ == (28810i32)) {
                    {
                        final __value__ = _value_28735;
                        if (__value__ == (("on" : stdgo.GoString))) {
                            _gotoNext = 28827i32;
                        } else if (__value__ == (("off" : stdgo.GoString))) {
                            _gotoNext = 28857i32;
                        } else {
                            _gotoNext = 28889i32;
                        };
                    };
                } else if (__value__ == (28827i32)) {
                    _enable_28796 = true;
                    _gotoNext = 29011i32;
                } else if (__value__ == (28857i32)) {
                    _enable_28796 = false;
                    _gotoNext = 29011i32;
                } else if (__value__ == (28889i32)) {
                    stdgo.Go.print(("GODEBUG: value \"" : stdgo.GoString), _value_28735, ("\" not supported for cpu option \"" : stdgo.GoString), _key_28730, ("\"\n" : stdgo.GoString));
                    _gotoNext = 28404i32;
                } else if (__value__ == (29011i32)) {
                    if (_key_28730 == (("all" : stdgo.GoString))) {
                        _gotoNext = 29027i32;
                    } else {
                        _gotoNext = 29150i32;
                    };
                } else if (__value__ == (29027i32)) {
                    if ((0i32 : stdgo.GoInt) < (stdgo._internal.internal.cpu.Cpu__options._options.length)) {
                        _gotoNext = 29122i32;
                    } else {
                        _gotoNext = 29128i32;
                    };
                } else if (__value__ == (29055i32)) {
                    stdgo._internal.internal.cpu.Cpu__options._options[(_i_29036 : stdgo.GoInt)].specified = true;
                    stdgo._internal.internal.cpu.Cpu__options._options[(_i_29036 : stdgo.GoInt)].enable = _enable_28796;
                    _i_29036++;
                    _gotoNext = 29123i32;
                } else if (__value__ == (29122i32)) {
                    _i_29036 = 0i32;
                    _gotoNext = 29123i32;
                } else if (__value__ == (29123i32)) {
                    if (_i_29036 < (stdgo._internal.internal.cpu.Cpu__options._options.length)) {
                        _gotoNext = 29055i32;
                    } else {
                        _gotoNext = 29128i32;
                    };
                } else if (__value__ == (29128i32)) {
                    _gotoNext = 28404i32;
                } else if (__value__ == (29150i32)) {
                    if ((0i32 : stdgo.GoInt) < (stdgo._internal.internal.cpu.Cpu__options._options.length)) {
                        _gotoNext = 29294i32;
                    } else {
                        _gotoNext = 29300i32;
                    };
                } else if (__value__ == (29154i32)) {
                    _i_29154++;
                    _gotoNext = 29295i32;
                } else if (__value__ == (29173i32)) {
                    if (stdgo._internal.internal.cpu.Cpu__options._options[(_i_29154 : stdgo.GoInt)].name == (_key_28730)) {
                        _gotoNext = 29204i32;
                    } else {
                        _gotoNext = 29154i32;
                    };
                } else if (__value__ == (29204i32)) {
                    stdgo._internal.internal.cpu.Cpu__options._options[(_i_29154 : stdgo.GoInt)].specified = true;
                    stdgo._internal.internal.cpu.Cpu__options._options[(_i_29154 : stdgo.GoInt)].enable = _enable_28796;
                    _gotoNext = 28404i32;
                } else if (__value__ == (29294i32)) {
                    _i_29154 = 0i32;
                    _gotoNext = 29295i32;
                } else if (__value__ == (29295i32)) {
                    if (_i_29154 < (stdgo._internal.internal.cpu.Cpu__options._options.length)) {
                        _gotoNext = 29173i32;
                    } else {
                        _gotoNext = 29300i32;
                    };
                } else if (__value__ == (29300i32)) {
                    stdgo.Go.print(("GODEBUG: unknown cpu feature \"" : stdgo.GoString), _key_28730, ("\"\n" : stdgo.GoString));
                    _gotoNext = 28404i32;
                } else if (__value__ == (29359i32)) {
                    if ((0i32 : stdgo.GoInt) < (stdgo._internal.internal.cpu.Cpu__options._options.length)) {
                        _gotoNext = 29572i32;
                    } else {
                        _gotoNext = 29575i32;
                    };
                } else if (__value__ == (29385i32)) {
                    _o_29366 = stdgo._internal.internal.cpu.Cpu__options._options[(_i_29371_0 : stdgo.GoInt)];
                    if (!_o_29366.specified) {
                        _gotoNext = 29405i32;
                    } else {
                        _gotoNext = 29426i32;
                    };
                } else if (__value__ == (29405i32)) {
                    _i_29371_0++;
                    _gotoNext = 29573i32;
                } else if (__value__ == (29426i32)) {
                    if ((_o_29366.enable && !_o_29366.feature.value : Bool)) {
                        _gotoNext = 29453i32;
                    } else {
                        _gotoNext = 29550i32;
                    };
                } else if (__value__ == (29453i32)) {
                    stdgo.Go.print(("GODEBUG: can not enable \"" : stdgo.GoString), _o_29366.name, ("\", missing CPU support\n" : stdgo.GoString));
                    _i_29371_0++;
                    _gotoNext = 29573i32;
                } else if (__value__ == (29550i32)) {
                    _o_29366.feature.value = _o_29366.enable;
                    _i_29371_0++;
                    _gotoNext = 29573i32;
                } else if (__value__ == (29572i32)) {
                    {
                        final __tmp__0 = 0i32;
                        final __tmp__1 = stdgo._internal.internal.cpu.Cpu__options._options[(0i32 : stdgo.GoInt)];
                        _i_29371_0 = __tmp__0;
                        _o_29366 = __tmp__1;
                    };
                    _gotoNext = 29573i32;
                } else if (__value__ == (29573i32)) {
                    if (_i_29371_0 < (stdgo._internal.internal.cpu.Cpu__options._options.length)) {
                        _gotoNext = 29385i32;
                    } else {
                        _gotoNext = 29575i32;
                    };
                } else if (__value__ == (29575i32)) {
                    _gotoNext = -1i32;
                };
            };
        };
    }
