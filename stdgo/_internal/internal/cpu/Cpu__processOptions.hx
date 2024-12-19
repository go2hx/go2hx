package stdgo._internal.internal.cpu;
function _processOptions(_env:stdgo.GoString):Void {
        var _i_54946_0:stdgo.GoInt = (0 : stdgo.GoInt);
        var _i_54729:stdgo.GoInt = (0 : stdgo.GoInt);
        var _i_54611:stdgo.GoInt = (0 : stdgo.GoInt);
        var _value_54310:stdgo.GoString = ("" : stdgo.GoString);
        var _i_54011:stdgo.GoInt = (0 : stdgo.GoInt);
        var _o_54941:stdgo._internal.internal.cpu.Cpu_T_option.T_option = ({} : stdgo._internal.internal.cpu.Cpu_T_option.T_option);
        var _enable_54371:Bool = false;
        var _key_54305:stdgo.GoString = ("" : stdgo.GoString);
        var _field_53997:stdgo.GoString = ("" : stdgo.GoString);
        var _fieldBreak = false;
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    _gotoNext = 53971i32;
                } else if (__value__ == (53971i32)) {
                    var __blank__ = 0i32;
                    _fieldBreak = false;
                    _gotoNext = 53979i32;
                } else if (__value__ == (53979i32)) {
                    if (!_fieldBreak && (_env != stdgo.Go.str())) {
                        _gotoNext = 53993i32;
                    } else {
                        _gotoNext = 54934i32;
                    };
                } else if (__value__ == (53993i32)) {
                    _field_53997 = stdgo.Go.str()?.__copy__();
                    _i_54011 = stdgo._internal.internal.cpu.Cpu__indexByte._indexByte(_env?.__copy__(), (44 : stdgo.GoUInt8));
                    if ((_i_54011 < (0 : stdgo.GoInt) : Bool)) {
                        _gotoNext = 54047i32;
                    } else {
                        _gotoNext = 54082i32;
                    };
                } else if (__value__ == (54047i32)) {
                    {
                        final __tmp__0 = _env?.__copy__();
                        final __tmp__1 = stdgo.Go.str()?.__copy__();
                        _field_53997 = __tmp__0;
                        _env = __tmp__1;
                    };
                    _gotoNext = 54125i32;
                } else if (__value__ == (54082i32)) {
                    _gotoNext = 54082i32;
                    {
                        final __tmp__0 = (_env.__slice__(0, _i_54011) : stdgo.GoString)?.__copy__();
                        final __tmp__1 = (_env.__slice__((_i_54011 + (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        _field_53997 = __tmp__0;
                        _env = __tmp__1;
                    };
                    var __blank__ = 0i32;
                    _gotoNext = 54125i32;
                } else if (__value__ == (54125i32)) {
                    if ((((_field_53997.length) < (4 : stdgo.GoInt) : Bool) || ((_field_53997.__slice__(0, (4 : stdgo.GoInt)) : stdgo.GoString) != ("cpu." : stdgo.GoString)) : Bool)) {
                        _gotoNext = 54166i32;
                    } else {
                        _gotoNext = 54186i32;
                    };
                } else if (__value__ == (54166i32)) {
                    var __blank__ = 0i32;
                    _gotoNext = 53979i32;
                } else if (__value__ == (54186i32)) {
                    _i_54011 = stdgo._internal.internal.cpu.Cpu__indexByte._indexByte(_field_53997?.__copy__(), (61 : stdgo.GoUInt8));
                    if ((_i_54011 < (0 : stdgo.GoInt) : Bool)) {
                        _gotoNext = 54223i32;
                    } else {
                        _gotoNext = 54305i32;
                    };
                } else if (__value__ == (54223i32)) {
                    stdgo.Go.print(("GODEBUG: no value specified for \"" : stdgo.GoString), _field_53997, ("\"\n" : stdgo.GoString));
                    var __blank__ = 0i32;
                    _gotoNext = 53979i32;
                } else if (__value__ == (54305i32)) {
                    {
                        final __tmp__0 = (_field_53997.__slice__((4 : stdgo.GoInt), _i_54011) : stdgo.GoString)?.__copy__();
                        final __tmp__1 = (_field_53997.__slice__((_i_54011 + (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        _key_54305 = __tmp__0;
                        _value_54310 = __tmp__1;
                    };
                    _gotoNext = 54385i32;
                } else if (__value__ == (54385i32)) {
                    {
                        final __value__ = _value_54310;
                        if (__value__ == (("on" : stdgo.GoString))) {
                            _gotoNext = 54402i32;
                        } else if (__value__ == (("off" : stdgo.GoString))) {
                            _gotoNext = 54432i32;
                        } else {
                            _gotoNext = 54464i32;
                        };
                    };
                } else if (__value__ == (54402i32)) {
                    _enable_54371 = true;
                    _gotoNext = 54586i32;
                } else if (__value__ == (54432i32)) {
                    _enable_54371 = false;
                    _gotoNext = 54586i32;
                } else if (__value__ == (54464i32)) {
                    stdgo.Go.print(("GODEBUG: value \"" : stdgo.GoString), _value_54310, ("\" not supported for cpu option \"" : stdgo.GoString), _key_54305, ("\"\n" : stdgo.GoString));
                    _gotoNext = 53979i32;
                } else if (__value__ == (54586i32)) {
                    if (_key_54305 == (("all" : stdgo.GoString))) {
                        _gotoNext = 54602i32;
                    } else {
                        _gotoNext = 54725i32;
                    };
                } else if (__value__ == (54602i32)) {
                    if ((0i32 : stdgo.GoInt) < (stdgo._internal.internal.cpu.Cpu__options._options.length)) {
                        _gotoNext = 54697i32;
                    } else {
                        _gotoNext = 54703i32;
                    };
                } else if (__value__ == (54630i32)) {
                    stdgo._internal.internal.cpu.Cpu__options._options[(_i_54611 : stdgo.GoInt)].specified = true;
                    stdgo._internal.internal.cpu.Cpu__options._options[(_i_54611 : stdgo.GoInt)].enable = _enable_54371;
                    _i_54611++;
                    _gotoNext = 54698i32;
                } else if (__value__ == (54697i32)) {
                    _i_54611 = 0i32;
                    _gotoNext = 54698i32;
                } else if (__value__ == (54698i32)) {
                    if (_i_54611 < (stdgo._internal.internal.cpu.Cpu__options._options.length)) {
                        _gotoNext = 54630i32;
                    } else {
                        _gotoNext = 54703i32;
                    };
                } else if (__value__ == (54703i32)) {
                    _gotoNext = 53979i32;
                } else if (__value__ == (54725i32)) {
                    if ((0i32 : stdgo.GoInt) < (stdgo._internal.internal.cpu.Cpu__options._options.length)) {
                        _gotoNext = 54869i32;
                    } else {
                        _gotoNext = 54875i32;
                    };
                } else if (__value__ == (54729i32)) {
                    _i_54729++;
                    _gotoNext = 54870i32;
                } else if (__value__ == (54748i32)) {
                    if (stdgo._internal.internal.cpu.Cpu__options._options[(_i_54729 : stdgo.GoInt)].name == (_key_54305)) {
                        _gotoNext = 54779i32;
                    } else {
                        _gotoNext = 54729i32;
                    };
                } else if (__value__ == (54779i32)) {
                    stdgo._internal.internal.cpu.Cpu__options._options[(_i_54729 : stdgo.GoInt)].specified = true;
                    stdgo._internal.internal.cpu.Cpu__options._options[(_i_54729 : stdgo.GoInt)].enable = _enable_54371;
                    _gotoNext = 53979i32;
                } else if (__value__ == (54869i32)) {
                    _i_54729 = 0i32;
                    _gotoNext = 54870i32;
                } else if (__value__ == (54870i32)) {
                    if (_i_54729 < (stdgo._internal.internal.cpu.Cpu__options._options.length)) {
                        _gotoNext = 54748i32;
                    } else {
                        _gotoNext = 54875i32;
                    };
                } else if (__value__ == (54875i32)) {
                    stdgo.Go.print(("GODEBUG: unknown cpu feature \"" : stdgo.GoString), _key_54305, ("\"\n" : stdgo.GoString));
                    _gotoNext = 53979i32;
                } else if (__value__ == (54934i32)) {
                    if ((0i32 : stdgo.GoInt) < (stdgo._internal.internal.cpu.Cpu__options._options.length)) {
                        _gotoNext = 55147i32;
                    } else {
                        _gotoNext = 55150i32;
                    };
                } else if (__value__ == (54960i32)) {
                    _o_54941 = stdgo._internal.internal.cpu.Cpu__options._options[(_i_54946_0 : stdgo.GoInt)];
                    if (!_o_54941.specified) {
                        _gotoNext = 54980i32;
                    } else {
                        _gotoNext = 55001i32;
                    };
                } else if (__value__ == (54980i32)) {
                    _i_54946_0++;
                    _gotoNext = 55148i32;
                } else if (__value__ == (55001i32)) {
                    if ((_o_54941.enable && !_o_54941.feature.value : Bool)) {
                        _gotoNext = 55028i32;
                    } else {
                        _gotoNext = 55125i32;
                    };
                } else if (__value__ == (55028i32)) {
                    stdgo.Go.print(("GODEBUG: can not enable \"" : stdgo.GoString), _o_54941.name, ("\", missing CPU support\n" : stdgo.GoString));
                    _i_54946_0++;
                    _gotoNext = 55148i32;
                } else if (__value__ == (55125i32)) {
                    _o_54941.feature.value = _o_54941.enable;
                    _i_54946_0++;
                    _gotoNext = 55148i32;
                } else if (__value__ == (55147i32)) {
                    {
                        final __tmp__0 = 0i32;
                        final __tmp__1 = stdgo._internal.internal.cpu.Cpu__options._options[(0i32 : stdgo.GoInt)];
                        _i_54946_0 = __tmp__0;
                        _o_54941 = __tmp__1;
                    };
                    _gotoNext = 55148i32;
                } else if (__value__ == (55148i32)) {
                    if (_i_54946_0 < (stdgo._internal.internal.cpu.Cpu__options._options.length)) {
                        _gotoNext = 54960i32;
                    } else {
                        _gotoNext = 55150i32;
                    };
                } else if (__value__ == (55150i32)) {
                    _gotoNext = -1i32;
                };
            };
        };
    }
