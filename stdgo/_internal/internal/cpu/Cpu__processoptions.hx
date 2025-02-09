package stdgo._internal.internal.cpu;
function _processOptions(_env:stdgo.GoString):Void {
        var _i_249938:stdgo.GoInt = (0 : stdgo.GoInt);
        var _enable_249580:Bool = false;
        var _i_249220:stdgo.GoInt = (0 : stdgo.GoInt);
        var _i_250155_0:stdgo.GoInt = (0 : stdgo.GoInt);
        var _i_249820:stdgo.GoInt = (0 : stdgo.GoInt);
        var _value_249519:stdgo.GoString = ("" : stdgo.GoString);
        var _key_249514:stdgo.GoString = ("" : stdgo.GoString);
        var _field_249206:stdgo.GoString = ("" : stdgo.GoString);
        var _fieldBreak = false;
        var _o_250150:stdgo._internal.internal.cpu.Cpu_t_option.T_option = ({} : stdgo._internal.internal.cpu.Cpu_t_option.T_option);
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    _gotoNext = 249180i32;
                } else if (__value__ == (249180i32)) {
                    var __blank__ = 0i32;
                    _fieldBreak = false;
                    _gotoNext = 249188i32;
                } else if (__value__ == (249188i32)) {
                    if (!_fieldBreak && (_env != (stdgo.Go.str() : stdgo.GoString))) {
                        _gotoNext = 249202i32;
                    } else {
                        _gotoNext = 250143i32;
                    };
                } else if (__value__ == (249202i32)) {
                    _field_249206 = (stdgo.Go.str() : stdgo.GoString)?.__copy__();
                    _i_249220 = stdgo._internal.internal.cpu.Cpu__indexbyte._indexByte(_env?.__copy__(), (44 : stdgo.GoUInt8));
                    if ((_i_249220 < (0 : stdgo.GoInt) : Bool)) {
                        _gotoNext = 249256i32;
                    } else {
                        _gotoNext = 249291i32;
                    };
                } else if (__value__ == (249256i32)) {
                    {
                        final __tmp__0 = _env?.__copy__();
                        final __tmp__1 = (stdgo.Go.str() : stdgo.GoString)?.__copy__();
                        _field_249206 = __tmp__0;
                        _env = __tmp__1;
                    };
                    _gotoNext = 249334i32;
                } else if (__value__ == (249291i32)) {
                    _gotoNext = 249291i32;
                    {
                        final __tmp__0 = (_env.__slice__(0, _i_249220) : stdgo.GoString)?.__copy__();
                        final __tmp__1 = (_env.__slice__((_i_249220 + (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        _field_249206 = __tmp__0;
                        _env = __tmp__1;
                    };
                    var __blank__ = 0i32;
                    _gotoNext = 249334i32;
                } else if (__value__ == (249334i32)) {
                    if ((((_field_249206.length) < (4 : stdgo.GoInt) : Bool) || ((_field_249206.__slice__(0, (4 : stdgo.GoInt)) : stdgo.GoString) != ("cpu." : stdgo.GoString)) : Bool)) {
                        _gotoNext = 249375i32;
                    } else {
                        _gotoNext = 249395i32;
                    };
                } else if (__value__ == (249375i32)) {
                    var __blank__ = 0i32;
                    _gotoNext = 249188i32;
                } else if (__value__ == (249395i32)) {
                    _i_249220 = stdgo._internal.internal.cpu.Cpu__indexbyte._indexByte(_field_249206?.__copy__(), (61 : stdgo.GoUInt8));
                    if ((_i_249220 < (0 : stdgo.GoInt) : Bool)) {
                        _gotoNext = 249432i32;
                    } else {
                        _gotoNext = 249514i32;
                    };
                } else if (__value__ == (249432i32)) {
                    stdgo.Go.print(("GODEBUG: no value specified for \"" : stdgo.GoString), _field_249206, ("\"\n" : stdgo.GoString));
                    var __blank__ = 0i32;
                    _gotoNext = 249188i32;
                } else if (__value__ == (249514i32)) {
                    {
                        final __tmp__0 = (_field_249206.__slice__((4 : stdgo.GoInt), _i_249220) : stdgo.GoString)?.__copy__();
                        final __tmp__1 = (_field_249206.__slice__((_i_249220 + (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        _key_249514 = __tmp__0;
                        _value_249519 = __tmp__1;
                    };
                    _gotoNext = 249594i32;
                } else if (__value__ == (249594i32)) {
                    {
                        final __value__ = _value_249519;
                        if (__value__ == (("on" : stdgo.GoString))) {
                            _gotoNext = 249611i32;
                        } else if (__value__ == (("off" : stdgo.GoString))) {
                            _gotoNext = 249641i32;
                        } else {
                            _gotoNext = 249673i32;
                        };
                    };
                } else if (__value__ == (249611i32)) {
                    _enable_249580 = true;
                    _gotoNext = 249795i32;
                } else if (__value__ == (249641i32)) {
                    _enable_249580 = false;
                    _gotoNext = 249795i32;
                } else if (__value__ == (249673i32)) {
                    stdgo.Go.print(("GODEBUG: value \"" : stdgo.GoString), _value_249519, ("\" not supported for cpu option \"" : stdgo.GoString), _key_249514, ("\"\n" : stdgo.GoString));
                    _gotoNext = 249188i32;
                } else if (__value__ == (249795i32)) {
                    if (_key_249514 == (("all" : stdgo.GoString))) {
                        _gotoNext = 249811i32;
                    } else {
                        _gotoNext = 249934i32;
                    };
                } else if (__value__ == (249811i32)) {
                    if ((0i32 : stdgo.GoInt) < (stdgo._internal.internal.cpu.Cpu__options._options.length)) {
                        _gotoNext = 249906i32;
                    } else {
                        _gotoNext = 249912i32;
                    };
                } else if (__value__ == (249839i32)) {
                    stdgo._internal.internal.cpu.Cpu__options._options[(_i_249820 : stdgo.GoInt)].specified = true;
                    stdgo._internal.internal.cpu.Cpu__options._options[(_i_249820 : stdgo.GoInt)].enable = _enable_249580;
                    _i_249820++;
                    _gotoNext = 249907i32;
                } else if (__value__ == (249906i32)) {
                    _i_249820 = 0i32;
                    _gotoNext = 249907i32;
                } else if (__value__ == (249907i32)) {
                    if (_i_249820 < (stdgo._internal.internal.cpu.Cpu__options._options.length)) {
                        _gotoNext = 249839i32;
                    } else {
                        _gotoNext = 249912i32;
                    };
                } else if (__value__ == (249912i32)) {
                    _gotoNext = 249188i32;
                } else if (__value__ == (249934i32)) {
                    if ((0i32 : stdgo.GoInt) < (stdgo._internal.internal.cpu.Cpu__options._options.length)) {
                        _gotoNext = 250078i32;
                    } else {
                        _gotoNext = 250084i32;
                    };
                } else if (__value__ == (249938i32)) {
                    _i_249938++;
                    _gotoNext = 250079i32;
                } else if (__value__ == (249957i32)) {
                    if (stdgo._internal.internal.cpu.Cpu__options._options[(_i_249938 : stdgo.GoInt)].name == (_key_249514)) {
                        _gotoNext = 249988i32;
                    } else {
                        _gotoNext = 249938i32;
                    };
                } else if (__value__ == (249988i32)) {
                    stdgo._internal.internal.cpu.Cpu__options._options[(_i_249938 : stdgo.GoInt)].specified = true;
                    stdgo._internal.internal.cpu.Cpu__options._options[(_i_249938 : stdgo.GoInt)].enable = _enable_249580;
                    _gotoNext = 249188i32;
                } else if (__value__ == (250078i32)) {
                    _i_249938 = 0i32;
                    _gotoNext = 250079i32;
                } else if (__value__ == (250079i32)) {
                    if (_i_249938 < (stdgo._internal.internal.cpu.Cpu__options._options.length)) {
                        _gotoNext = 249957i32;
                    } else {
                        _gotoNext = 250084i32;
                    };
                } else if (__value__ == (250084i32)) {
                    stdgo.Go.print(("GODEBUG: unknown cpu feature \"" : stdgo.GoString), _key_249514, ("\"\n" : stdgo.GoString));
                    _gotoNext = 249188i32;
                } else if (__value__ == (250143i32)) {
                    if ((0i32 : stdgo.GoInt) < (stdgo._internal.internal.cpu.Cpu__options._options.length)) {
                        _gotoNext = 250356i32;
                    } else {
                        _gotoNext = 250359i32;
                    };
                } else if (__value__ == (250169i32)) {
                    _o_250150 = stdgo._internal.internal.cpu.Cpu__options._options[(_i_250155_0 : stdgo.GoInt)];
                    if (!_o_250150.specified) {
                        _gotoNext = 250189i32;
                    } else {
                        _gotoNext = 250210i32;
                    };
                } else if (__value__ == (250189i32)) {
                    _i_250155_0++;
                    _gotoNext = 250357i32;
                } else if (__value__ == (250210i32)) {
                    if ((_o_250150.enable && !_o_250150.feature.value : Bool)) {
                        _gotoNext = 250237i32;
                    } else {
                        _gotoNext = 250334i32;
                    };
                } else if (__value__ == (250237i32)) {
                    stdgo.Go.print(("GODEBUG: can not enable \"" : stdgo.GoString), _o_250150.name, ("\", missing CPU support\n" : stdgo.GoString));
                    _i_250155_0++;
                    _gotoNext = 250357i32;
                } else if (__value__ == (250334i32)) {
                    _o_250150.feature.value = _o_250150.enable;
                    _i_250155_0++;
                    _gotoNext = 250357i32;
                } else if (__value__ == (250356i32)) {
                    {
                        final __tmp__0 = 0i32;
                        final __tmp__1 = stdgo._internal.internal.cpu.Cpu__options._options[(0i32 : stdgo.GoInt)];
                        _i_250155_0 = __tmp__0;
                        _o_250150 = __tmp__1;
                    };
                    _gotoNext = 250357i32;
                } else if (__value__ == (250357i32)) {
                    if (_i_250155_0 < (stdgo._internal.internal.cpu.Cpu__options._options.length)) {
                        _gotoNext = 250169i32;
                    } else {
                        _gotoNext = 250359i32;
                    };
                } else if (__value__ == (250359i32)) {
                    _gotoNext = -1i32;
                };
            };
        };
    }
