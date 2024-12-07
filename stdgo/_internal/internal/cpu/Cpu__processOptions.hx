package stdgo._internal.internal.cpu;
function _processOptions(_env:stdgo.GoString):Void {
        var _i_13340_0:stdgo.GoInt = (0 : stdgo.GoInt);
        var _i_13123:stdgo.GoInt = (0 : stdgo.GoInt);
        var _key_12699:stdgo.GoString = ("" : stdgo.GoString);
        var _o_13335:stdgo._internal.internal.cpu.Cpu_T_option.T_option = ({} : stdgo._internal.internal.cpu.Cpu_T_option.T_option);
        var _i_12405:stdgo.GoInt = (0 : stdgo.GoInt);
        var _field_12391:stdgo.GoString = ("" : stdgo.GoString);
        var _fieldBreak = false;
        var _i_13005:stdgo.GoInt = (0 : stdgo.GoInt);
        var _enable_12765:Bool = false;
        var _value_12704:stdgo.GoString = ("" : stdgo.GoString);
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    _gotoNext = 12365i32;
                } else if (__value__ == (12365i32)) {
                    var __blank__ = 0i32;
                    _fieldBreak = false;
                    _gotoNext = 12373i32;
                } else if (__value__ == (12373i32)) {
                    if (!_fieldBreak && (_env != stdgo.Go.str())) {
                        _gotoNext = 12387i32;
                    } else {
                        _gotoNext = 13328i32;
                    };
                } else if (__value__ == (12387i32)) {
                    _field_12391 = stdgo.Go.str()?.__copy__();
                    _i_12405 = stdgo._internal.internal.cpu.Cpu__indexByte._indexByte(_env?.__copy__(), (44 : stdgo.GoUInt8));
                    if ((_i_12405 < (0 : stdgo.GoInt) : Bool)) {
                        _gotoNext = 12441i32;
                    } else {
                        _gotoNext = 12476i32;
                    };
                } else if (__value__ == (12441i32)) {
                    {
                        final __tmp__0 = _env?.__copy__();
                        final __tmp__1 = stdgo.Go.str()?.__copy__();
                        _field_12391 = __tmp__0;
                        _env = __tmp__1;
                    };
                    _gotoNext = 12519i32;
                } else if (__value__ == (12476i32)) {
                    _gotoNext = 12476i32;
                    {
                        final __tmp__0 = (_env.__slice__(0, _i_12405) : stdgo.GoString)?.__copy__();
                        final __tmp__1 = (_env.__slice__((_i_12405 + (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        _field_12391 = __tmp__0;
                        _env = __tmp__1;
                    };
                    var __blank__ = 0i32;
                    _gotoNext = 12519i32;
                } else if (__value__ == (12519i32)) {
                    if ((((_field_12391.length) < (4 : stdgo.GoInt) : Bool) || ((_field_12391.__slice__(0, (4 : stdgo.GoInt)) : stdgo.GoString) != ("cpu." : stdgo.GoString)) : Bool)) {
                        _gotoNext = 12560i32;
                    } else {
                        _gotoNext = 12580i32;
                    };
                } else if (__value__ == (12560i32)) {
                    var __blank__ = 0i32;
                    _gotoNext = 12373i32;
                } else if (__value__ == (12580i32)) {
                    _i_12405 = stdgo._internal.internal.cpu.Cpu__indexByte._indexByte(_field_12391?.__copy__(), (61 : stdgo.GoUInt8));
                    if ((_i_12405 < (0 : stdgo.GoInt) : Bool)) {
                        _gotoNext = 12617i32;
                    } else {
                        _gotoNext = 12699i32;
                    };
                } else if (__value__ == (12617i32)) {
                    stdgo.Go.print(("GODEBUG: no value specified for \"" : stdgo.GoString), _field_12391, ("\"\n" : stdgo.GoString));
                    var __blank__ = 0i32;
                    _gotoNext = 12373i32;
                } else if (__value__ == (12699i32)) {
                    {
                        final __tmp__0 = (_field_12391.__slice__((4 : stdgo.GoInt), _i_12405) : stdgo.GoString)?.__copy__();
                        final __tmp__1 = (_field_12391.__slice__((_i_12405 + (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        _key_12699 = __tmp__0;
                        _value_12704 = __tmp__1;
                    };
                    _gotoNext = 12779i32;
                } else if (__value__ == (12779i32)) {
                    {
                        final __value__ = _value_12704;
                        if (__value__ == (("on" : stdgo.GoString))) {
                            _gotoNext = 12796i32;
                        } else if (__value__ == (("off" : stdgo.GoString))) {
                            _gotoNext = 12826i32;
                        } else {
                            _gotoNext = 12858i32;
                        };
                    };
                } else if (__value__ == (12796i32)) {
                    _enable_12765 = true;
                    _gotoNext = 12980i32;
                } else if (__value__ == (12826i32)) {
                    _enable_12765 = false;
                    _gotoNext = 12980i32;
                } else if (__value__ == (12858i32)) {
                    stdgo.Go.print(("GODEBUG: value \"" : stdgo.GoString), _value_12704, ("\" not supported for cpu option \"" : stdgo.GoString), _key_12699, ("\"\n" : stdgo.GoString));
                    _gotoNext = 12373i32;
                } else if (__value__ == (12980i32)) {
                    if (_key_12699 == (("all" : stdgo.GoString))) {
                        _gotoNext = 12996i32;
                    } else {
                        _gotoNext = 13119i32;
                    };
                } else if (__value__ == (12996i32)) {
                    if ((0i32 : stdgo.GoInt) < (stdgo._internal.internal.cpu.Cpu__options._options.length)) {
                        _gotoNext = 13091i32;
                    } else {
                        _gotoNext = 13097i32;
                    };
                } else if (__value__ == (13024i32)) {
                    stdgo._internal.internal.cpu.Cpu__options._options[(_i_13005 : stdgo.GoInt)].specified = true;
                    stdgo._internal.internal.cpu.Cpu__options._options[(_i_13005 : stdgo.GoInt)].enable = _enable_12765;
                    _i_13005++;
                    _gotoNext = 13092i32;
                } else if (__value__ == (13091i32)) {
                    _i_13005 = 0i32;
                    _gotoNext = 13092i32;
                } else if (__value__ == (13092i32)) {
                    if (_i_13005 < (stdgo._internal.internal.cpu.Cpu__options._options.length)) {
                        _gotoNext = 13024i32;
                    } else {
                        _gotoNext = 13097i32;
                    };
                } else if (__value__ == (13097i32)) {
                    _gotoNext = 12373i32;
                } else if (__value__ == (13119i32)) {
                    if ((0i32 : stdgo.GoInt) < (stdgo._internal.internal.cpu.Cpu__options._options.length)) {
                        _gotoNext = 13263i32;
                    } else {
                        _gotoNext = 13269i32;
                    };
                } else if (__value__ == (13123i32)) {
                    _i_13123++;
                    _gotoNext = 13264i32;
                } else if (__value__ == (13142i32)) {
                    if (stdgo._internal.internal.cpu.Cpu__options._options[(_i_13123 : stdgo.GoInt)].name == (_key_12699)) {
                        _gotoNext = 13173i32;
                    } else {
                        _gotoNext = 13123i32;
                    };
                } else if (__value__ == (13173i32)) {
                    stdgo._internal.internal.cpu.Cpu__options._options[(_i_13123 : stdgo.GoInt)].specified = true;
                    stdgo._internal.internal.cpu.Cpu__options._options[(_i_13123 : stdgo.GoInt)].enable = _enable_12765;
                    _gotoNext = 12373i32;
                } else if (__value__ == (13263i32)) {
                    _i_13123 = 0i32;
                    _gotoNext = 13264i32;
                } else if (__value__ == (13264i32)) {
                    if (_i_13123 < (stdgo._internal.internal.cpu.Cpu__options._options.length)) {
                        _gotoNext = 13142i32;
                    } else {
                        _gotoNext = 13269i32;
                    };
                } else if (__value__ == (13269i32)) {
                    stdgo.Go.print(("GODEBUG: unknown cpu feature \"" : stdgo.GoString), _key_12699, ("\"\n" : stdgo.GoString));
                    _gotoNext = 12373i32;
                } else if (__value__ == (13328i32)) {
                    if ((0i32 : stdgo.GoInt) < (stdgo._internal.internal.cpu.Cpu__options._options.length)) {
                        _gotoNext = 13541i32;
                    } else {
                        _gotoNext = 13544i32;
                    };
                } else if (__value__ == (13354i32)) {
                    _o_13335 = stdgo._internal.internal.cpu.Cpu__options._options[(_i_13340_0 : stdgo.GoInt)];
                    if (!_o_13335.specified) {
                        _gotoNext = 13374i32;
                    } else {
                        _gotoNext = 13395i32;
                    };
                } else if (__value__ == (13374i32)) {
                    _i_13340_0++;
                    _gotoNext = 13542i32;
                } else if (__value__ == (13395i32)) {
                    if ((_o_13335.enable && !_o_13335.feature.value : Bool)) {
                        _gotoNext = 13422i32;
                    } else {
                        _gotoNext = 13519i32;
                    };
                } else if (__value__ == (13422i32)) {
                    stdgo.Go.print(("GODEBUG: can not enable \"" : stdgo.GoString), _o_13335.name, ("\", missing CPU support\n" : stdgo.GoString));
                    _i_13340_0++;
                    _gotoNext = 13542i32;
                } else if (__value__ == (13519i32)) {
                    _o_13335.feature.value = _o_13335.enable;
                    _i_13340_0++;
                    _gotoNext = 13542i32;
                } else if (__value__ == (13541i32)) {
                    {
                        final __tmp__0 = 0i32;
                        final __tmp__1 = stdgo._internal.internal.cpu.Cpu__options._options[(0i32 : stdgo.GoInt)];
                        _i_13340_0 = __tmp__0;
                        _o_13335 = __tmp__1;
                    };
                    _gotoNext = 13542i32;
                } else if (__value__ == (13542i32)) {
                    if (_i_13340_0 < (stdgo._internal.internal.cpu.Cpu__options._options.length)) {
                        _gotoNext = 13354i32;
                    } else {
                        _gotoNext = 13544i32;
                    };
                } else if (__value__ == (13544i32)) {
                    _gotoNext = -1i32;
                };
            };
        };
    }
