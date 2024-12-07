package stdgo._internal.internal.cpu;
function _processOptions(_env:stdgo.GoString):Void {
        var _o_243827:stdgo._internal.internal.cpu.Cpu_T_option.T_option = ({} : stdgo._internal.internal.cpu.Cpu_T_option.T_option);
        var _i_243497:stdgo.GoInt = (0 : stdgo.GoInt);
        var _enable_243257:Bool = false;
        var _value_243196:stdgo.GoString = ("" : stdgo.GoString);
        var _key_243191:stdgo.GoString = ("" : stdgo.GoString);
        var _fieldBreak = false;
        var _i_243832_0:stdgo.GoInt = (0 : stdgo.GoInt);
        var _i_243615:stdgo.GoInt = (0 : stdgo.GoInt);
        var _i_242897:stdgo.GoInt = (0 : stdgo.GoInt);
        var _field_242883:stdgo.GoString = ("" : stdgo.GoString);
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    _gotoNext = 242857i32;
                } else if (__value__ == (242857i32)) {
                    var __blank__ = 0i32;
                    _fieldBreak = false;
                    _gotoNext = 242865i32;
                } else if (__value__ == (242865i32)) {
                    if (!_fieldBreak && (_env != stdgo.Go.str())) {
                        _gotoNext = 242879i32;
                    } else {
                        _gotoNext = 243820i32;
                    };
                } else if (__value__ == (242879i32)) {
                    _field_242883 = stdgo.Go.str()?.__copy__();
                    _i_242897 = stdgo._internal.internal.cpu.Cpu__indexByte._indexByte(_env?.__copy__(), (44 : stdgo.GoUInt8));
                    if ((_i_242897 < (0 : stdgo.GoInt) : Bool)) {
                        _gotoNext = 242933i32;
                    } else {
                        _gotoNext = 242968i32;
                    };
                } else if (__value__ == (242933i32)) {
                    {
                        final __tmp__0 = _env?.__copy__();
                        final __tmp__1 = stdgo.Go.str()?.__copy__();
                        _field_242883 = __tmp__0;
                        _env = __tmp__1;
                    };
                    _gotoNext = 243011i32;
                } else if (__value__ == (242968i32)) {
                    _gotoNext = 242968i32;
                    {
                        final __tmp__0 = (_env.__slice__(0, _i_242897) : stdgo.GoString)?.__copy__();
                        final __tmp__1 = (_env.__slice__((_i_242897 + (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        _field_242883 = __tmp__0;
                        _env = __tmp__1;
                    };
                    var __blank__ = 0i32;
                    _gotoNext = 243011i32;
                } else if (__value__ == (243011i32)) {
                    if ((((_field_242883.length) < (4 : stdgo.GoInt) : Bool) || ((_field_242883.__slice__(0, (4 : stdgo.GoInt)) : stdgo.GoString) != ("cpu." : stdgo.GoString)) : Bool)) {
                        _gotoNext = 243052i32;
                    } else {
                        _gotoNext = 243072i32;
                    };
                } else if (__value__ == (243052i32)) {
                    var __blank__ = 0i32;
                    _gotoNext = 242865i32;
                } else if (__value__ == (243072i32)) {
                    _i_242897 = stdgo._internal.internal.cpu.Cpu__indexByte._indexByte(_field_242883?.__copy__(), (61 : stdgo.GoUInt8));
                    if ((_i_242897 < (0 : stdgo.GoInt) : Bool)) {
                        _gotoNext = 243109i32;
                    } else {
                        _gotoNext = 243191i32;
                    };
                } else if (__value__ == (243109i32)) {
                    stdgo.Go.print(("GODEBUG: no value specified for \"" : stdgo.GoString), _field_242883, ("\"\n" : stdgo.GoString));
                    var __blank__ = 0i32;
                    _gotoNext = 242865i32;
                } else if (__value__ == (243191i32)) {
                    {
                        final __tmp__0 = (_field_242883.__slice__((4 : stdgo.GoInt), _i_242897) : stdgo.GoString)?.__copy__();
                        final __tmp__1 = (_field_242883.__slice__((_i_242897 + (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        _key_243191 = __tmp__0;
                        _value_243196 = __tmp__1;
                    };
                    _gotoNext = 243271i32;
                } else if (__value__ == (243271i32)) {
                    {
                        final __value__ = _value_243196;
                        if (__value__ == (("on" : stdgo.GoString))) {
                            _gotoNext = 243288i32;
                        } else if (__value__ == (("off" : stdgo.GoString))) {
                            _gotoNext = 243318i32;
                        } else {
                            _gotoNext = 243350i32;
                        };
                    };
                } else if (__value__ == (243288i32)) {
                    _enable_243257 = true;
                    _gotoNext = 243472i32;
                } else if (__value__ == (243318i32)) {
                    _enable_243257 = false;
                    _gotoNext = 243472i32;
                } else if (__value__ == (243350i32)) {
                    stdgo.Go.print(("GODEBUG: value \"" : stdgo.GoString), _value_243196, ("\" not supported for cpu option \"" : stdgo.GoString), _key_243191, ("\"\n" : stdgo.GoString));
                    _gotoNext = 242865i32;
                } else if (__value__ == (243472i32)) {
                    if (_key_243191 == (("all" : stdgo.GoString))) {
                        _gotoNext = 243488i32;
                    } else {
                        _gotoNext = 243611i32;
                    };
                } else if (__value__ == (243488i32)) {
                    if ((0i32 : stdgo.GoInt) < (stdgo._internal.internal.cpu.Cpu__options._options.length)) {
                        _gotoNext = 243583i32;
                    } else {
                        _gotoNext = 243589i32;
                    };
                } else if (__value__ == (243516i32)) {
                    stdgo._internal.internal.cpu.Cpu__options._options[(_i_243497 : stdgo.GoInt)].specified = true;
                    stdgo._internal.internal.cpu.Cpu__options._options[(_i_243497 : stdgo.GoInt)].enable = _enable_243257;
                    _i_243497++;
                    _gotoNext = 243584i32;
                } else if (__value__ == (243583i32)) {
                    _i_243497 = 0i32;
                    _gotoNext = 243584i32;
                } else if (__value__ == (243584i32)) {
                    if (_i_243497 < (stdgo._internal.internal.cpu.Cpu__options._options.length)) {
                        _gotoNext = 243516i32;
                    } else {
                        _gotoNext = 243589i32;
                    };
                } else if (__value__ == (243589i32)) {
                    _gotoNext = 242865i32;
                } else if (__value__ == (243611i32)) {
                    if ((0i32 : stdgo.GoInt) < (stdgo._internal.internal.cpu.Cpu__options._options.length)) {
                        _gotoNext = 243755i32;
                    } else {
                        _gotoNext = 243761i32;
                    };
                } else if (__value__ == (243615i32)) {
                    _i_243615++;
                    _gotoNext = 243756i32;
                } else if (__value__ == (243634i32)) {
                    if (stdgo._internal.internal.cpu.Cpu__options._options[(_i_243615 : stdgo.GoInt)].name == (_key_243191)) {
                        _gotoNext = 243665i32;
                    } else {
                        _gotoNext = 243615i32;
                    };
                } else if (__value__ == (243665i32)) {
                    stdgo._internal.internal.cpu.Cpu__options._options[(_i_243615 : stdgo.GoInt)].specified = true;
                    stdgo._internal.internal.cpu.Cpu__options._options[(_i_243615 : stdgo.GoInt)].enable = _enable_243257;
                    _gotoNext = 242865i32;
                } else if (__value__ == (243755i32)) {
                    _i_243615 = 0i32;
                    _gotoNext = 243756i32;
                } else if (__value__ == (243756i32)) {
                    if (_i_243615 < (stdgo._internal.internal.cpu.Cpu__options._options.length)) {
                        _gotoNext = 243634i32;
                    } else {
                        _gotoNext = 243761i32;
                    };
                } else if (__value__ == (243761i32)) {
                    stdgo.Go.print(("GODEBUG: unknown cpu feature \"" : stdgo.GoString), _key_243191, ("\"\n" : stdgo.GoString));
                    _gotoNext = 242865i32;
                } else if (__value__ == (243820i32)) {
                    if ((0i32 : stdgo.GoInt) < (stdgo._internal.internal.cpu.Cpu__options._options.length)) {
                        _gotoNext = 244033i32;
                    } else {
                        _gotoNext = 244036i32;
                    };
                } else if (__value__ == (243846i32)) {
                    _o_243827 = stdgo._internal.internal.cpu.Cpu__options._options[(_i_243832_0 : stdgo.GoInt)];
                    if (!_o_243827.specified) {
                        _gotoNext = 243866i32;
                    } else {
                        _gotoNext = 243887i32;
                    };
                } else if (__value__ == (243866i32)) {
                    _i_243832_0++;
                    _gotoNext = 244034i32;
                } else if (__value__ == (243887i32)) {
                    if ((_o_243827.enable && !_o_243827.feature.value : Bool)) {
                        _gotoNext = 243914i32;
                    } else {
                        _gotoNext = 244011i32;
                    };
                } else if (__value__ == (243914i32)) {
                    stdgo.Go.print(("GODEBUG: can not enable \"" : stdgo.GoString), _o_243827.name, ("\", missing CPU support\n" : stdgo.GoString));
                    _i_243832_0++;
                    _gotoNext = 244034i32;
                } else if (__value__ == (244011i32)) {
                    _o_243827.feature.value = _o_243827.enable;
                    _i_243832_0++;
                    _gotoNext = 244034i32;
                } else if (__value__ == (244033i32)) {
                    {
                        final __tmp__0 = 0i32;
                        final __tmp__1 = stdgo._internal.internal.cpu.Cpu__options._options[(0i32 : stdgo.GoInt)];
                        _i_243832_0 = __tmp__0;
                        _o_243827 = __tmp__1;
                    };
                    _gotoNext = 244034i32;
                } else if (__value__ == (244034i32)) {
                    if (_i_243832_0 < (stdgo._internal.internal.cpu.Cpu__options._options.length)) {
                        _gotoNext = 243846i32;
                    } else {
                        _gotoNext = 244036i32;
                    };
                } else if (__value__ == (244036i32)) {
                    _gotoNext = -1i32;
                };
            };
        };
    }
