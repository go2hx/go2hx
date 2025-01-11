package stdgo._internal.internal.cpu;
function _processOptions(_env:stdgo.GoString):Void {
        var _key_14472:stdgo.GoString = ("" : stdgo.GoString);
        var _field_14164:stdgo.GoString = ("" : stdgo.GoString);
        var _fieldBreak = false;
        var _o_15108:stdgo._internal.internal.cpu.Cpu_T_option.T_option = ({} : stdgo._internal.internal.cpu.Cpu_T_option.T_option);
        var _i_15113_0:stdgo.GoInt = (0 : stdgo.GoInt);
        var _enable_14538:Bool = false;
        var _i_14778:stdgo.GoInt = (0 : stdgo.GoInt);
        var _value_14477:stdgo.GoString = ("" : stdgo.GoString);
        var _i_14178:stdgo.GoInt = (0 : stdgo.GoInt);
        var _i_14896:stdgo.GoInt = (0 : stdgo.GoInt);
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    _gotoNext = 14138i32;
                } else if (__value__ == (14138i32)) {
                    var __blank__ = 0i32;
                    _fieldBreak = false;
                    _gotoNext = 14146i32;
                } else if (__value__ == (14146i32)) {
                    if (!_fieldBreak && (_env != stdgo.Go.str())) {
                        _gotoNext = 14160i32;
                    } else {
                        _gotoNext = 15101i32;
                    };
                } else if (__value__ == (14160i32)) {
                    _field_14164 = stdgo.Go.str()?.__copy__();
                    _i_14178 = stdgo._internal.internal.cpu.Cpu__indexByte._indexByte(_env?.__copy__(), (44 : stdgo.GoUInt8));
                    if ((_i_14178 < (0 : stdgo.GoInt) : Bool)) {
                        _gotoNext = 14214i32;
                    } else {
                        _gotoNext = 14249i32;
                    };
                } else if (__value__ == (14214i32)) {
                    {
                        final __tmp__0 = _env?.__copy__();
                        final __tmp__1 = stdgo.Go.str()?.__copy__();
                        _field_14164 = __tmp__0;
                        _env = __tmp__1;
                    };
                    _gotoNext = 14292i32;
                } else if (__value__ == (14249i32)) {
                    _gotoNext = 14249i32;
                    {
                        final __tmp__0 = (_env.__slice__(0, _i_14178) : stdgo.GoString)?.__copy__();
                        final __tmp__1 = (_env.__slice__((_i_14178 + (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        _field_14164 = __tmp__0;
                        _env = __tmp__1;
                    };
                    var __blank__ = 0i32;
                    _gotoNext = 14292i32;
                } else if (__value__ == (14292i32)) {
                    if ((((_field_14164.length) < (4 : stdgo.GoInt) : Bool) || ((_field_14164.__slice__(0, (4 : stdgo.GoInt)) : stdgo.GoString) != ("cpu." : stdgo.GoString)) : Bool)) {
                        _gotoNext = 14333i32;
                    } else {
                        _gotoNext = 14353i32;
                    };
                } else if (__value__ == (14333i32)) {
                    var __blank__ = 0i32;
                    _gotoNext = 14146i32;
                } else if (__value__ == (14353i32)) {
                    _i_14178 = stdgo._internal.internal.cpu.Cpu__indexByte._indexByte(_field_14164?.__copy__(), (61 : stdgo.GoUInt8));
                    if ((_i_14178 < (0 : stdgo.GoInt) : Bool)) {
                        _gotoNext = 14390i32;
                    } else {
                        _gotoNext = 14472i32;
                    };
                } else if (__value__ == (14390i32)) {
                    stdgo.Go.print(("GODEBUG: no value specified for \"" : stdgo.GoString), _field_14164, ("\"\n" : stdgo.GoString));
                    var __blank__ = 0i32;
                    _gotoNext = 14146i32;
                } else if (__value__ == (14472i32)) {
                    {
                        final __tmp__0 = (_field_14164.__slice__((4 : stdgo.GoInt), _i_14178) : stdgo.GoString)?.__copy__();
                        final __tmp__1 = (_field_14164.__slice__((_i_14178 + (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        _key_14472 = __tmp__0;
                        _value_14477 = __tmp__1;
                    };
                    _gotoNext = 14552i32;
                } else if (__value__ == (14552i32)) {
                    {
                        final __value__ = _value_14477;
                        if (__value__ == (("on" : stdgo.GoString))) {
                            _gotoNext = 14569i32;
                        } else if (__value__ == (("off" : stdgo.GoString))) {
                            _gotoNext = 14599i32;
                        } else {
                            _gotoNext = 14631i32;
                        };
                    };
                } else if (__value__ == (14569i32)) {
                    _enable_14538 = true;
                    _gotoNext = 14753i32;
                } else if (__value__ == (14599i32)) {
                    _enable_14538 = false;
                    _gotoNext = 14753i32;
                } else if (__value__ == (14631i32)) {
                    stdgo.Go.print(("GODEBUG: value \"" : stdgo.GoString), _value_14477, ("\" not supported for cpu option \"" : stdgo.GoString), _key_14472, ("\"\n" : stdgo.GoString));
                    _gotoNext = 14146i32;
                } else if (__value__ == (14753i32)) {
                    if (_key_14472 == (("all" : stdgo.GoString))) {
                        _gotoNext = 14769i32;
                    } else {
                        _gotoNext = 14892i32;
                    };
                } else if (__value__ == (14769i32)) {
                    if ((0i32 : stdgo.GoInt) < (stdgo._internal.internal.cpu.Cpu__options._options.length)) {
                        _gotoNext = 14864i32;
                    } else {
                        _gotoNext = 14870i32;
                    };
                } else if (__value__ == (14797i32)) {
                    stdgo._internal.internal.cpu.Cpu__options._options[(_i_14778 : stdgo.GoInt)].specified = true;
                    stdgo._internal.internal.cpu.Cpu__options._options[(_i_14778 : stdgo.GoInt)].enable = _enable_14538;
                    _i_14778++;
                    _gotoNext = 14865i32;
                } else if (__value__ == (14864i32)) {
                    _i_14778 = 0i32;
                    _gotoNext = 14865i32;
                } else if (__value__ == (14865i32)) {
                    if (_i_14778 < (stdgo._internal.internal.cpu.Cpu__options._options.length)) {
                        _gotoNext = 14797i32;
                    } else {
                        _gotoNext = 14870i32;
                    };
                } else if (__value__ == (14870i32)) {
                    _gotoNext = 14146i32;
                } else if (__value__ == (14892i32)) {
                    if ((0i32 : stdgo.GoInt) < (stdgo._internal.internal.cpu.Cpu__options._options.length)) {
                        _gotoNext = 15036i32;
                    } else {
                        _gotoNext = 15042i32;
                    };
                } else if (__value__ == (14896i32)) {
                    _i_14896++;
                    _gotoNext = 15037i32;
                } else if (__value__ == (14915i32)) {
                    if (stdgo._internal.internal.cpu.Cpu__options._options[(_i_14896 : stdgo.GoInt)].name == (_key_14472)) {
                        _gotoNext = 14946i32;
                    } else {
                        _gotoNext = 14896i32;
                    };
                } else if (__value__ == (14946i32)) {
                    stdgo._internal.internal.cpu.Cpu__options._options[(_i_14896 : stdgo.GoInt)].specified = true;
                    stdgo._internal.internal.cpu.Cpu__options._options[(_i_14896 : stdgo.GoInt)].enable = _enable_14538;
                    _gotoNext = 14146i32;
                } else if (__value__ == (15036i32)) {
                    _i_14896 = 0i32;
                    _gotoNext = 15037i32;
                } else if (__value__ == (15037i32)) {
                    if (_i_14896 < (stdgo._internal.internal.cpu.Cpu__options._options.length)) {
                        _gotoNext = 14915i32;
                    } else {
                        _gotoNext = 15042i32;
                    };
                } else if (__value__ == (15042i32)) {
                    stdgo.Go.print(("GODEBUG: unknown cpu feature \"" : stdgo.GoString), _key_14472, ("\"\n" : stdgo.GoString));
                    _gotoNext = 14146i32;
                } else if (__value__ == (15101i32)) {
                    if ((0i32 : stdgo.GoInt) < (stdgo._internal.internal.cpu.Cpu__options._options.length)) {
                        _gotoNext = 15314i32;
                    } else {
                        _gotoNext = 15317i32;
                    };
                } else if (__value__ == (15127i32)) {
                    _o_15108 = stdgo._internal.internal.cpu.Cpu__options._options[(_i_15113_0 : stdgo.GoInt)];
                    if (!_o_15108.specified) {
                        _gotoNext = 15147i32;
                    } else {
                        _gotoNext = 15168i32;
                    };
                } else if (__value__ == (15147i32)) {
                    _i_15113_0++;
                    _gotoNext = 15315i32;
                } else if (__value__ == (15168i32)) {
                    if ((_o_15108.enable && !_o_15108.feature.value : Bool)) {
                        _gotoNext = 15195i32;
                    } else {
                        _gotoNext = 15292i32;
                    };
                } else if (__value__ == (15195i32)) {
                    stdgo.Go.print(("GODEBUG: can not enable \"" : stdgo.GoString), _o_15108.name, ("\", missing CPU support\n" : stdgo.GoString));
                    _i_15113_0++;
                    _gotoNext = 15315i32;
                } else if (__value__ == (15292i32)) {
                    _o_15108.feature.value = _o_15108.enable;
                    _i_15113_0++;
                    _gotoNext = 15315i32;
                } else if (__value__ == (15314i32)) {
                    {
                        final __tmp__0 = 0i32;
                        final __tmp__1 = stdgo._internal.internal.cpu.Cpu__options._options[(0i32 : stdgo.GoInt)];
                        _i_15113_0 = __tmp__0;
                        _o_15108 = __tmp__1;
                    };
                    _gotoNext = 15315i32;
                } else if (__value__ == (15315i32)) {
                    if (_i_15113_0 < (stdgo._internal.internal.cpu.Cpu__options._options.length)) {
                        _gotoNext = 15127i32;
                    } else {
                        _gotoNext = 15317i32;
                    };
                } else if (__value__ == (15317i32)) {
                    _gotoNext = -1i32;
                };
            };
        };
    }
