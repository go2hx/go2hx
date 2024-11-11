package stdgo._internal.internal.cpu;
function _processOptions(_env:stdgo.GoString):Void {
        var _o_273731:stdgo._internal.internal.cpu.Cpu_T_option.T_option = ({} : stdgo._internal.internal.cpu.Cpu_T_option.T_option);
        var _i_273736_0:stdgo.GoInt = (0 : stdgo.GoInt);
        var _i_273401:stdgo.GoInt = (0 : stdgo.GoInt);
        var _enable_273161:Bool = false;
        var _value_273100:stdgo.GoString = ("" : stdgo.GoString);
        var _i_272801:stdgo.GoInt = (0 : stdgo.GoInt);
        var _field_272787:stdgo.GoString = ("" : stdgo.GoString);
        var _fieldBreak = false;
        var _i_273519:stdgo.GoInt = (0 : stdgo.GoInt);
        var _key_273095:stdgo.GoString = ("" : stdgo.GoString);
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    _gotoNext = 272761i32;
                } else if (__value__ == (272761i32)) {
                    var __blank__ = 0i32;
                    _fieldBreak = false;
                    _gotoNext = 272769i32;
                } else if (__value__ == (272769i32)) {
                    if (!_fieldBreak && (_env != stdgo.Go.str())) {
                        _gotoNext = 272783i32;
                    } else {
                        _gotoNext = 273724i32;
                    };
                } else if (__value__ == (272783i32)) {
                    _field_272787 = stdgo.Go.str()?.__copy__();
                    _i_272801 = stdgo._internal.internal.cpu.Cpu__indexByte._indexByte(_env?.__copy__(), (44 : stdgo.GoUInt8));
                    if ((_i_272801 < (0 : stdgo.GoInt) : Bool)) {
                        _gotoNext = 272837i32;
                    } else {
                        _gotoNext = 272872i32;
                    };
                } else if (__value__ == (272837i32)) {
                    {
                        final __tmp__0 = _env?.__copy__();
                        final __tmp__1 = stdgo.Go.str()?.__copy__();
                        _field_272787 = __tmp__0;
                        _env = __tmp__1;
                    };
                    _gotoNext = 272915i32;
                } else if (__value__ == (272872i32)) {
                    _gotoNext = 272872i32;
                    {
                        final __tmp__0 = (_env.__slice__(0, _i_272801) : stdgo.GoString)?.__copy__();
                        final __tmp__1 = (_env.__slice__((_i_272801 + (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        _field_272787 = __tmp__0;
                        _env = __tmp__1;
                    };
                    var __blank__ = 0i32;
                    _gotoNext = 272915i32;
                } else if (__value__ == (272915i32)) {
                    if ((((_field_272787.length) < (4 : stdgo.GoInt) : Bool) || ((_field_272787.__slice__(0, (4 : stdgo.GoInt)) : stdgo.GoString) != ("cpu." : stdgo.GoString)) : Bool)) {
                        _gotoNext = 272956i32;
                    } else {
                        _gotoNext = 272976i32;
                    };
                } else if (__value__ == (272956i32)) {
                    var __blank__ = 0i32;
                    _gotoNext = 272769i32;
                } else if (__value__ == (272976i32)) {
                    _i_272801 = stdgo._internal.internal.cpu.Cpu__indexByte._indexByte(_field_272787?.__copy__(), (61 : stdgo.GoUInt8));
                    if ((_i_272801 < (0 : stdgo.GoInt) : Bool)) {
                        _gotoNext = 273013i32;
                    } else {
                        _gotoNext = 273095i32;
                    };
                } else if (__value__ == (273013i32)) {
                    stdgo.Go.print(("GODEBUG: no value specified for \"" : stdgo.GoString), _field_272787, ("\"\n" : stdgo.GoString));
                    var __blank__ = 0i32;
                    _gotoNext = 272769i32;
                } else if (__value__ == (273095i32)) {
                    {
                        final __tmp__0 = (_field_272787.__slice__((4 : stdgo.GoInt), _i_272801) : stdgo.GoString)?.__copy__();
                        final __tmp__1 = (_field_272787.__slice__((_i_272801 + (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        _key_273095 = __tmp__0;
                        _value_273100 = __tmp__1;
                    };
                    _gotoNext = 273175i32;
                } else if (__value__ == (273175i32)) {
                    {
                        final __value__ = _value_273100;
                        if (__value__ == (("on" : stdgo.GoString))) {
                            _gotoNext = 273192i32;
                        } else if (__value__ == (("off" : stdgo.GoString))) {
                            _gotoNext = 273222i32;
                        } else {
                            _gotoNext = 273254i32;
                        };
                    };
                } else if (__value__ == (273192i32)) {
                    _enable_273161 = true;
                    _gotoNext = 273376i32;
                } else if (__value__ == (273222i32)) {
                    _enable_273161 = false;
                    _gotoNext = 273376i32;
                } else if (__value__ == (273254i32)) {
                    stdgo.Go.print(("GODEBUG: value \"" : stdgo.GoString), _value_273100, ("\" not supported for cpu option \"" : stdgo.GoString), _key_273095, ("\"\n" : stdgo.GoString));
                    _gotoNext = 272769i32;
                } else if (__value__ == (273376i32)) {
                    if (_key_273095 == (("all" : stdgo.GoString))) {
                        _gotoNext = 273392i32;
                    } else {
                        _gotoNext = 273515i32;
                    };
                } else if (__value__ == (273392i32)) {
                    if ((0i32 : stdgo.GoInt) < (stdgo._internal.internal.cpu.Cpu__options._options.length)) {
                        _gotoNext = 273487i32;
                    } else {
                        _gotoNext = 273493i32;
                    };
                } else if (__value__ == (273420i32)) {
                    stdgo._internal.internal.cpu.Cpu__options._options[(_i_273401 : stdgo.GoInt)].specified = true;
                    stdgo._internal.internal.cpu.Cpu__options._options[(_i_273401 : stdgo.GoInt)].enable = _enable_273161;
                    _i_273401++;
                    _gotoNext = 273488i32;
                } else if (__value__ == (273487i32)) {
                    _i_273401 = 0i32;
                    _gotoNext = 273488i32;
                } else if (__value__ == (273488i32)) {
                    if (_i_273401 < (stdgo._internal.internal.cpu.Cpu__options._options.length)) {
                        _gotoNext = 273420i32;
                    } else {
                        _gotoNext = 273493i32;
                    };
                } else if (__value__ == (273493i32)) {
                    _gotoNext = 272769i32;
                } else if (__value__ == (273515i32)) {
                    if ((0i32 : stdgo.GoInt) < (stdgo._internal.internal.cpu.Cpu__options._options.length)) {
                        _gotoNext = 273659i32;
                    } else {
                        _gotoNext = 273665i32;
                    };
                } else if (__value__ == (273519i32)) {
                    _i_273519++;
                    _gotoNext = 273660i32;
                } else if (__value__ == (273538i32)) {
                    if (stdgo._internal.internal.cpu.Cpu__options._options[(_i_273519 : stdgo.GoInt)].name == (_key_273095)) {
                        _gotoNext = 273569i32;
                    } else {
                        _gotoNext = 273519i32;
                    };
                } else if (__value__ == (273569i32)) {
                    stdgo._internal.internal.cpu.Cpu__options._options[(_i_273519 : stdgo.GoInt)].specified = true;
                    stdgo._internal.internal.cpu.Cpu__options._options[(_i_273519 : stdgo.GoInt)].enable = _enable_273161;
                    _gotoNext = 272769i32;
                } else if (__value__ == (273659i32)) {
                    _i_273519 = 0i32;
                    _gotoNext = 273660i32;
                } else if (__value__ == (273660i32)) {
                    if (_i_273519 < (stdgo._internal.internal.cpu.Cpu__options._options.length)) {
                        _gotoNext = 273538i32;
                    } else {
                        _gotoNext = 273665i32;
                    };
                } else if (__value__ == (273665i32)) {
                    stdgo.Go.print(("GODEBUG: unknown cpu feature \"" : stdgo.GoString), _key_273095, ("\"\n" : stdgo.GoString));
                    _gotoNext = 272769i32;
                } else if (__value__ == (273724i32)) {
                    if ((0i32 : stdgo.GoInt) < (stdgo._internal.internal.cpu.Cpu__options._options.length)) {
                        _gotoNext = 273937i32;
                    } else {
                        _gotoNext = 273940i32;
                    };
                } else if (__value__ == (273750i32)) {
                    _o_273731 = stdgo._internal.internal.cpu.Cpu__options._options[(_i_273736_0 : stdgo.GoInt)];
                    if (!_o_273731.specified) {
                        _gotoNext = 273770i32;
                    } else {
                        _gotoNext = 273791i32;
                    };
                } else if (__value__ == (273770i32)) {
                    _i_273736_0++;
                    _gotoNext = 273938i32;
                } else if (__value__ == (273791i32)) {
                    if ((_o_273731.enable && !_o_273731.feature.value : Bool)) {
                        _gotoNext = 273818i32;
                    } else {
                        _gotoNext = 273915i32;
                    };
                } else if (__value__ == (273818i32)) {
                    stdgo.Go.print(("GODEBUG: can not enable \"" : stdgo.GoString), _o_273731.name, ("\", missing CPU support\n" : stdgo.GoString));
                    _i_273736_0++;
                    _gotoNext = 273938i32;
                } else if (__value__ == (273915i32)) {
                    _o_273731.feature.value = _o_273731.enable;
                    _i_273736_0++;
                    _gotoNext = 273938i32;
                } else if (__value__ == (273937i32)) {
                    {
                        final __tmp__0 = 0i32;
                        final __tmp__1 = stdgo._internal.internal.cpu.Cpu__options._options[(0i32 : stdgo.GoInt)];
                        _i_273736_0 = __tmp__0;
                        _o_273731 = __tmp__1;
                    };
                    _gotoNext = 273938i32;
                } else if (__value__ == (273938i32)) {
                    if (_i_273736_0 < (stdgo._internal.internal.cpu.Cpu__options._options.length)) {
                        _gotoNext = 273750i32;
                    } else {
                        _gotoNext = 273940i32;
                    };
                } else if (__value__ == (273940i32)) {
                    _gotoNext = -1i32;
                };
            };
        };
    }
