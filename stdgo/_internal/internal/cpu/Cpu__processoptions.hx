package stdgo._internal.internal.cpu;
function _processOptions(_env:stdgo.GoString):Void {
        var _i_1:stdgo.GoInt = (0 : stdgo.GoInt);
        var _field_0:stdgo.GoString = ("" : stdgo.GoString);
        var _o_8:stdgo._internal.internal.cpu.Cpu_t_option.T_option = ({} : stdgo._internal.internal.cpu.Cpu_t_option.T_option);
        var _i_249490_7:stdgo.GoInt = (0 : stdgo.GoInt);
        var _enable_4:Bool = false;
        var _value_3:stdgo.GoString = ("" : stdgo.GoString);
        var _key_2:stdgo.GoString = ("" : stdgo.GoString);
        var _i_5:stdgo.GoInt = (0 : stdgo.GoInt);
        var _fieldBreak = false;
        var _i_6:stdgo.GoInt = (0 : stdgo.GoInt);
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    _gotoNext = 248515i32;
                } else if (__value__ == (248515i32)) {
                    var __blank__ = 0i32;
                    _fieldBreak = false;
                    _gotoNext = 248523i32;
                } else if (__value__ == (248523i32)) {
                    if (!_fieldBreak && (_env != (stdgo.Go.str() : stdgo.GoString))) {
                        _gotoNext = 248537i32;
                    } else {
                        _gotoNext = 249478i32;
                    };
                } else if (__value__ == (248537i32)) {
                    _field_0 = (stdgo.Go.str() : stdgo.GoString)?.__copy__();
                    _i_1 = stdgo._internal.internal.cpu.Cpu__indexbyte._indexByte(_env?.__copy__(), (44 : stdgo.GoUInt8));
                    if ((_i_1 < (0 : stdgo.GoInt) : Bool)) {
                        _gotoNext = 248591i32;
                    } else {
                        _gotoNext = 248626i32;
                    };
                } else if (__value__ == (248591i32)) {
                    {
                        final __tmp__0 = _env?.__copy__();
                        final __tmp__1 = (stdgo.Go.str() : stdgo.GoString)?.__copy__();
                        _field_0 = @:binopAssign __tmp__0;
                        _env = @:binopAssign __tmp__1;
                    };
                    _gotoNext = 248669i32;
                } else if (__value__ == (248626i32)) {
                    _gotoNext = 248626i32;
                    {
                        final __tmp__0 = (_env.__slice__(0, _i_1) : stdgo.GoString)?.__copy__();
                        final __tmp__1 = (_env.__slice__((_i_1 + (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        _field_0 = @:binopAssign __tmp__0;
                        _env = @:binopAssign __tmp__1;
                    };
                    var __blank__ = 0i32;
                    _gotoNext = 248669i32;
                } else if (__value__ == (248669i32)) {
                    if ((((_field_0.length) < (4 : stdgo.GoInt) : Bool) || ((_field_0.__slice__(0, (4 : stdgo.GoInt)) : stdgo.GoString) != ("cpu." : stdgo.GoString)) : Bool)) {
                        _gotoNext = 248710i32;
                    } else {
                        _gotoNext = 248730i32;
                    };
                } else if (__value__ == (248710i32)) {
                    var __blank__ = 0i32;
                    _gotoNext = 248523i32;
                } else if (__value__ == (248730i32)) {
                    _i_1 = stdgo._internal.internal.cpu.Cpu__indexbyte._indexByte(_field_0?.__copy__(), (61 : stdgo.GoUInt8));
                    if ((_i_1 < (0 : stdgo.GoInt) : Bool)) {
                        _gotoNext = 248767i32;
                    } else {
                        _gotoNext = 248849i32;
                    };
                } else if (__value__ == (248767i32)) {
                    stdgo.Go.print(("GODEBUG: no value specified for \"" : stdgo.GoString), _field_0, ("\"\n" : stdgo.GoString));
                    var __blank__ = 0i32;
                    _gotoNext = 248523i32;
                } else if (__value__ == (248849i32)) {
                    {
                        final __tmp__0 = (_field_0.__slice__((4 : stdgo.GoInt), _i_1) : stdgo.GoString)?.__copy__();
                        final __tmp__1 = (_field_0.__slice__((_i_1 + (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        _key_2 = @:binopAssign __tmp__0;
                        _value_3 = @:binopAssign __tmp__1;
                    };
                    _gotoNext = 248929i32;
                } else if (__value__ == (248929i32)) {
                    {
                        final __value__ = _value_3;
                        if (__value__ == (("on" : stdgo.GoString))) {
                            _gotoNext = 248946i32;
                        } else if (__value__ == (("off" : stdgo.GoString))) {
                            _gotoNext = 248976i32;
                        } else {
                            _gotoNext = 249008i32;
                        };
                    };
                } else if (__value__ == (248946i32)) {
                    _enable_4 = true;
                    _gotoNext = 249130i32;
                } else if (__value__ == (248976i32)) {
                    _enable_4 = false;
                    _gotoNext = 249130i32;
                } else if (__value__ == (249008i32)) {
                    stdgo.Go.print(("GODEBUG: value \"" : stdgo.GoString), _value_3, ("\" not supported for cpu option \"" : stdgo.GoString), _key_2, ("\"\n" : stdgo.GoString));
                    _gotoNext = 248523i32;
                } else if (__value__ == (249130i32)) {
                    if (_key_2 == (("all" : stdgo.GoString))) {
                        _gotoNext = 249146i32;
                    } else {
                        _gotoNext = 249269i32;
                    };
                } else if (__value__ == (249146i32)) {
                    if ((0i32 : stdgo.GoInt) < (stdgo._internal.internal.cpu.Cpu__options._options.length)) {
                        _gotoNext = 249241i32;
                    } else {
                        _gotoNext = 249247i32;
                    };
                } else if (__value__ == (249174i32)) {
                    stdgo._internal.internal.cpu.Cpu__options._options[(_i_5 : stdgo.GoInt)].specified = true;
                    stdgo._internal.internal.cpu.Cpu__options._options[(_i_5 : stdgo.GoInt)].enable = _enable_4;
                    _i_5++;
                    _gotoNext = 249242i32;
                } else if (__value__ == (249241i32)) {
                    _i_5 = 0i32;
                    _gotoNext = 249242i32;
                } else if (__value__ == (249242i32)) {
                    if (_i_5 < (stdgo._internal.internal.cpu.Cpu__options._options.length)) {
                        _gotoNext = 249174i32;
                    } else {
                        _gotoNext = 249247i32;
                    };
                } else if (__value__ == (249247i32)) {
                    _gotoNext = 248523i32;
                } else if (__value__ == (249269i32)) {
                    if ((0i32 : stdgo.GoInt) < (stdgo._internal.internal.cpu.Cpu__options._options.length)) {
                        _gotoNext = 249413i32;
                    } else {
                        _gotoNext = 249419i32;
                    };
                } else if (__value__ == (249273i32)) {
                    _i_6++;
                    _gotoNext = 249414i32;
                } else if (__value__ == (249292i32)) {
                    if (stdgo._internal.internal.cpu.Cpu__options._options[(_i_6 : stdgo.GoInt)].name == (_key_2)) {
                        _gotoNext = 249323i32;
                    } else {
                        _gotoNext = 249273i32;
                    };
                } else if (__value__ == (249323i32)) {
                    stdgo._internal.internal.cpu.Cpu__options._options[(_i_6 : stdgo.GoInt)].specified = true;
                    stdgo._internal.internal.cpu.Cpu__options._options[(_i_6 : stdgo.GoInt)].enable = _enable_4;
                    _gotoNext = 248523i32;
                } else if (__value__ == (249413i32)) {
                    _i_6 = 0i32;
                    _gotoNext = 249414i32;
                } else if (__value__ == (249414i32)) {
                    if (_i_6 < (stdgo._internal.internal.cpu.Cpu__options._options.length)) {
                        _gotoNext = 249292i32;
                    } else {
                        _gotoNext = 249419i32;
                    };
                } else if (__value__ == (249419i32)) {
                    stdgo.Go.print(("GODEBUG: unknown cpu feature \"" : stdgo.GoString), _key_2, ("\"\n" : stdgo.GoString));
                    _gotoNext = 248523i32;
                } else if (__value__ == (249478i32)) {
                    if ((0i32 : stdgo.GoInt) < (stdgo._internal.internal.cpu.Cpu__options._options.length)) {
                        _gotoNext = 249691i32;
                    } else {
                        _gotoNext = 249694i32;
                    };
                } else if (__value__ == (249504i32)) {
                    _o_8 = stdgo._internal.internal.cpu.Cpu__options._options[(_i_249490_7 : stdgo.GoInt)];
                    if (!_o_8.specified) {
                        _gotoNext = 249524i32;
                    } else {
                        _gotoNext = 249545i32;
                    };
                } else if (__value__ == (249524i32)) {
                    _i_249490_7++;
                    _gotoNext = 249692i32;
                } else if (__value__ == (249545i32)) {
                    if ((_o_8.enable && !_o_8.feature.value : Bool)) {
                        _gotoNext = 249572i32;
                    } else {
                        _gotoNext = 249669i32;
                    };
                } else if (__value__ == (249572i32)) {
                    stdgo.Go.print(("GODEBUG: can not enable \"" : stdgo.GoString), _o_8.name, ("\", missing CPU support\n" : stdgo.GoString));
                    _i_249490_7++;
                    _gotoNext = 249692i32;
                } else if (__value__ == (249669i32)) {
                    _o_8.feature.value = _o_8.enable;
                    _i_249490_7++;
                    _gotoNext = 249692i32;
                } else if (__value__ == (249691i32)) {
                    {
                        final __tmp__0 = 0i32;
                        final __tmp__1 = stdgo._internal.internal.cpu.Cpu__options._options[(0i32 : stdgo.GoInt)];
                        _i_249490_7 = @:binopAssign __tmp__0;
                        _o_8 = @:binopAssign __tmp__1;
                    };
                    _gotoNext = 249692i32;
                } else if (__value__ == (249692i32)) {
                    if (_i_249490_7 < (stdgo._internal.internal.cpu.Cpu__options._options.length)) {
                        _gotoNext = 249504i32;
                    } else {
                        _gotoNext = 249694i32;
                    };
                } else if (__value__ == (249694i32)) {
                    _gotoNext = -1i32;
                };
            };
        };
    }
