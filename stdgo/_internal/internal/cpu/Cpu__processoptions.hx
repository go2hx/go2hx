package stdgo._internal.internal.cpu;
function _processOptions(_env:stdgo.GoString):Void {
        var _o_244033:stdgo._internal.internal.cpu.Cpu_t_option.T_option = ({} : stdgo._internal.internal.cpu.Cpu_t_option.T_option);
        var _i_244038_0:stdgo.GoInt = (0 : stdgo.GoInt);
        var _i_243703:stdgo.GoInt = (0 : stdgo.GoInt);
        var _enable_243463:Bool = false;
        var _key_243397:stdgo.GoString = ("" : stdgo.GoString);
        var _field_243089:stdgo.GoString = ("" : stdgo.GoString);
        var _i_243821:stdgo.GoInt = (0 : stdgo.GoInt);
        var _value_243402:stdgo.GoString = ("" : stdgo.GoString);
        var _i_243103:stdgo.GoInt = (0 : stdgo.GoInt);
        var _fieldBreak = false;
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    _gotoNext = 243063i32;
                } else if (__value__ == (243063i32)) {
                    var __blank__ = 0i32;
                    _fieldBreak = false;
                    _gotoNext = 243071i32;
                } else if (__value__ == (243071i32)) {
                    if (!_fieldBreak && (_env != (stdgo.Go.str() : stdgo.GoString))) {
                        _gotoNext = 243085i32;
                    } else {
                        _gotoNext = 244026i32;
                    };
                } else if (__value__ == (243085i32)) {
                    _field_243089 = (stdgo.Go.str() : stdgo.GoString)?.__copy__();
                    _i_243103 = stdgo._internal.internal.cpu.Cpu__indexbyte._indexByte(_env?.__copy__(), (44 : stdgo.GoUInt8));
                    if ((_i_243103 < (0 : stdgo.GoInt) : Bool)) {
                        _gotoNext = 243139i32;
                    } else {
                        _gotoNext = 243174i32;
                    };
                } else if (__value__ == (243139i32)) {
                    {
                        final __tmp__0 = _env?.__copy__();
                        final __tmp__1 = (stdgo.Go.str() : stdgo.GoString)?.__copy__();
                        _field_243089 = __tmp__0;
                        _env = __tmp__1;
                    };
                    _gotoNext = 243217i32;
                } else if (__value__ == (243174i32)) {
                    _gotoNext = 243174i32;
                    {
                        final __tmp__0 = (_env.__slice__(0, _i_243103) : stdgo.GoString)?.__copy__();
                        final __tmp__1 = (_env.__slice__((_i_243103 + (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        _field_243089 = __tmp__0;
                        _env = __tmp__1;
                    };
                    var __blank__ = 0i32;
                    _gotoNext = 243217i32;
                } else if (__value__ == (243217i32)) {
                    if ((((_field_243089.length) < (4 : stdgo.GoInt) : Bool) || ((_field_243089.__slice__(0, (4 : stdgo.GoInt)) : stdgo.GoString) != ("cpu." : stdgo.GoString)) : Bool)) {
                        _gotoNext = 243258i32;
                    } else {
                        _gotoNext = 243278i32;
                    };
                } else if (__value__ == (243258i32)) {
                    var __blank__ = 0i32;
                    _gotoNext = 243071i32;
                } else if (__value__ == (243278i32)) {
                    _i_243103 = stdgo._internal.internal.cpu.Cpu__indexbyte._indexByte(_field_243089?.__copy__(), (61 : stdgo.GoUInt8));
                    if ((_i_243103 < (0 : stdgo.GoInt) : Bool)) {
                        _gotoNext = 243315i32;
                    } else {
                        _gotoNext = 243397i32;
                    };
                } else if (__value__ == (243315i32)) {
                    stdgo.Go.print(("GODEBUG: no value specified for \"" : stdgo.GoString), _field_243089, ("\"\n" : stdgo.GoString));
                    var __blank__ = 0i32;
                    _gotoNext = 243071i32;
                } else if (__value__ == (243397i32)) {
                    {
                        final __tmp__0 = (_field_243089.__slice__((4 : stdgo.GoInt), _i_243103) : stdgo.GoString)?.__copy__();
                        final __tmp__1 = (_field_243089.__slice__((_i_243103 + (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        _key_243397 = __tmp__0;
                        _value_243402 = __tmp__1;
                    };
                    _gotoNext = 243477i32;
                } else if (__value__ == (243477i32)) {
                    {
                        final __value__ = _value_243402;
                        if (__value__ == (("on" : stdgo.GoString))) {
                            _gotoNext = 243494i32;
                        } else if (__value__ == (("off" : stdgo.GoString))) {
                            _gotoNext = 243524i32;
                        } else {
                            _gotoNext = 243556i32;
                        };
                    };
                } else if (__value__ == (243494i32)) {
                    _enable_243463 = true;
                    _gotoNext = 243678i32;
                } else if (__value__ == (243524i32)) {
                    _enable_243463 = false;
                    _gotoNext = 243678i32;
                } else if (__value__ == (243556i32)) {
                    stdgo.Go.print(("GODEBUG: value \"" : stdgo.GoString), _value_243402, ("\" not supported for cpu option \"" : stdgo.GoString), _key_243397, ("\"\n" : stdgo.GoString));
                    _gotoNext = 243071i32;
                } else if (__value__ == (243678i32)) {
                    if (_key_243397 == (("all" : stdgo.GoString))) {
                        _gotoNext = 243694i32;
                    } else {
                        _gotoNext = 243817i32;
                    };
                } else if (__value__ == (243694i32)) {
                    if ((0i32 : stdgo.GoInt) < (stdgo._internal.internal.cpu.Cpu__options._options.length)) {
                        _gotoNext = 243789i32;
                    } else {
                        _gotoNext = 243795i32;
                    };
                } else if (__value__ == (243722i32)) {
                    stdgo._internal.internal.cpu.Cpu__options._options[(_i_243703 : stdgo.GoInt)].specified = true;
                    stdgo._internal.internal.cpu.Cpu__options._options[(_i_243703 : stdgo.GoInt)].enable = _enable_243463;
                    _i_243703++;
                    _gotoNext = 243790i32;
                } else if (__value__ == (243789i32)) {
                    _i_243703 = 0i32;
                    _gotoNext = 243790i32;
                } else if (__value__ == (243790i32)) {
                    if (_i_243703 < (stdgo._internal.internal.cpu.Cpu__options._options.length)) {
                        _gotoNext = 243722i32;
                    } else {
                        _gotoNext = 243795i32;
                    };
                } else if (__value__ == (243795i32)) {
                    _gotoNext = 243071i32;
                } else if (__value__ == (243817i32)) {
                    if ((0i32 : stdgo.GoInt) < (stdgo._internal.internal.cpu.Cpu__options._options.length)) {
                        _gotoNext = 243961i32;
                    } else {
                        _gotoNext = 243967i32;
                    };
                } else if (__value__ == (243821i32)) {
                    _i_243821++;
                    _gotoNext = 243962i32;
                } else if (__value__ == (243840i32)) {
                    if (stdgo._internal.internal.cpu.Cpu__options._options[(_i_243821 : stdgo.GoInt)].name == (_key_243397)) {
                        _gotoNext = 243871i32;
                    } else {
                        _gotoNext = 243821i32;
                    };
                } else if (__value__ == (243871i32)) {
                    stdgo._internal.internal.cpu.Cpu__options._options[(_i_243821 : stdgo.GoInt)].specified = true;
                    stdgo._internal.internal.cpu.Cpu__options._options[(_i_243821 : stdgo.GoInt)].enable = _enable_243463;
                    _gotoNext = 243071i32;
                } else if (__value__ == (243961i32)) {
                    _i_243821 = 0i32;
                    _gotoNext = 243962i32;
                } else if (__value__ == (243962i32)) {
                    if (_i_243821 < (stdgo._internal.internal.cpu.Cpu__options._options.length)) {
                        _gotoNext = 243840i32;
                    } else {
                        _gotoNext = 243967i32;
                    };
                } else if (__value__ == (243967i32)) {
                    stdgo.Go.print(("GODEBUG: unknown cpu feature \"" : stdgo.GoString), _key_243397, ("\"\n" : stdgo.GoString));
                    _gotoNext = 243071i32;
                } else if (__value__ == (244026i32)) {
                    if ((0i32 : stdgo.GoInt) < (stdgo._internal.internal.cpu.Cpu__options._options.length)) {
                        _gotoNext = 244239i32;
                    } else {
                        _gotoNext = 244242i32;
                    };
                } else if (__value__ == (244052i32)) {
                    _o_244033 = stdgo._internal.internal.cpu.Cpu__options._options[(_i_244038_0 : stdgo.GoInt)];
                    if (!_o_244033.specified) {
                        _gotoNext = 244072i32;
                    } else {
                        _gotoNext = 244093i32;
                    };
                } else if (__value__ == (244072i32)) {
                    _i_244038_0++;
                    _gotoNext = 244240i32;
                } else if (__value__ == (244093i32)) {
                    if ((_o_244033.enable && !_o_244033.feature.value : Bool)) {
                        _gotoNext = 244120i32;
                    } else {
                        _gotoNext = 244217i32;
                    };
                } else if (__value__ == (244120i32)) {
                    stdgo.Go.print(("GODEBUG: can not enable \"" : stdgo.GoString), _o_244033.name, ("\", missing CPU support\n" : stdgo.GoString));
                    _i_244038_0++;
                    _gotoNext = 244240i32;
                } else if (__value__ == (244217i32)) {
                    _o_244033.feature.value = _o_244033.enable;
                    _i_244038_0++;
                    _gotoNext = 244240i32;
                } else if (__value__ == (244239i32)) {
                    {
                        final __tmp__0 = 0i32;
                        final __tmp__1 = stdgo._internal.internal.cpu.Cpu__options._options[(0i32 : stdgo.GoInt)];
                        _i_244038_0 = __tmp__0;
                        _o_244033 = __tmp__1;
                    };
                    _gotoNext = 244240i32;
                } else if (__value__ == (244240i32)) {
                    if (_i_244038_0 < (stdgo._internal.internal.cpu.Cpu__options._options.length)) {
                        _gotoNext = 244052i32;
                    } else {
                        _gotoNext = 244242i32;
                    };
                } else if (__value__ == (244242i32)) {
                    _gotoNext = -1i32;
                };
            };
        };
    }
