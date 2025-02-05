package stdgo._internal.internal.cpu;
function _processOptions(_env:stdgo.GoString):Void {
        var _fieldBreak = false;
        var _i_31132:stdgo.GoInt = (0 : stdgo.GoInt);
        var _key_30826:stdgo.GoString = ("" : stdgo.GoString);
        var _field_30518:stdgo.GoString = ("" : stdgo.GoString);
        var _o_31462:stdgo._internal.internal.cpu.Cpu_t_option.T_option = ({} : stdgo._internal.internal.cpu.Cpu_t_option.T_option);
        var _i_31467_0:stdgo.GoInt = (0 : stdgo.GoInt);
        var _i_31250:stdgo.GoInt = (0 : stdgo.GoInt);
        var _enable_30892:Bool = false;
        var _value_30831:stdgo.GoString = ("" : stdgo.GoString);
        var _i_30532:stdgo.GoInt = (0 : stdgo.GoInt);
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    _gotoNext = 30492i32;
                } else if (__value__ == (30492i32)) {
                    var __blank__ = 0i32;
                    _fieldBreak = false;
                    _gotoNext = 30500i32;
                } else if (__value__ == (30500i32)) {
                    if (!_fieldBreak && (_env != (stdgo.Go.str() : stdgo.GoString))) {
                        _gotoNext = 30514i32;
                    } else {
                        _gotoNext = 31455i32;
                    };
                } else if (__value__ == (30514i32)) {
                    _field_30518 = (stdgo.Go.str() : stdgo.GoString)?.__copy__();
                    _i_30532 = stdgo._internal.internal.cpu.Cpu__indexbyte._indexByte(_env?.__copy__(), (44 : stdgo.GoUInt8));
                    if ((_i_30532 < (0 : stdgo.GoInt) : Bool)) {
                        _gotoNext = 30568i32;
                    } else {
                        _gotoNext = 30603i32;
                    };
                } else if (__value__ == (30568i32)) {
                    {
                        final __tmp__0 = _env?.__copy__();
                        final __tmp__1 = (stdgo.Go.str() : stdgo.GoString)?.__copy__();
                        _field_30518 = __tmp__0;
                        _env = __tmp__1;
                    };
                    _gotoNext = 30646i32;
                } else if (__value__ == (30603i32)) {
                    _gotoNext = 30603i32;
                    {
                        final __tmp__0 = (_env.__slice__(0, _i_30532) : stdgo.GoString)?.__copy__();
                        final __tmp__1 = (_env.__slice__((_i_30532 + (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        _field_30518 = __tmp__0;
                        _env = __tmp__1;
                    };
                    var __blank__ = 0i32;
                    _gotoNext = 30646i32;
                } else if (__value__ == (30646i32)) {
                    if ((((_field_30518.length) < (4 : stdgo.GoInt) : Bool) || ((_field_30518.__slice__(0, (4 : stdgo.GoInt)) : stdgo.GoString) != ("cpu." : stdgo.GoString)) : Bool)) {
                        _gotoNext = 30687i32;
                    } else {
                        _gotoNext = 30707i32;
                    };
                } else if (__value__ == (30687i32)) {
                    var __blank__ = 0i32;
                    _gotoNext = 30500i32;
                } else if (__value__ == (30707i32)) {
                    _i_30532 = stdgo._internal.internal.cpu.Cpu__indexbyte._indexByte(_field_30518?.__copy__(), (61 : stdgo.GoUInt8));
                    if ((_i_30532 < (0 : stdgo.GoInt) : Bool)) {
                        _gotoNext = 30744i32;
                    } else {
                        _gotoNext = 30826i32;
                    };
                } else if (__value__ == (30744i32)) {
                    stdgo.Go.print(("GODEBUG: no value specified for \"" : stdgo.GoString), _field_30518, ("\"\n" : stdgo.GoString));
                    var __blank__ = 0i32;
                    _gotoNext = 30500i32;
                } else if (__value__ == (30826i32)) {
                    {
                        final __tmp__0 = (_field_30518.__slice__((4 : stdgo.GoInt), _i_30532) : stdgo.GoString)?.__copy__();
                        final __tmp__1 = (_field_30518.__slice__((_i_30532 + (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        _key_30826 = __tmp__0;
                        _value_30831 = __tmp__1;
                    };
                    _gotoNext = 30906i32;
                } else if (__value__ == (30906i32)) {
                    {
                        final __value__ = _value_30831;
                        if (__value__ == (("on" : stdgo.GoString))) {
                            _gotoNext = 30923i32;
                        } else if (__value__ == (("off" : stdgo.GoString))) {
                            _gotoNext = 30953i32;
                        } else {
                            _gotoNext = 30985i32;
                        };
                    };
                } else if (__value__ == (30923i32)) {
                    _enable_30892 = true;
                    _gotoNext = 31107i32;
                } else if (__value__ == (30953i32)) {
                    _enable_30892 = false;
                    _gotoNext = 31107i32;
                } else if (__value__ == (30985i32)) {
                    stdgo.Go.print(("GODEBUG: value \"" : stdgo.GoString), _value_30831, ("\" not supported for cpu option \"" : stdgo.GoString), _key_30826, ("\"\n" : stdgo.GoString));
                    _gotoNext = 30500i32;
                } else if (__value__ == (31107i32)) {
                    if (_key_30826 == (("all" : stdgo.GoString))) {
                        _gotoNext = 31123i32;
                    } else {
                        _gotoNext = 31246i32;
                    };
                } else if (__value__ == (31123i32)) {
                    if ((0i32 : stdgo.GoInt) < (stdgo._internal.internal.cpu.Cpu__options._options.length)) {
                        _gotoNext = 31218i32;
                    } else {
                        _gotoNext = 31224i32;
                    };
                } else if (__value__ == (31151i32)) {
                    stdgo._internal.internal.cpu.Cpu__options._options[(_i_31132 : stdgo.GoInt)].specified = true;
                    stdgo._internal.internal.cpu.Cpu__options._options[(_i_31132 : stdgo.GoInt)].enable = _enable_30892;
                    _i_31132++;
                    _gotoNext = 31219i32;
                } else if (__value__ == (31218i32)) {
                    _i_31132 = 0i32;
                    _gotoNext = 31219i32;
                } else if (__value__ == (31219i32)) {
                    if (_i_31132 < (stdgo._internal.internal.cpu.Cpu__options._options.length)) {
                        _gotoNext = 31151i32;
                    } else {
                        _gotoNext = 31224i32;
                    };
                } else if (__value__ == (31224i32)) {
                    _gotoNext = 30500i32;
                } else if (__value__ == (31246i32)) {
                    if ((0i32 : stdgo.GoInt) < (stdgo._internal.internal.cpu.Cpu__options._options.length)) {
                        _gotoNext = 31390i32;
                    } else {
                        _gotoNext = 31396i32;
                    };
                } else if (__value__ == (31250i32)) {
                    _i_31250++;
                    _gotoNext = 31391i32;
                } else if (__value__ == (31269i32)) {
                    if (stdgo._internal.internal.cpu.Cpu__options._options[(_i_31250 : stdgo.GoInt)].name == (_key_30826)) {
                        _gotoNext = 31300i32;
                    } else {
                        _gotoNext = 31250i32;
                    };
                } else if (__value__ == (31300i32)) {
                    stdgo._internal.internal.cpu.Cpu__options._options[(_i_31250 : stdgo.GoInt)].specified = true;
                    stdgo._internal.internal.cpu.Cpu__options._options[(_i_31250 : stdgo.GoInt)].enable = _enable_30892;
                    _gotoNext = 30500i32;
                } else if (__value__ == (31390i32)) {
                    _i_31250 = 0i32;
                    _gotoNext = 31391i32;
                } else if (__value__ == (31391i32)) {
                    if (_i_31250 < (stdgo._internal.internal.cpu.Cpu__options._options.length)) {
                        _gotoNext = 31269i32;
                    } else {
                        _gotoNext = 31396i32;
                    };
                } else if (__value__ == (31396i32)) {
                    stdgo.Go.print(("GODEBUG: unknown cpu feature \"" : stdgo.GoString), _key_30826, ("\"\n" : stdgo.GoString));
                    _gotoNext = 30500i32;
                } else if (__value__ == (31455i32)) {
                    if ((0i32 : stdgo.GoInt) < (stdgo._internal.internal.cpu.Cpu__options._options.length)) {
                        _gotoNext = 31668i32;
                    } else {
                        _gotoNext = 31671i32;
                    };
                } else if (__value__ == (31481i32)) {
                    _o_31462 = stdgo._internal.internal.cpu.Cpu__options._options[(_i_31467_0 : stdgo.GoInt)];
                    if (!_o_31462.specified) {
                        _gotoNext = 31501i32;
                    } else {
                        _gotoNext = 31522i32;
                    };
                } else if (__value__ == (31501i32)) {
                    _i_31467_0++;
                    _gotoNext = 31669i32;
                } else if (__value__ == (31522i32)) {
                    if ((_o_31462.enable && !_o_31462.feature.value : Bool)) {
                        _gotoNext = 31549i32;
                    } else {
                        _gotoNext = 31646i32;
                    };
                } else if (__value__ == (31549i32)) {
                    stdgo.Go.print(("GODEBUG: can not enable \"" : stdgo.GoString), _o_31462.name, ("\", missing CPU support\n" : stdgo.GoString));
                    _i_31467_0++;
                    _gotoNext = 31669i32;
                } else if (__value__ == (31646i32)) {
                    _o_31462.feature.value = _o_31462.enable;
                    _i_31467_0++;
                    _gotoNext = 31669i32;
                } else if (__value__ == (31668i32)) {
                    {
                        final __tmp__0 = 0i32;
                        final __tmp__1 = stdgo._internal.internal.cpu.Cpu__options._options[(0i32 : stdgo.GoInt)];
                        _i_31467_0 = __tmp__0;
                        _o_31462 = __tmp__1;
                    };
                    _gotoNext = 31669i32;
                } else if (__value__ == (31669i32)) {
                    if (_i_31467_0 < (stdgo._internal.internal.cpu.Cpu__options._options.length)) {
                        _gotoNext = 31481i32;
                    } else {
                        _gotoNext = 31671i32;
                    };
                } else if (__value__ == (31671i32)) {
                    _gotoNext = -1i32;
                };
            };
        };
    }
