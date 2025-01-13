package stdgo._internal.internal.cpu;
function _processOptions(_env:stdgo.GoString):Void {
        var _i_262724_0:stdgo.GoInt = (0 : stdgo.GoInt);
        var _enable_262149:Bool = false;
        var _value_262088:stdgo.GoString = ("" : stdgo.GoString);
        var _key_262083:stdgo.GoString = ("" : stdgo.GoString);
        var _i_261789:stdgo.GoInt = (0 : stdgo.GoInt);
        var _o_262719:stdgo._internal.internal.cpu.Cpu_T_option.T_option = ({} : stdgo._internal.internal.cpu.Cpu_T_option.T_option);
        var _i_262507:stdgo.GoInt = (0 : stdgo.GoInt);
        var _i_262389:stdgo.GoInt = (0 : stdgo.GoInt);
        var _field_261775:stdgo.GoString = ("" : stdgo.GoString);
        var _fieldBreak = false;
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    _gotoNext = 261749i32;
                } else if (__value__ == (261749i32)) {
                    var __blank__ = 0i32;
                    _fieldBreak = false;
                    _gotoNext = 261757i32;
                } else if (__value__ == (261757i32)) {
                    if (!_fieldBreak && (_env != stdgo.Go.str())) {
                        _gotoNext = 261771i32;
                    } else {
                        _gotoNext = 262712i32;
                    };
                } else if (__value__ == (261771i32)) {
                    _field_261775 = stdgo.Go.str()?.__copy__();
                    _i_261789 = stdgo._internal.internal.cpu.Cpu__indexByte._indexByte(_env?.__copy__(), (44 : stdgo.GoUInt8));
                    if ((_i_261789 < (0 : stdgo.GoInt) : Bool)) {
                        _gotoNext = 261825i32;
                    } else {
                        _gotoNext = 261860i32;
                    };
                } else if (__value__ == (261825i32)) {
                    {
                        final __tmp__0 = _env?.__copy__();
                        final __tmp__1 = stdgo.Go.str()?.__copy__();
                        _field_261775 = __tmp__0;
                        _env = __tmp__1;
                    };
                    _gotoNext = 261903i32;
                } else if (__value__ == (261860i32)) {
                    _gotoNext = 261860i32;
                    {
                        final __tmp__0 = (_env.__slice__(0, _i_261789) : stdgo.GoString)?.__copy__();
                        final __tmp__1 = (_env.__slice__((_i_261789 + (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        _field_261775 = __tmp__0;
                        _env = __tmp__1;
                    };
                    var __blank__ = 0i32;
                    _gotoNext = 261903i32;
                } else if (__value__ == (261903i32)) {
                    if ((((_field_261775.length) < (4 : stdgo.GoInt) : Bool) || ((_field_261775.__slice__(0, (4 : stdgo.GoInt)) : stdgo.GoString) != ("cpu." : stdgo.GoString)) : Bool)) {
                        _gotoNext = 261944i32;
                    } else {
                        _gotoNext = 261964i32;
                    };
                } else if (__value__ == (261944i32)) {
                    var __blank__ = 0i32;
                    _gotoNext = 261757i32;
                } else if (__value__ == (261964i32)) {
                    _i_261789 = stdgo._internal.internal.cpu.Cpu__indexByte._indexByte(_field_261775?.__copy__(), (61 : stdgo.GoUInt8));
                    if ((_i_261789 < (0 : stdgo.GoInt) : Bool)) {
                        _gotoNext = 262001i32;
                    } else {
                        _gotoNext = 262083i32;
                    };
                } else if (__value__ == (262001i32)) {
                    stdgo.Go.print(("GODEBUG: no value specified for \"" : stdgo.GoString), _field_261775, ("\"\n" : stdgo.GoString));
                    var __blank__ = 0i32;
                    _gotoNext = 261757i32;
                } else if (__value__ == (262083i32)) {
                    {
                        final __tmp__0 = (_field_261775.__slice__((4 : stdgo.GoInt), _i_261789) : stdgo.GoString)?.__copy__();
                        final __tmp__1 = (_field_261775.__slice__((_i_261789 + (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        _key_262083 = __tmp__0;
                        _value_262088 = __tmp__1;
                    };
                    _gotoNext = 262163i32;
                } else if (__value__ == (262163i32)) {
                    {
                        final __value__ = _value_262088;
                        if (__value__ == (("on" : stdgo.GoString))) {
                            _gotoNext = 262180i32;
                        } else if (__value__ == (("off" : stdgo.GoString))) {
                            _gotoNext = 262210i32;
                        } else {
                            _gotoNext = 262242i32;
                        };
                    };
                } else if (__value__ == (262180i32)) {
                    _enable_262149 = true;
                    _gotoNext = 262364i32;
                } else if (__value__ == (262210i32)) {
                    _enable_262149 = false;
                    _gotoNext = 262364i32;
                } else if (__value__ == (262242i32)) {
                    stdgo.Go.print(("GODEBUG: value \"" : stdgo.GoString), _value_262088, ("\" not supported for cpu option \"" : stdgo.GoString), _key_262083, ("\"\n" : stdgo.GoString));
                    _gotoNext = 261757i32;
                } else if (__value__ == (262364i32)) {
                    if (_key_262083 == (("all" : stdgo.GoString))) {
                        _gotoNext = 262380i32;
                    } else {
                        _gotoNext = 262503i32;
                    };
                } else if (__value__ == (262380i32)) {
                    if ((0i32 : stdgo.GoInt) < (stdgo._internal.internal.cpu.Cpu__options._options.length)) {
                        _gotoNext = 262475i32;
                    } else {
                        _gotoNext = 262481i32;
                    };
                } else if (__value__ == (262408i32)) {
                    stdgo._internal.internal.cpu.Cpu__options._options[(_i_262389 : stdgo.GoInt)].specified = true;
                    stdgo._internal.internal.cpu.Cpu__options._options[(_i_262389 : stdgo.GoInt)].enable = _enable_262149;
                    _i_262389++;
                    _gotoNext = 262476i32;
                } else if (__value__ == (262475i32)) {
                    _i_262389 = 0i32;
                    _gotoNext = 262476i32;
                } else if (__value__ == (262476i32)) {
                    if (_i_262389 < (stdgo._internal.internal.cpu.Cpu__options._options.length)) {
                        _gotoNext = 262408i32;
                    } else {
                        _gotoNext = 262481i32;
                    };
                } else if (__value__ == (262481i32)) {
                    _gotoNext = 261757i32;
                } else if (__value__ == (262503i32)) {
                    if ((0i32 : stdgo.GoInt) < (stdgo._internal.internal.cpu.Cpu__options._options.length)) {
                        _gotoNext = 262647i32;
                    } else {
                        _gotoNext = 262653i32;
                    };
                } else if (__value__ == (262507i32)) {
                    _i_262507++;
                    _gotoNext = 262648i32;
                } else if (__value__ == (262526i32)) {
                    if (stdgo._internal.internal.cpu.Cpu__options._options[(_i_262507 : stdgo.GoInt)].name == (_key_262083)) {
                        _gotoNext = 262557i32;
                    } else {
                        _gotoNext = 262507i32;
                    };
                } else if (__value__ == (262557i32)) {
                    stdgo._internal.internal.cpu.Cpu__options._options[(_i_262507 : stdgo.GoInt)].specified = true;
                    stdgo._internal.internal.cpu.Cpu__options._options[(_i_262507 : stdgo.GoInt)].enable = _enable_262149;
                    _gotoNext = 261757i32;
                } else if (__value__ == (262647i32)) {
                    _i_262507 = 0i32;
                    _gotoNext = 262648i32;
                } else if (__value__ == (262648i32)) {
                    if (_i_262507 < (stdgo._internal.internal.cpu.Cpu__options._options.length)) {
                        _gotoNext = 262526i32;
                    } else {
                        _gotoNext = 262653i32;
                    };
                } else if (__value__ == (262653i32)) {
                    stdgo.Go.print(("GODEBUG: unknown cpu feature \"" : stdgo.GoString), _key_262083, ("\"\n" : stdgo.GoString));
                    _gotoNext = 261757i32;
                } else if (__value__ == (262712i32)) {
                    if ((0i32 : stdgo.GoInt) < (stdgo._internal.internal.cpu.Cpu__options._options.length)) {
                        _gotoNext = 262925i32;
                    } else {
                        _gotoNext = 262928i32;
                    };
                } else if (__value__ == (262738i32)) {
                    _o_262719 = stdgo._internal.internal.cpu.Cpu__options._options[(_i_262724_0 : stdgo.GoInt)];
                    if (!_o_262719.specified) {
                        _gotoNext = 262758i32;
                    } else {
                        _gotoNext = 262779i32;
                    };
                } else if (__value__ == (262758i32)) {
                    _i_262724_0++;
                    _gotoNext = 262926i32;
                } else if (__value__ == (262779i32)) {
                    if ((_o_262719.enable && !_o_262719.feature.value : Bool)) {
                        _gotoNext = 262806i32;
                    } else {
                        _gotoNext = 262903i32;
                    };
                } else if (__value__ == (262806i32)) {
                    stdgo.Go.print(("GODEBUG: can not enable \"" : stdgo.GoString), _o_262719.name, ("\", missing CPU support\n" : stdgo.GoString));
                    _i_262724_0++;
                    _gotoNext = 262926i32;
                } else if (__value__ == (262903i32)) {
                    _o_262719.feature.value = _o_262719.enable;
                    _i_262724_0++;
                    _gotoNext = 262926i32;
                } else if (__value__ == (262925i32)) {
                    {
                        final __tmp__0 = 0i32;
                        final __tmp__1 = stdgo._internal.internal.cpu.Cpu__options._options[(0i32 : stdgo.GoInt)];
                        _i_262724_0 = __tmp__0;
                        _o_262719 = __tmp__1;
                    };
                    _gotoNext = 262926i32;
                } else if (__value__ == (262926i32)) {
                    if (_i_262724_0 < (stdgo._internal.internal.cpu.Cpu__options._options.length)) {
                        _gotoNext = 262738i32;
                    } else {
                        _gotoNext = 262928i32;
                    };
                } else if (__value__ == (262928i32)) {
                    _gotoNext = -1i32;
                };
            };
        };
    }
