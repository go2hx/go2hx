package stdgo._internal.internal.cpu;
function _processOptions(_env:stdgo.GoString):Void {
        var _o_326875:stdgo._internal.internal.cpu.Cpu_T_option.T_option = ({} : stdgo._internal.internal.cpu.Cpu_T_option.T_option);
        var _i_326880_0:stdgo.GoInt = (0 : stdgo.GoInt);
        var _i_326545:stdgo.GoInt = (0 : stdgo.GoInt);
        var _enable_326305:Bool = false;
        var _value_326244:stdgo.GoString = ("" : stdgo.GoString);
        var _key_326239:stdgo.GoString = ("" : stdgo.GoString);
        var _i_325945:stdgo.GoInt = (0 : stdgo.GoInt);
        var _field_325931:stdgo.GoString = ("" : stdgo.GoString);
        var _fieldBreak = false;
        var _i_326663:stdgo.GoInt = (0 : stdgo.GoInt);
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    _gotoNext = 325905i32;
                } else if (__value__ == (325905i32)) {
                    var __blank__ = 0i32;
                    _fieldBreak = false;
                    _gotoNext = 325913i32;
                } else if (__value__ == (325913i32)) {
                    if (!_fieldBreak && (_env != stdgo.Go.str())) {
                        _gotoNext = 325927i32;
                    } else {
                        _gotoNext = 326868i32;
                    };
                } else if (__value__ == (325927i32)) {
                    _field_325931 = stdgo.Go.str()?.__copy__();
                    _i_325945 = stdgo._internal.internal.cpu.Cpu__indexByte._indexByte(_env?.__copy__(), (44 : stdgo.GoUInt8));
                    if ((_i_325945 < (0 : stdgo.GoInt) : Bool)) {
                        _gotoNext = 325981i32;
                    } else {
                        _gotoNext = 326016i32;
                    };
                } else if (__value__ == (325981i32)) {
                    {
                        final __tmp__0 = _env?.__copy__();
                        final __tmp__1 = stdgo.Go.str()?.__copy__();
                        _field_325931 = __tmp__0;
                        _env = __tmp__1;
                    };
                    _gotoNext = 326059i32;
                } else if (__value__ == (326016i32)) {
                    _gotoNext = 326016i32;
                    {
                        final __tmp__0 = (_env.__slice__(0, _i_325945) : stdgo.GoString)?.__copy__();
                        final __tmp__1 = (_env.__slice__((_i_325945 + (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        _field_325931 = __tmp__0;
                        _env = __tmp__1;
                    };
                    var __blank__ = 0i32;
                    _gotoNext = 326059i32;
                } else if (__value__ == (326059i32)) {
                    if ((((_field_325931.length) < (4 : stdgo.GoInt) : Bool) || ((_field_325931.__slice__(0, (4 : stdgo.GoInt)) : stdgo.GoString) != ("cpu." : stdgo.GoString)) : Bool)) {
                        _gotoNext = 326100i32;
                    } else {
                        _gotoNext = 326120i32;
                    };
                } else if (__value__ == (326100i32)) {
                    var __blank__ = 0i32;
                    _gotoNext = 325913i32;
                } else if (__value__ == (326120i32)) {
                    _i_325945 = stdgo._internal.internal.cpu.Cpu__indexByte._indexByte(_field_325931?.__copy__(), (61 : stdgo.GoUInt8));
                    if ((_i_325945 < (0 : stdgo.GoInt) : Bool)) {
                        _gotoNext = 326157i32;
                    } else {
                        _gotoNext = 326239i32;
                    };
                } else if (__value__ == (326157i32)) {
                    stdgo.Go.print(("GODEBUG: no value specified for \"" : stdgo.GoString), _field_325931, ("\"\n" : stdgo.GoString));
                    var __blank__ = 0i32;
                    _gotoNext = 325913i32;
                } else if (__value__ == (326239i32)) {
                    {
                        final __tmp__0 = (_field_325931.__slice__((4 : stdgo.GoInt), _i_325945) : stdgo.GoString)?.__copy__();
                        final __tmp__1 = (_field_325931.__slice__((_i_325945 + (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        _key_326239 = __tmp__0;
                        _value_326244 = __tmp__1;
                    };
                    _gotoNext = 326319i32;
                } else if (__value__ == (326319i32)) {
                    {
                        final __value__ = _value_326244;
                        if (__value__ == (("on" : stdgo.GoString))) {
                            _gotoNext = 326336i32;
                        } else if (__value__ == (("off" : stdgo.GoString))) {
                            _gotoNext = 326366i32;
                        } else {
                            _gotoNext = 326398i32;
                        };
                    };
                } else if (__value__ == (326336i32)) {
                    _enable_326305 = true;
                    _gotoNext = 326520i32;
                } else if (__value__ == (326366i32)) {
                    _enable_326305 = false;
                    _gotoNext = 326520i32;
                } else if (__value__ == (326398i32)) {
                    stdgo.Go.print(("GODEBUG: value \"" : stdgo.GoString), _value_326244, ("\" not supported for cpu option \"" : stdgo.GoString), _key_326239, ("\"\n" : stdgo.GoString));
                    _gotoNext = 325913i32;
                } else if (__value__ == (326520i32)) {
                    if (_key_326239 == (("all" : stdgo.GoString))) {
                        _gotoNext = 326536i32;
                    } else {
                        _gotoNext = 326659i32;
                    };
                } else if (__value__ == (326536i32)) {
                    if ((0i32 : stdgo.GoInt) < (stdgo._internal.internal.cpu.Cpu__options._options.length)) {
                        _gotoNext = 326631i32;
                    } else {
                        _gotoNext = 326637i32;
                    };
                } else if (__value__ == (326564i32)) {
                    stdgo._internal.internal.cpu.Cpu__options._options[(_i_326545 : stdgo.GoInt)].specified = true;
                    stdgo._internal.internal.cpu.Cpu__options._options[(_i_326545 : stdgo.GoInt)].enable = _enable_326305;
                    _i_326545++;
                    _gotoNext = 326632i32;
                } else if (__value__ == (326631i32)) {
                    _i_326545 = 0i32;
                    _gotoNext = 326632i32;
                } else if (__value__ == (326632i32)) {
                    if (_i_326545 < (stdgo._internal.internal.cpu.Cpu__options._options.length)) {
                        _gotoNext = 326564i32;
                    } else {
                        _gotoNext = 326637i32;
                    };
                } else if (__value__ == (326637i32)) {
                    _gotoNext = 325913i32;
                } else if (__value__ == (326659i32)) {
                    if ((0i32 : stdgo.GoInt) < (stdgo._internal.internal.cpu.Cpu__options._options.length)) {
                        _gotoNext = 326803i32;
                    } else {
                        _gotoNext = 326809i32;
                    };
                } else if (__value__ == (326663i32)) {
                    _i_326663++;
                    _gotoNext = 326804i32;
                } else if (__value__ == (326682i32)) {
                    if (stdgo._internal.internal.cpu.Cpu__options._options[(_i_326663 : stdgo.GoInt)].name == (_key_326239)) {
                        _gotoNext = 326713i32;
                    } else {
                        _gotoNext = 326663i32;
                    };
                } else if (__value__ == (326713i32)) {
                    stdgo._internal.internal.cpu.Cpu__options._options[(_i_326663 : stdgo.GoInt)].specified = true;
                    stdgo._internal.internal.cpu.Cpu__options._options[(_i_326663 : stdgo.GoInt)].enable = _enable_326305;
                    _gotoNext = 325913i32;
                } else if (__value__ == (326803i32)) {
                    _i_326663 = 0i32;
                    _gotoNext = 326804i32;
                } else if (__value__ == (326804i32)) {
                    if (_i_326663 < (stdgo._internal.internal.cpu.Cpu__options._options.length)) {
                        _gotoNext = 326682i32;
                    } else {
                        _gotoNext = 326809i32;
                    };
                } else if (__value__ == (326809i32)) {
                    stdgo.Go.print(("GODEBUG: unknown cpu feature \"" : stdgo.GoString), _key_326239, ("\"\n" : stdgo.GoString));
                    _gotoNext = 325913i32;
                } else if (__value__ == (326868i32)) {
                    if ((0i32 : stdgo.GoInt) < (stdgo._internal.internal.cpu.Cpu__options._options.length)) {
                        _gotoNext = 327081i32;
                    } else {
                        _gotoNext = 327084i32;
                    };
                } else if (__value__ == (326894i32)) {
                    _o_326875 = stdgo._internal.internal.cpu.Cpu__options._options[(_i_326880_0 : stdgo.GoInt)];
                    if (!_o_326875.specified) {
                        _gotoNext = 326914i32;
                    } else {
                        _gotoNext = 326935i32;
                    };
                } else if (__value__ == (326914i32)) {
                    _i_326880_0++;
                    _gotoNext = 327082i32;
                } else if (__value__ == (326935i32)) {
                    if ((_o_326875.enable && !_o_326875.feature.value : Bool)) {
                        _gotoNext = 326962i32;
                    } else {
                        _gotoNext = 327059i32;
                    };
                } else if (__value__ == (326962i32)) {
                    stdgo.Go.print(("GODEBUG: can not enable \"" : stdgo.GoString), _o_326875.name, ("\", missing CPU support\n" : stdgo.GoString));
                    _i_326880_0++;
                    _gotoNext = 327082i32;
                } else if (__value__ == (327059i32)) {
                    _o_326875.feature.value = _o_326875.enable;
                    _i_326880_0++;
                    _gotoNext = 327082i32;
                } else if (__value__ == (327081i32)) {
                    {
                        final __tmp__0 = 0i32;
                        final __tmp__1 = stdgo._internal.internal.cpu.Cpu__options._options[(0i32 : stdgo.GoInt)];
                        _i_326880_0 = __tmp__0;
                        _o_326875 = __tmp__1;
                    };
                    _gotoNext = 327082i32;
                } else if (__value__ == (327082i32)) {
                    if (_i_326880_0 < (stdgo._internal.internal.cpu.Cpu__options._options.length)) {
                        _gotoNext = 326894i32;
                    } else {
                        _gotoNext = 327084i32;
                    };
                } else if (__value__ == (327084i32)) {
                    _gotoNext = -1i32;
                };
            };
        };
    }
