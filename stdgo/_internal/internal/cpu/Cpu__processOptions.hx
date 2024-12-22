package stdgo._internal.internal.cpu;
function _processOptions(_env:stdgo.GoString):Void {
        var _i_23720:stdgo.GoInt = (0 : stdgo.GoInt);
        var _enable_23362:Bool = false;
        var _key_23296:stdgo.GoString = ("" : stdgo.GoString);
        var _fieldBreak = false;
        var _i_23937_0:stdgo.GoInt = (0 : stdgo.GoInt);
        var _i_23602:stdgo.GoInt = (0 : stdgo.GoInt);
        var _value_23301:stdgo.GoString = ("" : stdgo.GoString);
        var _i_23002:stdgo.GoInt = (0 : stdgo.GoInt);
        var _field_22988:stdgo.GoString = ("" : stdgo.GoString);
        var _o_23932:stdgo._internal.internal.cpu.Cpu_T_option.T_option = ({} : stdgo._internal.internal.cpu.Cpu_T_option.T_option);
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    _gotoNext = 22962i32;
                } else if (__value__ == (22962i32)) {
                    var __blank__ = 0i32;
                    _fieldBreak = false;
                    _gotoNext = 22970i32;
                } else if (__value__ == (22970i32)) {
                    if (!_fieldBreak && (_env != stdgo.Go.str())) {
                        _gotoNext = 22984i32;
                    } else {
                        _gotoNext = 23925i32;
                    };
                } else if (__value__ == (22984i32)) {
                    _field_22988 = stdgo.Go.str()?.__copy__();
                    _i_23002 = stdgo._internal.internal.cpu.Cpu__indexByte._indexByte(_env?.__copy__(), (44 : stdgo.GoUInt8));
                    if ((_i_23002 < (0 : stdgo.GoInt) : Bool)) {
                        _gotoNext = 23038i32;
                    } else {
                        _gotoNext = 23073i32;
                    };
                } else if (__value__ == (23038i32)) {
                    {
                        final __tmp__0 = _env?.__copy__();
                        final __tmp__1 = stdgo.Go.str()?.__copy__();
                        _field_22988 = __tmp__0;
                        _env = __tmp__1;
                    };
                    _gotoNext = 23116i32;
                } else if (__value__ == (23073i32)) {
                    _gotoNext = 23073i32;
                    {
                        final __tmp__0 = (_env.__slice__(0, _i_23002) : stdgo.GoString)?.__copy__();
                        final __tmp__1 = (_env.__slice__((_i_23002 + (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        _field_22988 = __tmp__0;
                        _env = __tmp__1;
                    };
                    var __blank__ = 0i32;
                    _gotoNext = 23116i32;
                } else if (__value__ == (23116i32)) {
                    if ((((_field_22988.length) < (4 : stdgo.GoInt) : Bool) || ((_field_22988.__slice__(0, (4 : stdgo.GoInt)) : stdgo.GoString) != ("cpu." : stdgo.GoString)) : Bool)) {
                        _gotoNext = 23157i32;
                    } else {
                        _gotoNext = 23177i32;
                    };
                } else if (__value__ == (23157i32)) {
                    var __blank__ = 0i32;
                    _gotoNext = 22970i32;
                } else if (__value__ == (23177i32)) {
                    _i_23002 = stdgo._internal.internal.cpu.Cpu__indexByte._indexByte(_field_22988?.__copy__(), (61 : stdgo.GoUInt8));
                    if ((_i_23002 < (0 : stdgo.GoInt) : Bool)) {
                        _gotoNext = 23214i32;
                    } else {
                        _gotoNext = 23296i32;
                    };
                } else if (__value__ == (23214i32)) {
                    stdgo.Go.print(("GODEBUG: no value specified for \"" : stdgo.GoString), _field_22988, ("\"\n" : stdgo.GoString));
                    var __blank__ = 0i32;
                    _gotoNext = 22970i32;
                } else if (__value__ == (23296i32)) {
                    {
                        final __tmp__0 = (_field_22988.__slice__((4 : stdgo.GoInt), _i_23002) : stdgo.GoString)?.__copy__();
                        final __tmp__1 = (_field_22988.__slice__((_i_23002 + (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        _key_23296 = __tmp__0;
                        _value_23301 = __tmp__1;
                    };
                    _gotoNext = 23376i32;
                } else if (__value__ == (23376i32)) {
                    {
                        final __value__ = _value_23301;
                        if (__value__ == (("on" : stdgo.GoString))) {
                            _gotoNext = 23393i32;
                        } else if (__value__ == (("off" : stdgo.GoString))) {
                            _gotoNext = 23423i32;
                        } else {
                            _gotoNext = 23455i32;
                        };
                    };
                } else if (__value__ == (23393i32)) {
                    _enable_23362 = true;
                    _gotoNext = 23577i32;
                } else if (__value__ == (23423i32)) {
                    _enable_23362 = false;
                    _gotoNext = 23577i32;
                } else if (__value__ == (23455i32)) {
                    stdgo.Go.print(("GODEBUG: value \"" : stdgo.GoString), _value_23301, ("\" not supported for cpu option \"" : stdgo.GoString), _key_23296, ("\"\n" : stdgo.GoString));
                    _gotoNext = 22970i32;
                } else if (__value__ == (23577i32)) {
                    if (_key_23296 == (("all" : stdgo.GoString))) {
                        _gotoNext = 23593i32;
                    } else {
                        _gotoNext = 23716i32;
                    };
                } else if (__value__ == (23593i32)) {
                    if ((0i32 : stdgo.GoInt) < (stdgo._internal.internal.cpu.Cpu__options._options.length)) {
                        _gotoNext = 23688i32;
                    } else {
                        _gotoNext = 23694i32;
                    };
                } else if (__value__ == (23621i32)) {
                    stdgo._internal.internal.cpu.Cpu__options._options[(_i_23602 : stdgo.GoInt)].specified = true;
                    stdgo._internal.internal.cpu.Cpu__options._options[(_i_23602 : stdgo.GoInt)].enable = _enable_23362;
                    _i_23602++;
                    _gotoNext = 23689i32;
                } else if (__value__ == (23688i32)) {
                    _i_23602 = 0i32;
                    _gotoNext = 23689i32;
                } else if (__value__ == (23689i32)) {
                    if (_i_23602 < (stdgo._internal.internal.cpu.Cpu__options._options.length)) {
                        _gotoNext = 23621i32;
                    } else {
                        _gotoNext = 23694i32;
                    };
                } else if (__value__ == (23694i32)) {
                    _gotoNext = 22970i32;
                } else if (__value__ == (23716i32)) {
                    if ((0i32 : stdgo.GoInt) < (stdgo._internal.internal.cpu.Cpu__options._options.length)) {
                        _gotoNext = 23860i32;
                    } else {
                        _gotoNext = 23866i32;
                    };
                } else if (__value__ == (23720i32)) {
                    _i_23720++;
                    _gotoNext = 23861i32;
                } else if (__value__ == (23739i32)) {
                    if (stdgo._internal.internal.cpu.Cpu__options._options[(_i_23720 : stdgo.GoInt)].name == (_key_23296)) {
                        _gotoNext = 23770i32;
                    } else {
                        _gotoNext = 23720i32;
                    };
                } else if (__value__ == (23770i32)) {
                    stdgo._internal.internal.cpu.Cpu__options._options[(_i_23720 : stdgo.GoInt)].specified = true;
                    stdgo._internal.internal.cpu.Cpu__options._options[(_i_23720 : stdgo.GoInt)].enable = _enable_23362;
                    _gotoNext = 22970i32;
                } else if (__value__ == (23860i32)) {
                    _i_23720 = 0i32;
                    _gotoNext = 23861i32;
                } else if (__value__ == (23861i32)) {
                    if (_i_23720 < (stdgo._internal.internal.cpu.Cpu__options._options.length)) {
                        _gotoNext = 23739i32;
                    } else {
                        _gotoNext = 23866i32;
                    };
                } else if (__value__ == (23866i32)) {
                    stdgo.Go.print(("GODEBUG: unknown cpu feature \"" : stdgo.GoString), _key_23296, ("\"\n" : stdgo.GoString));
                    _gotoNext = 22970i32;
                } else if (__value__ == (23925i32)) {
                    if ((0i32 : stdgo.GoInt) < (stdgo._internal.internal.cpu.Cpu__options._options.length)) {
                        _gotoNext = 24138i32;
                    } else {
                        _gotoNext = 24141i32;
                    };
                } else if (__value__ == (23951i32)) {
                    _o_23932 = stdgo._internal.internal.cpu.Cpu__options._options[(_i_23937_0 : stdgo.GoInt)];
                    if (!_o_23932.specified) {
                        _gotoNext = 23971i32;
                    } else {
                        _gotoNext = 23992i32;
                    };
                } else if (__value__ == (23971i32)) {
                    _i_23937_0++;
                    _gotoNext = 24139i32;
                } else if (__value__ == (23992i32)) {
                    if ((_o_23932.enable && !_o_23932.feature.value : Bool)) {
                        _gotoNext = 24019i32;
                    } else {
                        _gotoNext = 24116i32;
                    };
                } else if (__value__ == (24019i32)) {
                    stdgo.Go.print(("GODEBUG: can not enable \"" : stdgo.GoString), _o_23932.name, ("\", missing CPU support\n" : stdgo.GoString));
                    _i_23937_0++;
                    _gotoNext = 24139i32;
                } else if (__value__ == (24116i32)) {
                    _o_23932.feature.value = _o_23932.enable;
                    _i_23937_0++;
                    _gotoNext = 24139i32;
                } else if (__value__ == (24138i32)) {
                    {
                        final __tmp__0 = 0i32;
                        final __tmp__1 = stdgo._internal.internal.cpu.Cpu__options._options[(0i32 : stdgo.GoInt)];
                        _i_23937_0 = __tmp__0;
                        _o_23932 = __tmp__1;
                    };
                    _gotoNext = 24139i32;
                } else if (__value__ == (24139i32)) {
                    if (_i_23937_0 < (stdgo._internal.internal.cpu.Cpu__options._options.length)) {
                        _gotoNext = 23951i32;
                    } else {
                        _gotoNext = 24141i32;
                    };
                } else if (__value__ == (24141i32)) {
                    _gotoNext = -1i32;
                };
            };
        };
    }
