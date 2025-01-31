package stdgo._internal.internal.cpu;
function _processOptions(_env:stdgo.GoString):Void {
        var _key_16390:stdgo.GoString = ("" : stdgo.GoString);
        var _i_16096:stdgo.GoInt = (0 : stdgo.GoInt);
        var _field_16082:stdgo.GoString = ("" : stdgo.GoString);
        var _i_17031_0:stdgo.GoInt = (0 : stdgo.GoInt);
        var _i_16696:stdgo.GoInt = (0 : stdgo.GoInt);
        var _enable_16456:Bool = false;
        var _value_16395:stdgo.GoString = ("" : stdgo.GoString);
        var _o_17026:stdgo._internal.internal.cpu.Cpu_T_option.T_option = ({} : stdgo._internal.internal.cpu.Cpu_T_option.T_option);
        var _i_16814:stdgo.GoInt = (0 : stdgo.GoInt);
        var _fieldBreak = false;
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    _gotoNext = 16056i32;
                } else if (__value__ == (16056i32)) {
                    var __blank__ = 0i32;
                    _fieldBreak = false;
                    _gotoNext = 16064i32;
                } else if (__value__ == (16064i32)) {
                    if (!_fieldBreak && (_env != stdgo.Go.str())) {
                        _gotoNext = 16078i32;
                    } else {
                        _gotoNext = 17019i32;
                    };
                } else if (__value__ == (16078i32)) {
                    _field_16082 = stdgo.Go.str()?.__copy__();
                    _i_16096 = stdgo._internal.internal.cpu.Cpu__indexByte._indexByte(_env?.__copy__(), (44 : stdgo.GoUInt8));
                    if ((_i_16096 < (0 : stdgo.GoInt) : Bool)) {
                        _gotoNext = 16132i32;
                    } else {
                        _gotoNext = 16167i32;
                    };
                } else if (__value__ == (16132i32)) {
                    {
                        final __tmp__0 = _env?.__copy__();
                        final __tmp__1 = stdgo.Go.str()?.__copy__();
                        _field_16082 = __tmp__0;
                        _env = __tmp__1;
                    };
                    _gotoNext = 16210i32;
                } else if (__value__ == (16167i32)) {
                    _gotoNext = 16167i32;
                    {
                        final __tmp__0 = (_env.__slice__(0, _i_16096) : stdgo.GoString)?.__copy__();
                        final __tmp__1 = (_env.__slice__((_i_16096 + (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        _field_16082 = __tmp__0;
                        _env = __tmp__1;
                    };
                    var __blank__ = 0i32;
                    _gotoNext = 16210i32;
                } else if (__value__ == (16210i32)) {
                    if ((((_field_16082.length) < (4 : stdgo.GoInt) : Bool) || ((_field_16082.__slice__(0, (4 : stdgo.GoInt)) : stdgo.GoString) != ("cpu." : stdgo.GoString)) : Bool)) {
                        _gotoNext = 16251i32;
                    } else {
                        _gotoNext = 16271i32;
                    };
                } else if (__value__ == (16251i32)) {
                    var __blank__ = 0i32;
                    _gotoNext = 16064i32;
                } else if (__value__ == (16271i32)) {
                    _i_16096 = stdgo._internal.internal.cpu.Cpu__indexByte._indexByte(_field_16082?.__copy__(), (61 : stdgo.GoUInt8));
                    if ((_i_16096 < (0 : stdgo.GoInt) : Bool)) {
                        _gotoNext = 16308i32;
                    } else {
                        _gotoNext = 16390i32;
                    };
                } else if (__value__ == (16308i32)) {
                    stdgo.Go.print(("GODEBUG: no value specified for \"" : stdgo.GoString), _field_16082, ("\"\n" : stdgo.GoString));
                    var __blank__ = 0i32;
                    _gotoNext = 16064i32;
                } else if (__value__ == (16390i32)) {
                    {
                        final __tmp__0 = (_field_16082.__slice__((4 : stdgo.GoInt), _i_16096) : stdgo.GoString)?.__copy__();
                        final __tmp__1 = (_field_16082.__slice__((_i_16096 + (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        _key_16390 = __tmp__0;
                        _value_16395 = __tmp__1;
                    };
                    _gotoNext = 16470i32;
                } else if (__value__ == (16470i32)) {
                    {
                        final __value__ = _value_16395;
                        if (__value__ == (("on" : stdgo.GoString))) {
                            _gotoNext = 16487i32;
                        } else if (__value__ == (("off" : stdgo.GoString))) {
                            _gotoNext = 16517i32;
                        } else {
                            _gotoNext = 16549i32;
                        };
                    };
                } else if (__value__ == (16487i32)) {
                    _enable_16456 = true;
                    _gotoNext = 16671i32;
                } else if (__value__ == (16517i32)) {
                    _enable_16456 = false;
                    _gotoNext = 16671i32;
                } else if (__value__ == (16549i32)) {
                    stdgo.Go.print(("GODEBUG: value \"" : stdgo.GoString), _value_16395, ("\" not supported for cpu option \"" : stdgo.GoString), _key_16390, ("\"\n" : stdgo.GoString));
                    _gotoNext = 16064i32;
                } else if (__value__ == (16671i32)) {
                    if (_key_16390 == (("all" : stdgo.GoString))) {
                        _gotoNext = 16687i32;
                    } else {
                        _gotoNext = 16810i32;
                    };
                } else if (__value__ == (16687i32)) {
                    if ((0i32 : stdgo.GoInt) < (stdgo._internal.internal.cpu.Cpu__options._options.length)) {
                        _gotoNext = 16782i32;
                    } else {
                        _gotoNext = 16788i32;
                    };
                } else if (__value__ == (16715i32)) {
                    stdgo._internal.internal.cpu.Cpu__options._options[(_i_16696 : stdgo.GoInt)].specified = true;
                    stdgo._internal.internal.cpu.Cpu__options._options[(_i_16696 : stdgo.GoInt)].enable = _enable_16456;
                    _i_16696++;
                    _gotoNext = 16783i32;
                } else if (__value__ == (16782i32)) {
                    _i_16696 = 0i32;
                    _gotoNext = 16783i32;
                } else if (__value__ == (16783i32)) {
                    if (_i_16696 < (stdgo._internal.internal.cpu.Cpu__options._options.length)) {
                        _gotoNext = 16715i32;
                    } else {
                        _gotoNext = 16788i32;
                    };
                } else if (__value__ == (16788i32)) {
                    _gotoNext = 16064i32;
                } else if (__value__ == (16810i32)) {
                    if ((0i32 : stdgo.GoInt) < (stdgo._internal.internal.cpu.Cpu__options._options.length)) {
                        _gotoNext = 16954i32;
                    } else {
                        _gotoNext = 16960i32;
                    };
                } else if (__value__ == (16814i32)) {
                    _i_16814++;
                    _gotoNext = 16955i32;
                } else if (__value__ == (16833i32)) {
                    if (stdgo._internal.internal.cpu.Cpu__options._options[(_i_16814 : stdgo.GoInt)].name == (_key_16390)) {
                        _gotoNext = 16864i32;
                    } else {
                        _gotoNext = 16814i32;
                    };
                } else if (__value__ == (16864i32)) {
                    stdgo._internal.internal.cpu.Cpu__options._options[(_i_16814 : stdgo.GoInt)].specified = true;
                    stdgo._internal.internal.cpu.Cpu__options._options[(_i_16814 : stdgo.GoInt)].enable = _enable_16456;
                    _gotoNext = 16064i32;
                } else if (__value__ == (16954i32)) {
                    _i_16814 = 0i32;
                    _gotoNext = 16955i32;
                } else if (__value__ == (16955i32)) {
                    if (_i_16814 < (stdgo._internal.internal.cpu.Cpu__options._options.length)) {
                        _gotoNext = 16833i32;
                    } else {
                        _gotoNext = 16960i32;
                    };
                } else if (__value__ == (16960i32)) {
                    stdgo.Go.print(("GODEBUG: unknown cpu feature \"" : stdgo.GoString), _key_16390, ("\"\n" : stdgo.GoString));
                    _gotoNext = 16064i32;
                } else if (__value__ == (17019i32)) {
                    if ((0i32 : stdgo.GoInt) < (stdgo._internal.internal.cpu.Cpu__options._options.length)) {
                        _gotoNext = 17232i32;
                    } else {
                        _gotoNext = 17235i32;
                    };
                } else if (__value__ == (17045i32)) {
                    _o_17026 = stdgo._internal.internal.cpu.Cpu__options._options[(_i_17031_0 : stdgo.GoInt)];
                    if (!_o_17026.specified) {
                        _gotoNext = 17065i32;
                    } else {
                        _gotoNext = 17086i32;
                    };
                } else if (__value__ == (17065i32)) {
                    _i_17031_0++;
                    _gotoNext = 17233i32;
                } else if (__value__ == (17086i32)) {
                    if ((_o_17026.enable && !_o_17026.feature.value : Bool)) {
                        _gotoNext = 17113i32;
                    } else {
                        _gotoNext = 17210i32;
                    };
                } else if (__value__ == (17113i32)) {
                    stdgo.Go.print(("GODEBUG: can not enable \"" : stdgo.GoString), _o_17026.name, ("\", missing CPU support\n" : stdgo.GoString));
                    _i_17031_0++;
                    _gotoNext = 17233i32;
                } else if (__value__ == (17210i32)) {
                    _o_17026.feature.value = _o_17026.enable;
                    _i_17031_0++;
                    _gotoNext = 17233i32;
                } else if (__value__ == (17232i32)) {
                    {
                        final __tmp__0 = 0i32;
                        final __tmp__1 = stdgo._internal.internal.cpu.Cpu__options._options[(0i32 : stdgo.GoInt)];
                        _i_17031_0 = __tmp__0;
                        _o_17026 = __tmp__1;
                    };
                    _gotoNext = 17233i32;
                } else if (__value__ == (17233i32)) {
                    if (_i_17031_0 < (stdgo._internal.internal.cpu.Cpu__options._options.length)) {
                        _gotoNext = 17045i32;
                    } else {
                        _gotoNext = 17235i32;
                    };
                } else if (__value__ == (17235i32)) {
                    _gotoNext = -1i32;
                };
            };
        };
    }
