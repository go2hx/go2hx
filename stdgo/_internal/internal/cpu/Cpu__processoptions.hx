package stdgo._internal.internal.cpu;
function _processOptions(_env:stdgo.GoString):Void {
        var _enable_4:Bool = false;
        var _key_2:stdgo.GoString = ("" : stdgo.GoString);
        var _i_1:stdgo.GoInt = (0 : stdgo.GoInt);
        var _field_0:stdgo.GoString = ("" : stdgo.GoString);
        var _fieldBreak = false;
        var _o_8:stdgo._internal.internal.cpu.Cpu_t_option.T_option = ({} : stdgo._internal.internal.cpu.Cpu_t_option.T_option);
        var _i_7187_7:stdgo.GoInt = (0 : stdgo.GoInt);
        var _i_6:stdgo.GoInt = (0 : stdgo.GoInt);
        var _i_5:stdgo.GoInt = (0 : stdgo.GoInt);
        var _value_3:stdgo.GoString = ("" : stdgo.GoString);
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    _gotoNext = 6212i32;
                } else if (__value__ == (6212i32)) {
                    var __blank__ = 0i32;
                    _fieldBreak = false;
                    _gotoNext = 6220i32;
                } else if (__value__ == (6220i32)) {
                    if (!_fieldBreak && (_env != (stdgo.Go.str() : stdgo.GoString))) {
                        _gotoNext = 6234i32;
                    } else {
                        _gotoNext = 7175i32;
                    };
                } else if (__value__ == (6234i32)) {
                    _field_0 = (stdgo.Go.str() : stdgo.GoString)?.__copy__();
                    _i_1 = stdgo._internal.internal.cpu.Cpu__indexbyte._indexByte(_env?.__copy__(), (44 : stdgo.GoUInt8));
                    if ((_i_1 < (0 : stdgo.GoInt) : Bool)) {
                        _gotoNext = 6288i32;
                    } else {
                        _gotoNext = 6323i32;
                    };
                } else if (__value__ == (6288i32)) {
                    {
                        final __tmp__0 = _env?.__copy__();
                        final __tmp__1 = (stdgo.Go.str() : stdgo.GoString)?.__copy__();
                        _field_0 = @:binopAssign __tmp__0;
                        _env = @:binopAssign __tmp__1;
                    };
                    _gotoNext = 6366i32;
                } else if (__value__ == (6323i32)) {
                    _gotoNext = 6323i32;
                    {
                        final __tmp__0 = (_env.__slice__(0, _i_1) : stdgo.GoString)?.__copy__();
                        final __tmp__1 = (_env.__slice__((_i_1 + (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        _field_0 = @:binopAssign __tmp__0;
                        _env = @:binopAssign __tmp__1;
                    };
                    var __blank__ = 0i32;
                    _gotoNext = 6366i32;
                } else if (__value__ == (6366i32)) {
                    if ((((_field_0.length) < (4 : stdgo.GoInt) : Bool) || ((_field_0.__slice__(0, (4 : stdgo.GoInt)) : stdgo.GoString) != ("cpu." : stdgo.GoString)) : Bool)) {
                        _gotoNext = 6407i32;
                    } else {
                        _gotoNext = 6427i32;
                    };
                } else if (__value__ == (6407i32)) {
                    var __blank__ = 0i32;
                    _gotoNext = 6220i32;
                } else if (__value__ == (6427i32)) {
                    _i_1 = stdgo._internal.internal.cpu.Cpu__indexbyte._indexByte(_field_0?.__copy__(), (61 : stdgo.GoUInt8));
                    if ((_i_1 < (0 : stdgo.GoInt) : Bool)) {
                        _gotoNext = 6464i32;
                    } else {
                        _gotoNext = 6546i32;
                    };
                } else if (__value__ == (6464i32)) {
                    stdgo.Go.print(("GODEBUG: no value specified for \"" : stdgo.GoString), _field_0, ("\"\n" : stdgo.GoString));
                    var __blank__ = 0i32;
                    _gotoNext = 6220i32;
                } else if (__value__ == (6546i32)) {
                    {
                        final __tmp__0 = (_field_0.__slice__((4 : stdgo.GoInt), _i_1) : stdgo.GoString)?.__copy__();
                        final __tmp__1 = (_field_0.__slice__((_i_1 + (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        _key_2 = @:binopAssign __tmp__0;
                        _value_3 = @:binopAssign __tmp__1;
                    };
                    _gotoNext = 6626i32;
                } else if (__value__ == (6626i32)) {
                    {
                        final __value__ = _value_3;
                        if (__value__ == (("on" : stdgo.GoString))) {
                            _gotoNext = 6643i32;
                        } else if (__value__ == (("off" : stdgo.GoString))) {
                            _gotoNext = 6673i32;
                        } else {
                            _gotoNext = 6705i32;
                        };
                    };
                } else if (__value__ == (6643i32)) {
                    _enable_4 = true;
                    _gotoNext = 6827i32;
                } else if (__value__ == (6673i32)) {
                    _enable_4 = false;
                    _gotoNext = 6827i32;
                } else if (__value__ == (6705i32)) {
                    stdgo.Go.print(("GODEBUG: value \"" : stdgo.GoString), _value_3, ("\" not supported for cpu option \"" : stdgo.GoString), _key_2, ("\"\n" : stdgo.GoString));
                    _gotoNext = 6220i32;
                } else if (__value__ == (6827i32)) {
                    if (_key_2 == (("all" : stdgo.GoString))) {
                        _gotoNext = 6843i32;
                    } else {
                        _gotoNext = 6966i32;
                    };
                } else if (__value__ == (6843i32)) {
                    if ((0i32 : stdgo.GoInt) < (stdgo._internal.internal.cpu.Cpu__options._options.length)) {
                        _gotoNext = 6938i32;
                    } else {
                        _gotoNext = 6944i32;
                    };
                } else if (__value__ == (6871i32)) {
                    stdgo._internal.internal.cpu.Cpu__options._options[(_i_5 : stdgo.GoInt)].specified = true;
                    stdgo._internal.internal.cpu.Cpu__options._options[(_i_5 : stdgo.GoInt)].enable = _enable_4;
                    _i_5++;
                    _gotoNext = 6939i32;
                } else if (__value__ == (6938i32)) {
                    _i_5 = 0i32;
                    _gotoNext = 6939i32;
                } else if (__value__ == (6939i32)) {
                    if (_i_5 < (stdgo._internal.internal.cpu.Cpu__options._options.length)) {
                        _gotoNext = 6871i32;
                    } else {
                        _gotoNext = 6944i32;
                    };
                } else if (__value__ == (6944i32)) {
                    _gotoNext = 6220i32;
                } else if (__value__ == (6966i32)) {
                    if ((0i32 : stdgo.GoInt) < (stdgo._internal.internal.cpu.Cpu__options._options.length)) {
                        _gotoNext = 7110i32;
                    } else {
                        _gotoNext = 7116i32;
                    };
                } else if (__value__ == (6970i32)) {
                    _i_6++;
                    _gotoNext = 7111i32;
                } else if (__value__ == (6989i32)) {
                    if (stdgo._internal.internal.cpu.Cpu__options._options[(_i_6 : stdgo.GoInt)].name == (_key_2)) {
                        _gotoNext = 7020i32;
                    } else {
                        _gotoNext = 6970i32;
                    };
                } else if (__value__ == (7020i32)) {
                    stdgo._internal.internal.cpu.Cpu__options._options[(_i_6 : stdgo.GoInt)].specified = true;
                    stdgo._internal.internal.cpu.Cpu__options._options[(_i_6 : stdgo.GoInt)].enable = _enable_4;
                    _gotoNext = 6220i32;
                } else if (__value__ == (7110i32)) {
                    _i_6 = 0i32;
                    _gotoNext = 7111i32;
                } else if (__value__ == (7111i32)) {
                    if (_i_6 < (stdgo._internal.internal.cpu.Cpu__options._options.length)) {
                        _gotoNext = 6989i32;
                    } else {
                        _gotoNext = 7116i32;
                    };
                } else if (__value__ == (7116i32)) {
                    stdgo.Go.print(("GODEBUG: unknown cpu feature \"" : stdgo.GoString), _key_2, ("\"\n" : stdgo.GoString));
                    _gotoNext = 6220i32;
                } else if (__value__ == (7175i32)) {
                    if ((0i32 : stdgo.GoInt) < (stdgo._internal.internal.cpu.Cpu__options._options.length)) {
                        _gotoNext = 7388i32;
                    } else {
                        _gotoNext = 7391i32;
                    };
                } else if (__value__ == (7201i32)) {
                    _o_8 = stdgo._internal.internal.cpu.Cpu__options._options[(_i_7187_7 : stdgo.GoInt)];
                    if (!_o_8.specified) {
                        _gotoNext = 7221i32;
                    } else {
                        _gotoNext = 7242i32;
                    };
                } else if (__value__ == (7221i32)) {
                    _i_7187_7++;
                    _gotoNext = 7389i32;
                } else if (__value__ == (7242i32)) {
                    if ((_o_8.enable && !_o_8.feature.value : Bool)) {
                        _gotoNext = 7269i32;
                    } else {
                        _gotoNext = 7366i32;
                    };
                } else if (__value__ == (7269i32)) {
                    stdgo.Go.print(("GODEBUG: can not enable \"" : stdgo.GoString), _o_8.name, ("\", missing CPU support\n" : stdgo.GoString));
                    _i_7187_7++;
                    _gotoNext = 7389i32;
                } else if (__value__ == (7366i32)) {
                    _o_8.feature.value = _o_8.enable;
                    _i_7187_7++;
                    _gotoNext = 7389i32;
                } else if (__value__ == (7388i32)) {
                    {
                        final __tmp__0 = 0i32;
                        final __tmp__1 = stdgo._internal.internal.cpu.Cpu__options._options[(0i32 : stdgo.GoInt)];
                        _i_7187_7 = @:binopAssign __tmp__0;
                        _o_8 = @:binopAssign __tmp__1;
                    };
                    _gotoNext = 7389i32;
                } else if (__value__ == (7389i32)) {
                    if (_i_7187_7 < (stdgo._internal.internal.cpu.Cpu__options._options.length)) {
                        _gotoNext = 7201i32;
                    } else {
                        _gotoNext = 7391i32;
                    };
                } else if (__value__ == (7391i32)) {
                    _gotoNext = -1i32;
                };
            };
        };
    }
