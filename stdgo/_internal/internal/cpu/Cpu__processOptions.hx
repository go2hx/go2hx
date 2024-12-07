package stdgo._internal.internal.cpu;
function _processOptions(_env:stdgo.GoString):Void {
        var _enable_260234:Bool = false;
        var _i_259874:stdgo.GoInt = (0 : stdgo.GoInt);
        var _field_259860:stdgo.GoString = ("" : stdgo.GoString);
        var _i_260592:stdgo.GoInt = (0 : stdgo.GoInt);
        var _i_260474:stdgo.GoInt = (0 : stdgo.GoInt);
        var _value_260173:stdgo.GoString = ("" : stdgo.GoString);
        var _key_260168:stdgo.GoString = ("" : stdgo.GoString);
        var _fieldBreak = false;
        var _o_260804:stdgo._internal.internal.cpu.Cpu_T_option.T_option = ({} : stdgo._internal.internal.cpu.Cpu_T_option.T_option);
        var _i_260809_0:stdgo.GoInt = (0 : stdgo.GoInt);
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    _gotoNext = 259834i32;
                } else if (__value__ == (259834i32)) {
                    var __blank__ = 0i32;
                    _fieldBreak = false;
                    _gotoNext = 259842i32;
                } else if (__value__ == (259842i32)) {
                    if (!_fieldBreak && (_env != stdgo.Go.str())) {
                        _gotoNext = 259856i32;
                    } else {
                        _gotoNext = 260797i32;
                    };
                } else if (__value__ == (259856i32)) {
                    _field_259860 = stdgo.Go.str()?.__copy__();
                    _i_259874 = stdgo._internal.internal.cpu.Cpu__indexByte._indexByte(_env?.__copy__(), (44 : stdgo.GoUInt8));
                    if ((_i_259874 < (0 : stdgo.GoInt) : Bool)) {
                        _gotoNext = 259910i32;
                    } else {
                        _gotoNext = 259945i32;
                    };
                } else if (__value__ == (259910i32)) {
                    {
                        final __tmp__0 = _env?.__copy__();
                        final __tmp__1 = stdgo.Go.str()?.__copy__();
                        _field_259860 = __tmp__0;
                        _env = __tmp__1;
                    };
                    _gotoNext = 259988i32;
                } else if (__value__ == (259945i32)) {
                    _gotoNext = 259945i32;
                    {
                        final __tmp__0 = (_env.__slice__(0, _i_259874) : stdgo.GoString)?.__copy__();
                        final __tmp__1 = (_env.__slice__((_i_259874 + (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        _field_259860 = __tmp__0;
                        _env = __tmp__1;
                    };
                    var __blank__ = 0i32;
                    _gotoNext = 259988i32;
                } else if (__value__ == (259988i32)) {
                    if ((((_field_259860.length) < (4 : stdgo.GoInt) : Bool) || ((_field_259860.__slice__(0, (4 : stdgo.GoInt)) : stdgo.GoString) != ("cpu." : stdgo.GoString)) : Bool)) {
                        _gotoNext = 260029i32;
                    } else {
                        _gotoNext = 260049i32;
                    };
                } else if (__value__ == (260029i32)) {
                    var __blank__ = 0i32;
                    _gotoNext = 259842i32;
                } else if (__value__ == (260049i32)) {
                    _i_259874 = stdgo._internal.internal.cpu.Cpu__indexByte._indexByte(_field_259860?.__copy__(), (61 : stdgo.GoUInt8));
                    if ((_i_259874 < (0 : stdgo.GoInt) : Bool)) {
                        _gotoNext = 260086i32;
                    } else {
                        _gotoNext = 260168i32;
                    };
                } else if (__value__ == (260086i32)) {
                    stdgo.Go.print(("GODEBUG: no value specified for \"" : stdgo.GoString), _field_259860, ("\"\n" : stdgo.GoString));
                    var __blank__ = 0i32;
                    _gotoNext = 259842i32;
                } else if (__value__ == (260168i32)) {
                    {
                        final __tmp__0 = (_field_259860.__slice__((4 : stdgo.GoInt), _i_259874) : stdgo.GoString)?.__copy__();
                        final __tmp__1 = (_field_259860.__slice__((_i_259874 + (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        _key_260168 = __tmp__0;
                        _value_260173 = __tmp__1;
                    };
                    _gotoNext = 260248i32;
                } else if (__value__ == (260248i32)) {
                    {
                        final __value__ = _value_260173;
                        if (__value__ == (("on" : stdgo.GoString))) {
                            _gotoNext = 260265i32;
                        } else if (__value__ == (("off" : stdgo.GoString))) {
                            _gotoNext = 260295i32;
                        } else {
                            _gotoNext = 260327i32;
                        };
                    };
                } else if (__value__ == (260265i32)) {
                    _enable_260234 = true;
                    _gotoNext = 260449i32;
                } else if (__value__ == (260295i32)) {
                    _enable_260234 = false;
                    _gotoNext = 260449i32;
                } else if (__value__ == (260327i32)) {
                    stdgo.Go.print(("GODEBUG: value \"" : stdgo.GoString), _value_260173, ("\" not supported for cpu option \"" : stdgo.GoString), _key_260168, ("\"\n" : stdgo.GoString));
                    _gotoNext = 259842i32;
                } else if (__value__ == (260449i32)) {
                    if (_key_260168 == (("all" : stdgo.GoString))) {
                        _gotoNext = 260465i32;
                    } else {
                        _gotoNext = 260588i32;
                    };
                } else if (__value__ == (260465i32)) {
                    if ((0i32 : stdgo.GoInt) < (stdgo._internal.internal.cpu.Cpu__options._options.length)) {
                        _gotoNext = 260560i32;
                    } else {
                        _gotoNext = 260566i32;
                    };
                } else if (__value__ == (260493i32)) {
                    stdgo._internal.internal.cpu.Cpu__options._options[(_i_260474 : stdgo.GoInt)].specified = true;
                    stdgo._internal.internal.cpu.Cpu__options._options[(_i_260474 : stdgo.GoInt)].enable = _enable_260234;
                    _i_260474++;
                    _gotoNext = 260561i32;
                } else if (__value__ == (260560i32)) {
                    _i_260474 = 0i32;
                    _gotoNext = 260561i32;
                } else if (__value__ == (260561i32)) {
                    if (_i_260474 < (stdgo._internal.internal.cpu.Cpu__options._options.length)) {
                        _gotoNext = 260493i32;
                    } else {
                        _gotoNext = 260566i32;
                    };
                } else if (__value__ == (260566i32)) {
                    _gotoNext = 259842i32;
                } else if (__value__ == (260588i32)) {
                    if ((0i32 : stdgo.GoInt) < (stdgo._internal.internal.cpu.Cpu__options._options.length)) {
                        _gotoNext = 260732i32;
                    } else {
                        _gotoNext = 260738i32;
                    };
                } else if (__value__ == (260592i32)) {
                    _i_260592++;
                    _gotoNext = 260733i32;
                } else if (__value__ == (260611i32)) {
                    if (stdgo._internal.internal.cpu.Cpu__options._options[(_i_260592 : stdgo.GoInt)].name == (_key_260168)) {
                        _gotoNext = 260642i32;
                    } else {
                        _gotoNext = 260592i32;
                    };
                } else if (__value__ == (260642i32)) {
                    stdgo._internal.internal.cpu.Cpu__options._options[(_i_260592 : stdgo.GoInt)].specified = true;
                    stdgo._internal.internal.cpu.Cpu__options._options[(_i_260592 : stdgo.GoInt)].enable = _enable_260234;
                    _gotoNext = 259842i32;
                } else if (__value__ == (260732i32)) {
                    _i_260592 = 0i32;
                    _gotoNext = 260733i32;
                } else if (__value__ == (260733i32)) {
                    if (_i_260592 < (stdgo._internal.internal.cpu.Cpu__options._options.length)) {
                        _gotoNext = 260611i32;
                    } else {
                        _gotoNext = 260738i32;
                    };
                } else if (__value__ == (260738i32)) {
                    stdgo.Go.print(("GODEBUG: unknown cpu feature \"" : stdgo.GoString), _key_260168, ("\"\n" : stdgo.GoString));
                    _gotoNext = 259842i32;
                } else if (__value__ == (260797i32)) {
                    if ((0i32 : stdgo.GoInt) < (stdgo._internal.internal.cpu.Cpu__options._options.length)) {
                        _gotoNext = 261010i32;
                    } else {
                        _gotoNext = 261013i32;
                    };
                } else if (__value__ == (260823i32)) {
                    _o_260804 = stdgo._internal.internal.cpu.Cpu__options._options[(_i_260809_0 : stdgo.GoInt)];
                    if (!_o_260804.specified) {
                        _gotoNext = 260843i32;
                    } else {
                        _gotoNext = 260864i32;
                    };
                } else if (__value__ == (260843i32)) {
                    _i_260809_0++;
                    _gotoNext = 261011i32;
                } else if (__value__ == (260864i32)) {
                    if ((_o_260804.enable && !_o_260804.feature.value : Bool)) {
                        _gotoNext = 260891i32;
                    } else {
                        _gotoNext = 260988i32;
                    };
                } else if (__value__ == (260891i32)) {
                    stdgo.Go.print(("GODEBUG: can not enable \"" : stdgo.GoString), _o_260804.name, ("\", missing CPU support\n" : stdgo.GoString));
                    _i_260809_0++;
                    _gotoNext = 261011i32;
                } else if (__value__ == (260988i32)) {
                    _o_260804.feature.value = _o_260804.enable;
                    _i_260809_0++;
                    _gotoNext = 261011i32;
                } else if (__value__ == (261010i32)) {
                    {
                        final __tmp__0 = 0i32;
                        final __tmp__1 = stdgo._internal.internal.cpu.Cpu__options._options[(0i32 : stdgo.GoInt)];
                        _i_260809_0 = __tmp__0;
                        _o_260804 = __tmp__1;
                    };
                    _gotoNext = 261011i32;
                } else if (__value__ == (261011i32)) {
                    if (_i_260809_0 < (stdgo._internal.internal.cpu.Cpu__options._options.length)) {
                        _gotoNext = 260823i32;
                    } else {
                        _gotoNext = 261013i32;
                    };
                } else if (__value__ == (261013i32)) {
                    _gotoNext = -1i32;
                };
            };
        };
    }
