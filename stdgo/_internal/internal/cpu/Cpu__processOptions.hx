package stdgo._internal.internal.cpu;
function _processOptions(_env:stdgo.GoString):Void {
        var _key_326931:stdgo.GoString = ("" : stdgo.GoString);
        var _field_326623:stdgo.GoString = ("" : stdgo.GoString);
        var _fieldBreak = false;
        var _o_327567:stdgo._internal.internal.cpu.Cpu_T_option.T_option = ({} : stdgo._internal.internal.cpu.Cpu_T_option.T_option);
        var _i_327355:stdgo.GoInt = (0 : stdgo.GoInt);
        var _i_327237:stdgo.GoInt = (0 : stdgo.GoInt);
        var _enable_326997:Bool = false;
        var _value_326936:stdgo.GoString = ("" : stdgo.GoString);
        var _i_326637:stdgo.GoInt = (0 : stdgo.GoInt);
        var _i_327572_0:stdgo.GoInt = (0 : stdgo.GoInt);
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    _gotoNext = 326597i32;
                } else if (__value__ == (326597i32)) {
                    var __blank__ = 0i32;
                    _fieldBreak = false;
                    _gotoNext = 326605i32;
                } else if (__value__ == (326605i32)) {
                    if (!_fieldBreak && (_env != stdgo.Go.str())) {
                        _gotoNext = 326619i32;
                    } else {
                        _gotoNext = 327560i32;
                    };
                } else if (__value__ == (326619i32)) {
                    _field_326623 = stdgo.Go.str()?.__copy__();
                    _i_326637 = stdgo._internal.internal.cpu.Cpu__indexByte._indexByte(_env?.__copy__(), (44 : stdgo.GoUInt8));
                    if ((_i_326637 < (0 : stdgo.GoInt) : Bool)) {
                        _gotoNext = 326673i32;
                    } else {
                        _gotoNext = 326708i32;
                    };
                } else if (__value__ == (326673i32)) {
                    {
                        final __tmp__0 = _env?.__copy__();
                        final __tmp__1 = stdgo.Go.str()?.__copy__();
                        _field_326623 = __tmp__0;
                        _env = __tmp__1;
                    };
                    _gotoNext = 326751i32;
                } else if (__value__ == (326708i32)) {
                    _gotoNext = 326708i32;
                    {
                        final __tmp__0 = (_env.__slice__(0, _i_326637) : stdgo.GoString)?.__copy__();
                        final __tmp__1 = (_env.__slice__((_i_326637 + (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        _field_326623 = __tmp__0;
                        _env = __tmp__1;
                    };
                    var __blank__ = 0i32;
                    _gotoNext = 326751i32;
                } else if (__value__ == (326751i32)) {
                    if ((((_field_326623.length) < (4 : stdgo.GoInt) : Bool) || ((_field_326623.__slice__(0, (4 : stdgo.GoInt)) : stdgo.GoString) != ("cpu." : stdgo.GoString)) : Bool)) {
                        _gotoNext = 326792i32;
                    } else {
                        _gotoNext = 326812i32;
                    };
                } else if (__value__ == (326792i32)) {
                    var __blank__ = 0i32;
                    _gotoNext = 326605i32;
                } else if (__value__ == (326812i32)) {
                    _i_326637 = stdgo._internal.internal.cpu.Cpu__indexByte._indexByte(_field_326623?.__copy__(), (61 : stdgo.GoUInt8));
                    if ((_i_326637 < (0 : stdgo.GoInt) : Bool)) {
                        _gotoNext = 326849i32;
                    } else {
                        _gotoNext = 326931i32;
                    };
                } else if (__value__ == (326849i32)) {
                    stdgo.Go.print(("GODEBUG: no value specified for \"" : stdgo.GoString), _field_326623, ("\"\n" : stdgo.GoString));
                    var __blank__ = 0i32;
                    _gotoNext = 326605i32;
                } else if (__value__ == (326931i32)) {
                    {
                        final __tmp__0 = (_field_326623.__slice__((4 : stdgo.GoInt), _i_326637) : stdgo.GoString)?.__copy__();
                        final __tmp__1 = (_field_326623.__slice__((_i_326637 + (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        _key_326931 = __tmp__0;
                        _value_326936 = __tmp__1;
                    };
                    _gotoNext = 327011i32;
                } else if (__value__ == (327011i32)) {
                    {
                        final __value__ = _value_326936;
                        if (__value__ == (("on" : stdgo.GoString))) {
                            _gotoNext = 327028i32;
                        } else if (__value__ == (("off" : stdgo.GoString))) {
                            _gotoNext = 327058i32;
                        } else {
                            _gotoNext = 327090i32;
                        };
                    };
                } else if (__value__ == (327028i32)) {
                    _enable_326997 = true;
                    _gotoNext = 327212i32;
                } else if (__value__ == (327058i32)) {
                    _enable_326997 = false;
                    _gotoNext = 327212i32;
                } else if (__value__ == (327090i32)) {
                    stdgo.Go.print(("GODEBUG: value \"" : stdgo.GoString), _value_326936, ("\" not supported for cpu option \"" : stdgo.GoString), _key_326931, ("\"\n" : stdgo.GoString));
                    _gotoNext = 326605i32;
                } else if (__value__ == (327212i32)) {
                    if (_key_326931 == (("all" : stdgo.GoString))) {
                        _gotoNext = 327228i32;
                    } else {
                        _gotoNext = 327351i32;
                    };
                } else if (__value__ == (327228i32)) {
                    if ((0i32 : stdgo.GoInt) < (stdgo._internal.internal.cpu.Cpu__options._options.length)) {
                        _gotoNext = 327323i32;
                    } else {
                        _gotoNext = 327329i32;
                    };
                } else if (__value__ == (327256i32)) {
                    stdgo._internal.internal.cpu.Cpu__options._options[(_i_327237 : stdgo.GoInt)].specified = true;
                    stdgo._internal.internal.cpu.Cpu__options._options[(_i_327237 : stdgo.GoInt)].enable = _enable_326997;
                    _i_327237++;
                    _gotoNext = 327324i32;
                } else if (__value__ == (327323i32)) {
                    _i_327237 = 0i32;
                    _gotoNext = 327324i32;
                } else if (__value__ == (327324i32)) {
                    if (_i_327237 < (stdgo._internal.internal.cpu.Cpu__options._options.length)) {
                        _gotoNext = 327256i32;
                    } else {
                        _gotoNext = 327329i32;
                    };
                } else if (__value__ == (327329i32)) {
                    _gotoNext = 326605i32;
                } else if (__value__ == (327351i32)) {
                    if ((0i32 : stdgo.GoInt) < (stdgo._internal.internal.cpu.Cpu__options._options.length)) {
                        _gotoNext = 327495i32;
                    } else {
                        _gotoNext = 327501i32;
                    };
                } else if (__value__ == (327355i32)) {
                    _i_327355++;
                    _gotoNext = 327496i32;
                } else if (__value__ == (327374i32)) {
                    if (stdgo._internal.internal.cpu.Cpu__options._options[(_i_327355 : stdgo.GoInt)].name == (_key_326931)) {
                        _gotoNext = 327405i32;
                    } else {
                        _gotoNext = 327355i32;
                    };
                } else if (__value__ == (327405i32)) {
                    stdgo._internal.internal.cpu.Cpu__options._options[(_i_327355 : stdgo.GoInt)].specified = true;
                    stdgo._internal.internal.cpu.Cpu__options._options[(_i_327355 : stdgo.GoInt)].enable = _enable_326997;
                    _gotoNext = 326605i32;
                } else if (__value__ == (327495i32)) {
                    _i_327355 = 0i32;
                    _gotoNext = 327496i32;
                } else if (__value__ == (327496i32)) {
                    if (_i_327355 < (stdgo._internal.internal.cpu.Cpu__options._options.length)) {
                        _gotoNext = 327374i32;
                    } else {
                        _gotoNext = 327501i32;
                    };
                } else if (__value__ == (327501i32)) {
                    stdgo.Go.print(("GODEBUG: unknown cpu feature \"" : stdgo.GoString), _key_326931, ("\"\n" : stdgo.GoString));
                    _gotoNext = 326605i32;
                } else if (__value__ == (327560i32)) {
                    if ((0i32 : stdgo.GoInt) < (stdgo._internal.internal.cpu.Cpu__options._options.length)) {
                        _gotoNext = 327773i32;
                    } else {
                        _gotoNext = 327776i32;
                    };
                } else if (__value__ == (327586i32)) {
                    _o_327567 = stdgo._internal.internal.cpu.Cpu__options._options[(_i_327572_0 : stdgo.GoInt)];
                    if (!_o_327567.specified) {
                        _gotoNext = 327606i32;
                    } else {
                        _gotoNext = 327627i32;
                    };
                } else if (__value__ == (327606i32)) {
                    _i_327572_0++;
                    _gotoNext = 327774i32;
                } else if (__value__ == (327627i32)) {
                    if ((_o_327567.enable && !_o_327567.feature.value : Bool)) {
                        _gotoNext = 327654i32;
                    } else {
                        _gotoNext = 327751i32;
                    };
                } else if (__value__ == (327654i32)) {
                    stdgo.Go.print(("GODEBUG: can not enable \"" : stdgo.GoString), _o_327567.name, ("\", missing CPU support\n" : stdgo.GoString));
                    _i_327572_0++;
                    _gotoNext = 327774i32;
                } else if (__value__ == (327751i32)) {
                    _o_327567.feature.value = _o_327567.enable;
                    _i_327572_0++;
                    _gotoNext = 327774i32;
                } else if (__value__ == (327773i32)) {
                    {
                        final __tmp__0 = 0i32;
                        final __tmp__1 = stdgo._internal.internal.cpu.Cpu__options._options[(0i32 : stdgo.GoInt)];
                        _i_327572_0 = __tmp__0;
                        _o_327567 = __tmp__1;
                    };
                    _gotoNext = 327774i32;
                } else if (__value__ == (327774i32)) {
                    if (_i_327572_0 < (stdgo._internal.internal.cpu.Cpu__options._options.length)) {
                        _gotoNext = 327586i32;
                    } else {
                        _gotoNext = 327776i32;
                    };
                } else if (__value__ == (327776i32)) {
                    _gotoNext = -1i32;
                };
            };
        };
    }
