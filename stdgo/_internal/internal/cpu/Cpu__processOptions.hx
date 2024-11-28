package stdgo._internal.internal.cpu;
function _processOptions(_env:stdgo.GoString):Void {
        var _fieldBreak = false;
        var _o_254328:stdgo._internal.internal.cpu.Cpu_T_option.T_option = ({} : stdgo._internal.internal.cpu.Cpu_T_option.T_option);
        var _i_254333_0:stdgo.GoInt = (0 : stdgo.GoInt);
        var _field_253384:stdgo.GoString = ("" : stdgo.GoString);
        var _i_253398:stdgo.GoInt = (0 : stdgo.GoInt);
        var _i_254116:stdgo.GoInt = (0 : stdgo.GoInt);
        var _i_253998:stdgo.GoInt = (0 : stdgo.GoInt);
        var _enable_253758:Bool = false;
        var _value_253697:stdgo.GoString = ("" : stdgo.GoString);
        var _key_253692:stdgo.GoString = ("" : stdgo.GoString);
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    _gotoNext = 253358i32;
                } else if (__value__ == (253358i32)) {
                    var __blank__ = 0i32;
                    _fieldBreak = false;
                    _gotoNext = 253366i32;
                } else if (__value__ == (253366i32)) {
                    if (!_fieldBreak && (_env != stdgo.Go.str())) {
                        _gotoNext = 253380i32;
                    } else {
                        _gotoNext = 254321i32;
                    };
                } else if (__value__ == (253380i32)) {
                    _field_253384 = stdgo.Go.str()?.__copy__();
                    _i_253398 = stdgo._internal.internal.cpu.Cpu__indexByte._indexByte(_env?.__copy__(), (44 : stdgo.GoUInt8));
                    if ((_i_253398 < (0 : stdgo.GoInt) : Bool)) {
                        _gotoNext = 253434i32;
                    } else {
                        _gotoNext = 253469i32;
                    };
                } else if (__value__ == (253434i32)) {
                    {
                        final __tmp__0 = _env?.__copy__();
                        final __tmp__1 = stdgo.Go.str()?.__copy__();
                        _field_253384 = __tmp__0;
                        _env = __tmp__1;
                    };
                    _gotoNext = 253512i32;
                } else if (__value__ == (253469i32)) {
                    _gotoNext = 253469i32;
                    {
                        final __tmp__0 = (_env.__slice__(0, _i_253398) : stdgo.GoString)?.__copy__();
                        final __tmp__1 = (_env.__slice__((_i_253398 + (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        _field_253384 = __tmp__0;
                        _env = __tmp__1;
                    };
                    var __blank__ = 0i32;
                    _gotoNext = 253512i32;
                } else if (__value__ == (253512i32)) {
                    if ((((_field_253384.length) < (4 : stdgo.GoInt) : Bool) || ((_field_253384.__slice__(0, (4 : stdgo.GoInt)) : stdgo.GoString) != ("cpu." : stdgo.GoString)) : Bool)) {
                        _gotoNext = 253553i32;
                    } else {
                        _gotoNext = 253573i32;
                    };
                } else if (__value__ == (253553i32)) {
                    var __blank__ = 0i32;
                    _gotoNext = 253366i32;
                } else if (__value__ == (253573i32)) {
                    _i_253398 = stdgo._internal.internal.cpu.Cpu__indexByte._indexByte(_field_253384?.__copy__(), (61 : stdgo.GoUInt8));
                    if ((_i_253398 < (0 : stdgo.GoInt) : Bool)) {
                        _gotoNext = 253610i32;
                    } else {
                        _gotoNext = 253692i32;
                    };
                } else if (__value__ == (253610i32)) {
                    stdgo.Go.print(("GODEBUG: no value specified for \"" : stdgo.GoString), _field_253384, ("\"\n" : stdgo.GoString));
                    var __blank__ = 0i32;
                    _gotoNext = 253366i32;
                } else if (__value__ == (253692i32)) {
                    {
                        final __tmp__0 = (_field_253384.__slice__((4 : stdgo.GoInt), _i_253398) : stdgo.GoString)?.__copy__();
                        final __tmp__1 = (_field_253384.__slice__((_i_253398 + (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        _key_253692 = __tmp__0;
                        _value_253697 = __tmp__1;
                    };
                    _gotoNext = 253772i32;
                } else if (__value__ == (253772i32)) {
                    {
                        final __value__ = _value_253697;
                        if (__value__ == (("on" : stdgo.GoString))) {
                            _gotoNext = 253789i32;
                        } else if (__value__ == (("off" : stdgo.GoString))) {
                            _gotoNext = 253819i32;
                        } else {
                            _gotoNext = 253851i32;
                        };
                    };
                } else if (__value__ == (253789i32)) {
                    _enable_253758 = true;
                    _gotoNext = 253973i32;
                } else if (__value__ == (253819i32)) {
                    _enable_253758 = false;
                    _gotoNext = 253973i32;
                } else if (__value__ == (253851i32)) {
                    stdgo.Go.print(("GODEBUG: value \"" : stdgo.GoString), _value_253697, ("\" not supported for cpu option \"" : stdgo.GoString), _key_253692, ("\"\n" : stdgo.GoString));
                    _gotoNext = 253366i32;
                } else if (__value__ == (253973i32)) {
                    if (_key_253692 == (("all" : stdgo.GoString))) {
                        _gotoNext = 253989i32;
                    } else {
                        _gotoNext = 254112i32;
                    };
                } else if (__value__ == (253989i32)) {
                    if ((0i32 : stdgo.GoInt) < (stdgo._internal.internal.cpu.Cpu__options._options.length)) {
                        _gotoNext = 254084i32;
                    } else {
                        _gotoNext = 254090i32;
                    };
                } else if (__value__ == (254017i32)) {
                    stdgo._internal.internal.cpu.Cpu__options._options[(_i_253998 : stdgo.GoInt)].specified = true;
                    stdgo._internal.internal.cpu.Cpu__options._options[(_i_253998 : stdgo.GoInt)].enable = _enable_253758;
                    _i_253998++;
                    _gotoNext = 254085i32;
                } else if (__value__ == (254084i32)) {
                    _i_253998 = 0i32;
                    _gotoNext = 254085i32;
                } else if (__value__ == (254085i32)) {
                    if (_i_253998 < (stdgo._internal.internal.cpu.Cpu__options._options.length)) {
                        _gotoNext = 254017i32;
                    } else {
                        _gotoNext = 254090i32;
                    };
                } else if (__value__ == (254090i32)) {
                    _gotoNext = 253366i32;
                } else if (__value__ == (254112i32)) {
                    if ((0i32 : stdgo.GoInt) < (stdgo._internal.internal.cpu.Cpu__options._options.length)) {
                        _gotoNext = 254256i32;
                    } else {
                        _gotoNext = 254262i32;
                    };
                } else if (__value__ == (254116i32)) {
                    _i_254116++;
                    _gotoNext = 254257i32;
                } else if (__value__ == (254135i32)) {
                    if (stdgo._internal.internal.cpu.Cpu__options._options[(_i_254116 : stdgo.GoInt)].name == (_key_253692)) {
                        _gotoNext = 254166i32;
                    } else {
                        _gotoNext = 254116i32;
                    };
                } else if (__value__ == (254166i32)) {
                    stdgo._internal.internal.cpu.Cpu__options._options[(_i_254116 : stdgo.GoInt)].specified = true;
                    stdgo._internal.internal.cpu.Cpu__options._options[(_i_254116 : stdgo.GoInt)].enable = _enable_253758;
                    _gotoNext = 253366i32;
                } else if (__value__ == (254256i32)) {
                    _i_254116 = 0i32;
                    _gotoNext = 254257i32;
                } else if (__value__ == (254257i32)) {
                    if (_i_254116 < (stdgo._internal.internal.cpu.Cpu__options._options.length)) {
                        _gotoNext = 254135i32;
                    } else {
                        _gotoNext = 254262i32;
                    };
                } else if (__value__ == (254262i32)) {
                    stdgo.Go.print(("GODEBUG: unknown cpu feature \"" : stdgo.GoString), _key_253692, ("\"\n" : stdgo.GoString));
                    _gotoNext = 253366i32;
                } else if (__value__ == (254321i32)) {
                    if ((0i32 : stdgo.GoInt) < (stdgo._internal.internal.cpu.Cpu__options._options.length)) {
                        _gotoNext = 254534i32;
                    } else {
                        _gotoNext = 254537i32;
                    };
                } else if (__value__ == (254347i32)) {
                    _o_254328 = stdgo._internal.internal.cpu.Cpu__options._options[(_i_254333_0 : stdgo.GoInt)];
                    if (!_o_254328.specified) {
                        _gotoNext = 254367i32;
                    } else {
                        _gotoNext = 254388i32;
                    };
                } else if (__value__ == (254367i32)) {
                    _i_254333_0++;
                    _gotoNext = 254535i32;
                } else if (__value__ == (254388i32)) {
                    if ((_o_254328.enable && !_o_254328.feature.value : Bool)) {
                        _gotoNext = 254415i32;
                    } else {
                        _gotoNext = 254512i32;
                    };
                } else if (__value__ == (254415i32)) {
                    stdgo.Go.print(("GODEBUG: can not enable \"" : stdgo.GoString), _o_254328.name, ("\", missing CPU support\n" : stdgo.GoString));
                    _i_254333_0++;
                    _gotoNext = 254535i32;
                } else if (__value__ == (254512i32)) {
                    _o_254328.feature.value = _o_254328.enable;
                    _i_254333_0++;
                    _gotoNext = 254535i32;
                } else if (__value__ == (254534i32)) {
                    {
                        final __tmp__0 = 0i32;
                        final __tmp__1 = stdgo._internal.internal.cpu.Cpu__options._options[(0i32 : stdgo.GoInt)];
                        _i_254333_0 = __tmp__0;
                        _o_254328 = __tmp__1;
                    };
                    _gotoNext = 254535i32;
                } else if (__value__ == (254535i32)) {
                    if (_i_254333_0 < (stdgo._internal.internal.cpu.Cpu__options._options.length)) {
                        _gotoNext = 254347i32;
                    } else {
                        _gotoNext = 254537i32;
                    };
                } else if (__value__ == (254537i32)) {
                    _gotoNext = -1i32;
                };
            };
        };
    }
