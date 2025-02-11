package stdgo._internal.internal.cpu;
function _processOptions(_env:stdgo.GoString):Void {
        var _o_245611:stdgo._internal.internal.cpu.Cpu_t_option.T_option = ({} : stdgo._internal.internal.cpu.Cpu_t_option.T_option);
        var _value_244980:stdgo.GoString = ("" : stdgo.GoString);
        var _i_244681:stdgo.GoInt = (0 : stdgo.GoInt);
        var _i_245399:stdgo.GoInt = (0 : stdgo.GoInt);
        var _i_245281:stdgo.GoInt = (0 : stdgo.GoInt);
        var _enable_245041:Bool = false;
        var _key_244975:stdgo.GoString = ("" : stdgo.GoString);
        var _field_244667:stdgo.GoString = ("" : stdgo.GoString);
        var _fieldBreak = false;
        var _i_245616_0:stdgo.GoInt = (0 : stdgo.GoInt);
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    _gotoNext = 244641i32;
                } else if (__value__ == (244641i32)) {
                    var __blank__ = 0i32;
                    _fieldBreak = false;
                    _gotoNext = 244649i32;
                } else if (__value__ == (244649i32)) {
                    if (!_fieldBreak && (_env != (stdgo.Go.str() : stdgo.GoString))) {
                        _gotoNext = 244663i32;
                    } else {
                        _gotoNext = 245604i32;
                    };
                } else if (__value__ == (244663i32)) {
                    _field_244667 = (stdgo.Go.str() : stdgo.GoString)?.__copy__();
                    _i_244681 = stdgo._internal.internal.cpu.Cpu__indexbyte._indexByte(_env?.__copy__(), (44 : stdgo.GoUInt8));
                    if ((_i_244681 < (0 : stdgo.GoInt) : Bool)) {
                        _gotoNext = 244717i32;
                    } else {
                        _gotoNext = 244752i32;
                    };
                } else if (__value__ == (244717i32)) {
                    {
                        final __tmp__0 = _env?.__copy__();
                        final __tmp__1 = (stdgo.Go.str() : stdgo.GoString)?.__copy__();
                        _field_244667 = __tmp__0;
                        _env = __tmp__1;
                    };
                    _gotoNext = 244795i32;
                } else if (__value__ == (244752i32)) {
                    _gotoNext = 244752i32;
                    {
                        final __tmp__0 = (_env.__slice__(0, _i_244681) : stdgo.GoString)?.__copy__();
                        final __tmp__1 = (_env.__slice__((_i_244681 + (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        _field_244667 = __tmp__0;
                        _env = __tmp__1;
                    };
                    var __blank__ = 0i32;
                    _gotoNext = 244795i32;
                } else if (__value__ == (244795i32)) {
                    if ((((_field_244667.length) < (4 : stdgo.GoInt) : Bool) || ((_field_244667.__slice__(0, (4 : stdgo.GoInt)) : stdgo.GoString) != ("cpu." : stdgo.GoString)) : Bool)) {
                        _gotoNext = 244836i32;
                    } else {
                        _gotoNext = 244856i32;
                    };
                } else if (__value__ == (244836i32)) {
                    var __blank__ = 0i32;
                    _gotoNext = 244649i32;
                } else if (__value__ == (244856i32)) {
                    _i_244681 = stdgo._internal.internal.cpu.Cpu__indexbyte._indexByte(_field_244667?.__copy__(), (61 : stdgo.GoUInt8));
                    if ((_i_244681 < (0 : stdgo.GoInt) : Bool)) {
                        _gotoNext = 244893i32;
                    } else {
                        _gotoNext = 244975i32;
                    };
                } else if (__value__ == (244893i32)) {
                    stdgo.Go.print(("GODEBUG: no value specified for \"" : stdgo.GoString), _field_244667, ("\"\n" : stdgo.GoString));
                    var __blank__ = 0i32;
                    _gotoNext = 244649i32;
                } else if (__value__ == (244975i32)) {
                    {
                        final __tmp__0 = (_field_244667.__slice__((4 : stdgo.GoInt), _i_244681) : stdgo.GoString)?.__copy__();
                        final __tmp__1 = (_field_244667.__slice__((_i_244681 + (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        _key_244975 = __tmp__0;
                        _value_244980 = __tmp__1;
                    };
                    _gotoNext = 245055i32;
                } else if (__value__ == (245055i32)) {
                    {
                        final __value__ = _value_244980;
                        if (__value__ == (("on" : stdgo.GoString))) {
                            _gotoNext = 245072i32;
                        } else if (__value__ == (("off" : stdgo.GoString))) {
                            _gotoNext = 245102i32;
                        } else {
                            _gotoNext = 245134i32;
                        };
                    };
                } else if (__value__ == (245072i32)) {
                    _enable_245041 = true;
                    _gotoNext = 245256i32;
                } else if (__value__ == (245102i32)) {
                    _enable_245041 = false;
                    _gotoNext = 245256i32;
                } else if (__value__ == (245134i32)) {
                    stdgo.Go.print(("GODEBUG: value \"" : stdgo.GoString), _value_244980, ("\" not supported for cpu option \"" : stdgo.GoString), _key_244975, ("\"\n" : stdgo.GoString));
                    _gotoNext = 244649i32;
                } else if (__value__ == (245256i32)) {
                    if (_key_244975 == (("all" : stdgo.GoString))) {
                        _gotoNext = 245272i32;
                    } else {
                        _gotoNext = 245395i32;
                    };
                } else if (__value__ == (245272i32)) {
                    if ((0i32 : stdgo.GoInt) < (stdgo._internal.internal.cpu.Cpu__options._options.length)) {
                        _gotoNext = 245367i32;
                    } else {
                        _gotoNext = 245373i32;
                    };
                } else if (__value__ == (245300i32)) {
                    stdgo._internal.internal.cpu.Cpu__options._options[(_i_245281 : stdgo.GoInt)].specified = true;
                    stdgo._internal.internal.cpu.Cpu__options._options[(_i_245281 : stdgo.GoInt)].enable = _enable_245041;
                    _i_245281++;
                    _gotoNext = 245368i32;
                } else if (__value__ == (245367i32)) {
                    _i_245281 = 0i32;
                    _gotoNext = 245368i32;
                } else if (__value__ == (245368i32)) {
                    if (_i_245281 < (stdgo._internal.internal.cpu.Cpu__options._options.length)) {
                        _gotoNext = 245300i32;
                    } else {
                        _gotoNext = 245373i32;
                    };
                } else if (__value__ == (245373i32)) {
                    _gotoNext = 244649i32;
                } else if (__value__ == (245395i32)) {
                    if ((0i32 : stdgo.GoInt) < (stdgo._internal.internal.cpu.Cpu__options._options.length)) {
                        _gotoNext = 245539i32;
                    } else {
                        _gotoNext = 245545i32;
                    };
                } else if (__value__ == (245399i32)) {
                    _i_245399++;
                    _gotoNext = 245540i32;
                } else if (__value__ == (245418i32)) {
                    if (stdgo._internal.internal.cpu.Cpu__options._options[(_i_245399 : stdgo.GoInt)].name == (_key_244975)) {
                        _gotoNext = 245449i32;
                    } else {
                        _gotoNext = 245399i32;
                    };
                } else if (__value__ == (245449i32)) {
                    stdgo._internal.internal.cpu.Cpu__options._options[(_i_245399 : stdgo.GoInt)].specified = true;
                    stdgo._internal.internal.cpu.Cpu__options._options[(_i_245399 : stdgo.GoInt)].enable = _enable_245041;
                    _gotoNext = 244649i32;
                } else if (__value__ == (245539i32)) {
                    _i_245399 = 0i32;
                    _gotoNext = 245540i32;
                } else if (__value__ == (245540i32)) {
                    if (_i_245399 < (stdgo._internal.internal.cpu.Cpu__options._options.length)) {
                        _gotoNext = 245418i32;
                    } else {
                        _gotoNext = 245545i32;
                    };
                } else if (__value__ == (245545i32)) {
                    stdgo.Go.print(("GODEBUG: unknown cpu feature \"" : stdgo.GoString), _key_244975, ("\"\n" : stdgo.GoString));
                    _gotoNext = 244649i32;
                } else if (__value__ == (245604i32)) {
                    if ((0i32 : stdgo.GoInt) < (stdgo._internal.internal.cpu.Cpu__options._options.length)) {
                        _gotoNext = 245817i32;
                    } else {
                        _gotoNext = 245820i32;
                    };
                } else if (__value__ == (245630i32)) {
                    _o_245611 = stdgo._internal.internal.cpu.Cpu__options._options[(_i_245616_0 : stdgo.GoInt)];
                    if (!_o_245611.specified) {
                        _gotoNext = 245650i32;
                    } else {
                        _gotoNext = 245671i32;
                    };
                } else if (__value__ == (245650i32)) {
                    _i_245616_0++;
                    _gotoNext = 245818i32;
                } else if (__value__ == (245671i32)) {
                    if ((_o_245611.enable && !_o_245611.feature.value : Bool)) {
                        _gotoNext = 245698i32;
                    } else {
                        _gotoNext = 245795i32;
                    };
                } else if (__value__ == (245698i32)) {
                    stdgo.Go.print(("GODEBUG: can not enable \"" : stdgo.GoString), _o_245611.name, ("\", missing CPU support\n" : stdgo.GoString));
                    _i_245616_0++;
                    _gotoNext = 245818i32;
                } else if (__value__ == (245795i32)) {
                    _o_245611.feature.value = _o_245611.enable;
                    _i_245616_0++;
                    _gotoNext = 245818i32;
                } else if (__value__ == (245817i32)) {
                    {
                        final __tmp__0 = 0i32;
                        final __tmp__1 = stdgo._internal.internal.cpu.Cpu__options._options[(0i32 : stdgo.GoInt)];
                        _i_245616_0 = __tmp__0;
                        _o_245611 = __tmp__1;
                    };
                    _gotoNext = 245818i32;
                } else if (__value__ == (245818i32)) {
                    if (_i_245616_0 < (stdgo._internal.internal.cpu.Cpu__options._options.length)) {
                        _gotoNext = 245630i32;
                    } else {
                        _gotoNext = 245820i32;
                    };
                } else if (__value__ == (245820i32)) {
                    _gotoNext = -1i32;
                };
            };
        };
    }
