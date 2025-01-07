package stdgo._internal.internal.cpu;
function _processOptions(_env:stdgo.GoString):Void {
        var _i_39210_0:stdgo.GoInt = (0 : stdgo.GoInt);
        var _i_38993:stdgo.GoInt = (0 : stdgo.GoInt);
        var _key_38569:stdgo.GoString = ("" : stdgo.GoString);
        var _i_38275:stdgo.GoInt = (0 : stdgo.GoInt);
        var _field_38261:stdgo.GoString = ("" : stdgo.GoString);
        var _o_39205:stdgo._internal.internal.cpu.Cpu_T_option.T_option = ({} : stdgo._internal.internal.cpu.Cpu_T_option.T_option);
        var _i_38875:stdgo.GoInt = (0 : stdgo.GoInt);
        var _enable_38635:Bool = false;
        var _value_38574:stdgo.GoString = ("" : stdgo.GoString);
        var _fieldBreak = false;
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    _gotoNext = 38235i32;
                } else if (__value__ == (38235i32)) {
                    var __blank__ = 0i32;
                    _fieldBreak = false;
                    _gotoNext = 38243i32;
                } else if (__value__ == (38243i32)) {
                    if (!_fieldBreak && (_env != stdgo.Go.str())) {
                        _gotoNext = 38257i32;
                    } else {
                        _gotoNext = 39198i32;
                    };
                } else if (__value__ == (38257i32)) {
                    _field_38261 = stdgo.Go.str()?.__copy__();
                    _i_38275 = stdgo._internal.internal.cpu.Cpu__indexByte._indexByte(_env?.__copy__(), (44 : stdgo.GoUInt8));
                    if ((_i_38275 < (0 : stdgo.GoInt) : Bool)) {
                        _gotoNext = 38311i32;
                    } else {
                        _gotoNext = 38346i32;
                    };
                } else if (__value__ == (38311i32)) {
                    {
                        final __tmp__0 = _env?.__copy__();
                        final __tmp__1 = stdgo.Go.str()?.__copy__();
                        _field_38261 = __tmp__0;
                        _env = __tmp__1;
                    };
                    _gotoNext = 38389i32;
                } else if (__value__ == (38346i32)) {
                    _gotoNext = 38346i32;
                    {
                        final __tmp__0 = (_env.__slice__(0, _i_38275) : stdgo.GoString)?.__copy__();
                        final __tmp__1 = (_env.__slice__((_i_38275 + (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        _field_38261 = __tmp__0;
                        _env = __tmp__1;
                    };
                    var __blank__ = 0i32;
                    _gotoNext = 38389i32;
                } else if (__value__ == (38389i32)) {
                    if ((((_field_38261.length) < (4 : stdgo.GoInt) : Bool) || ((_field_38261.__slice__(0, (4 : stdgo.GoInt)) : stdgo.GoString) != ("cpu." : stdgo.GoString)) : Bool)) {
                        _gotoNext = 38430i32;
                    } else {
                        _gotoNext = 38450i32;
                    };
                } else if (__value__ == (38430i32)) {
                    var __blank__ = 0i32;
                    _gotoNext = 38243i32;
                } else if (__value__ == (38450i32)) {
                    _i_38275 = stdgo._internal.internal.cpu.Cpu__indexByte._indexByte(_field_38261?.__copy__(), (61 : stdgo.GoUInt8));
                    if ((_i_38275 < (0 : stdgo.GoInt) : Bool)) {
                        _gotoNext = 38487i32;
                    } else {
                        _gotoNext = 38569i32;
                    };
                } else if (__value__ == (38487i32)) {
                    stdgo.Go.print(("GODEBUG: no value specified for \"" : stdgo.GoString), _field_38261, ("\"\n" : stdgo.GoString));
                    var __blank__ = 0i32;
                    _gotoNext = 38243i32;
                } else if (__value__ == (38569i32)) {
                    {
                        final __tmp__0 = (_field_38261.__slice__((4 : stdgo.GoInt), _i_38275) : stdgo.GoString)?.__copy__();
                        final __tmp__1 = (_field_38261.__slice__((_i_38275 + (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        _key_38569 = __tmp__0;
                        _value_38574 = __tmp__1;
                    };
                    _gotoNext = 38649i32;
                } else if (__value__ == (38649i32)) {
                    {
                        final __value__ = _value_38574;
                        if (__value__ == (("on" : stdgo.GoString))) {
                            _gotoNext = 38666i32;
                        } else if (__value__ == (("off" : stdgo.GoString))) {
                            _gotoNext = 38696i32;
                        } else {
                            _gotoNext = 38728i32;
                        };
                    };
                } else if (__value__ == (38666i32)) {
                    _enable_38635 = true;
                    _gotoNext = 38850i32;
                } else if (__value__ == (38696i32)) {
                    _enable_38635 = false;
                    _gotoNext = 38850i32;
                } else if (__value__ == (38728i32)) {
                    stdgo.Go.print(("GODEBUG: value \"" : stdgo.GoString), _value_38574, ("\" not supported for cpu option \"" : stdgo.GoString), _key_38569, ("\"\n" : stdgo.GoString));
                    _gotoNext = 38243i32;
                } else if (__value__ == (38850i32)) {
                    if (_key_38569 == (("all" : stdgo.GoString))) {
                        _gotoNext = 38866i32;
                    } else {
                        _gotoNext = 38989i32;
                    };
                } else if (__value__ == (38866i32)) {
                    if ((0i32 : stdgo.GoInt) < (stdgo._internal.internal.cpu.Cpu__options._options.length)) {
                        _gotoNext = 38961i32;
                    } else {
                        _gotoNext = 38967i32;
                    };
                } else if (__value__ == (38894i32)) {
                    stdgo._internal.internal.cpu.Cpu__options._options[(_i_38875 : stdgo.GoInt)].specified = true;
                    stdgo._internal.internal.cpu.Cpu__options._options[(_i_38875 : stdgo.GoInt)].enable = _enable_38635;
                    _i_38875++;
                    _gotoNext = 38962i32;
                } else if (__value__ == (38961i32)) {
                    _i_38875 = 0i32;
                    _gotoNext = 38962i32;
                } else if (__value__ == (38962i32)) {
                    if (_i_38875 < (stdgo._internal.internal.cpu.Cpu__options._options.length)) {
                        _gotoNext = 38894i32;
                    } else {
                        _gotoNext = 38967i32;
                    };
                } else if (__value__ == (38967i32)) {
                    _gotoNext = 38243i32;
                } else if (__value__ == (38989i32)) {
                    if ((0i32 : stdgo.GoInt) < (stdgo._internal.internal.cpu.Cpu__options._options.length)) {
                        _gotoNext = 39133i32;
                    } else {
                        _gotoNext = 39139i32;
                    };
                } else if (__value__ == (38993i32)) {
                    _i_38993++;
                    _gotoNext = 39134i32;
                } else if (__value__ == (39012i32)) {
                    if (stdgo._internal.internal.cpu.Cpu__options._options[(_i_38993 : stdgo.GoInt)].name == (_key_38569)) {
                        _gotoNext = 39043i32;
                    } else {
                        _gotoNext = 38993i32;
                    };
                } else if (__value__ == (39043i32)) {
                    stdgo._internal.internal.cpu.Cpu__options._options[(_i_38993 : stdgo.GoInt)].specified = true;
                    stdgo._internal.internal.cpu.Cpu__options._options[(_i_38993 : stdgo.GoInt)].enable = _enable_38635;
                    _gotoNext = 38243i32;
                } else if (__value__ == (39133i32)) {
                    _i_38993 = 0i32;
                    _gotoNext = 39134i32;
                } else if (__value__ == (39134i32)) {
                    if (_i_38993 < (stdgo._internal.internal.cpu.Cpu__options._options.length)) {
                        _gotoNext = 39012i32;
                    } else {
                        _gotoNext = 39139i32;
                    };
                } else if (__value__ == (39139i32)) {
                    stdgo.Go.print(("GODEBUG: unknown cpu feature \"" : stdgo.GoString), _key_38569, ("\"\n" : stdgo.GoString));
                    _gotoNext = 38243i32;
                } else if (__value__ == (39198i32)) {
                    if ((0i32 : stdgo.GoInt) < (stdgo._internal.internal.cpu.Cpu__options._options.length)) {
                        _gotoNext = 39411i32;
                    } else {
                        _gotoNext = 39414i32;
                    };
                } else if (__value__ == (39224i32)) {
                    _o_39205 = stdgo._internal.internal.cpu.Cpu__options._options[(_i_39210_0 : stdgo.GoInt)];
                    if (!_o_39205.specified) {
                        _gotoNext = 39244i32;
                    } else {
                        _gotoNext = 39265i32;
                    };
                } else if (__value__ == (39244i32)) {
                    _i_39210_0++;
                    _gotoNext = 39412i32;
                } else if (__value__ == (39265i32)) {
                    if ((_o_39205.enable && !_o_39205.feature.value : Bool)) {
                        _gotoNext = 39292i32;
                    } else {
                        _gotoNext = 39389i32;
                    };
                } else if (__value__ == (39292i32)) {
                    stdgo.Go.print(("GODEBUG: can not enable \"" : stdgo.GoString), _o_39205.name, ("\", missing CPU support\n" : stdgo.GoString));
                    _i_39210_0++;
                    _gotoNext = 39412i32;
                } else if (__value__ == (39389i32)) {
                    _o_39205.feature.value = _o_39205.enable;
                    _i_39210_0++;
                    _gotoNext = 39412i32;
                } else if (__value__ == (39411i32)) {
                    {
                        final __tmp__0 = 0i32;
                        final __tmp__1 = stdgo._internal.internal.cpu.Cpu__options._options[(0i32 : stdgo.GoInt)];
                        _i_39210_0 = __tmp__0;
                        _o_39205 = __tmp__1;
                    };
                    _gotoNext = 39412i32;
                } else if (__value__ == (39412i32)) {
                    if (_i_39210_0 < (stdgo._internal.internal.cpu.Cpu__options._options.length)) {
                        _gotoNext = 39224i32;
                    } else {
                        _gotoNext = 39414i32;
                    };
                } else if (__value__ == (39414i32)) {
                    _gotoNext = -1i32;
                };
            };
        };
    }
