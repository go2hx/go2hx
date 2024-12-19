package stdgo._internal.internal.cpu;
function _processOptions(_env:stdgo.GoString):Void {
        var _o_216867:stdgo._internal.internal.cpu.Cpu_T_option.T_option = ({} : stdgo._internal.internal.cpu.Cpu_T_option.T_option);
        var _i_216872_0:stdgo.GoInt = (0 : stdgo.GoInt);
        var _i_216655:stdgo.GoInt = (0 : stdgo.GoInt);
        var _i_216537:stdgo.GoInt = (0 : stdgo.GoInt);
        var _value_216236:stdgo.GoString = ("" : stdgo.GoString);
        var _key_216231:stdgo.GoString = ("" : stdgo.GoString);
        var _enable_216297:Bool = false;
        var _i_215937:stdgo.GoInt = (0 : stdgo.GoInt);
        var _field_215923:stdgo.GoString = ("" : stdgo.GoString);
        var _fieldBreak = false;
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    _gotoNext = 215897i32;
                } else if (__value__ == (215897i32)) {
                    var __blank__ = 0i32;
                    _fieldBreak = false;
                    _gotoNext = 215905i32;
                } else if (__value__ == (215905i32)) {
                    if (!_fieldBreak && (_env != stdgo.Go.str())) {
                        _gotoNext = 215919i32;
                    } else {
                        _gotoNext = 216860i32;
                    };
                } else if (__value__ == (215919i32)) {
                    _field_215923 = stdgo.Go.str()?.__copy__();
                    _i_215937 = stdgo._internal.internal.cpu.Cpu__indexByte._indexByte(_env?.__copy__(), (44 : stdgo.GoUInt8));
                    if ((_i_215937 < (0 : stdgo.GoInt) : Bool)) {
                        _gotoNext = 215973i32;
                    } else {
                        _gotoNext = 216008i32;
                    };
                } else if (__value__ == (215973i32)) {
                    {
                        final __tmp__0 = _env?.__copy__();
                        final __tmp__1 = stdgo.Go.str()?.__copy__();
                        _field_215923 = __tmp__0;
                        _env = __tmp__1;
                    };
                    _gotoNext = 216051i32;
                } else if (__value__ == (216008i32)) {
                    _gotoNext = 216008i32;
                    {
                        final __tmp__0 = (_env.__slice__(0, _i_215937) : stdgo.GoString)?.__copy__();
                        final __tmp__1 = (_env.__slice__((_i_215937 + (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        _field_215923 = __tmp__0;
                        _env = __tmp__1;
                    };
                    var __blank__ = 0i32;
                    _gotoNext = 216051i32;
                } else if (__value__ == (216051i32)) {
                    if ((((_field_215923.length) < (4 : stdgo.GoInt) : Bool) || ((_field_215923.__slice__(0, (4 : stdgo.GoInt)) : stdgo.GoString) != ("cpu." : stdgo.GoString)) : Bool)) {
                        _gotoNext = 216092i32;
                    } else {
                        _gotoNext = 216112i32;
                    };
                } else if (__value__ == (216092i32)) {
                    var __blank__ = 0i32;
                    _gotoNext = 215905i32;
                } else if (__value__ == (216112i32)) {
                    _i_215937 = stdgo._internal.internal.cpu.Cpu__indexByte._indexByte(_field_215923?.__copy__(), (61 : stdgo.GoUInt8));
                    if ((_i_215937 < (0 : stdgo.GoInt) : Bool)) {
                        _gotoNext = 216149i32;
                    } else {
                        _gotoNext = 216231i32;
                    };
                } else if (__value__ == (216149i32)) {
                    stdgo.Go.print(("GODEBUG: no value specified for \"" : stdgo.GoString), _field_215923, ("\"\n" : stdgo.GoString));
                    var __blank__ = 0i32;
                    _gotoNext = 215905i32;
                } else if (__value__ == (216231i32)) {
                    {
                        final __tmp__0 = (_field_215923.__slice__((4 : stdgo.GoInt), _i_215937) : stdgo.GoString)?.__copy__();
                        final __tmp__1 = (_field_215923.__slice__((_i_215937 + (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        _key_216231 = __tmp__0;
                        _value_216236 = __tmp__1;
                    };
                    _gotoNext = 216311i32;
                } else if (__value__ == (216311i32)) {
                    {
                        final __value__ = _value_216236;
                        if (__value__ == (("on" : stdgo.GoString))) {
                            _gotoNext = 216328i32;
                        } else if (__value__ == (("off" : stdgo.GoString))) {
                            _gotoNext = 216358i32;
                        } else {
                            _gotoNext = 216390i32;
                        };
                    };
                } else if (__value__ == (216328i32)) {
                    _enable_216297 = true;
                    _gotoNext = 216512i32;
                } else if (__value__ == (216358i32)) {
                    _enable_216297 = false;
                    _gotoNext = 216512i32;
                } else if (__value__ == (216390i32)) {
                    stdgo.Go.print(("GODEBUG: value \"" : stdgo.GoString), _value_216236, ("\" not supported for cpu option \"" : stdgo.GoString), _key_216231, ("\"\n" : stdgo.GoString));
                    _gotoNext = 215905i32;
                } else if (__value__ == (216512i32)) {
                    if (_key_216231 == (("all" : stdgo.GoString))) {
                        _gotoNext = 216528i32;
                    } else {
                        _gotoNext = 216651i32;
                    };
                } else if (__value__ == (216528i32)) {
                    if ((0i32 : stdgo.GoInt) < (stdgo._internal.internal.cpu.Cpu__options._options.length)) {
                        _gotoNext = 216623i32;
                    } else {
                        _gotoNext = 216629i32;
                    };
                } else if (__value__ == (216556i32)) {
                    stdgo._internal.internal.cpu.Cpu__options._options[(_i_216537 : stdgo.GoInt)].specified = true;
                    stdgo._internal.internal.cpu.Cpu__options._options[(_i_216537 : stdgo.GoInt)].enable = _enable_216297;
                    _i_216537++;
                    _gotoNext = 216624i32;
                } else if (__value__ == (216623i32)) {
                    _i_216537 = 0i32;
                    _gotoNext = 216624i32;
                } else if (__value__ == (216624i32)) {
                    if (_i_216537 < (stdgo._internal.internal.cpu.Cpu__options._options.length)) {
                        _gotoNext = 216556i32;
                    } else {
                        _gotoNext = 216629i32;
                    };
                } else if (__value__ == (216629i32)) {
                    _gotoNext = 215905i32;
                } else if (__value__ == (216651i32)) {
                    if ((0i32 : stdgo.GoInt) < (stdgo._internal.internal.cpu.Cpu__options._options.length)) {
                        _gotoNext = 216795i32;
                    } else {
                        _gotoNext = 216801i32;
                    };
                } else if (__value__ == (216655i32)) {
                    _i_216655++;
                    _gotoNext = 216796i32;
                } else if (__value__ == (216674i32)) {
                    if (stdgo._internal.internal.cpu.Cpu__options._options[(_i_216655 : stdgo.GoInt)].name == (_key_216231)) {
                        _gotoNext = 216705i32;
                    } else {
                        _gotoNext = 216655i32;
                    };
                } else if (__value__ == (216705i32)) {
                    stdgo._internal.internal.cpu.Cpu__options._options[(_i_216655 : stdgo.GoInt)].specified = true;
                    stdgo._internal.internal.cpu.Cpu__options._options[(_i_216655 : stdgo.GoInt)].enable = _enable_216297;
                    _gotoNext = 215905i32;
                } else if (__value__ == (216795i32)) {
                    _i_216655 = 0i32;
                    _gotoNext = 216796i32;
                } else if (__value__ == (216796i32)) {
                    if (_i_216655 < (stdgo._internal.internal.cpu.Cpu__options._options.length)) {
                        _gotoNext = 216674i32;
                    } else {
                        _gotoNext = 216801i32;
                    };
                } else if (__value__ == (216801i32)) {
                    stdgo.Go.print(("GODEBUG: unknown cpu feature \"" : stdgo.GoString), _key_216231, ("\"\n" : stdgo.GoString));
                    _gotoNext = 215905i32;
                } else if (__value__ == (216860i32)) {
                    if ((0i32 : stdgo.GoInt) < (stdgo._internal.internal.cpu.Cpu__options._options.length)) {
                        _gotoNext = 217073i32;
                    } else {
                        _gotoNext = 217076i32;
                    };
                } else if (__value__ == (216886i32)) {
                    _o_216867 = stdgo._internal.internal.cpu.Cpu__options._options[(_i_216872_0 : stdgo.GoInt)];
                    if (!_o_216867.specified) {
                        _gotoNext = 216906i32;
                    } else {
                        _gotoNext = 216927i32;
                    };
                } else if (__value__ == (216906i32)) {
                    _i_216872_0++;
                    _gotoNext = 217074i32;
                } else if (__value__ == (216927i32)) {
                    if ((_o_216867.enable && !_o_216867.feature.value : Bool)) {
                        _gotoNext = 216954i32;
                    } else {
                        _gotoNext = 217051i32;
                    };
                } else if (__value__ == (216954i32)) {
                    stdgo.Go.print(("GODEBUG: can not enable \"" : stdgo.GoString), _o_216867.name, ("\", missing CPU support\n" : stdgo.GoString));
                    _i_216872_0++;
                    _gotoNext = 217074i32;
                } else if (__value__ == (217051i32)) {
                    _o_216867.feature.value = _o_216867.enable;
                    _i_216872_0++;
                    _gotoNext = 217074i32;
                } else if (__value__ == (217073i32)) {
                    {
                        final __tmp__0 = 0i32;
                        final __tmp__1 = stdgo._internal.internal.cpu.Cpu__options._options[(0i32 : stdgo.GoInt)];
                        _i_216872_0 = __tmp__0;
                        _o_216867 = __tmp__1;
                    };
                    _gotoNext = 217074i32;
                } else if (__value__ == (217074i32)) {
                    if (_i_216872_0 < (stdgo._internal.internal.cpu.Cpu__options._options.length)) {
                        _gotoNext = 216886i32;
                    } else {
                        _gotoNext = 217076i32;
                    };
                } else if (__value__ == (217076i32)) {
                    _gotoNext = -1i32;
                };
            };
        };
    }
