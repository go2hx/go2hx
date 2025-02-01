package stdgo._internal.internal.cpu;
function _processOptions(_env:stdgo.GoString):Void {
        var _i_225763:stdgo.GoInt = (0 : stdgo.GoInt);
        var _enable_225523:Bool = false;
        var _key_225457:stdgo.GoString = ("" : stdgo.GoString);
        var _fieldBreak = false;
        var _i_226098_0:stdgo.GoInt = (0 : stdgo.GoInt);
        var _i_225881:stdgo.GoInt = (0 : stdgo.GoInt);
        var _value_225462:stdgo.GoString = ("" : stdgo.GoString);
        var _i_225163:stdgo.GoInt = (0 : stdgo.GoInt);
        var _field_225149:stdgo.GoString = ("" : stdgo.GoString);
        var _o_226093:stdgo._internal.internal.cpu.Cpu_T_option.T_option = ({} : stdgo._internal.internal.cpu.Cpu_T_option.T_option);
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    _gotoNext = 225123i32;
                } else if (__value__ == (225123i32)) {
                    var __blank__ = 0i32;
                    _fieldBreak = false;
                    _gotoNext = 225131i32;
                } else if (__value__ == (225131i32)) {
                    if (!_fieldBreak && (_env != stdgo.Go.str())) {
                        _gotoNext = 225145i32;
                    } else {
                        _gotoNext = 226086i32;
                    };
                } else if (__value__ == (225145i32)) {
                    _field_225149 = stdgo.Go.str()?.__copy__();
                    _i_225163 = stdgo._internal.internal.cpu.Cpu__indexByte._indexByte(_env?.__copy__(), (44 : stdgo.GoUInt8));
                    if ((_i_225163 < (0 : stdgo.GoInt) : Bool)) {
                        _gotoNext = 225199i32;
                    } else {
                        _gotoNext = 225234i32;
                    };
                } else if (__value__ == (225199i32)) {
                    {
                        final __tmp__0 = _env?.__copy__();
                        final __tmp__1 = stdgo.Go.str()?.__copy__();
                        _field_225149 = __tmp__0;
                        _env = __tmp__1;
                    };
                    _gotoNext = 225277i32;
                } else if (__value__ == (225234i32)) {
                    _gotoNext = 225234i32;
                    {
                        final __tmp__0 = (_env.__slice__(0, _i_225163) : stdgo.GoString)?.__copy__();
                        final __tmp__1 = (_env.__slice__((_i_225163 + (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        _field_225149 = __tmp__0;
                        _env = __tmp__1;
                    };
                    var __blank__ = 0i32;
                    _gotoNext = 225277i32;
                } else if (__value__ == (225277i32)) {
                    if ((((_field_225149.length) < (4 : stdgo.GoInt) : Bool) || ((_field_225149.__slice__(0, (4 : stdgo.GoInt)) : stdgo.GoString) != ("cpu." : stdgo.GoString)) : Bool)) {
                        _gotoNext = 225318i32;
                    } else {
                        _gotoNext = 225338i32;
                    };
                } else if (__value__ == (225318i32)) {
                    var __blank__ = 0i32;
                    _gotoNext = 225131i32;
                } else if (__value__ == (225338i32)) {
                    _i_225163 = stdgo._internal.internal.cpu.Cpu__indexByte._indexByte(_field_225149?.__copy__(), (61 : stdgo.GoUInt8));
                    if ((_i_225163 < (0 : stdgo.GoInt) : Bool)) {
                        _gotoNext = 225375i32;
                    } else {
                        _gotoNext = 225457i32;
                    };
                } else if (__value__ == (225375i32)) {
                    stdgo.Go.print(("GODEBUG: no value specified for \"" : stdgo.GoString), _field_225149, ("\"\n" : stdgo.GoString));
                    var __blank__ = 0i32;
                    _gotoNext = 225131i32;
                } else if (__value__ == (225457i32)) {
                    {
                        final __tmp__0 = (_field_225149.__slice__((4 : stdgo.GoInt), _i_225163) : stdgo.GoString)?.__copy__();
                        final __tmp__1 = (_field_225149.__slice__((_i_225163 + (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        _key_225457 = __tmp__0;
                        _value_225462 = __tmp__1;
                    };
                    _gotoNext = 225537i32;
                } else if (__value__ == (225537i32)) {
                    {
                        final __value__ = _value_225462;
                        if (__value__ == (("on" : stdgo.GoString))) {
                            _gotoNext = 225554i32;
                        } else if (__value__ == (("off" : stdgo.GoString))) {
                            _gotoNext = 225584i32;
                        } else {
                            _gotoNext = 225616i32;
                        };
                    };
                } else if (__value__ == (225554i32)) {
                    _enable_225523 = true;
                    _gotoNext = 225738i32;
                } else if (__value__ == (225584i32)) {
                    _enable_225523 = false;
                    _gotoNext = 225738i32;
                } else if (__value__ == (225616i32)) {
                    stdgo.Go.print(("GODEBUG: value \"" : stdgo.GoString), _value_225462, ("\" not supported for cpu option \"" : stdgo.GoString), _key_225457, ("\"\n" : stdgo.GoString));
                    _gotoNext = 225131i32;
                } else if (__value__ == (225738i32)) {
                    if (_key_225457 == (("all" : stdgo.GoString))) {
                        _gotoNext = 225754i32;
                    } else {
                        _gotoNext = 225877i32;
                    };
                } else if (__value__ == (225754i32)) {
                    if ((0i32 : stdgo.GoInt) < (stdgo._internal.internal.cpu.Cpu__options._options.length)) {
                        _gotoNext = 225849i32;
                    } else {
                        _gotoNext = 225855i32;
                    };
                } else if (__value__ == (225782i32)) {
                    stdgo._internal.internal.cpu.Cpu__options._options[(_i_225763 : stdgo.GoInt)].specified = true;
                    stdgo._internal.internal.cpu.Cpu__options._options[(_i_225763 : stdgo.GoInt)].enable = _enable_225523;
                    _i_225763++;
                    _gotoNext = 225850i32;
                } else if (__value__ == (225849i32)) {
                    _i_225763 = 0i32;
                    _gotoNext = 225850i32;
                } else if (__value__ == (225850i32)) {
                    if (_i_225763 < (stdgo._internal.internal.cpu.Cpu__options._options.length)) {
                        _gotoNext = 225782i32;
                    } else {
                        _gotoNext = 225855i32;
                    };
                } else if (__value__ == (225855i32)) {
                    _gotoNext = 225131i32;
                } else if (__value__ == (225877i32)) {
                    if ((0i32 : stdgo.GoInt) < (stdgo._internal.internal.cpu.Cpu__options._options.length)) {
                        _gotoNext = 226021i32;
                    } else {
                        _gotoNext = 226027i32;
                    };
                } else if (__value__ == (225881i32)) {
                    _i_225881++;
                    _gotoNext = 226022i32;
                } else if (__value__ == (225900i32)) {
                    if (stdgo._internal.internal.cpu.Cpu__options._options[(_i_225881 : stdgo.GoInt)].name == (_key_225457)) {
                        _gotoNext = 225931i32;
                    } else {
                        _gotoNext = 225881i32;
                    };
                } else if (__value__ == (225931i32)) {
                    stdgo._internal.internal.cpu.Cpu__options._options[(_i_225881 : stdgo.GoInt)].specified = true;
                    stdgo._internal.internal.cpu.Cpu__options._options[(_i_225881 : stdgo.GoInt)].enable = _enable_225523;
                    _gotoNext = 225131i32;
                } else if (__value__ == (226021i32)) {
                    _i_225881 = 0i32;
                    _gotoNext = 226022i32;
                } else if (__value__ == (226022i32)) {
                    if (_i_225881 < (stdgo._internal.internal.cpu.Cpu__options._options.length)) {
                        _gotoNext = 225900i32;
                    } else {
                        _gotoNext = 226027i32;
                    };
                } else if (__value__ == (226027i32)) {
                    stdgo.Go.print(("GODEBUG: unknown cpu feature \"" : stdgo.GoString), _key_225457, ("\"\n" : stdgo.GoString));
                    _gotoNext = 225131i32;
                } else if (__value__ == (226086i32)) {
                    if ((0i32 : stdgo.GoInt) < (stdgo._internal.internal.cpu.Cpu__options._options.length)) {
                        _gotoNext = 226299i32;
                    } else {
                        _gotoNext = 226302i32;
                    };
                } else if (__value__ == (226112i32)) {
                    _o_226093 = stdgo._internal.internal.cpu.Cpu__options._options[(_i_226098_0 : stdgo.GoInt)];
                    if (!_o_226093.specified) {
                        _gotoNext = 226132i32;
                    } else {
                        _gotoNext = 226153i32;
                    };
                } else if (__value__ == (226132i32)) {
                    _i_226098_0++;
                    _gotoNext = 226300i32;
                } else if (__value__ == (226153i32)) {
                    if ((_o_226093.enable && !_o_226093.feature.value : Bool)) {
                        _gotoNext = 226180i32;
                    } else {
                        _gotoNext = 226277i32;
                    };
                } else if (__value__ == (226180i32)) {
                    stdgo.Go.print(("GODEBUG: can not enable \"" : stdgo.GoString), _o_226093.name, ("\", missing CPU support\n" : stdgo.GoString));
                    _i_226098_0++;
                    _gotoNext = 226300i32;
                } else if (__value__ == (226277i32)) {
                    _o_226093.feature.value = _o_226093.enable;
                    _i_226098_0++;
                    _gotoNext = 226300i32;
                } else if (__value__ == (226299i32)) {
                    {
                        final __tmp__0 = 0i32;
                        final __tmp__1 = stdgo._internal.internal.cpu.Cpu__options._options[(0i32 : stdgo.GoInt)];
                        _i_226098_0 = __tmp__0;
                        _o_226093 = __tmp__1;
                    };
                    _gotoNext = 226300i32;
                } else if (__value__ == (226300i32)) {
                    if (_i_226098_0 < (stdgo._internal.internal.cpu.Cpu__options._options.length)) {
                        _gotoNext = 226112i32;
                    } else {
                        _gotoNext = 226302i32;
                    };
                } else if (__value__ == (226302i32)) {
                    _gotoNext = -1i32;
                };
            };
        };
    }
