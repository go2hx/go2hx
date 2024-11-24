package stdgo._internal.internal.cpu;
function _processOptions(_env:stdgo.GoString):Void {
        var _i_273200:stdgo.GoInt = (0 : stdgo.GoInt);
        var _i_273082:stdgo.GoInt = (0 : stdgo.GoInt);
        var _enable_272842:Bool = false;
        var _value_272781:stdgo.GoString = ("" : stdgo.GoString);
        var _fieldBreak = false;
        var _i_273417_0:stdgo.GoInt = (0 : stdgo.GoInt);
        var _o_273412:stdgo._internal.internal.cpu.Cpu_T_option.T_option = ({} : stdgo._internal.internal.cpu.Cpu_T_option.T_option);
        var _key_272776:stdgo.GoString = ("" : stdgo.GoString);
        var _i_272482:stdgo.GoInt = (0 : stdgo.GoInt);
        var _field_272468:stdgo.GoString = ("" : stdgo.GoString);
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    _gotoNext = 272442i32;
                } else if (__value__ == (272442i32)) {
                    var __blank__ = 0i32;
                    _fieldBreak = false;
                    _gotoNext = 272450i32;
                } else if (__value__ == (272450i32)) {
                    if (!_fieldBreak && (_env != stdgo.Go.str())) {
                        _gotoNext = 272464i32;
                    } else {
                        _gotoNext = 273405i32;
                    };
                } else if (__value__ == (272464i32)) {
                    _field_272468 = stdgo.Go.str()?.__copy__();
                    _i_272482 = stdgo._internal.internal.cpu.Cpu__indexByte._indexByte(_env?.__copy__(), (44 : stdgo.GoUInt8));
                    if ((_i_272482 < (0 : stdgo.GoInt) : Bool)) {
                        _gotoNext = 272518i32;
                    } else {
                        _gotoNext = 272553i32;
                    };
                } else if (__value__ == (272518i32)) {
                    {
                        final __tmp__0 = _env?.__copy__();
                        final __tmp__1 = stdgo.Go.str()?.__copy__();
                        _field_272468 = __tmp__0;
                        _env = __tmp__1;
                    };
                    _gotoNext = 272596i32;
                } else if (__value__ == (272553i32)) {
                    _gotoNext = 272553i32;
                    {
                        final __tmp__0 = (_env.__slice__(0, _i_272482) : stdgo.GoString)?.__copy__();
                        final __tmp__1 = (_env.__slice__((_i_272482 + (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        _field_272468 = __tmp__0;
                        _env = __tmp__1;
                    };
                    var __blank__ = 0i32;
                    _gotoNext = 272596i32;
                } else if (__value__ == (272596i32)) {
                    if ((((_field_272468.length) < (4 : stdgo.GoInt) : Bool) || ((_field_272468.__slice__(0, (4 : stdgo.GoInt)) : stdgo.GoString) != ("cpu." : stdgo.GoString)) : Bool)) {
                        _gotoNext = 272637i32;
                    } else {
                        _gotoNext = 272657i32;
                    };
                } else if (__value__ == (272637i32)) {
                    var __blank__ = 0i32;
                    _gotoNext = 272450i32;
                } else if (__value__ == (272657i32)) {
                    _i_272482 = stdgo._internal.internal.cpu.Cpu__indexByte._indexByte(_field_272468?.__copy__(), (61 : stdgo.GoUInt8));
                    if ((_i_272482 < (0 : stdgo.GoInt) : Bool)) {
                        _gotoNext = 272694i32;
                    } else {
                        _gotoNext = 272776i32;
                    };
                } else if (__value__ == (272694i32)) {
                    stdgo.Go.print(("GODEBUG: no value specified for \"" : stdgo.GoString), _field_272468, ("\"\n" : stdgo.GoString));
                    var __blank__ = 0i32;
                    _gotoNext = 272450i32;
                } else if (__value__ == (272776i32)) {
                    {
                        final __tmp__0 = (_field_272468.__slice__((4 : stdgo.GoInt), _i_272482) : stdgo.GoString)?.__copy__();
                        final __tmp__1 = (_field_272468.__slice__((_i_272482 + (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        _key_272776 = __tmp__0;
                        _value_272781 = __tmp__1;
                    };
                    _gotoNext = 272856i32;
                } else if (__value__ == (272856i32)) {
                    {
                        final __value__ = _value_272781;
                        if (__value__ == (("on" : stdgo.GoString))) {
                            _gotoNext = 272873i32;
                        } else if (__value__ == (("off" : stdgo.GoString))) {
                            _gotoNext = 272903i32;
                        } else {
                            _gotoNext = 272935i32;
                        };
                    };
                } else if (__value__ == (272873i32)) {
                    _enable_272842 = true;
                    _gotoNext = 273057i32;
                } else if (__value__ == (272903i32)) {
                    _enable_272842 = false;
                    _gotoNext = 273057i32;
                } else if (__value__ == (272935i32)) {
                    stdgo.Go.print(("GODEBUG: value \"" : stdgo.GoString), _value_272781, ("\" not supported for cpu option \"" : stdgo.GoString), _key_272776, ("\"\n" : stdgo.GoString));
                    _gotoNext = 272450i32;
                } else if (__value__ == (273057i32)) {
                    if (_key_272776 == (("all" : stdgo.GoString))) {
                        _gotoNext = 273073i32;
                    } else {
                        _gotoNext = 273196i32;
                    };
                } else if (__value__ == (273073i32)) {
                    if ((0i32 : stdgo.GoInt) < (stdgo._internal.internal.cpu.Cpu__options._options.length)) {
                        _gotoNext = 273168i32;
                    } else {
                        _gotoNext = 273174i32;
                    };
                } else if (__value__ == (273101i32)) {
                    stdgo._internal.internal.cpu.Cpu__options._options[(_i_273082 : stdgo.GoInt)].specified = true;
                    stdgo._internal.internal.cpu.Cpu__options._options[(_i_273082 : stdgo.GoInt)].enable = _enable_272842;
                    _i_273082++;
                    _gotoNext = 273169i32;
                } else if (__value__ == (273168i32)) {
                    _i_273082 = 0i32;
                    _gotoNext = 273169i32;
                } else if (__value__ == (273169i32)) {
                    if (_i_273082 < (stdgo._internal.internal.cpu.Cpu__options._options.length)) {
                        _gotoNext = 273101i32;
                    } else {
                        _gotoNext = 273174i32;
                    };
                } else if (__value__ == (273174i32)) {
                    _gotoNext = 272450i32;
                } else if (__value__ == (273196i32)) {
                    if ((0i32 : stdgo.GoInt) < (stdgo._internal.internal.cpu.Cpu__options._options.length)) {
                        _gotoNext = 273340i32;
                    } else {
                        _gotoNext = 273346i32;
                    };
                } else if (__value__ == (273200i32)) {
                    _i_273200++;
                    _gotoNext = 273341i32;
                } else if (__value__ == (273219i32)) {
                    if (stdgo._internal.internal.cpu.Cpu__options._options[(_i_273200 : stdgo.GoInt)].name == (_key_272776)) {
                        _gotoNext = 273250i32;
                    } else {
                        _gotoNext = 273200i32;
                    };
                } else if (__value__ == (273250i32)) {
                    stdgo._internal.internal.cpu.Cpu__options._options[(_i_273200 : stdgo.GoInt)].specified = true;
                    stdgo._internal.internal.cpu.Cpu__options._options[(_i_273200 : stdgo.GoInt)].enable = _enable_272842;
                    _gotoNext = 272450i32;
                } else if (__value__ == (273340i32)) {
                    _i_273200 = 0i32;
                    _gotoNext = 273341i32;
                } else if (__value__ == (273341i32)) {
                    if (_i_273200 < (stdgo._internal.internal.cpu.Cpu__options._options.length)) {
                        _gotoNext = 273219i32;
                    } else {
                        _gotoNext = 273346i32;
                    };
                } else if (__value__ == (273346i32)) {
                    stdgo.Go.print(("GODEBUG: unknown cpu feature \"" : stdgo.GoString), _key_272776, ("\"\n" : stdgo.GoString));
                    _gotoNext = 272450i32;
                } else if (__value__ == (273405i32)) {
                    if ((0i32 : stdgo.GoInt) < (stdgo._internal.internal.cpu.Cpu__options._options.length)) {
                        _gotoNext = 273618i32;
                    } else {
                        _gotoNext = 273621i32;
                    };
                } else if (__value__ == (273431i32)) {
                    _o_273412 = stdgo._internal.internal.cpu.Cpu__options._options[(_i_273417_0 : stdgo.GoInt)];
                    if (!_o_273412.specified) {
                        _gotoNext = 273451i32;
                    } else {
                        _gotoNext = 273472i32;
                    };
                } else if (__value__ == (273451i32)) {
                    _i_273417_0++;
                    _gotoNext = 273619i32;
                } else if (__value__ == (273472i32)) {
                    if ((_o_273412.enable && !_o_273412.feature.value : Bool)) {
                        _gotoNext = 273499i32;
                    } else {
                        _gotoNext = 273596i32;
                    };
                } else if (__value__ == (273499i32)) {
                    stdgo.Go.print(("GODEBUG: can not enable \"" : stdgo.GoString), _o_273412.name, ("\", missing CPU support\n" : stdgo.GoString));
                    _i_273417_0++;
                    _gotoNext = 273619i32;
                } else if (__value__ == (273596i32)) {
                    _o_273412.feature.value = _o_273412.enable;
                    _i_273417_0++;
                    _gotoNext = 273619i32;
                } else if (__value__ == (273618i32)) {
                    {
                        final __tmp__0 = 0i32;
                        final __tmp__1 = stdgo._internal.internal.cpu.Cpu__options._options[(0i32 : stdgo.GoInt)];
                        _i_273417_0 = __tmp__0;
                        _o_273412 = __tmp__1;
                    };
                    _gotoNext = 273619i32;
                } else if (__value__ == (273619i32)) {
                    if (_i_273417_0 < (stdgo._internal.internal.cpu.Cpu__options._options.length)) {
                        _gotoNext = 273431i32;
                    } else {
                        _gotoNext = 273621i32;
                    };
                } else if (__value__ == (273621i32)) {
                    _gotoNext = -1i32;
                };
            };
        };
    }
