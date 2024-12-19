package stdgo._internal.internal.cpu;
function _processOptions(_env:stdgo.GoString):Void {
        var _i_282055:stdgo.GoInt = (0 : stdgo.GoInt);
        var _key_281749:stdgo.GoString = ("" : stdgo.GoString);
        var _i_281455:stdgo.GoInt = (0 : stdgo.GoInt);
        var _field_281441:stdgo.GoString = ("" : stdgo.GoString);
        var _fieldBreak = false;
        var _i_282390_0:stdgo.GoInt = (0 : stdgo.GoInt);
        var _o_282385:stdgo._internal.internal.cpu.Cpu_T_option.T_option = ({} : stdgo._internal.internal.cpu.Cpu_T_option.T_option);
        var _i_282173:stdgo.GoInt = (0 : stdgo.GoInt);
        var _enable_281815:Bool = false;
        var _value_281754:stdgo.GoString = ("" : stdgo.GoString);
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    _gotoNext = 281415i32;
                } else if (__value__ == (281415i32)) {
                    var __blank__ = 0i32;
                    _fieldBreak = false;
                    _gotoNext = 281423i32;
                } else if (__value__ == (281423i32)) {
                    if (!_fieldBreak && (_env != stdgo.Go.str())) {
                        _gotoNext = 281437i32;
                    } else {
                        _gotoNext = 282378i32;
                    };
                } else if (__value__ == (281437i32)) {
                    _field_281441 = stdgo.Go.str()?.__copy__();
                    _i_281455 = stdgo._internal.internal.cpu.Cpu__indexByte._indexByte(_env?.__copy__(), (44 : stdgo.GoUInt8));
                    if ((_i_281455 < (0 : stdgo.GoInt) : Bool)) {
                        _gotoNext = 281491i32;
                    } else {
                        _gotoNext = 281526i32;
                    };
                } else if (__value__ == (281491i32)) {
                    {
                        final __tmp__0 = _env?.__copy__();
                        final __tmp__1 = stdgo.Go.str()?.__copy__();
                        _field_281441 = __tmp__0;
                        _env = __tmp__1;
                    };
                    _gotoNext = 281569i32;
                } else if (__value__ == (281526i32)) {
                    _gotoNext = 281526i32;
                    {
                        final __tmp__0 = (_env.__slice__(0, _i_281455) : stdgo.GoString)?.__copy__();
                        final __tmp__1 = (_env.__slice__((_i_281455 + (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        _field_281441 = __tmp__0;
                        _env = __tmp__1;
                    };
                    var __blank__ = 0i32;
                    _gotoNext = 281569i32;
                } else if (__value__ == (281569i32)) {
                    if ((((_field_281441.length) < (4 : stdgo.GoInt) : Bool) || ((_field_281441.__slice__(0, (4 : stdgo.GoInt)) : stdgo.GoString) != ("cpu." : stdgo.GoString)) : Bool)) {
                        _gotoNext = 281610i32;
                    } else {
                        _gotoNext = 281630i32;
                    };
                } else if (__value__ == (281610i32)) {
                    var __blank__ = 0i32;
                    _gotoNext = 281423i32;
                } else if (__value__ == (281630i32)) {
                    _i_281455 = stdgo._internal.internal.cpu.Cpu__indexByte._indexByte(_field_281441?.__copy__(), (61 : stdgo.GoUInt8));
                    if ((_i_281455 < (0 : stdgo.GoInt) : Bool)) {
                        _gotoNext = 281667i32;
                    } else {
                        _gotoNext = 281749i32;
                    };
                } else if (__value__ == (281667i32)) {
                    stdgo.Go.print(("GODEBUG: no value specified for \"" : stdgo.GoString), _field_281441, ("\"\n" : stdgo.GoString));
                    var __blank__ = 0i32;
                    _gotoNext = 281423i32;
                } else if (__value__ == (281749i32)) {
                    {
                        final __tmp__0 = (_field_281441.__slice__((4 : stdgo.GoInt), _i_281455) : stdgo.GoString)?.__copy__();
                        final __tmp__1 = (_field_281441.__slice__((_i_281455 + (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        _key_281749 = __tmp__0;
                        _value_281754 = __tmp__1;
                    };
                    _gotoNext = 281829i32;
                } else if (__value__ == (281829i32)) {
                    {
                        final __value__ = _value_281754;
                        if (__value__ == (("on" : stdgo.GoString))) {
                            _gotoNext = 281846i32;
                        } else if (__value__ == (("off" : stdgo.GoString))) {
                            _gotoNext = 281876i32;
                        } else {
                            _gotoNext = 281908i32;
                        };
                    };
                } else if (__value__ == (281846i32)) {
                    _enable_281815 = true;
                    _gotoNext = 282030i32;
                } else if (__value__ == (281876i32)) {
                    _enable_281815 = false;
                    _gotoNext = 282030i32;
                } else if (__value__ == (281908i32)) {
                    stdgo.Go.print(("GODEBUG: value \"" : stdgo.GoString), _value_281754, ("\" not supported for cpu option \"" : stdgo.GoString), _key_281749, ("\"\n" : stdgo.GoString));
                    _gotoNext = 281423i32;
                } else if (__value__ == (282030i32)) {
                    if (_key_281749 == (("all" : stdgo.GoString))) {
                        _gotoNext = 282046i32;
                    } else {
                        _gotoNext = 282169i32;
                    };
                } else if (__value__ == (282046i32)) {
                    if ((0i32 : stdgo.GoInt) < (stdgo._internal.internal.cpu.Cpu__options._options.length)) {
                        _gotoNext = 282141i32;
                    } else {
                        _gotoNext = 282147i32;
                    };
                } else if (__value__ == (282074i32)) {
                    stdgo._internal.internal.cpu.Cpu__options._options[(_i_282055 : stdgo.GoInt)].specified = true;
                    stdgo._internal.internal.cpu.Cpu__options._options[(_i_282055 : stdgo.GoInt)].enable = _enable_281815;
                    _i_282055++;
                    _gotoNext = 282142i32;
                } else if (__value__ == (282141i32)) {
                    _i_282055 = 0i32;
                    _gotoNext = 282142i32;
                } else if (__value__ == (282142i32)) {
                    if (_i_282055 < (stdgo._internal.internal.cpu.Cpu__options._options.length)) {
                        _gotoNext = 282074i32;
                    } else {
                        _gotoNext = 282147i32;
                    };
                } else if (__value__ == (282147i32)) {
                    _gotoNext = 281423i32;
                } else if (__value__ == (282169i32)) {
                    if ((0i32 : stdgo.GoInt) < (stdgo._internal.internal.cpu.Cpu__options._options.length)) {
                        _gotoNext = 282313i32;
                    } else {
                        _gotoNext = 282319i32;
                    };
                } else if (__value__ == (282173i32)) {
                    _i_282173++;
                    _gotoNext = 282314i32;
                } else if (__value__ == (282192i32)) {
                    if (stdgo._internal.internal.cpu.Cpu__options._options[(_i_282173 : stdgo.GoInt)].name == (_key_281749)) {
                        _gotoNext = 282223i32;
                    } else {
                        _gotoNext = 282173i32;
                    };
                } else if (__value__ == (282223i32)) {
                    stdgo._internal.internal.cpu.Cpu__options._options[(_i_282173 : stdgo.GoInt)].specified = true;
                    stdgo._internal.internal.cpu.Cpu__options._options[(_i_282173 : stdgo.GoInt)].enable = _enable_281815;
                    _gotoNext = 281423i32;
                } else if (__value__ == (282313i32)) {
                    _i_282173 = 0i32;
                    _gotoNext = 282314i32;
                } else if (__value__ == (282314i32)) {
                    if (_i_282173 < (stdgo._internal.internal.cpu.Cpu__options._options.length)) {
                        _gotoNext = 282192i32;
                    } else {
                        _gotoNext = 282319i32;
                    };
                } else if (__value__ == (282319i32)) {
                    stdgo.Go.print(("GODEBUG: unknown cpu feature \"" : stdgo.GoString), _key_281749, ("\"\n" : stdgo.GoString));
                    _gotoNext = 281423i32;
                } else if (__value__ == (282378i32)) {
                    if ((0i32 : stdgo.GoInt) < (stdgo._internal.internal.cpu.Cpu__options._options.length)) {
                        _gotoNext = 282591i32;
                    } else {
                        _gotoNext = 282594i32;
                    };
                } else if (__value__ == (282404i32)) {
                    _o_282385 = stdgo._internal.internal.cpu.Cpu__options._options[(_i_282390_0 : stdgo.GoInt)];
                    if (!_o_282385.specified) {
                        _gotoNext = 282424i32;
                    } else {
                        _gotoNext = 282445i32;
                    };
                } else if (__value__ == (282424i32)) {
                    _i_282390_0++;
                    _gotoNext = 282592i32;
                } else if (__value__ == (282445i32)) {
                    if ((_o_282385.enable && !_o_282385.feature.value : Bool)) {
                        _gotoNext = 282472i32;
                    } else {
                        _gotoNext = 282569i32;
                    };
                } else if (__value__ == (282472i32)) {
                    stdgo.Go.print(("GODEBUG: can not enable \"" : stdgo.GoString), _o_282385.name, ("\", missing CPU support\n" : stdgo.GoString));
                    _i_282390_0++;
                    _gotoNext = 282592i32;
                } else if (__value__ == (282569i32)) {
                    _o_282385.feature.value = _o_282385.enable;
                    _i_282390_0++;
                    _gotoNext = 282592i32;
                } else if (__value__ == (282591i32)) {
                    {
                        final __tmp__0 = 0i32;
                        final __tmp__1 = stdgo._internal.internal.cpu.Cpu__options._options[(0i32 : stdgo.GoInt)];
                        _i_282390_0 = __tmp__0;
                        _o_282385 = __tmp__1;
                    };
                    _gotoNext = 282592i32;
                } else if (__value__ == (282592i32)) {
                    if (_i_282390_0 < (stdgo._internal.internal.cpu.Cpu__options._options.length)) {
                        _gotoNext = 282404i32;
                    } else {
                        _gotoNext = 282594i32;
                    };
                } else if (__value__ == (282594i32)) {
                    _gotoNext = -1i32;
                };
            };
        };
    }
