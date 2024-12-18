package stdgo._internal.internal.cpu;
function _processOptions(_env:stdgo.GoString):Void {
        var _i_35087:stdgo.GoInt = (0 : stdgo.GoInt);
        var _enable_34729:Bool = false;
        var _i_34369:stdgo.GoInt = (0 : stdgo.GoInt);
        var _o_35299:stdgo._internal.internal.cpu.Cpu_T_option.T_option = ({} : stdgo._internal.internal.cpu.Cpu_T_option.T_option);
        var _i_35304_0:stdgo.GoInt = (0 : stdgo.GoInt);
        var _i_34969:stdgo.GoInt = (0 : stdgo.GoInt);
        var _value_34668:stdgo.GoString = ("" : stdgo.GoString);
        var _key_34663:stdgo.GoString = ("" : stdgo.GoString);
        var _field_34355:stdgo.GoString = ("" : stdgo.GoString);
        var _fieldBreak = false;
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    _gotoNext = 34329i32;
                } else if (__value__ == (34329i32)) {
                    var __blank__ = 0i32;
                    _fieldBreak = false;
                    _gotoNext = 34337i32;
                } else if (__value__ == (34337i32)) {
                    if (!_fieldBreak && (_env != stdgo.Go.str())) {
                        _gotoNext = 34351i32;
                    } else {
                        _gotoNext = 35292i32;
                    };
                } else if (__value__ == (34351i32)) {
                    _field_34355 = stdgo.Go.str()?.__copy__();
                    _i_34369 = stdgo._internal.internal.cpu.Cpu__indexByte._indexByte(_env?.__copy__(), (44 : stdgo.GoUInt8));
                    if ((_i_34369 < (0 : stdgo.GoInt) : Bool)) {
                        _gotoNext = 34405i32;
                    } else {
                        _gotoNext = 34440i32;
                    };
                } else if (__value__ == (34405i32)) {
                    {
                        final __tmp__0 = _env?.__copy__();
                        final __tmp__1 = stdgo.Go.str()?.__copy__();
                        _field_34355 = __tmp__0;
                        _env = __tmp__1;
                    };
                    _gotoNext = 34483i32;
                } else if (__value__ == (34440i32)) {
                    _gotoNext = 34440i32;
                    {
                        final __tmp__0 = (_env.__slice__(0, _i_34369) : stdgo.GoString)?.__copy__();
                        final __tmp__1 = (_env.__slice__((_i_34369 + (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        _field_34355 = __tmp__0;
                        _env = __tmp__1;
                    };
                    var __blank__ = 0i32;
                    _gotoNext = 34483i32;
                } else if (__value__ == (34483i32)) {
                    if ((((_field_34355.length) < (4 : stdgo.GoInt) : Bool) || ((_field_34355.__slice__(0, (4 : stdgo.GoInt)) : stdgo.GoString) != ("cpu." : stdgo.GoString)) : Bool)) {
                        _gotoNext = 34524i32;
                    } else {
                        _gotoNext = 34544i32;
                    };
                } else if (__value__ == (34524i32)) {
                    var __blank__ = 0i32;
                    _gotoNext = 34337i32;
                } else if (__value__ == (34544i32)) {
                    _i_34369 = stdgo._internal.internal.cpu.Cpu__indexByte._indexByte(_field_34355?.__copy__(), (61 : stdgo.GoUInt8));
                    if ((_i_34369 < (0 : stdgo.GoInt) : Bool)) {
                        _gotoNext = 34581i32;
                    } else {
                        _gotoNext = 34663i32;
                    };
                } else if (__value__ == (34581i32)) {
                    stdgo.Go.print(("GODEBUG: no value specified for \"" : stdgo.GoString), _field_34355, ("\"\n" : stdgo.GoString));
                    var __blank__ = 0i32;
                    _gotoNext = 34337i32;
                } else if (__value__ == (34663i32)) {
                    {
                        final __tmp__0 = (_field_34355.__slice__((4 : stdgo.GoInt), _i_34369) : stdgo.GoString)?.__copy__();
                        final __tmp__1 = (_field_34355.__slice__((_i_34369 + (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        _key_34663 = __tmp__0;
                        _value_34668 = __tmp__1;
                    };
                    _gotoNext = 34743i32;
                } else if (__value__ == (34743i32)) {
                    {
                        final __value__ = _value_34668;
                        if (__value__ == (("on" : stdgo.GoString))) {
                            _gotoNext = 34760i32;
                        } else if (__value__ == (("off" : stdgo.GoString))) {
                            _gotoNext = 34790i32;
                        } else {
                            _gotoNext = 34822i32;
                        };
                    };
                } else if (__value__ == (34760i32)) {
                    _enable_34729 = true;
                    _gotoNext = 34944i32;
                } else if (__value__ == (34790i32)) {
                    _enable_34729 = false;
                    _gotoNext = 34944i32;
                } else if (__value__ == (34822i32)) {
                    stdgo.Go.print(("GODEBUG: value \"" : stdgo.GoString), _value_34668, ("\" not supported for cpu option \"" : stdgo.GoString), _key_34663, ("\"\n" : stdgo.GoString));
                    _gotoNext = 34337i32;
                } else if (__value__ == (34944i32)) {
                    if (_key_34663 == (("all" : stdgo.GoString))) {
                        _gotoNext = 34960i32;
                    } else {
                        _gotoNext = 35083i32;
                    };
                } else if (__value__ == (34960i32)) {
                    if ((0i32 : stdgo.GoInt) < (stdgo._internal.internal.cpu.Cpu__options._options.length)) {
                        _gotoNext = 35055i32;
                    } else {
                        _gotoNext = 35061i32;
                    };
                } else if (__value__ == (34988i32)) {
                    stdgo._internal.internal.cpu.Cpu__options._options[(_i_34969 : stdgo.GoInt)].specified = true;
                    stdgo._internal.internal.cpu.Cpu__options._options[(_i_34969 : stdgo.GoInt)].enable = _enable_34729;
                    _i_34969++;
                    _gotoNext = 35056i32;
                } else if (__value__ == (35055i32)) {
                    _i_34969 = 0i32;
                    _gotoNext = 35056i32;
                } else if (__value__ == (35056i32)) {
                    if (_i_34969 < (stdgo._internal.internal.cpu.Cpu__options._options.length)) {
                        _gotoNext = 34988i32;
                    } else {
                        _gotoNext = 35061i32;
                    };
                } else if (__value__ == (35061i32)) {
                    _gotoNext = 34337i32;
                } else if (__value__ == (35083i32)) {
                    if ((0i32 : stdgo.GoInt) < (stdgo._internal.internal.cpu.Cpu__options._options.length)) {
                        _gotoNext = 35227i32;
                    } else {
                        _gotoNext = 35233i32;
                    };
                } else if (__value__ == (35087i32)) {
                    _i_35087++;
                    _gotoNext = 35228i32;
                } else if (__value__ == (35106i32)) {
                    if (stdgo._internal.internal.cpu.Cpu__options._options[(_i_35087 : stdgo.GoInt)].name == (_key_34663)) {
                        _gotoNext = 35137i32;
                    } else {
                        _gotoNext = 35087i32;
                    };
                } else if (__value__ == (35137i32)) {
                    stdgo._internal.internal.cpu.Cpu__options._options[(_i_35087 : stdgo.GoInt)].specified = true;
                    stdgo._internal.internal.cpu.Cpu__options._options[(_i_35087 : stdgo.GoInt)].enable = _enable_34729;
                    _gotoNext = 34337i32;
                } else if (__value__ == (35227i32)) {
                    _i_35087 = 0i32;
                    _gotoNext = 35228i32;
                } else if (__value__ == (35228i32)) {
                    if (_i_35087 < (stdgo._internal.internal.cpu.Cpu__options._options.length)) {
                        _gotoNext = 35106i32;
                    } else {
                        _gotoNext = 35233i32;
                    };
                } else if (__value__ == (35233i32)) {
                    stdgo.Go.print(("GODEBUG: unknown cpu feature \"" : stdgo.GoString), _key_34663, ("\"\n" : stdgo.GoString));
                    _gotoNext = 34337i32;
                } else if (__value__ == (35292i32)) {
                    if ((0i32 : stdgo.GoInt) < (stdgo._internal.internal.cpu.Cpu__options._options.length)) {
                        _gotoNext = 35505i32;
                    } else {
                        _gotoNext = 35508i32;
                    };
                } else if (__value__ == (35318i32)) {
                    _o_35299 = stdgo._internal.internal.cpu.Cpu__options._options[(_i_35304_0 : stdgo.GoInt)];
                    if (!_o_35299.specified) {
                        _gotoNext = 35338i32;
                    } else {
                        _gotoNext = 35359i32;
                    };
                } else if (__value__ == (35338i32)) {
                    _i_35304_0++;
                    _gotoNext = 35506i32;
                } else if (__value__ == (35359i32)) {
                    if ((_o_35299.enable && !_o_35299.feature.value : Bool)) {
                        _gotoNext = 35386i32;
                    } else {
                        _gotoNext = 35483i32;
                    };
                } else if (__value__ == (35386i32)) {
                    stdgo.Go.print(("GODEBUG: can not enable \"" : stdgo.GoString), _o_35299.name, ("\", missing CPU support\n" : stdgo.GoString));
                    _i_35304_0++;
                    _gotoNext = 35506i32;
                } else if (__value__ == (35483i32)) {
                    _o_35299.feature.value = _o_35299.enable;
                    _i_35304_0++;
                    _gotoNext = 35506i32;
                } else if (__value__ == (35505i32)) {
                    {
                        final __tmp__0 = 0i32;
                        final __tmp__1 = stdgo._internal.internal.cpu.Cpu__options._options[(0i32 : stdgo.GoInt)];
                        _i_35304_0 = __tmp__0;
                        _o_35299 = __tmp__1;
                    };
                    _gotoNext = 35506i32;
                } else if (__value__ == (35506i32)) {
                    if (_i_35304_0 < (stdgo._internal.internal.cpu.Cpu__options._options.length)) {
                        _gotoNext = 35318i32;
                    } else {
                        _gotoNext = 35508i32;
                    };
                } else if (__value__ == (35508i32)) {
                    _gotoNext = -1i32;
                };
            };
        };
    }
