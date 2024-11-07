package stdgo._internal.internal.cpu;
function _processOptions(_env:stdgo.GoString):Void {
        var _o_14915:stdgo._internal.internal.cpu.Cpu_T_option.T_option = ({} : stdgo._internal.internal.cpu.Cpu_T_option.T_option);
        var _i_14920_0:stdgo.GoInt = (0 : stdgo.GoInt);
        var _enable_14345:Bool = false;
        var _key_14279:stdgo.GoString = ("" : stdgo.GoString);
        var _i_13985:stdgo.GoInt = (0 : stdgo.GoInt);
        var _i_14703:stdgo.GoInt = (0 : stdgo.GoInt);
        var _i_14585:stdgo.GoInt = (0 : stdgo.GoInt);
        var _value_14284:stdgo.GoString = ("" : stdgo.GoString);
        var _field_13971:stdgo.GoString = ("" : stdgo.GoString);
        var _fieldBreak = false;
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    _gotoNext = 13945i32;
                } else if (__value__ == (13945i32)) {
                    var __blank__ = 0i32;
                    _fieldBreak = false;
                    _gotoNext = 13953i32;
                } else if (__value__ == (13953i32)) {
                    if (!_fieldBreak && (_env != stdgo.Go.str())) {
                        _gotoNext = 13967i32;
                    } else {
                        _gotoNext = 14908i32;
                    };
                } else if (__value__ == (13967i32)) {
                    _field_13971 = stdgo.Go.str()?.__copy__();
                    _i_13985 = stdgo._internal.internal.cpu.Cpu__indexByte._indexByte(_env?.__copy__(), (44 : stdgo.GoUInt8));
                    if ((_i_13985 < (0 : stdgo.GoInt) : Bool)) {
                        _gotoNext = 14021i32;
                    } else {
                        _gotoNext = 14056i32;
                    };
                } else if (__value__ == (14021i32)) {
                    {
                        final __tmp__0 = _env?.__copy__();
                        final __tmp__1 = stdgo.Go.str()?.__copy__();
                        _field_13971 = __tmp__0;
                        _env = __tmp__1;
                    };
                    _gotoNext = 14099i32;
                } else if (__value__ == (14056i32)) {
                    {
                        final __tmp__0 = (_env.__slice__(0, _i_13985) : stdgo.GoString)?.__copy__();
                        final __tmp__1 = (_env.__slice__((_i_13985 + (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        _field_13971 = __tmp__0;
                        _env = __tmp__1;
                    };
                    _gotoNext = 14099i32;
                } else if (__value__ == (14099i32)) {
                    if ((((_field_13971.length) < (4 : stdgo.GoInt) : Bool) || ((_field_13971.__slice__(0, (4 : stdgo.GoInt)) : stdgo.GoString) != ("cpu." : stdgo.GoString)) : Bool)) {
                        _gotoNext = 14140i32;
                    } else {
                        _gotoNext = 14160i32;
                    };
                } else if (__value__ == (14140i32)) {
                    var __blank__ = 0i32;
                    _gotoNext = 13953i32;
                } else if (__value__ == (14160i32)) {
                    _i_13985 = stdgo._internal.internal.cpu.Cpu__indexByte._indexByte(_field_13971?.__copy__(), (61 : stdgo.GoUInt8));
                    if ((_i_13985 < (0 : stdgo.GoInt) : Bool)) {
                        _gotoNext = 14197i32;
                    } else {
                        _gotoNext = 14279i32;
                    };
                } else if (__value__ == (14197i32)) {
                    stdgo.Go.print(("GODEBUG: no value specified for \"" : stdgo.GoString), _field_13971, ("\"\n" : stdgo.GoString));
                    var __blank__ = 0i32;
                    _gotoNext = 13953i32;
                } else if (__value__ == (14279i32)) {
                    {
                        final __tmp__0 = (_field_13971.__slice__((4 : stdgo.GoInt), _i_13985) : stdgo.GoString)?.__copy__();
                        final __tmp__1 = (_field_13971.__slice__((_i_13985 + (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        _key_14279 = __tmp__0;
                        _value_14284 = __tmp__1;
                    };
                    var __blank__ = 0i32;
                    _gotoNext = 14359i32;
                } else if (__value__ == (14359i32)) {
                    {
                        final __value__ = _value_14284;
                        if (__value__ == (("on" : stdgo.GoString))) {
                            _gotoNext = 14376i32;
                        } else if (__value__ == (("off" : stdgo.GoString))) {
                            _gotoNext = 14406i32;
                        } else {
                            _gotoNext = 14438i32;
                        };
                    };
                } else if (__value__ == (14376i32)) {
                    _enable_14345 = true;
                    _gotoNext = 14560i32;
                } else if (__value__ == (14406i32)) {
                    _enable_14345 = false;
                    _gotoNext = 14560i32;
                } else if (__value__ == (14438i32)) {
                    stdgo.Go.print(("GODEBUG: value \"" : stdgo.GoString), _value_14284, ("\" not supported for cpu option \"" : stdgo.GoString), _key_14279, ("\"\n" : stdgo.GoString));
                    _gotoNext = 13953i32;
                } else if (__value__ == (14560i32)) {
                    if (_key_14279 == (("all" : stdgo.GoString))) {
                        _gotoNext = 14576i32;
                    } else {
                        _gotoNext = 14699i32;
                    };
                } else if (__value__ == (14576i32)) {
                    if ((0i32 : stdgo.GoInt) < (stdgo._internal.internal.cpu.Cpu__options._options.length)) {
                        _gotoNext = 14671i32;
                    } else {
                        _gotoNext = 14677i32;
                    };
                } else if (__value__ == (14604i32)) {
                    stdgo._internal.internal.cpu.Cpu__options._options[(_i_14585 : stdgo.GoInt)].specified = true;
                    stdgo._internal.internal.cpu.Cpu__options._options[(_i_14585 : stdgo.GoInt)].enable = _enable_14345;
                    _i_14585++;
                    _gotoNext = 14672i32;
                } else if (__value__ == (14671i32)) {
                    _i_14585 = 0i32;
                    _gotoNext = 14672i32;
                } else if (__value__ == (14672i32)) {
                    if (_i_14585 < (stdgo._internal.internal.cpu.Cpu__options._options.length)) {
                        _gotoNext = 14604i32;
                    } else {
                        _gotoNext = 14677i32;
                    };
                } else if (__value__ == (14677i32)) {
                    _gotoNext = 13953i32;
                } else if (__value__ == (14699i32)) {
                    if ((0i32 : stdgo.GoInt) < (stdgo._internal.internal.cpu.Cpu__options._options.length)) {
                        _gotoNext = 14843i32;
                    } else {
                        _gotoNext = 14849i32;
                    };
                } else if (__value__ == (14703i32)) {
                    _i_14703++;
                    _gotoNext = 14844i32;
                } else if (__value__ == (14722i32)) {
                    if (stdgo._internal.internal.cpu.Cpu__options._options[(_i_14703 : stdgo.GoInt)].name == (_key_14279)) {
                        _gotoNext = 14753i32;
                    } else {
                        _gotoNext = 14703i32;
                    };
                } else if (__value__ == (14753i32)) {
                    stdgo._internal.internal.cpu.Cpu__options._options[(_i_14703 : stdgo.GoInt)].specified = true;
                    stdgo._internal.internal.cpu.Cpu__options._options[(_i_14703 : stdgo.GoInt)].enable = _enable_14345;
                    _gotoNext = 13953i32;
                } else if (__value__ == (14843i32)) {
                    _i_14703 = 0i32;
                    _gotoNext = 14844i32;
                } else if (__value__ == (14844i32)) {
                    if (_i_14703 < (stdgo._internal.internal.cpu.Cpu__options._options.length)) {
                        _gotoNext = 14722i32;
                    } else {
                        _gotoNext = 14849i32;
                    };
                } else if (__value__ == (14849i32)) {
                    stdgo.Go.print(("GODEBUG: unknown cpu feature \"" : stdgo.GoString), _key_14279, ("\"\n" : stdgo.GoString));
                    _gotoNext = 13953i32;
                } else if (__value__ == (14908i32)) {
                    if ((0i32 : stdgo.GoInt) < (stdgo._internal.internal.cpu.Cpu__options._options.length)) {
                        _gotoNext = 15121i32;
                    } else {
                        _gotoNext = 15124i32;
                    };
                } else if (__value__ == (14934i32)) {
                    _o_14915 = stdgo._internal.internal.cpu.Cpu__options._options[(_i_14920_0 : stdgo.GoInt)];
                    if (!_o_14915.specified) {
                        _gotoNext = 14954i32;
                    } else {
                        _gotoNext = 14975i32;
                    };
                } else if (__value__ == (14954i32)) {
                    _i_14920_0++;
                    _gotoNext = 15122i32;
                } else if (__value__ == (14975i32)) {
                    if ((_o_14915.enable && !_o_14915.feature.value : Bool)) {
                        _gotoNext = 15002i32;
                    } else {
                        _gotoNext = 15099i32;
                    };
                } else if (__value__ == (15002i32)) {
                    stdgo.Go.print(("GODEBUG: can not enable \"" : stdgo.GoString), _o_14915.name, ("\", missing CPU support\n" : stdgo.GoString));
                    _i_14920_0++;
                    _gotoNext = 15122i32;
                } else if (__value__ == (15099i32)) {
                    _o_14915.feature.value = _o_14915.enable;
                    _i_14920_0++;
                    _gotoNext = 15122i32;
                } else if (__value__ == (15121i32)) {
                    {
                        final __tmp__0 = 0i32;
                        final __tmp__1 = stdgo._internal.internal.cpu.Cpu__options._options[(0i32 : stdgo.GoInt)];
                        _i_14920_0 = __tmp__0;
                        _o_14915 = __tmp__1;
                    };
                    _gotoNext = 15122i32;
                } else if (__value__ == (15122i32)) {
                    if (_i_14920_0 < (stdgo._internal.internal.cpu.Cpu__options._options.length)) {
                        _gotoNext = 14934i32;
                    } else {
                        _gotoNext = 15124i32;
                    };
                } else if (__value__ == (15124i32)) {
                    _gotoNext = -1i32;
                };
            };
        };
    }
