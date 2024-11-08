package stdgo._internal.internal.cpu;
function _processOptions(_env:stdgo.GoString):Void {
        var _fieldBreak = false;
        var _i_55371_0:stdgo.GoInt = (0 : stdgo.GoInt);
        var _i_55154:stdgo.GoInt = (0 : stdgo.GoInt);
        var _enable_54796:Bool = false;
        var _value_54735:stdgo.GoString = ("" : stdgo.GoString);
        var _key_54730:stdgo.GoString = ("" : stdgo.GoString);
        var _field_54422:stdgo.GoString = ("" : stdgo.GoString);
        var _i_54436:stdgo.GoInt = (0 : stdgo.GoInt);
        var _o_55366:stdgo._internal.internal.cpu.Cpu_T_option.T_option = ({} : stdgo._internal.internal.cpu.Cpu_T_option.T_option);
        var _i_55036:stdgo.GoInt = (0 : stdgo.GoInt);
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    _gotoNext = 54396i32;
                } else if (__value__ == (54396i32)) {
                    var __blank__ = 0i32;
                    _fieldBreak = false;
                    _gotoNext = 54404i32;
                } else if (__value__ == (54404i32)) {
                    if (!_fieldBreak && (_env != stdgo.Go.str())) {
                        _gotoNext = 54418i32;
                    } else {
                        _gotoNext = 55359i32;
                    };
                } else if (__value__ == (54418i32)) {
                    _field_54422 = stdgo.Go.str()?.__copy__();
                    _i_54436 = stdgo._internal.internal.cpu.Cpu__indexByte._indexByte(_env?.__copy__(), (44 : stdgo.GoUInt8));
                    if ((_i_54436 < (0 : stdgo.GoInt) : Bool)) {
                        _gotoNext = 54472i32;
                    } else {
                        _gotoNext = 54507i32;
                    };
                } else if (__value__ == (54472i32)) {
                    {
                        final __tmp__0 = _env?.__copy__();
                        final __tmp__1 = stdgo.Go.str()?.__copy__();
                        _field_54422 = __tmp__0;
                        _env = __tmp__1;
                    };
                    _gotoNext = 54550i32;
                } else if (__value__ == (54507i32)) {
                    _gotoNext = 54507i32;
                    {
                        final __tmp__0 = (_env.__slice__(0, _i_54436) : stdgo.GoString)?.__copy__();
                        final __tmp__1 = (_env.__slice__((_i_54436 + (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        _field_54422 = __tmp__0;
                        _env = __tmp__1;
                    };
                    var __blank__ = 0i32;
                    _gotoNext = 54550i32;
                } else if (__value__ == (54550i32)) {
                    if ((((_field_54422.length) < (4 : stdgo.GoInt) : Bool) || ((_field_54422.__slice__(0, (4 : stdgo.GoInt)) : stdgo.GoString) != ("cpu." : stdgo.GoString)) : Bool)) {
                        _gotoNext = 54591i32;
                    } else {
                        _gotoNext = 54611i32;
                    };
                } else if (__value__ == (54591i32)) {
                    var __blank__ = 0i32;
                    _gotoNext = 54404i32;
                } else if (__value__ == (54611i32)) {
                    _i_54436 = stdgo._internal.internal.cpu.Cpu__indexByte._indexByte(_field_54422?.__copy__(), (61 : stdgo.GoUInt8));
                    if ((_i_54436 < (0 : stdgo.GoInt) : Bool)) {
                        _gotoNext = 54648i32;
                    } else {
                        _gotoNext = 54730i32;
                    };
                } else if (__value__ == (54648i32)) {
                    stdgo.Go.print(("GODEBUG: no value specified for \"" : stdgo.GoString), _field_54422, ("\"\n" : stdgo.GoString));
                    var __blank__ = 0i32;
                    _gotoNext = 54404i32;
                } else if (__value__ == (54730i32)) {
                    {
                        final __tmp__0 = (_field_54422.__slice__((4 : stdgo.GoInt), _i_54436) : stdgo.GoString)?.__copy__();
                        final __tmp__1 = (_field_54422.__slice__((_i_54436 + (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        _key_54730 = __tmp__0;
                        _value_54735 = __tmp__1;
                    };
                    var __blank__ = 0i32;
                    _gotoNext = 54810i32;
                } else if (__value__ == (54810i32)) {
                    {
                        final __value__ = _value_54735;
                        if (__value__ == (("on" : stdgo.GoString))) {
                            _gotoNext = 54827i32;
                        } else if (__value__ == (("off" : stdgo.GoString))) {
                            _gotoNext = 54857i32;
                        } else {
                            _gotoNext = 54889i32;
                        };
                    };
                } else if (__value__ == (54827i32)) {
                    _enable_54796 = true;
                    _gotoNext = 55011i32;
                } else if (__value__ == (54857i32)) {
                    _enable_54796 = false;
                    _gotoNext = 55011i32;
                } else if (__value__ == (54889i32)) {
                    stdgo.Go.print(("GODEBUG: value \"" : stdgo.GoString), _value_54735, ("\" not supported for cpu option \"" : stdgo.GoString), _key_54730, ("\"\n" : stdgo.GoString));
                    _gotoNext = 54404i32;
                } else if (__value__ == (55011i32)) {
                    if (_key_54730 == (("all" : stdgo.GoString))) {
                        _gotoNext = 55027i32;
                    } else {
                        _gotoNext = 55150i32;
                    };
                } else if (__value__ == (55027i32)) {
                    if ((0i32 : stdgo.GoInt) < (stdgo._internal.internal.cpu.Cpu__options._options.length)) {
                        _gotoNext = 55122i32;
                    } else {
                        _gotoNext = 55128i32;
                    };
                } else if (__value__ == (55055i32)) {
                    stdgo._internal.internal.cpu.Cpu__options._options[(_i_55036 : stdgo.GoInt)].specified = true;
                    stdgo._internal.internal.cpu.Cpu__options._options[(_i_55036 : stdgo.GoInt)].enable = _enable_54796;
                    _i_55036++;
                    _gotoNext = 55123i32;
                } else if (__value__ == (55122i32)) {
                    _i_55036 = 0i32;
                    _gotoNext = 55123i32;
                } else if (__value__ == (55123i32)) {
                    if (_i_55036 < (stdgo._internal.internal.cpu.Cpu__options._options.length)) {
                        _gotoNext = 55055i32;
                    } else {
                        _gotoNext = 55128i32;
                    };
                } else if (__value__ == (55128i32)) {
                    _gotoNext = 54404i32;
                } else if (__value__ == (55150i32)) {
                    if ((0i32 : stdgo.GoInt) < (stdgo._internal.internal.cpu.Cpu__options._options.length)) {
                        _gotoNext = 55294i32;
                    } else {
                        _gotoNext = 55300i32;
                    };
                } else if (__value__ == (55154i32)) {
                    _i_55154++;
                    _gotoNext = 55295i32;
                } else if (__value__ == (55173i32)) {
                    if (stdgo._internal.internal.cpu.Cpu__options._options[(_i_55154 : stdgo.GoInt)].name == (_key_54730)) {
                        _gotoNext = 55204i32;
                    } else {
                        _gotoNext = 55154i32;
                    };
                } else if (__value__ == (55204i32)) {
                    stdgo._internal.internal.cpu.Cpu__options._options[(_i_55154 : stdgo.GoInt)].specified = true;
                    stdgo._internal.internal.cpu.Cpu__options._options[(_i_55154 : stdgo.GoInt)].enable = _enable_54796;
                    _gotoNext = 54404i32;
                } else if (__value__ == (55294i32)) {
                    _i_55154 = 0i32;
                    _gotoNext = 55295i32;
                } else if (__value__ == (55295i32)) {
                    if (_i_55154 < (stdgo._internal.internal.cpu.Cpu__options._options.length)) {
                        _gotoNext = 55173i32;
                    } else {
                        _gotoNext = 55300i32;
                    };
                } else if (__value__ == (55300i32)) {
                    stdgo.Go.print(("GODEBUG: unknown cpu feature \"" : stdgo.GoString), _key_54730, ("\"\n" : stdgo.GoString));
                    _gotoNext = 54404i32;
                } else if (__value__ == (55359i32)) {
                    if ((0i32 : stdgo.GoInt) < (stdgo._internal.internal.cpu.Cpu__options._options.length)) {
                        _gotoNext = 55572i32;
                    } else {
                        _gotoNext = 55575i32;
                    };
                } else if (__value__ == (55385i32)) {
                    _o_55366 = stdgo._internal.internal.cpu.Cpu__options._options[(_i_55371_0 : stdgo.GoInt)];
                    if (!_o_55366.specified) {
                        _gotoNext = 55405i32;
                    } else {
                        _gotoNext = 55426i32;
                    };
                } else if (__value__ == (55405i32)) {
                    _i_55371_0++;
                    _gotoNext = 55573i32;
                } else if (__value__ == (55426i32)) {
                    if ((_o_55366.enable && !_o_55366.feature.value : Bool)) {
                        _gotoNext = 55453i32;
                    } else {
                        _gotoNext = 55550i32;
                    };
                } else if (__value__ == (55453i32)) {
                    stdgo.Go.print(("GODEBUG: can not enable \"" : stdgo.GoString), _o_55366.name, ("\", missing CPU support\n" : stdgo.GoString));
                    _i_55371_0++;
                    _gotoNext = 55573i32;
                } else if (__value__ == (55550i32)) {
                    _o_55366.feature.value = _o_55366.enable;
                    _i_55371_0++;
                    _gotoNext = 55573i32;
                } else if (__value__ == (55572i32)) {
                    {
                        final __tmp__0 = 0i32;
                        final __tmp__1 = stdgo._internal.internal.cpu.Cpu__options._options[(0i32 : stdgo.GoInt)];
                        _i_55371_0 = __tmp__0;
                        _o_55366 = __tmp__1;
                    };
                    _gotoNext = 55573i32;
                } else if (__value__ == (55573i32)) {
                    if (_i_55371_0 < (stdgo._internal.internal.cpu.Cpu__options._options.length)) {
                        _gotoNext = 55385i32;
                    } else {
                        _gotoNext = 55575i32;
                    };
                } else if (__value__ == (55575i32)) {
                    _gotoNext = -1i32;
                };
            };
        };
    }
