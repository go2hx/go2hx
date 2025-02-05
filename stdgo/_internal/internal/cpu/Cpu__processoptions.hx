package stdgo._internal.internal.cpu;
function _processOptions(_env:stdgo.GoString):Void {
        var _fieldBreak = false;
        var _i_305560_0:stdgo.GoInt = (0 : stdgo.GoInt);
        var _enable_304985:Bool = false;
        var _key_304919:stdgo.GoString = ("" : stdgo.GoString);
        var _field_304611:stdgo.GoString = ("" : stdgo.GoString);
        var _o_305555:stdgo._internal.internal.cpu.Cpu_t_option.T_option = ({} : stdgo._internal.internal.cpu.Cpu_t_option.T_option);
        var _i_305343:stdgo.GoInt = (0 : stdgo.GoInt);
        var _i_305225:stdgo.GoInt = (0 : stdgo.GoInt);
        var _value_304924:stdgo.GoString = ("" : stdgo.GoString);
        var _i_304625:stdgo.GoInt = (0 : stdgo.GoInt);
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    _gotoNext = 304585i32;
                } else if (__value__ == (304585i32)) {
                    var __blank__ = 0i32;
                    _fieldBreak = false;
                    _gotoNext = 304593i32;
                } else if (__value__ == (304593i32)) {
                    if (!_fieldBreak && (_env != (stdgo.Go.str() : stdgo.GoString))) {
                        _gotoNext = 304607i32;
                    } else {
                        _gotoNext = 305548i32;
                    };
                } else if (__value__ == (304607i32)) {
                    _field_304611 = (stdgo.Go.str() : stdgo.GoString)?.__copy__();
                    _i_304625 = stdgo._internal.internal.cpu.Cpu__indexbyte._indexByte(_env?.__copy__(), (44 : stdgo.GoUInt8));
                    if ((_i_304625 < (0 : stdgo.GoInt) : Bool)) {
                        _gotoNext = 304661i32;
                    } else {
                        _gotoNext = 304696i32;
                    };
                } else if (__value__ == (304661i32)) {
                    {
                        final __tmp__0 = _env?.__copy__();
                        final __tmp__1 = (stdgo.Go.str() : stdgo.GoString)?.__copy__();
                        _field_304611 = __tmp__0;
                        _env = __tmp__1;
                    };
                    _gotoNext = 304739i32;
                } else if (__value__ == (304696i32)) {
                    _gotoNext = 304696i32;
                    {
                        final __tmp__0 = (_env.__slice__(0, _i_304625) : stdgo.GoString)?.__copy__();
                        final __tmp__1 = (_env.__slice__((_i_304625 + (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        _field_304611 = __tmp__0;
                        _env = __tmp__1;
                    };
                    var __blank__ = 0i32;
                    _gotoNext = 304739i32;
                } else if (__value__ == (304739i32)) {
                    if ((((_field_304611.length) < (4 : stdgo.GoInt) : Bool) || ((_field_304611.__slice__(0, (4 : stdgo.GoInt)) : stdgo.GoString) != ("cpu." : stdgo.GoString)) : Bool)) {
                        _gotoNext = 304780i32;
                    } else {
                        _gotoNext = 304800i32;
                    };
                } else if (__value__ == (304780i32)) {
                    var __blank__ = 0i32;
                    _gotoNext = 304593i32;
                } else if (__value__ == (304800i32)) {
                    _i_304625 = stdgo._internal.internal.cpu.Cpu__indexbyte._indexByte(_field_304611?.__copy__(), (61 : stdgo.GoUInt8));
                    if ((_i_304625 < (0 : stdgo.GoInt) : Bool)) {
                        _gotoNext = 304837i32;
                    } else {
                        _gotoNext = 304919i32;
                    };
                } else if (__value__ == (304837i32)) {
                    stdgo.Go.print(("GODEBUG: no value specified for \"" : stdgo.GoString), _field_304611, ("\"\n" : stdgo.GoString));
                    var __blank__ = 0i32;
                    _gotoNext = 304593i32;
                } else if (__value__ == (304919i32)) {
                    {
                        final __tmp__0 = (_field_304611.__slice__((4 : stdgo.GoInt), _i_304625) : stdgo.GoString)?.__copy__();
                        final __tmp__1 = (_field_304611.__slice__((_i_304625 + (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        _key_304919 = __tmp__0;
                        _value_304924 = __tmp__1;
                    };
                    _gotoNext = 304999i32;
                } else if (__value__ == (304999i32)) {
                    {
                        final __value__ = _value_304924;
                        if (__value__ == (("on" : stdgo.GoString))) {
                            _gotoNext = 305016i32;
                        } else if (__value__ == (("off" : stdgo.GoString))) {
                            _gotoNext = 305046i32;
                        } else {
                            _gotoNext = 305078i32;
                        };
                    };
                } else if (__value__ == (305016i32)) {
                    _enable_304985 = true;
                    _gotoNext = 305200i32;
                } else if (__value__ == (305046i32)) {
                    _enable_304985 = false;
                    _gotoNext = 305200i32;
                } else if (__value__ == (305078i32)) {
                    stdgo.Go.print(("GODEBUG: value \"" : stdgo.GoString), _value_304924, ("\" not supported for cpu option \"" : stdgo.GoString), _key_304919, ("\"\n" : stdgo.GoString));
                    _gotoNext = 304593i32;
                } else if (__value__ == (305200i32)) {
                    if (_key_304919 == (("all" : stdgo.GoString))) {
                        _gotoNext = 305216i32;
                    } else {
                        _gotoNext = 305339i32;
                    };
                } else if (__value__ == (305216i32)) {
                    if ((0i32 : stdgo.GoInt) < (stdgo._internal.internal.cpu.Cpu__options._options.length)) {
                        _gotoNext = 305311i32;
                    } else {
                        _gotoNext = 305317i32;
                    };
                } else if (__value__ == (305244i32)) {
                    stdgo._internal.internal.cpu.Cpu__options._options[(_i_305225 : stdgo.GoInt)].specified = true;
                    stdgo._internal.internal.cpu.Cpu__options._options[(_i_305225 : stdgo.GoInt)].enable = _enable_304985;
                    _i_305225++;
                    _gotoNext = 305312i32;
                } else if (__value__ == (305311i32)) {
                    _i_305225 = 0i32;
                    _gotoNext = 305312i32;
                } else if (__value__ == (305312i32)) {
                    if (_i_305225 < (stdgo._internal.internal.cpu.Cpu__options._options.length)) {
                        _gotoNext = 305244i32;
                    } else {
                        _gotoNext = 305317i32;
                    };
                } else if (__value__ == (305317i32)) {
                    _gotoNext = 304593i32;
                } else if (__value__ == (305339i32)) {
                    if ((0i32 : stdgo.GoInt) < (stdgo._internal.internal.cpu.Cpu__options._options.length)) {
                        _gotoNext = 305483i32;
                    } else {
                        _gotoNext = 305489i32;
                    };
                } else if (__value__ == (305343i32)) {
                    _i_305343++;
                    _gotoNext = 305484i32;
                } else if (__value__ == (305362i32)) {
                    if (stdgo._internal.internal.cpu.Cpu__options._options[(_i_305343 : stdgo.GoInt)].name == (_key_304919)) {
                        _gotoNext = 305393i32;
                    } else {
                        _gotoNext = 305343i32;
                    };
                } else if (__value__ == (305393i32)) {
                    stdgo._internal.internal.cpu.Cpu__options._options[(_i_305343 : stdgo.GoInt)].specified = true;
                    stdgo._internal.internal.cpu.Cpu__options._options[(_i_305343 : stdgo.GoInt)].enable = _enable_304985;
                    _gotoNext = 304593i32;
                } else if (__value__ == (305483i32)) {
                    _i_305343 = 0i32;
                    _gotoNext = 305484i32;
                } else if (__value__ == (305484i32)) {
                    if (_i_305343 < (stdgo._internal.internal.cpu.Cpu__options._options.length)) {
                        _gotoNext = 305362i32;
                    } else {
                        _gotoNext = 305489i32;
                    };
                } else if (__value__ == (305489i32)) {
                    stdgo.Go.print(("GODEBUG: unknown cpu feature \"" : stdgo.GoString), _key_304919, ("\"\n" : stdgo.GoString));
                    _gotoNext = 304593i32;
                } else if (__value__ == (305548i32)) {
                    if ((0i32 : stdgo.GoInt) < (stdgo._internal.internal.cpu.Cpu__options._options.length)) {
                        _gotoNext = 305761i32;
                    } else {
                        _gotoNext = 305764i32;
                    };
                } else if (__value__ == (305574i32)) {
                    _o_305555 = stdgo._internal.internal.cpu.Cpu__options._options[(_i_305560_0 : stdgo.GoInt)];
                    if (!_o_305555.specified) {
                        _gotoNext = 305594i32;
                    } else {
                        _gotoNext = 305615i32;
                    };
                } else if (__value__ == (305594i32)) {
                    _i_305560_0++;
                    _gotoNext = 305762i32;
                } else if (__value__ == (305615i32)) {
                    if ((_o_305555.enable && !_o_305555.feature.value : Bool)) {
                        _gotoNext = 305642i32;
                    } else {
                        _gotoNext = 305739i32;
                    };
                } else if (__value__ == (305642i32)) {
                    stdgo.Go.print(("GODEBUG: can not enable \"" : stdgo.GoString), _o_305555.name, ("\", missing CPU support\n" : stdgo.GoString));
                    _i_305560_0++;
                    _gotoNext = 305762i32;
                } else if (__value__ == (305739i32)) {
                    _o_305555.feature.value = _o_305555.enable;
                    _i_305560_0++;
                    _gotoNext = 305762i32;
                } else if (__value__ == (305761i32)) {
                    {
                        final __tmp__0 = 0i32;
                        final __tmp__1 = stdgo._internal.internal.cpu.Cpu__options._options[(0i32 : stdgo.GoInt)];
                        _i_305560_0 = __tmp__0;
                        _o_305555 = __tmp__1;
                    };
                    _gotoNext = 305762i32;
                } else if (__value__ == (305762i32)) {
                    if (_i_305560_0 < (stdgo._internal.internal.cpu.Cpu__options._options.length)) {
                        _gotoNext = 305574i32;
                    } else {
                        _gotoNext = 305764i32;
                    };
                } else if (__value__ == (305764i32)) {
                    _gotoNext = -1i32;
                };
            };
        };
    }
