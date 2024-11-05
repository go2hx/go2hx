package stdgo._internal.internal.cpu;
function _processOptions(_env:stdgo.GoString):Void {
        var _i_273813_0:stdgo.GoInt = (0 : stdgo.GoInt);
        var _enable_273238:Bool = false;
        var _fieldBreak = false;
        var _key_273172:stdgo.GoString = ("" : stdgo.GoString);
        var _i_272878:stdgo.GoInt = (0 : stdgo.GoInt);
        var _field_272864:stdgo.GoString = ("" : stdgo.GoString);
        var _o_273808:stdgo._internal.internal.cpu.Cpu_T_option.T_option = ({} : stdgo._internal.internal.cpu.Cpu_T_option.T_option);
        var _i_273596:stdgo.GoInt = (0 : stdgo.GoInt);
        var _i_273478:stdgo.GoInt = (0 : stdgo.GoInt);
        var _value_273177:stdgo.GoString = ("" : stdgo.GoString);
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    _gotoNext = 272838i32;
                } else if (__value__ == (272838i32)) {
                    var __blank__ = 0i32;
                    _fieldBreak = false;
                    _gotoNext = 272846i32;
                } else if (__value__ == (272846i32)) {
                    if (!_fieldBreak && (_env != stdgo.Go.str())) {
                        _gotoNext = 272860i32;
                    } else {
                        _gotoNext = 273801i32;
                    };
                } else if (__value__ == (272860i32)) {
                    _field_272864 = stdgo.Go.str()?.__copy__();
                    _i_272878 = stdgo._internal.internal.cpu.Cpu__indexByte._indexByte(_env?.__copy__(), (44 : stdgo.GoUInt8));
                    if ((_i_272878 < (0 : stdgo.GoInt) : Bool)) {
                        _gotoNext = 272914i32;
                    } else {
                        _gotoNext = 272949i32;
                    };
                } else if (__value__ == (272914i32)) {
                    {
                        final __tmp__0 = _env?.__copy__();
                        final __tmp__1 = stdgo.Go.str()?.__copy__();
                        _field_272864 = __tmp__0;
                        _env = __tmp__1;
                    };
                    _gotoNext = 272992i32;
                } else if (__value__ == (272949i32)) {
                    {
                        final __tmp__0 = (_env.__slice__(0, _i_272878) : stdgo.GoString)?.__copy__();
                        final __tmp__1 = (_env.__slice__((_i_272878 + (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        _field_272864 = __tmp__0;
                        _env = __tmp__1;
                    };
                    _gotoNext = 272992i32;
                } else if (__value__ == (272992i32)) {
                    if ((((_field_272864.length) < (4 : stdgo.GoInt) : Bool) || ((_field_272864.__slice__(0, (4 : stdgo.GoInt)) : stdgo.GoString) != ("cpu." : stdgo.GoString)) : Bool)) {
                        _gotoNext = 273033i32;
                    } else {
                        _gotoNext = 273053i32;
                    };
                } else if (__value__ == (273033i32)) {
                    var __blank__ = 0i32;
                    _gotoNext = 272846i32;
                } else if (__value__ == (273053i32)) {
                    _i_272878 = stdgo._internal.internal.cpu.Cpu__indexByte._indexByte(_field_272864?.__copy__(), (61 : stdgo.GoUInt8));
                    if ((_i_272878 < (0 : stdgo.GoInt) : Bool)) {
                        _gotoNext = 273090i32;
                    } else {
                        _gotoNext = 273172i32;
                    };
                } else if (__value__ == (273090i32)) {
                    stdgo.Go.print(("GODEBUG: no value specified for \"" : stdgo.GoString), _field_272864, ("\"\n" : stdgo.GoString));
                    var __blank__ = 0i32;
                    _gotoNext = 272846i32;
                } else if (__value__ == (273172i32)) {
                    {
                        final __tmp__0 = (_field_272864.__slice__((4 : stdgo.GoInt), _i_272878) : stdgo.GoString)?.__copy__();
                        final __tmp__1 = (_field_272864.__slice__((_i_272878 + (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        _key_273172 = __tmp__0;
                        _value_273177 = __tmp__1;
                    };
                    var __blank__ = 0i32;
                    _gotoNext = 273252i32;
                } else if (__value__ == (273252i32)) {
                    {
                        final __value__ = _value_273177;
                        if (__value__ == (("on" : stdgo.GoString))) {
                            _gotoNext = 273269i32;
                        } else if (__value__ == (("off" : stdgo.GoString))) {
                            _gotoNext = 273299i32;
                        } else {
                            _gotoNext = 273331i32;
                        };
                    };
                } else if (__value__ == (273269i32)) {
                    _enable_273238 = true;
                    _gotoNext = 273453i32;
                } else if (__value__ == (273299i32)) {
                    _enable_273238 = false;
                    _gotoNext = 273453i32;
                } else if (__value__ == (273331i32)) {
                    stdgo.Go.print(("GODEBUG: value \"" : stdgo.GoString), _value_273177, ("\" not supported for cpu option \"" : stdgo.GoString), _key_273172, ("\"\n" : stdgo.GoString));
                    _gotoNext = 272846i32;
                } else if (__value__ == (273453i32)) {
                    if (_key_273172 == (("all" : stdgo.GoString))) {
                        _gotoNext = 273469i32;
                    } else {
                        _gotoNext = 273592i32;
                    };
                } else if (__value__ == (273469i32)) {
                    if ((0i32 : stdgo.GoInt) < (stdgo._internal.internal.cpu.Cpu__options._options.length)) {
                        _gotoNext = 273564i32;
                    } else {
                        _gotoNext = 273570i32;
                    };
                } else if (__value__ == (273497i32)) {
                    stdgo._internal.internal.cpu.Cpu__options._options[(_i_273478 : stdgo.GoInt)].specified = true;
                    stdgo._internal.internal.cpu.Cpu__options._options[(_i_273478 : stdgo.GoInt)].enable = _enable_273238;
                    _i_273478++;
                    _gotoNext = 273565i32;
                } else if (__value__ == (273564i32)) {
                    _i_273478 = 0i32;
                    _gotoNext = 273565i32;
                } else if (__value__ == (273565i32)) {
                    if (_i_273478 < (stdgo._internal.internal.cpu.Cpu__options._options.length)) {
                        _gotoNext = 273497i32;
                    } else {
                        _gotoNext = 273570i32;
                    };
                } else if (__value__ == (273570i32)) {
                    _gotoNext = 272846i32;
                } else if (__value__ == (273592i32)) {
                    if ((0i32 : stdgo.GoInt) < (stdgo._internal.internal.cpu.Cpu__options._options.length)) {
                        _gotoNext = 273736i32;
                    } else {
                        _gotoNext = 273742i32;
                    };
                } else if (__value__ == (273596i32)) {
                    _i_273596++;
                    _gotoNext = 273737i32;
                } else if (__value__ == (273615i32)) {
                    if (stdgo._internal.internal.cpu.Cpu__options._options[(_i_273596 : stdgo.GoInt)].name == (_key_273172)) {
                        _gotoNext = 273646i32;
                    } else {
                        _gotoNext = 273596i32;
                    };
                } else if (__value__ == (273646i32)) {
                    stdgo._internal.internal.cpu.Cpu__options._options[(_i_273596 : stdgo.GoInt)].specified = true;
                    stdgo._internal.internal.cpu.Cpu__options._options[(_i_273596 : stdgo.GoInt)].enable = _enable_273238;
                    _gotoNext = 272846i32;
                } else if (__value__ == (273736i32)) {
                    _i_273596 = 0i32;
                    _gotoNext = 273737i32;
                } else if (__value__ == (273737i32)) {
                    if (_i_273596 < (stdgo._internal.internal.cpu.Cpu__options._options.length)) {
                        _gotoNext = 273615i32;
                    } else {
                        _gotoNext = 273742i32;
                    };
                } else if (__value__ == (273742i32)) {
                    stdgo.Go.print(("GODEBUG: unknown cpu feature \"" : stdgo.GoString), _key_273172, ("\"\n" : stdgo.GoString));
                    _gotoNext = 272846i32;
                } else if (__value__ == (273801i32)) {
                    if ((0i32 : stdgo.GoInt) < (stdgo._internal.internal.cpu.Cpu__options._options.length)) {
                        _gotoNext = 274014i32;
                    } else {
                        _gotoNext = 274017i32;
                    };
                } else if (__value__ == (273827i32)) {
                    _o_273808 = stdgo._internal.internal.cpu.Cpu__options._options[(_i_273813_0 : stdgo.GoInt)];
                    if (!_o_273808.specified) {
                        _gotoNext = 273847i32;
                    } else {
                        _gotoNext = 273868i32;
                    };
                } else if (__value__ == (273847i32)) {
                    _i_273813_0++;
                    _gotoNext = 274015i32;
                } else if (__value__ == (273868i32)) {
                    if ((_o_273808.enable && !_o_273808.feature.value : Bool)) {
                        _gotoNext = 273895i32;
                    } else {
                        _gotoNext = 273992i32;
                    };
                } else if (__value__ == (273895i32)) {
                    stdgo.Go.print(("GODEBUG: can not enable \"" : stdgo.GoString), _o_273808.name, ("\", missing CPU support\n" : stdgo.GoString));
                    _i_273813_0++;
                    _gotoNext = 274015i32;
                } else if (__value__ == (273992i32)) {
                    _o_273808.feature.value = _o_273808.enable;
                    _i_273813_0++;
                    _gotoNext = 274015i32;
                } else if (__value__ == (274014i32)) {
                    {
                        final __tmp__0 = 0i32;
                        final __tmp__1 = stdgo._internal.internal.cpu.Cpu__options._options[(0i32 : stdgo.GoInt)];
                        _i_273813_0 = __tmp__0;
                        _o_273808 = __tmp__1;
                    };
                    _gotoNext = 274015i32;
                } else if (__value__ == (274015i32)) {
                    if (_i_273813_0 < (stdgo._internal.internal.cpu.Cpu__options._options.length)) {
                        _gotoNext = 273827i32;
                    } else {
                        _gotoNext = 274017i32;
                    };
                } else if (__value__ == (274017i32)) {
                    _gotoNext = -1i32;
                };
            };
        };
    }
