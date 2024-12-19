package stdgo._internal.internal.cpu;
function _processOptions(_env:stdgo.GoString):Void {
        var _i_18532:stdgo.GoInt = (0 : stdgo.GoInt);
        var _value_18113:stdgo.GoString = ("" : stdgo.GoString);
        var _key_18108:stdgo.GoString = ("" : stdgo.GoString);
        var _field_17800:stdgo.GoString = ("" : stdgo.GoString);
        var _i_18749_0:stdgo.GoInt = (0 : stdgo.GoInt);
        var _i_18414:stdgo.GoInt = (0 : stdgo.GoInt);
        var _enable_18174:Bool = false;
        var _i_17814:stdgo.GoInt = (0 : stdgo.GoInt);
        var _fieldBreak = false;
        var _o_18744:stdgo._internal.internal.cpu.Cpu_T_option.T_option = ({} : stdgo._internal.internal.cpu.Cpu_T_option.T_option);
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    _gotoNext = 17774i32;
                } else if (__value__ == (17774i32)) {
                    var __blank__ = 0i32;
                    _fieldBreak = false;
                    _gotoNext = 17782i32;
                } else if (__value__ == (17782i32)) {
                    if (!_fieldBreak && (_env != stdgo.Go.str())) {
                        _gotoNext = 17796i32;
                    } else {
                        _gotoNext = 18737i32;
                    };
                } else if (__value__ == (17796i32)) {
                    _field_17800 = stdgo.Go.str()?.__copy__();
                    _i_17814 = stdgo._internal.internal.cpu.Cpu__indexByte._indexByte(_env?.__copy__(), (44 : stdgo.GoUInt8));
                    if ((_i_17814 < (0 : stdgo.GoInt) : Bool)) {
                        _gotoNext = 17850i32;
                    } else {
                        _gotoNext = 17885i32;
                    };
                } else if (__value__ == (17850i32)) {
                    {
                        final __tmp__0 = _env?.__copy__();
                        final __tmp__1 = stdgo.Go.str()?.__copy__();
                        _field_17800 = __tmp__0;
                        _env = __tmp__1;
                    };
                    _gotoNext = 17928i32;
                } else if (__value__ == (17885i32)) {
                    _gotoNext = 17885i32;
                    {
                        final __tmp__0 = (_env.__slice__(0, _i_17814) : stdgo.GoString)?.__copy__();
                        final __tmp__1 = (_env.__slice__((_i_17814 + (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        _field_17800 = __tmp__0;
                        _env = __tmp__1;
                    };
                    var __blank__ = 0i32;
                    _gotoNext = 17928i32;
                } else if (__value__ == (17928i32)) {
                    if ((((_field_17800.length) < (4 : stdgo.GoInt) : Bool) || ((_field_17800.__slice__(0, (4 : stdgo.GoInt)) : stdgo.GoString) != ("cpu." : stdgo.GoString)) : Bool)) {
                        _gotoNext = 17969i32;
                    } else {
                        _gotoNext = 17989i32;
                    };
                } else if (__value__ == (17969i32)) {
                    var __blank__ = 0i32;
                    _gotoNext = 17782i32;
                } else if (__value__ == (17989i32)) {
                    _i_17814 = stdgo._internal.internal.cpu.Cpu__indexByte._indexByte(_field_17800?.__copy__(), (61 : stdgo.GoUInt8));
                    if ((_i_17814 < (0 : stdgo.GoInt) : Bool)) {
                        _gotoNext = 18026i32;
                    } else {
                        _gotoNext = 18108i32;
                    };
                } else if (__value__ == (18026i32)) {
                    stdgo.Go.print(("GODEBUG: no value specified for \"" : stdgo.GoString), _field_17800, ("\"\n" : stdgo.GoString));
                    var __blank__ = 0i32;
                    _gotoNext = 17782i32;
                } else if (__value__ == (18108i32)) {
                    {
                        final __tmp__0 = (_field_17800.__slice__((4 : stdgo.GoInt), _i_17814) : stdgo.GoString)?.__copy__();
                        final __tmp__1 = (_field_17800.__slice__((_i_17814 + (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        _key_18108 = __tmp__0;
                        _value_18113 = __tmp__1;
                    };
                    _gotoNext = 18188i32;
                } else if (__value__ == (18188i32)) {
                    {
                        final __value__ = _value_18113;
                        if (__value__ == (("on" : stdgo.GoString))) {
                            _gotoNext = 18205i32;
                        } else if (__value__ == (("off" : stdgo.GoString))) {
                            _gotoNext = 18235i32;
                        } else {
                            _gotoNext = 18267i32;
                        };
                    };
                } else if (__value__ == (18205i32)) {
                    _enable_18174 = true;
                    _gotoNext = 18389i32;
                } else if (__value__ == (18235i32)) {
                    _enable_18174 = false;
                    _gotoNext = 18389i32;
                } else if (__value__ == (18267i32)) {
                    stdgo.Go.print(("GODEBUG: value \"" : stdgo.GoString), _value_18113, ("\" not supported for cpu option \"" : stdgo.GoString), _key_18108, ("\"\n" : stdgo.GoString));
                    _gotoNext = 17782i32;
                } else if (__value__ == (18389i32)) {
                    if (_key_18108 == (("all" : stdgo.GoString))) {
                        _gotoNext = 18405i32;
                    } else {
                        _gotoNext = 18528i32;
                    };
                } else if (__value__ == (18405i32)) {
                    if ((0i32 : stdgo.GoInt) < (stdgo._internal.internal.cpu.Cpu__options._options.length)) {
                        _gotoNext = 18500i32;
                    } else {
                        _gotoNext = 18506i32;
                    };
                } else if (__value__ == (18433i32)) {
                    stdgo._internal.internal.cpu.Cpu__options._options[(_i_18414 : stdgo.GoInt)].specified = true;
                    stdgo._internal.internal.cpu.Cpu__options._options[(_i_18414 : stdgo.GoInt)].enable = _enable_18174;
                    _i_18414++;
                    _gotoNext = 18501i32;
                } else if (__value__ == (18500i32)) {
                    _i_18414 = 0i32;
                    _gotoNext = 18501i32;
                } else if (__value__ == (18501i32)) {
                    if (_i_18414 < (stdgo._internal.internal.cpu.Cpu__options._options.length)) {
                        _gotoNext = 18433i32;
                    } else {
                        _gotoNext = 18506i32;
                    };
                } else if (__value__ == (18506i32)) {
                    _gotoNext = 17782i32;
                } else if (__value__ == (18528i32)) {
                    if ((0i32 : stdgo.GoInt) < (stdgo._internal.internal.cpu.Cpu__options._options.length)) {
                        _gotoNext = 18672i32;
                    } else {
                        _gotoNext = 18678i32;
                    };
                } else if (__value__ == (18532i32)) {
                    _i_18532++;
                    _gotoNext = 18673i32;
                } else if (__value__ == (18551i32)) {
                    if (stdgo._internal.internal.cpu.Cpu__options._options[(_i_18532 : stdgo.GoInt)].name == (_key_18108)) {
                        _gotoNext = 18582i32;
                    } else {
                        _gotoNext = 18532i32;
                    };
                } else if (__value__ == (18582i32)) {
                    stdgo._internal.internal.cpu.Cpu__options._options[(_i_18532 : stdgo.GoInt)].specified = true;
                    stdgo._internal.internal.cpu.Cpu__options._options[(_i_18532 : stdgo.GoInt)].enable = _enable_18174;
                    _gotoNext = 17782i32;
                } else if (__value__ == (18672i32)) {
                    _i_18532 = 0i32;
                    _gotoNext = 18673i32;
                } else if (__value__ == (18673i32)) {
                    if (_i_18532 < (stdgo._internal.internal.cpu.Cpu__options._options.length)) {
                        _gotoNext = 18551i32;
                    } else {
                        _gotoNext = 18678i32;
                    };
                } else if (__value__ == (18678i32)) {
                    stdgo.Go.print(("GODEBUG: unknown cpu feature \"" : stdgo.GoString), _key_18108, ("\"\n" : stdgo.GoString));
                    _gotoNext = 17782i32;
                } else if (__value__ == (18737i32)) {
                    if ((0i32 : stdgo.GoInt) < (stdgo._internal.internal.cpu.Cpu__options._options.length)) {
                        _gotoNext = 18950i32;
                    } else {
                        _gotoNext = 18953i32;
                    };
                } else if (__value__ == (18763i32)) {
                    _o_18744 = stdgo._internal.internal.cpu.Cpu__options._options[(_i_18749_0 : stdgo.GoInt)];
                    if (!_o_18744.specified) {
                        _gotoNext = 18783i32;
                    } else {
                        _gotoNext = 18804i32;
                    };
                } else if (__value__ == (18783i32)) {
                    _i_18749_0++;
                    _gotoNext = 18951i32;
                } else if (__value__ == (18804i32)) {
                    if ((_o_18744.enable && !_o_18744.feature.value : Bool)) {
                        _gotoNext = 18831i32;
                    } else {
                        _gotoNext = 18928i32;
                    };
                } else if (__value__ == (18831i32)) {
                    stdgo.Go.print(("GODEBUG: can not enable \"" : stdgo.GoString), _o_18744.name, ("\", missing CPU support\n" : stdgo.GoString));
                    _i_18749_0++;
                    _gotoNext = 18951i32;
                } else if (__value__ == (18928i32)) {
                    _o_18744.feature.value = _o_18744.enable;
                    _i_18749_0++;
                    _gotoNext = 18951i32;
                } else if (__value__ == (18950i32)) {
                    {
                        final __tmp__0 = 0i32;
                        final __tmp__1 = stdgo._internal.internal.cpu.Cpu__options._options[(0i32 : stdgo.GoInt)];
                        _i_18749_0 = __tmp__0;
                        _o_18744 = __tmp__1;
                    };
                    _gotoNext = 18951i32;
                } else if (__value__ == (18951i32)) {
                    if (_i_18749_0 < (stdgo._internal.internal.cpu.Cpu__options._options.length)) {
                        _gotoNext = 18763i32;
                    } else {
                        _gotoNext = 18953i32;
                    };
                } else if (__value__ == (18953i32)) {
                    _gotoNext = -1i32;
                };
            };
        };
    }
