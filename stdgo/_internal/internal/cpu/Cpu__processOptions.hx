package stdgo._internal.internal.cpu;
function _processOptions(_env:stdgo.GoString):Void {
        var _o_37230:stdgo._internal.internal.cpu.Cpu_T_option.T_option = ({} : stdgo._internal.internal.cpu.Cpu_T_option.T_option);
        var _i_37235_0:stdgo.GoInt = (0 : stdgo.GoInt);
        var _i_37018:stdgo.GoInt = (0 : stdgo.GoInt);
        var _i_36900:stdgo.GoInt = (0 : stdgo.GoInt);
        var _value_36599:stdgo.GoString = ("" : stdgo.GoString);
        var _key_36594:stdgo.GoString = ("" : stdgo.GoString);
        var _i_36300:stdgo.GoInt = (0 : stdgo.GoInt);
        var _field_36286:stdgo.GoString = ("" : stdgo.GoString);
        var _enable_36660:Bool = false;
        var _fieldBreak = false;
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    _gotoNext = 36260i32;
                } else if (__value__ == (36260i32)) {
                    var __blank__ = 0i32;
                    _fieldBreak = false;
                    _gotoNext = 36268i32;
                } else if (__value__ == (36268i32)) {
                    if (!_fieldBreak && (_env != stdgo.Go.str())) {
                        _gotoNext = 36282i32;
                    } else {
                        _gotoNext = 37223i32;
                    };
                } else if (__value__ == (36282i32)) {
                    _field_36286 = stdgo.Go.str()?.__copy__();
                    _i_36300 = stdgo._internal.internal.cpu.Cpu__indexByte._indexByte(_env?.__copy__(), (44 : stdgo.GoUInt8));
                    if ((_i_36300 < (0 : stdgo.GoInt) : Bool)) {
                        _gotoNext = 36336i32;
                    } else {
                        _gotoNext = 36371i32;
                    };
                } else if (__value__ == (36336i32)) {
                    {
                        final __tmp__0 = _env?.__copy__();
                        final __tmp__1 = stdgo.Go.str()?.__copy__();
                        _field_36286 = __tmp__0;
                        _env = __tmp__1;
                    };
                    _gotoNext = 36414i32;
                } else if (__value__ == (36371i32)) {
                    _gotoNext = 36371i32;
                    {
                        final __tmp__0 = (_env.__slice__(0, _i_36300) : stdgo.GoString)?.__copy__();
                        final __tmp__1 = (_env.__slice__((_i_36300 + (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        _field_36286 = __tmp__0;
                        _env = __tmp__1;
                    };
                    var __blank__ = 0i32;
                    _gotoNext = 36414i32;
                } else if (__value__ == (36414i32)) {
                    if ((((_field_36286.length) < (4 : stdgo.GoInt) : Bool) || ((_field_36286.__slice__(0, (4 : stdgo.GoInt)) : stdgo.GoString) != ("cpu." : stdgo.GoString)) : Bool)) {
                        _gotoNext = 36455i32;
                    } else {
                        _gotoNext = 36475i32;
                    };
                } else if (__value__ == (36455i32)) {
                    var __blank__ = 0i32;
                    _gotoNext = 36268i32;
                } else if (__value__ == (36475i32)) {
                    _i_36300 = stdgo._internal.internal.cpu.Cpu__indexByte._indexByte(_field_36286?.__copy__(), (61 : stdgo.GoUInt8));
                    if ((_i_36300 < (0 : stdgo.GoInt) : Bool)) {
                        _gotoNext = 36512i32;
                    } else {
                        _gotoNext = 36594i32;
                    };
                } else if (__value__ == (36512i32)) {
                    stdgo.Go.print(("GODEBUG: no value specified for \"" : stdgo.GoString), _field_36286, ("\"\n" : stdgo.GoString));
                    var __blank__ = 0i32;
                    _gotoNext = 36268i32;
                } else if (__value__ == (36594i32)) {
                    {
                        final __tmp__0 = (_field_36286.__slice__((4 : stdgo.GoInt), _i_36300) : stdgo.GoString)?.__copy__();
                        final __tmp__1 = (_field_36286.__slice__((_i_36300 + (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        _key_36594 = __tmp__0;
                        _value_36599 = __tmp__1;
                    };
                    _gotoNext = 36674i32;
                } else if (__value__ == (36674i32)) {
                    {
                        final __value__ = _value_36599;
                        if (__value__ == (("on" : stdgo.GoString))) {
                            _gotoNext = 36691i32;
                        } else if (__value__ == (("off" : stdgo.GoString))) {
                            _gotoNext = 36721i32;
                        } else {
                            _gotoNext = 36753i32;
                        };
                    };
                } else if (__value__ == (36691i32)) {
                    _enable_36660 = true;
                    _gotoNext = 36875i32;
                } else if (__value__ == (36721i32)) {
                    _enable_36660 = false;
                    _gotoNext = 36875i32;
                } else if (__value__ == (36753i32)) {
                    stdgo.Go.print(("GODEBUG: value \"" : stdgo.GoString), _value_36599, ("\" not supported for cpu option \"" : stdgo.GoString), _key_36594, ("\"\n" : stdgo.GoString));
                    _gotoNext = 36268i32;
                } else if (__value__ == (36875i32)) {
                    if (_key_36594 == (("all" : stdgo.GoString))) {
                        _gotoNext = 36891i32;
                    } else {
                        _gotoNext = 37014i32;
                    };
                } else if (__value__ == (36891i32)) {
                    if ((0i32 : stdgo.GoInt) < (stdgo._internal.internal.cpu.Cpu__options._options.length)) {
                        _gotoNext = 36986i32;
                    } else {
                        _gotoNext = 36992i32;
                    };
                } else if (__value__ == (36919i32)) {
                    stdgo._internal.internal.cpu.Cpu__options._options[(_i_36900 : stdgo.GoInt)].specified = true;
                    stdgo._internal.internal.cpu.Cpu__options._options[(_i_36900 : stdgo.GoInt)].enable = _enable_36660;
                    _i_36900++;
                    _gotoNext = 36987i32;
                } else if (__value__ == (36986i32)) {
                    _i_36900 = 0i32;
                    _gotoNext = 36987i32;
                } else if (__value__ == (36987i32)) {
                    if (_i_36900 < (stdgo._internal.internal.cpu.Cpu__options._options.length)) {
                        _gotoNext = 36919i32;
                    } else {
                        _gotoNext = 36992i32;
                    };
                } else if (__value__ == (36992i32)) {
                    _gotoNext = 36268i32;
                } else if (__value__ == (37014i32)) {
                    if ((0i32 : stdgo.GoInt) < (stdgo._internal.internal.cpu.Cpu__options._options.length)) {
                        _gotoNext = 37158i32;
                    } else {
                        _gotoNext = 37164i32;
                    };
                } else if (__value__ == (37018i32)) {
                    _i_37018++;
                    _gotoNext = 37159i32;
                } else if (__value__ == (37037i32)) {
                    if (stdgo._internal.internal.cpu.Cpu__options._options[(_i_37018 : stdgo.GoInt)].name == (_key_36594)) {
                        _gotoNext = 37068i32;
                    } else {
                        _gotoNext = 37018i32;
                    };
                } else if (__value__ == (37068i32)) {
                    stdgo._internal.internal.cpu.Cpu__options._options[(_i_37018 : stdgo.GoInt)].specified = true;
                    stdgo._internal.internal.cpu.Cpu__options._options[(_i_37018 : stdgo.GoInt)].enable = _enable_36660;
                    _gotoNext = 36268i32;
                } else if (__value__ == (37158i32)) {
                    _i_37018 = 0i32;
                    _gotoNext = 37159i32;
                } else if (__value__ == (37159i32)) {
                    if (_i_37018 < (stdgo._internal.internal.cpu.Cpu__options._options.length)) {
                        _gotoNext = 37037i32;
                    } else {
                        _gotoNext = 37164i32;
                    };
                } else if (__value__ == (37164i32)) {
                    stdgo.Go.print(("GODEBUG: unknown cpu feature \"" : stdgo.GoString), _key_36594, ("\"\n" : stdgo.GoString));
                    _gotoNext = 36268i32;
                } else if (__value__ == (37223i32)) {
                    if ((0i32 : stdgo.GoInt) < (stdgo._internal.internal.cpu.Cpu__options._options.length)) {
                        _gotoNext = 37436i32;
                    } else {
                        _gotoNext = 37439i32;
                    };
                } else if (__value__ == (37249i32)) {
                    _o_37230 = stdgo._internal.internal.cpu.Cpu__options._options[(_i_37235_0 : stdgo.GoInt)];
                    if (!_o_37230.specified) {
                        _gotoNext = 37269i32;
                    } else {
                        _gotoNext = 37290i32;
                    };
                } else if (__value__ == (37269i32)) {
                    _i_37235_0++;
                    _gotoNext = 37437i32;
                } else if (__value__ == (37290i32)) {
                    if ((_o_37230.enable && !_o_37230.feature.value : Bool)) {
                        _gotoNext = 37317i32;
                    } else {
                        _gotoNext = 37414i32;
                    };
                } else if (__value__ == (37317i32)) {
                    stdgo.Go.print(("GODEBUG: can not enable \"" : stdgo.GoString), _o_37230.name, ("\", missing CPU support\n" : stdgo.GoString));
                    _i_37235_0++;
                    _gotoNext = 37437i32;
                } else if (__value__ == (37414i32)) {
                    _o_37230.feature.value = _o_37230.enable;
                    _i_37235_0++;
                    _gotoNext = 37437i32;
                } else if (__value__ == (37436i32)) {
                    {
                        final __tmp__0 = 0i32;
                        final __tmp__1 = stdgo._internal.internal.cpu.Cpu__options._options[(0i32 : stdgo.GoInt)];
                        _i_37235_0 = __tmp__0;
                        _o_37230 = __tmp__1;
                    };
                    _gotoNext = 37437i32;
                } else if (__value__ == (37437i32)) {
                    if (_i_37235_0 < (stdgo._internal.internal.cpu.Cpu__options._options.length)) {
                        _gotoNext = 37249i32;
                    } else {
                        _gotoNext = 37439i32;
                    };
                } else if (__value__ == (37439i32)) {
                    _gotoNext = -1i32;
                };
            };
        };
    }
