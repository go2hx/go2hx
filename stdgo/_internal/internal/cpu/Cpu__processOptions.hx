package stdgo._internal.internal.cpu;
function _processOptions(_env:stdgo.GoString):Void {
        var _key_254159:stdgo.GoString = ("" : stdgo.GoString);
        var _field_253851:stdgo.GoString = ("" : stdgo.GoString);
        var _fieldBreak = false;
        var _i_254800_0:stdgo.GoInt = (0 : stdgo.GoInt);
        var _i_254465:stdgo.GoInt = (0 : stdgo.GoInt);
        var _enable_254225:Bool = false;
        var _value_254164:stdgo.GoString = ("" : stdgo.GoString);
        var _o_254795:stdgo._internal.internal.cpu.Cpu_T_option.T_option = ({} : stdgo._internal.internal.cpu.Cpu_T_option.T_option);
        var _i_254583:stdgo.GoInt = (0 : stdgo.GoInt);
        var _i_253865:stdgo.GoInt = (0 : stdgo.GoInt);
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    _gotoNext = 253825i32;
                } else if (__value__ == (253825i32)) {
                    var __blank__ = 0i32;
                    _fieldBreak = false;
                    _gotoNext = 253833i32;
                } else if (__value__ == (253833i32)) {
                    if (!_fieldBreak && (_env != stdgo.Go.str())) {
                        _gotoNext = 253847i32;
                    } else {
                        _gotoNext = 254788i32;
                    };
                } else if (__value__ == (253847i32)) {
                    _field_253851 = stdgo.Go.str()?.__copy__();
                    _i_253865 = stdgo._internal.internal.cpu.Cpu__indexByte._indexByte(_env?.__copy__(), (44 : stdgo.GoUInt8));
                    if ((_i_253865 < (0 : stdgo.GoInt) : Bool)) {
                        _gotoNext = 253901i32;
                    } else {
                        _gotoNext = 253936i32;
                    };
                } else if (__value__ == (253901i32)) {
                    {
                        final __tmp__0 = _env?.__copy__();
                        final __tmp__1 = stdgo.Go.str()?.__copy__();
                        _field_253851 = __tmp__0;
                        _env = __tmp__1;
                    };
                    _gotoNext = 253979i32;
                } else if (__value__ == (253936i32)) {
                    {
                        final __tmp__0 = (_env.__slice__(0, _i_253865) : stdgo.GoString)?.__copy__();
                        final __tmp__1 = (_env.__slice__((_i_253865 + (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        _field_253851 = __tmp__0;
                        _env = __tmp__1;
                    };
                    _gotoNext = 253979i32;
                } else if (__value__ == (253979i32)) {
                    if ((((_field_253851.length) < (4 : stdgo.GoInt) : Bool) || ((_field_253851.__slice__(0, (4 : stdgo.GoInt)) : stdgo.GoString) != ("cpu." : stdgo.GoString)) : Bool)) {
                        _gotoNext = 254020i32;
                    } else {
                        _gotoNext = 254040i32;
                    };
                } else if (__value__ == (254020i32)) {
                    var __blank__ = 0i32;
                    _gotoNext = 253833i32;
                } else if (__value__ == (254040i32)) {
                    _i_253865 = stdgo._internal.internal.cpu.Cpu__indexByte._indexByte(_field_253851?.__copy__(), (61 : stdgo.GoUInt8));
                    if ((_i_253865 < (0 : stdgo.GoInt) : Bool)) {
                        _gotoNext = 254077i32;
                    } else {
                        _gotoNext = 254159i32;
                    };
                } else if (__value__ == (254077i32)) {
                    stdgo.Go.print(("GODEBUG: no value specified for \"" : stdgo.GoString), _field_253851, ("\"\n" : stdgo.GoString));
                    var __blank__ = 0i32;
                    _gotoNext = 253833i32;
                } else if (__value__ == (254159i32)) {
                    {
                        final __tmp__0 = (_field_253851.__slice__((4 : stdgo.GoInt), _i_253865) : stdgo.GoString)?.__copy__();
                        final __tmp__1 = (_field_253851.__slice__((_i_253865 + (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        _key_254159 = __tmp__0;
                        _value_254164 = __tmp__1;
                    };
                    var __blank__ = 0i32;
                    _gotoNext = 254239i32;
                } else if (__value__ == (254239i32)) {
                    {
                        final __value__ = _value_254164;
                        if (__value__ == (("on" : stdgo.GoString))) {
                            _gotoNext = 254256i32;
                        } else if (__value__ == (("off" : stdgo.GoString))) {
                            _gotoNext = 254286i32;
                        } else {
                            _gotoNext = 254318i32;
                        };
                    };
                } else if (__value__ == (254256i32)) {
                    _enable_254225 = true;
                    _gotoNext = 254440i32;
                } else if (__value__ == (254286i32)) {
                    _enable_254225 = false;
                    _gotoNext = 254440i32;
                } else if (__value__ == (254318i32)) {
                    stdgo.Go.print(("GODEBUG: value \"" : stdgo.GoString), _value_254164, ("\" not supported for cpu option \"" : stdgo.GoString), _key_254159, ("\"\n" : stdgo.GoString));
                    _gotoNext = 253833i32;
                } else if (__value__ == (254440i32)) {
                    if (_key_254159 == (("all" : stdgo.GoString))) {
                        _gotoNext = 254456i32;
                    } else {
                        _gotoNext = 254579i32;
                    };
                } else if (__value__ == (254456i32)) {
                    if ((0i32 : stdgo.GoInt) < (stdgo._internal.internal.cpu.Cpu__options._options.length)) {
                        _gotoNext = 254551i32;
                    } else {
                        _gotoNext = 254557i32;
                    };
                } else if (__value__ == (254484i32)) {
                    stdgo._internal.internal.cpu.Cpu__options._options[(_i_254465 : stdgo.GoInt)].specified = true;
                    stdgo._internal.internal.cpu.Cpu__options._options[(_i_254465 : stdgo.GoInt)].enable = _enable_254225;
                    _i_254465++;
                    _gotoNext = 254552i32;
                } else if (__value__ == (254551i32)) {
                    _i_254465 = 0i32;
                    _gotoNext = 254552i32;
                } else if (__value__ == (254552i32)) {
                    if (_i_254465 < (stdgo._internal.internal.cpu.Cpu__options._options.length)) {
                        _gotoNext = 254484i32;
                    } else {
                        _gotoNext = 254557i32;
                    };
                } else if (__value__ == (254557i32)) {
                    _gotoNext = 253833i32;
                } else if (__value__ == (254579i32)) {
                    if ((0i32 : stdgo.GoInt) < (stdgo._internal.internal.cpu.Cpu__options._options.length)) {
                        _gotoNext = 254723i32;
                    } else {
                        _gotoNext = 254729i32;
                    };
                } else if (__value__ == (254583i32)) {
                    _i_254583++;
                    _gotoNext = 254724i32;
                } else if (__value__ == (254602i32)) {
                    if (stdgo._internal.internal.cpu.Cpu__options._options[(_i_254583 : stdgo.GoInt)].name == (_key_254159)) {
                        _gotoNext = 254633i32;
                    } else {
                        _gotoNext = 254583i32;
                    };
                } else if (__value__ == (254633i32)) {
                    stdgo._internal.internal.cpu.Cpu__options._options[(_i_254583 : stdgo.GoInt)].specified = true;
                    stdgo._internal.internal.cpu.Cpu__options._options[(_i_254583 : stdgo.GoInt)].enable = _enable_254225;
                    _gotoNext = 253833i32;
                } else if (__value__ == (254723i32)) {
                    _i_254583 = 0i32;
                    _gotoNext = 254724i32;
                } else if (__value__ == (254724i32)) {
                    if (_i_254583 < (stdgo._internal.internal.cpu.Cpu__options._options.length)) {
                        _gotoNext = 254602i32;
                    } else {
                        _gotoNext = 254729i32;
                    };
                } else if (__value__ == (254729i32)) {
                    stdgo.Go.print(("GODEBUG: unknown cpu feature \"" : stdgo.GoString), _key_254159, ("\"\n" : stdgo.GoString));
                    _gotoNext = 253833i32;
                } else if (__value__ == (254788i32)) {
                    if ((0i32 : stdgo.GoInt) < (stdgo._internal.internal.cpu.Cpu__options._options.length)) {
                        _gotoNext = 255001i32;
                    } else {
                        _gotoNext = 255004i32;
                    };
                } else if (__value__ == (254814i32)) {
                    _o_254795 = stdgo._internal.internal.cpu.Cpu__options._options[(_i_254800_0 : stdgo.GoInt)];
                    if (!_o_254795.specified) {
                        _gotoNext = 254834i32;
                    } else {
                        _gotoNext = 254855i32;
                    };
                } else if (__value__ == (254834i32)) {
                    _i_254800_0++;
                    _gotoNext = 255002i32;
                } else if (__value__ == (254855i32)) {
                    if ((_o_254795.enable && !_o_254795.feature.value : Bool)) {
                        _gotoNext = 254882i32;
                    } else {
                        _gotoNext = 254979i32;
                    };
                } else if (__value__ == (254882i32)) {
                    stdgo.Go.print(("GODEBUG: can not enable \"" : stdgo.GoString), _o_254795.name, ("\", missing CPU support\n" : stdgo.GoString));
                    _i_254800_0++;
                    _gotoNext = 255002i32;
                } else if (__value__ == (254979i32)) {
                    _o_254795.feature.value = _o_254795.enable;
                    _i_254800_0++;
                    _gotoNext = 255002i32;
                } else if (__value__ == (255001i32)) {
                    {
                        final __tmp__0 = 0i32;
                        final __tmp__1 = stdgo._internal.internal.cpu.Cpu__options._options[(0i32 : stdgo.GoInt)];
                        _i_254800_0 = __tmp__0;
                        _o_254795 = __tmp__1;
                    };
                    _gotoNext = 255002i32;
                } else if (__value__ == (255002i32)) {
                    if (_i_254800_0 < (stdgo._internal.internal.cpu.Cpu__options._options.length)) {
                        _gotoNext = 254814i32;
                    } else {
                        _gotoNext = 255004i32;
                    };
                } else if (__value__ == (255004i32)) {
                    _gotoNext = -1i32;
                };
            };
        };
    }
