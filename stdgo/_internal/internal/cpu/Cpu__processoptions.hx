package stdgo._internal.internal.cpu;
function _processOptions(_env:stdgo.GoString):Void {
        var _fieldBreak = false;
        var _o_17565:stdgo._internal.internal.cpu.Cpu_t_option.T_option = ({} : stdgo._internal.internal.cpu.Cpu_t_option.T_option);
        var _value_16934:stdgo.GoString = ("" : stdgo.GoString);
        var _key_16929:stdgo.GoString = ("" : stdgo.GoString);
        var _field_16621:stdgo.GoString = ("" : stdgo.GoString);
        var _i_17570_0:stdgo.GoInt = (0 : stdgo.GoInt);
        var _i_17353:stdgo.GoInt = (0 : stdgo.GoInt);
        var _i_17235:stdgo.GoInt = (0 : stdgo.GoInt);
        var _enable_16995:Bool = false;
        var _i_16635:stdgo.GoInt = (0 : stdgo.GoInt);
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    _gotoNext = 16595i32;
                } else if (__value__ == (16595i32)) {
                    var __blank__ = 0i32;
                    _fieldBreak = false;
                    _gotoNext = 16603i32;
                } else if (__value__ == (16603i32)) {
                    if (!_fieldBreak && (_env != (stdgo.Go.str() : stdgo.GoString))) {
                        _gotoNext = 16617i32;
                    } else {
                        _gotoNext = 17558i32;
                    };
                } else if (__value__ == (16617i32)) {
                    _field_16621 = (stdgo.Go.str() : stdgo.GoString)?.__copy__();
                    _i_16635 = stdgo._internal.internal.cpu.Cpu__indexbyte._indexByte(_env?.__copy__(), (44 : stdgo.GoUInt8));
                    if ((_i_16635 < (0 : stdgo.GoInt) : Bool)) {
                        _gotoNext = 16671i32;
                    } else {
                        _gotoNext = 16706i32;
                    };
                } else if (__value__ == (16671i32)) {
                    {
                        final __tmp__0 = _env?.__copy__();
                        final __tmp__1 = (stdgo.Go.str() : stdgo.GoString)?.__copy__();
                        _field_16621 = __tmp__0;
                        _env = __tmp__1;
                    };
                    _gotoNext = 16749i32;
                } else if (__value__ == (16706i32)) {
                    _gotoNext = 16706i32;
                    {
                        final __tmp__0 = (_env.__slice__(0, _i_16635) : stdgo.GoString)?.__copy__();
                        final __tmp__1 = (_env.__slice__((_i_16635 + (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        _field_16621 = __tmp__0;
                        _env = __tmp__1;
                    };
                    var __blank__ = 0i32;
                    _gotoNext = 16749i32;
                } else if (__value__ == (16749i32)) {
                    if ((((_field_16621.length) < (4 : stdgo.GoInt) : Bool) || ((_field_16621.__slice__(0, (4 : stdgo.GoInt)) : stdgo.GoString) != ("cpu." : stdgo.GoString)) : Bool)) {
                        _gotoNext = 16790i32;
                    } else {
                        _gotoNext = 16810i32;
                    };
                } else if (__value__ == (16790i32)) {
                    var __blank__ = 0i32;
                    _gotoNext = 16603i32;
                } else if (__value__ == (16810i32)) {
                    _i_16635 = stdgo._internal.internal.cpu.Cpu__indexbyte._indexByte(_field_16621?.__copy__(), (61 : stdgo.GoUInt8));
                    if ((_i_16635 < (0 : stdgo.GoInt) : Bool)) {
                        _gotoNext = 16847i32;
                    } else {
                        _gotoNext = 16929i32;
                    };
                } else if (__value__ == (16847i32)) {
                    stdgo.Go.print(("GODEBUG: no value specified for \"" : stdgo.GoString), _field_16621, ("\"\n" : stdgo.GoString));
                    var __blank__ = 0i32;
                    _gotoNext = 16603i32;
                } else if (__value__ == (16929i32)) {
                    {
                        final __tmp__0 = (_field_16621.__slice__((4 : stdgo.GoInt), _i_16635) : stdgo.GoString)?.__copy__();
                        final __tmp__1 = (_field_16621.__slice__((_i_16635 + (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        _key_16929 = __tmp__0;
                        _value_16934 = __tmp__1;
                    };
                    _gotoNext = 17009i32;
                } else if (__value__ == (17009i32)) {
                    {
                        final __value__ = _value_16934;
                        if (__value__ == (("on" : stdgo.GoString))) {
                            _gotoNext = 17026i32;
                        } else if (__value__ == (("off" : stdgo.GoString))) {
                            _gotoNext = 17056i32;
                        } else {
                            _gotoNext = 17088i32;
                        };
                    };
                } else if (__value__ == (17026i32)) {
                    _enable_16995 = true;
                    _gotoNext = 17210i32;
                } else if (__value__ == (17056i32)) {
                    _enable_16995 = false;
                    _gotoNext = 17210i32;
                } else if (__value__ == (17088i32)) {
                    stdgo.Go.print(("GODEBUG: value \"" : stdgo.GoString), _value_16934, ("\" not supported for cpu option \"" : stdgo.GoString), _key_16929, ("\"\n" : stdgo.GoString));
                    _gotoNext = 16603i32;
                } else if (__value__ == (17210i32)) {
                    if (_key_16929 == (("all" : stdgo.GoString))) {
                        _gotoNext = 17226i32;
                    } else {
                        _gotoNext = 17349i32;
                    };
                } else if (__value__ == (17226i32)) {
                    if ((0i32 : stdgo.GoInt) < (stdgo._internal.internal.cpu.Cpu__options._options.length)) {
                        _gotoNext = 17321i32;
                    } else {
                        _gotoNext = 17327i32;
                    };
                } else if (__value__ == (17254i32)) {
                    stdgo._internal.internal.cpu.Cpu__options._options[(_i_17235 : stdgo.GoInt)].specified = true;
                    stdgo._internal.internal.cpu.Cpu__options._options[(_i_17235 : stdgo.GoInt)].enable = _enable_16995;
                    _i_17235++;
                    _gotoNext = 17322i32;
                } else if (__value__ == (17321i32)) {
                    _i_17235 = 0i32;
                    _gotoNext = 17322i32;
                } else if (__value__ == (17322i32)) {
                    if (_i_17235 < (stdgo._internal.internal.cpu.Cpu__options._options.length)) {
                        _gotoNext = 17254i32;
                    } else {
                        _gotoNext = 17327i32;
                    };
                } else if (__value__ == (17327i32)) {
                    _gotoNext = 16603i32;
                } else if (__value__ == (17349i32)) {
                    if ((0i32 : stdgo.GoInt) < (stdgo._internal.internal.cpu.Cpu__options._options.length)) {
                        _gotoNext = 17493i32;
                    } else {
                        _gotoNext = 17499i32;
                    };
                } else if (__value__ == (17353i32)) {
                    _i_17353++;
                    _gotoNext = 17494i32;
                } else if (__value__ == (17372i32)) {
                    if (stdgo._internal.internal.cpu.Cpu__options._options[(_i_17353 : stdgo.GoInt)].name == (_key_16929)) {
                        _gotoNext = 17403i32;
                    } else {
                        _gotoNext = 17353i32;
                    };
                } else if (__value__ == (17403i32)) {
                    stdgo._internal.internal.cpu.Cpu__options._options[(_i_17353 : stdgo.GoInt)].specified = true;
                    stdgo._internal.internal.cpu.Cpu__options._options[(_i_17353 : stdgo.GoInt)].enable = _enable_16995;
                    _gotoNext = 16603i32;
                } else if (__value__ == (17493i32)) {
                    _i_17353 = 0i32;
                    _gotoNext = 17494i32;
                } else if (__value__ == (17494i32)) {
                    if (_i_17353 < (stdgo._internal.internal.cpu.Cpu__options._options.length)) {
                        _gotoNext = 17372i32;
                    } else {
                        _gotoNext = 17499i32;
                    };
                } else if (__value__ == (17499i32)) {
                    stdgo.Go.print(("GODEBUG: unknown cpu feature \"" : stdgo.GoString), _key_16929, ("\"\n" : stdgo.GoString));
                    _gotoNext = 16603i32;
                } else if (__value__ == (17558i32)) {
                    if ((0i32 : stdgo.GoInt) < (stdgo._internal.internal.cpu.Cpu__options._options.length)) {
                        _gotoNext = 17771i32;
                    } else {
                        _gotoNext = 17774i32;
                    };
                } else if (__value__ == (17584i32)) {
                    _o_17565 = stdgo._internal.internal.cpu.Cpu__options._options[(_i_17570_0 : stdgo.GoInt)];
                    if (!_o_17565.specified) {
                        _gotoNext = 17604i32;
                    } else {
                        _gotoNext = 17625i32;
                    };
                } else if (__value__ == (17604i32)) {
                    _i_17570_0++;
                    _gotoNext = 17772i32;
                } else if (__value__ == (17625i32)) {
                    if ((_o_17565.enable && !_o_17565.feature.value : Bool)) {
                        _gotoNext = 17652i32;
                    } else {
                        _gotoNext = 17749i32;
                    };
                } else if (__value__ == (17652i32)) {
                    stdgo.Go.print(("GODEBUG: can not enable \"" : stdgo.GoString), _o_17565.name, ("\", missing CPU support\n" : stdgo.GoString));
                    _i_17570_0++;
                    _gotoNext = 17772i32;
                } else if (__value__ == (17749i32)) {
                    _o_17565.feature.value = _o_17565.enable;
                    _i_17570_0++;
                    _gotoNext = 17772i32;
                } else if (__value__ == (17771i32)) {
                    {
                        final __tmp__0 = 0i32;
                        final __tmp__1 = stdgo._internal.internal.cpu.Cpu__options._options[(0i32 : stdgo.GoInt)];
                        _i_17570_0 = __tmp__0;
                        _o_17565 = __tmp__1;
                    };
                    _gotoNext = 17772i32;
                } else if (__value__ == (17772i32)) {
                    if (_i_17570_0 < (stdgo._internal.internal.cpu.Cpu__options._options.length)) {
                        _gotoNext = 17584i32;
                    } else {
                        _gotoNext = 17774i32;
                    };
                } else if (__value__ == (17774i32)) {
                    _gotoNext = -1i32;
                };
            };
        };
    }
