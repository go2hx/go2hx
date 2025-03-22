package stdgo._internal.internal.cpu;
function _processOptions(_env:stdgo.GoString):Void {
        var _iterator_18881_7:stdgo.GoInt = (0 : stdgo.GoInt);
        var _i_5:stdgo.GoInt = (0 : stdgo.GoInt);
        var _enable_4:Bool = false;
        var _value_3:stdgo.GoString = ("" : stdgo.GoString);
        var _field_0:stdgo.GoString = ("" : stdgo.GoString);
        var _fieldBreak = false;
        var _o_8:stdgo._internal.internal.cpu.Cpu_t_option.T_option = ({} : stdgo._internal.internal.cpu.Cpu_t_option.T_option);
        var _i_6:stdgo.GoInt = (0 : stdgo.GoInt);
        var _key_2:stdgo.GoString = ("" : stdgo.GoString);
        var _i_1:stdgo.GoInt = (0 : stdgo.GoInt);
        var _gotoNext = 0i32;
        _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    _gotoNext = 17906i32;
                } else if (__value__ == (17906i32)) {
                    0i32;
                    _fieldBreak = false;
                    _gotoNext = 17914i32;
                } else if (__value__ == (17914i32)) {
                    if (!_fieldBreak && (_env != (stdgo.Go.str() : stdgo.GoString))) {
                        _gotoNext = 17928i32;
                    } else {
                        _gotoNext = 18869i32;
                    };
                } else if (__value__ == (17928i32)) {
                    _field_0 = (stdgo.Go.str() : stdgo.GoString)?.__copy__();
                    _i_1 = stdgo._internal.internal.cpu.Cpu__indexbyte._indexByte(_env?.__copy__(), (44 : stdgo.GoUInt8));
                    if ((_i_1 < (0 : stdgo.GoInt) : Bool)) {
                        _gotoNext = 17982i32;
                    } else {
                        _gotoNext = 18017i32;
                    };
                } else if (__value__ == (17982i32)) {
                    {
                        final __tmp__0 = _env?.__copy__();
                        final __tmp__1 = (stdgo.Go.str() : stdgo.GoString)?.__copy__();
                        _field_0 = @:binopAssign __tmp__0;
                        _env = @:binopAssign __tmp__1;
                    };
                    _gotoNext = 18060i32;
                } else if (__value__ == (18017i32)) {
                    _gotoNext = 18017i32;
                    {
                        final __tmp__0 = (_env.__slice__(0, _i_1) : stdgo.GoString)?.__copy__();
                        final __tmp__1 = (_env.__slice__((_i_1 + (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        _field_0 = @:binopAssign __tmp__0;
                        _env = @:binopAssign __tmp__1;
                    };
                    0i32;
                    _gotoNext = 18060i32;
                } else if (__value__ == (18060i32)) {
                    if ((((_field_0.length) < (4 : stdgo.GoInt) : Bool) || ((_field_0.__slice__(0, (4 : stdgo.GoInt)) : stdgo.GoString) != ("cpu." : stdgo.GoString)) : Bool)) {
                        _gotoNext = 18101i32;
                    } else {
                        _gotoNext = 18121i32;
                    };
                } else if (__value__ == (18101i32)) {
                    0i32;
                    _gotoNext = 17914i32;
                } else if (__value__ == (18121i32)) {
                    _i_1 = stdgo._internal.internal.cpu.Cpu__indexbyte._indexByte(_field_0?.__copy__(), (61 : stdgo.GoUInt8));
                    if ((_i_1 < (0 : stdgo.GoInt) : Bool)) {
                        _gotoNext = 18158i32;
                    } else {
                        _gotoNext = 18240i32;
                    };
                } else if (__value__ == (18158i32)) {
                    stdgo.Go.print(("GODEBUG: no value specified for \"" : stdgo.GoString), _field_0, ("\"\n" : stdgo.GoString));
                    0i32;
                    _gotoNext = 17914i32;
                } else if (__value__ == (18240i32)) {
                    {
                        final __tmp__0 = (_field_0.__slice__((4 : stdgo.GoInt), _i_1) : stdgo.GoString)?.__copy__();
                        final __tmp__1 = (_field_0.__slice__((_i_1 + (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        _key_2 = @:binopAssign __tmp__0;
                        _value_3 = @:binopAssign __tmp__1;
                    };
                    _gotoNext = 18320i32;
                } else if (__value__ == (18320i32)) {
                    {
                        final __value__ = _value_3;
                        if (__value__ == (("on" : stdgo.GoString))) {
                            _gotoNext = 18337i32;
                        } else if (__value__ == (("off" : stdgo.GoString))) {
                            _gotoNext = 18367i32;
                        } else {
                            _gotoNext = 18399i32;
                        };
                    };
                } else if (__value__ == (18337i32)) {
                    _enable_4 = true;
                    _gotoNext = 18521i32;
                } else if (__value__ == (18367i32)) {
                    _enable_4 = false;
                    _gotoNext = 18521i32;
                } else if (__value__ == (18399i32)) {
                    stdgo.Go.print(("GODEBUG: value \"" : stdgo.GoString), _value_3, ("\" not supported for cpu option \"" : stdgo.GoString), _key_2, ("\"\n" : stdgo.GoString));
                    _gotoNext = 17914i32;
                } else if (__value__ == (18521i32)) {
                    if (_key_2 == (("all" : stdgo.GoString))) {
                        _gotoNext = 18537i32;
                    } else {
                        _gotoNext = 18660i32;
                    };
                } else if (__value__ == (18537i32)) {
                    if ((0i32 : stdgo.GoInt) < (stdgo._internal.internal.cpu.Cpu__options._options.length)) {
                        _gotoNext = 18632i32;
                    } else {
                        _gotoNext = 18638i32;
                    };
                } else if (__value__ == (18565i32)) {
                    stdgo._internal.internal.cpu.Cpu__options._options[(_i_5 : stdgo.GoInt)].specified = true;
                    stdgo._internal.internal.cpu.Cpu__options._options[(_i_5 : stdgo.GoInt)].enable = _enable_4;
                    _i_5++;
                    _gotoNext = 18633i32;
                } else if (__value__ == (18632i32)) {
                    _i_5 = 0i32;
                    _gotoNext = 18633i32;
                } else if (__value__ == (18633i32)) {
                    if (_i_5 < (stdgo._internal.internal.cpu.Cpu__options._options.length)) {
                        _gotoNext = 18565i32;
                    } else {
                        _gotoNext = 18638i32;
                    };
                } else if (__value__ == (18638i32)) {
                    _gotoNext = 17914i32;
                } else if (__value__ == (18660i32)) {
                    if ((0i32 : stdgo.GoInt) < (stdgo._internal.internal.cpu.Cpu__options._options.length)) {
                        _gotoNext = 18804i32;
                    } else {
                        _gotoNext = 18810i32;
                    };
                } else if (__value__ == (18664i32)) {
                    _i_6++;
                    _gotoNext = 18805i32;
                } else if (__value__ == (18683i32)) {
                    if (stdgo._internal.internal.cpu.Cpu__options._options[(_i_6 : stdgo.GoInt)].name == (_key_2)) {
                        _gotoNext = 18714i32;
                    } else {
                        _gotoNext = 18664i32;
                    };
                } else if (__value__ == (18714i32)) {
                    stdgo._internal.internal.cpu.Cpu__options._options[(_i_6 : stdgo.GoInt)].specified = true;
                    stdgo._internal.internal.cpu.Cpu__options._options[(_i_6 : stdgo.GoInt)].enable = _enable_4;
                    _gotoNext = 17914i32;
                } else if (__value__ == (18804i32)) {
                    _i_6 = 0i32;
                    _gotoNext = 18805i32;
                } else if (__value__ == (18805i32)) {
                    if (_i_6 < (stdgo._internal.internal.cpu.Cpu__options._options.length)) {
                        _gotoNext = 18683i32;
                    } else {
                        _gotoNext = 18810i32;
                    };
                } else if (__value__ == (18810i32)) {
                    stdgo.Go.print(("GODEBUG: unknown cpu feature \"" : stdgo.GoString), _key_2, ("\"\n" : stdgo.GoString));
                    _gotoNext = 17914i32;
                } else if (__value__ == (18869i32)) {
                    if ((0i32 : stdgo.GoInt) < (stdgo._internal.internal.cpu.Cpu__options._options.length)) {
                        _gotoNext = 19082i32;
                    } else {
                        _gotoNext = 19085i32;
                    };
                } else if (__value__ == (18895i32)) {
                    _o_8 = stdgo._internal.internal.cpu.Cpu__options._options[(_iterator_18881_7 : stdgo.GoInt)];
                    if (!_o_8.specified) {
                        _gotoNext = 18915i32;
                    } else {
                        _gotoNext = 18936i32;
                    };
                } else if (__value__ == (18915i32)) {
                    _iterator_18881_7++;
                    _gotoNext = 19083i32;
                } else if (__value__ == (18936i32)) {
                    if ((_o_8.enable && !_o_8.feature.value : Bool)) {
                        _gotoNext = 18963i32;
                    } else {
                        _gotoNext = 19060i32;
                    };
                } else if (__value__ == (18963i32)) {
                    stdgo.Go.print(("GODEBUG: can not enable \"" : stdgo.GoString), _o_8.name, ("\", missing CPU support\n" : stdgo.GoString));
                    _iterator_18881_7++;
                    _gotoNext = 19083i32;
                } else if (__value__ == (19060i32)) {
                    _o_8.feature.value = _o_8.enable;
                    _iterator_18881_7++;
                    _gotoNext = 19083i32;
                } else if (__value__ == (19082i32)) {
                    {
                        final __tmp__0 = 0i32;
                        final __tmp__1 = stdgo._internal.internal.cpu.Cpu__options._options[(0i32 : stdgo.GoInt)];
                        _iterator_18881_7 = @:binopAssign __tmp__0;
                        _o_8 = @:binopAssign __tmp__1;
                    };
                    _gotoNext = 19083i32;
                } else if (__value__ == (19083i32)) {
                    if (_iterator_18881_7 < (stdgo._internal.internal.cpu.Cpu__options._options.length)) {
                        _gotoNext = 18895i32;
                    } else {
                        _gotoNext = 19085i32;
                    };
                } else if (__value__ == (19085i32)) {
                    _gotoNext = -1i32;
                };
            };
        };
    }
