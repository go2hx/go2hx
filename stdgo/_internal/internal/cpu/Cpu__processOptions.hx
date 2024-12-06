package stdgo._internal.internal.cpu;
function _processOptions(_env:stdgo.GoString):Void {
        var _i_32409:stdgo.GoInt = (0 : stdgo.GoInt);
        var _i_31809:stdgo.GoInt = (0 : stdgo.GoInt);
        var _field_31795:stdgo.GoString = ("" : stdgo.GoString);
        var _value_32108:stdgo.GoString = ("" : stdgo.GoString);
        var _key_32103:stdgo.GoString = ("" : stdgo.GoString);
        var _fieldBreak = false;
        var _o_32739:stdgo._internal.internal.cpu.Cpu_T_option.T_option = ({} : stdgo._internal.internal.cpu.Cpu_T_option.T_option);
        var _i_32744_0:stdgo.GoInt = (0 : stdgo.GoInt);
        var _i_32527:stdgo.GoInt = (0 : stdgo.GoInt);
        var _enable_32169:Bool = false;
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    _gotoNext = 31769i32;
                } else if (__value__ == (31769i32)) {
                    var __blank__ = 0i32;
                    _fieldBreak = false;
                    _gotoNext = 31777i32;
                } else if (__value__ == (31777i32)) {
                    if (!_fieldBreak && (_env != stdgo.Go.str())) {
                        _gotoNext = 31791i32;
                    } else {
                        _gotoNext = 32732i32;
                    };
                } else if (__value__ == (31791i32)) {
                    _field_31795 = stdgo.Go.str()?.__copy__();
                    _i_31809 = stdgo._internal.internal.cpu.Cpu__indexByte._indexByte(_env?.__copy__(), (44 : stdgo.GoUInt8));
                    if ((_i_31809 < (0 : stdgo.GoInt) : Bool)) {
                        _gotoNext = 31845i32;
                    } else {
                        _gotoNext = 31880i32;
                    };
                } else if (__value__ == (31845i32)) {
                    {
                        final __tmp__0 = _env?.__copy__();
                        final __tmp__1 = stdgo.Go.str()?.__copy__();
                        _field_31795 = __tmp__0;
                        _env = __tmp__1;
                    };
                    _gotoNext = 31923i32;
                } else if (__value__ == (31880i32)) {
                    _gotoNext = 31880i32;
                    {
                        final __tmp__0 = (_env.__slice__(0, _i_31809) : stdgo.GoString)?.__copy__();
                        final __tmp__1 = (_env.__slice__((_i_31809 + (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        _field_31795 = __tmp__0;
                        _env = __tmp__1;
                    };
                    var __blank__ = 0i32;
                    _gotoNext = 31923i32;
                } else if (__value__ == (31923i32)) {
                    if ((((_field_31795.length) < (4 : stdgo.GoInt) : Bool) || ((_field_31795.__slice__(0, (4 : stdgo.GoInt)) : stdgo.GoString) != ("cpu." : stdgo.GoString)) : Bool)) {
                        _gotoNext = 31964i32;
                    } else {
                        _gotoNext = 31984i32;
                    };
                } else if (__value__ == (31964i32)) {
                    var __blank__ = 0i32;
                    _gotoNext = 31777i32;
                } else if (__value__ == (31984i32)) {
                    _i_31809 = stdgo._internal.internal.cpu.Cpu__indexByte._indexByte(_field_31795?.__copy__(), (61 : stdgo.GoUInt8));
                    if ((_i_31809 < (0 : stdgo.GoInt) : Bool)) {
                        _gotoNext = 32021i32;
                    } else {
                        _gotoNext = 32103i32;
                    };
                } else if (__value__ == (32021i32)) {
                    stdgo.Go.print(("GODEBUG: no value specified for \"" : stdgo.GoString), _field_31795, ("\"\n" : stdgo.GoString));
                    var __blank__ = 0i32;
                    _gotoNext = 31777i32;
                } else if (__value__ == (32103i32)) {
                    {
                        final __tmp__0 = (_field_31795.__slice__((4 : stdgo.GoInt), _i_31809) : stdgo.GoString)?.__copy__();
                        final __tmp__1 = (_field_31795.__slice__((_i_31809 + (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        _key_32103 = __tmp__0;
                        _value_32108 = __tmp__1;
                    };
                    _gotoNext = 32183i32;
                } else if (__value__ == (32183i32)) {
                    {
                        final __value__ = _value_32108;
                        if (__value__ == (("on" : stdgo.GoString))) {
                            _gotoNext = 32200i32;
                        } else if (__value__ == (("off" : stdgo.GoString))) {
                            _gotoNext = 32230i32;
                        } else {
                            _gotoNext = 32262i32;
                        };
                    };
                } else if (__value__ == (32200i32)) {
                    _enable_32169 = true;
                    _gotoNext = 32384i32;
                } else if (__value__ == (32230i32)) {
                    _enable_32169 = false;
                    _gotoNext = 32384i32;
                } else if (__value__ == (32262i32)) {
                    stdgo.Go.print(("GODEBUG: value \"" : stdgo.GoString), _value_32108, ("\" not supported for cpu option \"" : stdgo.GoString), _key_32103, ("\"\n" : stdgo.GoString));
                    _gotoNext = 31777i32;
                } else if (__value__ == (32384i32)) {
                    if (_key_32103 == (("all" : stdgo.GoString))) {
                        _gotoNext = 32400i32;
                    } else {
                        _gotoNext = 32523i32;
                    };
                } else if (__value__ == (32400i32)) {
                    if ((0i32 : stdgo.GoInt) < (stdgo._internal.internal.cpu.Cpu__options._options.length)) {
                        _gotoNext = 32495i32;
                    } else {
                        _gotoNext = 32501i32;
                    };
                } else if (__value__ == (32428i32)) {
                    stdgo._internal.internal.cpu.Cpu__options._options[(_i_32409 : stdgo.GoInt)].specified = true;
                    stdgo._internal.internal.cpu.Cpu__options._options[(_i_32409 : stdgo.GoInt)].enable = _enable_32169;
                    _i_32409++;
                    _gotoNext = 32496i32;
                } else if (__value__ == (32495i32)) {
                    _i_32409 = 0i32;
                    _gotoNext = 32496i32;
                } else if (__value__ == (32496i32)) {
                    if (_i_32409 < (stdgo._internal.internal.cpu.Cpu__options._options.length)) {
                        _gotoNext = 32428i32;
                    } else {
                        _gotoNext = 32501i32;
                    };
                } else if (__value__ == (32501i32)) {
                    _gotoNext = 31777i32;
                } else if (__value__ == (32523i32)) {
                    if ((0i32 : stdgo.GoInt) < (stdgo._internal.internal.cpu.Cpu__options._options.length)) {
                        _gotoNext = 32667i32;
                    } else {
                        _gotoNext = 32673i32;
                    };
                } else if (__value__ == (32527i32)) {
                    _i_32527++;
                    _gotoNext = 32668i32;
                } else if (__value__ == (32546i32)) {
                    if (stdgo._internal.internal.cpu.Cpu__options._options[(_i_32527 : stdgo.GoInt)].name == (_key_32103)) {
                        _gotoNext = 32577i32;
                    } else {
                        _gotoNext = 32527i32;
                    };
                } else if (__value__ == (32577i32)) {
                    stdgo._internal.internal.cpu.Cpu__options._options[(_i_32527 : stdgo.GoInt)].specified = true;
                    stdgo._internal.internal.cpu.Cpu__options._options[(_i_32527 : stdgo.GoInt)].enable = _enable_32169;
                    _gotoNext = 31777i32;
                } else if (__value__ == (32667i32)) {
                    _i_32527 = 0i32;
                    _gotoNext = 32668i32;
                } else if (__value__ == (32668i32)) {
                    if (_i_32527 < (stdgo._internal.internal.cpu.Cpu__options._options.length)) {
                        _gotoNext = 32546i32;
                    } else {
                        _gotoNext = 32673i32;
                    };
                } else if (__value__ == (32673i32)) {
                    stdgo.Go.print(("GODEBUG: unknown cpu feature \"" : stdgo.GoString), _key_32103, ("\"\n" : stdgo.GoString));
                    _gotoNext = 31777i32;
                } else if (__value__ == (32732i32)) {
                    if ((0i32 : stdgo.GoInt) < (stdgo._internal.internal.cpu.Cpu__options._options.length)) {
                        _gotoNext = 32945i32;
                    } else {
                        _gotoNext = 32948i32;
                    };
                } else if (__value__ == (32758i32)) {
                    _o_32739 = stdgo._internal.internal.cpu.Cpu__options._options[(_i_32744_0 : stdgo.GoInt)];
                    if (!_o_32739.specified) {
                        _gotoNext = 32778i32;
                    } else {
                        _gotoNext = 32799i32;
                    };
                } else if (__value__ == (32778i32)) {
                    _i_32744_0++;
                    _gotoNext = 32946i32;
                } else if (__value__ == (32799i32)) {
                    if ((_o_32739.enable && !_o_32739.feature.value : Bool)) {
                        _gotoNext = 32826i32;
                    } else {
                        _gotoNext = 32923i32;
                    };
                } else if (__value__ == (32826i32)) {
                    stdgo.Go.print(("GODEBUG: can not enable \"" : stdgo.GoString), _o_32739.name, ("\", missing CPU support\n" : stdgo.GoString));
                    _i_32744_0++;
                    _gotoNext = 32946i32;
                } else if (__value__ == (32923i32)) {
                    _o_32739.feature.value = _o_32739.enable;
                    _i_32744_0++;
                    _gotoNext = 32946i32;
                } else if (__value__ == (32945i32)) {
                    {
                        final __tmp__0 = 0i32;
                        final __tmp__1 = stdgo._internal.internal.cpu.Cpu__options._options[(0i32 : stdgo.GoInt)];
                        _i_32744_0 = __tmp__0;
                        _o_32739 = __tmp__1;
                    };
                    _gotoNext = 32946i32;
                } else if (__value__ == (32946i32)) {
                    if (_i_32744_0 < (stdgo._internal.internal.cpu.Cpu__options._options.length)) {
                        _gotoNext = 32758i32;
                    } else {
                        _gotoNext = 32948i32;
                    };
                } else if (__value__ == (32948i32)) {
                    _gotoNext = -1i32;
                };
            };
        };
    }
