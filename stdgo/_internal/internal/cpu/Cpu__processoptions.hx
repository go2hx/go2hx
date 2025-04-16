package stdgo._internal.internal.cpu;
function _processOptions(_env:stdgo.GoString):Void {
        var _i_5:stdgo.GoInt = (0 : stdgo.GoInt);
        var _key_2:stdgo.GoString = ("" : stdgo.GoString);
        var _o_8:stdgo._internal.internal.cpu.Cpu_t_option.T_option = ({} : stdgo._internal.internal.cpu.Cpu_t_option.T_option);
        var _field_0:stdgo.GoString = ("" : stdgo.GoString);
        var _fieldBreak = false;
        var _iterator_283658_7:stdgo.GoInt = (0 : stdgo.GoInt);
        var _i_6:stdgo.GoInt = (0 : stdgo.GoInt);
        var _enable_4:Bool = false;
        var _value_3:stdgo.GoString = ("" : stdgo.GoString);
        var _i_1:stdgo.GoInt = (0 : stdgo.GoInt);
        var _gotoNext = 0i32;
        _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    _gotoNext = 282683i32;
                } else if (__value__ == (282683i32)) {
                    0i32;
                    _fieldBreak = false;
                    _gotoNext = 282691i32;
                } else if (__value__ == (282691i32)) {
                    if (!_fieldBreak && (_env != (stdgo.Go.str() : stdgo.GoString))) {
                        _gotoNext = 282705i32;
                    } else {
                        _gotoNext = 283646i32;
                    };
                } else if (__value__ == (282705i32)) {
                    _field_0 = (stdgo.Go.str() : stdgo.GoString)?.__copy__();
                    _i_1 = stdgo._internal.internal.cpu.Cpu__indexbyte._indexByte(_env?.__copy__(), (44 : stdgo.GoUInt8));
                    if ((_i_1 < (0 : stdgo.GoInt) : Bool)) {
                        _gotoNext = 282759i32;
                    } else {
                        _gotoNext = 282794i32;
                    };
                } else if (__value__ == (282759i32)) {
                    {
                        final __tmp__0 = _env?.__copy__();
                        final __tmp__1 = (stdgo.Go.str() : stdgo.GoString)?.__copy__();
                        _field_0 = @:binopAssign __tmp__0;
                        _env = @:binopAssign __tmp__1;
                    };
                    _gotoNext = 282837i32;
                } else if (__value__ == (282794i32)) {
                    _gotoNext = 282794i32;
                    {
                        final __tmp__0 = (_env.__slice__(0, _i_1) : stdgo.GoString)?.__copy__();
                        final __tmp__1 = (_env.__slice__((_i_1 + (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        _field_0 = @:binopAssign __tmp__0;
                        _env = @:binopAssign __tmp__1;
                    };
                    0i32;
                    _gotoNext = 282837i32;
                } else if (__value__ == (282837i32)) {
                    if ((((_field_0.length) < (4 : stdgo.GoInt) : Bool) || ((_field_0.__slice__(0, (4 : stdgo.GoInt)) : stdgo.GoString) != ("cpu." : stdgo.GoString)) : Bool)) {
                        _gotoNext = 282878i32;
                    } else {
                        _gotoNext = 282898i32;
                    };
                } else if (__value__ == (282878i32)) {
                    0i32;
                    _gotoNext = 282691i32;
                } else if (__value__ == (282898i32)) {
                    _i_1 = stdgo._internal.internal.cpu.Cpu__indexbyte._indexByte(_field_0?.__copy__(), (61 : stdgo.GoUInt8));
                    if ((_i_1 < (0 : stdgo.GoInt) : Bool)) {
                        _gotoNext = 282935i32;
                    } else {
                        _gotoNext = 283017i32;
                    };
                } else if (__value__ == (282935i32)) {
                    stdgo.Go.print(("GODEBUG: no value specified for \"" : stdgo.GoString), _field_0, ("\"\n" : stdgo.GoString));
                    0i32;
                    _gotoNext = 282691i32;
                } else if (__value__ == (283017i32)) {
                    {
                        final __tmp__0 = (_field_0.__slice__((4 : stdgo.GoInt), _i_1) : stdgo.GoString)?.__copy__();
                        final __tmp__1 = (_field_0.__slice__((_i_1 + (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        _key_2 = @:binopAssign __tmp__0;
                        _value_3 = @:binopAssign __tmp__1;
                    };
                    _gotoNext = 283097i32;
                } else if (__value__ == (283097i32)) {
                    {
                        final __value__ = _value_3;
                        if (__value__ == (("on" : stdgo.GoString))) {
                            _gotoNext = 283114i32;
                        } else if (__value__ == (("off" : stdgo.GoString))) {
                            _gotoNext = 283144i32;
                        } else {
                            _gotoNext = 283176i32;
                        };
                    };
                } else if (__value__ == (283114i32)) {
                    _enable_4 = true;
                    _gotoNext = 283298i32;
                } else if (__value__ == (283144i32)) {
                    _enable_4 = false;
                    _gotoNext = 283298i32;
                } else if (__value__ == (283176i32)) {
                    stdgo.Go.print(("GODEBUG: value \"" : stdgo.GoString), _value_3, ("\" not supported for cpu option \"" : stdgo.GoString), _key_2, ("\"\n" : stdgo.GoString));
                    _gotoNext = 282691i32;
                } else if (__value__ == (283298i32)) {
                    if (_key_2 == (("all" : stdgo.GoString))) {
                        _gotoNext = 283314i32;
                    } else {
                        _gotoNext = 283437i32;
                    };
                } else if (__value__ == (283314i32)) {
                    if ((0i32 : stdgo.GoInt) < (stdgo._internal.internal.cpu.Cpu__options._options.length)) {
                        _gotoNext = 283409i32;
                    } else {
                        _gotoNext = 283415i32;
                    };
                } else if (__value__ == (283342i32)) {
                    stdgo._internal.internal.cpu.Cpu__options._options[(_i_5 : stdgo.GoInt)].specified = true;
                    stdgo._internal.internal.cpu.Cpu__options._options[(_i_5 : stdgo.GoInt)].enable = _enable_4;
                    _i_5++;
                    _gotoNext = 283410i32;
                } else if (__value__ == (283409i32)) {
                    _i_5 = 0i32;
                    _gotoNext = 283410i32;
                } else if (__value__ == (283410i32)) {
                    if (_i_5 < (stdgo._internal.internal.cpu.Cpu__options._options.length)) {
                        _gotoNext = 283342i32;
                    } else {
                        _gotoNext = 283415i32;
                    };
                } else if (__value__ == (283415i32)) {
                    _gotoNext = 282691i32;
                } else if (__value__ == (283437i32)) {
                    if ((0i32 : stdgo.GoInt) < (stdgo._internal.internal.cpu.Cpu__options._options.length)) {
                        _gotoNext = 283581i32;
                    } else {
                        _gotoNext = 283587i32;
                    };
                } else if (__value__ == (283441i32)) {
                    _i_6++;
                    _gotoNext = 283582i32;
                } else if (__value__ == (283460i32)) {
                    if (stdgo._internal.internal.cpu.Cpu__options._options[(_i_6 : stdgo.GoInt)].name == (_key_2)) {
                        _gotoNext = 283491i32;
                    } else {
                        _gotoNext = 283441i32;
                    };
                } else if (__value__ == (283491i32)) {
                    stdgo._internal.internal.cpu.Cpu__options._options[(_i_6 : stdgo.GoInt)].specified = true;
                    stdgo._internal.internal.cpu.Cpu__options._options[(_i_6 : stdgo.GoInt)].enable = _enable_4;
                    _gotoNext = 282691i32;
                } else if (__value__ == (283581i32)) {
                    _i_6 = 0i32;
                    _gotoNext = 283582i32;
                } else if (__value__ == (283582i32)) {
                    if (_i_6 < (stdgo._internal.internal.cpu.Cpu__options._options.length)) {
                        _gotoNext = 283460i32;
                    } else {
                        _gotoNext = 283587i32;
                    };
                } else if (__value__ == (283587i32)) {
                    stdgo.Go.print(("GODEBUG: unknown cpu feature \"" : stdgo.GoString), _key_2, ("\"\n" : stdgo.GoString));
                    _gotoNext = 282691i32;
                } else if (__value__ == (283646i32)) {
                    if ((0i32 : stdgo.GoInt) < (stdgo._internal.internal.cpu.Cpu__options._options.length)) {
                        _gotoNext = 283859i32;
                    } else {
                        _gotoNext = 283862i32;
                    };
                } else if (__value__ == (283672i32)) {
                    _o_8 = stdgo._internal.internal.cpu.Cpu__options._options[(_iterator_283658_7 : stdgo.GoInt)];
                    if (!_o_8.specified) {
                        _gotoNext = 283692i32;
                    } else {
                        _gotoNext = 283713i32;
                    };
                } else if (__value__ == (283692i32)) {
                    _iterator_283658_7++;
                    _gotoNext = 283860i32;
                } else if (__value__ == (283713i32)) {
                    if ((_o_8.enable && !_o_8.feature.value : Bool)) {
                        _gotoNext = 283740i32;
                    } else {
                        _gotoNext = 283837i32;
                    };
                } else if (__value__ == (283740i32)) {
                    stdgo.Go.print(("GODEBUG: can not enable \"" : stdgo.GoString), _o_8.name, ("\", missing CPU support\n" : stdgo.GoString));
                    _iterator_283658_7++;
                    _gotoNext = 283860i32;
                } else if (__value__ == (283837i32)) {
                    _o_8.feature.value = _o_8.enable;
                    _iterator_283658_7++;
                    _gotoNext = 283860i32;
                } else if (__value__ == (283859i32)) {
                    {
                        final __tmp__0 = 0i32;
                        final __tmp__1 = stdgo._internal.internal.cpu.Cpu__options._options[(0i32 : stdgo.GoInt)];
                        _iterator_283658_7 = @:binopAssign __tmp__0;
                        _o_8 = @:binopAssign __tmp__1;
                    };
                    _gotoNext = 283860i32;
                } else if (__value__ == (283860i32)) {
                    if (_iterator_283658_7 < (stdgo._internal.internal.cpu.Cpu__options._options.length)) {
                        _gotoNext = 283672i32;
                    } else {
                        _gotoNext = 283862i32;
                    };
                } else if (__value__ == (283862i32)) {
                    _gotoNext = -1i32;
                };
            };
        };
    }
