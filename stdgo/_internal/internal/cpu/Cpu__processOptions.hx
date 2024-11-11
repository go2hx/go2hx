package stdgo._internal.internal.cpu;
function _processOptions(_env:stdgo.GoString):Void {
        var _i_58073_0:stdgo.GoInt = (0 : stdgo.GoInt);
        var _value_57437:stdgo.GoString = ("" : stdgo.GoString);
        var _key_57432:stdgo.GoString = ("" : stdgo.GoString);
        var _o_58068:stdgo._internal.internal.cpu.Cpu_T_option.T_option = ({} : stdgo._internal.internal.cpu.Cpu_T_option.T_option);
        var _i_57138:stdgo.GoInt = (0 : stdgo.GoInt);
        var _field_57124:stdgo.GoString = ("" : stdgo.GoString);
        var _fieldBreak = false;
        var _i_57856:stdgo.GoInt = (0 : stdgo.GoInt);
        var _i_57738:stdgo.GoInt = (0 : stdgo.GoInt);
        var _enable_57498:Bool = false;
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    _gotoNext = 57098i32;
                } else if (__value__ == (57098i32)) {
                    var __blank__ = 0i32;
                    _fieldBreak = false;
                    _gotoNext = 57106i32;
                } else if (__value__ == (57106i32)) {
                    if (!_fieldBreak && (_env != stdgo.Go.str())) {
                        _gotoNext = 57120i32;
                    } else {
                        _gotoNext = 58061i32;
                    };
                } else if (__value__ == (57120i32)) {
                    _field_57124 = stdgo.Go.str()?.__copy__();
                    _i_57138 = stdgo._internal.internal.cpu.Cpu__indexByte._indexByte(_env?.__copy__(), (44 : stdgo.GoUInt8));
                    if ((_i_57138 < (0 : stdgo.GoInt) : Bool)) {
                        _gotoNext = 57174i32;
                    } else {
                        _gotoNext = 57209i32;
                    };
                } else if (__value__ == (57174i32)) {
                    {
                        final __tmp__0 = _env?.__copy__();
                        final __tmp__1 = stdgo.Go.str()?.__copy__();
                        _field_57124 = __tmp__0;
                        _env = __tmp__1;
                    };
                    _gotoNext = 57252i32;
                } else if (__value__ == (57209i32)) {
                    _gotoNext = 57209i32;
                    {
                        final __tmp__0 = (_env.__slice__(0, _i_57138) : stdgo.GoString)?.__copy__();
                        final __tmp__1 = (_env.__slice__((_i_57138 + (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        _field_57124 = __tmp__0;
                        _env = __tmp__1;
                    };
                    var __blank__ = 0i32;
                    _gotoNext = 57252i32;
                } else if (__value__ == (57252i32)) {
                    if ((((_field_57124.length) < (4 : stdgo.GoInt) : Bool) || ((_field_57124.__slice__(0, (4 : stdgo.GoInt)) : stdgo.GoString) != ("cpu." : stdgo.GoString)) : Bool)) {
                        _gotoNext = 57293i32;
                    } else {
                        _gotoNext = 57313i32;
                    };
                } else if (__value__ == (57293i32)) {
                    var __blank__ = 0i32;
                    _gotoNext = 57106i32;
                } else if (__value__ == (57313i32)) {
                    _i_57138 = stdgo._internal.internal.cpu.Cpu__indexByte._indexByte(_field_57124?.__copy__(), (61 : stdgo.GoUInt8));
                    if ((_i_57138 < (0 : stdgo.GoInt) : Bool)) {
                        _gotoNext = 57350i32;
                    } else {
                        _gotoNext = 57432i32;
                    };
                } else if (__value__ == (57350i32)) {
                    stdgo.Go.print(("GODEBUG: no value specified for \"" : stdgo.GoString), _field_57124, ("\"\n" : stdgo.GoString));
                    var __blank__ = 0i32;
                    _gotoNext = 57106i32;
                } else if (__value__ == (57432i32)) {
                    {
                        final __tmp__0 = (_field_57124.__slice__((4 : stdgo.GoInt), _i_57138) : stdgo.GoString)?.__copy__();
                        final __tmp__1 = (_field_57124.__slice__((_i_57138 + (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        _key_57432 = __tmp__0;
                        _value_57437 = __tmp__1;
                    };
                    _gotoNext = 57512i32;
                } else if (__value__ == (57512i32)) {
                    {
                        final __value__ = _value_57437;
                        if (__value__ == (("on" : stdgo.GoString))) {
                            _gotoNext = 57529i32;
                        } else if (__value__ == (("off" : stdgo.GoString))) {
                            _gotoNext = 57559i32;
                        } else {
                            _gotoNext = 57591i32;
                        };
                    };
                } else if (__value__ == (57529i32)) {
                    _enable_57498 = true;
                    _gotoNext = 57713i32;
                } else if (__value__ == (57559i32)) {
                    _enable_57498 = false;
                    _gotoNext = 57713i32;
                } else if (__value__ == (57591i32)) {
                    stdgo.Go.print(("GODEBUG: value \"" : stdgo.GoString), _value_57437, ("\" not supported for cpu option \"" : stdgo.GoString), _key_57432, ("\"\n" : stdgo.GoString));
                    _gotoNext = 57106i32;
                } else if (__value__ == (57713i32)) {
                    if (_key_57432 == (("all" : stdgo.GoString))) {
                        _gotoNext = 57729i32;
                    } else {
                        _gotoNext = 57852i32;
                    };
                } else if (__value__ == (57729i32)) {
                    if ((0i32 : stdgo.GoInt) < (stdgo._internal.internal.cpu.Cpu__options._options.length)) {
                        _gotoNext = 57824i32;
                    } else {
                        _gotoNext = 57830i32;
                    };
                } else if (__value__ == (57757i32)) {
                    stdgo._internal.internal.cpu.Cpu__options._options[(_i_57738 : stdgo.GoInt)].specified = true;
                    stdgo._internal.internal.cpu.Cpu__options._options[(_i_57738 : stdgo.GoInt)].enable = _enable_57498;
                    _i_57738++;
                    _gotoNext = 57825i32;
                } else if (__value__ == (57824i32)) {
                    _i_57738 = 0i32;
                    _gotoNext = 57825i32;
                } else if (__value__ == (57825i32)) {
                    if (_i_57738 < (stdgo._internal.internal.cpu.Cpu__options._options.length)) {
                        _gotoNext = 57757i32;
                    } else {
                        _gotoNext = 57830i32;
                    };
                } else if (__value__ == (57830i32)) {
                    _gotoNext = 57106i32;
                } else if (__value__ == (57852i32)) {
                    if ((0i32 : stdgo.GoInt) < (stdgo._internal.internal.cpu.Cpu__options._options.length)) {
                        _gotoNext = 57996i32;
                    } else {
                        _gotoNext = 58002i32;
                    };
                } else if (__value__ == (57856i32)) {
                    _i_57856++;
                    _gotoNext = 57997i32;
                } else if (__value__ == (57875i32)) {
                    if (stdgo._internal.internal.cpu.Cpu__options._options[(_i_57856 : stdgo.GoInt)].name == (_key_57432)) {
                        _gotoNext = 57906i32;
                    } else {
                        _gotoNext = 57856i32;
                    };
                } else if (__value__ == (57906i32)) {
                    stdgo._internal.internal.cpu.Cpu__options._options[(_i_57856 : stdgo.GoInt)].specified = true;
                    stdgo._internal.internal.cpu.Cpu__options._options[(_i_57856 : stdgo.GoInt)].enable = _enable_57498;
                    _gotoNext = 57106i32;
                } else if (__value__ == (57996i32)) {
                    _i_57856 = 0i32;
                    _gotoNext = 57997i32;
                } else if (__value__ == (57997i32)) {
                    if (_i_57856 < (stdgo._internal.internal.cpu.Cpu__options._options.length)) {
                        _gotoNext = 57875i32;
                    } else {
                        _gotoNext = 58002i32;
                    };
                } else if (__value__ == (58002i32)) {
                    stdgo.Go.print(("GODEBUG: unknown cpu feature \"" : stdgo.GoString), _key_57432, ("\"\n" : stdgo.GoString));
                    _gotoNext = 57106i32;
                } else if (__value__ == (58061i32)) {
                    if ((0i32 : stdgo.GoInt) < (stdgo._internal.internal.cpu.Cpu__options._options.length)) {
                        _gotoNext = 58274i32;
                    } else {
                        _gotoNext = 58277i32;
                    };
                } else if (__value__ == (58087i32)) {
                    _o_58068 = stdgo._internal.internal.cpu.Cpu__options._options[(_i_58073_0 : stdgo.GoInt)];
                    if (!_o_58068.specified) {
                        _gotoNext = 58107i32;
                    } else {
                        _gotoNext = 58128i32;
                    };
                } else if (__value__ == (58107i32)) {
                    _i_58073_0++;
                    _gotoNext = 58275i32;
                } else if (__value__ == (58128i32)) {
                    if ((_o_58068.enable && !_o_58068.feature.value : Bool)) {
                        _gotoNext = 58155i32;
                    } else {
                        _gotoNext = 58252i32;
                    };
                } else if (__value__ == (58155i32)) {
                    stdgo.Go.print(("GODEBUG: can not enable \"" : stdgo.GoString), _o_58068.name, ("\", missing CPU support\n" : stdgo.GoString));
                    _i_58073_0++;
                    _gotoNext = 58275i32;
                } else if (__value__ == (58252i32)) {
                    _o_58068.feature.value = _o_58068.enable;
                    _i_58073_0++;
                    _gotoNext = 58275i32;
                } else if (__value__ == (58274i32)) {
                    {
                        final __tmp__0 = 0i32;
                        final __tmp__1 = stdgo._internal.internal.cpu.Cpu__options._options[(0i32 : stdgo.GoInt)];
                        _i_58073_0 = __tmp__0;
                        _o_58068 = __tmp__1;
                    };
                    _gotoNext = 58275i32;
                } else if (__value__ == (58275i32)) {
                    if (_i_58073_0 < (stdgo._internal.internal.cpu.Cpu__options._options.length)) {
                        _gotoNext = 58087i32;
                    } else {
                        _gotoNext = 58277i32;
                    };
                } else if (__value__ == (58277i32)) {
                    _gotoNext = -1i32;
                };
            };
        };
    }
