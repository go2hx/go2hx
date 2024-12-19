package stdgo._internal.internal.cpu;
function _processOptions(_env:stdgo.GoString):Void {
        var _fieldBreak = false;
        var _i_403619_0:stdgo.GoInt = (0 : stdgo.GoInt);
        var _value_402983:stdgo.GoString = ("" : stdgo.GoString);
        var _key_402978:stdgo.GoString = ("" : stdgo.GoString);
        var _i_402684:stdgo.GoInt = (0 : stdgo.GoInt);
        var _field_402670:stdgo.GoString = ("" : stdgo.GoString);
        var _o_403614:stdgo._internal.internal.cpu.Cpu_T_option.T_option = ({} : stdgo._internal.internal.cpu.Cpu_T_option.T_option);
        var _i_403402:stdgo.GoInt = (0 : stdgo.GoInt);
        var _i_403284:stdgo.GoInt = (0 : stdgo.GoInt);
        var _enable_403044:Bool = false;
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    _gotoNext = 402644i32;
                } else if (__value__ == (402644i32)) {
                    var __blank__ = 0i32;
                    _fieldBreak = false;
                    _gotoNext = 402652i32;
                } else if (__value__ == (402652i32)) {
                    if (!_fieldBreak && (_env != stdgo.Go.str())) {
                        _gotoNext = 402666i32;
                    } else {
                        _gotoNext = 403607i32;
                    };
                } else if (__value__ == (402666i32)) {
                    _field_402670 = stdgo.Go.str()?.__copy__();
                    _i_402684 = stdgo._internal.internal.cpu.Cpu__indexByte._indexByte(_env?.__copy__(), (44 : stdgo.GoUInt8));
                    if ((_i_402684 < (0 : stdgo.GoInt) : Bool)) {
                        _gotoNext = 402720i32;
                    } else {
                        _gotoNext = 402755i32;
                    };
                } else if (__value__ == (402720i32)) {
                    {
                        final __tmp__0 = _env?.__copy__();
                        final __tmp__1 = stdgo.Go.str()?.__copy__();
                        _field_402670 = __tmp__0;
                        _env = __tmp__1;
                    };
                    _gotoNext = 402798i32;
                } else if (__value__ == (402755i32)) {
                    _gotoNext = 402755i32;
                    {
                        final __tmp__0 = (_env.__slice__(0, _i_402684) : stdgo.GoString)?.__copy__();
                        final __tmp__1 = (_env.__slice__((_i_402684 + (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        _field_402670 = __tmp__0;
                        _env = __tmp__1;
                    };
                    var __blank__ = 0i32;
                    _gotoNext = 402798i32;
                } else if (__value__ == (402798i32)) {
                    if ((((_field_402670.length) < (4 : stdgo.GoInt) : Bool) || ((_field_402670.__slice__(0, (4 : stdgo.GoInt)) : stdgo.GoString) != ("cpu." : stdgo.GoString)) : Bool)) {
                        _gotoNext = 402839i32;
                    } else {
                        _gotoNext = 402859i32;
                    };
                } else if (__value__ == (402839i32)) {
                    var __blank__ = 0i32;
                    _gotoNext = 402652i32;
                } else if (__value__ == (402859i32)) {
                    _i_402684 = stdgo._internal.internal.cpu.Cpu__indexByte._indexByte(_field_402670?.__copy__(), (61 : stdgo.GoUInt8));
                    if ((_i_402684 < (0 : stdgo.GoInt) : Bool)) {
                        _gotoNext = 402896i32;
                    } else {
                        _gotoNext = 402978i32;
                    };
                } else if (__value__ == (402896i32)) {
                    stdgo.Go.print(("GODEBUG: no value specified for \"" : stdgo.GoString), _field_402670, ("\"\n" : stdgo.GoString));
                    var __blank__ = 0i32;
                    _gotoNext = 402652i32;
                } else if (__value__ == (402978i32)) {
                    {
                        final __tmp__0 = (_field_402670.__slice__((4 : stdgo.GoInt), _i_402684) : stdgo.GoString)?.__copy__();
                        final __tmp__1 = (_field_402670.__slice__((_i_402684 + (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        _key_402978 = __tmp__0;
                        _value_402983 = __tmp__1;
                    };
                    _gotoNext = 403058i32;
                } else if (__value__ == (403058i32)) {
                    {
                        final __value__ = _value_402983;
                        if (__value__ == (("on" : stdgo.GoString))) {
                            _gotoNext = 403075i32;
                        } else if (__value__ == (("off" : stdgo.GoString))) {
                            _gotoNext = 403105i32;
                        } else {
                            _gotoNext = 403137i32;
                        };
                    };
                } else if (__value__ == (403075i32)) {
                    _enable_403044 = true;
                    _gotoNext = 403259i32;
                } else if (__value__ == (403105i32)) {
                    _enable_403044 = false;
                    _gotoNext = 403259i32;
                } else if (__value__ == (403137i32)) {
                    stdgo.Go.print(("GODEBUG: value \"" : stdgo.GoString), _value_402983, ("\" not supported for cpu option \"" : stdgo.GoString), _key_402978, ("\"\n" : stdgo.GoString));
                    _gotoNext = 402652i32;
                } else if (__value__ == (403259i32)) {
                    if (_key_402978 == (("all" : stdgo.GoString))) {
                        _gotoNext = 403275i32;
                    } else {
                        _gotoNext = 403398i32;
                    };
                } else if (__value__ == (403275i32)) {
                    if ((0i32 : stdgo.GoInt) < (stdgo._internal.internal.cpu.Cpu__options._options.length)) {
                        _gotoNext = 403370i32;
                    } else {
                        _gotoNext = 403376i32;
                    };
                } else if (__value__ == (403303i32)) {
                    stdgo._internal.internal.cpu.Cpu__options._options[(_i_403284 : stdgo.GoInt)].specified = true;
                    stdgo._internal.internal.cpu.Cpu__options._options[(_i_403284 : stdgo.GoInt)].enable = _enable_403044;
                    _i_403284++;
                    _gotoNext = 403371i32;
                } else if (__value__ == (403370i32)) {
                    _i_403284 = 0i32;
                    _gotoNext = 403371i32;
                } else if (__value__ == (403371i32)) {
                    if (_i_403284 < (stdgo._internal.internal.cpu.Cpu__options._options.length)) {
                        _gotoNext = 403303i32;
                    } else {
                        _gotoNext = 403376i32;
                    };
                } else if (__value__ == (403376i32)) {
                    _gotoNext = 402652i32;
                } else if (__value__ == (403398i32)) {
                    if ((0i32 : stdgo.GoInt) < (stdgo._internal.internal.cpu.Cpu__options._options.length)) {
                        _gotoNext = 403542i32;
                    } else {
                        _gotoNext = 403548i32;
                    };
                } else if (__value__ == (403402i32)) {
                    _i_403402++;
                    _gotoNext = 403543i32;
                } else if (__value__ == (403421i32)) {
                    if (stdgo._internal.internal.cpu.Cpu__options._options[(_i_403402 : stdgo.GoInt)].name == (_key_402978)) {
                        _gotoNext = 403452i32;
                    } else {
                        _gotoNext = 403402i32;
                    };
                } else if (__value__ == (403452i32)) {
                    stdgo._internal.internal.cpu.Cpu__options._options[(_i_403402 : stdgo.GoInt)].specified = true;
                    stdgo._internal.internal.cpu.Cpu__options._options[(_i_403402 : stdgo.GoInt)].enable = _enable_403044;
                    _gotoNext = 402652i32;
                } else if (__value__ == (403542i32)) {
                    _i_403402 = 0i32;
                    _gotoNext = 403543i32;
                } else if (__value__ == (403543i32)) {
                    if (_i_403402 < (stdgo._internal.internal.cpu.Cpu__options._options.length)) {
                        _gotoNext = 403421i32;
                    } else {
                        _gotoNext = 403548i32;
                    };
                } else if (__value__ == (403548i32)) {
                    stdgo.Go.print(("GODEBUG: unknown cpu feature \"" : stdgo.GoString), _key_402978, ("\"\n" : stdgo.GoString));
                    _gotoNext = 402652i32;
                } else if (__value__ == (403607i32)) {
                    if ((0i32 : stdgo.GoInt) < (stdgo._internal.internal.cpu.Cpu__options._options.length)) {
                        _gotoNext = 403820i32;
                    } else {
                        _gotoNext = 403823i32;
                    };
                } else if (__value__ == (403633i32)) {
                    _o_403614 = stdgo._internal.internal.cpu.Cpu__options._options[(_i_403619_0 : stdgo.GoInt)];
                    if (!_o_403614.specified) {
                        _gotoNext = 403653i32;
                    } else {
                        _gotoNext = 403674i32;
                    };
                } else if (__value__ == (403653i32)) {
                    _i_403619_0++;
                    _gotoNext = 403821i32;
                } else if (__value__ == (403674i32)) {
                    if ((_o_403614.enable && !_o_403614.feature.value : Bool)) {
                        _gotoNext = 403701i32;
                    } else {
                        _gotoNext = 403798i32;
                    };
                } else if (__value__ == (403701i32)) {
                    stdgo.Go.print(("GODEBUG: can not enable \"" : stdgo.GoString), _o_403614.name, ("\", missing CPU support\n" : stdgo.GoString));
                    _i_403619_0++;
                    _gotoNext = 403821i32;
                } else if (__value__ == (403798i32)) {
                    _o_403614.feature.value = _o_403614.enable;
                    _i_403619_0++;
                    _gotoNext = 403821i32;
                } else if (__value__ == (403820i32)) {
                    {
                        final __tmp__0 = 0i32;
                        final __tmp__1 = stdgo._internal.internal.cpu.Cpu__options._options[(0i32 : stdgo.GoInt)];
                        _i_403619_0 = __tmp__0;
                        _o_403614 = __tmp__1;
                    };
                    _gotoNext = 403821i32;
                } else if (__value__ == (403821i32)) {
                    if (_i_403619_0 < (stdgo._internal.internal.cpu.Cpu__options._options.length)) {
                        _gotoNext = 403633i32;
                    } else {
                        _gotoNext = 403823i32;
                    };
                } else if (__value__ == (403823i32)) {
                    _gotoNext = -1i32;
                };
            };
        };
    }
