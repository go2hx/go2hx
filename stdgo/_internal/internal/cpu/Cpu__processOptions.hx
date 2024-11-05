package stdgo._internal.internal.cpu;
function _processOptions(_env:stdgo.GoString):Void {
        var _i_220554:stdgo.GoInt = (0 : stdgo.GoInt);
        var _field_220540:stdgo.GoString = ("" : stdgo.GoString);
        var _fieldBreak = false;
        var _o_221484:stdgo._internal.internal.cpu.Cpu_T_option.T_option = ({} : stdgo._internal.internal.cpu.Cpu_T_option.T_option);
        var _i_221154:stdgo.GoInt = (0 : stdgo.GoInt);
        var _value_220853:stdgo.GoString = ("" : stdgo.GoString);
        var _i_221272:stdgo.GoInt = (0 : stdgo.GoInt);
        var _enable_220914:Bool = false;
        var _key_220848:stdgo.GoString = ("" : stdgo.GoString);
        var _i_221489_0:stdgo.GoInt = (0 : stdgo.GoInt);
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    _gotoNext = 220514i32;
                } else if (__value__ == (220514i32)) {
                    var __blank__ = 0i32;
                    _fieldBreak = false;
                    _gotoNext = 220522i32;
                } else if (__value__ == (220522i32)) {
                    if (!_fieldBreak && (_env != stdgo.Go.str())) {
                        _gotoNext = 220536i32;
                    } else {
                        _gotoNext = 221477i32;
                    };
                } else if (__value__ == (220536i32)) {
                    _field_220540 = stdgo.Go.str()?.__copy__();
                    _i_220554 = stdgo._internal.internal.cpu.Cpu__indexByte._indexByte(_env?.__copy__(), (44 : stdgo.GoUInt8));
                    if ((_i_220554 < (0 : stdgo.GoInt) : Bool)) {
                        _gotoNext = 220590i32;
                    } else {
                        _gotoNext = 220625i32;
                    };
                } else if (__value__ == (220590i32)) {
                    {
                        final __tmp__0 = _env?.__copy__();
                        final __tmp__1 = stdgo.Go.str()?.__copy__();
                        _field_220540 = __tmp__0;
                        _env = __tmp__1;
                    };
                    _gotoNext = 220668i32;
                } else if (__value__ == (220625i32)) {
                    {
                        final __tmp__0 = (_env.__slice__(0, _i_220554) : stdgo.GoString)?.__copy__();
                        final __tmp__1 = (_env.__slice__((_i_220554 + (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        _field_220540 = __tmp__0;
                        _env = __tmp__1;
                    };
                    _gotoNext = 220668i32;
                } else if (__value__ == (220668i32)) {
                    if ((((_field_220540.length) < (4 : stdgo.GoInt) : Bool) || ((_field_220540.__slice__(0, (4 : stdgo.GoInt)) : stdgo.GoString) != ("cpu." : stdgo.GoString)) : Bool)) {
                        _gotoNext = 220709i32;
                    } else {
                        _gotoNext = 220729i32;
                    };
                } else if (__value__ == (220709i32)) {
                    var __blank__ = 0i32;
                    _gotoNext = 220522i32;
                } else if (__value__ == (220729i32)) {
                    _i_220554 = stdgo._internal.internal.cpu.Cpu__indexByte._indexByte(_field_220540?.__copy__(), (61 : stdgo.GoUInt8));
                    if ((_i_220554 < (0 : stdgo.GoInt) : Bool)) {
                        _gotoNext = 220766i32;
                    } else {
                        _gotoNext = 220848i32;
                    };
                } else if (__value__ == (220766i32)) {
                    stdgo.Go.print(("GODEBUG: no value specified for \"" : stdgo.GoString), _field_220540, ("\"\n" : stdgo.GoString));
                    var __blank__ = 0i32;
                    _gotoNext = 220522i32;
                } else if (__value__ == (220848i32)) {
                    {
                        final __tmp__0 = (_field_220540.__slice__((4 : stdgo.GoInt), _i_220554) : stdgo.GoString)?.__copy__();
                        final __tmp__1 = (_field_220540.__slice__((_i_220554 + (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        _key_220848 = __tmp__0;
                        _value_220853 = __tmp__1;
                    };
                    var __blank__ = 0i32;
                    _gotoNext = 220928i32;
                } else if (__value__ == (220928i32)) {
                    {
                        final __value__ = _value_220853;
                        if (__value__ == (("on" : stdgo.GoString))) {
                            _gotoNext = 220945i32;
                        } else if (__value__ == (("off" : stdgo.GoString))) {
                            _gotoNext = 220975i32;
                        } else {
                            _gotoNext = 221007i32;
                        };
                    };
                } else if (__value__ == (220945i32)) {
                    _enable_220914 = true;
                    _gotoNext = 221129i32;
                } else if (__value__ == (220975i32)) {
                    _enable_220914 = false;
                    _gotoNext = 221129i32;
                } else if (__value__ == (221007i32)) {
                    stdgo.Go.print(("GODEBUG: value \"" : stdgo.GoString), _value_220853, ("\" not supported for cpu option \"" : stdgo.GoString), _key_220848, ("\"\n" : stdgo.GoString));
                    _gotoNext = 220522i32;
                } else if (__value__ == (221129i32)) {
                    if (_key_220848 == (("all" : stdgo.GoString))) {
                        _gotoNext = 221145i32;
                    } else {
                        _gotoNext = 221268i32;
                    };
                } else if (__value__ == (221145i32)) {
                    if ((0i32 : stdgo.GoInt) < (stdgo._internal.internal.cpu.Cpu__options._options.length)) {
                        _gotoNext = 221240i32;
                    } else {
                        _gotoNext = 221246i32;
                    };
                } else if (__value__ == (221173i32)) {
                    stdgo._internal.internal.cpu.Cpu__options._options[(_i_221154 : stdgo.GoInt)].specified = true;
                    stdgo._internal.internal.cpu.Cpu__options._options[(_i_221154 : stdgo.GoInt)].enable = _enable_220914;
                    _i_221154++;
                    _gotoNext = 221241i32;
                } else if (__value__ == (221240i32)) {
                    _i_221154 = 0i32;
                    _gotoNext = 221241i32;
                } else if (__value__ == (221241i32)) {
                    if (_i_221154 < (stdgo._internal.internal.cpu.Cpu__options._options.length)) {
                        _gotoNext = 221173i32;
                    } else {
                        _gotoNext = 221246i32;
                    };
                } else if (__value__ == (221246i32)) {
                    _gotoNext = 220522i32;
                } else if (__value__ == (221268i32)) {
                    if ((0i32 : stdgo.GoInt) < (stdgo._internal.internal.cpu.Cpu__options._options.length)) {
                        _gotoNext = 221412i32;
                    } else {
                        _gotoNext = 221418i32;
                    };
                } else if (__value__ == (221272i32)) {
                    _i_221272++;
                    _gotoNext = 221413i32;
                } else if (__value__ == (221291i32)) {
                    if (stdgo._internal.internal.cpu.Cpu__options._options[(_i_221272 : stdgo.GoInt)].name == (_key_220848)) {
                        _gotoNext = 221322i32;
                    } else {
                        _gotoNext = 221272i32;
                    };
                } else if (__value__ == (221322i32)) {
                    stdgo._internal.internal.cpu.Cpu__options._options[(_i_221272 : stdgo.GoInt)].specified = true;
                    stdgo._internal.internal.cpu.Cpu__options._options[(_i_221272 : stdgo.GoInt)].enable = _enable_220914;
                    _gotoNext = 220522i32;
                } else if (__value__ == (221412i32)) {
                    _i_221272 = 0i32;
                    _gotoNext = 221413i32;
                } else if (__value__ == (221413i32)) {
                    if (_i_221272 < (stdgo._internal.internal.cpu.Cpu__options._options.length)) {
                        _gotoNext = 221291i32;
                    } else {
                        _gotoNext = 221418i32;
                    };
                } else if (__value__ == (221418i32)) {
                    stdgo.Go.print(("GODEBUG: unknown cpu feature \"" : stdgo.GoString), _key_220848, ("\"\n" : stdgo.GoString));
                    _gotoNext = 220522i32;
                } else if (__value__ == (221477i32)) {
                    if ((0i32 : stdgo.GoInt) < (stdgo._internal.internal.cpu.Cpu__options._options.length)) {
                        _gotoNext = 221690i32;
                    } else {
                        _gotoNext = 221693i32;
                    };
                } else if (__value__ == (221503i32)) {
                    _o_221484 = stdgo._internal.internal.cpu.Cpu__options._options[(_i_221489_0 : stdgo.GoInt)];
                    if (!_o_221484.specified) {
                        _gotoNext = 221523i32;
                    } else {
                        _gotoNext = 221544i32;
                    };
                } else if (__value__ == (221523i32)) {
                    _i_221489_0++;
                    _gotoNext = 221691i32;
                } else if (__value__ == (221544i32)) {
                    if ((_o_221484.enable && !_o_221484.feature.value : Bool)) {
                        _gotoNext = 221571i32;
                    } else {
                        _gotoNext = 221668i32;
                    };
                } else if (__value__ == (221571i32)) {
                    stdgo.Go.print(("GODEBUG: can not enable \"" : stdgo.GoString), _o_221484.name, ("\", missing CPU support\n" : stdgo.GoString));
                    _i_221489_0++;
                    _gotoNext = 221691i32;
                } else if (__value__ == (221668i32)) {
                    _o_221484.feature.value = _o_221484.enable;
                    _i_221489_0++;
                    _gotoNext = 221691i32;
                } else if (__value__ == (221690i32)) {
                    {
                        final __tmp__0 = 0i32;
                        final __tmp__1 = stdgo._internal.internal.cpu.Cpu__options._options[(0i32 : stdgo.GoInt)];
                        _i_221489_0 = __tmp__0;
                        _o_221484 = __tmp__1;
                    };
                    _gotoNext = 221691i32;
                } else if (__value__ == (221691i32)) {
                    if (_i_221489_0 < (stdgo._internal.internal.cpu.Cpu__options._options.length)) {
                        _gotoNext = 221503i32;
                    } else {
                        _gotoNext = 221693i32;
                    };
                } else if (__value__ == (221693i32)) {
                    _gotoNext = -1i32;
                };
            };
        };
    }
