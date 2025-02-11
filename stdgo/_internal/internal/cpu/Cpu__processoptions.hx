package stdgo._internal.internal.cpu;
function _processOptions(_env:stdgo.GoString):Void {
        var _fieldBreak = false;
        var _i_8662_0:stdgo.GoInt = (0 : stdgo.GoInt);
        var _i_8445:stdgo.GoInt = (0 : stdgo.GoInt);
        var _value_8026:stdgo.GoString = ("" : stdgo.GoString);
        var _key_8021:stdgo.GoString = ("" : stdgo.GoString);
        var _i_7727:stdgo.GoInt = (0 : stdgo.GoInt);
        var _field_7713:stdgo.GoString = ("" : stdgo.GoString);
        var _enable_8087:Bool = false;
        var _o_8657:stdgo._internal.internal.cpu.Cpu_t_option.T_option = ({} : stdgo._internal.internal.cpu.Cpu_t_option.T_option);
        var _i_8327:stdgo.GoInt = (0 : stdgo.GoInt);
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    _gotoNext = 7687i32;
                } else if (__value__ == (7687i32)) {
                    var __blank__ = 0i32;
                    _fieldBreak = false;
                    _gotoNext = 7695i32;
                } else if (__value__ == (7695i32)) {
                    if (!_fieldBreak && (_env != (stdgo.Go.str() : stdgo.GoString))) {
                        _gotoNext = 7709i32;
                    } else {
                        _gotoNext = 8650i32;
                    };
                } else if (__value__ == (7709i32)) {
                    _field_7713 = (stdgo.Go.str() : stdgo.GoString)?.__copy__();
                    _i_7727 = stdgo._internal.internal.cpu.Cpu__indexbyte._indexByte(_env?.__copy__(), (44 : stdgo.GoUInt8));
                    if ((_i_7727 < (0 : stdgo.GoInt) : Bool)) {
                        _gotoNext = 7763i32;
                    } else {
                        _gotoNext = 7798i32;
                    };
                } else if (__value__ == (7763i32)) {
                    {
                        final __tmp__0 = _env?.__copy__();
                        final __tmp__1 = (stdgo.Go.str() : stdgo.GoString)?.__copy__();
                        _field_7713 = __tmp__0;
                        _env = __tmp__1;
                    };
                    _gotoNext = 7841i32;
                } else if (__value__ == (7798i32)) {
                    _gotoNext = 7798i32;
                    {
                        final __tmp__0 = (_env.__slice__(0, _i_7727) : stdgo.GoString)?.__copy__();
                        final __tmp__1 = (_env.__slice__((_i_7727 + (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        _field_7713 = __tmp__0;
                        _env = __tmp__1;
                    };
                    var __blank__ = 0i32;
                    _gotoNext = 7841i32;
                } else if (__value__ == (7841i32)) {
                    if ((((_field_7713.length) < (4 : stdgo.GoInt) : Bool) || ((_field_7713.__slice__(0, (4 : stdgo.GoInt)) : stdgo.GoString) != ("cpu." : stdgo.GoString)) : Bool)) {
                        _gotoNext = 7882i32;
                    } else {
                        _gotoNext = 7902i32;
                    };
                } else if (__value__ == (7882i32)) {
                    var __blank__ = 0i32;
                    _gotoNext = 7695i32;
                } else if (__value__ == (7902i32)) {
                    _i_7727 = stdgo._internal.internal.cpu.Cpu__indexbyte._indexByte(_field_7713?.__copy__(), (61 : stdgo.GoUInt8));
                    if ((_i_7727 < (0 : stdgo.GoInt) : Bool)) {
                        _gotoNext = 7939i32;
                    } else {
                        _gotoNext = 8021i32;
                    };
                } else if (__value__ == (7939i32)) {
                    stdgo.Go.print(("GODEBUG: no value specified for \"" : stdgo.GoString), _field_7713, ("\"\n" : stdgo.GoString));
                    var __blank__ = 0i32;
                    _gotoNext = 7695i32;
                } else if (__value__ == (8021i32)) {
                    {
                        final __tmp__0 = (_field_7713.__slice__((4 : stdgo.GoInt), _i_7727) : stdgo.GoString)?.__copy__();
                        final __tmp__1 = (_field_7713.__slice__((_i_7727 + (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        _key_8021 = __tmp__0;
                        _value_8026 = __tmp__1;
                    };
                    _gotoNext = 8101i32;
                } else if (__value__ == (8101i32)) {
                    {
                        final __value__ = _value_8026;
                        if (__value__ == (("on" : stdgo.GoString))) {
                            _gotoNext = 8118i32;
                        } else if (__value__ == (("off" : stdgo.GoString))) {
                            _gotoNext = 8148i32;
                        } else {
                            _gotoNext = 8180i32;
                        };
                    };
                } else if (__value__ == (8118i32)) {
                    _enable_8087 = true;
                    _gotoNext = 8302i32;
                } else if (__value__ == (8148i32)) {
                    _enable_8087 = false;
                    _gotoNext = 8302i32;
                } else if (__value__ == (8180i32)) {
                    stdgo.Go.print(("GODEBUG: value \"" : stdgo.GoString), _value_8026, ("\" not supported for cpu option \"" : stdgo.GoString), _key_8021, ("\"\n" : stdgo.GoString));
                    _gotoNext = 7695i32;
                } else if (__value__ == (8302i32)) {
                    if (_key_8021 == (("all" : stdgo.GoString))) {
                        _gotoNext = 8318i32;
                    } else {
                        _gotoNext = 8441i32;
                    };
                } else if (__value__ == (8318i32)) {
                    if ((0i32 : stdgo.GoInt) < (stdgo._internal.internal.cpu.Cpu__options._options.length)) {
                        _gotoNext = 8413i32;
                    } else {
                        _gotoNext = 8419i32;
                    };
                } else if (__value__ == (8346i32)) {
                    stdgo._internal.internal.cpu.Cpu__options._options[(_i_8327 : stdgo.GoInt)].specified = true;
                    stdgo._internal.internal.cpu.Cpu__options._options[(_i_8327 : stdgo.GoInt)].enable = _enable_8087;
                    _i_8327++;
                    _gotoNext = 8414i32;
                } else if (__value__ == (8413i32)) {
                    _i_8327 = 0i32;
                    _gotoNext = 8414i32;
                } else if (__value__ == (8414i32)) {
                    if (_i_8327 < (stdgo._internal.internal.cpu.Cpu__options._options.length)) {
                        _gotoNext = 8346i32;
                    } else {
                        _gotoNext = 8419i32;
                    };
                } else if (__value__ == (8419i32)) {
                    _gotoNext = 7695i32;
                } else if (__value__ == (8441i32)) {
                    if ((0i32 : stdgo.GoInt) < (stdgo._internal.internal.cpu.Cpu__options._options.length)) {
                        _gotoNext = 8585i32;
                    } else {
                        _gotoNext = 8591i32;
                    };
                } else if (__value__ == (8445i32)) {
                    _i_8445++;
                    _gotoNext = 8586i32;
                } else if (__value__ == (8464i32)) {
                    if (stdgo._internal.internal.cpu.Cpu__options._options[(_i_8445 : stdgo.GoInt)].name == (_key_8021)) {
                        _gotoNext = 8495i32;
                    } else {
                        _gotoNext = 8445i32;
                    };
                } else if (__value__ == (8495i32)) {
                    stdgo._internal.internal.cpu.Cpu__options._options[(_i_8445 : stdgo.GoInt)].specified = true;
                    stdgo._internal.internal.cpu.Cpu__options._options[(_i_8445 : stdgo.GoInt)].enable = _enable_8087;
                    _gotoNext = 7695i32;
                } else if (__value__ == (8585i32)) {
                    _i_8445 = 0i32;
                    _gotoNext = 8586i32;
                } else if (__value__ == (8586i32)) {
                    if (_i_8445 < (stdgo._internal.internal.cpu.Cpu__options._options.length)) {
                        _gotoNext = 8464i32;
                    } else {
                        _gotoNext = 8591i32;
                    };
                } else if (__value__ == (8591i32)) {
                    stdgo.Go.print(("GODEBUG: unknown cpu feature \"" : stdgo.GoString), _key_8021, ("\"\n" : stdgo.GoString));
                    _gotoNext = 7695i32;
                } else if (__value__ == (8650i32)) {
                    if ((0i32 : stdgo.GoInt) < (stdgo._internal.internal.cpu.Cpu__options._options.length)) {
                        _gotoNext = 8863i32;
                    } else {
                        _gotoNext = 8866i32;
                    };
                } else if (__value__ == (8676i32)) {
                    _o_8657 = stdgo._internal.internal.cpu.Cpu__options._options[(_i_8662_0 : stdgo.GoInt)];
                    if (!_o_8657.specified) {
                        _gotoNext = 8696i32;
                    } else {
                        _gotoNext = 8717i32;
                    };
                } else if (__value__ == (8696i32)) {
                    _i_8662_0++;
                    _gotoNext = 8864i32;
                } else if (__value__ == (8717i32)) {
                    if ((_o_8657.enable && !_o_8657.feature.value : Bool)) {
                        _gotoNext = 8744i32;
                    } else {
                        _gotoNext = 8841i32;
                    };
                } else if (__value__ == (8744i32)) {
                    stdgo.Go.print(("GODEBUG: can not enable \"" : stdgo.GoString), _o_8657.name, ("\", missing CPU support\n" : stdgo.GoString));
                    _i_8662_0++;
                    _gotoNext = 8864i32;
                } else if (__value__ == (8841i32)) {
                    _o_8657.feature.value = _o_8657.enable;
                    _i_8662_0++;
                    _gotoNext = 8864i32;
                } else if (__value__ == (8863i32)) {
                    {
                        final __tmp__0 = 0i32;
                        final __tmp__1 = stdgo._internal.internal.cpu.Cpu__options._options[(0i32 : stdgo.GoInt)];
                        _i_8662_0 = __tmp__0;
                        _o_8657 = __tmp__1;
                    };
                    _gotoNext = 8864i32;
                } else if (__value__ == (8864i32)) {
                    if (_i_8662_0 < (stdgo._internal.internal.cpu.Cpu__options._options.length)) {
                        _gotoNext = 8676i32;
                    } else {
                        _gotoNext = 8866i32;
                    };
                } else if (__value__ == (8866i32)) {
                    _gotoNext = -1i32;
                };
            };
        };
    }
