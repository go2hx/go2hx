package stdgo._internal.internal.cpu;
function _processOptions(_env:stdgo.GoString):Void {
        var _i_296027_0:stdgo.GoInt = (0 : stdgo.GoInt);
        var _i_295810:stdgo.GoInt = (0 : stdgo.GoInt);
        var _enable_295452:Bool = false;
        var _value_295391:stdgo.GoString = ("" : stdgo.GoString);
        var _field_295078:stdgo.GoString = ("" : stdgo.GoString);
        var _fieldBreak = false;
        var _o_296022:stdgo._internal.internal.cpu.Cpu_T_option.T_option = ({} : stdgo._internal.internal.cpu.Cpu_T_option.T_option);
        var _i_295692:stdgo.GoInt = (0 : stdgo.GoInt);
        var _key_295386:stdgo.GoString = ("" : stdgo.GoString);
        var _i_295092:stdgo.GoInt = (0 : stdgo.GoInt);
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    _gotoNext = 295052i32;
                } else if (__value__ == (295052i32)) {
                    var __blank__ = 0i32;
                    _fieldBreak = false;
                    _gotoNext = 295060i32;
                } else if (__value__ == (295060i32)) {
                    if (!_fieldBreak && (_env != stdgo.Go.str())) {
                        _gotoNext = 295074i32;
                    } else {
                        _gotoNext = 296015i32;
                    };
                } else if (__value__ == (295074i32)) {
                    _field_295078 = stdgo.Go.str()?.__copy__();
                    _i_295092 = stdgo._internal.internal.cpu.Cpu__indexByte._indexByte(_env?.__copy__(), (44 : stdgo.GoUInt8));
                    if ((_i_295092 < (0 : stdgo.GoInt) : Bool)) {
                        _gotoNext = 295128i32;
                    } else {
                        _gotoNext = 295163i32;
                    };
                } else if (__value__ == (295128i32)) {
                    {
                        final __tmp__0 = _env?.__copy__();
                        final __tmp__1 = stdgo.Go.str()?.__copy__();
                        _field_295078 = __tmp__0;
                        _env = __tmp__1;
                    };
                    _gotoNext = 295206i32;
                } else if (__value__ == (295163i32)) {
                    _gotoNext = 295163i32;
                    {
                        final __tmp__0 = (_env.__slice__(0, _i_295092) : stdgo.GoString)?.__copy__();
                        final __tmp__1 = (_env.__slice__((_i_295092 + (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        _field_295078 = __tmp__0;
                        _env = __tmp__1;
                    };
                    var __blank__ = 0i32;
                    _gotoNext = 295206i32;
                } else if (__value__ == (295206i32)) {
                    if ((((_field_295078.length) < (4 : stdgo.GoInt) : Bool) || ((_field_295078.__slice__(0, (4 : stdgo.GoInt)) : stdgo.GoString) != ("cpu." : stdgo.GoString)) : Bool)) {
                        _gotoNext = 295247i32;
                    } else {
                        _gotoNext = 295267i32;
                    };
                } else if (__value__ == (295247i32)) {
                    var __blank__ = 0i32;
                    _gotoNext = 295060i32;
                } else if (__value__ == (295267i32)) {
                    _i_295092 = stdgo._internal.internal.cpu.Cpu__indexByte._indexByte(_field_295078?.__copy__(), (61 : stdgo.GoUInt8));
                    if ((_i_295092 < (0 : stdgo.GoInt) : Bool)) {
                        _gotoNext = 295304i32;
                    } else {
                        _gotoNext = 295386i32;
                    };
                } else if (__value__ == (295304i32)) {
                    stdgo.Go.print(("GODEBUG: no value specified for \"" : stdgo.GoString), _field_295078, ("\"\n" : stdgo.GoString));
                    var __blank__ = 0i32;
                    _gotoNext = 295060i32;
                } else if (__value__ == (295386i32)) {
                    {
                        final __tmp__0 = (_field_295078.__slice__((4 : stdgo.GoInt), _i_295092) : stdgo.GoString)?.__copy__();
                        final __tmp__1 = (_field_295078.__slice__((_i_295092 + (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        _key_295386 = __tmp__0;
                        _value_295391 = __tmp__1;
                    };
                    var __blank__ = 0i32;
                    _gotoNext = 295466i32;
                } else if (__value__ == (295466i32)) {
                    {
                        final __value__ = _value_295391;
                        if (__value__ == (("on" : stdgo.GoString))) {
                            _gotoNext = 295483i32;
                        } else if (__value__ == (("off" : stdgo.GoString))) {
                            _gotoNext = 295513i32;
                        } else {
                            _gotoNext = 295545i32;
                        };
                    };
                } else if (__value__ == (295483i32)) {
                    _enable_295452 = true;
                    _gotoNext = 295667i32;
                } else if (__value__ == (295513i32)) {
                    _enable_295452 = false;
                    _gotoNext = 295667i32;
                } else if (__value__ == (295545i32)) {
                    stdgo.Go.print(("GODEBUG: value \"" : stdgo.GoString), _value_295391, ("\" not supported for cpu option \"" : stdgo.GoString), _key_295386, ("\"\n" : stdgo.GoString));
                    _gotoNext = 295060i32;
                } else if (__value__ == (295667i32)) {
                    if (_key_295386 == (("all" : stdgo.GoString))) {
                        _gotoNext = 295683i32;
                    } else {
                        _gotoNext = 295806i32;
                    };
                } else if (__value__ == (295683i32)) {
                    if ((0i32 : stdgo.GoInt) < (stdgo._internal.internal.cpu.Cpu__options._options.length)) {
                        _gotoNext = 295778i32;
                    } else {
                        _gotoNext = 295784i32;
                    };
                } else if (__value__ == (295711i32)) {
                    stdgo._internal.internal.cpu.Cpu__options._options[(_i_295692 : stdgo.GoInt)].specified = true;
                    stdgo._internal.internal.cpu.Cpu__options._options[(_i_295692 : stdgo.GoInt)].enable = _enable_295452;
                    _i_295692++;
                    _gotoNext = 295779i32;
                } else if (__value__ == (295778i32)) {
                    _i_295692 = 0i32;
                    _gotoNext = 295779i32;
                } else if (__value__ == (295779i32)) {
                    if (_i_295692 < (stdgo._internal.internal.cpu.Cpu__options._options.length)) {
                        _gotoNext = 295711i32;
                    } else {
                        _gotoNext = 295784i32;
                    };
                } else if (__value__ == (295784i32)) {
                    _gotoNext = 295060i32;
                } else if (__value__ == (295806i32)) {
                    if ((0i32 : stdgo.GoInt) < (stdgo._internal.internal.cpu.Cpu__options._options.length)) {
                        _gotoNext = 295950i32;
                    } else {
                        _gotoNext = 295956i32;
                    };
                } else if (__value__ == (295810i32)) {
                    _i_295810++;
                    _gotoNext = 295951i32;
                } else if (__value__ == (295829i32)) {
                    if (stdgo._internal.internal.cpu.Cpu__options._options[(_i_295810 : stdgo.GoInt)].name == (_key_295386)) {
                        _gotoNext = 295860i32;
                    } else {
                        _gotoNext = 295810i32;
                    };
                } else if (__value__ == (295860i32)) {
                    stdgo._internal.internal.cpu.Cpu__options._options[(_i_295810 : stdgo.GoInt)].specified = true;
                    stdgo._internal.internal.cpu.Cpu__options._options[(_i_295810 : stdgo.GoInt)].enable = _enable_295452;
                    _gotoNext = 295060i32;
                } else if (__value__ == (295950i32)) {
                    _i_295810 = 0i32;
                    _gotoNext = 295951i32;
                } else if (__value__ == (295951i32)) {
                    if (_i_295810 < (stdgo._internal.internal.cpu.Cpu__options._options.length)) {
                        _gotoNext = 295829i32;
                    } else {
                        _gotoNext = 295956i32;
                    };
                } else if (__value__ == (295956i32)) {
                    stdgo.Go.print(("GODEBUG: unknown cpu feature \"" : stdgo.GoString), _key_295386, ("\"\n" : stdgo.GoString));
                    _gotoNext = 295060i32;
                } else if (__value__ == (296015i32)) {
                    if ((0i32 : stdgo.GoInt) < (stdgo._internal.internal.cpu.Cpu__options._options.length)) {
                        _gotoNext = 296228i32;
                    } else {
                        _gotoNext = 296231i32;
                    };
                } else if (__value__ == (296041i32)) {
                    _o_296022 = stdgo._internal.internal.cpu.Cpu__options._options[(_i_296027_0 : stdgo.GoInt)];
                    if (!_o_296022.specified) {
                        _gotoNext = 296061i32;
                    } else {
                        _gotoNext = 296082i32;
                    };
                } else if (__value__ == (296061i32)) {
                    _i_296027_0++;
                    _gotoNext = 296229i32;
                } else if (__value__ == (296082i32)) {
                    if ((_o_296022.enable && !_o_296022.feature.value : Bool)) {
                        _gotoNext = 296109i32;
                    } else {
                        _gotoNext = 296206i32;
                    };
                } else if (__value__ == (296109i32)) {
                    stdgo.Go.print(("GODEBUG: can not enable \"" : stdgo.GoString), _o_296022.name, ("\", missing CPU support\n" : stdgo.GoString));
                    _i_296027_0++;
                    _gotoNext = 296229i32;
                } else if (__value__ == (296206i32)) {
                    _o_296022.feature.value = _o_296022.enable;
                    _i_296027_0++;
                    _gotoNext = 296229i32;
                } else if (__value__ == (296228i32)) {
                    {
                        final __tmp__0 = 0i32;
                        final __tmp__1 = stdgo._internal.internal.cpu.Cpu__options._options[(0i32 : stdgo.GoInt)];
                        _i_296027_0 = __tmp__0;
                        _o_296022 = __tmp__1;
                    };
                    _gotoNext = 296229i32;
                } else if (__value__ == (296229i32)) {
                    if (_i_296027_0 < (stdgo._internal.internal.cpu.Cpu__options._options.length)) {
                        _gotoNext = 296041i32;
                    } else {
                        _gotoNext = 296231i32;
                    };
                } else if (__value__ == (296231i32)) {
                    _gotoNext = -1i32;
                };
            };
        };
    }
