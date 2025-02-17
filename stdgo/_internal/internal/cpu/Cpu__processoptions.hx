package stdgo._internal.internal.cpu;
function _processOptions(_env:stdgo.GoString):Void {
        var _i_38039_7:stdgo.GoInt = (0 : stdgo.GoInt);
        var _i_6:stdgo.GoInt = (0 : stdgo.GoInt);
        var _value_3:stdgo.GoString = ("" : stdgo.GoString);
        var _enable_4:Bool = false;
        var _key_2:stdgo.GoString = ("" : stdgo.GoString);
        var _i_1:stdgo.GoInt = (0 : stdgo.GoInt);
        var _field_0:stdgo.GoString = ("" : stdgo.GoString);
        var _fieldBreak = false;
        var _o_8:stdgo._internal.internal.cpu.Cpu_t_option.T_option = ({} : stdgo._internal.internal.cpu.Cpu_t_option.T_option);
        var _i_5:stdgo.GoInt = (0 : stdgo.GoInt);
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    _gotoNext = 37064i32;
                } else if (__value__ == (37064i32)) {
                    var __blank__ = 0i32;
                    _fieldBreak = false;
                    _gotoNext = 37072i32;
                } else if (__value__ == (37072i32)) {
                    if (!_fieldBreak && (_env != (stdgo.Go.str() : stdgo.GoString))) {
                        _gotoNext = 37086i32;
                    } else {
                        _gotoNext = 38027i32;
                    };
                } else if (__value__ == (37086i32)) {
                    _field_0 = (stdgo.Go.str() : stdgo.GoString)?.__copy__();
                    _i_1 = stdgo._internal.internal.cpu.Cpu__indexbyte._indexByte(_env?.__copy__(), (44 : stdgo.GoUInt8));
                    if ((_i_1 < (0 : stdgo.GoInt) : Bool)) {
                        _gotoNext = 37140i32;
                    } else {
                        _gotoNext = 37175i32;
                    };
                } else if (__value__ == (37140i32)) {
                    {
                        final __tmp__0 = _env?.__copy__();
                        final __tmp__1 = (stdgo.Go.str() : stdgo.GoString)?.__copy__();
                        _field_0 = __tmp__0;
                        _env = __tmp__1;
                    };
                    _gotoNext = 37218i32;
                } else if (__value__ == (37175i32)) {
                    _gotoNext = 37175i32;
                    {
                        final __tmp__0 = (_env.__slice__(0, _i_1) : stdgo.GoString)?.__copy__();
                        final __tmp__1 = (_env.__slice__((_i_1 + (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        _field_0 = __tmp__0;
                        _env = __tmp__1;
                    };
                    var __blank__ = 0i32;
                    _gotoNext = 37218i32;
                } else if (__value__ == (37218i32)) {
                    if ((((_field_0.length) < (4 : stdgo.GoInt) : Bool) || ((_field_0.__slice__(0, (4 : stdgo.GoInt)) : stdgo.GoString) != ("cpu." : stdgo.GoString)) : Bool)) {
                        _gotoNext = 37259i32;
                    } else {
                        _gotoNext = 37279i32;
                    };
                } else if (__value__ == (37259i32)) {
                    var __blank__ = 0i32;
                    _gotoNext = 37072i32;
                } else if (__value__ == (37279i32)) {
                    _i_1 = stdgo._internal.internal.cpu.Cpu__indexbyte._indexByte(_field_0?.__copy__(), (61 : stdgo.GoUInt8));
                    if ((_i_1 < (0 : stdgo.GoInt) : Bool)) {
                        _gotoNext = 37316i32;
                    } else {
                        _gotoNext = 37398i32;
                    };
                } else if (__value__ == (37316i32)) {
                    stdgo.Go.print(("GODEBUG: no value specified for \"" : stdgo.GoString), _field_0, ("\"\n" : stdgo.GoString));
                    var __blank__ = 0i32;
                    _gotoNext = 37072i32;
                } else if (__value__ == (37398i32)) {
                    {
                        final __tmp__0 = (_field_0.__slice__((4 : stdgo.GoInt), _i_1) : stdgo.GoString)?.__copy__();
                        final __tmp__1 = (_field_0.__slice__((_i_1 + (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        _key_2 = __tmp__0;
                        _value_3 = __tmp__1;
                    };
                    _gotoNext = 37478i32;
                } else if (__value__ == (37478i32)) {
                    {
                        final __value__ = _value_3;
                        if (__value__ == (("on" : stdgo.GoString))) {
                            _gotoNext = 37495i32;
                        } else if (__value__ == (("off" : stdgo.GoString))) {
                            _gotoNext = 37525i32;
                        } else {
                            _gotoNext = 37557i32;
                        };
                    };
                } else if (__value__ == (37495i32)) {
                    _enable_4 = true;
                    _gotoNext = 37679i32;
                } else if (__value__ == (37525i32)) {
                    _enable_4 = false;
                    _gotoNext = 37679i32;
                } else if (__value__ == (37557i32)) {
                    stdgo.Go.print(("GODEBUG: value \"" : stdgo.GoString), _value_3, ("\" not supported for cpu option \"" : stdgo.GoString), _key_2, ("\"\n" : stdgo.GoString));
                    _gotoNext = 37072i32;
                } else if (__value__ == (37679i32)) {
                    if (_key_2 == (("all" : stdgo.GoString))) {
                        _gotoNext = 37695i32;
                    } else {
                        _gotoNext = 37818i32;
                    };
                } else if (__value__ == (37695i32)) {
                    if ((0i32 : stdgo.GoInt) < (stdgo._internal.internal.cpu.Cpu__options._options.length)) {
                        _gotoNext = 37790i32;
                    } else {
                        _gotoNext = 37796i32;
                    };
                } else if (__value__ == (37723i32)) {
                    stdgo._internal.internal.cpu.Cpu__options._options[(_i_5 : stdgo.GoInt)].specified = true;
                    stdgo._internal.internal.cpu.Cpu__options._options[(_i_5 : stdgo.GoInt)].enable = _enable_4;
                    _i_5++;
                    _gotoNext = 37791i32;
                } else if (__value__ == (37790i32)) {
                    _i_5 = 0i32;
                    _gotoNext = 37791i32;
                } else if (__value__ == (37791i32)) {
                    if (_i_5 < (stdgo._internal.internal.cpu.Cpu__options._options.length)) {
                        _gotoNext = 37723i32;
                    } else {
                        _gotoNext = 37796i32;
                    };
                } else if (__value__ == (37796i32)) {
                    _gotoNext = 37072i32;
                } else if (__value__ == (37818i32)) {
                    if ((0i32 : stdgo.GoInt) < (stdgo._internal.internal.cpu.Cpu__options._options.length)) {
                        _gotoNext = 37962i32;
                    } else {
                        _gotoNext = 37968i32;
                    };
                } else if (__value__ == (37822i32)) {
                    _i_6++;
                    _gotoNext = 37963i32;
                } else if (__value__ == (37841i32)) {
                    if (stdgo._internal.internal.cpu.Cpu__options._options[(_i_6 : stdgo.GoInt)].name == (_key_2)) {
                        _gotoNext = 37872i32;
                    } else {
                        _gotoNext = 37822i32;
                    };
                } else if (__value__ == (37872i32)) {
                    stdgo._internal.internal.cpu.Cpu__options._options[(_i_6 : stdgo.GoInt)].specified = true;
                    stdgo._internal.internal.cpu.Cpu__options._options[(_i_6 : stdgo.GoInt)].enable = _enable_4;
                    _gotoNext = 37072i32;
                } else if (__value__ == (37962i32)) {
                    _i_6 = 0i32;
                    _gotoNext = 37963i32;
                } else if (__value__ == (37963i32)) {
                    if (_i_6 < (stdgo._internal.internal.cpu.Cpu__options._options.length)) {
                        _gotoNext = 37841i32;
                    } else {
                        _gotoNext = 37968i32;
                    };
                } else if (__value__ == (37968i32)) {
                    stdgo.Go.print(("GODEBUG: unknown cpu feature \"" : stdgo.GoString), _key_2, ("\"\n" : stdgo.GoString));
                    _gotoNext = 37072i32;
                } else if (__value__ == (38027i32)) {
                    if ((0i32 : stdgo.GoInt) < (stdgo._internal.internal.cpu.Cpu__options._options.length)) {
                        _gotoNext = 38240i32;
                    } else {
                        _gotoNext = 38243i32;
                    };
                } else if (__value__ == (38053i32)) {
                    _o_8 = stdgo._internal.internal.cpu.Cpu__options._options[(_i_38039_7 : stdgo.GoInt)];
                    if (!_o_8.specified) {
                        _gotoNext = 38073i32;
                    } else {
                        _gotoNext = 38094i32;
                    };
                } else if (__value__ == (38073i32)) {
                    _i_38039_7++;
                    _gotoNext = 38241i32;
                } else if (__value__ == (38094i32)) {
                    if ((_o_8.enable && !_o_8.feature.value : Bool)) {
                        _gotoNext = 38121i32;
                    } else {
                        _gotoNext = 38218i32;
                    };
                } else if (__value__ == (38121i32)) {
                    stdgo.Go.print(("GODEBUG: can not enable \"" : stdgo.GoString), _o_8.name, ("\", missing CPU support\n" : stdgo.GoString));
                    _i_38039_7++;
                    _gotoNext = 38241i32;
                } else if (__value__ == (38218i32)) {
                    _o_8.feature.value = _o_8.enable;
                    _i_38039_7++;
                    _gotoNext = 38241i32;
                } else if (__value__ == (38240i32)) {
                    {
                        final __tmp__0 = 0i32;
                        final __tmp__1 = stdgo._internal.internal.cpu.Cpu__options._options[(0i32 : stdgo.GoInt)];
                        _i_38039_7 = __tmp__0;
                        _o_8 = __tmp__1;
                    };
                    _gotoNext = 38241i32;
                } else if (__value__ == (38241i32)) {
                    if (_i_38039_7 < (stdgo._internal.internal.cpu.Cpu__options._options.length)) {
                        _gotoNext = 38053i32;
                    } else {
                        _gotoNext = 38243i32;
                    };
                } else if (__value__ == (38243i32)) {
                    _gotoNext = -1i32;
                };
            };
        };
    }
