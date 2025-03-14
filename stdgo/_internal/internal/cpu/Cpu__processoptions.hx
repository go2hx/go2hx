package stdgo._internal.internal.cpu;
function _processOptions(_env:stdgo.GoString):Void {
        var _enable_4:Bool = false;
        var _value_3:stdgo.GoString = ("" : stdgo.GoString);
        var _key_2:stdgo.GoString = ("" : stdgo.GoString);
        var _field_0:stdgo.GoString = ("" : stdgo.GoString);
        var _fieldBreak = false;
        var _o_8:stdgo._internal.internal.cpu.Cpu_t_option.T_option = ({} : stdgo._internal.internal.cpu.Cpu_t_option.T_option);
        var _i_6:stdgo.GoInt = (0 : stdgo.GoInt);
        var _i_5:stdgo.GoInt = (0 : stdgo.GoInt);
        var _iterator_262210_7:stdgo.GoInt = (0 : stdgo.GoInt);
        var _i_1:stdgo.GoInt = (0 : stdgo.GoInt);
        var _gotoNext = 0i32;
        _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    _gotoNext = 261235i32;
                } else if (__value__ == (261235i32)) {
                    0i32;
                    _fieldBreak = false;
                    _gotoNext = 261243i32;
                } else if (__value__ == (261243i32)) {
                    if (!_fieldBreak && (_env != (stdgo.Go.str() : stdgo.GoString))) {
                        _gotoNext = 261257i32;
                    } else {
                        _gotoNext = 262198i32;
                    };
                } else if (__value__ == (261257i32)) {
                    _field_0 = (stdgo.Go.str() : stdgo.GoString)?.__copy__();
                    _i_1 = stdgo._internal.internal.cpu.Cpu__indexbyte._indexByte(_env?.__copy__(), (44 : stdgo.GoUInt8));
                    if ((_i_1 < (0 : stdgo.GoInt) : Bool)) {
                        _gotoNext = 261311i32;
                    } else {
                        _gotoNext = 261346i32;
                    };
                } else if (__value__ == (261311i32)) {
                    {
                        final __tmp__0 = _env?.__copy__();
                        final __tmp__1 = (stdgo.Go.str() : stdgo.GoString)?.__copy__();
                        _field_0 = @:binopAssign __tmp__0;
                        _env = @:binopAssign __tmp__1;
                    };
                    _gotoNext = 261389i32;
                } else if (__value__ == (261346i32)) {
                    _gotoNext = 261346i32;
                    {
                        final __tmp__0 = (_env.__slice__(0, _i_1) : stdgo.GoString)?.__copy__();
                        final __tmp__1 = (_env.__slice__((_i_1 + (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        _field_0 = @:binopAssign __tmp__0;
                        _env = @:binopAssign __tmp__1;
                    };
                    0i32;
                    _gotoNext = 261389i32;
                } else if (__value__ == (261389i32)) {
                    if ((((_field_0.length) < (4 : stdgo.GoInt) : Bool) || ((_field_0.__slice__(0, (4 : stdgo.GoInt)) : stdgo.GoString) != ("cpu." : stdgo.GoString)) : Bool)) {
                        _gotoNext = 261430i32;
                    } else {
                        _gotoNext = 261450i32;
                    };
                } else if (__value__ == (261430i32)) {
                    0i32;
                    _gotoNext = 261243i32;
                } else if (__value__ == (261450i32)) {
                    _i_1 = stdgo._internal.internal.cpu.Cpu__indexbyte._indexByte(_field_0?.__copy__(), (61 : stdgo.GoUInt8));
                    if ((_i_1 < (0 : stdgo.GoInt) : Bool)) {
                        _gotoNext = 261487i32;
                    } else {
                        _gotoNext = 261569i32;
                    };
                } else if (__value__ == (261487i32)) {
                    stdgo.Go.print(("GODEBUG: no value specified for \"" : stdgo.GoString), _field_0, ("\"\n" : stdgo.GoString));
                    0i32;
                    _gotoNext = 261243i32;
                } else if (__value__ == (261569i32)) {
                    {
                        final __tmp__0 = (_field_0.__slice__((4 : stdgo.GoInt), _i_1) : stdgo.GoString)?.__copy__();
                        final __tmp__1 = (_field_0.__slice__((_i_1 + (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        _key_2 = @:binopAssign __tmp__0;
                        _value_3 = @:binopAssign __tmp__1;
                    };
                    _gotoNext = 261649i32;
                } else if (__value__ == (261649i32)) {
                    {
                        final __value__ = _value_3;
                        if (__value__ == (("on" : stdgo.GoString))) {
                            _gotoNext = 261666i32;
                        } else if (__value__ == (("off" : stdgo.GoString))) {
                            _gotoNext = 261696i32;
                        } else {
                            _gotoNext = 261728i32;
                        };
                    };
                } else if (__value__ == (261666i32)) {
                    _enable_4 = true;
                    _gotoNext = 261850i32;
                } else if (__value__ == (261696i32)) {
                    _enable_4 = false;
                    _gotoNext = 261850i32;
                } else if (__value__ == (261728i32)) {
                    stdgo.Go.print(("GODEBUG: value \"" : stdgo.GoString), _value_3, ("\" not supported for cpu option \"" : stdgo.GoString), _key_2, ("\"\n" : stdgo.GoString));
                    _gotoNext = 261243i32;
                } else if (__value__ == (261850i32)) {
                    if (_key_2 == (("all" : stdgo.GoString))) {
                        _gotoNext = 261866i32;
                    } else {
                        _gotoNext = 261989i32;
                    };
                } else if (__value__ == (261866i32)) {
                    if ((0i32 : stdgo.GoInt) < (stdgo._internal.internal.cpu.Cpu__options._options.length)) {
                        _gotoNext = 261961i32;
                    } else {
                        _gotoNext = 261967i32;
                    };
                } else if (__value__ == (261894i32)) {
                    stdgo._internal.internal.cpu.Cpu__options._options[(_i_5 : stdgo.GoInt)].specified = true;
                    stdgo._internal.internal.cpu.Cpu__options._options[(_i_5 : stdgo.GoInt)].enable = _enable_4;
                    _i_5++;
                    _gotoNext = 261962i32;
                } else if (__value__ == (261961i32)) {
                    _i_5 = 0i32;
                    _gotoNext = 261962i32;
                } else if (__value__ == (261962i32)) {
                    if (_i_5 < (stdgo._internal.internal.cpu.Cpu__options._options.length)) {
                        _gotoNext = 261894i32;
                    } else {
                        _gotoNext = 261967i32;
                    };
                } else if (__value__ == (261967i32)) {
                    _gotoNext = 261243i32;
                } else if (__value__ == (261989i32)) {
                    if ((0i32 : stdgo.GoInt) < (stdgo._internal.internal.cpu.Cpu__options._options.length)) {
                        _gotoNext = 262133i32;
                    } else {
                        _gotoNext = 262139i32;
                    };
                } else if (__value__ == (261993i32)) {
                    _i_6++;
                    _gotoNext = 262134i32;
                } else if (__value__ == (262012i32)) {
                    if (stdgo._internal.internal.cpu.Cpu__options._options[(_i_6 : stdgo.GoInt)].name == (_key_2)) {
                        _gotoNext = 262043i32;
                    } else {
                        _gotoNext = 261993i32;
                    };
                } else if (__value__ == (262043i32)) {
                    stdgo._internal.internal.cpu.Cpu__options._options[(_i_6 : stdgo.GoInt)].specified = true;
                    stdgo._internal.internal.cpu.Cpu__options._options[(_i_6 : stdgo.GoInt)].enable = _enable_4;
                    _gotoNext = 261243i32;
                } else if (__value__ == (262133i32)) {
                    _i_6 = 0i32;
                    _gotoNext = 262134i32;
                } else if (__value__ == (262134i32)) {
                    if (_i_6 < (stdgo._internal.internal.cpu.Cpu__options._options.length)) {
                        _gotoNext = 262012i32;
                    } else {
                        _gotoNext = 262139i32;
                    };
                } else if (__value__ == (262139i32)) {
                    stdgo.Go.print(("GODEBUG: unknown cpu feature \"" : stdgo.GoString), _key_2, ("\"\n" : stdgo.GoString));
                    _gotoNext = 261243i32;
                } else if (__value__ == (262198i32)) {
                    if ((0i32 : stdgo.GoInt) < (stdgo._internal.internal.cpu.Cpu__options._options.length)) {
                        _gotoNext = 262411i32;
                    } else {
                        _gotoNext = 262414i32;
                    };
                } else if (__value__ == (262224i32)) {
                    _o_8 = stdgo._internal.internal.cpu.Cpu__options._options[(_iterator_262210_7 : stdgo.GoInt)];
                    if (!_o_8.specified) {
                        _gotoNext = 262244i32;
                    } else {
                        _gotoNext = 262265i32;
                    };
                } else if (__value__ == (262244i32)) {
                    _iterator_262210_7++;
                    _gotoNext = 262412i32;
                } else if (__value__ == (262265i32)) {
                    if ((_o_8.enable && !_o_8.feature.value : Bool)) {
                        _gotoNext = 262292i32;
                    } else {
                        _gotoNext = 262389i32;
                    };
                } else if (__value__ == (262292i32)) {
                    stdgo.Go.print(("GODEBUG: can not enable \"" : stdgo.GoString), _o_8.name, ("\", missing CPU support\n" : stdgo.GoString));
                    _iterator_262210_7++;
                    _gotoNext = 262412i32;
                } else if (__value__ == (262389i32)) {
                    _o_8.feature.value = _o_8.enable;
                    _iterator_262210_7++;
                    _gotoNext = 262412i32;
                } else if (__value__ == (262411i32)) {
                    {
                        final __tmp__0 = 0i32;
                        final __tmp__1 = stdgo._internal.internal.cpu.Cpu__options._options[(0i32 : stdgo.GoInt)];
                        _iterator_262210_7 = @:binopAssign __tmp__0;
                        _o_8 = @:binopAssign __tmp__1;
                    };
                    _gotoNext = 262412i32;
                } else if (__value__ == (262412i32)) {
                    if (_iterator_262210_7 < (stdgo._internal.internal.cpu.Cpu__options._options.length)) {
                        _gotoNext = 262224i32;
                    } else {
                        _gotoNext = 262414i32;
                    };
                } else if (__value__ == (262414i32)) {
                    _gotoNext = -1i32;
                };
            };
        };
    }
