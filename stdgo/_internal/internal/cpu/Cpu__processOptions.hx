package stdgo._internal.internal.cpu;
function _processOptions(_env:stdgo.GoString):Void {
        var _i_33969_0:stdgo.GoInt = (0 : stdgo.GoInt);
        var _i_33752:stdgo.GoInt = (0 : stdgo.GoInt);
        var _enable_33394:Bool = false;
        var _value_33333:stdgo.GoString = ("" : stdgo.GoString);
        var _key_33328:stdgo.GoString = ("" : stdgo.GoString);
        var _field_33020:stdgo.GoString = ("" : stdgo.GoString);
        var _fieldBreak = false;
        var _o_33964:stdgo._internal.internal.cpu.Cpu_T_option.T_option = ({} : stdgo._internal.internal.cpu.Cpu_T_option.T_option);
        var _i_33634:stdgo.GoInt = (0 : stdgo.GoInt);
        var _i_33034:stdgo.GoInt = (0 : stdgo.GoInt);
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    _gotoNext = 32994i32;
                } else if (__value__ == (32994i32)) {
                    var __blank__ = 0i32;
                    _fieldBreak = false;
                    _gotoNext = 33002i32;
                } else if (__value__ == (33002i32)) {
                    if (!_fieldBreak && (_env != stdgo.Go.str())) {
                        _gotoNext = 33016i32;
                    } else {
                        _gotoNext = 33957i32;
                    };
                } else if (__value__ == (33016i32)) {
                    _field_33020 = stdgo.Go.str()?.__copy__();
                    _i_33034 = stdgo._internal.internal.cpu.Cpu__indexByte._indexByte(_env?.__copy__(), (44 : stdgo.GoUInt8));
                    if ((_i_33034 < (0 : stdgo.GoInt) : Bool)) {
                        _gotoNext = 33070i32;
                    } else {
                        _gotoNext = 33105i32;
                    };
                } else if (__value__ == (33070i32)) {
                    {
                        final __tmp__0 = _env?.__copy__();
                        final __tmp__1 = stdgo.Go.str()?.__copy__();
                        _field_33020 = __tmp__0;
                        _env = __tmp__1;
                    };
                    _gotoNext = 33148i32;
                } else if (__value__ == (33105i32)) {
                    _gotoNext = 33105i32;
                    {
                        final __tmp__0 = (_env.__slice__(0, _i_33034) : stdgo.GoString)?.__copy__();
                        final __tmp__1 = (_env.__slice__((_i_33034 + (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        _field_33020 = __tmp__0;
                        _env = __tmp__1;
                    };
                    var __blank__ = 0i32;
                    _gotoNext = 33148i32;
                } else if (__value__ == (33148i32)) {
                    if ((((_field_33020.length) < (4 : stdgo.GoInt) : Bool) || ((_field_33020.__slice__(0, (4 : stdgo.GoInt)) : stdgo.GoString) != ("cpu." : stdgo.GoString)) : Bool)) {
                        _gotoNext = 33189i32;
                    } else {
                        _gotoNext = 33209i32;
                    };
                } else if (__value__ == (33189i32)) {
                    var __blank__ = 0i32;
                    _gotoNext = 33002i32;
                } else if (__value__ == (33209i32)) {
                    _i_33034 = stdgo._internal.internal.cpu.Cpu__indexByte._indexByte(_field_33020?.__copy__(), (61 : stdgo.GoUInt8));
                    if ((_i_33034 < (0 : stdgo.GoInt) : Bool)) {
                        _gotoNext = 33246i32;
                    } else {
                        _gotoNext = 33328i32;
                    };
                } else if (__value__ == (33246i32)) {
                    stdgo.Go.print(("GODEBUG: no value specified for \"" : stdgo.GoString), _field_33020, ("\"\n" : stdgo.GoString));
                    var __blank__ = 0i32;
                    _gotoNext = 33002i32;
                } else if (__value__ == (33328i32)) {
                    {
                        final __tmp__0 = (_field_33020.__slice__((4 : stdgo.GoInt), _i_33034) : stdgo.GoString)?.__copy__();
                        final __tmp__1 = (_field_33020.__slice__((_i_33034 + (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        _key_33328 = __tmp__0;
                        _value_33333 = __tmp__1;
                    };
                    _gotoNext = 33408i32;
                } else if (__value__ == (33408i32)) {
                    {
                        final __value__ = _value_33333;
                        if (__value__ == (("on" : stdgo.GoString))) {
                            _gotoNext = 33425i32;
                        } else if (__value__ == (("off" : stdgo.GoString))) {
                            _gotoNext = 33455i32;
                        } else {
                            _gotoNext = 33487i32;
                        };
                    };
                } else if (__value__ == (33425i32)) {
                    _enable_33394 = true;
                    _gotoNext = 33609i32;
                } else if (__value__ == (33455i32)) {
                    _enable_33394 = false;
                    _gotoNext = 33609i32;
                } else if (__value__ == (33487i32)) {
                    stdgo.Go.print(("GODEBUG: value \"" : stdgo.GoString), _value_33333, ("\" not supported for cpu option \"" : stdgo.GoString), _key_33328, ("\"\n" : stdgo.GoString));
                    _gotoNext = 33002i32;
                } else if (__value__ == (33609i32)) {
                    if (_key_33328 == (("all" : stdgo.GoString))) {
                        _gotoNext = 33625i32;
                    } else {
                        _gotoNext = 33748i32;
                    };
                } else if (__value__ == (33625i32)) {
                    if ((0i32 : stdgo.GoInt) < (stdgo._internal.internal.cpu.Cpu__options._options.length)) {
                        _gotoNext = 33720i32;
                    } else {
                        _gotoNext = 33726i32;
                    };
                } else if (__value__ == (33653i32)) {
                    stdgo._internal.internal.cpu.Cpu__options._options[(_i_33634 : stdgo.GoInt)].specified = true;
                    stdgo._internal.internal.cpu.Cpu__options._options[(_i_33634 : stdgo.GoInt)].enable = _enable_33394;
                    _i_33634++;
                    _gotoNext = 33721i32;
                } else if (__value__ == (33720i32)) {
                    _i_33634 = 0i32;
                    _gotoNext = 33721i32;
                } else if (__value__ == (33721i32)) {
                    if (_i_33634 < (stdgo._internal.internal.cpu.Cpu__options._options.length)) {
                        _gotoNext = 33653i32;
                    } else {
                        _gotoNext = 33726i32;
                    };
                } else if (__value__ == (33726i32)) {
                    _gotoNext = 33002i32;
                } else if (__value__ == (33748i32)) {
                    if ((0i32 : stdgo.GoInt) < (stdgo._internal.internal.cpu.Cpu__options._options.length)) {
                        _gotoNext = 33892i32;
                    } else {
                        _gotoNext = 33898i32;
                    };
                } else if (__value__ == (33752i32)) {
                    _i_33752++;
                    _gotoNext = 33893i32;
                } else if (__value__ == (33771i32)) {
                    if (stdgo._internal.internal.cpu.Cpu__options._options[(_i_33752 : stdgo.GoInt)].name == (_key_33328)) {
                        _gotoNext = 33802i32;
                    } else {
                        _gotoNext = 33752i32;
                    };
                } else if (__value__ == (33802i32)) {
                    stdgo._internal.internal.cpu.Cpu__options._options[(_i_33752 : stdgo.GoInt)].specified = true;
                    stdgo._internal.internal.cpu.Cpu__options._options[(_i_33752 : stdgo.GoInt)].enable = _enable_33394;
                    _gotoNext = 33002i32;
                } else if (__value__ == (33892i32)) {
                    _i_33752 = 0i32;
                    _gotoNext = 33893i32;
                } else if (__value__ == (33893i32)) {
                    if (_i_33752 < (stdgo._internal.internal.cpu.Cpu__options._options.length)) {
                        _gotoNext = 33771i32;
                    } else {
                        _gotoNext = 33898i32;
                    };
                } else if (__value__ == (33898i32)) {
                    stdgo.Go.print(("GODEBUG: unknown cpu feature \"" : stdgo.GoString), _key_33328, ("\"\n" : stdgo.GoString));
                    _gotoNext = 33002i32;
                } else if (__value__ == (33957i32)) {
                    if ((0i32 : stdgo.GoInt) < (stdgo._internal.internal.cpu.Cpu__options._options.length)) {
                        _gotoNext = 34170i32;
                    } else {
                        _gotoNext = 34173i32;
                    };
                } else if (__value__ == (33983i32)) {
                    _o_33964 = stdgo._internal.internal.cpu.Cpu__options._options[(_i_33969_0 : stdgo.GoInt)];
                    if (!_o_33964.specified) {
                        _gotoNext = 34003i32;
                    } else {
                        _gotoNext = 34024i32;
                    };
                } else if (__value__ == (34003i32)) {
                    _i_33969_0++;
                    _gotoNext = 34171i32;
                } else if (__value__ == (34024i32)) {
                    if ((_o_33964.enable && !_o_33964.feature.value : Bool)) {
                        _gotoNext = 34051i32;
                    } else {
                        _gotoNext = 34148i32;
                    };
                } else if (__value__ == (34051i32)) {
                    stdgo.Go.print(("GODEBUG: can not enable \"" : stdgo.GoString), _o_33964.name, ("\", missing CPU support\n" : stdgo.GoString));
                    _i_33969_0++;
                    _gotoNext = 34171i32;
                } else if (__value__ == (34148i32)) {
                    _o_33964.feature.value = _o_33964.enable;
                    _i_33969_0++;
                    _gotoNext = 34171i32;
                } else if (__value__ == (34170i32)) {
                    {
                        final __tmp__0 = 0i32;
                        final __tmp__1 = stdgo._internal.internal.cpu.Cpu__options._options[(0i32 : stdgo.GoInt)];
                        _i_33969_0 = __tmp__0;
                        _o_33964 = __tmp__1;
                    };
                    _gotoNext = 34171i32;
                } else if (__value__ == (34171i32)) {
                    if (_i_33969_0 < (stdgo._internal.internal.cpu.Cpu__options._options.length)) {
                        _gotoNext = 33983i32;
                    } else {
                        _gotoNext = 34173i32;
                    };
                } else if (__value__ == (34173i32)) {
                    _gotoNext = -1i32;
                };
            };
        };
    }
