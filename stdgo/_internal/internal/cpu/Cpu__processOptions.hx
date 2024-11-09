package stdgo._internal.internal.cpu;
function _processOptions(_env:stdgo.GoString):Void {
        var _o_303066:stdgo._internal.internal.cpu.Cpu_T_option.T_option = ({} : stdgo._internal.internal.cpu.Cpu_T_option.T_option);
        var _i_302854:stdgo.GoInt = (0 : stdgo.GoInt);
        var _value_302435:stdgo.GoString = ("" : stdgo.GoString);
        var _key_302430:stdgo.GoString = ("" : stdgo.GoString);
        var _i_302136:stdgo.GoInt = (0 : stdgo.GoInt);
        var _fieldBreak = false;
        var _i_303071_0:stdgo.GoInt = (0 : stdgo.GoInt);
        var _i_302736:stdgo.GoInt = (0 : stdgo.GoInt);
        var _enable_302496:Bool = false;
        var _field_302122:stdgo.GoString = ("" : stdgo.GoString);
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    _gotoNext = 302096i32;
                } else if (__value__ == (302096i32)) {
                    var __blank__ = 0i32;
                    _fieldBreak = false;
                    _gotoNext = 302104i32;
                } else if (__value__ == (302104i32)) {
                    if (!_fieldBreak && (_env != stdgo.Go.str())) {
                        _gotoNext = 302118i32;
                    } else {
                        _gotoNext = 303059i32;
                    };
                } else if (__value__ == (302118i32)) {
                    _field_302122 = stdgo.Go.str()?.__copy__();
                    _i_302136 = stdgo._internal.internal.cpu.Cpu__indexByte._indexByte(_env?.__copy__(), (44 : stdgo.GoUInt8));
                    if ((_i_302136 < (0 : stdgo.GoInt) : Bool)) {
                        _gotoNext = 302172i32;
                    } else {
                        _gotoNext = 302207i32;
                    };
                } else if (__value__ == (302172i32)) {
                    {
                        final __tmp__0 = _env?.__copy__();
                        final __tmp__1 = stdgo.Go.str()?.__copy__();
                        _field_302122 = __tmp__0;
                        _env = __tmp__1;
                    };
                    _gotoNext = 302250i32;
                } else if (__value__ == (302207i32)) {
                    _gotoNext = 302207i32;
                    {
                        final __tmp__0 = (_env.__slice__(0, _i_302136) : stdgo.GoString)?.__copy__();
                        final __tmp__1 = (_env.__slice__((_i_302136 + (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        _field_302122 = __tmp__0;
                        _env = __tmp__1;
                    };
                    var __blank__ = 0i32;
                    _gotoNext = 302250i32;
                } else if (__value__ == (302250i32)) {
                    if ((((_field_302122.length) < (4 : stdgo.GoInt) : Bool) || ((_field_302122.__slice__(0, (4 : stdgo.GoInt)) : stdgo.GoString) != ("cpu." : stdgo.GoString)) : Bool)) {
                        _gotoNext = 302291i32;
                    } else {
                        _gotoNext = 302311i32;
                    };
                } else if (__value__ == (302291i32)) {
                    var __blank__ = 0i32;
                    _gotoNext = 302104i32;
                } else if (__value__ == (302311i32)) {
                    _i_302136 = stdgo._internal.internal.cpu.Cpu__indexByte._indexByte(_field_302122?.__copy__(), (61 : stdgo.GoUInt8));
                    if ((_i_302136 < (0 : stdgo.GoInt) : Bool)) {
                        _gotoNext = 302348i32;
                    } else {
                        _gotoNext = 302430i32;
                    };
                } else if (__value__ == (302348i32)) {
                    stdgo.Go.print(("GODEBUG: no value specified for \"" : stdgo.GoString), _field_302122, ("\"\n" : stdgo.GoString));
                    var __blank__ = 0i32;
                    _gotoNext = 302104i32;
                } else if (__value__ == (302430i32)) {
                    {
                        final __tmp__0 = (_field_302122.__slice__((4 : stdgo.GoInt), _i_302136) : stdgo.GoString)?.__copy__();
                        final __tmp__1 = (_field_302122.__slice__((_i_302136 + (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        _key_302430 = __tmp__0;
                        _value_302435 = __tmp__1;
                    };
                    _gotoNext = 302510i32;
                } else if (__value__ == (302510i32)) {
                    {
                        final __value__ = _value_302435;
                        if (__value__ == (("on" : stdgo.GoString))) {
                            _gotoNext = 302527i32;
                        } else if (__value__ == (("off" : stdgo.GoString))) {
                            _gotoNext = 302557i32;
                        } else {
                            _gotoNext = 302589i32;
                        };
                    };
                } else if (__value__ == (302527i32)) {
                    _enable_302496 = true;
                    _gotoNext = 302711i32;
                } else if (__value__ == (302557i32)) {
                    _enable_302496 = false;
                    _gotoNext = 302711i32;
                } else if (__value__ == (302589i32)) {
                    stdgo.Go.print(("GODEBUG: value \"" : stdgo.GoString), _value_302435, ("\" not supported for cpu option \"" : stdgo.GoString), _key_302430, ("\"\n" : stdgo.GoString));
                    _gotoNext = 302104i32;
                } else if (__value__ == (302711i32)) {
                    if (_key_302430 == (("all" : stdgo.GoString))) {
                        _gotoNext = 302727i32;
                    } else {
                        _gotoNext = 302850i32;
                    };
                } else if (__value__ == (302727i32)) {
                    if ((0i32 : stdgo.GoInt) < (stdgo._internal.internal.cpu.Cpu__options._options.length)) {
                        _gotoNext = 302822i32;
                    } else {
                        _gotoNext = 302828i32;
                    };
                } else if (__value__ == (302755i32)) {
                    stdgo._internal.internal.cpu.Cpu__options._options[(_i_302736 : stdgo.GoInt)].specified = true;
                    stdgo._internal.internal.cpu.Cpu__options._options[(_i_302736 : stdgo.GoInt)].enable = _enable_302496;
                    _i_302736++;
                    _gotoNext = 302823i32;
                } else if (__value__ == (302822i32)) {
                    _i_302736 = 0i32;
                    _gotoNext = 302823i32;
                } else if (__value__ == (302823i32)) {
                    if (_i_302736 < (stdgo._internal.internal.cpu.Cpu__options._options.length)) {
                        _gotoNext = 302755i32;
                    } else {
                        _gotoNext = 302828i32;
                    };
                } else if (__value__ == (302828i32)) {
                    _gotoNext = 302104i32;
                } else if (__value__ == (302850i32)) {
                    if ((0i32 : stdgo.GoInt) < (stdgo._internal.internal.cpu.Cpu__options._options.length)) {
                        _gotoNext = 302994i32;
                    } else {
                        _gotoNext = 303000i32;
                    };
                } else if (__value__ == (302854i32)) {
                    _i_302854++;
                    _gotoNext = 302995i32;
                } else if (__value__ == (302873i32)) {
                    if (stdgo._internal.internal.cpu.Cpu__options._options[(_i_302854 : stdgo.GoInt)].name == (_key_302430)) {
                        _gotoNext = 302904i32;
                    } else {
                        _gotoNext = 302854i32;
                    };
                } else if (__value__ == (302904i32)) {
                    stdgo._internal.internal.cpu.Cpu__options._options[(_i_302854 : stdgo.GoInt)].specified = true;
                    stdgo._internal.internal.cpu.Cpu__options._options[(_i_302854 : stdgo.GoInt)].enable = _enable_302496;
                    _gotoNext = 302104i32;
                } else if (__value__ == (302994i32)) {
                    _i_302854 = 0i32;
                    _gotoNext = 302995i32;
                } else if (__value__ == (302995i32)) {
                    if (_i_302854 < (stdgo._internal.internal.cpu.Cpu__options._options.length)) {
                        _gotoNext = 302873i32;
                    } else {
                        _gotoNext = 303000i32;
                    };
                } else if (__value__ == (303000i32)) {
                    stdgo.Go.print(("GODEBUG: unknown cpu feature \"" : stdgo.GoString), _key_302430, ("\"\n" : stdgo.GoString));
                    _gotoNext = 302104i32;
                } else if (__value__ == (303059i32)) {
                    if ((0i32 : stdgo.GoInt) < (stdgo._internal.internal.cpu.Cpu__options._options.length)) {
                        _gotoNext = 303272i32;
                    } else {
                        _gotoNext = 303275i32;
                    };
                } else if (__value__ == (303085i32)) {
                    _o_303066 = stdgo._internal.internal.cpu.Cpu__options._options[(_i_303071_0 : stdgo.GoInt)];
                    if (!_o_303066.specified) {
                        _gotoNext = 303105i32;
                    } else {
                        _gotoNext = 303126i32;
                    };
                } else if (__value__ == (303105i32)) {
                    _i_303071_0++;
                    _gotoNext = 303273i32;
                } else if (__value__ == (303126i32)) {
                    if ((_o_303066.enable && !_o_303066.feature.value : Bool)) {
                        _gotoNext = 303153i32;
                    } else {
                        _gotoNext = 303250i32;
                    };
                } else if (__value__ == (303153i32)) {
                    stdgo.Go.print(("GODEBUG: can not enable \"" : stdgo.GoString), _o_303066.name, ("\", missing CPU support\n" : stdgo.GoString));
                    _i_303071_0++;
                    _gotoNext = 303273i32;
                } else if (__value__ == (303250i32)) {
                    _o_303066.feature.value = _o_303066.enable;
                    _i_303071_0++;
                    _gotoNext = 303273i32;
                } else if (__value__ == (303272i32)) {
                    {
                        final __tmp__0 = 0i32;
                        final __tmp__1 = stdgo._internal.internal.cpu.Cpu__options._options[(0i32 : stdgo.GoInt)];
                        _i_303071_0 = __tmp__0;
                        _o_303066 = __tmp__1;
                    };
                    _gotoNext = 303273i32;
                } else if (__value__ == (303273i32)) {
                    if (_i_303071_0 < (stdgo._internal.internal.cpu.Cpu__options._options.length)) {
                        _gotoNext = 303085i32;
                    } else {
                        _gotoNext = 303275i32;
                    };
                } else if (__value__ == (303275i32)) {
                    _gotoNext = -1i32;
                };
            };
        };
    }
