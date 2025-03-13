package stdgo._internal.internal.cpu;
function _processOptions(_env:stdgo.GoString):Void {
        var _iterator_47086_7:stdgo.GoInt = (0 : stdgo.GoInt);
        var _i_6:stdgo.GoInt = (0 : stdgo.GoInt);
        var _i_5:stdgo.GoInt = (0 : stdgo.GoInt);
        var _enable_4:Bool = false;
        var _fieldBreak = false;
        var _o_8:stdgo._internal.internal.cpu.Cpu_t_option.T_option = ({} : stdgo._internal.internal.cpu.Cpu_t_option.T_option);
        var _value_3:stdgo.GoString = ("" : stdgo.GoString);
        var _key_2:stdgo.GoString = ("" : stdgo.GoString);
        var _i_1:stdgo.GoInt = (0 : stdgo.GoInt);
        var _field_0:stdgo.GoString = ("" : stdgo.GoString);
        var _gotoNext = 0i32;
        _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    _gotoNext = 46111i32;
                } else if (__value__ == (46111i32)) {
                    0i32;
                    _fieldBreak = false;
                    _gotoNext = 46119i32;
                } else if (__value__ == (46119i32)) {
                    if (!_fieldBreak && (_env != (stdgo.Go.str() : stdgo.GoString))) {
                        _gotoNext = 46133i32;
                    } else {
                        _gotoNext = 47074i32;
                    };
                } else if (__value__ == (46133i32)) {
                    _field_0 = (stdgo.Go.str() : stdgo.GoString)?.__copy__();
                    _i_1 = stdgo._internal.internal.cpu.Cpu__indexbyte._indexByte(_env?.__copy__(), (44 : stdgo.GoUInt8));
                    if ((_i_1 < (0 : stdgo.GoInt) : Bool)) {
                        _gotoNext = 46187i32;
                    } else {
                        _gotoNext = 46222i32;
                    };
                } else if (__value__ == (46187i32)) {
                    {
                        final __tmp__0 = _env?.__copy__();
                        final __tmp__1 = (stdgo.Go.str() : stdgo.GoString)?.__copy__();
                        _field_0 = @:binopAssign __tmp__0;
                        _env = @:binopAssign __tmp__1;
                    };
                    _gotoNext = 46265i32;
                } else if (__value__ == (46222i32)) {
                    _gotoNext = 46222i32;
                    {
                        final __tmp__0 = (_env.__slice__(0, _i_1) : stdgo.GoString)?.__copy__();
                        final __tmp__1 = (_env.__slice__((_i_1 + (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        _field_0 = @:binopAssign __tmp__0;
                        _env = @:binopAssign __tmp__1;
                    };
                    0i32;
                    _gotoNext = 46265i32;
                } else if (__value__ == (46265i32)) {
                    if ((((_field_0.length) < (4 : stdgo.GoInt) : Bool) || ((_field_0.__slice__(0, (4 : stdgo.GoInt)) : stdgo.GoString) != ("cpu." : stdgo.GoString)) : Bool)) {
                        _gotoNext = 46306i32;
                    } else {
                        _gotoNext = 46326i32;
                    };
                } else if (__value__ == (46306i32)) {
                    0i32;
                    _gotoNext = 46119i32;
                } else if (__value__ == (46326i32)) {
                    _i_1 = stdgo._internal.internal.cpu.Cpu__indexbyte._indexByte(_field_0?.__copy__(), (61 : stdgo.GoUInt8));
                    if ((_i_1 < (0 : stdgo.GoInt) : Bool)) {
                        _gotoNext = 46363i32;
                    } else {
                        _gotoNext = 46445i32;
                    };
                } else if (__value__ == (46363i32)) {
                    stdgo.Go.print(("GODEBUG: no value specified for \"" : stdgo.GoString), _field_0, ("\"\n" : stdgo.GoString));
                    0i32;
                    _gotoNext = 46119i32;
                } else if (__value__ == (46445i32)) {
                    {
                        final __tmp__0 = (_field_0.__slice__((4 : stdgo.GoInt), _i_1) : stdgo.GoString)?.__copy__();
                        final __tmp__1 = (_field_0.__slice__((_i_1 + (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        _key_2 = @:binopAssign __tmp__0;
                        _value_3 = @:binopAssign __tmp__1;
                    };
                    _gotoNext = 46525i32;
                } else if (__value__ == (46525i32)) {
                    {
                        final __value__ = _value_3;
                        if (__value__ == (("on" : stdgo.GoString))) {
                            _gotoNext = 46542i32;
                        } else if (__value__ == (("off" : stdgo.GoString))) {
                            _gotoNext = 46572i32;
                        } else {
                            _gotoNext = 46604i32;
                        };
                    };
                } else if (__value__ == (46542i32)) {
                    _enable_4 = true;
                    _gotoNext = 46726i32;
                } else if (__value__ == (46572i32)) {
                    _enable_4 = false;
                    _gotoNext = 46726i32;
                } else if (__value__ == (46604i32)) {
                    stdgo.Go.print(("GODEBUG: value \"" : stdgo.GoString), _value_3, ("\" not supported for cpu option \"" : stdgo.GoString), _key_2, ("\"\n" : stdgo.GoString));
                    _gotoNext = 46119i32;
                } else if (__value__ == (46726i32)) {
                    if (_key_2 == (("all" : stdgo.GoString))) {
                        _gotoNext = 46742i32;
                    } else {
                        _gotoNext = 46865i32;
                    };
                } else if (__value__ == (46742i32)) {
                    if ((0i32 : stdgo.GoInt) < (stdgo._internal.internal.cpu.Cpu__options._options.length)) {
                        _gotoNext = 46837i32;
                    } else {
                        _gotoNext = 46843i32;
                    };
                } else if (__value__ == (46770i32)) {
                    stdgo._internal.internal.cpu.Cpu__options._options[(_i_5 : stdgo.GoInt)].specified = true;
                    stdgo._internal.internal.cpu.Cpu__options._options[(_i_5 : stdgo.GoInt)].enable = _enable_4;
                    _i_5++;
                    _gotoNext = 46838i32;
                } else if (__value__ == (46837i32)) {
                    _i_5 = 0i32;
                    _gotoNext = 46838i32;
                } else if (__value__ == (46838i32)) {
                    if (_i_5 < (stdgo._internal.internal.cpu.Cpu__options._options.length)) {
                        _gotoNext = 46770i32;
                    } else {
                        _gotoNext = 46843i32;
                    };
                } else if (__value__ == (46843i32)) {
                    _gotoNext = 46119i32;
                } else if (__value__ == (46865i32)) {
                    if ((0i32 : stdgo.GoInt) < (stdgo._internal.internal.cpu.Cpu__options._options.length)) {
                        _gotoNext = 47009i32;
                    } else {
                        _gotoNext = 47015i32;
                    };
                } else if (__value__ == (46869i32)) {
                    _i_6++;
                    _gotoNext = 47010i32;
                } else if (__value__ == (46888i32)) {
                    if (stdgo._internal.internal.cpu.Cpu__options._options[(_i_6 : stdgo.GoInt)].name == (_key_2)) {
                        _gotoNext = 46919i32;
                    } else {
                        _gotoNext = 46869i32;
                    };
                } else if (__value__ == (46919i32)) {
                    stdgo._internal.internal.cpu.Cpu__options._options[(_i_6 : stdgo.GoInt)].specified = true;
                    stdgo._internal.internal.cpu.Cpu__options._options[(_i_6 : stdgo.GoInt)].enable = _enable_4;
                    _gotoNext = 46119i32;
                } else if (__value__ == (47009i32)) {
                    _i_6 = 0i32;
                    _gotoNext = 47010i32;
                } else if (__value__ == (47010i32)) {
                    if (_i_6 < (stdgo._internal.internal.cpu.Cpu__options._options.length)) {
                        _gotoNext = 46888i32;
                    } else {
                        _gotoNext = 47015i32;
                    };
                } else if (__value__ == (47015i32)) {
                    stdgo.Go.print(("GODEBUG: unknown cpu feature \"" : stdgo.GoString), _key_2, ("\"\n" : stdgo.GoString));
                    _gotoNext = 46119i32;
                } else if (__value__ == (47074i32)) {
                    if ((0i32 : stdgo.GoInt) < (stdgo._internal.internal.cpu.Cpu__options._options.length)) {
                        _gotoNext = 47287i32;
                    } else {
                        _gotoNext = 47290i32;
                    };
                } else if (__value__ == (47100i32)) {
                    _o_8 = stdgo._internal.internal.cpu.Cpu__options._options[(_iterator_47086_7 : stdgo.GoInt)];
                    if (!_o_8.specified) {
                        _gotoNext = 47120i32;
                    } else {
                        _gotoNext = 47141i32;
                    };
                } else if (__value__ == (47120i32)) {
                    _iterator_47086_7++;
                    _gotoNext = 47288i32;
                } else if (__value__ == (47141i32)) {
                    if ((_o_8.enable && !_o_8.feature.value : Bool)) {
                        _gotoNext = 47168i32;
                    } else {
                        _gotoNext = 47265i32;
                    };
                } else if (__value__ == (47168i32)) {
                    stdgo.Go.print(("GODEBUG: can not enable \"" : stdgo.GoString), _o_8.name, ("\", missing CPU support\n" : stdgo.GoString));
                    _iterator_47086_7++;
                    _gotoNext = 47288i32;
                } else if (__value__ == (47265i32)) {
                    _o_8.feature.value = _o_8.enable;
                    _iterator_47086_7++;
                    _gotoNext = 47288i32;
                } else if (__value__ == (47287i32)) {
                    {
                        final __tmp__0 = 0i32;
                        final __tmp__1 = stdgo._internal.internal.cpu.Cpu__options._options[(0i32 : stdgo.GoInt)];
                        _iterator_47086_7 = @:binopAssign __tmp__0;
                        _o_8 = @:binopAssign __tmp__1;
                    };
                    _gotoNext = 47288i32;
                } else if (__value__ == (47288i32)) {
                    if (_iterator_47086_7 < (stdgo._internal.internal.cpu.Cpu__options._options.length)) {
                        _gotoNext = 47100i32;
                    } else {
                        _gotoNext = 47290i32;
                    };
                } else if (__value__ == (47290i32)) {
                    _gotoNext = -1i32;
                };
            };
        };
    }
