package stdgo._internal.internal.cpu;
function _processOptions(_env:stdgo.GoString):Void {
        var _enable_4:Bool = false;
        var _value_3:stdgo.GoString = ("" : stdgo.GoString);
        var _key_2:stdgo.GoString = ("" : stdgo.GoString);
        var _fieldBreak = false;
        var _o_8:stdgo._internal.internal.cpu.Cpu_t_option.T_option = ({} : stdgo._internal.internal.cpu.Cpu_t_option.T_option);
        var _iterator_11519_7:stdgo.GoInt = (0 : stdgo.GoInt);
        var _i_6:stdgo.GoInt = (0 : stdgo.GoInt);
        var _i_5:stdgo.GoInt = (0 : stdgo.GoInt);
        var _i_1:stdgo.GoInt = (0 : stdgo.GoInt);
        var _field_0:stdgo.GoString = ("" : stdgo.GoString);
        var _gotoNext = 0i32;
        _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    _gotoNext = 10544i32;
                } else if (__value__ == (10544i32)) {
                    0i32;
                    _fieldBreak = false;
                    _gotoNext = 10552i32;
                } else if (__value__ == (10552i32)) {
                    if (!_fieldBreak && (_env != (stdgo.Go.str() : stdgo.GoString))) {
                        _gotoNext = 10566i32;
                    } else {
                        _gotoNext = 11507i32;
                    };
                } else if (__value__ == (10566i32)) {
                    _field_0 = (stdgo.Go.str() : stdgo.GoString)?.__copy__();
                    _i_1 = stdgo._internal.internal.cpu.Cpu__indexbyte._indexByte(_env?.__copy__(), (44 : stdgo.GoUInt8));
                    if ((_i_1 < (0 : stdgo.GoInt) : Bool)) {
                        _gotoNext = 10620i32;
                    } else {
                        _gotoNext = 10655i32;
                    };
                } else if (__value__ == (10620i32)) {
                    {
                        final __tmp__0 = _env?.__copy__();
                        final __tmp__1 = (stdgo.Go.str() : stdgo.GoString)?.__copy__();
                        _field_0 = @:binopAssign __tmp__0;
                        _env = @:binopAssign __tmp__1;
                    };
                    _gotoNext = 10698i32;
                } else if (__value__ == (10655i32)) {
                    _gotoNext = 10655i32;
                    {
                        final __tmp__0 = (_env.__slice__(0, _i_1) : stdgo.GoString)?.__copy__();
                        final __tmp__1 = (_env.__slice__((_i_1 + (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        _field_0 = @:binopAssign __tmp__0;
                        _env = @:binopAssign __tmp__1;
                    };
                    0i32;
                    _gotoNext = 10698i32;
                } else if (__value__ == (10698i32)) {
                    if ((((_field_0.length) < (4 : stdgo.GoInt) : Bool) || ((_field_0.__slice__(0, (4 : stdgo.GoInt)) : stdgo.GoString) != ("cpu." : stdgo.GoString)) : Bool)) {
                        _gotoNext = 10739i32;
                    } else {
                        _gotoNext = 10759i32;
                    };
                } else if (__value__ == (10739i32)) {
                    0i32;
                    _gotoNext = 10552i32;
                } else if (__value__ == (10759i32)) {
                    _i_1 = stdgo._internal.internal.cpu.Cpu__indexbyte._indexByte(_field_0?.__copy__(), (61 : stdgo.GoUInt8));
                    if ((_i_1 < (0 : stdgo.GoInt) : Bool)) {
                        _gotoNext = 10796i32;
                    } else {
                        _gotoNext = 10878i32;
                    };
                } else if (__value__ == (10796i32)) {
                    stdgo.Go.print(("GODEBUG: no value specified for \"" : stdgo.GoString), _field_0, ("\"\n" : stdgo.GoString));
                    0i32;
                    _gotoNext = 10552i32;
                } else if (__value__ == (10878i32)) {
                    {
                        final __tmp__0 = (_field_0.__slice__((4 : stdgo.GoInt), _i_1) : stdgo.GoString)?.__copy__();
                        final __tmp__1 = (_field_0.__slice__((_i_1 + (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        _key_2 = @:binopAssign __tmp__0;
                        _value_3 = @:binopAssign __tmp__1;
                    };
                    _gotoNext = 10958i32;
                } else if (__value__ == (10958i32)) {
                    {
                        final __value__ = _value_3;
                        if (__value__ == (("on" : stdgo.GoString))) {
                            _gotoNext = 10975i32;
                        } else if (__value__ == (("off" : stdgo.GoString))) {
                            _gotoNext = 11005i32;
                        } else {
                            _gotoNext = 11037i32;
                        };
                    };
                } else if (__value__ == (10975i32)) {
                    _enable_4 = true;
                    _gotoNext = 11159i32;
                } else if (__value__ == (11005i32)) {
                    _enable_4 = false;
                    _gotoNext = 11159i32;
                } else if (__value__ == (11037i32)) {
                    stdgo.Go.print(("GODEBUG: value \"" : stdgo.GoString), _value_3, ("\" not supported for cpu option \"" : stdgo.GoString), _key_2, ("\"\n" : stdgo.GoString));
                    _gotoNext = 10552i32;
                } else if (__value__ == (11159i32)) {
                    if (_key_2 == (("all" : stdgo.GoString))) {
                        _gotoNext = 11175i32;
                    } else {
                        _gotoNext = 11298i32;
                    };
                } else if (__value__ == (11175i32)) {
                    if ((0i32 : stdgo.GoInt) < (stdgo._internal.internal.cpu.Cpu__options._options.length)) {
                        _gotoNext = 11270i32;
                    } else {
                        _gotoNext = 11276i32;
                    };
                } else if (__value__ == (11203i32)) {
                    stdgo._internal.internal.cpu.Cpu__options._options[(_i_5 : stdgo.GoInt)].specified = true;
                    stdgo._internal.internal.cpu.Cpu__options._options[(_i_5 : stdgo.GoInt)].enable = _enable_4;
                    _i_5++;
                    _gotoNext = 11271i32;
                } else if (__value__ == (11270i32)) {
                    _i_5 = 0i32;
                    _gotoNext = 11271i32;
                } else if (__value__ == (11271i32)) {
                    if (_i_5 < (stdgo._internal.internal.cpu.Cpu__options._options.length)) {
                        _gotoNext = 11203i32;
                    } else {
                        _gotoNext = 11276i32;
                    };
                } else if (__value__ == (11276i32)) {
                    _gotoNext = 10552i32;
                } else if (__value__ == (11298i32)) {
                    if ((0i32 : stdgo.GoInt) < (stdgo._internal.internal.cpu.Cpu__options._options.length)) {
                        _gotoNext = 11442i32;
                    } else {
                        _gotoNext = 11448i32;
                    };
                } else if (__value__ == (11302i32)) {
                    _i_6++;
                    _gotoNext = 11443i32;
                } else if (__value__ == (11321i32)) {
                    if (stdgo._internal.internal.cpu.Cpu__options._options[(_i_6 : stdgo.GoInt)].name == (_key_2)) {
                        _gotoNext = 11352i32;
                    } else {
                        _gotoNext = 11302i32;
                    };
                } else if (__value__ == (11352i32)) {
                    stdgo._internal.internal.cpu.Cpu__options._options[(_i_6 : stdgo.GoInt)].specified = true;
                    stdgo._internal.internal.cpu.Cpu__options._options[(_i_6 : stdgo.GoInt)].enable = _enable_4;
                    _gotoNext = 10552i32;
                } else if (__value__ == (11442i32)) {
                    _i_6 = 0i32;
                    _gotoNext = 11443i32;
                } else if (__value__ == (11443i32)) {
                    if (_i_6 < (stdgo._internal.internal.cpu.Cpu__options._options.length)) {
                        _gotoNext = 11321i32;
                    } else {
                        _gotoNext = 11448i32;
                    };
                } else if (__value__ == (11448i32)) {
                    stdgo.Go.print(("GODEBUG: unknown cpu feature \"" : stdgo.GoString), _key_2, ("\"\n" : stdgo.GoString));
                    _gotoNext = 10552i32;
                } else if (__value__ == (11507i32)) {
                    if ((0i32 : stdgo.GoInt) < (stdgo._internal.internal.cpu.Cpu__options._options.length)) {
                        _gotoNext = 11720i32;
                    } else {
                        _gotoNext = 11723i32;
                    };
                } else if (__value__ == (11533i32)) {
                    _o_8 = stdgo._internal.internal.cpu.Cpu__options._options[(_iterator_11519_7 : stdgo.GoInt)];
                    if (!_o_8.specified) {
                        _gotoNext = 11553i32;
                    } else {
                        _gotoNext = 11574i32;
                    };
                } else if (__value__ == (11553i32)) {
                    _iterator_11519_7++;
                    _gotoNext = 11721i32;
                } else if (__value__ == (11574i32)) {
                    if ((_o_8.enable && !_o_8.feature.value : Bool)) {
                        _gotoNext = 11601i32;
                    } else {
                        _gotoNext = 11698i32;
                    };
                } else if (__value__ == (11601i32)) {
                    stdgo.Go.print(("GODEBUG: can not enable \"" : stdgo.GoString), _o_8.name, ("\", missing CPU support\n" : stdgo.GoString));
                    _iterator_11519_7++;
                    _gotoNext = 11721i32;
                } else if (__value__ == (11698i32)) {
                    _o_8.feature.value = _o_8.enable;
                    _iterator_11519_7++;
                    _gotoNext = 11721i32;
                } else if (__value__ == (11720i32)) {
                    {
                        final __tmp__0 = 0i32;
                        final __tmp__1 = stdgo._internal.internal.cpu.Cpu__options._options[(0i32 : stdgo.GoInt)];
                        _iterator_11519_7 = @:binopAssign __tmp__0;
                        _o_8 = @:binopAssign __tmp__1;
                    };
                    _gotoNext = 11721i32;
                } else if (__value__ == (11721i32)) {
                    if (_iterator_11519_7 < (stdgo._internal.internal.cpu.Cpu__options._options.length)) {
                        _gotoNext = 11533i32;
                    } else {
                        _gotoNext = 11723i32;
                    };
                } else if (__value__ == (11723i32)) {
                    _gotoNext = -1i32;
                };
            };
        };
    }
