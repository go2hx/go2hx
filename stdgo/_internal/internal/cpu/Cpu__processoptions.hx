package stdgo._internal.internal.cpu;
function _processOptions(_env:stdgo.GoString):Void {
        var _o_8:stdgo._internal.internal.cpu.Cpu_t_option.T_option = ({} : stdgo._internal.internal.cpu.Cpu_t_option.T_option);
        var _i_35675_7:stdgo.GoInt = (0 : stdgo.GoInt);
        var _i_6:stdgo.GoInt = (0 : stdgo.GoInt);
        var _i_5:stdgo.GoInt = (0 : stdgo.GoInt);
        var _key_2:stdgo.GoString = ("" : stdgo.GoString);
        var _enable_4:Bool = false;
        var _value_3:stdgo.GoString = ("" : stdgo.GoString);
        var _i_1:stdgo.GoInt = (0 : stdgo.GoInt);
        var _field_0:stdgo.GoString = ("" : stdgo.GoString);
        var _fieldBreak = false;
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    _gotoNext = 34700i32;
                } else if (__value__ == (34700i32)) {
                    var __blank__ = 0i32;
                    _fieldBreak = false;
                    _gotoNext = 34708i32;
                } else if (__value__ == (34708i32)) {
                    if (!_fieldBreak && (_env != (stdgo.Go.str() : stdgo.GoString))) {
                        _gotoNext = 34722i32;
                    } else {
                        _gotoNext = 35663i32;
                    };
                } else if (__value__ == (34722i32)) {
                    _field_0 = (stdgo.Go.str() : stdgo.GoString)?.__copy__();
                    _i_1 = stdgo._internal.internal.cpu.Cpu__indexbyte._indexByte(_env?.__copy__(), (44 : stdgo.GoUInt8));
                    if ((_i_1 < (0 : stdgo.GoInt) : Bool)) {
                        _gotoNext = 34776i32;
                    } else {
                        _gotoNext = 34811i32;
                    };
                } else if (__value__ == (34776i32)) {
                    {
                        final __tmp__0 = _env?.__copy__();
                        final __tmp__1 = (stdgo.Go.str() : stdgo.GoString)?.__copy__();
                        _field_0 = @:binopAssign __tmp__0;
                        _env = @:binopAssign __tmp__1;
                    };
                    _gotoNext = 34854i32;
                } else if (__value__ == (34811i32)) {
                    _gotoNext = 34811i32;
                    {
                        final __tmp__0 = (_env.__slice__(0, _i_1) : stdgo.GoString)?.__copy__();
                        final __tmp__1 = (_env.__slice__((_i_1 + (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        _field_0 = @:binopAssign __tmp__0;
                        _env = @:binopAssign __tmp__1;
                    };
                    var __blank__ = 0i32;
                    _gotoNext = 34854i32;
                } else if (__value__ == (34854i32)) {
                    if ((((_field_0.length) < (4 : stdgo.GoInt) : Bool) || ((_field_0.__slice__(0, (4 : stdgo.GoInt)) : stdgo.GoString) != ("cpu." : stdgo.GoString)) : Bool)) {
                        _gotoNext = 34895i32;
                    } else {
                        _gotoNext = 34915i32;
                    };
                } else if (__value__ == (34895i32)) {
                    var __blank__ = 0i32;
                    _gotoNext = 34708i32;
                } else if (__value__ == (34915i32)) {
                    _i_1 = stdgo._internal.internal.cpu.Cpu__indexbyte._indexByte(_field_0?.__copy__(), (61 : stdgo.GoUInt8));
                    if ((_i_1 < (0 : stdgo.GoInt) : Bool)) {
                        _gotoNext = 34952i32;
                    } else {
                        _gotoNext = 35034i32;
                    };
                } else if (__value__ == (34952i32)) {
                    stdgo.Go.print(("GODEBUG: no value specified for \"" : stdgo.GoString), _field_0, ("\"\n" : stdgo.GoString));
                    var __blank__ = 0i32;
                    _gotoNext = 34708i32;
                } else if (__value__ == (35034i32)) {
                    {
                        final __tmp__0 = (_field_0.__slice__((4 : stdgo.GoInt), _i_1) : stdgo.GoString)?.__copy__();
                        final __tmp__1 = (_field_0.__slice__((_i_1 + (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        _key_2 = @:binopAssign __tmp__0;
                        _value_3 = @:binopAssign __tmp__1;
                    };
                    _gotoNext = 35114i32;
                } else if (__value__ == (35114i32)) {
                    {
                        final __value__ = _value_3;
                        if (__value__ == (("on" : stdgo.GoString))) {
                            _gotoNext = 35131i32;
                        } else if (__value__ == (("off" : stdgo.GoString))) {
                            _gotoNext = 35161i32;
                        } else {
                            _gotoNext = 35193i32;
                        };
                    };
                } else if (__value__ == (35131i32)) {
                    _enable_4 = true;
                    _gotoNext = 35315i32;
                } else if (__value__ == (35161i32)) {
                    _enable_4 = false;
                    _gotoNext = 35315i32;
                } else if (__value__ == (35193i32)) {
                    stdgo.Go.print(("GODEBUG: value \"" : stdgo.GoString), _value_3, ("\" not supported for cpu option \"" : stdgo.GoString), _key_2, ("\"\n" : stdgo.GoString));
                    _gotoNext = 34708i32;
                } else if (__value__ == (35315i32)) {
                    if (_key_2 == (("all" : stdgo.GoString))) {
                        _gotoNext = 35331i32;
                    } else {
                        _gotoNext = 35454i32;
                    };
                } else if (__value__ == (35331i32)) {
                    if ((0i32 : stdgo.GoInt) < (stdgo._internal.internal.cpu.Cpu__options._options.length)) {
                        _gotoNext = 35426i32;
                    } else {
                        _gotoNext = 35432i32;
                    };
                } else if (__value__ == (35359i32)) {
                    stdgo._internal.internal.cpu.Cpu__options._options[(_i_5 : stdgo.GoInt)].specified = true;
                    stdgo._internal.internal.cpu.Cpu__options._options[(_i_5 : stdgo.GoInt)].enable = _enable_4;
                    _i_5++;
                    _gotoNext = 35427i32;
                } else if (__value__ == (35426i32)) {
                    _i_5 = 0i32;
                    _gotoNext = 35427i32;
                } else if (__value__ == (35427i32)) {
                    if (_i_5 < (stdgo._internal.internal.cpu.Cpu__options._options.length)) {
                        _gotoNext = 35359i32;
                    } else {
                        _gotoNext = 35432i32;
                    };
                } else if (__value__ == (35432i32)) {
                    _gotoNext = 34708i32;
                } else if (__value__ == (35454i32)) {
                    if ((0i32 : stdgo.GoInt) < (stdgo._internal.internal.cpu.Cpu__options._options.length)) {
                        _gotoNext = 35598i32;
                    } else {
                        _gotoNext = 35604i32;
                    };
                } else if (__value__ == (35458i32)) {
                    _i_6++;
                    _gotoNext = 35599i32;
                } else if (__value__ == (35477i32)) {
                    if (stdgo._internal.internal.cpu.Cpu__options._options[(_i_6 : stdgo.GoInt)].name == (_key_2)) {
                        _gotoNext = 35508i32;
                    } else {
                        _gotoNext = 35458i32;
                    };
                } else if (__value__ == (35508i32)) {
                    stdgo._internal.internal.cpu.Cpu__options._options[(_i_6 : stdgo.GoInt)].specified = true;
                    stdgo._internal.internal.cpu.Cpu__options._options[(_i_6 : stdgo.GoInt)].enable = _enable_4;
                    _gotoNext = 34708i32;
                } else if (__value__ == (35598i32)) {
                    _i_6 = 0i32;
                    _gotoNext = 35599i32;
                } else if (__value__ == (35599i32)) {
                    if (_i_6 < (stdgo._internal.internal.cpu.Cpu__options._options.length)) {
                        _gotoNext = 35477i32;
                    } else {
                        _gotoNext = 35604i32;
                    };
                } else if (__value__ == (35604i32)) {
                    stdgo.Go.print(("GODEBUG: unknown cpu feature \"" : stdgo.GoString), _key_2, ("\"\n" : stdgo.GoString));
                    _gotoNext = 34708i32;
                } else if (__value__ == (35663i32)) {
                    if ((0i32 : stdgo.GoInt) < (stdgo._internal.internal.cpu.Cpu__options._options.length)) {
                        _gotoNext = 35876i32;
                    } else {
                        _gotoNext = 35879i32;
                    };
                } else if (__value__ == (35689i32)) {
                    _o_8 = stdgo._internal.internal.cpu.Cpu__options._options[(_i_35675_7 : stdgo.GoInt)];
                    if (!_o_8.specified) {
                        _gotoNext = 35709i32;
                    } else {
                        _gotoNext = 35730i32;
                    };
                } else if (__value__ == (35709i32)) {
                    _i_35675_7++;
                    _gotoNext = 35877i32;
                } else if (__value__ == (35730i32)) {
                    if ((_o_8.enable && !_o_8.feature.value : Bool)) {
                        _gotoNext = 35757i32;
                    } else {
                        _gotoNext = 35854i32;
                    };
                } else if (__value__ == (35757i32)) {
                    stdgo.Go.print(("GODEBUG: can not enable \"" : stdgo.GoString), _o_8.name, ("\", missing CPU support\n" : stdgo.GoString));
                    _i_35675_7++;
                    _gotoNext = 35877i32;
                } else if (__value__ == (35854i32)) {
                    _o_8.feature.value = _o_8.enable;
                    _i_35675_7++;
                    _gotoNext = 35877i32;
                } else if (__value__ == (35876i32)) {
                    {
                        final __tmp__0 = 0i32;
                        final __tmp__1 = stdgo._internal.internal.cpu.Cpu__options._options[(0i32 : stdgo.GoInt)];
                        _i_35675_7 = @:binopAssign __tmp__0;
                        _o_8 = @:binopAssign __tmp__1;
                    };
                    _gotoNext = 35877i32;
                } else if (__value__ == (35877i32)) {
                    if (_i_35675_7 < (stdgo._internal.internal.cpu.Cpu__options._options.length)) {
                        _gotoNext = 35689i32;
                    } else {
                        _gotoNext = 35879i32;
                    };
                } else if (__value__ == (35879i32)) {
                    _gotoNext = -1i32;
                };
            };
        };
    }
