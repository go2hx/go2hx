package stdgo._internal.internal.cpu;
function _processOptions(_env:stdgo.GoString):Void {
        var _fieldBreak = false;
        var _o_48232:stdgo._internal.internal.cpu.Cpu_T_option.T_option = ({} : stdgo._internal.internal.cpu.Cpu_T_option.T_option);
        var _i_48237_0:stdgo.GoInt = (0 : stdgo.GoInt);
        var _enable_47662:Bool = false;
        var _i_47302:stdgo.GoInt = (0 : stdgo.GoInt);
        var _field_47288:stdgo.GoString = ("" : stdgo.GoString);
        var _key_47596:stdgo.GoString = ("" : stdgo.GoString);
        var _i_48020:stdgo.GoInt = (0 : stdgo.GoInt);
        var _i_47902:stdgo.GoInt = (0 : stdgo.GoInt);
        var _value_47601:stdgo.GoString = ("" : stdgo.GoString);
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    _gotoNext = 47262i32;
                } else if (__value__ == (47262i32)) {
                    var __blank__ = 0i32;
                    _fieldBreak = false;
                    _gotoNext = 47270i32;
                } else if (__value__ == (47270i32)) {
                    if (!_fieldBreak && (_env != stdgo.Go.str())) {
                        _gotoNext = 47284i32;
                    } else {
                        _gotoNext = 48225i32;
                    };
                } else if (__value__ == (47284i32)) {
                    _field_47288 = stdgo.Go.str()?.__copy__();
                    _i_47302 = stdgo._internal.internal.cpu.Cpu__indexByte._indexByte(_env?.__copy__(), (44 : stdgo.GoUInt8));
                    if ((_i_47302 < (0 : stdgo.GoInt) : Bool)) {
                        _gotoNext = 47338i32;
                    } else {
                        _gotoNext = 47373i32;
                    };
                } else if (__value__ == (47338i32)) {
                    {
                        final __tmp__0 = _env?.__copy__();
                        final __tmp__1 = stdgo.Go.str()?.__copy__();
                        _field_47288 = __tmp__0;
                        _env = __tmp__1;
                    };
                    _gotoNext = 47416i32;
                } else if (__value__ == (47373i32)) {
                    _gotoNext = 47373i32;
                    {
                        final __tmp__0 = (_env.__slice__(0, _i_47302) : stdgo.GoString)?.__copy__();
                        final __tmp__1 = (_env.__slice__((_i_47302 + (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        _field_47288 = __tmp__0;
                        _env = __tmp__1;
                    };
                    var __blank__ = 0i32;
                    _gotoNext = 47416i32;
                } else if (__value__ == (47416i32)) {
                    if ((((_field_47288.length) < (4 : stdgo.GoInt) : Bool) || ((_field_47288.__slice__(0, (4 : stdgo.GoInt)) : stdgo.GoString) != ("cpu." : stdgo.GoString)) : Bool)) {
                        _gotoNext = 47457i32;
                    } else {
                        _gotoNext = 47477i32;
                    };
                } else if (__value__ == (47457i32)) {
                    var __blank__ = 0i32;
                    _gotoNext = 47270i32;
                } else if (__value__ == (47477i32)) {
                    _i_47302 = stdgo._internal.internal.cpu.Cpu__indexByte._indexByte(_field_47288?.__copy__(), (61 : stdgo.GoUInt8));
                    if ((_i_47302 < (0 : stdgo.GoInt) : Bool)) {
                        _gotoNext = 47514i32;
                    } else {
                        _gotoNext = 47596i32;
                    };
                } else if (__value__ == (47514i32)) {
                    stdgo.Go.print(("GODEBUG: no value specified for \"" : stdgo.GoString), _field_47288, ("\"\n" : stdgo.GoString));
                    var __blank__ = 0i32;
                    _gotoNext = 47270i32;
                } else if (__value__ == (47596i32)) {
                    {
                        final __tmp__0 = (_field_47288.__slice__((4 : stdgo.GoInt), _i_47302) : stdgo.GoString)?.__copy__();
                        final __tmp__1 = (_field_47288.__slice__((_i_47302 + (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        _key_47596 = __tmp__0;
                        _value_47601 = __tmp__1;
                    };
                    _gotoNext = 47676i32;
                } else if (__value__ == (47676i32)) {
                    {
                        final __value__ = _value_47601;
                        if (__value__ == (("on" : stdgo.GoString))) {
                            _gotoNext = 47693i32;
                        } else if (__value__ == (("off" : stdgo.GoString))) {
                            _gotoNext = 47723i32;
                        } else {
                            _gotoNext = 47755i32;
                        };
                    };
                } else if (__value__ == (47693i32)) {
                    _enable_47662 = true;
                    _gotoNext = 47877i32;
                } else if (__value__ == (47723i32)) {
                    _enable_47662 = false;
                    _gotoNext = 47877i32;
                } else if (__value__ == (47755i32)) {
                    stdgo.Go.print(("GODEBUG: value \"" : stdgo.GoString), _value_47601, ("\" not supported for cpu option \"" : stdgo.GoString), _key_47596, ("\"\n" : stdgo.GoString));
                    _gotoNext = 47270i32;
                } else if (__value__ == (47877i32)) {
                    if (_key_47596 == (("all" : stdgo.GoString))) {
                        _gotoNext = 47893i32;
                    } else {
                        _gotoNext = 48016i32;
                    };
                } else if (__value__ == (47893i32)) {
                    if ((0i32 : stdgo.GoInt) < (stdgo._internal.internal.cpu.Cpu__options._options.length)) {
                        _gotoNext = 47988i32;
                    } else {
                        _gotoNext = 47994i32;
                    };
                } else if (__value__ == (47921i32)) {
                    stdgo._internal.internal.cpu.Cpu__options._options[(_i_47902 : stdgo.GoInt)].specified = true;
                    stdgo._internal.internal.cpu.Cpu__options._options[(_i_47902 : stdgo.GoInt)].enable = _enable_47662;
                    _i_47902++;
                    _gotoNext = 47989i32;
                } else if (__value__ == (47988i32)) {
                    _i_47902 = 0i32;
                    _gotoNext = 47989i32;
                } else if (__value__ == (47989i32)) {
                    if (_i_47902 < (stdgo._internal.internal.cpu.Cpu__options._options.length)) {
                        _gotoNext = 47921i32;
                    } else {
                        _gotoNext = 47994i32;
                    };
                } else if (__value__ == (47994i32)) {
                    _gotoNext = 47270i32;
                } else if (__value__ == (48016i32)) {
                    if ((0i32 : stdgo.GoInt) < (stdgo._internal.internal.cpu.Cpu__options._options.length)) {
                        _gotoNext = 48160i32;
                    } else {
                        _gotoNext = 48166i32;
                    };
                } else if (__value__ == (48020i32)) {
                    _i_48020++;
                    _gotoNext = 48161i32;
                } else if (__value__ == (48039i32)) {
                    if (stdgo._internal.internal.cpu.Cpu__options._options[(_i_48020 : stdgo.GoInt)].name == (_key_47596)) {
                        _gotoNext = 48070i32;
                    } else {
                        _gotoNext = 48020i32;
                    };
                } else if (__value__ == (48070i32)) {
                    stdgo._internal.internal.cpu.Cpu__options._options[(_i_48020 : stdgo.GoInt)].specified = true;
                    stdgo._internal.internal.cpu.Cpu__options._options[(_i_48020 : stdgo.GoInt)].enable = _enable_47662;
                    _gotoNext = 47270i32;
                } else if (__value__ == (48160i32)) {
                    _i_48020 = 0i32;
                    _gotoNext = 48161i32;
                } else if (__value__ == (48161i32)) {
                    if (_i_48020 < (stdgo._internal.internal.cpu.Cpu__options._options.length)) {
                        _gotoNext = 48039i32;
                    } else {
                        _gotoNext = 48166i32;
                    };
                } else if (__value__ == (48166i32)) {
                    stdgo.Go.print(("GODEBUG: unknown cpu feature \"" : stdgo.GoString), _key_47596, ("\"\n" : stdgo.GoString));
                    _gotoNext = 47270i32;
                } else if (__value__ == (48225i32)) {
                    if ((0i32 : stdgo.GoInt) < (stdgo._internal.internal.cpu.Cpu__options._options.length)) {
                        _gotoNext = 48438i32;
                    } else {
                        _gotoNext = 48441i32;
                    };
                } else if (__value__ == (48251i32)) {
                    _o_48232 = stdgo._internal.internal.cpu.Cpu__options._options[(_i_48237_0 : stdgo.GoInt)];
                    if (!_o_48232.specified) {
                        _gotoNext = 48271i32;
                    } else {
                        _gotoNext = 48292i32;
                    };
                } else if (__value__ == (48271i32)) {
                    _i_48237_0++;
                    _gotoNext = 48439i32;
                } else if (__value__ == (48292i32)) {
                    if ((_o_48232.enable && !_o_48232.feature.value : Bool)) {
                        _gotoNext = 48319i32;
                    } else {
                        _gotoNext = 48416i32;
                    };
                } else if (__value__ == (48319i32)) {
                    stdgo.Go.print(("GODEBUG: can not enable \"" : stdgo.GoString), _o_48232.name, ("\", missing CPU support\n" : stdgo.GoString));
                    _i_48237_0++;
                    _gotoNext = 48439i32;
                } else if (__value__ == (48416i32)) {
                    _o_48232.feature.value = _o_48232.enable;
                    _i_48237_0++;
                    _gotoNext = 48439i32;
                } else if (__value__ == (48438i32)) {
                    {
                        final __tmp__0 = 0i32;
                        final __tmp__1 = stdgo._internal.internal.cpu.Cpu__options._options[(0i32 : stdgo.GoInt)];
                        _i_48237_0 = __tmp__0;
                        _o_48232 = __tmp__1;
                    };
                    _gotoNext = 48439i32;
                } else if (__value__ == (48439i32)) {
                    if (_i_48237_0 < (stdgo._internal.internal.cpu.Cpu__options._options.length)) {
                        _gotoNext = 48251i32;
                    } else {
                        _gotoNext = 48441i32;
                    };
                } else if (__value__ == (48441i32)) {
                    _gotoNext = -1i32;
                };
            };
        };
    }
