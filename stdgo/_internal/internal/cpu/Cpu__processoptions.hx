package stdgo._internal.internal.cpu;
function _processOptions(_env:stdgo.GoString):Void {
        var _i_6:stdgo.GoInt = (0 : stdgo.GoInt);
        var _i_5:stdgo.GoInt = (0 : stdgo.GoInt);
        var _value_3:stdgo.GoString = ("" : stdgo.GoString);
        var _key_2:stdgo.GoString = ("" : stdgo.GoString);
        var _i_1:stdgo.GoInt = (0 : stdgo.GoInt);
        var _o_8:stdgo._internal.internal.cpu.Cpu_t_option.T_option = ({} : stdgo._internal.internal.cpu.Cpu_t_option.T_option);
        var _i_217832_7:stdgo.GoInt = (0 : stdgo.GoInt);
        var _enable_4:Bool = false;
        var _field_0:stdgo.GoString = ("" : stdgo.GoString);
        var _fieldBreak = false;
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    _gotoNext = 216857i32;
                } else if (__value__ == (216857i32)) {
                    var __blank__ = 0i32;
                    _fieldBreak = false;
                    _gotoNext = 216865i32;
                } else if (__value__ == (216865i32)) {
                    if (!_fieldBreak && (_env != (stdgo.Go.str() : stdgo.GoString))) {
                        _gotoNext = 216879i32;
                    } else {
                        _gotoNext = 217820i32;
                    };
                } else if (__value__ == (216879i32)) {
                    _field_0 = (stdgo.Go.str() : stdgo.GoString)?.__copy__();
                    _i_1 = stdgo._internal.internal.cpu.Cpu__indexbyte._indexByte(_env?.__copy__(), (44 : stdgo.GoUInt8));
                    if ((_i_1 < (0 : stdgo.GoInt) : Bool)) {
                        _gotoNext = 216933i32;
                    } else {
                        _gotoNext = 216968i32;
                    };
                } else if (__value__ == (216933i32)) {
                    {
                        final __tmp__0 = _env?.__copy__();
                        final __tmp__1 = (stdgo.Go.str() : stdgo.GoString)?.__copy__();
                        _field_0 = @:binopAssign __tmp__0;
                        _env = @:binopAssign __tmp__1;
                    };
                    _gotoNext = 217011i32;
                } else if (__value__ == (216968i32)) {
                    _gotoNext = 216968i32;
                    {
                        final __tmp__0 = (_env.__slice__(0, _i_1) : stdgo.GoString)?.__copy__();
                        final __tmp__1 = (_env.__slice__((_i_1 + (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        _field_0 = @:binopAssign __tmp__0;
                        _env = @:binopAssign __tmp__1;
                    };
                    var __blank__ = 0i32;
                    _gotoNext = 217011i32;
                } else if (__value__ == (217011i32)) {
                    if ((((_field_0.length) < (4 : stdgo.GoInt) : Bool) || ((_field_0.__slice__(0, (4 : stdgo.GoInt)) : stdgo.GoString) != ("cpu." : stdgo.GoString)) : Bool)) {
                        _gotoNext = 217052i32;
                    } else {
                        _gotoNext = 217072i32;
                    };
                } else if (__value__ == (217052i32)) {
                    var __blank__ = 0i32;
                    _gotoNext = 216865i32;
                } else if (__value__ == (217072i32)) {
                    _i_1 = stdgo._internal.internal.cpu.Cpu__indexbyte._indexByte(_field_0?.__copy__(), (61 : stdgo.GoUInt8));
                    if ((_i_1 < (0 : stdgo.GoInt) : Bool)) {
                        _gotoNext = 217109i32;
                    } else {
                        _gotoNext = 217191i32;
                    };
                } else if (__value__ == (217109i32)) {
                    stdgo.Go.print(("GODEBUG: no value specified for \"" : stdgo.GoString), _field_0, ("\"\n" : stdgo.GoString));
                    var __blank__ = 0i32;
                    _gotoNext = 216865i32;
                } else if (__value__ == (217191i32)) {
                    {
                        final __tmp__0 = (_field_0.__slice__((4 : stdgo.GoInt), _i_1) : stdgo.GoString)?.__copy__();
                        final __tmp__1 = (_field_0.__slice__((_i_1 + (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        _key_2 = @:binopAssign __tmp__0;
                        _value_3 = @:binopAssign __tmp__1;
                    };
                    _gotoNext = 217271i32;
                } else if (__value__ == (217271i32)) {
                    {
                        final __value__ = _value_3;
                        if (__value__ == (("on" : stdgo.GoString))) {
                            _gotoNext = 217288i32;
                        } else if (__value__ == (("off" : stdgo.GoString))) {
                            _gotoNext = 217318i32;
                        } else {
                            _gotoNext = 217350i32;
                        };
                    };
                } else if (__value__ == (217288i32)) {
                    _enable_4 = true;
                    _gotoNext = 217472i32;
                } else if (__value__ == (217318i32)) {
                    _enable_4 = false;
                    _gotoNext = 217472i32;
                } else if (__value__ == (217350i32)) {
                    stdgo.Go.print(("GODEBUG: value \"" : stdgo.GoString), _value_3, ("\" not supported for cpu option \"" : stdgo.GoString), _key_2, ("\"\n" : stdgo.GoString));
                    _gotoNext = 216865i32;
                } else if (__value__ == (217472i32)) {
                    if (_key_2 == (("all" : stdgo.GoString))) {
                        _gotoNext = 217488i32;
                    } else {
                        _gotoNext = 217611i32;
                    };
                } else if (__value__ == (217488i32)) {
                    if ((0i32 : stdgo.GoInt) < (stdgo._internal.internal.cpu.Cpu__options._options.length)) {
                        _gotoNext = 217583i32;
                    } else {
                        _gotoNext = 217589i32;
                    };
                } else if (__value__ == (217516i32)) {
                    stdgo._internal.internal.cpu.Cpu__options._options[(_i_5 : stdgo.GoInt)].specified = true;
                    stdgo._internal.internal.cpu.Cpu__options._options[(_i_5 : stdgo.GoInt)].enable = _enable_4;
                    _i_5++;
                    _gotoNext = 217584i32;
                } else if (__value__ == (217583i32)) {
                    _i_5 = 0i32;
                    _gotoNext = 217584i32;
                } else if (__value__ == (217584i32)) {
                    if (_i_5 < (stdgo._internal.internal.cpu.Cpu__options._options.length)) {
                        _gotoNext = 217516i32;
                    } else {
                        _gotoNext = 217589i32;
                    };
                } else if (__value__ == (217589i32)) {
                    _gotoNext = 216865i32;
                } else if (__value__ == (217611i32)) {
                    if ((0i32 : stdgo.GoInt) < (stdgo._internal.internal.cpu.Cpu__options._options.length)) {
                        _gotoNext = 217755i32;
                    } else {
                        _gotoNext = 217761i32;
                    };
                } else if (__value__ == (217615i32)) {
                    _i_6++;
                    _gotoNext = 217756i32;
                } else if (__value__ == (217634i32)) {
                    if (stdgo._internal.internal.cpu.Cpu__options._options[(_i_6 : stdgo.GoInt)].name == (_key_2)) {
                        _gotoNext = 217665i32;
                    } else {
                        _gotoNext = 217615i32;
                    };
                } else if (__value__ == (217665i32)) {
                    stdgo._internal.internal.cpu.Cpu__options._options[(_i_6 : stdgo.GoInt)].specified = true;
                    stdgo._internal.internal.cpu.Cpu__options._options[(_i_6 : stdgo.GoInt)].enable = _enable_4;
                    _gotoNext = 216865i32;
                } else if (__value__ == (217755i32)) {
                    _i_6 = 0i32;
                    _gotoNext = 217756i32;
                } else if (__value__ == (217756i32)) {
                    if (_i_6 < (stdgo._internal.internal.cpu.Cpu__options._options.length)) {
                        _gotoNext = 217634i32;
                    } else {
                        _gotoNext = 217761i32;
                    };
                } else if (__value__ == (217761i32)) {
                    stdgo.Go.print(("GODEBUG: unknown cpu feature \"" : stdgo.GoString), _key_2, ("\"\n" : stdgo.GoString));
                    _gotoNext = 216865i32;
                } else if (__value__ == (217820i32)) {
                    if ((0i32 : stdgo.GoInt) < (stdgo._internal.internal.cpu.Cpu__options._options.length)) {
                        _gotoNext = 218033i32;
                    } else {
                        _gotoNext = 218036i32;
                    };
                } else if (__value__ == (217846i32)) {
                    _o_8 = stdgo._internal.internal.cpu.Cpu__options._options[(_i_217832_7 : stdgo.GoInt)];
                    if (!_o_8.specified) {
                        _gotoNext = 217866i32;
                    } else {
                        _gotoNext = 217887i32;
                    };
                } else if (__value__ == (217866i32)) {
                    _i_217832_7++;
                    _gotoNext = 218034i32;
                } else if (__value__ == (217887i32)) {
                    if ((_o_8.enable && !_o_8.feature.value : Bool)) {
                        _gotoNext = 217914i32;
                    } else {
                        _gotoNext = 218011i32;
                    };
                } else if (__value__ == (217914i32)) {
                    stdgo.Go.print(("GODEBUG: can not enable \"" : stdgo.GoString), _o_8.name, ("\", missing CPU support\n" : stdgo.GoString));
                    _i_217832_7++;
                    _gotoNext = 218034i32;
                } else if (__value__ == (218011i32)) {
                    _o_8.feature.value = _o_8.enable;
                    _i_217832_7++;
                    _gotoNext = 218034i32;
                } else if (__value__ == (218033i32)) {
                    {
                        final __tmp__0 = 0i32;
                        final __tmp__1 = stdgo._internal.internal.cpu.Cpu__options._options[(0i32 : stdgo.GoInt)];
                        _i_217832_7 = @:binopAssign __tmp__0;
                        _o_8 = @:binopAssign __tmp__1;
                    };
                    _gotoNext = 218034i32;
                } else if (__value__ == (218034i32)) {
                    if (_i_217832_7 < (stdgo._internal.internal.cpu.Cpu__options._options.length)) {
                        _gotoNext = 217846i32;
                    } else {
                        _gotoNext = 218036i32;
                    };
                } else if (__value__ == (218036i32)) {
                    _gotoNext = -1i32;
                };
            };
        };
    }
