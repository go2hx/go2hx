package stdgo._internal.internal.cpu;
function _processOptions(_env:stdgo.GoString):Void {
        var _fieldBreak = false;
        var _i_35128:stdgo.GoInt = (0 : stdgo.GoInt);
        var _enable_34770:Bool = false;
        var _key_34704:stdgo.GoString = ("" : stdgo.GoString);
        var _field_34396:stdgo.GoString = ("" : stdgo.GoString);
        var _o_35340:stdgo._internal.internal.cpu.Cpu_T_option.T_option = ({} : stdgo._internal.internal.cpu.Cpu_T_option.T_option);
        var _i_35345_0:stdgo.GoInt = (0 : stdgo.GoInt);
        var _i_35010:stdgo.GoInt = (0 : stdgo.GoInt);
        var _value_34709:stdgo.GoString = ("" : stdgo.GoString);
        var _i_34410:stdgo.GoInt = (0 : stdgo.GoInt);
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    _gotoNext = 34370i32;
                } else if (__value__ == (34370i32)) {
                    var __blank__ = 0i32;
                    _fieldBreak = false;
                    _gotoNext = 34378i32;
                } else if (__value__ == (34378i32)) {
                    if (!_fieldBreak && (_env != stdgo.Go.str())) {
                        _gotoNext = 34392i32;
                    } else {
                        _gotoNext = 35333i32;
                    };
                } else if (__value__ == (34392i32)) {
                    _field_34396 = stdgo.Go.str()?.__copy__();
                    _i_34410 = stdgo._internal.internal.cpu.Cpu__indexByte._indexByte(_env?.__copy__(), (44 : stdgo.GoUInt8));
                    if ((_i_34410 < (0 : stdgo.GoInt) : Bool)) {
                        _gotoNext = 34446i32;
                    } else {
                        _gotoNext = 34481i32;
                    };
                } else if (__value__ == (34446i32)) {
                    {
                        final __tmp__0 = _env?.__copy__();
                        final __tmp__1 = stdgo.Go.str()?.__copy__();
                        _field_34396 = __tmp__0;
                        _env = __tmp__1;
                    };
                    _gotoNext = 34524i32;
                } else if (__value__ == (34481i32)) {
                    _gotoNext = 34481i32;
                    {
                        final __tmp__0 = (_env.__slice__(0, _i_34410) : stdgo.GoString)?.__copy__();
                        final __tmp__1 = (_env.__slice__((_i_34410 + (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        _field_34396 = __tmp__0;
                        _env = __tmp__1;
                    };
                    var __blank__ = 0i32;
                    _gotoNext = 34524i32;
                } else if (__value__ == (34524i32)) {
                    if ((((_field_34396.length) < (4 : stdgo.GoInt) : Bool) || ((_field_34396.__slice__(0, (4 : stdgo.GoInt)) : stdgo.GoString) != ("cpu." : stdgo.GoString)) : Bool)) {
                        _gotoNext = 34565i32;
                    } else {
                        _gotoNext = 34585i32;
                    };
                } else if (__value__ == (34565i32)) {
                    var __blank__ = 0i32;
                    _gotoNext = 34378i32;
                } else if (__value__ == (34585i32)) {
                    _i_34410 = stdgo._internal.internal.cpu.Cpu__indexByte._indexByte(_field_34396?.__copy__(), (61 : stdgo.GoUInt8));
                    if ((_i_34410 < (0 : stdgo.GoInt) : Bool)) {
                        _gotoNext = 34622i32;
                    } else {
                        _gotoNext = 34704i32;
                    };
                } else if (__value__ == (34622i32)) {
                    stdgo.Go.print(("GODEBUG: no value specified for \"" : stdgo.GoString), _field_34396, ("\"\n" : stdgo.GoString));
                    var __blank__ = 0i32;
                    _gotoNext = 34378i32;
                } else if (__value__ == (34704i32)) {
                    {
                        final __tmp__0 = (_field_34396.__slice__((4 : stdgo.GoInt), _i_34410) : stdgo.GoString)?.__copy__();
                        final __tmp__1 = (_field_34396.__slice__((_i_34410 + (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        _key_34704 = __tmp__0;
                        _value_34709 = __tmp__1;
                    };
                    _gotoNext = 34784i32;
                } else if (__value__ == (34784i32)) {
                    {
                        final __value__ = _value_34709;
                        if (__value__ == (("on" : stdgo.GoString))) {
                            _gotoNext = 34801i32;
                        } else if (__value__ == (("off" : stdgo.GoString))) {
                            _gotoNext = 34831i32;
                        } else {
                            _gotoNext = 34863i32;
                        };
                    };
                } else if (__value__ == (34801i32)) {
                    _enable_34770 = true;
                    _gotoNext = 34985i32;
                } else if (__value__ == (34831i32)) {
                    _enable_34770 = false;
                    _gotoNext = 34985i32;
                } else if (__value__ == (34863i32)) {
                    stdgo.Go.print(("GODEBUG: value \"" : stdgo.GoString), _value_34709, ("\" not supported for cpu option \"" : stdgo.GoString), _key_34704, ("\"\n" : stdgo.GoString));
                    _gotoNext = 34378i32;
                } else if (__value__ == (34985i32)) {
                    if (_key_34704 == (("all" : stdgo.GoString))) {
                        _gotoNext = 35001i32;
                    } else {
                        _gotoNext = 35124i32;
                    };
                } else if (__value__ == (35001i32)) {
                    if ((0i32 : stdgo.GoInt) < (stdgo._internal.internal.cpu.Cpu__options._options.length)) {
                        _gotoNext = 35096i32;
                    } else {
                        _gotoNext = 35102i32;
                    };
                } else if (__value__ == (35029i32)) {
                    stdgo._internal.internal.cpu.Cpu__options._options[(_i_35010 : stdgo.GoInt)].specified = true;
                    stdgo._internal.internal.cpu.Cpu__options._options[(_i_35010 : stdgo.GoInt)].enable = _enable_34770;
                    _i_35010++;
                    _gotoNext = 35097i32;
                } else if (__value__ == (35096i32)) {
                    _i_35010 = 0i32;
                    _gotoNext = 35097i32;
                } else if (__value__ == (35097i32)) {
                    if (_i_35010 < (stdgo._internal.internal.cpu.Cpu__options._options.length)) {
                        _gotoNext = 35029i32;
                    } else {
                        _gotoNext = 35102i32;
                    };
                } else if (__value__ == (35102i32)) {
                    _gotoNext = 34378i32;
                } else if (__value__ == (35124i32)) {
                    if ((0i32 : stdgo.GoInt) < (stdgo._internal.internal.cpu.Cpu__options._options.length)) {
                        _gotoNext = 35268i32;
                    } else {
                        _gotoNext = 35274i32;
                    };
                } else if (__value__ == (35128i32)) {
                    _i_35128++;
                    _gotoNext = 35269i32;
                } else if (__value__ == (35147i32)) {
                    if (stdgo._internal.internal.cpu.Cpu__options._options[(_i_35128 : stdgo.GoInt)].name == (_key_34704)) {
                        _gotoNext = 35178i32;
                    } else {
                        _gotoNext = 35128i32;
                    };
                } else if (__value__ == (35178i32)) {
                    stdgo._internal.internal.cpu.Cpu__options._options[(_i_35128 : stdgo.GoInt)].specified = true;
                    stdgo._internal.internal.cpu.Cpu__options._options[(_i_35128 : stdgo.GoInt)].enable = _enable_34770;
                    _gotoNext = 34378i32;
                } else if (__value__ == (35268i32)) {
                    _i_35128 = 0i32;
                    _gotoNext = 35269i32;
                } else if (__value__ == (35269i32)) {
                    if (_i_35128 < (stdgo._internal.internal.cpu.Cpu__options._options.length)) {
                        _gotoNext = 35147i32;
                    } else {
                        _gotoNext = 35274i32;
                    };
                } else if (__value__ == (35274i32)) {
                    stdgo.Go.print(("GODEBUG: unknown cpu feature \"" : stdgo.GoString), _key_34704, ("\"\n" : stdgo.GoString));
                    _gotoNext = 34378i32;
                } else if (__value__ == (35333i32)) {
                    if ((0i32 : stdgo.GoInt) < (stdgo._internal.internal.cpu.Cpu__options._options.length)) {
                        _gotoNext = 35546i32;
                    } else {
                        _gotoNext = 35549i32;
                    };
                } else if (__value__ == (35359i32)) {
                    _o_35340 = stdgo._internal.internal.cpu.Cpu__options._options[(_i_35345_0 : stdgo.GoInt)];
                    if (!_o_35340.specified) {
                        _gotoNext = 35379i32;
                    } else {
                        _gotoNext = 35400i32;
                    };
                } else if (__value__ == (35379i32)) {
                    _i_35345_0++;
                    _gotoNext = 35547i32;
                } else if (__value__ == (35400i32)) {
                    if ((_o_35340.enable && !_o_35340.feature.value : Bool)) {
                        _gotoNext = 35427i32;
                    } else {
                        _gotoNext = 35524i32;
                    };
                } else if (__value__ == (35427i32)) {
                    stdgo.Go.print(("GODEBUG: can not enable \"" : stdgo.GoString), _o_35340.name, ("\", missing CPU support\n" : stdgo.GoString));
                    _i_35345_0++;
                    _gotoNext = 35547i32;
                } else if (__value__ == (35524i32)) {
                    _o_35340.feature.value = _o_35340.enable;
                    _i_35345_0++;
                    _gotoNext = 35547i32;
                } else if (__value__ == (35546i32)) {
                    {
                        final __tmp__0 = 0i32;
                        final __tmp__1 = stdgo._internal.internal.cpu.Cpu__options._options[(0i32 : stdgo.GoInt)];
                        _i_35345_0 = __tmp__0;
                        _o_35340 = __tmp__1;
                    };
                    _gotoNext = 35547i32;
                } else if (__value__ == (35547i32)) {
                    if (_i_35345_0 < (stdgo._internal.internal.cpu.Cpu__options._options.length)) {
                        _gotoNext = 35359i32;
                    } else {
                        _gotoNext = 35549i32;
                    };
                } else if (__value__ == (35549i32)) {
                    _gotoNext = -1i32;
                };
            };
        };
    }
