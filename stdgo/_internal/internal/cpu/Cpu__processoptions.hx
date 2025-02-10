package stdgo._internal.internal.cpu;
function _processOptions(_env:stdgo.GoString):Void {
        var _field_54323:stdgo.GoString = ("" : stdgo.GoString);
        var _fieldBreak = false;
        var _i_54937:stdgo.GoInt = (0 : stdgo.GoInt);
        var _enable_54697:Bool = false;
        var _key_54631:stdgo.GoString = ("" : stdgo.GoString);
        var _value_54636:stdgo.GoString = ("" : stdgo.GoString);
        var _i_54337:stdgo.GoInt = (0 : stdgo.GoInt);
        var _o_55267:stdgo._internal.internal.cpu.Cpu_t_option.T_option = ({} : stdgo._internal.internal.cpu.Cpu_t_option.T_option);
        var _i_55272_0:stdgo.GoInt = (0 : stdgo.GoInt);
        var _i_55055:stdgo.GoInt = (0 : stdgo.GoInt);
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    _gotoNext = 54297i32;
                } else if (__value__ == (54297i32)) {
                    var __blank__ = 0i32;
                    _fieldBreak = false;
                    _gotoNext = 54305i32;
                } else if (__value__ == (54305i32)) {
                    if (!_fieldBreak && (_env != (stdgo.Go.str() : stdgo.GoString))) {
                        _gotoNext = 54319i32;
                    } else {
                        _gotoNext = 55260i32;
                    };
                } else if (__value__ == (54319i32)) {
                    _field_54323 = (stdgo.Go.str() : stdgo.GoString)?.__copy__();
                    _i_54337 = stdgo._internal.internal.cpu.Cpu__indexbyte._indexByte(_env?.__copy__(), (44 : stdgo.GoUInt8));
                    if ((_i_54337 < (0 : stdgo.GoInt) : Bool)) {
                        _gotoNext = 54373i32;
                    } else {
                        _gotoNext = 54408i32;
                    };
                } else if (__value__ == (54373i32)) {
                    {
                        final __tmp__0 = _env?.__copy__();
                        final __tmp__1 = (stdgo.Go.str() : stdgo.GoString)?.__copy__();
                        _field_54323 = __tmp__0;
                        _env = __tmp__1;
                    };
                    _gotoNext = 54451i32;
                } else if (__value__ == (54408i32)) {
                    _gotoNext = 54408i32;
                    {
                        final __tmp__0 = (_env.__slice__(0, _i_54337) : stdgo.GoString)?.__copy__();
                        final __tmp__1 = (_env.__slice__((_i_54337 + (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        _field_54323 = __tmp__0;
                        _env = __tmp__1;
                    };
                    var __blank__ = 0i32;
                    _gotoNext = 54451i32;
                } else if (__value__ == (54451i32)) {
                    if ((((_field_54323.length) < (4 : stdgo.GoInt) : Bool) || ((_field_54323.__slice__(0, (4 : stdgo.GoInt)) : stdgo.GoString) != ("cpu." : stdgo.GoString)) : Bool)) {
                        _gotoNext = 54492i32;
                    } else {
                        _gotoNext = 54512i32;
                    };
                } else if (__value__ == (54492i32)) {
                    var __blank__ = 0i32;
                    _gotoNext = 54305i32;
                } else if (__value__ == (54512i32)) {
                    _i_54337 = stdgo._internal.internal.cpu.Cpu__indexbyte._indexByte(_field_54323?.__copy__(), (61 : stdgo.GoUInt8));
                    if ((_i_54337 < (0 : stdgo.GoInt) : Bool)) {
                        _gotoNext = 54549i32;
                    } else {
                        _gotoNext = 54631i32;
                    };
                } else if (__value__ == (54549i32)) {
                    stdgo.Go.print(("GODEBUG: no value specified for \"" : stdgo.GoString), _field_54323, ("\"\n" : stdgo.GoString));
                    var __blank__ = 0i32;
                    _gotoNext = 54305i32;
                } else if (__value__ == (54631i32)) {
                    {
                        final __tmp__0 = (_field_54323.__slice__((4 : stdgo.GoInt), _i_54337) : stdgo.GoString)?.__copy__();
                        final __tmp__1 = (_field_54323.__slice__((_i_54337 + (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        _key_54631 = __tmp__0;
                        _value_54636 = __tmp__1;
                    };
                    _gotoNext = 54711i32;
                } else if (__value__ == (54711i32)) {
                    {
                        final __value__ = _value_54636;
                        if (__value__ == (("on" : stdgo.GoString))) {
                            _gotoNext = 54728i32;
                        } else if (__value__ == (("off" : stdgo.GoString))) {
                            _gotoNext = 54758i32;
                        } else {
                            _gotoNext = 54790i32;
                        };
                    };
                } else if (__value__ == (54728i32)) {
                    _enable_54697 = true;
                    _gotoNext = 54912i32;
                } else if (__value__ == (54758i32)) {
                    _enable_54697 = false;
                    _gotoNext = 54912i32;
                } else if (__value__ == (54790i32)) {
                    stdgo.Go.print(("GODEBUG: value \"" : stdgo.GoString), _value_54636, ("\" not supported for cpu option \"" : stdgo.GoString), _key_54631, ("\"\n" : stdgo.GoString));
                    _gotoNext = 54305i32;
                } else if (__value__ == (54912i32)) {
                    if (_key_54631 == (("all" : stdgo.GoString))) {
                        _gotoNext = 54928i32;
                    } else {
                        _gotoNext = 55051i32;
                    };
                } else if (__value__ == (54928i32)) {
                    if ((0i32 : stdgo.GoInt) < (stdgo._internal.internal.cpu.Cpu__options._options.length)) {
                        _gotoNext = 55023i32;
                    } else {
                        _gotoNext = 55029i32;
                    };
                } else if (__value__ == (54956i32)) {
                    stdgo._internal.internal.cpu.Cpu__options._options[(_i_54937 : stdgo.GoInt)].specified = true;
                    stdgo._internal.internal.cpu.Cpu__options._options[(_i_54937 : stdgo.GoInt)].enable = _enable_54697;
                    _i_54937++;
                    _gotoNext = 55024i32;
                } else if (__value__ == (55023i32)) {
                    _i_54937 = 0i32;
                    _gotoNext = 55024i32;
                } else if (__value__ == (55024i32)) {
                    if (_i_54937 < (stdgo._internal.internal.cpu.Cpu__options._options.length)) {
                        _gotoNext = 54956i32;
                    } else {
                        _gotoNext = 55029i32;
                    };
                } else if (__value__ == (55029i32)) {
                    _gotoNext = 54305i32;
                } else if (__value__ == (55051i32)) {
                    if ((0i32 : stdgo.GoInt) < (stdgo._internal.internal.cpu.Cpu__options._options.length)) {
                        _gotoNext = 55195i32;
                    } else {
                        _gotoNext = 55201i32;
                    };
                } else if (__value__ == (55055i32)) {
                    _i_55055++;
                    _gotoNext = 55196i32;
                } else if (__value__ == (55074i32)) {
                    if (stdgo._internal.internal.cpu.Cpu__options._options[(_i_55055 : stdgo.GoInt)].name == (_key_54631)) {
                        _gotoNext = 55105i32;
                    } else {
                        _gotoNext = 55055i32;
                    };
                } else if (__value__ == (55105i32)) {
                    stdgo._internal.internal.cpu.Cpu__options._options[(_i_55055 : stdgo.GoInt)].specified = true;
                    stdgo._internal.internal.cpu.Cpu__options._options[(_i_55055 : stdgo.GoInt)].enable = _enable_54697;
                    _gotoNext = 54305i32;
                } else if (__value__ == (55195i32)) {
                    _i_55055 = 0i32;
                    _gotoNext = 55196i32;
                } else if (__value__ == (55196i32)) {
                    if (_i_55055 < (stdgo._internal.internal.cpu.Cpu__options._options.length)) {
                        _gotoNext = 55074i32;
                    } else {
                        _gotoNext = 55201i32;
                    };
                } else if (__value__ == (55201i32)) {
                    stdgo.Go.print(("GODEBUG: unknown cpu feature \"" : stdgo.GoString), _key_54631, ("\"\n" : stdgo.GoString));
                    _gotoNext = 54305i32;
                } else if (__value__ == (55260i32)) {
                    if ((0i32 : stdgo.GoInt) < (stdgo._internal.internal.cpu.Cpu__options._options.length)) {
                        _gotoNext = 55473i32;
                    } else {
                        _gotoNext = 55476i32;
                    };
                } else if (__value__ == (55286i32)) {
                    _o_55267 = stdgo._internal.internal.cpu.Cpu__options._options[(_i_55272_0 : stdgo.GoInt)];
                    if (!_o_55267.specified) {
                        _gotoNext = 55306i32;
                    } else {
                        _gotoNext = 55327i32;
                    };
                } else if (__value__ == (55306i32)) {
                    _i_55272_0++;
                    _gotoNext = 55474i32;
                } else if (__value__ == (55327i32)) {
                    if ((_o_55267.enable && !_o_55267.feature.value : Bool)) {
                        _gotoNext = 55354i32;
                    } else {
                        _gotoNext = 55451i32;
                    };
                } else if (__value__ == (55354i32)) {
                    stdgo.Go.print(("GODEBUG: can not enable \"" : stdgo.GoString), _o_55267.name, ("\", missing CPU support\n" : stdgo.GoString));
                    _i_55272_0++;
                    _gotoNext = 55474i32;
                } else if (__value__ == (55451i32)) {
                    _o_55267.feature.value = _o_55267.enable;
                    _i_55272_0++;
                    _gotoNext = 55474i32;
                } else if (__value__ == (55473i32)) {
                    {
                        final __tmp__0 = 0i32;
                        final __tmp__1 = stdgo._internal.internal.cpu.Cpu__options._options[(0i32 : stdgo.GoInt)];
                        _i_55272_0 = __tmp__0;
                        _o_55267 = __tmp__1;
                    };
                    _gotoNext = 55474i32;
                } else if (__value__ == (55474i32)) {
                    if (_i_55272_0 < (stdgo._internal.internal.cpu.Cpu__options._options.length)) {
                        _gotoNext = 55286i32;
                    } else {
                        _gotoNext = 55476i32;
                    };
                } else if (__value__ == (55476i32)) {
                    _gotoNext = -1i32;
                };
            };
        };
    }
