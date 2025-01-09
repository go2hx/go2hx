package stdgo._internal.internal.cpu;
function _processOptions(_env:stdgo.GoString):Void {
        var _o_31176:stdgo._internal.internal.cpu.Cpu_T_option.T_option = ({} : stdgo._internal.internal.cpu.Cpu_T_option.T_option);
        var _i_31181_0:stdgo.GoInt = (0 : stdgo.GoInt);
        var _i_30246:stdgo.GoInt = (0 : stdgo.GoInt);
        var _field_30232:stdgo.GoString = ("" : stdgo.GoString);
        var _fieldBreak = false;
        var _i_30964:stdgo.GoInt = (0 : stdgo.GoInt);
        var _i_30846:stdgo.GoInt = (0 : stdgo.GoInt);
        var _enable_30606:Bool = false;
        var _value_30545:stdgo.GoString = ("" : stdgo.GoString);
        var _key_30540:stdgo.GoString = ("" : stdgo.GoString);
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    _gotoNext = 30206i32;
                } else if (__value__ == (30206i32)) {
                    var __blank__ = 0i32;
                    _fieldBreak = false;
                    _gotoNext = 30214i32;
                } else if (__value__ == (30214i32)) {
                    if (!_fieldBreak && (_env != stdgo.Go.str())) {
                        _gotoNext = 30228i32;
                    } else {
                        _gotoNext = 31169i32;
                    };
                } else if (__value__ == (30228i32)) {
                    _field_30232 = stdgo.Go.str()?.__copy__();
                    _i_30246 = stdgo._internal.internal.cpu.Cpu__indexByte._indexByte(_env?.__copy__(), (44 : stdgo.GoUInt8));
                    if ((_i_30246 < (0 : stdgo.GoInt) : Bool)) {
                        _gotoNext = 30282i32;
                    } else {
                        _gotoNext = 30317i32;
                    };
                } else if (__value__ == (30282i32)) {
                    {
                        final __tmp__0 = _env?.__copy__();
                        final __tmp__1 = stdgo.Go.str()?.__copy__();
                        _field_30232 = __tmp__0;
                        _env = __tmp__1;
                    };
                    _gotoNext = 30360i32;
                } else if (__value__ == (30317i32)) {
                    _gotoNext = 30317i32;
                    {
                        final __tmp__0 = (_env.__slice__(0, _i_30246) : stdgo.GoString)?.__copy__();
                        final __tmp__1 = (_env.__slice__((_i_30246 + (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        _field_30232 = __tmp__0;
                        _env = __tmp__1;
                    };
                    var __blank__ = 0i32;
                    _gotoNext = 30360i32;
                } else if (__value__ == (30360i32)) {
                    if ((((_field_30232.length) < (4 : stdgo.GoInt) : Bool) || ((_field_30232.__slice__(0, (4 : stdgo.GoInt)) : stdgo.GoString) != ("cpu." : stdgo.GoString)) : Bool)) {
                        _gotoNext = 30401i32;
                    } else {
                        _gotoNext = 30421i32;
                    };
                } else if (__value__ == (30401i32)) {
                    var __blank__ = 0i32;
                    _gotoNext = 30214i32;
                } else if (__value__ == (30421i32)) {
                    _i_30246 = stdgo._internal.internal.cpu.Cpu__indexByte._indexByte(_field_30232?.__copy__(), (61 : stdgo.GoUInt8));
                    if ((_i_30246 < (0 : stdgo.GoInt) : Bool)) {
                        _gotoNext = 30458i32;
                    } else {
                        _gotoNext = 30540i32;
                    };
                } else if (__value__ == (30458i32)) {
                    stdgo.Go.print(("GODEBUG: no value specified for \"" : stdgo.GoString), _field_30232, ("\"\n" : stdgo.GoString));
                    var __blank__ = 0i32;
                    _gotoNext = 30214i32;
                } else if (__value__ == (30540i32)) {
                    {
                        final __tmp__0 = (_field_30232.__slice__((4 : stdgo.GoInt), _i_30246) : stdgo.GoString)?.__copy__();
                        final __tmp__1 = (_field_30232.__slice__((_i_30246 + (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        _key_30540 = __tmp__0;
                        _value_30545 = __tmp__1;
                    };
                    _gotoNext = 30620i32;
                } else if (__value__ == (30620i32)) {
                    {
                        final __value__ = _value_30545;
                        if (__value__ == (("on" : stdgo.GoString))) {
                            _gotoNext = 30637i32;
                        } else if (__value__ == (("off" : stdgo.GoString))) {
                            _gotoNext = 30667i32;
                        } else {
                            _gotoNext = 30699i32;
                        };
                    };
                } else if (__value__ == (30637i32)) {
                    _enable_30606 = true;
                    _gotoNext = 30821i32;
                } else if (__value__ == (30667i32)) {
                    _enable_30606 = false;
                    _gotoNext = 30821i32;
                } else if (__value__ == (30699i32)) {
                    stdgo.Go.print(("GODEBUG: value \"" : stdgo.GoString), _value_30545, ("\" not supported for cpu option \"" : stdgo.GoString), _key_30540, ("\"\n" : stdgo.GoString));
                    _gotoNext = 30214i32;
                } else if (__value__ == (30821i32)) {
                    if (_key_30540 == (("all" : stdgo.GoString))) {
                        _gotoNext = 30837i32;
                    } else {
                        _gotoNext = 30960i32;
                    };
                } else if (__value__ == (30837i32)) {
                    if ((0i32 : stdgo.GoInt) < (stdgo._internal.internal.cpu.Cpu__options._options.length)) {
                        _gotoNext = 30932i32;
                    } else {
                        _gotoNext = 30938i32;
                    };
                } else if (__value__ == (30865i32)) {
                    stdgo._internal.internal.cpu.Cpu__options._options[(_i_30846 : stdgo.GoInt)].specified = true;
                    stdgo._internal.internal.cpu.Cpu__options._options[(_i_30846 : stdgo.GoInt)].enable = _enable_30606;
                    _i_30846++;
                    _gotoNext = 30933i32;
                } else if (__value__ == (30932i32)) {
                    _i_30846 = 0i32;
                    _gotoNext = 30933i32;
                } else if (__value__ == (30933i32)) {
                    if (_i_30846 < (stdgo._internal.internal.cpu.Cpu__options._options.length)) {
                        _gotoNext = 30865i32;
                    } else {
                        _gotoNext = 30938i32;
                    };
                } else if (__value__ == (30938i32)) {
                    _gotoNext = 30214i32;
                } else if (__value__ == (30960i32)) {
                    if ((0i32 : stdgo.GoInt) < (stdgo._internal.internal.cpu.Cpu__options._options.length)) {
                        _gotoNext = 31104i32;
                    } else {
                        _gotoNext = 31110i32;
                    };
                } else if (__value__ == (30964i32)) {
                    _i_30964++;
                    _gotoNext = 31105i32;
                } else if (__value__ == (30983i32)) {
                    if (stdgo._internal.internal.cpu.Cpu__options._options[(_i_30964 : stdgo.GoInt)].name == (_key_30540)) {
                        _gotoNext = 31014i32;
                    } else {
                        _gotoNext = 30964i32;
                    };
                } else if (__value__ == (31014i32)) {
                    stdgo._internal.internal.cpu.Cpu__options._options[(_i_30964 : stdgo.GoInt)].specified = true;
                    stdgo._internal.internal.cpu.Cpu__options._options[(_i_30964 : stdgo.GoInt)].enable = _enable_30606;
                    _gotoNext = 30214i32;
                } else if (__value__ == (31104i32)) {
                    _i_30964 = 0i32;
                    _gotoNext = 31105i32;
                } else if (__value__ == (31105i32)) {
                    if (_i_30964 < (stdgo._internal.internal.cpu.Cpu__options._options.length)) {
                        _gotoNext = 30983i32;
                    } else {
                        _gotoNext = 31110i32;
                    };
                } else if (__value__ == (31110i32)) {
                    stdgo.Go.print(("GODEBUG: unknown cpu feature \"" : stdgo.GoString), _key_30540, ("\"\n" : stdgo.GoString));
                    _gotoNext = 30214i32;
                } else if (__value__ == (31169i32)) {
                    if ((0i32 : stdgo.GoInt) < (stdgo._internal.internal.cpu.Cpu__options._options.length)) {
                        _gotoNext = 31382i32;
                    } else {
                        _gotoNext = 31385i32;
                    };
                } else if (__value__ == (31195i32)) {
                    _o_31176 = stdgo._internal.internal.cpu.Cpu__options._options[(_i_31181_0 : stdgo.GoInt)];
                    if (!_o_31176.specified) {
                        _gotoNext = 31215i32;
                    } else {
                        _gotoNext = 31236i32;
                    };
                } else if (__value__ == (31215i32)) {
                    _i_31181_0++;
                    _gotoNext = 31383i32;
                } else if (__value__ == (31236i32)) {
                    if ((_o_31176.enable && !_o_31176.feature.value : Bool)) {
                        _gotoNext = 31263i32;
                    } else {
                        _gotoNext = 31360i32;
                    };
                } else if (__value__ == (31263i32)) {
                    stdgo.Go.print(("GODEBUG: can not enable \"" : stdgo.GoString), _o_31176.name, ("\", missing CPU support\n" : stdgo.GoString));
                    _i_31181_0++;
                    _gotoNext = 31383i32;
                } else if (__value__ == (31360i32)) {
                    _o_31176.feature.value = _o_31176.enable;
                    _i_31181_0++;
                    _gotoNext = 31383i32;
                } else if (__value__ == (31382i32)) {
                    {
                        final __tmp__0 = 0i32;
                        final __tmp__1 = stdgo._internal.internal.cpu.Cpu__options._options[(0i32 : stdgo.GoInt)];
                        _i_31181_0 = __tmp__0;
                        _o_31176 = __tmp__1;
                    };
                    _gotoNext = 31383i32;
                } else if (__value__ == (31383i32)) {
                    if (_i_31181_0 < (stdgo._internal.internal.cpu.Cpu__options._options.length)) {
                        _gotoNext = 31195i32;
                    } else {
                        _gotoNext = 31385i32;
                    };
                } else if (__value__ == (31385i32)) {
                    _gotoNext = -1i32;
                };
            };
        };
    }
