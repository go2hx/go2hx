package stdgo._internal.internal.cpu;
function _processOptions(_env:stdgo.GoString):Void {
        var _i_38027:stdgo.GoInt = (0 : stdgo.GoInt);
        var _i_38962_0:stdgo.GoInt = (0 : stdgo.GoInt);
        var _i_38745:stdgo.GoInt = (0 : stdgo.GoInt);
        var _i_38627:stdgo.GoInt = (0 : stdgo.GoInt);
        var _fieldBreak = false;
        var _o_38957:stdgo._internal.internal.cpu.Cpu_T_option.T_option = ({} : stdgo._internal.internal.cpu.Cpu_T_option.T_option);
        var _enable_38387:Bool = false;
        var _value_38326:stdgo.GoString = ("" : stdgo.GoString);
        var _key_38321:stdgo.GoString = ("" : stdgo.GoString);
        var _field_38013:stdgo.GoString = ("" : stdgo.GoString);
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    _gotoNext = 37987i32;
                } else if (__value__ == (37987i32)) {
                    var __blank__ = 0i32;
                    _fieldBreak = false;
                    _gotoNext = 37995i32;
                } else if (__value__ == (37995i32)) {
                    if (!_fieldBreak && (_env != stdgo.Go.str())) {
                        _gotoNext = 38009i32;
                    } else {
                        _gotoNext = 38950i32;
                    };
                } else if (__value__ == (38009i32)) {
                    _field_38013 = stdgo.Go.str()?.__copy__();
                    _i_38027 = stdgo._internal.internal.cpu.Cpu__indexByte._indexByte(_env?.__copy__(), (44 : stdgo.GoUInt8));
                    if ((_i_38027 < (0 : stdgo.GoInt) : Bool)) {
                        _gotoNext = 38063i32;
                    } else {
                        _gotoNext = 38098i32;
                    };
                } else if (__value__ == (38063i32)) {
                    {
                        final __tmp__0 = _env?.__copy__();
                        final __tmp__1 = stdgo.Go.str()?.__copy__();
                        _field_38013 = __tmp__0;
                        _env = __tmp__1;
                    };
                    _gotoNext = 38141i32;
                } else if (__value__ == (38098i32)) {
                    _gotoNext = 38098i32;
                    {
                        final __tmp__0 = (_env.__slice__(0, _i_38027) : stdgo.GoString)?.__copy__();
                        final __tmp__1 = (_env.__slice__((_i_38027 + (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        _field_38013 = __tmp__0;
                        _env = __tmp__1;
                    };
                    var __blank__ = 0i32;
                    _gotoNext = 38141i32;
                } else if (__value__ == (38141i32)) {
                    if ((((_field_38013.length) < (4 : stdgo.GoInt) : Bool) || ((_field_38013.__slice__(0, (4 : stdgo.GoInt)) : stdgo.GoString) != ("cpu." : stdgo.GoString)) : Bool)) {
                        _gotoNext = 38182i32;
                    } else {
                        _gotoNext = 38202i32;
                    };
                } else if (__value__ == (38182i32)) {
                    var __blank__ = 0i32;
                    _gotoNext = 37995i32;
                } else if (__value__ == (38202i32)) {
                    _i_38027 = stdgo._internal.internal.cpu.Cpu__indexByte._indexByte(_field_38013?.__copy__(), (61 : stdgo.GoUInt8));
                    if ((_i_38027 < (0 : stdgo.GoInt) : Bool)) {
                        _gotoNext = 38239i32;
                    } else {
                        _gotoNext = 38321i32;
                    };
                } else if (__value__ == (38239i32)) {
                    stdgo.Go.print(("GODEBUG: no value specified for \"" : stdgo.GoString), _field_38013, ("\"\n" : stdgo.GoString));
                    var __blank__ = 0i32;
                    _gotoNext = 37995i32;
                } else if (__value__ == (38321i32)) {
                    {
                        final __tmp__0 = (_field_38013.__slice__((4 : stdgo.GoInt), _i_38027) : stdgo.GoString)?.__copy__();
                        final __tmp__1 = (_field_38013.__slice__((_i_38027 + (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        _key_38321 = __tmp__0;
                        _value_38326 = __tmp__1;
                    };
                    _gotoNext = 38401i32;
                } else if (__value__ == (38401i32)) {
                    {
                        final __value__ = _value_38326;
                        if (__value__ == (("on" : stdgo.GoString))) {
                            _gotoNext = 38418i32;
                        } else if (__value__ == (("off" : stdgo.GoString))) {
                            _gotoNext = 38448i32;
                        } else {
                            _gotoNext = 38480i32;
                        };
                    };
                } else if (__value__ == (38418i32)) {
                    _enable_38387 = true;
                    _gotoNext = 38602i32;
                } else if (__value__ == (38448i32)) {
                    _enable_38387 = false;
                    _gotoNext = 38602i32;
                } else if (__value__ == (38480i32)) {
                    stdgo.Go.print(("GODEBUG: value \"" : stdgo.GoString), _value_38326, ("\" not supported for cpu option \"" : stdgo.GoString), _key_38321, ("\"\n" : stdgo.GoString));
                    _gotoNext = 37995i32;
                } else if (__value__ == (38602i32)) {
                    if (_key_38321 == (("all" : stdgo.GoString))) {
                        _gotoNext = 38618i32;
                    } else {
                        _gotoNext = 38741i32;
                    };
                } else if (__value__ == (38618i32)) {
                    if ((0i32 : stdgo.GoInt) < (stdgo._internal.internal.cpu.Cpu__options._options.length)) {
                        _gotoNext = 38713i32;
                    } else {
                        _gotoNext = 38719i32;
                    };
                } else if (__value__ == (38646i32)) {
                    stdgo._internal.internal.cpu.Cpu__options._options[(_i_38627 : stdgo.GoInt)].specified = true;
                    stdgo._internal.internal.cpu.Cpu__options._options[(_i_38627 : stdgo.GoInt)].enable = _enable_38387;
                    _i_38627++;
                    _gotoNext = 38714i32;
                } else if (__value__ == (38713i32)) {
                    _i_38627 = 0i32;
                    _gotoNext = 38714i32;
                } else if (__value__ == (38714i32)) {
                    if (_i_38627 < (stdgo._internal.internal.cpu.Cpu__options._options.length)) {
                        _gotoNext = 38646i32;
                    } else {
                        _gotoNext = 38719i32;
                    };
                } else if (__value__ == (38719i32)) {
                    _gotoNext = 37995i32;
                } else if (__value__ == (38741i32)) {
                    if ((0i32 : stdgo.GoInt) < (stdgo._internal.internal.cpu.Cpu__options._options.length)) {
                        _gotoNext = 38885i32;
                    } else {
                        _gotoNext = 38891i32;
                    };
                } else if (__value__ == (38745i32)) {
                    _i_38745++;
                    _gotoNext = 38886i32;
                } else if (__value__ == (38764i32)) {
                    if (stdgo._internal.internal.cpu.Cpu__options._options[(_i_38745 : stdgo.GoInt)].name == (_key_38321)) {
                        _gotoNext = 38795i32;
                    } else {
                        _gotoNext = 38745i32;
                    };
                } else if (__value__ == (38795i32)) {
                    stdgo._internal.internal.cpu.Cpu__options._options[(_i_38745 : stdgo.GoInt)].specified = true;
                    stdgo._internal.internal.cpu.Cpu__options._options[(_i_38745 : stdgo.GoInt)].enable = _enable_38387;
                    _gotoNext = 37995i32;
                } else if (__value__ == (38885i32)) {
                    _i_38745 = 0i32;
                    _gotoNext = 38886i32;
                } else if (__value__ == (38886i32)) {
                    if (_i_38745 < (stdgo._internal.internal.cpu.Cpu__options._options.length)) {
                        _gotoNext = 38764i32;
                    } else {
                        _gotoNext = 38891i32;
                    };
                } else if (__value__ == (38891i32)) {
                    stdgo.Go.print(("GODEBUG: unknown cpu feature \"" : stdgo.GoString), _key_38321, ("\"\n" : stdgo.GoString));
                    _gotoNext = 37995i32;
                } else if (__value__ == (38950i32)) {
                    if ((0i32 : stdgo.GoInt) < (stdgo._internal.internal.cpu.Cpu__options._options.length)) {
                        _gotoNext = 39163i32;
                    } else {
                        _gotoNext = 39166i32;
                    };
                } else if (__value__ == (38976i32)) {
                    _o_38957 = stdgo._internal.internal.cpu.Cpu__options._options[(_i_38962_0 : stdgo.GoInt)];
                    if (!_o_38957.specified) {
                        _gotoNext = 38996i32;
                    } else {
                        _gotoNext = 39017i32;
                    };
                } else if (__value__ == (38996i32)) {
                    _i_38962_0++;
                    _gotoNext = 39164i32;
                } else if (__value__ == (39017i32)) {
                    if ((_o_38957.enable && !_o_38957.feature.value : Bool)) {
                        _gotoNext = 39044i32;
                    } else {
                        _gotoNext = 39141i32;
                    };
                } else if (__value__ == (39044i32)) {
                    stdgo.Go.print(("GODEBUG: can not enable \"" : stdgo.GoString), _o_38957.name, ("\", missing CPU support\n" : stdgo.GoString));
                    _i_38962_0++;
                    _gotoNext = 39164i32;
                } else if (__value__ == (39141i32)) {
                    _o_38957.feature.value = _o_38957.enable;
                    _i_38962_0++;
                    _gotoNext = 39164i32;
                } else if (__value__ == (39163i32)) {
                    {
                        final __tmp__0 = 0i32;
                        final __tmp__1 = stdgo._internal.internal.cpu.Cpu__options._options[(0i32 : stdgo.GoInt)];
                        _i_38962_0 = __tmp__0;
                        _o_38957 = __tmp__1;
                    };
                    _gotoNext = 39164i32;
                } else if (__value__ == (39164i32)) {
                    if (_i_38962_0 < (stdgo._internal.internal.cpu.Cpu__options._options.length)) {
                        _gotoNext = 38976i32;
                    } else {
                        _gotoNext = 39166i32;
                    };
                } else if (__value__ == (39166i32)) {
                    _gotoNext = -1i32;
                };
            };
        };
    }
