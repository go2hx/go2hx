package stdgo._internal.internal.cpu;
function _processOptions(_env:stdgo.GoString):Void {
        var _enable_4:Bool = false;
        var _key_2:stdgo.GoString = ("" : stdgo.GoString);
        var _o_8:stdgo._internal.internal.cpu.Cpu_t_option.T_option = ({} : stdgo._internal.internal.cpu.Cpu_t_option.T_option);
        var _field_0:stdgo.GoString = ("" : stdgo.GoString);
        var _fieldBreak = false;
        var _iterator_6566_7:stdgo.GoInt = (0 : stdgo.GoInt);
        var _i_6:stdgo.GoInt = (0 : stdgo.GoInt);
        var _i_5:stdgo.GoInt = (0 : stdgo.GoInt);
        var _value_3:stdgo.GoString = ("" : stdgo.GoString);
        var _i_1:stdgo.GoInt = (0 : stdgo.GoInt);
        var _gotoNext = 0i32;
        _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    _gotoNext = 5591i32;
                } else if (__value__ == (5591i32)) {
                    0i32;
                    _fieldBreak = false;
                    _gotoNext = 5599i32;
                } else if (__value__ == (5599i32)) {
                    if (!_fieldBreak && (_env != (stdgo.Go.str() : stdgo.GoString))) {
                        _gotoNext = 5613i32;
                    } else {
                        _gotoNext = 6554i32;
                    };
                } else if (__value__ == (5613i32)) {
                    _field_0 = (stdgo.Go.str() : stdgo.GoString)?.__copy__();
                    _i_1 = stdgo._internal.internal.cpu.Cpu__indexbyte._indexByte(_env?.__copy__(), (44 : stdgo.GoUInt8));
                    if ((_i_1 < (0 : stdgo.GoInt) : Bool)) {
                        _gotoNext = 5667i32;
                    } else {
                        _gotoNext = 5702i32;
                    };
                } else if (__value__ == (5667i32)) {
                    {
                        final __tmp__0 = _env?.__copy__();
                        final __tmp__1 = (stdgo.Go.str() : stdgo.GoString)?.__copy__();
                        _field_0 = @:binopAssign __tmp__0;
                        _env = @:binopAssign __tmp__1;
                    };
                    _gotoNext = 5745i32;
                } else if (__value__ == (5702i32)) {
                    _gotoNext = 5702i32;
                    {
                        final __tmp__0 = (_env.__slice__(0, _i_1) : stdgo.GoString)?.__copy__();
                        final __tmp__1 = (_env.__slice__((_i_1 + (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        _field_0 = @:binopAssign __tmp__0;
                        _env = @:binopAssign __tmp__1;
                    };
                    0i32;
                    _gotoNext = 5745i32;
                } else if (__value__ == (5745i32)) {
                    if ((((_field_0.length) < (4 : stdgo.GoInt) : Bool) || ((_field_0.__slice__(0, (4 : stdgo.GoInt)) : stdgo.GoString) != ("cpu." : stdgo.GoString)) : Bool)) {
                        _gotoNext = 5786i32;
                    } else {
                        _gotoNext = 5806i32;
                    };
                } else if (__value__ == (5786i32)) {
                    0i32;
                    _gotoNext = 5599i32;
                } else if (__value__ == (5806i32)) {
                    _i_1 = stdgo._internal.internal.cpu.Cpu__indexbyte._indexByte(_field_0?.__copy__(), (61 : stdgo.GoUInt8));
                    if ((_i_1 < (0 : stdgo.GoInt) : Bool)) {
                        _gotoNext = 5843i32;
                    } else {
                        _gotoNext = 5925i32;
                    };
                } else if (__value__ == (5843i32)) {
                    stdgo.Go.print(("GODEBUG: no value specified for \"" : stdgo.GoString), _field_0, ("\"\n" : stdgo.GoString));
                    0i32;
                    _gotoNext = 5599i32;
                } else if (__value__ == (5925i32)) {
                    {
                        final __tmp__0 = (_field_0.__slice__((4 : stdgo.GoInt), _i_1) : stdgo.GoString)?.__copy__();
                        final __tmp__1 = (_field_0.__slice__((_i_1 + (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        _key_2 = @:binopAssign __tmp__0;
                        _value_3 = @:binopAssign __tmp__1;
                    };
                    _gotoNext = 6005i32;
                } else if (__value__ == (6005i32)) {
                    {
                        final __value__ = _value_3;
                        if (__value__ == (("on" : stdgo.GoString))) {
                            _gotoNext = 6022i32;
                        } else if (__value__ == (("off" : stdgo.GoString))) {
                            _gotoNext = 6052i32;
                        } else {
                            _gotoNext = 6084i32;
                        };
                    };
                } else if (__value__ == (6022i32)) {
                    _enable_4 = true;
                    _gotoNext = 6206i32;
                } else if (__value__ == (6052i32)) {
                    _enable_4 = false;
                    _gotoNext = 6206i32;
                } else if (__value__ == (6084i32)) {
                    stdgo.Go.print(("GODEBUG: value \"" : stdgo.GoString), _value_3, ("\" not supported for cpu option \"" : stdgo.GoString), _key_2, ("\"\n" : stdgo.GoString));
                    _gotoNext = 5599i32;
                } else if (__value__ == (6206i32)) {
                    if (_key_2 == (("all" : stdgo.GoString))) {
                        _gotoNext = 6222i32;
                    } else {
                        _gotoNext = 6345i32;
                    };
                } else if (__value__ == (6222i32)) {
                    if ((0i32 : stdgo.GoInt) < (stdgo._internal.internal.cpu.Cpu__options._options.length)) {
                        _gotoNext = 6317i32;
                    } else {
                        _gotoNext = 6323i32;
                    };
                } else if (__value__ == (6250i32)) {
                    stdgo._internal.internal.cpu.Cpu__options._options[(_i_5 : stdgo.GoInt)].specified = true;
                    stdgo._internal.internal.cpu.Cpu__options._options[(_i_5 : stdgo.GoInt)].enable = _enable_4;
                    _i_5++;
                    _gotoNext = 6318i32;
                } else if (__value__ == (6317i32)) {
                    _i_5 = 0i32;
                    _gotoNext = 6318i32;
                } else if (__value__ == (6318i32)) {
                    if (_i_5 < (stdgo._internal.internal.cpu.Cpu__options._options.length)) {
                        _gotoNext = 6250i32;
                    } else {
                        _gotoNext = 6323i32;
                    };
                } else if (__value__ == (6323i32)) {
                    _gotoNext = 5599i32;
                } else if (__value__ == (6345i32)) {
                    if ((0i32 : stdgo.GoInt) < (stdgo._internal.internal.cpu.Cpu__options._options.length)) {
                        _gotoNext = 6489i32;
                    } else {
                        _gotoNext = 6495i32;
                    };
                } else if (__value__ == (6349i32)) {
                    _i_6++;
                    _gotoNext = 6490i32;
                } else if (__value__ == (6368i32)) {
                    if (stdgo._internal.internal.cpu.Cpu__options._options[(_i_6 : stdgo.GoInt)].name == (_key_2)) {
                        _gotoNext = 6399i32;
                    } else {
                        _gotoNext = 6349i32;
                    };
                } else if (__value__ == (6399i32)) {
                    stdgo._internal.internal.cpu.Cpu__options._options[(_i_6 : stdgo.GoInt)].specified = true;
                    stdgo._internal.internal.cpu.Cpu__options._options[(_i_6 : stdgo.GoInt)].enable = _enable_4;
                    _gotoNext = 5599i32;
                } else if (__value__ == (6489i32)) {
                    _i_6 = 0i32;
                    _gotoNext = 6490i32;
                } else if (__value__ == (6490i32)) {
                    if (_i_6 < (stdgo._internal.internal.cpu.Cpu__options._options.length)) {
                        _gotoNext = 6368i32;
                    } else {
                        _gotoNext = 6495i32;
                    };
                } else if (__value__ == (6495i32)) {
                    stdgo.Go.print(("GODEBUG: unknown cpu feature \"" : stdgo.GoString), _key_2, ("\"\n" : stdgo.GoString));
                    _gotoNext = 5599i32;
                } else if (__value__ == (6554i32)) {
                    if ((0i32 : stdgo.GoInt) < (stdgo._internal.internal.cpu.Cpu__options._options.length)) {
                        _gotoNext = 6767i32;
                    } else {
                        _gotoNext = 6770i32;
                    };
                } else if (__value__ == (6580i32)) {
                    _o_8 = stdgo._internal.internal.cpu.Cpu__options._options[(_iterator_6566_7 : stdgo.GoInt)];
                    if (!_o_8.specified) {
                        _gotoNext = 6600i32;
                    } else {
                        _gotoNext = 6621i32;
                    };
                } else if (__value__ == (6600i32)) {
                    _iterator_6566_7++;
                    _gotoNext = 6768i32;
                } else if (__value__ == (6621i32)) {
                    if ((_o_8.enable && !_o_8.feature.value : Bool)) {
                        _gotoNext = 6648i32;
                    } else {
                        _gotoNext = 6745i32;
                    };
                } else if (__value__ == (6648i32)) {
                    stdgo.Go.print(("GODEBUG: can not enable \"" : stdgo.GoString), _o_8.name, ("\", missing CPU support\n" : stdgo.GoString));
                    _iterator_6566_7++;
                    _gotoNext = 6768i32;
                } else if (__value__ == (6745i32)) {
                    _o_8.feature.value = _o_8.enable;
                    _iterator_6566_7++;
                    _gotoNext = 6768i32;
                } else if (__value__ == (6767i32)) {
                    {
                        final __tmp__0 = 0i32;
                        final __tmp__1 = stdgo._internal.internal.cpu.Cpu__options._options[(0i32 : stdgo.GoInt)];
                        _iterator_6566_7 = @:binopAssign __tmp__0;
                        _o_8 = @:binopAssign __tmp__1;
                    };
                    _gotoNext = 6768i32;
                } else if (__value__ == (6768i32)) {
                    if (_iterator_6566_7 < (stdgo._internal.internal.cpu.Cpu__options._options.length)) {
                        _gotoNext = 6580i32;
                    } else {
                        _gotoNext = 6770i32;
                    };
                } else if (__value__ == (6770i32)) {
                    _gotoNext = -1i32;
                };
            };
        };
    }
