package stdgo._internal.internal.cpu;
function _processOptions(_env:stdgo.GoString):Void {
        var _i_293096_0:stdgo.GoInt = (0 : stdgo.GoInt);
        var _i_292761:stdgo.GoInt = (0 : stdgo.GoInt);
        var _key_292455:stdgo.GoString = ("" : stdgo.GoString);
        var _o_293091:stdgo._internal.internal.cpu.Cpu_t_option.T_option = ({} : stdgo._internal.internal.cpu.Cpu_t_option.T_option);
        var _i_292879:stdgo.GoInt = (0 : stdgo.GoInt);
        var _enable_292521:Bool = false;
        var _value_292460:stdgo.GoString = ("" : stdgo.GoString);
        var _i_292161:stdgo.GoInt = (0 : stdgo.GoInt);
        var _field_292147:stdgo.GoString = ("" : stdgo.GoString);
        var _fieldBreak = false;
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    _gotoNext = 292121i32;
                } else if (__value__ == (292121i32)) {
                    var __blank__ = 0i32;
                    _fieldBreak = false;
                    _gotoNext = 292129i32;
                } else if (__value__ == (292129i32)) {
                    if (!_fieldBreak && (_env != (stdgo.Go.str() : stdgo.GoString))) {
                        _gotoNext = 292143i32;
                    } else {
                        _gotoNext = 293084i32;
                    };
                } else if (__value__ == (292143i32)) {
                    _field_292147 = (stdgo.Go.str() : stdgo.GoString)?.__copy__();
                    _i_292161 = stdgo._internal.internal.cpu.Cpu__indexbyte._indexByte(_env?.__copy__(), (44 : stdgo.GoUInt8));
                    if ((_i_292161 < (0 : stdgo.GoInt) : Bool)) {
                        _gotoNext = 292197i32;
                    } else {
                        _gotoNext = 292232i32;
                    };
                } else if (__value__ == (292197i32)) {
                    {
                        final __tmp__0 = _env?.__copy__();
                        final __tmp__1 = (stdgo.Go.str() : stdgo.GoString)?.__copy__();
                        _field_292147 = __tmp__0;
                        _env = __tmp__1;
                    };
                    _gotoNext = 292275i32;
                } else if (__value__ == (292232i32)) {
                    _gotoNext = 292232i32;
                    {
                        final __tmp__0 = (_env.__slice__(0, _i_292161) : stdgo.GoString)?.__copy__();
                        final __tmp__1 = (_env.__slice__((_i_292161 + (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        _field_292147 = __tmp__0;
                        _env = __tmp__1;
                    };
                    var __blank__ = 0i32;
                    _gotoNext = 292275i32;
                } else if (__value__ == (292275i32)) {
                    if ((((_field_292147.length) < (4 : stdgo.GoInt) : Bool) || ((_field_292147.__slice__(0, (4 : stdgo.GoInt)) : stdgo.GoString) != ("cpu." : stdgo.GoString)) : Bool)) {
                        _gotoNext = 292316i32;
                    } else {
                        _gotoNext = 292336i32;
                    };
                } else if (__value__ == (292316i32)) {
                    var __blank__ = 0i32;
                    _gotoNext = 292129i32;
                } else if (__value__ == (292336i32)) {
                    _i_292161 = stdgo._internal.internal.cpu.Cpu__indexbyte._indexByte(_field_292147?.__copy__(), (61 : stdgo.GoUInt8));
                    if ((_i_292161 < (0 : stdgo.GoInt) : Bool)) {
                        _gotoNext = 292373i32;
                    } else {
                        _gotoNext = 292455i32;
                    };
                } else if (__value__ == (292373i32)) {
                    stdgo.Go.print(("GODEBUG: no value specified for \"" : stdgo.GoString), _field_292147, ("\"\n" : stdgo.GoString));
                    var __blank__ = 0i32;
                    _gotoNext = 292129i32;
                } else if (__value__ == (292455i32)) {
                    {
                        final __tmp__0 = (_field_292147.__slice__((4 : stdgo.GoInt), _i_292161) : stdgo.GoString)?.__copy__();
                        final __tmp__1 = (_field_292147.__slice__((_i_292161 + (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        _key_292455 = __tmp__0;
                        _value_292460 = __tmp__1;
                    };
                    _gotoNext = 292535i32;
                } else if (__value__ == (292535i32)) {
                    {
                        final __value__ = _value_292460;
                        if (__value__ == (("on" : stdgo.GoString))) {
                            _gotoNext = 292552i32;
                        } else if (__value__ == (("off" : stdgo.GoString))) {
                            _gotoNext = 292582i32;
                        } else {
                            _gotoNext = 292614i32;
                        };
                    };
                } else if (__value__ == (292552i32)) {
                    _enable_292521 = true;
                    _gotoNext = 292736i32;
                } else if (__value__ == (292582i32)) {
                    _enable_292521 = false;
                    _gotoNext = 292736i32;
                } else if (__value__ == (292614i32)) {
                    stdgo.Go.print(("GODEBUG: value \"" : stdgo.GoString), _value_292460, ("\" not supported for cpu option \"" : stdgo.GoString), _key_292455, ("\"\n" : stdgo.GoString));
                    _gotoNext = 292129i32;
                } else if (__value__ == (292736i32)) {
                    if (_key_292455 == (("all" : stdgo.GoString))) {
                        _gotoNext = 292752i32;
                    } else {
                        _gotoNext = 292875i32;
                    };
                } else if (__value__ == (292752i32)) {
                    if ((0i32 : stdgo.GoInt) < (stdgo._internal.internal.cpu.Cpu__options._options.length)) {
                        _gotoNext = 292847i32;
                    } else {
                        _gotoNext = 292853i32;
                    };
                } else if (__value__ == (292780i32)) {
                    stdgo._internal.internal.cpu.Cpu__options._options[(_i_292761 : stdgo.GoInt)].specified = true;
                    stdgo._internal.internal.cpu.Cpu__options._options[(_i_292761 : stdgo.GoInt)].enable = _enable_292521;
                    _i_292761++;
                    _gotoNext = 292848i32;
                } else if (__value__ == (292847i32)) {
                    _i_292761 = 0i32;
                    _gotoNext = 292848i32;
                } else if (__value__ == (292848i32)) {
                    if (_i_292761 < (stdgo._internal.internal.cpu.Cpu__options._options.length)) {
                        _gotoNext = 292780i32;
                    } else {
                        _gotoNext = 292853i32;
                    };
                } else if (__value__ == (292853i32)) {
                    _gotoNext = 292129i32;
                } else if (__value__ == (292875i32)) {
                    if ((0i32 : stdgo.GoInt) < (stdgo._internal.internal.cpu.Cpu__options._options.length)) {
                        _gotoNext = 293019i32;
                    } else {
                        _gotoNext = 293025i32;
                    };
                } else if (__value__ == (292879i32)) {
                    _i_292879++;
                    _gotoNext = 293020i32;
                } else if (__value__ == (292898i32)) {
                    if (stdgo._internal.internal.cpu.Cpu__options._options[(_i_292879 : stdgo.GoInt)].name == (_key_292455)) {
                        _gotoNext = 292929i32;
                    } else {
                        _gotoNext = 292879i32;
                    };
                } else if (__value__ == (292929i32)) {
                    stdgo._internal.internal.cpu.Cpu__options._options[(_i_292879 : stdgo.GoInt)].specified = true;
                    stdgo._internal.internal.cpu.Cpu__options._options[(_i_292879 : stdgo.GoInt)].enable = _enable_292521;
                    _gotoNext = 292129i32;
                } else if (__value__ == (293019i32)) {
                    _i_292879 = 0i32;
                    _gotoNext = 293020i32;
                } else if (__value__ == (293020i32)) {
                    if (_i_292879 < (stdgo._internal.internal.cpu.Cpu__options._options.length)) {
                        _gotoNext = 292898i32;
                    } else {
                        _gotoNext = 293025i32;
                    };
                } else if (__value__ == (293025i32)) {
                    stdgo.Go.print(("GODEBUG: unknown cpu feature \"" : stdgo.GoString), _key_292455, ("\"\n" : stdgo.GoString));
                    _gotoNext = 292129i32;
                } else if (__value__ == (293084i32)) {
                    if ((0i32 : stdgo.GoInt) < (stdgo._internal.internal.cpu.Cpu__options._options.length)) {
                        _gotoNext = 293297i32;
                    } else {
                        _gotoNext = 293300i32;
                    };
                } else if (__value__ == (293110i32)) {
                    _o_293091 = stdgo._internal.internal.cpu.Cpu__options._options[(_i_293096_0 : stdgo.GoInt)];
                    if (!_o_293091.specified) {
                        _gotoNext = 293130i32;
                    } else {
                        _gotoNext = 293151i32;
                    };
                } else if (__value__ == (293130i32)) {
                    _i_293096_0++;
                    _gotoNext = 293298i32;
                } else if (__value__ == (293151i32)) {
                    if ((_o_293091.enable && !_o_293091.feature.value : Bool)) {
                        _gotoNext = 293178i32;
                    } else {
                        _gotoNext = 293275i32;
                    };
                } else if (__value__ == (293178i32)) {
                    stdgo.Go.print(("GODEBUG: can not enable \"" : stdgo.GoString), _o_293091.name, ("\", missing CPU support\n" : stdgo.GoString));
                    _i_293096_0++;
                    _gotoNext = 293298i32;
                } else if (__value__ == (293275i32)) {
                    _o_293091.feature.value = _o_293091.enable;
                    _i_293096_0++;
                    _gotoNext = 293298i32;
                } else if (__value__ == (293297i32)) {
                    {
                        final __tmp__0 = 0i32;
                        final __tmp__1 = stdgo._internal.internal.cpu.Cpu__options._options[(0i32 : stdgo.GoInt)];
                        _i_293096_0 = __tmp__0;
                        _o_293091 = __tmp__1;
                    };
                    _gotoNext = 293298i32;
                } else if (__value__ == (293298i32)) {
                    if (_i_293096_0 < (stdgo._internal.internal.cpu.Cpu__options._options.length)) {
                        _gotoNext = 293110i32;
                    } else {
                        _gotoNext = 293300i32;
                    };
                } else if (__value__ == (293300i32)) {
                    _gotoNext = -1i32;
                };
            };
        };
    }
