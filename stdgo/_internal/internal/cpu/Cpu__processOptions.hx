package stdgo._internal.internal.cpu;
function _processOptions(_env:stdgo.GoString):Void {
        var _i_328932:stdgo.GoInt = (0 : stdgo.GoInt);
        var _field_328918:stdgo.GoString = ("" : stdgo.GoString);
        var _fieldBreak = false;
        var _i_329650:stdgo.GoInt = (0 : stdgo.GoInt);
        var _value_329231:stdgo.GoString = ("" : stdgo.GoString);
        var _key_329226:stdgo.GoString = ("" : stdgo.GoString);
        var _i_329867_0:stdgo.GoInt = (0 : stdgo.GoInt);
        var _i_329532:stdgo.GoInt = (0 : stdgo.GoInt);
        var _enable_329292:Bool = false;
        var _o_329862:stdgo._internal.internal.cpu.Cpu_T_option.T_option = ({} : stdgo._internal.internal.cpu.Cpu_T_option.T_option);
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    _gotoNext = 328892i32;
                } else if (__value__ == (328892i32)) {
                    var __blank__ = 0i32;
                    _fieldBreak = false;
                    _gotoNext = 328900i32;
                } else if (__value__ == (328900i32)) {
                    if (!_fieldBreak && (_env != stdgo.Go.str())) {
                        _gotoNext = 328914i32;
                    } else {
                        _gotoNext = 329855i32;
                    };
                } else if (__value__ == (328914i32)) {
                    _field_328918 = stdgo.Go.str()?.__copy__();
                    _i_328932 = stdgo._internal.internal.cpu.Cpu__indexByte._indexByte(_env?.__copy__(), (44 : stdgo.GoUInt8));
                    if ((_i_328932 < (0 : stdgo.GoInt) : Bool)) {
                        _gotoNext = 328968i32;
                    } else {
                        _gotoNext = 329003i32;
                    };
                } else if (__value__ == (328968i32)) {
                    {
                        final __tmp__0 = _env?.__copy__();
                        final __tmp__1 = stdgo.Go.str()?.__copy__();
                        _field_328918 = __tmp__0;
                        _env = __tmp__1;
                    };
                    _gotoNext = 329046i32;
                } else if (__value__ == (329003i32)) {
                    _gotoNext = 329003i32;
                    {
                        final __tmp__0 = (_env.__slice__(0, _i_328932) : stdgo.GoString)?.__copy__();
                        final __tmp__1 = (_env.__slice__((_i_328932 + (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        _field_328918 = __tmp__0;
                        _env = __tmp__1;
                    };
                    var __blank__ = 0i32;
                    _gotoNext = 329046i32;
                } else if (__value__ == (329046i32)) {
                    if ((((_field_328918.length) < (4 : stdgo.GoInt) : Bool) || ((_field_328918.__slice__(0, (4 : stdgo.GoInt)) : stdgo.GoString) != ("cpu." : stdgo.GoString)) : Bool)) {
                        _gotoNext = 329087i32;
                    } else {
                        _gotoNext = 329107i32;
                    };
                } else if (__value__ == (329087i32)) {
                    var __blank__ = 0i32;
                    _gotoNext = 328900i32;
                } else if (__value__ == (329107i32)) {
                    _i_328932 = stdgo._internal.internal.cpu.Cpu__indexByte._indexByte(_field_328918?.__copy__(), (61 : stdgo.GoUInt8));
                    if ((_i_328932 < (0 : stdgo.GoInt) : Bool)) {
                        _gotoNext = 329144i32;
                    } else {
                        _gotoNext = 329226i32;
                    };
                } else if (__value__ == (329144i32)) {
                    stdgo.Go.print(("GODEBUG: no value specified for \"" : stdgo.GoString), _field_328918, ("\"\n" : stdgo.GoString));
                    var __blank__ = 0i32;
                    _gotoNext = 328900i32;
                } else if (__value__ == (329226i32)) {
                    {
                        final __tmp__0 = (_field_328918.__slice__((4 : stdgo.GoInt), _i_328932) : stdgo.GoString)?.__copy__();
                        final __tmp__1 = (_field_328918.__slice__((_i_328932 + (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        _key_329226 = __tmp__0;
                        _value_329231 = __tmp__1;
                    };
                    _gotoNext = 329306i32;
                } else if (__value__ == (329306i32)) {
                    {
                        final __value__ = _value_329231;
                        if (__value__ == (("on" : stdgo.GoString))) {
                            _gotoNext = 329323i32;
                        } else if (__value__ == (("off" : stdgo.GoString))) {
                            _gotoNext = 329353i32;
                        } else {
                            _gotoNext = 329385i32;
                        };
                    };
                } else if (__value__ == (329323i32)) {
                    _enable_329292 = true;
                    _gotoNext = 329507i32;
                } else if (__value__ == (329353i32)) {
                    _enable_329292 = false;
                    _gotoNext = 329507i32;
                } else if (__value__ == (329385i32)) {
                    stdgo.Go.print(("GODEBUG: value \"" : stdgo.GoString), _value_329231, ("\" not supported for cpu option \"" : stdgo.GoString), _key_329226, ("\"\n" : stdgo.GoString));
                    _gotoNext = 328900i32;
                } else if (__value__ == (329507i32)) {
                    if (_key_329226 == (("all" : stdgo.GoString))) {
                        _gotoNext = 329523i32;
                    } else {
                        _gotoNext = 329646i32;
                    };
                } else if (__value__ == (329523i32)) {
                    if ((0i32 : stdgo.GoInt) < (stdgo._internal.internal.cpu.Cpu__options._options.length)) {
                        _gotoNext = 329618i32;
                    } else {
                        _gotoNext = 329624i32;
                    };
                } else if (__value__ == (329551i32)) {
                    stdgo._internal.internal.cpu.Cpu__options._options[(_i_329532 : stdgo.GoInt)].specified = true;
                    stdgo._internal.internal.cpu.Cpu__options._options[(_i_329532 : stdgo.GoInt)].enable = _enable_329292;
                    _i_329532++;
                    _gotoNext = 329619i32;
                } else if (__value__ == (329618i32)) {
                    _i_329532 = 0i32;
                    _gotoNext = 329619i32;
                } else if (__value__ == (329619i32)) {
                    if (_i_329532 < (stdgo._internal.internal.cpu.Cpu__options._options.length)) {
                        _gotoNext = 329551i32;
                    } else {
                        _gotoNext = 329624i32;
                    };
                } else if (__value__ == (329624i32)) {
                    _gotoNext = 328900i32;
                } else if (__value__ == (329646i32)) {
                    if ((0i32 : stdgo.GoInt) < (stdgo._internal.internal.cpu.Cpu__options._options.length)) {
                        _gotoNext = 329790i32;
                    } else {
                        _gotoNext = 329796i32;
                    };
                } else if (__value__ == (329650i32)) {
                    _i_329650++;
                    _gotoNext = 329791i32;
                } else if (__value__ == (329669i32)) {
                    if (stdgo._internal.internal.cpu.Cpu__options._options[(_i_329650 : stdgo.GoInt)].name == (_key_329226)) {
                        _gotoNext = 329700i32;
                    } else {
                        _gotoNext = 329650i32;
                    };
                } else if (__value__ == (329700i32)) {
                    stdgo._internal.internal.cpu.Cpu__options._options[(_i_329650 : stdgo.GoInt)].specified = true;
                    stdgo._internal.internal.cpu.Cpu__options._options[(_i_329650 : stdgo.GoInt)].enable = _enable_329292;
                    _gotoNext = 328900i32;
                } else if (__value__ == (329790i32)) {
                    _i_329650 = 0i32;
                    _gotoNext = 329791i32;
                } else if (__value__ == (329791i32)) {
                    if (_i_329650 < (stdgo._internal.internal.cpu.Cpu__options._options.length)) {
                        _gotoNext = 329669i32;
                    } else {
                        _gotoNext = 329796i32;
                    };
                } else if (__value__ == (329796i32)) {
                    stdgo.Go.print(("GODEBUG: unknown cpu feature \"" : stdgo.GoString), _key_329226, ("\"\n" : stdgo.GoString));
                    _gotoNext = 328900i32;
                } else if (__value__ == (329855i32)) {
                    if ((0i32 : stdgo.GoInt) < (stdgo._internal.internal.cpu.Cpu__options._options.length)) {
                        _gotoNext = 330068i32;
                    } else {
                        _gotoNext = 330071i32;
                    };
                } else if (__value__ == (329881i32)) {
                    _o_329862 = stdgo._internal.internal.cpu.Cpu__options._options[(_i_329867_0 : stdgo.GoInt)];
                    if (!_o_329862.specified) {
                        _gotoNext = 329901i32;
                    } else {
                        _gotoNext = 329922i32;
                    };
                } else if (__value__ == (329901i32)) {
                    _i_329867_0++;
                    _gotoNext = 330069i32;
                } else if (__value__ == (329922i32)) {
                    if ((_o_329862.enable && !_o_329862.feature.value : Bool)) {
                        _gotoNext = 329949i32;
                    } else {
                        _gotoNext = 330046i32;
                    };
                } else if (__value__ == (329949i32)) {
                    stdgo.Go.print(("GODEBUG: can not enable \"" : stdgo.GoString), _o_329862.name, ("\", missing CPU support\n" : stdgo.GoString));
                    _i_329867_0++;
                    _gotoNext = 330069i32;
                } else if (__value__ == (330046i32)) {
                    _o_329862.feature.value = _o_329862.enable;
                    _i_329867_0++;
                    _gotoNext = 330069i32;
                } else if (__value__ == (330068i32)) {
                    {
                        final __tmp__0 = 0i32;
                        final __tmp__1 = stdgo._internal.internal.cpu.Cpu__options._options[(0i32 : stdgo.GoInt)];
                        _i_329867_0 = __tmp__0;
                        _o_329862 = __tmp__1;
                    };
                    _gotoNext = 330069i32;
                } else if (__value__ == (330069i32)) {
                    if (_i_329867_0 < (stdgo._internal.internal.cpu.Cpu__options._options.length)) {
                        _gotoNext = 329881i32;
                    } else {
                        _gotoNext = 330071i32;
                    };
                } else if (__value__ == (330071i32)) {
                    _gotoNext = -1i32;
                };
            };
        };
    }
