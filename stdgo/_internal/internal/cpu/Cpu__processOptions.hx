package stdgo._internal.internal.cpu;
function _processOptions(_env:stdgo.GoString):Void {
        var _enable_25581:Bool = false;
        var _i_25221:stdgo.GoInt = (0 : stdgo.GoInt);
        var _field_25207:stdgo.GoString = ("" : stdgo.GoString);
        var _o_26151:stdgo._internal.internal.cpu.Cpu_T_option.T_option = ({} : stdgo._internal.internal.cpu.Cpu_T_option.T_option);
        var _i_26156_0:stdgo.GoInt = (0 : stdgo.GoInt);
        var _i_25939:stdgo.GoInt = (0 : stdgo.GoInt);
        var _value_25520:stdgo.GoString = ("" : stdgo.GoString);
        var _key_25515:stdgo.GoString = ("" : stdgo.GoString);
        var _fieldBreak = false;
        var _i_25821:stdgo.GoInt = (0 : stdgo.GoInt);
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    _gotoNext = 25181i32;
                } else if (__value__ == (25181i32)) {
                    var __blank__ = 0i32;
                    _fieldBreak = false;
                    _gotoNext = 25189i32;
                } else if (__value__ == (25189i32)) {
                    if (!_fieldBreak && (_env != stdgo.Go.str())) {
                        _gotoNext = 25203i32;
                    } else {
                        _gotoNext = 26144i32;
                    };
                } else if (__value__ == (25203i32)) {
                    _field_25207 = stdgo.Go.str()?.__copy__();
                    _i_25221 = stdgo._internal.internal.cpu.Cpu__indexByte._indexByte(_env?.__copy__(), (44 : stdgo.GoUInt8));
                    if ((_i_25221 < (0 : stdgo.GoInt) : Bool)) {
                        _gotoNext = 25257i32;
                    } else {
                        _gotoNext = 25292i32;
                    };
                } else if (__value__ == (25257i32)) {
                    {
                        final __tmp__0 = _env?.__copy__();
                        final __tmp__1 = stdgo.Go.str()?.__copy__();
                        _field_25207 = __tmp__0;
                        _env = __tmp__1;
                    };
                    _gotoNext = 25335i32;
                } else if (__value__ == (25292i32)) {
                    _gotoNext = 25292i32;
                    {
                        final __tmp__0 = (_env.__slice__(0, _i_25221) : stdgo.GoString)?.__copy__();
                        final __tmp__1 = (_env.__slice__((_i_25221 + (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        _field_25207 = __tmp__0;
                        _env = __tmp__1;
                    };
                    var __blank__ = 0i32;
                    _gotoNext = 25335i32;
                } else if (__value__ == (25335i32)) {
                    if ((((_field_25207.length) < (4 : stdgo.GoInt) : Bool) || ((_field_25207.__slice__(0, (4 : stdgo.GoInt)) : stdgo.GoString) != ("cpu." : stdgo.GoString)) : Bool)) {
                        _gotoNext = 25376i32;
                    } else {
                        _gotoNext = 25396i32;
                    };
                } else if (__value__ == (25376i32)) {
                    var __blank__ = 0i32;
                    _gotoNext = 25189i32;
                } else if (__value__ == (25396i32)) {
                    _i_25221 = stdgo._internal.internal.cpu.Cpu__indexByte._indexByte(_field_25207?.__copy__(), (61 : stdgo.GoUInt8));
                    if ((_i_25221 < (0 : stdgo.GoInt) : Bool)) {
                        _gotoNext = 25433i32;
                    } else {
                        _gotoNext = 25515i32;
                    };
                } else if (__value__ == (25433i32)) {
                    stdgo.Go.print(("GODEBUG: no value specified for \"" : stdgo.GoString), _field_25207, ("\"\n" : stdgo.GoString));
                    var __blank__ = 0i32;
                    _gotoNext = 25189i32;
                } else if (__value__ == (25515i32)) {
                    {
                        final __tmp__0 = (_field_25207.__slice__((4 : stdgo.GoInt), _i_25221) : stdgo.GoString)?.__copy__();
                        final __tmp__1 = (_field_25207.__slice__((_i_25221 + (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        _key_25515 = __tmp__0;
                        _value_25520 = __tmp__1;
                    };
                    var __blank__ = 0i32;
                    _gotoNext = 25595i32;
                } else if (__value__ == (25595i32)) {
                    {
                        final __value__ = _value_25520;
                        if (__value__ == (("on" : stdgo.GoString))) {
                            _gotoNext = 25612i32;
                        } else if (__value__ == (("off" : stdgo.GoString))) {
                            _gotoNext = 25642i32;
                        } else {
                            _gotoNext = 25674i32;
                        };
                    };
                } else if (__value__ == (25612i32)) {
                    _enable_25581 = true;
                    _gotoNext = 25796i32;
                } else if (__value__ == (25642i32)) {
                    _enable_25581 = false;
                    _gotoNext = 25796i32;
                } else if (__value__ == (25674i32)) {
                    stdgo.Go.print(("GODEBUG: value \"" : stdgo.GoString), _value_25520, ("\" not supported for cpu option \"" : stdgo.GoString), _key_25515, ("\"\n" : stdgo.GoString));
                    _gotoNext = 25189i32;
                } else if (__value__ == (25796i32)) {
                    if (_key_25515 == (("all" : stdgo.GoString))) {
                        _gotoNext = 25812i32;
                    } else {
                        _gotoNext = 25935i32;
                    };
                } else if (__value__ == (25812i32)) {
                    if ((0i32 : stdgo.GoInt) < (stdgo._internal.internal.cpu.Cpu__options._options.length)) {
                        _gotoNext = 25907i32;
                    } else {
                        _gotoNext = 25913i32;
                    };
                } else if (__value__ == (25840i32)) {
                    stdgo._internal.internal.cpu.Cpu__options._options[(_i_25821 : stdgo.GoInt)].specified = true;
                    stdgo._internal.internal.cpu.Cpu__options._options[(_i_25821 : stdgo.GoInt)].enable = _enable_25581;
                    _i_25821++;
                    _gotoNext = 25908i32;
                } else if (__value__ == (25907i32)) {
                    _i_25821 = 0i32;
                    _gotoNext = 25908i32;
                } else if (__value__ == (25908i32)) {
                    if (_i_25821 < (stdgo._internal.internal.cpu.Cpu__options._options.length)) {
                        _gotoNext = 25840i32;
                    } else {
                        _gotoNext = 25913i32;
                    };
                } else if (__value__ == (25913i32)) {
                    _gotoNext = 25189i32;
                } else if (__value__ == (25935i32)) {
                    if ((0i32 : stdgo.GoInt) < (stdgo._internal.internal.cpu.Cpu__options._options.length)) {
                        _gotoNext = 26079i32;
                    } else {
                        _gotoNext = 26085i32;
                    };
                } else if (__value__ == (25939i32)) {
                    _i_25939++;
                    _gotoNext = 26080i32;
                } else if (__value__ == (25958i32)) {
                    if (stdgo._internal.internal.cpu.Cpu__options._options[(_i_25939 : stdgo.GoInt)].name == (_key_25515)) {
                        _gotoNext = 25989i32;
                    } else {
                        _gotoNext = 25939i32;
                    };
                } else if (__value__ == (25989i32)) {
                    stdgo._internal.internal.cpu.Cpu__options._options[(_i_25939 : stdgo.GoInt)].specified = true;
                    stdgo._internal.internal.cpu.Cpu__options._options[(_i_25939 : stdgo.GoInt)].enable = _enable_25581;
                    _gotoNext = 25189i32;
                } else if (__value__ == (26079i32)) {
                    _i_25939 = 0i32;
                    _gotoNext = 26080i32;
                } else if (__value__ == (26080i32)) {
                    if (_i_25939 < (stdgo._internal.internal.cpu.Cpu__options._options.length)) {
                        _gotoNext = 25958i32;
                    } else {
                        _gotoNext = 26085i32;
                    };
                } else if (__value__ == (26085i32)) {
                    stdgo.Go.print(("GODEBUG: unknown cpu feature \"" : stdgo.GoString), _key_25515, ("\"\n" : stdgo.GoString));
                    _gotoNext = 25189i32;
                } else if (__value__ == (26144i32)) {
                    if ((0i32 : stdgo.GoInt) < (stdgo._internal.internal.cpu.Cpu__options._options.length)) {
                        _gotoNext = 26357i32;
                    } else {
                        _gotoNext = 26360i32;
                    };
                } else if (__value__ == (26170i32)) {
                    _o_26151 = stdgo._internal.internal.cpu.Cpu__options._options[(_i_26156_0 : stdgo.GoInt)];
                    if (!_o_26151.specified) {
                        _gotoNext = 26190i32;
                    } else {
                        _gotoNext = 26211i32;
                    };
                } else if (__value__ == (26190i32)) {
                    _i_26156_0++;
                    _gotoNext = 26358i32;
                } else if (__value__ == (26211i32)) {
                    if ((_o_26151.enable && !_o_26151.feature.value : Bool)) {
                        _gotoNext = 26238i32;
                    } else {
                        _gotoNext = 26335i32;
                    };
                } else if (__value__ == (26238i32)) {
                    stdgo.Go.print(("GODEBUG: can not enable \"" : stdgo.GoString), _o_26151.name, ("\", missing CPU support\n" : stdgo.GoString));
                    _i_26156_0++;
                    _gotoNext = 26358i32;
                } else if (__value__ == (26335i32)) {
                    _o_26151.feature.value = _o_26151.enable;
                    _i_26156_0++;
                    _gotoNext = 26358i32;
                } else if (__value__ == (26357i32)) {
                    {
                        final __tmp__0 = 0i32;
                        final __tmp__1 = stdgo._internal.internal.cpu.Cpu__options._options[(0i32 : stdgo.GoInt)];
                        _i_26156_0 = __tmp__0;
                        _o_26151 = __tmp__1;
                    };
                    _gotoNext = 26358i32;
                } else if (__value__ == (26358i32)) {
                    if (_i_26156_0 < (stdgo._internal.internal.cpu.Cpu__options._options.length)) {
                        _gotoNext = 26170i32;
                    } else {
                        _gotoNext = 26360i32;
                    };
                } else if (__value__ == (26360i32)) {
                    _gotoNext = -1i32;
                };
            };
        };
    }
