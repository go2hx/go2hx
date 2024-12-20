package stdgo._internal.internal.cpu;
function _processOptions(_env:stdgo.GoString):Void {
        var _value_346031:stdgo.GoString = ("" : stdgo.GoString);
        var _field_345718:stdgo.GoString = ("" : stdgo.GoString);
        var _key_346026:stdgo.GoString = ("" : stdgo.GoString);
        var _i_345732:stdgo.GoInt = (0 : stdgo.GoInt);
        var _fieldBreak = false;
        var _o_346662:stdgo._internal.internal.cpu.Cpu_T_option.T_option = ({} : stdgo._internal.internal.cpu.Cpu_T_option.T_option);
        var _i_346667_0:stdgo.GoInt = (0 : stdgo.GoInt);
        var _i_346450:stdgo.GoInt = (0 : stdgo.GoInt);
        var _i_346332:stdgo.GoInt = (0 : stdgo.GoInt);
        var _enable_346092:Bool = false;
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    _gotoNext = 345692i32;
                } else if (__value__ == (345692i32)) {
                    var __blank__ = 0i32;
                    _fieldBreak = false;
                    _gotoNext = 345700i32;
                } else if (__value__ == (345700i32)) {
                    if (!_fieldBreak && (_env != stdgo.Go.str())) {
                        _gotoNext = 345714i32;
                    } else {
                        _gotoNext = 346655i32;
                    };
                } else if (__value__ == (345714i32)) {
                    _field_345718 = stdgo.Go.str()?.__copy__();
                    _i_345732 = stdgo._internal.internal.cpu.Cpu__indexByte._indexByte(_env?.__copy__(), (44 : stdgo.GoUInt8));
                    if ((_i_345732 < (0 : stdgo.GoInt) : Bool)) {
                        _gotoNext = 345768i32;
                    } else {
                        _gotoNext = 345803i32;
                    };
                } else if (__value__ == (345768i32)) {
                    {
                        final __tmp__0 = _env?.__copy__();
                        final __tmp__1 = stdgo.Go.str()?.__copy__();
                        _field_345718 = __tmp__0;
                        _env = __tmp__1;
                    };
                    _gotoNext = 345846i32;
                } else if (__value__ == (345803i32)) {
                    _gotoNext = 345803i32;
                    {
                        final __tmp__0 = (_env.__slice__(0, _i_345732) : stdgo.GoString)?.__copy__();
                        final __tmp__1 = (_env.__slice__((_i_345732 + (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        _field_345718 = __tmp__0;
                        _env = __tmp__1;
                    };
                    var __blank__ = 0i32;
                    _gotoNext = 345846i32;
                } else if (__value__ == (345846i32)) {
                    if ((((_field_345718.length) < (4 : stdgo.GoInt) : Bool) || ((_field_345718.__slice__(0, (4 : stdgo.GoInt)) : stdgo.GoString) != ("cpu." : stdgo.GoString)) : Bool)) {
                        _gotoNext = 345887i32;
                    } else {
                        _gotoNext = 345907i32;
                    };
                } else if (__value__ == (345887i32)) {
                    var __blank__ = 0i32;
                    _gotoNext = 345700i32;
                } else if (__value__ == (345907i32)) {
                    _i_345732 = stdgo._internal.internal.cpu.Cpu__indexByte._indexByte(_field_345718?.__copy__(), (61 : stdgo.GoUInt8));
                    if ((_i_345732 < (0 : stdgo.GoInt) : Bool)) {
                        _gotoNext = 345944i32;
                    } else {
                        _gotoNext = 346026i32;
                    };
                } else if (__value__ == (345944i32)) {
                    stdgo.Go.print(("GODEBUG: no value specified for \"" : stdgo.GoString), _field_345718, ("\"\n" : stdgo.GoString));
                    var __blank__ = 0i32;
                    _gotoNext = 345700i32;
                } else if (__value__ == (346026i32)) {
                    {
                        final __tmp__0 = (_field_345718.__slice__((4 : stdgo.GoInt), _i_345732) : stdgo.GoString)?.__copy__();
                        final __tmp__1 = (_field_345718.__slice__((_i_345732 + (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        _key_346026 = __tmp__0;
                        _value_346031 = __tmp__1;
                    };
                    _gotoNext = 346106i32;
                } else if (__value__ == (346106i32)) {
                    {
                        final __value__ = _value_346031;
                        if (__value__ == (("on" : stdgo.GoString))) {
                            _gotoNext = 346123i32;
                        } else if (__value__ == (("off" : stdgo.GoString))) {
                            _gotoNext = 346153i32;
                        } else {
                            _gotoNext = 346185i32;
                        };
                    };
                } else if (__value__ == (346123i32)) {
                    _enable_346092 = true;
                    _gotoNext = 346307i32;
                } else if (__value__ == (346153i32)) {
                    _enable_346092 = false;
                    _gotoNext = 346307i32;
                } else if (__value__ == (346185i32)) {
                    stdgo.Go.print(("GODEBUG: value \"" : stdgo.GoString), _value_346031, ("\" not supported for cpu option \"" : stdgo.GoString), _key_346026, ("\"\n" : stdgo.GoString));
                    _gotoNext = 345700i32;
                } else if (__value__ == (346307i32)) {
                    if (_key_346026 == (("all" : stdgo.GoString))) {
                        _gotoNext = 346323i32;
                    } else {
                        _gotoNext = 346446i32;
                    };
                } else if (__value__ == (346323i32)) {
                    if ((0i32 : stdgo.GoInt) < (stdgo._internal.internal.cpu.Cpu__options._options.length)) {
                        _gotoNext = 346418i32;
                    } else {
                        _gotoNext = 346424i32;
                    };
                } else if (__value__ == (346351i32)) {
                    stdgo._internal.internal.cpu.Cpu__options._options[(_i_346332 : stdgo.GoInt)].specified = true;
                    stdgo._internal.internal.cpu.Cpu__options._options[(_i_346332 : stdgo.GoInt)].enable = _enable_346092;
                    _i_346332++;
                    _gotoNext = 346419i32;
                } else if (__value__ == (346418i32)) {
                    _i_346332 = 0i32;
                    _gotoNext = 346419i32;
                } else if (__value__ == (346419i32)) {
                    if (_i_346332 < (stdgo._internal.internal.cpu.Cpu__options._options.length)) {
                        _gotoNext = 346351i32;
                    } else {
                        _gotoNext = 346424i32;
                    };
                } else if (__value__ == (346424i32)) {
                    _gotoNext = 345700i32;
                } else if (__value__ == (346446i32)) {
                    if ((0i32 : stdgo.GoInt) < (stdgo._internal.internal.cpu.Cpu__options._options.length)) {
                        _gotoNext = 346590i32;
                    } else {
                        _gotoNext = 346596i32;
                    };
                } else if (__value__ == (346450i32)) {
                    _i_346450++;
                    _gotoNext = 346591i32;
                } else if (__value__ == (346469i32)) {
                    if (stdgo._internal.internal.cpu.Cpu__options._options[(_i_346450 : stdgo.GoInt)].name == (_key_346026)) {
                        _gotoNext = 346500i32;
                    } else {
                        _gotoNext = 346450i32;
                    };
                } else if (__value__ == (346500i32)) {
                    stdgo._internal.internal.cpu.Cpu__options._options[(_i_346450 : stdgo.GoInt)].specified = true;
                    stdgo._internal.internal.cpu.Cpu__options._options[(_i_346450 : stdgo.GoInt)].enable = _enable_346092;
                    _gotoNext = 345700i32;
                } else if (__value__ == (346590i32)) {
                    _i_346450 = 0i32;
                    _gotoNext = 346591i32;
                } else if (__value__ == (346591i32)) {
                    if (_i_346450 < (stdgo._internal.internal.cpu.Cpu__options._options.length)) {
                        _gotoNext = 346469i32;
                    } else {
                        _gotoNext = 346596i32;
                    };
                } else if (__value__ == (346596i32)) {
                    stdgo.Go.print(("GODEBUG: unknown cpu feature \"" : stdgo.GoString), _key_346026, ("\"\n" : stdgo.GoString));
                    _gotoNext = 345700i32;
                } else if (__value__ == (346655i32)) {
                    if ((0i32 : stdgo.GoInt) < (stdgo._internal.internal.cpu.Cpu__options._options.length)) {
                        _gotoNext = 346868i32;
                    } else {
                        _gotoNext = 346871i32;
                    };
                } else if (__value__ == (346681i32)) {
                    _o_346662 = stdgo._internal.internal.cpu.Cpu__options._options[(_i_346667_0 : stdgo.GoInt)];
                    if (!_o_346662.specified) {
                        _gotoNext = 346701i32;
                    } else {
                        _gotoNext = 346722i32;
                    };
                } else if (__value__ == (346701i32)) {
                    _i_346667_0++;
                    _gotoNext = 346869i32;
                } else if (__value__ == (346722i32)) {
                    if ((_o_346662.enable && !_o_346662.feature.value : Bool)) {
                        _gotoNext = 346749i32;
                    } else {
                        _gotoNext = 346846i32;
                    };
                } else if (__value__ == (346749i32)) {
                    stdgo.Go.print(("GODEBUG: can not enable \"" : stdgo.GoString), _o_346662.name, ("\", missing CPU support\n" : stdgo.GoString));
                    _i_346667_0++;
                    _gotoNext = 346869i32;
                } else if (__value__ == (346846i32)) {
                    _o_346662.feature.value = _o_346662.enable;
                    _i_346667_0++;
                    _gotoNext = 346869i32;
                } else if (__value__ == (346868i32)) {
                    {
                        final __tmp__0 = 0i32;
                        final __tmp__1 = stdgo._internal.internal.cpu.Cpu__options._options[(0i32 : stdgo.GoInt)];
                        _i_346667_0 = __tmp__0;
                        _o_346662 = __tmp__1;
                    };
                    _gotoNext = 346869i32;
                } else if (__value__ == (346869i32)) {
                    if (_i_346667_0 < (stdgo._internal.internal.cpu.Cpu__options._options.length)) {
                        _gotoNext = 346681i32;
                    } else {
                        _gotoNext = 346871i32;
                    };
                } else if (__value__ == (346871i32)) {
                    _gotoNext = -1i32;
                };
            };
        };
    }
