package stdgo._internal.internal.cpu;
function _processOptions(_env:stdgo.GoString):Void {
        var _i_265569:stdgo.GoInt = (0 : stdgo.GoInt);
        var _i_264969:stdgo.GoInt = (0 : stdgo.GoInt);
        var _field_264955:stdgo.GoString = ("" : stdgo.GoString);
        var _fieldBreak = false;
        var _i_265687:stdgo.GoInt = (0 : stdgo.GoInt);
        var _i_265904_0:stdgo.GoInt = (0 : stdgo.GoInt);
        var _enable_265329:Bool = false;
        var _value_265268:stdgo.GoString = ("" : stdgo.GoString);
        var _key_265263:stdgo.GoString = ("" : stdgo.GoString);
        var _o_265899:stdgo._internal.internal.cpu.Cpu_t_option.T_option = ({} : stdgo._internal.internal.cpu.Cpu_t_option.T_option);
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    _gotoNext = 264929i32;
                } else if (__value__ == (264929i32)) {
                    var __blank__ = 0i32;
                    _fieldBreak = false;
                    _gotoNext = 264937i32;
                } else if (__value__ == (264937i32)) {
                    if (!_fieldBreak && (_env != (stdgo.Go.str() : stdgo.GoString))) {
                        _gotoNext = 264951i32;
                    } else {
                        _gotoNext = 265892i32;
                    };
                } else if (__value__ == (264951i32)) {
                    _field_264955 = (stdgo.Go.str() : stdgo.GoString)?.__copy__();
                    _i_264969 = stdgo._internal.internal.cpu.Cpu__indexbyte._indexByte(_env?.__copy__(), (44 : stdgo.GoUInt8));
                    if ((_i_264969 < (0 : stdgo.GoInt) : Bool)) {
                        _gotoNext = 265005i32;
                    } else {
                        _gotoNext = 265040i32;
                    };
                } else if (__value__ == (265005i32)) {
                    {
                        final __tmp__0 = _env?.__copy__();
                        final __tmp__1 = (stdgo.Go.str() : stdgo.GoString)?.__copy__();
                        _field_264955 = __tmp__0;
                        _env = __tmp__1;
                    };
                    _gotoNext = 265083i32;
                } else if (__value__ == (265040i32)) {
                    _gotoNext = 265040i32;
                    {
                        final __tmp__0 = (_env.__slice__(0, _i_264969) : stdgo.GoString)?.__copy__();
                        final __tmp__1 = (_env.__slice__((_i_264969 + (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        _field_264955 = __tmp__0;
                        _env = __tmp__1;
                    };
                    var __blank__ = 0i32;
                    _gotoNext = 265083i32;
                } else if (__value__ == (265083i32)) {
                    if ((((_field_264955.length) < (4 : stdgo.GoInt) : Bool) || ((_field_264955.__slice__(0, (4 : stdgo.GoInt)) : stdgo.GoString) != ("cpu." : stdgo.GoString)) : Bool)) {
                        _gotoNext = 265124i32;
                    } else {
                        _gotoNext = 265144i32;
                    };
                } else if (__value__ == (265124i32)) {
                    var __blank__ = 0i32;
                    _gotoNext = 264937i32;
                } else if (__value__ == (265144i32)) {
                    _i_264969 = stdgo._internal.internal.cpu.Cpu__indexbyte._indexByte(_field_264955?.__copy__(), (61 : stdgo.GoUInt8));
                    if ((_i_264969 < (0 : stdgo.GoInt) : Bool)) {
                        _gotoNext = 265181i32;
                    } else {
                        _gotoNext = 265263i32;
                    };
                } else if (__value__ == (265181i32)) {
                    stdgo.Go.print(("GODEBUG: no value specified for \"" : stdgo.GoString), _field_264955, ("\"\n" : stdgo.GoString));
                    var __blank__ = 0i32;
                    _gotoNext = 264937i32;
                } else if (__value__ == (265263i32)) {
                    {
                        final __tmp__0 = (_field_264955.__slice__((4 : stdgo.GoInt), _i_264969) : stdgo.GoString)?.__copy__();
                        final __tmp__1 = (_field_264955.__slice__((_i_264969 + (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        _key_265263 = __tmp__0;
                        _value_265268 = __tmp__1;
                    };
                    _gotoNext = 265343i32;
                } else if (__value__ == (265343i32)) {
                    {
                        final __value__ = _value_265268;
                        if (__value__ == (("on" : stdgo.GoString))) {
                            _gotoNext = 265360i32;
                        } else if (__value__ == (("off" : stdgo.GoString))) {
                            _gotoNext = 265390i32;
                        } else {
                            _gotoNext = 265422i32;
                        };
                    };
                } else if (__value__ == (265360i32)) {
                    _enable_265329 = true;
                    _gotoNext = 265544i32;
                } else if (__value__ == (265390i32)) {
                    _enable_265329 = false;
                    _gotoNext = 265544i32;
                } else if (__value__ == (265422i32)) {
                    stdgo.Go.print(("GODEBUG: value \"" : stdgo.GoString), _value_265268, ("\" not supported for cpu option \"" : stdgo.GoString), _key_265263, ("\"\n" : stdgo.GoString));
                    _gotoNext = 264937i32;
                } else if (__value__ == (265544i32)) {
                    if (_key_265263 == (("all" : stdgo.GoString))) {
                        _gotoNext = 265560i32;
                    } else {
                        _gotoNext = 265683i32;
                    };
                } else if (__value__ == (265560i32)) {
                    if ((0i32 : stdgo.GoInt) < (stdgo._internal.internal.cpu.Cpu__options._options.length)) {
                        _gotoNext = 265655i32;
                    } else {
                        _gotoNext = 265661i32;
                    };
                } else if (__value__ == (265588i32)) {
                    stdgo._internal.internal.cpu.Cpu__options._options[(_i_265569 : stdgo.GoInt)].specified = true;
                    stdgo._internal.internal.cpu.Cpu__options._options[(_i_265569 : stdgo.GoInt)].enable = _enable_265329;
                    _i_265569++;
                    _gotoNext = 265656i32;
                } else if (__value__ == (265655i32)) {
                    _i_265569 = 0i32;
                    _gotoNext = 265656i32;
                } else if (__value__ == (265656i32)) {
                    if (_i_265569 < (stdgo._internal.internal.cpu.Cpu__options._options.length)) {
                        _gotoNext = 265588i32;
                    } else {
                        _gotoNext = 265661i32;
                    };
                } else if (__value__ == (265661i32)) {
                    _gotoNext = 264937i32;
                } else if (__value__ == (265683i32)) {
                    if ((0i32 : stdgo.GoInt) < (stdgo._internal.internal.cpu.Cpu__options._options.length)) {
                        _gotoNext = 265827i32;
                    } else {
                        _gotoNext = 265833i32;
                    };
                } else if (__value__ == (265687i32)) {
                    _i_265687++;
                    _gotoNext = 265828i32;
                } else if (__value__ == (265706i32)) {
                    if (stdgo._internal.internal.cpu.Cpu__options._options[(_i_265687 : stdgo.GoInt)].name == (_key_265263)) {
                        _gotoNext = 265737i32;
                    } else {
                        _gotoNext = 265687i32;
                    };
                } else if (__value__ == (265737i32)) {
                    stdgo._internal.internal.cpu.Cpu__options._options[(_i_265687 : stdgo.GoInt)].specified = true;
                    stdgo._internal.internal.cpu.Cpu__options._options[(_i_265687 : stdgo.GoInt)].enable = _enable_265329;
                    _gotoNext = 264937i32;
                } else if (__value__ == (265827i32)) {
                    _i_265687 = 0i32;
                    _gotoNext = 265828i32;
                } else if (__value__ == (265828i32)) {
                    if (_i_265687 < (stdgo._internal.internal.cpu.Cpu__options._options.length)) {
                        _gotoNext = 265706i32;
                    } else {
                        _gotoNext = 265833i32;
                    };
                } else if (__value__ == (265833i32)) {
                    stdgo.Go.print(("GODEBUG: unknown cpu feature \"" : stdgo.GoString), _key_265263, ("\"\n" : stdgo.GoString));
                    _gotoNext = 264937i32;
                } else if (__value__ == (265892i32)) {
                    if ((0i32 : stdgo.GoInt) < (stdgo._internal.internal.cpu.Cpu__options._options.length)) {
                        _gotoNext = 266105i32;
                    } else {
                        _gotoNext = 266108i32;
                    };
                } else if (__value__ == (265918i32)) {
                    _o_265899 = stdgo._internal.internal.cpu.Cpu__options._options[(_i_265904_0 : stdgo.GoInt)];
                    if (!_o_265899.specified) {
                        _gotoNext = 265938i32;
                    } else {
                        _gotoNext = 265959i32;
                    };
                } else if (__value__ == (265938i32)) {
                    _i_265904_0++;
                    _gotoNext = 266106i32;
                } else if (__value__ == (265959i32)) {
                    if ((_o_265899.enable && !_o_265899.feature.value : Bool)) {
                        _gotoNext = 265986i32;
                    } else {
                        _gotoNext = 266083i32;
                    };
                } else if (__value__ == (265986i32)) {
                    stdgo.Go.print(("GODEBUG: can not enable \"" : stdgo.GoString), _o_265899.name, ("\", missing CPU support\n" : stdgo.GoString));
                    _i_265904_0++;
                    _gotoNext = 266106i32;
                } else if (__value__ == (266083i32)) {
                    _o_265899.feature.value = _o_265899.enable;
                    _i_265904_0++;
                    _gotoNext = 266106i32;
                } else if (__value__ == (266105i32)) {
                    {
                        final __tmp__0 = 0i32;
                        final __tmp__1 = stdgo._internal.internal.cpu.Cpu__options._options[(0i32 : stdgo.GoInt)];
                        _i_265904_0 = __tmp__0;
                        _o_265899 = __tmp__1;
                    };
                    _gotoNext = 266106i32;
                } else if (__value__ == (266106i32)) {
                    if (_i_265904_0 < (stdgo._internal.internal.cpu.Cpu__options._options.length)) {
                        _gotoNext = 265918i32;
                    } else {
                        _gotoNext = 266108i32;
                    };
                } else if (__value__ == (266108i32)) {
                    _gotoNext = -1i32;
                };
            };
        };
    }
