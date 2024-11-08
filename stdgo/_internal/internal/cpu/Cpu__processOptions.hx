package stdgo._internal.internal.cpu;
function _processOptions(_env:stdgo.GoString):Void {
        var _o_295933:stdgo._internal.internal.cpu.Cpu_T_option.T_option = ({} : stdgo._internal.internal.cpu.Cpu_T_option.T_option);
        var _i_295721:stdgo.GoInt = (0 : stdgo.GoInt);
        var _i_295603:stdgo.GoInt = (0 : stdgo.GoInt);
        var _key_295297:stdgo.GoString = ("" : stdgo.GoString);
        var _enable_295363:Bool = false;
        var _value_295302:stdgo.GoString = ("" : stdgo.GoString);
        var _i_295003:stdgo.GoInt = (0 : stdgo.GoInt);
        var _field_294989:stdgo.GoString = ("" : stdgo.GoString);
        var _fieldBreak = false;
        var _i_295938_0:stdgo.GoInt = (0 : stdgo.GoInt);
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    _gotoNext = 294963i32;
                } else if (__value__ == (294963i32)) {
                    var __blank__ = 0i32;
                    _fieldBreak = false;
                    _gotoNext = 294971i32;
                } else if (__value__ == (294971i32)) {
                    if (!_fieldBreak && (_env != stdgo.Go.str())) {
                        _gotoNext = 294985i32;
                    } else {
                        _gotoNext = 295926i32;
                    };
                } else if (__value__ == (294985i32)) {
                    _field_294989 = stdgo.Go.str()?.__copy__();
                    _i_295003 = stdgo._internal.internal.cpu.Cpu__indexByte._indexByte(_env?.__copy__(), (44 : stdgo.GoUInt8));
                    if ((_i_295003 < (0 : stdgo.GoInt) : Bool)) {
                        _gotoNext = 295039i32;
                    } else {
                        _gotoNext = 295074i32;
                    };
                } else if (__value__ == (295039i32)) {
                    {
                        final __tmp__0 = _env?.__copy__();
                        final __tmp__1 = stdgo.Go.str()?.__copy__();
                        _field_294989 = __tmp__0;
                        _env = __tmp__1;
                    };
                    _gotoNext = 295117i32;
                } else if (__value__ == (295074i32)) {
                    {
                        final __tmp__0 = (_env.__slice__(0, _i_295003) : stdgo.GoString)?.__copy__();
                        final __tmp__1 = (_env.__slice__((_i_295003 + (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        _field_294989 = __tmp__0;
                        _env = __tmp__1;
                    };
                    var __blank__ = 0i32;
                    _gotoNext = 295117i32;
                } else if (__value__ == (295117i32)) {
                    if ((((_field_294989.length) < (4 : stdgo.GoInt) : Bool) || ((_field_294989.__slice__(0, (4 : stdgo.GoInt)) : stdgo.GoString) != ("cpu." : stdgo.GoString)) : Bool)) {
                        _gotoNext = 295158i32;
                    } else {
                        _gotoNext = 295178i32;
                    };
                } else if (__value__ == (295158i32)) {
                    var __blank__ = 0i32;
                    _gotoNext = 294971i32;
                } else if (__value__ == (295178i32)) {
                    _i_295003 = stdgo._internal.internal.cpu.Cpu__indexByte._indexByte(_field_294989?.__copy__(), (61 : stdgo.GoUInt8));
                    if ((_i_295003 < (0 : stdgo.GoInt) : Bool)) {
                        _gotoNext = 295215i32;
                    } else {
                        _gotoNext = 295297i32;
                    };
                } else if (__value__ == (295215i32)) {
                    stdgo.Go.print(("GODEBUG: no value specified for \"" : stdgo.GoString), _field_294989, ("\"\n" : stdgo.GoString));
                    var __blank__ = 0i32;
                    _gotoNext = 294971i32;
                } else if (__value__ == (295297i32)) {
                    {
                        final __tmp__0 = (_field_294989.__slice__((4 : stdgo.GoInt), _i_295003) : stdgo.GoString)?.__copy__();
                        final __tmp__1 = (_field_294989.__slice__((_i_295003 + (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        _key_295297 = __tmp__0;
                        _value_295302 = __tmp__1;
                    };
                    var __blank__ = 0i32;
                    _gotoNext = 295377i32;
                } else if (__value__ == (295377i32)) {
                    {
                        final __value__ = _value_295302;
                        if (__value__ == (("on" : stdgo.GoString))) {
                            _gotoNext = 295394i32;
                        } else if (__value__ == (("off" : stdgo.GoString))) {
                            _gotoNext = 295424i32;
                        } else {
                            _gotoNext = 295456i32;
                        };
                    };
                } else if (__value__ == (295394i32)) {
                    _enable_295363 = true;
                    _gotoNext = 295578i32;
                } else if (__value__ == (295424i32)) {
                    _enable_295363 = false;
                    _gotoNext = 295578i32;
                } else if (__value__ == (295456i32)) {
                    stdgo.Go.print(("GODEBUG: value \"" : stdgo.GoString), _value_295302, ("\" not supported for cpu option \"" : stdgo.GoString), _key_295297, ("\"\n" : stdgo.GoString));
                    _gotoNext = 294971i32;
                } else if (__value__ == (295578i32)) {
                    if (_key_295297 == (("all" : stdgo.GoString))) {
                        _gotoNext = 295594i32;
                    } else {
                        _gotoNext = 295717i32;
                    };
                } else if (__value__ == (295594i32)) {
                    if ((0i32 : stdgo.GoInt) < (stdgo._internal.internal.cpu.Cpu__options._options.length)) {
                        _gotoNext = 295689i32;
                    } else {
                        _gotoNext = 295695i32;
                    };
                } else if (__value__ == (295622i32)) {
                    stdgo._internal.internal.cpu.Cpu__options._options[(_i_295603 : stdgo.GoInt)].specified = true;
                    stdgo._internal.internal.cpu.Cpu__options._options[(_i_295603 : stdgo.GoInt)].enable = _enable_295363;
                    _i_295603++;
                    _gotoNext = 295690i32;
                } else if (__value__ == (295689i32)) {
                    _i_295603 = 0i32;
                    _gotoNext = 295690i32;
                } else if (__value__ == (295690i32)) {
                    if (_i_295603 < (stdgo._internal.internal.cpu.Cpu__options._options.length)) {
                        _gotoNext = 295622i32;
                    } else {
                        _gotoNext = 295695i32;
                    };
                } else if (__value__ == (295695i32)) {
                    _gotoNext = 294971i32;
                } else if (__value__ == (295717i32)) {
                    if ((0i32 : stdgo.GoInt) < (stdgo._internal.internal.cpu.Cpu__options._options.length)) {
                        _gotoNext = 295861i32;
                    } else {
                        _gotoNext = 295867i32;
                    };
                } else if (__value__ == (295721i32)) {
                    _i_295721++;
                    _gotoNext = 295862i32;
                } else if (__value__ == (295740i32)) {
                    if (stdgo._internal.internal.cpu.Cpu__options._options[(_i_295721 : stdgo.GoInt)].name == (_key_295297)) {
                        _gotoNext = 295771i32;
                    } else {
                        _gotoNext = 295721i32;
                    };
                } else if (__value__ == (295771i32)) {
                    stdgo._internal.internal.cpu.Cpu__options._options[(_i_295721 : stdgo.GoInt)].specified = true;
                    stdgo._internal.internal.cpu.Cpu__options._options[(_i_295721 : stdgo.GoInt)].enable = _enable_295363;
                    _gotoNext = 294971i32;
                } else if (__value__ == (295861i32)) {
                    _i_295721 = 0i32;
                    _gotoNext = 295862i32;
                } else if (__value__ == (295862i32)) {
                    if (_i_295721 < (stdgo._internal.internal.cpu.Cpu__options._options.length)) {
                        _gotoNext = 295740i32;
                    } else {
                        _gotoNext = 295867i32;
                    };
                } else if (__value__ == (295867i32)) {
                    stdgo.Go.print(("GODEBUG: unknown cpu feature \"" : stdgo.GoString), _key_295297, ("\"\n" : stdgo.GoString));
                    _gotoNext = 294971i32;
                } else if (__value__ == (295926i32)) {
                    if ((0i32 : stdgo.GoInt) < (stdgo._internal.internal.cpu.Cpu__options._options.length)) {
                        _gotoNext = 296139i32;
                    } else {
                        _gotoNext = 296142i32;
                    };
                } else if (__value__ == (295952i32)) {
                    _o_295933 = stdgo._internal.internal.cpu.Cpu__options._options[(_i_295938_0 : stdgo.GoInt)];
                    if (!_o_295933.specified) {
                        _gotoNext = 295972i32;
                    } else {
                        _gotoNext = 295993i32;
                    };
                } else if (__value__ == (295972i32)) {
                    _i_295938_0++;
                    _gotoNext = 296140i32;
                } else if (__value__ == (295993i32)) {
                    if ((_o_295933.enable && !_o_295933.feature.value : Bool)) {
                        _gotoNext = 296020i32;
                    } else {
                        _gotoNext = 296117i32;
                    };
                } else if (__value__ == (296020i32)) {
                    stdgo.Go.print(("GODEBUG: can not enable \"" : stdgo.GoString), _o_295933.name, ("\", missing CPU support\n" : stdgo.GoString));
                    _i_295938_0++;
                    _gotoNext = 296140i32;
                } else if (__value__ == (296117i32)) {
                    _o_295933.feature.value = _o_295933.enable;
                    _i_295938_0++;
                    _gotoNext = 296140i32;
                } else if (__value__ == (296139i32)) {
                    {
                        final __tmp__0 = 0i32;
                        final __tmp__1 = stdgo._internal.internal.cpu.Cpu__options._options[(0i32 : stdgo.GoInt)];
                        _i_295938_0 = __tmp__0;
                        _o_295933 = __tmp__1;
                    };
                    _gotoNext = 296140i32;
                } else if (__value__ == (296140i32)) {
                    if (_i_295938_0 < (stdgo._internal.internal.cpu.Cpu__options._options.length)) {
                        _gotoNext = 295952i32;
                    } else {
                        _gotoNext = 296142i32;
                    };
                } else if (__value__ == (296142i32)) {
                    _gotoNext = -1i32;
                };
            };
        };
    }
