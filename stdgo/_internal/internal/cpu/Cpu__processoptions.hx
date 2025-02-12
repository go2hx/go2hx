package stdgo._internal.internal.cpu;
function _processOptions(_env:stdgo.GoString):Void {
        var _i_250802_0:stdgo.GoInt = (0 : stdgo.GoInt);
        var _i_250585:stdgo.GoInt = (0 : stdgo.GoInt);
        var _i_250467:stdgo.GoInt = (0 : stdgo.GoInt);
        var _i_249867:stdgo.GoInt = (0 : stdgo.GoInt);
        var _field_249853:stdgo.GoString = ("" : stdgo.GoString);
        var _fieldBreak = false;
        var _o_250797:stdgo._internal.internal.cpu.Cpu_t_option.T_option = ({} : stdgo._internal.internal.cpu.Cpu_t_option.T_option);
        var _enable_250227:Bool = false;
        var _value_250166:stdgo.GoString = ("" : stdgo.GoString);
        var _key_250161:stdgo.GoString = ("" : stdgo.GoString);
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    _gotoNext = 249827i32;
                } else if (__value__ == (249827i32)) {
                    var __blank__ = 0i32;
                    _fieldBreak = false;
                    _gotoNext = 249835i32;
                } else if (__value__ == (249835i32)) {
                    if (!_fieldBreak && (_env != (stdgo.Go.str() : stdgo.GoString))) {
                        _gotoNext = 249849i32;
                    } else {
                        _gotoNext = 250790i32;
                    };
                } else if (__value__ == (249849i32)) {
                    _field_249853 = (stdgo.Go.str() : stdgo.GoString)?.__copy__();
                    _i_249867 = stdgo._internal.internal.cpu.Cpu__indexbyte._indexByte(_env?.__copy__(), (44 : stdgo.GoUInt8));
                    if ((_i_249867 < (0 : stdgo.GoInt) : Bool)) {
                        _gotoNext = 249903i32;
                    } else {
                        _gotoNext = 249938i32;
                    };
                } else if (__value__ == (249903i32)) {
                    {
                        final __tmp__0 = _env?.__copy__();
                        final __tmp__1 = (stdgo.Go.str() : stdgo.GoString)?.__copy__();
                        _field_249853 = __tmp__0;
                        _env = __tmp__1;
                    };
                    _gotoNext = 249981i32;
                } else if (__value__ == (249938i32)) {
                    _gotoNext = 249938i32;
                    {
                        final __tmp__0 = (_env.__slice__(0, _i_249867) : stdgo.GoString)?.__copy__();
                        final __tmp__1 = (_env.__slice__((_i_249867 + (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        _field_249853 = __tmp__0;
                        _env = __tmp__1;
                    };
                    var __blank__ = 0i32;
                    _gotoNext = 249981i32;
                } else if (__value__ == (249981i32)) {
                    if ((((_field_249853.length) < (4 : stdgo.GoInt) : Bool) || ((_field_249853.__slice__(0, (4 : stdgo.GoInt)) : stdgo.GoString) != ("cpu." : stdgo.GoString)) : Bool)) {
                        _gotoNext = 250022i32;
                    } else {
                        _gotoNext = 250042i32;
                    };
                } else if (__value__ == (250022i32)) {
                    var __blank__ = 0i32;
                    _gotoNext = 249835i32;
                } else if (__value__ == (250042i32)) {
                    _i_249867 = stdgo._internal.internal.cpu.Cpu__indexbyte._indexByte(_field_249853?.__copy__(), (61 : stdgo.GoUInt8));
                    if ((_i_249867 < (0 : stdgo.GoInt) : Bool)) {
                        _gotoNext = 250079i32;
                    } else {
                        _gotoNext = 250161i32;
                    };
                } else if (__value__ == (250079i32)) {
                    stdgo.Go.print(("GODEBUG: no value specified for \"" : stdgo.GoString), _field_249853, ("\"\n" : stdgo.GoString));
                    var __blank__ = 0i32;
                    _gotoNext = 249835i32;
                } else if (__value__ == (250161i32)) {
                    {
                        final __tmp__0 = (_field_249853.__slice__((4 : stdgo.GoInt), _i_249867) : stdgo.GoString)?.__copy__();
                        final __tmp__1 = (_field_249853.__slice__((_i_249867 + (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        _key_250161 = __tmp__0;
                        _value_250166 = __tmp__1;
                    };
                    _gotoNext = 250241i32;
                } else if (__value__ == (250241i32)) {
                    {
                        final __value__ = _value_250166;
                        if (__value__ == (("on" : stdgo.GoString))) {
                            _gotoNext = 250258i32;
                        } else if (__value__ == (("off" : stdgo.GoString))) {
                            _gotoNext = 250288i32;
                        } else {
                            _gotoNext = 250320i32;
                        };
                    };
                } else if (__value__ == (250258i32)) {
                    _enable_250227 = true;
                    _gotoNext = 250442i32;
                } else if (__value__ == (250288i32)) {
                    _enable_250227 = false;
                    _gotoNext = 250442i32;
                } else if (__value__ == (250320i32)) {
                    stdgo.Go.print(("GODEBUG: value \"" : stdgo.GoString), _value_250166, ("\" not supported for cpu option \"" : stdgo.GoString), _key_250161, ("\"\n" : stdgo.GoString));
                    _gotoNext = 249835i32;
                } else if (__value__ == (250442i32)) {
                    if (_key_250161 == (("all" : stdgo.GoString))) {
                        _gotoNext = 250458i32;
                    } else {
                        _gotoNext = 250581i32;
                    };
                } else if (__value__ == (250458i32)) {
                    if ((0i32 : stdgo.GoInt) < (stdgo._internal.internal.cpu.Cpu__options._options.length)) {
                        _gotoNext = 250553i32;
                    } else {
                        _gotoNext = 250559i32;
                    };
                } else if (__value__ == (250486i32)) {
                    stdgo._internal.internal.cpu.Cpu__options._options[(_i_250467 : stdgo.GoInt)].specified = true;
                    stdgo._internal.internal.cpu.Cpu__options._options[(_i_250467 : stdgo.GoInt)].enable = _enable_250227;
                    _i_250467++;
                    _gotoNext = 250554i32;
                } else if (__value__ == (250553i32)) {
                    _i_250467 = 0i32;
                    _gotoNext = 250554i32;
                } else if (__value__ == (250554i32)) {
                    if (_i_250467 < (stdgo._internal.internal.cpu.Cpu__options._options.length)) {
                        _gotoNext = 250486i32;
                    } else {
                        _gotoNext = 250559i32;
                    };
                } else if (__value__ == (250559i32)) {
                    _gotoNext = 249835i32;
                } else if (__value__ == (250581i32)) {
                    if ((0i32 : stdgo.GoInt) < (stdgo._internal.internal.cpu.Cpu__options._options.length)) {
                        _gotoNext = 250725i32;
                    } else {
                        _gotoNext = 250731i32;
                    };
                } else if (__value__ == (250585i32)) {
                    _i_250585++;
                    _gotoNext = 250726i32;
                } else if (__value__ == (250604i32)) {
                    if (stdgo._internal.internal.cpu.Cpu__options._options[(_i_250585 : stdgo.GoInt)].name == (_key_250161)) {
                        _gotoNext = 250635i32;
                    } else {
                        _gotoNext = 250585i32;
                    };
                } else if (__value__ == (250635i32)) {
                    stdgo._internal.internal.cpu.Cpu__options._options[(_i_250585 : stdgo.GoInt)].specified = true;
                    stdgo._internal.internal.cpu.Cpu__options._options[(_i_250585 : stdgo.GoInt)].enable = _enable_250227;
                    _gotoNext = 249835i32;
                } else if (__value__ == (250725i32)) {
                    _i_250585 = 0i32;
                    _gotoNext = 250726i32;
                } else if (__value__ == (250726i32)) {
                    if (_i_250585 < (stdgo._internal.internal.cpu.Cpu__options._options.length)) {
                        _gotoNext = 250604i32;
                    } else {
                        _gotoNext = 250731i32;
                    };
                } else if (__value__ == (250731i32)) {
                    stdgo.Go.print(("GODEBUG: unknown cpu feature \"" : stdgo.GoString), _key_250161, ("\"\n" : stdgo.GoString));
                    _gotoNext = 249835i32;
                } else if (__value__ == (250790i32)) {
                    if ((0i32 : stdgo.GoInt) < (stdgo._internal.internal.cpu.Cpu__options._options.length)) {
                        _gotoNext = 251003i32;
                    } else {
                        _gotoNext = 251006i32;
                    };
                } else if (__value__ == (250816i32)) {
                    _o_250797 = stdgo._internal.internal.cpu.Cpu__options._options[(_i_250802_0 : stdgo.GoInt)];
                    if (!_o_250797.specified) {
                        _gotoNext = 250836i32;
                    } else {
                        _gotoNext = 250857i32;
                    };
                } else if (__value__ == (250836i32)) {
                    _i_250802_0++;
                    _gotoNext = 251004i32;
                } else if (__value__ == (250857i32)) {
                    if ((_o_250797.enable && !_o_250797.feature.value : Bool)) {
                        _gotoNext = 250884i32;
                    } else {
                        _gotoNext = 250981i32;
                    };
                } else if (__value__ == (250884i32)) {
                    stdgo.Go.print(("GODEBUG: can not enable \"" : stdgo.GoString), _o_250797.name, ("\", missing CPU support\n" : stdgo.GoString));
                    _i_250802_0++;
                    _gotoNext = 251004i32;
                } else if (__value__ == (250981i32)) {
                    _o_250797.feature.value = _o_250797.enable;
                    _i_250802_0++;
                    _gotoNext = 251004i32;
                } else if (__value__ == (251003i32)) {
                    {
                        final __tmp__0 = 0i32;
                        final __tmp__1 = stdgo._internal.internal.cpu.Cpu__options._options[(0i32 : stdgo.GoInt)];
                        _i_250802_0 = __tmp__0;
                        _o_250797 = __tmp__1;
                    };
                    _gotoNext = 251004i32;
                } else if (__value__ == (251004i32)) {
                    if (_i_250802_0 < (stdgo._internal.internal.cpu.Cpu__options._options.length)) {
                        _gotoNext = 250816i32;
                    } else {
                        _gotoNext = 251006i32;
                    };
                } else if (__value__ == (251006i32)) {
                    _gotoNext = -1i32;
                };
            };
        };
    }
