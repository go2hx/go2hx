package stdgo._internal.internal.cpu;
function _processOptions(_env:stdgo.GoString):Void {
        var _value_38142:stdgo.GoString = ("" : stdgo.GoString);
        var _key_38137:stdgo.GoString = ("" : stdgo.GoString);
        var _i_37843:stdgo.GoInt = (0 : stdgo.GoInt);
        var _field_37829:stdgo.GoString = ("" : stdgo.GoString);
        var _fieldBreak = false;
        var _i_38778_0:stdgo.GoInt = (0 : stdgo.GoInt);
        var _i_38561:stdgo.GoInt = (0 : stdgo.GoInt);
        var _i_38443:stdgo.GoInt = (0 : stdgo.GoInt);
        var _o_38773:stdgo._internal.internal.cpu.Cpu_T_option.T_option = ({} : stdgo._internal.internal.cpu.Cpu_T_option.T_option);
        var _enable_38203:Bool = false;
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    _gotoNext = 37803i32;
                } else if (__value__ == (37803i32)) {
                    var __blank__ = 0i32;
                    _fieldBreak = false;
                    _gotoNext = 37811i32;
                } else if (__value__ == (37811i32)) {
                    if (!_fieldBreak && (_env != stdgo.Go.str())) {
                        _gotoNext = 37825i32;
                    } else {
                        _gotoNext = 38766i32;
                    };
                } else if (__value__ == (37825i32)) {
                    _field_37829 = stdgo.Go.str()?.__copy__();
                    _i_37843 = stdgo._internal.internal.cpu.Cpu__indexByte._indexByte(_env?.__copy__(), (44 : stdgo.GoUInt8));
                    if ((_i_37843 < (0 : stdgo.GoInt) : Bool)) {
                        _gotoNext = 37879i32;
                    } else {
                        _gotoNext = 37914i32;
                    };
                } else if (__value__ == (37879i32)) {
                    {
                        final __tmp__0 = _env?.__copy__();
                        final __tmp__1 = stdgo.Go.str()?.__copy__();
                        _field_37829 = __tmp__0;
                        _env = __tmp__1;
                    };
                    _gotoNext = 37957i32;
                } else if (__value__ == (37914i32)) {
                    _gotoNext = 37914i32;
                    {
                        final __tmp__0 = (_env.__slice__(0, _i_37843) : stdgo.GoString)?.__copy__();
                        final __tmp__1 = (_env.__slice__((_i_37843 + (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        _field_37829 = __tmp__0;
                        _env = __tmp__1;
                    };
                    var __blank__ = 0i32;
                    _gotoNext = 37957i32;
                } else if (__value__ == (37957i32)) {
                    if ((((_field_37829.length) < (4 : stdgo.GoInt) : Bool) || ((_field_37829.__slice__(0, (4 : stdgo.GoInt)) : stdgo.GoString) != ("cpu." : stdgo.GoString)) : Bool)) {
                        _gotoNext = 37998i32;
                    } else {
                        _gotoNext = 38018i32;
                    };
                } else if (__value__ == (37998i32)) {
                    var __blank__ = 0i32;
                    _gotoNext = 37811i32;
                } else if (__value__ == (38018i32)) {
                    _i_37843 = stdgo._internal.internal.cpu.Cpu__indexByte._indexByte(_field_37829?.__copy__(), (61 : stdgo.GoUInt8));
                    if ((_i_37843 < (0 : stdgo.GoInt) : Bool)) {
                        _gotoNext = 38055i32;
                    } else {
                        _gotoNext = 38137i32;
                    };
                } else if (__value__ == (38055i32)) {
                    stdgo.Go.print(("GODEBUG: no value specified for \"" : stdgo.GoString), _field_37829, ("\"\n" : stdgo.GoString));
                    var __blank__ = 0i32;
                    _gotoNext = 37811i32;
                } else if (__value__ == (38137i32)) {
                    {
                        final __tmp__0 = (_field_37829.__slice__((4 : stdgo.GoInt), _i_37843) : stdgo.GoString)?.__copy__();
                        final __tmp__1 = (_field_37829.__slice__((_i_37843 + (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        _key_38137 = __tmp__0;
                        _value_38142 = __tmp__1;
                    };
                    _gotoNext = 38217i32;
                } else if (__value__ == (38217i32)) {
                    {
                        final __value__ = _value_38142;
                        if (__value__ == (("on" : stdgo.GoString))) {
                            _gotoNext = 38234i32;
                        } else if (__value__ == (("off" : stdgo.GoString))) {
                            _gotoNext = 38264i32;
                        } else {
                            _gotoNext = 38296i32;
                        };
                    };
                } else if (__value__ == (38234i32)) {
                    _enable_38203 = true;
                    _gotoNext = 38418i32;
                } else if (__value__ == (38264i32)) {
                    _enable_38203 = false;
                    _gotoNext = 38418i32;
                } else if (__value__ == (38296i32)) {
                    stdgo.Go.print(("GODEBUG: value \"" : stdgo.GoString), _value_38142, ("\" not supported for cpu option \"" : stdgo.GoString), _key_38137, ("\"\n" : stdgo.GoString));
                    _gotoNext = 37811i32;
                } else if (__value__ == (38418i32)) {
                    if (_key_38137 == (("all" : stdgo.GoString))) {
                        _gotoNext = 38434i32;
                    } else {
                        _gotoNext = 38557i32;
                    };
                } else if (__value__ == (38434i32)) {
                    if ((0i32 : stdgo.GoInt) < (stdgo._internal.internal.cpu.Cpu__options._options.length)) {
                        _gotoNext = 38529i32;
                    } else {
                        _gotoNext = 38535i32;
                    };
                } else if (__value__ == (38462i32)) {
                    stdgo._internal.internal.cpu.Cpu__options._options[(_i_38443 : stdgo.GoInt)].specified = true;
                    stdgo._internal.internal.cpu.Cpu__options._options[(_i_38443 : stdgo.GoInt)].enable = _enable_38203;
                    _i_38443++;
                    _gotoNext = 38530i32;
                } else if (__value__ == (38529i32)) {
                    _i_38443 = 0i32;
                    _gotoNext = 38530i32;
                } else if (__value__ == (38530i32)) {
                    if (_i_38443 < (stdgo._internal.internal.cpu.Cpu__options._options.length)) {
                        _gotoNext = 38462i32;
                    } else {
                        _gotoNext = 38535i32;
                    };
                } else if (__value__ == (38535i32)) {
                    _gotoNext = 37811i32;
                } else if (__value__ == (38557i32)) {
                    if ((0i32 : stdgo.GoInt) < (stdgo._internal.internal.cpu.Cpu__options._options.length)) {
                        _gotoNext = 38701i32;
                    } else {
                        _gotoNext = 38707i32;
                    };
                } else if (__value__ == (38561i32)) {
                    _i_38561++;
                    _gotoNext = 38702i32;
                } else if (__value__ == (38580i32)) {
                    if (stdgo._internal.internal.cpu.Cpu__options._options[(_i_38561 : stdgo.GoInt)].name == (_key_38137)) {
                        _gotoNext = 38611i32;
                    } else {
                        _gotoNext = 38561i32;
                    };
                } else if (__value__ == (38611i32)) {
                    stdgo._internal.internal.cpu.Cpu__options._options[(_i_38561 : stdgo.GoInt)].specified = true;
                    stdgo._internal.internal.cpu.Cpu__options._options[(_i_38561 : stdgo.GoInt)].enable = _enable_38203;
                    _gotoNext = 37811i32;
                } else if (__value__ == (38701i32)) {
                    _i_38561 = 0i32;
                    _gotoNext = 38702i32;
                } else if (__value__ == (38702i32)) {
                    if (_i_38561 < (stdgo._internal.internal.cpu.Cpu__options._options.length)) {
                        _gotoNext = 38580i32;
                    } else {
                        _gotoNext = 38707i32;
                    };
                } else if (__value__ == (38707i32)) {
                    stdgo.Go.print(("GODEBUG: unknown cpu feature \"" : stdgo.GoString), _key_38137, ("\"\n" : stdgo.GoString));
                    _gotoNext = 37811i32;
                } else if (__value__ == (38766i32)) {
                    if ((0i32 : stdgo.GoInt) < (stdgo._internal.internal.cpu.Cpu__options._options.length)) {
                        _gotoNext = 38979i32;
                    } else {
                        _gotoNext = 38982i32;
                    };
                } else if (__value__ == (38792i32)) {
                    _o_38773 = stdgo._internal.internal.cpu.Cpu__options._options[(_i_38778_0 : stdgo.GoInt)];
                    if (!_o_38773.specified) {
                        _gotoNext = 38812i32;
                    } else {
                        _gotoNext = 38833i32;
                    };
                } else if (__value__ == (38812i32)) {
                    _i_38778_0++;
                    _gotoNext = 38980i32;
                } else if (__value__ == (38833i32)) {
                    if ((_o_38773.enable && !_o_38773.feature.value : Bool)) {
                        _gotoNext = 38860i32;
                    } else {
                        _gotoNext = 38957i32;
                    };
                } else if (__value__ == (38860i32)) {
                    stdgo.Go.print(("GODEBUG: can not enable \"" : stdgo.GoString), _o_38773.name, ("\", missing CPU support\n" : stdgo.GoString));
                    _i_38778_0++;
                    _gotoNext = 38980i32;
                } else if (__value__ == (38957i32)) {
                    _o_38773.feature.value = _o_38773.enable;
                    _i_38778_0++;
                    _gotoNext = 38980i32;
                } else if (__value__ == (38979i32)) {
                    {
                        final __tmp__0 = 0i32;
                        final __tmp__1 = stdgo._internal.internal.cpu.Cpu__options._options[(0i32 : stdgo.GoInt)];
                        _i_38778_0 = __tmp__0;
                        _o_38773 = __tmp__1;
                    };
                    _gotoNext = 38980i32;
                } else if (__value__ == (38980i32)) {
                    if (_i_38778_0 < (stdgo._internal.internal.cpu.Cpu__options._options.length)) {
                        _gotoNext = 38792i32;
                    } else {
                        _gotoNext = 38982i32;
                    };
                } else if (__value__ == (38982i32)) {
                    _gotoNext = -1i32;
                };
            };
        };
    }
