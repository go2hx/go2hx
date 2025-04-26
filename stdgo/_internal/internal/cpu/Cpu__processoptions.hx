package stdgo._internal.internal.cpu;
function _processOptions(_env:stdgo.GoString):Void {
        var _iterator_24722_7:stdgo.GoInt = (0 : stdgo.GoInt);
        var _i_6:stdgo.GoInt = (0 : stdgo.GoInt);
        var _enable_4:Bool = false;
        var _value_3:stdgo.GoString = ("" : stdgo.GoString);
        var _key_2:stdgo.GoString = ("" : stdgo.GoString);
        var _fieldBreak = false;
        var _o_8:stdgo._internal.internal.cpu.Cpu_t_option.T_option = ({} : stdgo._internal.internal.cpu.Cpu_t_option.T_option);
        var _i_5:stdgo.GoInt = (0 : stdgo.GoInt);
        var _i_1:stdgo.GoInt = (0 : stdgo.GoInt);
        var _field_0:stdgo.GoString = ("" : stdgo.GoString);
        var _gotoNext = 0i32;
        _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    _gotoNext = 23747i32;
                } else if (__value__ == (23747i32)) {
                    0i32;
                    _fieldBreak = false;
                    _gotoNext = 23755i32;
                } else if (__value__ == (23755i32)) {
                    if (!_fieldBreak && (_env != (stdgo.Go.str() : stdgo.GoString))) {
                        _gotoNext = 23769i32;
                    } else {
                        _gotoNext = 24710i32;
                    };
                } else if (__value__ == (23769i32)) {
                    _field_0 = (stdgo.Go.str() : stdgo.GoString)?.__copy__();
                    _i_1 = stdgo._internal.internal.cpu.Cpu__indexbyte._indexByte(_env?.__copy__(), (44 : stdgo.GoUInt8));
                    if ((_i_1 < (0 : stdgo.GoInt) : Bool)) {
                        _gotoNext = 23823i32;
                    } else {
                        _gotoNext = 23858i32;
                    };
                } else if (__value__ == (23823i32)) {
                    {
                        final __tmp__0 = _env?.__copy__();
                        final __tmp__1 = (stdgo.Go.str() : stdgo.GoString)?.__copy__();
                        _field_0 = @:binopAssign __tmp__0;
                        _env = @:binopAssign __tmp__1;
                    };
                    _gotoNext = 23901i32;
                } else if (__value__ == (23858i32)) {
                    _gotoNext = 23858i32;
                    {
                        final __tmp__0 = (_env.__slice__(0, _i_1) : stdgo.GoString)?.__copy__();
                        final __tmp__1 = (_env.__slice__((_i_1 + (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        _field_0 = @:binopAssign __tmp__0;
                        _env = @:binopAssign __tmp__1;
                    };
                    0i32;
                    _gotoNext = 23901i32;
                } else if (__value__ == (23901i32)) {
                    if ((((_field_0.length) < (4 : stdgo.GoInt) : Bool) || ((_field_0.__slice__(0, (4 : stdgo.GoInt)) : stdgo.GoString) != ("cpu." : stdgo.GoString)) : Bool)) {
                        _gotoNext = 23942i32;
                    } else {
                        _gotoNext = 23962i32;
                    };
                } else if (__value__ == (23942i32)) {
                    0i32;
                    _gotoNext = 23755i32;
                } else if (__value__ == (23962i32)) {
                    _i_1 = stdgo._internal.internal.cpu.Cpu__indexbyte._indexByte(_field_0?.__copy__(), (61 : stdgo.GoUInt8));
                    if ((_i_1 < (0 : stdgo.GoInt) : Bool)) {
                        _gotoNext = 23999i32;
                    } else {
                        _gotoNext = 24081i32;
                    };
                } else if (__value__ == (23999i32)) {
                    stdgo.Go.print(("GODEBUG: no value specified for \"" : stdgo.GoString), _field_0, ("\"\n" : stdgo.GoString));
                    0i32;
                    _gotoNext = 23755i32;
                } else if (__value__ == (24081i32)) {
                    {
                        final __tmp__0 = (_field_0.__slice__((4 : stdgo.GoInt), _i_1) : stdgo.GoString)?.__copy__();
                        final __tmp__1 = (_field_0.__slice__((_i_1 + (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        _key_2 = @:binopAssign __tmp__0;
                        _value_3 = @:binopAssign __tmp__1;
                    };
                    _gotoNext = 24161i32;
                } else if (__value__ == (24161i32)) {
                    {
                        final __value__ = _value_3;
                        if (__value__ == (("on" : stdgo.GoString))) {
                            _gotoNext = 24178i32;
                        } else if (__value__ == (("off" : stdgo.GoString))) {
                            _gotoNext = 24208i32;
                        } else {
                            _gotoNext = 24240i32;
                        };
                    };
                } else if (__value__ == (24178i32)) {
                    _enable_4 = true;
                    _gotoNext = 24362i32;
                } else if (__value__ == (24208i32)) {
                    _enable_4 = false;
                    _gotoNext = 24362i32;
                } else if (__value__ == (24240i32)) {
                    stdgo.Go.print(("GODEBUG: value \"" : stdgo.GoString), _value_3, ("\" not supported for cpu option \"" : stdgo.GoString), _key_2, ("\"\n" : stdgo.GoString));
                    _gotoNext = 23755i32;
                } else if (__value__ == (24362i32)) {
                    if (_key_2 == (("all" : stdgo.GoString))) {
                        _gotoNext = 24378i32;
                    } else {
                        _gotoNext = 24501i32;
                    };
                } else if (__value__ == (24378i32)) {
                    if ((0i32 : stdgo.GoInt) < (stdgo._internal.internal.cpu.Cpu__options._options.length)) {
                        _gotoNext = 24473i32;
                    } else {
                        _gotoNext = 24479i32;
                    };
                } else if (__value__ == (24406i32)) {
                    stdgo._internal.internal.cpu.Cpu__options._options[(_i_5 : stdgo.GoInt)].specified = true;
                    stdgo._internal.internal.cpu.Cpu__options._options[(_i_5 : stdgo.GoInt)].enable = _enable_4;
                    _i_5++;
                    _gotoNext = 24474i32;
                } else if (__value__ == (24473i32)) {
                    _i_5 = 0i32;
                    _gotoNext = 24474i32;
                } else if (__value__ == (24474i32)) {
                    if (_i_5 < (stdgo._internal.internal.cpu.Cpu__options._options.length)) {
                        _gotoNext = 24406i32;
                    } else {
                        _gotoNext = 24479i32;
                    };
                } else if (__value__ == (24479i32)) {
                    _gotoNext = 23755i32;
                } else if (__value__ == (24501i32)) {
                    if ((0i32 : stdgo.GoInt) < (stdgo._internal.internal.cpu.Cpu__options._options.length)) {
                        _gotoNext = 24645i32;
                    } else {
                        _gotoNext = 24651i32;
                    };
                } else if (__value__ == (24505i32)) {
                    _i_6++;
                    _gotoNext = 24646i32;
                } else if (__value__ == (24524i32)) {
                    if (stdgo._internal.internal.cpu.Cpu__options._options[(_i_6 : stdgo.GoInt)].name == (_key_2)) {
                        _gotoNext = 24555i32;
                    } else {
                        _gotoNext = 24505i32;
                    };
                } else if (__value__ == (24555i32)) {
                    stdgo._internal.internal.cpu.Cpu__options._options[(_i_6 : stdgo.GoInt)].specified = true;
                    stdgo._internal.internal.cpu.Cpu__options._options[(_i_6 : stdgo.GoInt)].enable = _enable_4;
                    _gotoNext = 23755i32;
                } else if (__value__ == (24645i32)) {
                    _i_6 = 0i32;
                    _gotoNext = 24646i32;
                } else if (__value__ == (24646i32)) {
                    if (_i_6 < (stdgo._internal.internal.cpu.Cpu__options._options.length)) {
                        _gotoNext = 24524i32;
                    } else {
                        _gotoNext = 24651i32;
                    };
                } else if (__value__ == (24651i32)) {
                    stdgo.Go.print(("GODEBUG: unknown cpu feature \"" : stdgo.GoString), _key_2, ("\"\n" : stdgo.GoString));
                    _gotoNext = 23755i32;
                } else if (__value__ == (24710i32)) {
                    if ((0i32 : stdgo.GoInt) < (stdgo._internal.internal.cpu.Cpu__options._options.length)) {
                        _gotoNext = 24923i32;
                    } else {
                        _gotoNext = 24926i32;
                    };
                } else if (__value__ == (24736i32)) {
                    _o_8 = stdgo._internal.internal.cpu.Cpu__options._options[(_iterator_24722_7 : stdgo.GoInt)];
                    if (!_o_8.specified) {
                        _gotoNext = 24756i32;
                    } else {
                        _gotoNext = 24777i32;
                    };
                } else if (__value__ == (24756i32)) {
                    _iterator_24722_7++;
                    _gotoNext = 24924i32;
                } else if (__value__ == (24777i32)) {
                    if ((_o_8.enable && !_o_8.feature.value : Bool)) {
                        _gotoNext = 24804i32;
                    } else {
                        _gotoNext = 24901i32;
                    };
                } else if (__value__ == (24804i32)) {
                    stdgo.Go.print(("GODEBUG: can not enable \"" : stdgo.GoString), _o_8.name, ("\", missing CPU support\n" : stdgo.GoString));
                    _iterator_24722_7++;
                    _gotoNext = 24924i32;
                } else if (__value__ == (24901i32)) {
                    _o_8.feature.value = _o_8.enable;
                    _iterator_24722_7++;
                    _gotoNext = 24924i32;
                } else if (__value__ == (24923i32)) {
                    {
                        final __tmp__0 = 0i32;
                        final __tmp__1 = stdgo._internal.internal.cpu.Cpu__options._options[(0i32 : stdgo.GoInt)];
                        _iterator_24722_7 = @:binopAssign __tmp__0;
                        _o_8 = @:binopAssign __tmp__1;
                    };
                    _gotoNext = 24924i32;
                } else if (__value__ == (24924i32)) {
                    if (_iterator_24722_7 < (stdgo._internal.internal.cpu.Cpu__options._options.length)) {
                        _gotoNext = 24736i32;
                    } else {
                        _gotoNext = 24926i32;
                    };
                } else if (__value__ == (24926i32)) {
                    _gotoNext = -1i32;
                };
            };
        };
    }
