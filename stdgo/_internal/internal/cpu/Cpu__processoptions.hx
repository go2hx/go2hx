package stdgo._internal.internal.cpu;
function _processOptions(_env:stdgo.GoString):Void {
        var _value_48556:stdgo.GoString = ("" : stdgo.GoString);
        var _key_48551:stdgo.GoString = ("" : stdgo.GoString);
        var _field_48243:stdgo.GoString = ("" : stdgo.GoString);
        var _fieldBreak = false;
        var _o_49187:stdgo._internal.internal.cpu.Cpu_t_option.T_option = ({} : stdgo._internal.internal.cpu.Cpu_t_option.T_option);
        var _i_48975:stdgo.GoInt = (0 : stdgo.GoInt);
        var _i_49192_0:stdgo.GoInt = (0 : stdgo.GoInt);
        var _i_48857:stdgo.GoInt = (0 : stdgo.GoInt);
        var _enable_48617:Bool = false;
        var _i_48257:stdgo.GoInt = (0 : stdgo.GoInt);
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    _gotoNext = 48217i32;
                } else if (__value__ == (48217i32)) {
                    var __blank__ = 0i32;
                    _fieldBreak = false;
                    _gotoNext = 48225i32;
                } else if (__value__ == (48225i32)) {
                    if (!_fieldBreak && (_env != (stdgo.Go.str() : stdgo.GoString))) {
                        _gotoNext = 48239i32;
                    } else {
                        _gotoNext = 49180i32;
                    };
                } else if (__value__ == (48239i32)) {
                    _field_48243 = (stdgo.Go.str() : stdgo.GoString)?.__copy__();
                    _i_48257 = stdgo._internal.internal.cpu.Cpu__indexbyte._indexByte(_env?.__copy__(), (44 : stdgo.GoUInt8));
                    if ((_i_48257 < (0 : stdgo.GoInt) : Bool)) {
                        _gotoNext = 48293i32;
                    } else {
                        _gotoNext = 48328i32;
                    };
                } else if (__value__ == (48293i32)) {
                    {
                        final __tmp__0 = _env?.__copy__();
                        final __tmp__1 = (stdgo.Go.str() : stdgo.GoString)?.__copy__();
                        _field_48243 = __tmp__0;
                        _env = __tmp__1;
                    };
                    _gotoNext = 48371i32;
                } else if (__value__ == (48328i32)) {
                    _gotoNext = 48328i32;
                    {
                        final __tmp__0 = (_env.__slice__(0, _i_48257) : stdgo.GoString)?.__copy__();
                        final __tmp__1 = (_env.__slice__((_i_48257 + (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        _field_48243 = __tmp__0;
                        _env = __tmp__1;
                    };
                    var __blank__ = 0i32;
                    _gotoNext = 48371i32;
                } else if (__value__ == (48371i32)) {
                    if ((((_field_48243.length) < (4 : stdgo.GoInt) : Bool) || ((_field_48243.__slice__(0, (4 : stdgo.GoInt)) : stdgo.GoString) != ("cpu." : stdgo.GoString)) : Bool)) {
                        _gotoNext = 48412i32;
                    } else {
                        _gotoNext = 48432i32;
                    };
                } else if (__value__ == (48412i32)) {
                    var __blank__ = 0i32;
                    _gotoNext = 48225i32;
                } else if (__value__ == (48432i32)) {
                    _i_48257 = stdgo._internal.internal.cpu.Cpu__indexbyte._indexByte(_field_48243?.__copy__(), (61 : stdgo.GoUInt8));
                    if ((_i_48257 < (0 : stdgo.GoInt) : Bool)) {
                        _gotoNext = 48469i32;
                    } else {
                        _gotoNext = 48551i32;
                    };
                } else if (__value__ == (48469i32)) {
                    stdgo.Go.print(("GODEBUG: no value specified for \"" : stdgo.GoString), _field_48243, ("\"\n" : stdgo.GoString));
                    var __blank__ = 0i32;
                    _gotoNext = 48225i32;
                } else if (__value__ == (48551i32)) {
                    {
                        final __tmp__0 = (_field_48243.__slice__((4 : stdgo.GoInt), _i_48257) : stdgo.GoString)?.__copy__();
                        final __tmp__1 = (_field_48243.__slice__((_i_48257 + (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        _key_48551 = __tmp__0;
                        _value_48556 = __tmp__1;
                    };
                    _gotoNext = 48631i32;
                } else if (__value__ == (48631i32)) {
                    {
                        final __value__ = _value_48556;
                        if (__value__ == (("on" : stdgo.GoString))) {
                            _gotoNext = 48648i32;
                        } else if (__value__ == (("off" : stdgo.GoString))) {
                            _gotoNext = 48678i32;
                        } else {
                            _gotoNext = 48710i32;
                        };
                    };
                } else if (__value__ == (48648i32)) {
                    _enable_48617 = true;
                    _gotoNext = 48832i32;
                } else if (__value__ == (48678i32)) {
                    _enable_48617 = false;
                    _gotoNext = 48832i32;
                } else if (__value__ == (48710i32)) {
                    stdgo.Go.print(("GODEBUG: value \"" : stdgo.GoString), _value_48556, ("\" not supported for cpu option \"" : stdgo.GoString), _key_48551, ("\"\n" : stdgo.GoString));
                    _gotoNext = 48225i32;
                } else if (__value__ == (48832i32)) {
                    if (_key_48551 == (("all" : stdgo.GoString))) {
                        _gotoNext = 48848i32;
                    } else {
                        _gotoNext = 48971i32;
                    };
                } else if (__value__ == (48848i32)) {
                    if ((0i32 : stdgo.GoInt) < (stdgo._internal.internal.cpu.Cpu__options._options.length)) {
                        _gotoNext = 48943i32;
                    } else {
                        _gotoNext = 48949i32;
                    };
                } else if (__value__ == (48876i32)) {
                    stdgo._internal.internal.cpu.Cpu__options._options[(_i_48857 : stdgo.GoInt)].specified = true;
                    stdgo._internal.internal.cpu.Cpu__options._options[(_i_48857 : stdgo.GoInt)].enable = _enable_48617;
                    _i_48857++;
                    _gotoNext = 48944i32;
                } else if (__value__ == (48943i32)) {
                    _i_48857 = 0i32;
                    _gotoNext = 48944i32;
                } else if (__value__ == (48944i32)) {
                    if (_i_48857 < (stdgo._internal.internal.cpu.Cpu__options._options.length)) {
                        _gotoNext = 48876i32;
                    } else {
                        _gotoNext = 48949i32;
                    };
                } else if (__value__ == (48949i32)) {
                    _gotoNext = 48225i32;
                } else if (__value__ == (48971i32)) {
                    if ((0i32 : stdgo.GoInt) < (stdgo._internal.internal.cpu.Cpu__options._options.length)) {
                        _gotoNext = 49115i32;
                    } else {
                        _gotoNext = 49121i32;
                    };
                } else if (__value__ == (48975i32)) {
                    _i_48975++;
                    _gotoNext = 49116i32;
                } else if (__value__ == (48994i32)) {
                    if (stdgo._internal.internal.cpu.Cpu__options._options[(_i_48975 : stdgo.GoInt)].name == (_key_48551)) {
                        _gotoNext = 49025i32;
                    } else {
                        _gotoNext = 48975i32;
                    };
                } else if (__value__ == (49025i32)) {
                    stdgo._internal.internal.cpu.Cpu__options._options[(_i_48975 : stdgo.GoInt)].specified = true;
                    stdgo._internal.internal.cpu.Cpu__options._options[(_i_48975 : stdgo.GoInt)].enable = _enable_48617;
                    _gotoNext = 48225i32;
                } else if (__value__ == (49115i32)) {
                    _i_48975 = 0i32;
                    _gotoNext = 49116i32;
                } else if (__value__ == (49116i32)) {
                    if (_i_48975 < (stdgo._internal.internal.cpu.Cpu__options._options.length)) {
                        _gotoNext = 48994i32;
                    } else {
                        _gotoNext = 49121i32;
                    };
                } else if (__value__ == (49121i32)) {
                    stdgo.Go.print(("GODEBUG: unknown cpu feature \"" : stdgo.GoString), _key_48551, ("\"\n" : stdgo.GoString));
                    _gotoNext = 48225i32;
                } else if (__value__ == (49180i32)) {
                    if ((0i32 : stdgo.GoInt) < (stdgo._internal.internal.cpu.Cpu__options._options.length)) {
                        _gotoNext = 49393i32;
                    } else {
                        _gotoNext = 49396i32;
                    };
                } else if (__value__ == (49206i32)) {
                    _o_49187 = stdgo._internal.internal.cpu.Cpu__options._options[(_i_49192_0 : stdgo.GoInt)];
                    if (!_o_49187.specified) {
                        _gotoNext = 49226i32;
                    } else {
                        _gotoNext = 49247i32;
                    };
                } else if (__value__ == (49226i32)) {
                    _i_49192_0++;
                    _gotoNext = 49394i32;
                } else if (__value__ == (49247i32)) {
                    if ((_o_49187.enable && !_o_49187.feature.value : Bool)) {
                        _gotoNext = 49274i32;
                    } else {
                        _gotoNext = 49371i32;
                    };
                } else if (__value__ == (49274i32)) {
                    stdgo.Go.print(("GODEBUG: can not enable \"" : stdgo.GoString), _o_49187.name, ("\", missing CPU support\n" : stdgo.GoString));
                    _i_49192_0++;
                    _gotoNext = 49394i32;
                } else if (__value__ == (49371i32)) {
                    _o_49187.feature.value = _o_49187.enable;
                    _i_49192_0++;
                    _gotoNext = 49394i32;
                } else if (__value__ == (49393i32)) {
                    {
                        final __tmp__0 = 0i32;
                        final __tmp__1 = stdgo._internal.internal.cpu.Cpu__options._options[(0i32 : stdgo.GoInt)];
                        _i_49192_0 = __tmp__0;
                        _o_49187 = __tmp__1;
                    };
                    _gotoNext = 49394i32;
                } else if (__value__ == (49394i32)) {
                    if (_i_49192_0 < (stdgo._internal.internal.cpu.Cpu__options._options.length)) {
                        _gotoNext = 49206i32;
                    } else {
                        _gotoNext = 49396i32;
                    };
                } else if (__value__ == (49396i32)) {
                    _gotoNext = -1i32;
                };
            };
        };
    }
