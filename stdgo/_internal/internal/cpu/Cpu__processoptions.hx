package stdgo._internal.internal.cpu;
function _processOptions(_env:stdgo.GoString):Void {
        var _fieldBreak = false;
        var _o_12131:stdgo._internal.internal.cpu.Cpu_t_option.T_option = ({} : stdgo._internal.internal.cpu.Cpu_t_option.T_option);
        var _i_11919:stdgo.GoInt = (0 : stdgo.GoInt);
        var _enable_11561:Bool = false;
        var _i_11201:stdgo.GoInt = (0 : stdgo.GoInt);
        var _field_11187:stdgo.GoString = ("" : stdgo.GoString);
        var _i_12136_0:stdgo.GoInt = (0 : stdgo.GoInt);
        var _i_11801:stdgo.GoInt = (0 : stdgo.GoInt);
        var _value_11500:stdgo.GoString = ("" : stdgo.GoString);
        var _key_11495:stdgo.GoString = ("" : stdgo.GoString);
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    _gotoNext = 11161i32;
                } else if (__value__ == (11161i32)) {
                    var __blank__ = 0i32;
                    _fieldBreak = false;
                    _gotoNext = 11169i32;
                } else if (__value__ == (11169i32)) {
                    if (!_fieldBreak && (_env != (stdgo.Go.str() : stdgo.GoString))) {
                        _gotoNext = 11183i32;
                    } else {
                        _gotoNext = 12124i32;
                    };
                } else if (__value__ == (11183i32)) {
                    _field_11187 = (stdgo.Go.str() : stdgo.GoString)?.__copy__();
                    _i_11201 = stdgo._internal.internal.cpu.Cpu__indexbyte._indexByte(_env?.__copy__(), (44 : stdgo.GoUInt8));
                    if ((_i_11201 < (0 : stdgo.GoInt) : Bool)) {
                        _gotoNext = 11237i32;
                    } else {
                        _gotoNext = 11272i32;
                    };
                } else if (__value__ == (11237i32)) {
                    {
                        final __tmp__0 = _env?.__copy__();
                        final __tmp__1 = (stdgo.Go.str() : stdgo.GoString)?.__copy__();
                        _field_11187 = __tmp__0;
                        _env = __tmp__1;
                    };
                    _gotoNext = 11315i32;
                } else if (__value__ == (11272i32)) {
                    _gotoNext = 11272i32;
                    {
                        final __tmp__0 = (_env.__slice__(0, _i_11201) : stdgo.GoString)?.__copy__();
                        final __tmp__1 = (_env.__slice__((_i_11201 + (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        _field_11187 = __tmp__0;
                        _env = __tmp__1;
                    };
                    var __blank__ = 0i32;
                    _gotoNext = 11315i32;
                } else if (__value__ == (11315i32)) {
                    if ((((_field_11187.length) < (4 : stdgo.GoInt) : Bool) || ((_field_11187.__slice__(0, (4 : stdgo.GoInt)) : stdgo.GoString) != ("cpu." : stdgo.GoString)) : Bool)) {
                        _gotoNext = 11356i32;
                    } else {
                        _gotoNext = 11376i32;
                    };
                } else if (__value__ == (11356i32)) {
                    var __blank__ = 0i32;
                    _gotoNext = 11169i32;
                } else if (__value__ == (11376i32)) {
                    _i_11201 = stdgo._internal.internal.cpu.Cpu__indexbyte._indexByte(_field_11187?.__copy__(), (61 : stdgo.GoUInt8));
                    if ((_i_11201 < (0 : stdgo.GoInt) : Bool)) {
                        _gotoNext = 11413i32;
                    } else {
                        _gotoNext = 11495i32;
                    };
                } else if (__value__ == (11413i32)) {
                    stdgo.Go.print(("GODEBUG: no value specified for \"" : stdgo.GoString), _field_11187, ("\"\n" : stdgo.GoString));
                    var __blank__ = 0i32;
                    _gotoNext = 11169i32;
                } else if (__value__ == (11495i32)) {
                    {
                        final __tmp__0 = (_field_11187.__slice__((4 : stdgo.GoInt), _i_11201) : stdgo.GoString)?.__copy__();
                        final __tmp__1 = (_field_11187.__slice__((_i_11201 + (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        _key_11495 = __tmp__0;
                        _value_11500 = __tmp__1;
                    };
                    _gotoNext = 11575i32;
                } else if (__value__ == (11575i32)) {
                    {
                        final __value__ = _value_11500;
                        if (__value__ == (("on" : stdgo.GoString))) {
                            _gotoNext = 11592i32;
                        } else if (__value__ == (("off" : stdgo.GoString))) {
                            _gotoNext = 11622i32;
                        } else {
                            _gotoNext = 11654i32;
                        };
                    };
                } else if (__value__ == (11592i32)) {
                    _enable_11561 = true;
                    _gotoNext = 11776i32;
                } else if (__value__ == (11622i32)) {
                    _enable_11561 = false;
                    _gotoNext = 11776i32;
                } else if (__value__ == (11654i32)) {
                    stdgo.Go.print(("GODEBUG: value \"" : stdgo.GoString), _value_11500, ("\" not supported for cpu option \"" : stdgo.GoString), _key_11495, ("\"\n" : stdgo.GoString));
                    _gotoNext = 11169i32;
                } else if (__value__ == (11776i32)) {
                    if (_key_11495 == (("all" : stdgo.GoString))) {
                        _gotoNext = 11792i32;
                    } else {
                        _gotoNext = 11915i32;
                    };
                } else if (__value__ == (11792i32)) {
                    if ((0i32 : stdgo.GoInt) < (stdgo._internal.internal.cpu.Cpu__options._options.length)) {
                        _gotoNext = 11887i32;
                    } else {
                        _gotoNext = 11893i32;
                    };
                } else if (__value__ == (11820i32)) {
                    stdgo._internal.internal.cpu.Cpu__options._options[(_i_11801 : stdgo.GoInt)].specified = true;
                    stdgo._internal.internal.cpu.Cpu__options._options[(_i_11801 : stdgo.GoInt)].enable = _enable_11561;
                    _i_11801++;
                    _gotoNext = 11888i32;
                } else if (__value__ == (11887i32)) {
                    _i_11801 = 0i32;
                    _gotoNext = 11888i32;
                } else if (__value__ == (11888i32)) {
                    if (_i_11801 < (stdgo._internal.internal.cpu.Cpu__options._options.length)) {
                        _gotoNext = 11820i32;
                    } else {
                        _gotoNext = 11893i32;
                    };
                } else if (__value__ == (11893i32)) {
                    _gotoNext = 11169i32;
                } else if (__value__ == (11915i32)) {
                    if ((0i32 : stdgo.GoInt) < (stdgo._internal.internal.cpu.Cpu__options._options.length)) {
                        _gotoNext = 12059i32;
                    } else {
                        _gotoNext = 12065i32;
                    };
                } else if (__value__ == (11919i32)) {
                    _i_11919++;
                    _gotoNext = 12060i32;
                } else if (__value__ == (11938i32)) {
                    if (stdgo._internal.internal.cpu.Cpu__options._options[(_i_11919 : stdgo.GoInt)].name == (_key_11495)) {
                        _gotoNext = 11969i32;
                    } else {
                        _gotoNext = 11919i32;
                    };
                } else if (__value__ == (11969i32)) {
                    stdgo._internal.internal.cpu.Cpu__options._options[(_i_11919 : stdgo.GoInt)].specified = true;
                    stdgo._internal.internal.cpu.Cpu__options._options[(_i_11919 : stdgo.GoInt)].enable = _enable_11561;
                    _gotoNext = 11169i32;
                } else if (__value__ == (12059i32)) {
                    _i_11919 = 0i32;
                    _gotoNext = 12060i32;
                } else if (__value__ == (12060i32)) {
                    if (_i_11919 < (stdgo._internal.internal.cpu.Cpu__options._options.length)) {
                        _gotoNext = 11938i32;
                    } else {
                        _gotoNext = 12065i32;
                    };
                } else if (__value__ == (12065i32)) {
                    stdgo.Go.print(("GODEBUG: unknown cpu feature \"" : stdgo.GoString), _key_11495, ("\"\n" : stdgo.GoString));
                    _gotoNext = 11169i32;
                } else if (__value__ == (12124i32)) {
                    if ((0i32 : stdgo.GoInt) < (stdgo._internal.internal.cpu.Cpu__options._options.length)) {
                        _gotoNext = 12337i32;
                    } else {
                        _gotoNext = 12340i32;
                    };
                } else if (__value__ == (12150i32)) {
                    _o_12131 = stdgo._internal.internal.cpu.Cpu__options._options[(_i_12136_0 : stdgo.GoInt)];
                    if (!_o_12131.specified) {
                        _gotoNext = 12170i32;
                    } else {
                        _gotoNext = 12191i32;
                    };
                } else if (__value__ == (12170i32)) {
                    _i_12136_0++;
                    _gotoNext = 12338i32;
                } else if (__value__ == (12191i32)) {
                    if ((_o_12131.enable && !_o_12131.feature.value : Bool)) {
                        _gotoNext = 12218i32;
                    } else {
                        _gotoNext = 12315i32;
                    };
                } else if (__value__ == (12218i32)) {
                    stdgo.Go.print(("GODEBUG: can not enable \"" : stdgo.GoString), _o_12131.name, ("\", missing CPU support\n" : stdgo.GoString));
                    _i_12136_0++;
                    _gotoNext = 12338i32;
                } else if (__value__ == (12315i32)) {
                    _o_12131.feature.value = _o_12131.enable;
                    _i_12136_0++;
                    _gotoNext = 12338i32;
                } else if (__value__ == (12337i32)) {
                    {
                        final __tmp__0 = 0i32;
                        final __tmp__1 = stdgo._internal.internal.cpu.Cpu__options._options[(0i32 : stdgo.GoInt)];
                        _i_12136_0 = __tmp__0;
                        _o_12131 = __tmp__1;
                    };
                    _gotoNext = 12338i32;
                } else if (__value__ == (12338i32)) {
                    if (_i_12136_0 < (stdgo._internal.internal.cpu.Cpu__options._options.length)) {
                        _gotoNext = 12150i32;
                    } else {
                        _gotoNext = 12340i32;
                    };
                } else if (__value__ == (12340i32)) {
                    _gotoNext = -1i32;
                };
            };
        };
    }
