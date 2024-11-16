package stdgo._internal.internal.cpu;
function _processOptions(_env:stdgo.GoString):Void {
        var _i_311667:stdgo.GoInt = (0 : stdgo.GoInt);
        var _field_311653:stdgo.GoString = ("" : stdgo.GoString);
        var _fieldBreak = false;
        var _o_312597:stdgo._internal.internal.cpu.Cpu_T_option.T_option = ({} : stdgo._internal.internal.cpu.Cpu_T_option.T_option);
        var _i_312602_0:stdgo.GoInt = (0 : stdgo.GoInt);
        var _i_312267:stdgo.GoInt = (0 : stdgo.GoInt);
        var _value_311966:stdgo.GoString = ("" : stdgo.GoString);
        var _key_311961:stdgo.GoString = ("" : stdgo.GoString);
        var _i_312385:stdgo.GoInt = (0 : stdgo.GoInt);
        var _enable_312027:Bool = false;
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    _gotoNext = 311627i32;
                } else if (__value__ == (311627i32)) {
                    var __blank__ = 0i32;
                    _fieldBreak = false;
                    _gotoNext = 311635i32;
                } else if (__value__ == (311635i32)) {
                    if (!_fieldBreak && (_env != stdgo.Go.str())) {
                        _gotoNext = 311649i32;
                    } else {
                        _gotoNext = 312590i32;
                    };
                } else if (__value__ == (311649i32)) {
                    _field_311653 = stdgo.Go.str()?.__copy__();
                    _i_311667 = stdgo._internal.internal.cpu.Cpu__indexByte._indexByte(_env?.__copy__(), (44 : stdgo.GoUInt8));
                    if ((_i_311667 < (0 : stdgo.GoInt) : Bool)) {
                        _gotoNext = 311703i32;
                    } else {
                        _gotoNext = 311738i32;
                    };
                } else if (__value__ == (311703i32)) {
                    {
                        final __tmp__0 = _env?.__copy__();
                        final __tmp__1 = stdgo.Go.str()?.__copy__();
                        _field_311653 = __tmp__0;
                        _env = __tmp__1;
                    };
                    _gotoNext = 311781i32;
                } else if (__value__ == (311738i32)) {
                    _gotoNext = 311738i32;
                    {
                        final __tmp__0 = (_env.__slice__(0, _i_311667) : stdgo.GoString)?.__copy__();
                        final __tmp__1 = (_env.__slice__((_i_311667 + (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        _field_311653 = __tmp__0;
                        _env = __tmp__1;
                    };
                    var __blank__ = 0i32;
                    _gotoNext = 311781i32;
                } else if (__value__ == (311781i32)) {
                    if ((((_field_311653.length) < (4 : stdgo.GoInt) : Bool) || ((_field_311653.__slice__(0, (4 : stdgo.GoInt)) : stdgo.GoString) != ("cpu." : stdgo.GoString)) : Bool)) {
                        _gotoNext = 311822i32;
                    } else {
                        _gotoNext = 311842i32;
                    };
                } else if (__value__ == (311822i32)) {
                    var __blank__ = 0i32;
                    _gotoNext = 311635i32;
                } else if (__value__ == (311842i32)) {
                    _i_311667 = stdgo._internal.internal.cpu.Cpu__indexByte._indexByte(_field_311653?.__copy__(), (61 : stdgo.GoUInt8));
                    if ((_i_311667 < (0 : stdgo.GoInt) : Bool)) {
                        _gotoNext = 311879i32;
                    } else {
                        _gotoNext = 311961i32;
                    };
                } else if (__value__ == (311879i32)) {
                    stdgo.Go.print(("GODEBUG: no value specified for \"" : stdgo.GoString), _field_311653, ("\"\n" : stdgo.GoString));
                    var __blank__ = 0i32;
                    _gotoNext = 311635i32;
                } else if (__value__ == (311961i32)) {
                    {
                        final __tmp__0 = (_field_311653.__slice__((4 : stdgo.GoInt), _i_311667) : stdgo.GoString)?.__copy__();
                        final __tmp__1 = (_field_311653.__slice__((_i_311667 + (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        _key_311961 = __tmp__0;
                        _value_311966 = __tmp__1;
                    };
                    _gotoNext = 312041i32;
                } else if (__value__ == (312041i32)) {
                    {
                        final __value__ = _value_311966;
                        if (__value__ == (("on" : stdgo.GoString))) {
                            _gotoNext = 312058i32;
                        } else if (__value__ == (("off" : stdgo.GoString))) {
                            _gotoNext = 312088i32;
                        } else {
                            _gotoNext = 312120i32;
                        };
                    };
                } else if (__value__ == (312058i32)) {
                    _enable_312027 = true;
                    _gotoNext = 312242i32;
                } else if (__value__ == (312088i32)) {
                    _enable_312027 = false;
                    _gotoNext = 312242i32;
                } else if (__value__ == (312120i32)) {
                    stdgo.Go.print(("GODEBUG: value \"" : stdgo.GoString), _value_311966, ("\" not supported for cpu option \"" : stdgo.GoString), _key_311961, ("\"\n" : stdgo.GoString));
                    _gotoNext = 311635i32;
                } else if (__value__ == (312242i32)) {
                    if (_key_311961 == (("all" : stdgo.GoString))) {
                        _gotoNext = 312258i32;
                    } else {
                        _gotoNext = 312381i32;
                    };
                } else if (__value__ == (312258i32)) {
                    if ((0i32 : stdgo.GoInt) < (stdgo._internal.internal.cpu.Cpu__options._options.length)) {
                        _gotoNext = 312353i32;
                    } else {
                        _gotoNext = 312359i32;
                    };
                } else if (__value__ == (312286i32)) {
                    stdgo._internal.internal.cpu.Cpu__options._options[(_i_312267 : stdgo.GoInt)].specified = true;
                    stdgo._internal.internal.cpu.Cpu__options._options[(_i_312267 : stdgo.GoInt)].enable = _enable_312027;
                    _i_312267++;
                    _gotoNext = 312354i32;
                } else if (__value__ == (312353i32)) {
                    _i_312267 = 0i32;
                    _gotoNext = 312354i32;
                } else if (__value__ == (312354i32)) {
                    if (_i_312267 < (stdgo._internal.internal.cpu.Cpu__options._options.length)) {
                        _gotoNext = 312286i32;
                    } else {
                        _gotoNext = 312359i32;
                    };
                } else if (__value__ == (312359i32)) {
                    _gotoNext = 311635i32;
                } else if (__value__ == (312381i32)) {
                    if ((0i32 : stdgo.GoInt) < (stdgo._internal.internal.cpu.Cpu__options._options.length)) {
                        _gotoNext = 312525i32;
                    } else {
                        _gotoNext = 312531i32;
                    };
                } else if (__value__ == (312385i32)) {
                    _i_312385++;
                    _gotoNext = 312526i32;
                } else if (__value__ == (312404i32)) {
                    if (stdgo._internal.internal.cpu.Cpu__options._options[(_i_312385 : stdgo.GoInt)].name == (_key_311961)) {
                        _gotoNext = 312435i32;
                    } else {
                        _gotoNext = 312385i32;
                    };
                } else if (__value__ == (312435i32)) {
                    stdgo._internal.internal.cpu.Cpu__options._options[(_i_312385 : stdgo.GoInt)].specified = true;
                    stdgo._internal.internal.cpu.Cpu__options._options[(_i_312385 : stdgo.GoInt)].enable = _enable_312027;
                    _gotoNext = 311635i32;
                } else if (__value__ == (312525i32)) {
                    _i_312385 = 0i32;
                    _gotoNext = 312526i32;
                } else if (__value__ == (312526i32)) {
                    if (_i_312385 < (stdgo._internal.internal.cpu.Cpu__options._options.length)) {
                        _gotoNext = 312404i32;
                    } else {
                        _gotoNext = 312531i32;
                    };
                } else if (__value__ == (312531i32)) {
                    stdgo.Go.print(("GODEBUG: unknown cpu feature \"" : stdgo.GoString), _key_311961, ("\"\n" : stdgo.GoString));
                    _gotoNext = 311635i32;
                } else if (__value__ == (312590i32)) {
                    if ((0i32 : stdgo.GoInt) < (stdgo._internal.internal.cpu.Cpu__options._options.length)) {
                        _gotoNext = 312803i32;
                    } else {
                        _gotoNext = 312806i32;
                    };
                } else if (__value__ == (312616i32)) {
                    _o_312597 = stdgo._internal.internal.cpu.Cpu__options._options[(_i_312602_0 : stdgo.GoInt)];
                    if (!_o_312597.specified) {
                        _gotoNext = 312636i32;
                    } else {
                        _gotoNext = 312657i32;
                    };
                } else if (__value__ == (312636i32)) {
                    _i_312602_0++;
                    _gotoNext = 312804i32;
                } else if (__value__ == (312657i32)) {
                    if ((_o_312597.enable && !_o_312597.feature.value : Bool)) {
                        _gotoNext = 312684i32;
                    } else {
                        _gotoNext = 312781i32;
                    };
                } else if (__value__ == (312684i32)) {
                    stdgo.Go.print(("GODEBUG: can not enable \"" : stdgo.GoString), _o_312597.name, ("\", missing CPU support\n" : stdgo.GoString));
                    _i_312602_0++;
                    _gotoNext = 312804i32;
                } else if (__value__ == (312781i32)) {
                    _o_312597.feature.value = _o_312597.enable;
                    _i_312602_0++;
                    _gotoNext = 312804i32;
                } else if (__value__ == (312803i32)) {
                    {
                        final __tmp__0 = 0i32;
                        final __tmp__1 = stdgo._internal.internal.cpu.Cpu__options._options[(0i32 : stdgo.GoInt)];
                        _i_312602_0 = __tmp__0;
                        _o_312597 = __tmp__1;
                    };
                    _gotoNext = 312804i32;
                } else if (__value__ == (312804i32)) {
                    if (_i_312602_0 < (stdgo._internal.internal.cpu.Cpu__options._options.length)) {
                        _gotoNext = 312616i32;
                    } else {
                        _gotoNext = 312806i32;
                    };
                } else if (__value__ == (312806i32)) {
                    _gotoNext = -1i32;
                };
            };
        };
    }
