package stdgo._internal.internal.cpu;
function _processOptions(_env:stdgo.GoString):Void {
        var _key_332239:stdgo.GoString = ("" : stdgo.GoString);
        var _i_331945:stdgo.GoInt = (0 : stdgo.GoInt);
        var _field_331931:stdgo.GoString = ("" : stdgo.GoString);
        var _i_332545:stdgo.GoInt = (0 : stdgo.GoInt);
        var _enable_332305:Bool = false;
        var _value_332244:stdgo.GoString = ("" : stdgo.GoString);
        var _fieldBreak = false;
        var _o_332875:stdgo._internal.internal.cpu.Cpu_T_option.T_option = ({} : stdgo._internal.internal.cpu.Cpu_T_option.T_option);
        var _i_332880_0:stdgo.GoInt = (0 : stdgo.GoInt);
        var _i_332663:stdgo.GoInt = (0 : stdgo.GoInt);
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    _gotoNext = 331905i32;
                } else if (__value__ == (331905i32)) {
                    var __blank__ = 0i32;
                    _fieldBreak = false;
                    _gotoNext = 331913i32;
                } else if (__value__ == (331913i32)) {
                    if (!_fieldBreak && (_env != (stdgo.Go.str() : stdgo.GoString))) {
                        _gotoNext = 331927i32;
                    } else {
                        _gotoNext = 332868i32;
                    };
                } else if (__value__ == (331927i32)) {
                    _field_331931 = (stdgo.Go.str() : stdgo.GoString)?.__copy__();
                    _i_331945 = stdgo._internal.internal.cpu.Cpu__indexByte._indexByte(_env?.__copy__(), (44 : stdgo.GoUInt8));
                    if ((_i_331945 < (0 : stdgo.GoInt) : Bool)) {
                        _gotoNext = 331981i32;
                    } else {
                        _gotoNext = 332016i32;
                    };
                } else if (__value__ == (331981i32)) {
                    {
                        final __tmp__0 = _env?.__copy__();
                        final __tmp__1 = (stdgo.Go.str() : stdgo.GoString)?.__copy__();
                        _field_331931 = __tmp__0;
                        _env = __tmp__1;
                    };
                    _gotoNext = 332059i32;
                } else if (__value__ == (332016i32)) {
                    _gotoNext = 332016i32;
                    {
                        final __tmp__0 = (_env.__slice__(0, _i_331945) : stdgo.GoString)?.__copy__();
                        final __tmp__1 = (_env.__slice__((_i_331945 + (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        _field_331931 = __tmp__0;
                        _env = __tmp__1;
                    };
                    var __blank__ = 0i32;
                    _gotoNext = 332059i32;
                } else if (__value__ == (332059i32)) {
                    if ((((_field_331931.length) < (4 : stdgo.GoInt) : Bool) || ((_field_331931.__slice__(0, (4 : stdgo.GoInt)) : stdgo.GoString) != ("cpu." : stdgo.GoString)) : Bool)) {
                        _gotoNext = 332100i32;
                    } else {
                        _gotoNext = 332120i32;
                    };
                } else if (__value__ == (332100i32)) {
                    var __blank__ = 0i32;
                    _gotoNext = 331913i32;
                } else if (__value__ == (332120i32)) {
                    _i_331945 = stdgo._internal.internal.cpu.Cpu__indexByte._indexByte(_field_331931?.__copy__(), (61 : stdgo.GoUInt8));
                    if ((_i_331945 < (0 : stdgo.GoInt) : Bool)) {
                        _gotoNext = 332157i32;
                    } else {
                        _gotoNext = 332239i32;
                    };
                } else if (__value__ == (332157i32)) {
                    stdgo.Go.print(("GODEBUG: no value specified for \"" : stdgo.GoString), _field_331931, ("\"\n" : stdgo.GoString));
                    var __blank__ = 0i32;
                    _gotoNext = 331913i32;
                } else if (__value__ == (332239i32)) {
                    {
                        final __tmp__0 = (_field_331931.__slice__((4 : stdgo.GoInt), _i_331945) : stdgo.GoString)?.__copy__();
                        final __tmp__1 = (_field_331931.__slice__((_i_331945 + (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        _key_332239 = __tmp__0;
                        _value_332244 = __tmp__1;
                    };
                    _gotoNext = 332319i32;
                } else if (__value__ == (332319i32)) {
                    {
                        final __value__ = _value_332244;
                        if (__value__ == (("on" : stdgo.GoString))) {
                            _gotoNext = 332336i32;
                        } else if (__value__ == (("off" : stdgo.GoString))) {
                            _gotoNext = 332366i32;
                        } else {
                            _gotoNext = 332398i32;
                        };
                    };
                } else if (__value__ == (332336i32)) {
                    _enable_332305 = true;
                    _gotoNext = 332520i32;
                } else if (__value__ == (332366i32)) {
                    _enable_332305 = false;
                    _gotoNext = 332520i32;
                } else if (__value__ == (332398i32)) {
                    stdgo.Go.print(("GODEBUG: value \"" : stdgo.GoString), _value_332244, ("\" not supported for cpu option \"" : stdgo.GoString), _key_332239, ("\"\n" : stdgo.GoString));
                    _gotoNext = 331913i32;
                } else if (__value__ == (332520i32)) {
                    if (_key_332239 == (("all" : stdgo.GoString))) {
                        _gotoNext = 332536i32;
                    } else {
                        _gotoNext = 332659i32;
                    };
                } else if (__value__ == (332536i32)) {
                    if ((0i32 : stdgo.GoInt) < (stdgo._internal.internal.cpu.Cpu__options._options.length)) {
                        _gotoNext = 332631i32;
                    } else {
                        _gotoNext = 332637i32;
                    };
                } else if (__value__ == (332564i32)) {
                    stdgo._internal.internal.cpu.Cpu__options._options[(_i_332545 : stdgo.GoInt)].specified = true;
                    stdgo._internal.internal.cpu.Cpu__options._options[(_i_332545 : stdgo.GoInt)].enable = _enable_332305;
                    _i_332545++;
                    _gotoNext = 332632i32;
                } else if (__value__ == (332631i32)) {
                    _i_332545 = 0i32;
                    _gotoNext = 332632i32;
                } else if (__value__ == (332632i32)) {
                    if (_i_332545 < (stdgo._internal.internal.cpu.Cpu__options._options.length)) {
                        _gotoNext = 332564i32;
                    } else {
                        _gotoNext = 332637i32;
                    };
                } else if (__value__ == (332637i32)) {
                    _gotoNext = 331913i32;
                } else if (__value__ == (332659i32)) {
                    if ((0i32 : stdgo.GoInt) < (stdgo._internal.internal.cpu.Cpu__options._options.length)) {
                        _gotoNext = 332803i32;
                    } else {
                        _gotoNext = 332809i32;
                    };
                } else if (__value__ == (332663i32)) {
                    _i_332663++;
                    _gotoNext = 332804i32;
                } else if (__value__ == (332682i32)) {
                    if (stdgo._internal.internal.cpu.Cpu__options._options[(_i_332663 : stdgo.GoInt)].name == (_key_332239)) {
                        _gotoNext = 332713i32;
                    } else {
                        _gotoNext = 332663i32;
                    };
                } else if (__value__ == (332713i32)) {
                    stdgo._internal.internal.cpu.Cpu__options._options[(_i_332663 : stdgo.GoInt)].specified = true;
                    stdgo._internal.internal.cpu.Cpu__options._options[(_i_332663 : stdgo.GoInt)].enable = _enable_332305;
                    _gotoNext = 331913i32;
                } else if (__value__ == (332803i32)) {
                    _i_332663 = 0i32;
                    _gotoNext = 332804i32;
                } else if (__value__ == (332804i32)) {
                    if (_i_332663 < (stdgo._internal.internal.cpu.Cpu__options._options.length)) {
                        _gotoNext = 332682i32;
                    } else {
                        _gotoNext = 332809i32;
                    };
                } else if (__value__ == (332809i32)) {
                    stdgo.Go.print(("GODEBUG: unknown cpu feature \"" : stdgo.GoString), _key_332239, ("\"\n" : stdgo.GoString));
                    _gotoNext = 331913i32;
                } else if (__value__ == (332868i32)) {
                    if ((0i32 : stdgo.GoInt) < (stdgo._internal.internal.cpu.Cpu__options._options.length)) {
                        _gotoNext = 333081i32;
                    } else {
                        _gotoNext = 333084i32;
                    };
                } else if (__value__ == (332894i32)) {
                    _o_332875 = stdgo._internal.internal.cpu.Cpu__options._options[(_i_332880_0 : stdgo.GoInt)];
                    if (!_o_332875.specified) {
                        _gotoNext = 332914i32;
                    } else {
                        _gotoNext = 332935i32;
                    };
                } else if (__value__ == (332914i32)) {
                    _i_332880_0++;
                    _gotoNext = 333082i32;
                } else if (__value__ == (332935i32)) {
                    if ((_o_332875.enable && !_o_332875.feature.value : Bool)) {
                        _gotoNext = 332962i32;
                    } else {
                        _gotoNext = 333059i32;
                    };
                } else if (__value__ == (332962i32)) {
                    stdgo.Go.print(("GODEBUG: can not enable \"" : stdgo.GoString), _o_332875.name, ("\", missing CPU support\n" : stdgo.GoString));
                    _i_332880_0++;
                    _gotoNext = 333082i32;
                } else if (__value__ == (333059i32)) {
                    _o_332875.feature.value = _o_332875.enable;
                    _i_332880_0++;
                    _gotoNext = 333082i32;
                } else if (__value__ == (333081i32)) {
                    {
                        final __tmp__0 = 0i32;
                        final __tmp__1 = stdgo._internal.internal.cpu.Cpu__options._options[(0i32 : stdgo.GoInt)];
                        _i_332880_0 = __tmp__0;
                        _o_332875 = __tmp__1;
                    };
                    _gotoNext = 333082i32;
                } else if (__value__ == (333082i32)) {
                    if (_i_332880_0 < (stdgo._internal.internal.cpu.Cpu__options._options.length)) {
                        _gotoNext = 332894i32;
                    } else {
                        _gotoNext = 333084i32;
                    };
                } else if (__value__ == (333084i32)) {
                    _gotoNext = -1i32;
                };
            };
        };
    }
