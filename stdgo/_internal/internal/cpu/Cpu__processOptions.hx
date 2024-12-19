package stdgo._internal.internal.cpu;
function _processOptions(_env:stdgo.GoString):Void {
        var _i_300554:stdgo.GoInt = (0 : stdgo.GoInt);
        var _i_300436:stdgo.GoInt = (0 : stdgo.GoInt);
        var _field_299822:stdgo.GoString = ("" : stdgo.GoString);
        var _i_300771_0:stdgo.GoInt = (0 : stdgo.GoInt);
        var _key_300130:stdgo.GoString = ("" : stdgo.GoString);
        var _i_299836:stdgo.GoInt = (0 : stdgo.GoInt);
        var _fieldBreak = false;
        var _o_300766:stdgo._internal.internal.cpu.Cpu_T_option.T_option = ({} : stdgo._internal.internal.cpu.Cpu_T_option.T_option);
        var _enable_300196:Bool = false;
        var _value_300135:stdgo.GoString = ("" : stdgo.GoString);
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    _gotoNext = 299796i32;
                } else if (__value__ == (299796i32)) {
                    var __blank__ = 0i32;
                    _fieldBreak = false;
                    _gotoNext = 299804i32;
                } else if (__value__ == (299804i32)) {
                    if (!_fieldBreak && (_env != stdgo.Go.str())) {
                        _gotoNext = 299818i32;
                    } else {
                        _gotoNext = 300759i32;
                    };
                } else if (__value__ == (299818i32)) {
                    _field_299822 = stdgo.Go.str()?.__copy__();
                    _i_299836 = stdgo._internal.internal.cpu.Cpu__indexByte._indexByte(_env?.__copy__(), (44 : stdgo.GoUInt8));
                    if ((_i_299836 < (0 : stdgo.GoInt) : Bool)) {
                        _gotoNext = 299872i32;
                    } else {
                        _gotoNext = 299907i32;
                    };
                } else if (__value__ == (299872i32)) {
                    {
                        final __tmp__0 = _env?.__copy__();
                        final __tmp__1 = stdgo.Go.str()?.__copy__();
                        _field_299822 = __tmp__0;
                        _env = __tmp__1;
                    };
                    _gotoNext = 299950i32;
                } else if (__value__ == (299907i32)) {
                    _gotoNext = 299907i32;
                    {
                        final __tmp__0 = (_env.__slice__(0, _i_299836) : stdgo.GoString)?.__copy__();
                        final __tmp__1 = (_env.__slice__((_i_299836 + (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        _field_299822 = __tmp__0;
                        _env = __tmp__1;
                    };
                    var __blank__ = 0i32;
                    _gotoNext = 299950i32;
                } else if (__value__ == (299950i32)) {
                    if ((((_field_299822.length) < (4 : stdgo.GoInt) : Bool) || ((_field_299822.__slice__(0, (4 : stdgo.GoInt)) : stdgo.GoString) != ("cpu." : stdgo.GoString)) : Bool)) {
                        _gotoNext = 299991i32;
                    } else {
                        _gotoNext = 300011i32;
                    };
                } else if (__value__ == (299991i32)) {
                    var __blank__ = 0i32;
                    _gotoNext = 299804i32;
                } else if (__value__ == (300011i32)) {
                    _i_299836 = stdgo._internal.internal.cpu.Cpu__indexByte._indexByte(_field_299822?.__copy__(), (61 : stdgo.GoUInt8));
                    if ((_i_299836 < (0 : stdgo.GoInt) : Bool)) {
                        _gotoNext = 300048i32;
                    } else {
                        _gotoNext = 300130i32;
                    };
                } else if (__value__ == (300048i32)) {
                    stdgo.Go.print(("GODEBUG: no value specified for \"" : stdgo.GoString), _field_299822, ("\"\n" : stdgo.GoString));
                    var __blank__ = 0i32;
                    _gotoNext = 299804i32;
                } else if (__value__ == (300130i32)) {
                    {
                        final __tmp__0 = (_field_299822.__slice__((4 : stdgo.GoInt), _i_299836) : stdgo.GoString)?.__copy__();
                        final __tmp__1 = (_field_299822.__slice__((_i_299836 + (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        _key_300130 = __tmp__0;
                        _value_300135 = __tmp__1;
                    };
                    _gotoNext = 300210i32;
                } else if (__value__ == (300210i32)) {
                    {
                        final __value__ = _value_300135;
                        if (__value__ == (("on" : stdgo.GoString))) {
                            _gotoNext = 300227i32;
                        } else if (__value__ == (("off" : stdgo.GoString))) {
                            _gotoNext = 300257i32;
                        } else {
                            _gotoNext = 300289i32;
                        };
                    };
                } else if (__value__ == (300227i32)) {
                    _enable_300196 = true;
                    _gotoNext = 300411i32;
                } else if (__value__ == (300257i32)) {
                    _enable_300196 = false;
                    _gotoNext = 300411i32;
                } else if (__value__ == (300289i32)) {
                    stdgo.Go.print(("GODEBUG: value \"" : stdgo.GoString), _value_300135, ("\" not supported for cpu option \"" : stdgo.GoString), _key_300130, ("\"\n" : stdgo.GoString));
                    _gotoNext = 299804i32;
                } else if (__value__ == (300411i32)) {
                    if (_key_300130 == (("all" : stdgo.GoString))) {
                        _gotoNext = 300427i32;
                    } else {
                        _gotoNext = 300550i32;
                    };
                } else if (__value__ == (300427i32)) {
                    if ((0i32 : stdgo.GoInt) < (stdgo._internal.internal.cpu.Cpu__options._options.length)) {
                        _gotoNext = 300522i32;
                    } else {
                        _gotoNext = 300528i32;
                    };
                } else if (__value__ == (300455i32)) {
                    stdgo._internal.internal.cpu.Cpu__options._options[(_i_300436 : stdgo.GoInt)].specified = true;
                    stdgo._internal.internal.cpu.Cpu__options._options[(_i_300436 : stdgo.GoInt)].enable = _enable_300196;
                    _i_300436++;
                    _gotoNext = 300523i32;
                } else if (__value__ == (300522i32)) {
                    _i_300436 = 0i32;
                    _gotoNext = 300523i32;
                } else if (__value__ == (300523i32)) {
                    if (_i_300436 < (stdgo._internal.internal.cpu.Cpu__options._options.length)) {
                        _gotoNext = 300455i32;
                    } else {
                        _gotoNext = 300528i32;
                    };
                } else if (__value__ == (300528i32)) {
                    _gotoNext = 299804i32;
                } else if (__value__ == (300550i32)) {
                    if ((0i32 : stdgo.GoInt) < (stdgo._internal.internal.cpu.Cpu__options._options.length)) {
                        _gotoNext = 300694i32;
                    } else {
                        _gotoNext = 300700i32;
                    };
                } else if (__value__ == (300554i32)) {
                    _i_300554++;
                    _gotoNext = 300695i32;
                } else if (__value__ == (300573i32)) {
                    if (stdgo._internal.internal.cpu.Cpu__options._options[(_i_300554 : stdgo.GoInt)].name == (_key_300130)) {
                        _gotoNext = 300604i32;
                    } else {
                        _gotoNext = 300554i32;
                    };
                } else if (__value__ == (300604i32)) {
                    stdgo._internal.internal.cpu.Cpu__options._options[(_i_300554 : stdgo.GoInt)].specified = true;
                    stdgo._internal.internal.cpu.Cpu__options._options[(_i_300554 : stdgo.GoInt)].enable = _enable_300196;
                    _gotoNext = 299804i32;
                } else if (__value__ == (300694i32)) {
                    _i_300554 = 0i32;
                    _gotoNext = 300695i32;
                } else if (__value__ == (300695i32)) {
                    if (_i_300554 < (stdgo._internal.internal.cpu.Cpu__options._options.length)) {
                        _gotoNext = 300573i32;
                    } else {
                        _gotoNext = 300700i32;
                    };
                } else if (__value__ == (300700i32)) {
                    stdgo.Go.print(("GODEBUG: unknown cpu feature \"" : stdgo.GoString), _key_300130, ("\"\n" : stdgo.GoString));
                    _gotoNext = 299804i32;
                } else if (__value__ == (300759i32)) {
                    if ((0i32 : stdgo.GoInt) < (stdgo._internal.internal.cpu.Cpu__options._options.length)) {
                        _gotoNext = 300972i32;
                    } else {
                        _gotoNext = 300975i32;
                    };
                } else if (__value__ == (300785i32)) {
                    _o_300766 = stdgo._internal.internal.cpu.Cpu__options._options[(_i_300771_0 : stdgo.GoInt)];
                    if (!_o_300766.specified) {
                        _gotoNext = 300805i32;
                    } else {
                        _gotoNext = 300826i32;
                    };
                } else if (__value__ == (300805i32)) {
                    _i_300771_0++;
                    _gotoNext = 300973i32;
                } else if (__value__ == (300826i32)) {
                    if ((_o_300766.enable && !_o_300766.feature.value : Bool)) {
                        _gotoNext = 300853i32;
                    } else {
                        _gotoNext = 300950i32;
                    };
                } else if (__value__ == (300853i32)) {
                    stdgo.Go.print(("GODEBUG: can not enable \"" : stdgo.GoString), _o_300766.name, ("\", missing CPU support\n" : stdgo.GoString));
                    _i_300771_0++;
                    _gotoNext = 300973i32;
                } else if (__value__ == (300950i32)) {
                    _o_300766.feature.value = _o_300766.enable;
                    _i_300771_0++;
                    _gotoNext = 300973i32;
                } else if (__value__ == (300972i32)) {
                    {
                        final __tmp__0 = 0i32;
                        final __tmp__1 = stdgo._internal.internal.cpu.Cpu__options._options[(0i32 : stdgo.GoInt)];
                        _i_300771_0 = __tmp__0;
                        _o_300766 = __tmp__1;
                    };
                    _gotoNext = 300973i32;
                } else if (__value__ == (300973i32)) {
                    if (_i_300771_0 < (stdgo._internal.internal.cpu.Cpu__options._options.length)) {
                        _gotoNext = 300785i32;
                    } else {
                        _gotoNext = 300975i32;
                    };
                } else if (__value__ == (300975i32)) {
                    _gotoNext = -1i32;
                };
            };
        };
    }
