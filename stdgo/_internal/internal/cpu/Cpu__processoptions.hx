package stdgo._internal.internal.cpu;
function _processOptions(_env:stdgo.GoString):Void {
        var _i_5:stdgo.GoInt = (0 : stdgo.GoInt);
        var _enable_4:Bool = false;
        var _value_3:stdgo.GoString = ("" : stdgo.GoString);
        var _field_0:stdgo.GoString = ("" : stdgo.GoString);
        var _fieldBreak = false;
        var _o_8:stdgo._internal.internal.cpu.Cpu_t_option.T_option = ({} : stdgo._internal.internal.cpu.Cpu_t_option.T_option);
        var _iterator_63744_7:stdgo.GoInt = (0 : stdgo.GoInt);
        var _i_6:stdgo.GoInt = (0 : stdgo.GoInt);
        var _key_2:stdgo.GoString = ("" : stdgo.GoString);
        var _i_1:stdgo.GoInt = (0 : stdgo.GoInt);
        var _gotoNext = 0i32;
        _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    _gotoNext = 62769i32;
                } else if (__value__ == (62769i32)) {
                    0i32;
                    _fieldBreak = false;
                    _gotoNext = 62777i32;
                } else if (__value__ == (62777i32)) {
                    if (!_fieldBreak && (_env != (stdgo.Go.str() : stdgo.GoString))) {
                        _gotoNext = 62791i32;
                    } else {
                        _gotoNext = 63732i32;
                    };
                } else if (__value__ == (62791i32)) {
                    _field_0 = (stdgo.Go.str() : stdgo.GoString)?.__copy__();
                    _i_1 = stdgo._internal.internal.cpu.Cpu__indexbyte._indexByte(_env?.__copy__(), (44 : stdgo.GoUInt8));
                    if ((_i_1 < (0 : stdgo.GoInt) : Bool)) {
                        _gotoNext = 62845i32;
                    } else {
                        _gotoNext = 62880i32;
                    };
                } else if (__value__ == (62845i32)) {
                    {
                        final __tmp__0 = _env?.__copy__();
                        final __tmp__1 = (stdgo.Go.str() : stdgo.GoString)?.__copy__();
                        _field_0 = @:binopAssign __tmp__0;
                        _env = @:binopAssign __tmp__1;
                    };
                    _gotoNext = 62923i32;
                } else if (__value__ == (62880i32)) {
                    _gotoNext = 62880i32;
                    {
                        final __tmp__0 = (_env.__slice__(0, _i_1) : stdgo.GoString)?.__copy__();
                        final __tmp__1 = (_env.__slice__((_i_1 + (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        _field_0 = @:binopAssign __tmp__0;
                        _env = @:binopAssign __tmp__1;
                    };
                    0i32;
                    _gotoNext = 62923i32;
                } else if (__value__ == (62923i32)) {
                    if ((((_field_0.length) < (4 : stdgo.GoInt) : Bool) || ((_field_0.__slice__(0, (4 : stdgo.GoInt)) : stdgo.GoString) != ("cpu." : stdgo.GoString)) : Bool)) {
                        _gotoNext = 62964i32;
                    } else {
                        _gotoNext = 62984i32;
                    };
                } else if (__value__ == (62964i32)) {
                    0i32;
                    _gotoNext = 62777i32;
                } else if (__value__ == (62984i32)) {
                    _i_1 = stdgo._internal.internal.cpu.Cpu__indexbyte._indexByte(_field_0?.__copy__(), (61 : stdgo.GoUInt8));
                    if ((_i_1 < (0 : stdgo.GoInt) : Bool)) {
                        _gotoNext = 63021i32;
                    } else {
                        _gotoNext = 63103i32;
                    };
                } else if (__value__ == (63021i32)) {
                    stdgo.Go.print(("GODEBUG: no value specified for \"" : stdgo.GoString), _field_0, ("\"\n" : stdgo.GoString));
                    0i32;
                    _gotoNext = 62777i32;
                } else if (__value__ == (63103i32)) {
                    {
                        final __tmp__0 = (_field_0.__slice__((4 : stdgo.GoInt), _i_1) : stdgo.GoString)?.__copy__();
                        final __tmp__1 = (_field_0.__slice__((_i_1 + (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        _key_2 = @:binopAssign __tmp__0;
                        _value_3 = @:binopAssign __tmp__1;
                    };
                    _gotoNext = 63183i32;
                } else if (__value__ == (63183i32)) {
                    {
                        final __value__ = _value_3;
                        if (__value__ == (("on" : stdgo.GoString))) {
                            _gotoNext = 63200i32;
                        } else if (__value__ == (("off" : stdgo.GoString))) {
                            _gotoNext = 63230i32;
                        } else {
                            _gotoNext = 63262i32;
                        };
                    };
                } else if (__value__ == (63200i32)) {
                    _enable_4 = true;
                    _gotoNext = 63384i32;
                } else if (__value__ == (63230i32)) {
                    _enable_4 = false;
                    _gotoNext = 63384i32;
                } else if (__value__ == (63262i32)) {
                    stdgo.Go.print(("GODEBUG: value \"" : stdgo.GoString), _value_3, ("\" not supported for cpu option \"" : stdgo.GoString), _key_2, ("\"\n" : stdgo.GoString));
                    _gotoNext = 62777i32;
                } else if (__value__ == (63384i32)) {
                    if (_key_2 == (("all" : stdgo.GoString))) {
                        _gotoNext = 63400i32;
                    } else {
                        _gotoNext = 63523i32;
                    };
                } else if (__value__ == (63400i32)) {
                    if ((0i32 : stdgo.GoInt) < (stdgo._internal.internal.cpu.Cpu__options._options.length)) {
                        _gotoNext = 63495i32;
                    } else {
                        _gotoNext = 63501i32;
                    };
                } else if (__value__ == (63428i32)) {
                    stdgo._internal.internal.cpu.Cpu__options._options[(_i_5 : stdgo.GoInt)].specified = true;
                    stdgo._internal.internal.cpu.Cpu__options._options[(_i_5 : stdgo.GoInt)].enable = _enable_4;
                    _i_5++;
                    _gotoNext = 63496i32;
                } else if (__value__ == (63495i32)) {
                    _i_5 = 0i32;
                    _gotoNext = 63496i32;
                } else if (__value__ == (63496i32)) {
                    if (_i_5 < (stdgo._internal.internal.cpu.Cpu__options._options.length)) {
                        _gotoNext = 63428i32;
                    } else {
                        _gotoNext = 63501i32;
                    };
                } else if (__value__ == (63501i32)) {
                    _gotoNext = 62777i32;
                } else if (__value__ == (63523i32)) {
                    if ((0i32 : stdgo.GoInt) < (stdgo._internal.internal.cpu.Cpu__options._options.length)) {
                        _gotoNext = 63667i32;
                    } else {
                        _gotoNext = 63673i32;
                    };
                } else if (__value__ == (63527i32)) {
                    _i_6++;
                    _gotoNext = 63668i32;
                } else if (__value__ == (63546i32)) {
                    if (stdgo._internal.internal.cpu.Cpu__options._options[(_i_6 : stdgo.GoInt)].name == (_key_2)) {
                        _gotoNext = 63577i32;
                    } else {
                        _gotoNext = 63527i32;
                    };
                } else if (__value__ == (63577i32)) {
                    stdgo._internal.internal.cpu.Cpu__options._options[(_i_6 : stdgo.GoInt)].specified = true;
                    stdgo._internal.internal.cpu.Cpu__options._options[(_i_6 : stdgo.GoInt)].enable = _enable_4;
                    _gotoNext = 62777i32;
                } else if (__value__ == (63667i32)) {
                    _i_6 = 0i32;
                    _gotoNext = 63668i32;
                } else if (__value__ == (63668i32)) {
                    if (_i_6 < (stdgo._internal.internal.cpu.Cpu__options._options.length)) {
                        _gotoNext = 63546i32;
                    } else {
                        _gotoNext = 63673i32;
                    };
                } else if (__value__ == (63673i32)) {
                    stdgo.Go.print(("GODEBUG: unknown cpu feature \"" : stdgo.GoString), _key_2, ("\"\n" : stdgo.GoString));
                    _gotoNext = 62777i32;
                } else if (__value__ == (63732i32)) {
                    if ((0i32 : stdgo.GoInt) < (stdgo._internal.internal.cpu.Cpu__options._options.length)) {
                        _gotoNext = 63945i32;
                    } else {
                        _gotoNext = 63948i32;
                    };
                } else if (__value__ == (63758i32)) {
                    _o_8 = stdgo._internal.internal.cpu.Cpu__options._options[(_iterator_63744_7 : stdgo.GoInt)];
                    if (!_o_8.specified) {
                        _gotoNext = 63778i32;
                    } else {
                        _gotoNext = 63799i32;
                    };
                } else if (__value__ == (63778i32)) {
                    _iterator_63744_7++;
                    _gotoNext = 63946i32;
                } else if (__value__ == (63799i32)) {
                    if ((_o_8.enable && !_o_8.feature.value : Bool)) {
                        _gotoNext = 63826i32;
                    } else {
                        _gotoNext = 63923i32;
                    };
                } else if (__value__ == (63826i32)) {
                    stdgo.Go.print(("GODEBUG: can not enable \"" : stdgo.GoString), _o_8.name, ("\", missing CPU support\n" : stdgo.GoString));
                    _iterator_63744_7++;
                    _gotoNext = 63946i32;
                } else if (__value__ == (63923i32)) {
                    _o_8.feature.value = _o_8.enable;
                    _iterator_63744_7++;
                    _gotoNext = 63946i32;
                } else if (__value__ == (63945i32)) {
                    {
                        final __tmp__0 = 0i32;
                        final __tmp__1 = stdgo._internal.internal.cpu.Cpu__options._options[(0i32 : stdgo.GoInt)];
                        _iterator_63744_7 = @:binopAssign __tmp__0;
                        _o_8 = @:binopAssign __tmp__1;
                    };
                    _gotoNext = 63946i32;
                } else if (__value__ == (63946i32)) {
                    if (_iterator_63744_7 < (stdgo._internal.internal.cpu.Cpu__options._options.length)) {
                        _gotoNext = 63758i32;
                    } else {
                        _gotoNext = 63948i32;
                    };
                } else if (__value__ == (63948i32)) {
                    _gotoNext = -1i32;
                };
            };
        };
    }
