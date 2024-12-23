package stdgo._internal.internal.cpu;
function _processOptions(_env:stdgo.GoString):Void {
        var _field_5617:stdgo.GoString = ("" : stdgo.GoString);
        var _fieldBreak = false;
        var _o_6561:stdgo._internal.internal.cpu.Cpu_T_option.T_option = ({} : stdgo._internal.internal.cpu.Cpu_T_option.T_option);
        var _i_6231:stdgo.GoInt = (0 : stdgo.GoInt);
        var _enable_5991:Bool = false;
        var _value_5930:stdgo.GoString = ("" : stdgo.GoString);
        var _i_5631:stdgo.GoInt = (0 : stdgo.GoInt);
        var _i_6349:stdgo.GoInt = (0 : stdgo.GoInt);
        var _key_5925:stdgo.GoString = ("" : stdgo.GoString);
        var _i_6566_0:stdgo.GoInt = (0 : stdgo.GoInt);
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    _gotoNext = 5591i32;
                } else if (__value__ == (5591i32)) {
                    var __blank__ = 0i32;
                    _fieldBreak = false;
                    _gotoNext = 5599i32;
                } else if (__value__ == (5599i32)) {
                    if (!_fieldBreak && (_env != stdgo.Go.str())) {
                        _gotoNext = 5613i32;
                    } else {
                        _gotoNext = 6554i32;
                    };
                } else if (__value__ == (5613i32)) {
                    _field_5617 = stdgo.Go.str()?.__copy__();
                    _i_5631 = stdgo._internal.internal.cpu.Cpu__indexByte._indexByte(_env?.__copy__(), (44 : stdgo.GoUInt8));
                    if ((_i_5631 < (0 : stdgo.GoInt) : Bool)) {
                        _gotoNext = 5667i32;
                    } else {
                        _gotoNext = 5702i32;
                    };
                } else if (__value__ == (5667i32)) {
                    {
                        final __tmp__0 = _env?.__copy__();
                        final __tmp__1 = stdgo.Go.str()?.__copy__();
                        _field_5617 = __tmp__0;
                        _env = __tmp__1;
                    };
                    _gotoNext = 5745i32;
                } else if (__value__ == (5702i32)) {
                    _gotoNext = 5702i32;
                    {
                        final __tmp__0 = (_env.__slice__(0, _i_5631) : stdgo.GoString)?.__copy__();
                        final __tmp__1 = (_env.__slice__((_i_5631 + (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        _field_5617 = __tmp__0;
                        _env = __tmp__1;
                    };
                    var __blank__ = 0i32;
                    _gotoNext = 5745i32;
                } else if (__value__ == (5745i32)) {
                    if ((((_field_5617.length) < (4 : stdgo.GoInt) : Bool) || ((_field_5617.__slice__(0, (4 : stdgo.GoInt)) : stdgo.GoString) != ("cpu." : stdgo.GoString)) : Bool)) {
                        _gotoNext = 5786i32;
                    } else {
                        _gotoNext = 5806i32;
                    };
                } else if (__value__ == (5786i32)) {
                    var __blank__ = 0i32;
                    _gotoNext = 5599i32;
                } else if (__value__ == (5806i32)) {
                    _i_5631 = stdgo._internal.internal.cpu.Cpu__indexByte._indexByte(_field_5617?.__copy__(), (61 : stdgo.GoUInt8));
                    if ((_i_5631 < (0 : stdgo.GoInt) : Bool)) {
                        _gotoNext = 5843i32;
                    } else {
                        _gotoNext = 5925i32;
                    };
                } else if (__value__ == (5843i32)) {
                    stdgo.Go.print(("GODEBUG: no value specified for \"" : stdgo.GoString), _field_5617, ("\"\n" : stdgo.GoString));
                    var __blank__ = 0i32;
                    _gotoNext = 5599i32;
                } else if (__value__ == (5925i32)) {
                    {
                        final __tmp__0 = (_field_5617.__slice__((4 : stdgo.GoInt), _i_5631) : stdgo.GoString)?.__copy__();
                        final __tmp__1 = (_field_5617.__slice__((_i_5631 + (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        _key_5925 = __tmp__0;
                        _value_5930 = __tmp__1;
                    };
                    _gotoNext = 6005i32;
                } else if (__value__ == (6005i32)) {
                    {
                        final __value__ = _value_5930;
                        if (__value__ == (("on" : stdgo.GoString))) {
                            _gotoNext = 6022i32;
                        } else if (__value__ == (("off" : stdgo.GoString))) {
                            _gotoNext = 6052i32;
                        } else {
                            _gotoNext = 6084i32;
                        };
                    };
                } else if (__value__ == (6022i32)) {
                    _enable_5991 = true;
                    _gotoNext = 6206i32;
                } else if (__value__ == (6052i32)) {
                    _enable_5991 = false;
                    _gotoNext = 6206i32;
                } else if (__value__ == (6084i32)) {
                    stdgo.Go.print(("GODEBUG: value \"" : stdgo.GoString), _value_5930, ("\" not supported for cpu option \"" : stdgo.GoString), _key_5925, ("\"\n" : stdgo.GoString));
                    _gotoNext = 5599i32;
                } else if (__value__ == (6206i32)) {
                    if (_key_5925 == (("all" : stdgo.GoString))) {
                        _gotoNext = 6222i32;
                    } else {
                        _gotoNext = 6345i32;
                    };
                } else if (__value__ == (6222i32)) {
                    if ((0i32 : stdgo.GoInt) < (stdgo._internal.internal.cpu.Cpu__options._options.length)) {
                        _gotoNext = 6317i32;
                    } else {
                        _gotoNext = 6323i32;
                    };
                } else if (__value__ == (6250i32)) {
                    stdgo._internal.internal.cpu.Cpu__options._options[(_i_6231 : stdgo.GoInt)].specified = true;
                    stdgo._internal.internal.cpu.Cpu__options._options[(_i_6231 : stdgo.GoInt)].enable = _enable_5991;
                    _i_6231++;
                    _gotoNext = 6318i32;
                } else if (__value__ == (6317i32)) {
                    _i_6231 = 0i32;
                    _gotoNext = 6318i32;
                } else if (__value__ == (6318i32)) {
                    if (_i_6231 < (stdgo._internal.internal.cpu.Cpu__options._options.length)) {
                        _gotoNext = 6250i32;
                    } else {
                        _gotoNext = 6323i32;
                    };
                } else if (__value__ == (6323i32)) {
                    _gotoNext = 5599i32;
                } else if (__value__ == (6345i32)) {
                    if ((0i32 : stdgo.GoInt) < (stdgo._internal.internal.cpu.Cpu__options._options.length)) {
                        _gotoNext = 6489i32;
                    } else {
                        _gotoNext = 6495i32;
                    };
                } else if (__value__ == (6349i32)) {
                    _i_6349++;
                    _gotoNext = 6490i32;
                } else if (__value__ == (6368i32)) {
                    if (stdgo._internal.internal.cpu.Cpu__options._options[(_i_6349 : stdgo.GoInt)].name == (_key_5925)) {
                        _gotoNext = 6399i32;
                    } else {
                        _gotoNext = 6349i32;
                    };
                } else if (__value__ == (6399i32)) {
                    stdgo._internal.internal.cpu.Cpu__options._options[(_i_6349 : stdgo.GoInt)].specified = true;
                    stdgo._internal.internal.cpu.Cpu__options._options[(_i_6349 : stdgo.GoInt)].enable = _enable_5991;
                    _gotoNext = 5599i32;
                } else if (__value__ == (6489i32)) {
                    _i_6349 = 0i32;
                    _gotoNext = 6490i32;
                } else if (__value__ == (6490i32)) {
                    if (_i_6349 < (stdgo._internal.internal.cpu.Cpu__options._options.length)) {
                        _gotoNext = 6368i32;
                    } else {
                        _gotoNext = 6495i32;
                    };
                } else if (__value__ == (6495i32)) {
                    stdgo.Go.print(("GODEBUG: unknown cpu feature \"" : stdgo.GoString), _key_5925, ("\"\n" : stdgo.GoString));
                    _gotoNext = 5599i32;
                } else if (__value__ == (6554i32)) {
                    if ((0i32 : stdgo.GoInt) < (stdgo._internal.internal.cpu.Cpu__options._options.length)) {
                        _gotoNext = 6767i32;
                    } else {
                        _gotoNext = 6770i32;
                    };
                } else if (__value__ == (6580i32)) {
                    _o_6561 = stdgo._internal.internal.cpu.Cpu__options._options[(_i_6566_0 : stdgo.GoInt)];
                    if (!_o_6561.specified) {
                        _gotoNext = 6600i32;
                    } else {
                        _gotoNext = 6621i32;
                    };
                } else if (__value__ == (6600i32)) {
                    _i_6566_0++;
                    _gotoNext = 6768i32;
                } else if (__value__ == (6621i32)) {
                    if ((_o_6561.enable && !_o_6561.feature.value : Bool)) {
                        _gotoNext = 6648i32;
                    } else {
                        _gotoNext = 6745i32;
                    };
                } else if (__value__ == (6648i32)) {
                    stdgo.Go.print(("GODEBUG: can not enable \"" : stdgo.GoString), _o_6561.name, ("\", missing CPU support\n" : stdgo.GoString));
                    _i_6566_0++;
                    _gotoNext = 6768i32;
                } else if (__value__ == (6745i32)) {
                    _o_6561.feature.value = _o_6561.enable;
                    _i_6566_0++;
                    _gotoNext = 6768i32;
                } else if (__value__ == (6767i32)) {
                    {
                        final __tmp__0 = 0i32;
                        final __tmp__1 = stdgo._internal.internal.cpu.Cpu__options._options[(0i32 : stdgo.GoInt)];
                        _i_6566_0 = __tmp__0;
                        _o_6561 = __tmp__1;
                    };
                    _gotoNext = 6768i32;
                } else if (__value__ == (6768i32)) {
                    if (_i_6566_0 < (stdgo._internal.internal.cpu.Cpu__options._options.length)) {
                        _gotoNext = 6580i32;
                    } else {
                        _gotoNext = 6770i32;
                    };
                } else if (__value__ == (6770i32)) {
                    _gotoNext = -1i32;
                };
            };
        };
    }
