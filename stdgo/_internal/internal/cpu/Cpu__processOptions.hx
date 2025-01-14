package stdgo._internal.internal.cpu;
function _processOptions(_env:stdgo.GoString):Void {
        var _i_52096:stdgo.GoInt = (0 : stdgo.GoInt);
        var _key_51790:stdgo.GoString = ("" : stdgo.GoString);
        var _i_51496:stdgo.GoInt = (0 : stdgo.GoInt);
        var _fieldBreak = false;
        var _o_52426:stdgo._internal.internal.cpu.Cpu_T_option.T_option = ({} : stdgo._internal.internal.cpu.Cpu_T_option.T_option);
        var _i_52431_0:stdgo.GoInt = (0 : stdgo.GoInt);
        var _i_52214:stdgo.GoInt = (0 : stdgo.GoInt);
        var _enable_51856:Bool = false;
        var _value_51795:stdgo.GoString = ("" : stdgo.GoString);
        var _field_51482:stdgo.GoString = ("" : stdgo.GoString);
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    _gotoNext = 51456i32;
                } else if (__value__ == (51456i32)) {
                    var __blank__ = 0i32;
                    _fieldBreak = false;
                    _gotoNext = 51464i32;
                } else if (__value__ == (51464i32)) {
                    if (!_fieldBreak && (_env != stdgo.Go.str())) {
                        _gotoNext = 51478i32;
                    } else {
                        _gotoNext = 52419i32;
                    };
                } else if (__value__ == (51478i32)) {
                    _field_51482 = stdgo.Go.str()?.__copy__();
                    _i_51496 = stdgo._internal.internal.cpu.Cpu__indexByte._indexByte(_env?.__copy__(), (44 : stdgo.GoUInt8));
                    if ((_i_51496 < (0 : stdgo.GoInt) : Bool)) {
                        _gotoNext = 51532i32;
                    } else {
                        _gotoNext = 51567i32;
                    };
                } else if (__value__ == (51532i32)) {
                    {
                        final __tmp__0 = _env?.__copy__();
                        final __tmp__1 = stdgo.Go.str()?.__copy__();
                        _field_51482 = __tmp__0;
                        _env = __tmp__1;
                    };
                    _gotoNext = 51610i32;
                } else if (__value__ == (51567i32)) {
                    _gotoNext = 51567i32;
                    {
                        final __tmp__0 = (_env.__slice__(0, _i_51496) : stdgo.GoString)?.__copy__();
                        final __tmp__1 = (_env.__slice__((_i_51496 + (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        _field_51482 = __tmp__0;
                        _env = __tmp__1;
                    };
                    var __blank__ = 0i32;
                    _gotoNext = 51610i32;
                } else if (__value__ == (51610i32)) {
                    if ((((_field_51482.length) < (4 : stdgo.GoInt) : Bool) || ((_field_51482.__slice__(0, (4 : stdgo.GoInt)) : stdgo.GoString) != ("cpu." : stdgo.GoString)) : Bool)) {
                        _gotoNext = 51651i32;
                    } else {
                        _gotoNext = 51671i32;
                    };
                } else if (__value__ == (51651i32)) {
                    var __blank__ = 0i32;
                    _gotoNext = 51464i32;
                } else if (__value__ == (51671i32)) {
                    _i_51496 = stdgo._internal.internal.cpu.Cpu__indexByte._indexByte(_field_51482?.__copy__(), (61 : stdgo.GoUInt8));
                    if ((_i_51496 < (0 : stdgo.GoInt) : Bool)) {
                        _gotoNext = 51708i32;
                    } else {
                        _gotoNext = 51790i32;
                    };
                } else if (__value__ == (51708i32)) {
                    stdgo.Go.print(("GODEBUG: no value specified for \"" : stdgo.GoString), _field_51482, ("\"\n" : stdgo.GoString));
                    var __blank__ = 0i32;
                    _gotoNext = 51464i32;
                } else if (__value__ == (51790i32)) {
                    {
                        final __tmp__0 = (_field_51482.__slice__((4 : stdgo.GoInt), _i_51496) : stdgo.GoString)?.__copy__();
                        final __tmp__1 = (_field_51482.__slice__((_i_51496 + (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        _key_51790 = __tmp__0;
                        _value_51795 = __tmp__1;
                    };
                    _gotoNext = 51870i32;
                } else if (__value__ == (51870i32)) {
                    {
                        final __value__ = _value_51795;
                        if (__value__ == (("on" : stdgo.GoString))) {
                            _gotoNext = 51887i32;
                        } else if (__value__ == (("off" : stdgo.GoString))) {
                            _gotoNext = 51917i32;
                        } else {
                            _gotoNext = 51949i32;
                        };
                    };
                } else if (__value__ == (51887i32)) {
                    _enable_51856 = true;
                    _gotoNext = 52071i32;
                } else if (__value__ == (51917i32)) {
                    _enable_51856 = false;
                    _gotoNext = 52071i32;
                } else if (__value__ == (51949i32)) {
                    stdgo.Go.print(("GODEBUG: value \"" : stdgo.GoString), _value_51795, ("\" not supported for cpu option \"" : stdgo.GoString), _key_51790, ("\"\n" : stdgo.GoString));
                    _gotoNext = 51464i32;
                } else if (__value__ == (52071i32)) {
                    if (_key_51790 == (("all" : stdgo.GoString))) {
                        _gotoNext = 52087i32;
                    } else {
                        _gotoNext = 52210i32;
                    };
                } else if (__value__ == (52087i32)) {
                    if ((0i32 : stdgo.GoInt) < (stdgo._internal.internal.cpu.Cpu__options._options.length)) {
                        _gotoNext = 52182i32;
                    } else {
                        _gotoNext = 52188i32;
                    };
                } else if (__value__ == (52115i32)) {
                    stdgo._internal.internal.cpu.Cpu__options._options[(_i_52096 : stdgo.GoInt)].specified = true;
                    stdgo._internal.internal.cpu.Cpu__options._options[(_i_52096 : stdgo.GoInt)].enable = _enable_51856;
                    _i_52096++;
                    _gotoNext = 52183i32;
                } else if (__value__ == (52182i32)) {
                    _i_52096 = 0i32;
                    _gotoNext = 52183i32;
                } else if (__value__ == (52183i32)) {
                    if (_i_52096 < (stdgo._internal.internal.cpu.Cpu__options._options.length)) {
                        _gotoNext = 52115i32;
                    } else {
                        _gotoNext = 52188i32;
                    };
                } else if (__value__ == (52188i32)) {
                    _gotoNext = 51464i32;
                } else if (__value__ == (52210i32)) {
                    if ((0i32 : stdgo.GoInt) < (stdgo._internal.internal.cpu.Cpu__options._options.length)) {
                        _gotoNext = 52354i32;
                    } else {
                        _gotoNext = 52360i32;
                    };
                } else if (__value__ == (52214i32)) {
                    _i_52214++;
                    _gotoNext = 52355i32;
                } else if (__value__ == (52233i32)) {
                    if (stdgo._internal.internal.cpu.Cpu__options._options[(_i_52214 : stdgo.GoInt)].name == (_key_51790)) {
                        _gotoNext = 52264i32;
                    } else {
                        _gotoNext = 52214i32;
                    };
                } else if (__value__ == (52264i32)) {
                    stdgo._internal.internal.cpu.Cpu__options._options[(_i_52214 : stdgo.GoInt)].specified = true;
                    stdgo._internal.internal.cpu.Cpu__options._options[(_i_52214 : stdgo.GoInt)].enable = _enable_51856;
                    _gotoNext = 51464i32;
                } else if (__value__ == (52354i32)) {
                    _i_52214 = 0i32;
                    _gotoNext = 52355i32;
                } else if (__value__ == (52355i32)) {
                    if (_i_52214 < (stdgo._internal.internal.cpu.Cpu__options._options.length)) {
                        _gotoNext = 52233i32;
                    } else {
                        _gotoNext = 52360i32;
                    };
                } else if (__value__ == (52360i32)) {
                    stdgo.Go.print(("GODEBUG: unknown cpu feature \"" : stdgo.GoString), _key_51790, ("\"\n" : stdgo.GoString));
                    _gotoNext = 51464i32;
                } else if (__value__ == (52419i32)) {
                    if ((0i32 : stdgo.GoInt) < (stdgo._internal.internal.cpu.Cpu__options._options.length)) {
                        _gotoNext = 52632i32;
                    } else {
                        _gotoNext = 52635i32;
                    };
                } else if (__value__ == (52445i32)) {
                    _o_52426 = stdgo._internal.internal.cpu.Cpu__options._options[(_i_52431_0 : stdgo.GoInt)];
                    if (!_o_52426.specified) {
                        _gotoNext = 52465i32;
                    } else {
                        _gotoNext = 52486i32;
                    };
                } else if (__value__ == (52465i32)) {
                    _i_52431_0++;
                    _gotoNext = 52633i32;
                } else if (__value__ == (52486i32)) {
                    if ((_o_52426.enable && !_o_52426.feature.value : Bool)) {
                        _gotoNext = 52513i32;
                    } else {
                        _gotoNext = 52610i32;
                    };
                } else if (__value__ == (52513i32)) {
                    stdgo.Go.print(("GODEBUG: can not enable \"" : stdgo.GoString), _o_52426.name, ("\", missing CPU support\n" : stdgo.GoString));
                    _i_52431_0++;
                    _gotoNext = 52633i32;
                } else if (__value__ == (52610i32)) {
                    _o_52426.feature.value = _o_52426.enable;
                    _i_52431_0++;
                    _gotoNext = 52633i32;
                } else if (__value__ == (52632i32)) {
                    {
                        final __tmp__0 = 0i32;
                        final __tmp__1 = stdgo._internal.internal.cpu.Cpu__options._options[(0i32 : stdgo.GoInt)];
                        _i_52431_0 = __tmp__0;
                        _o_52426 = __tmp__1;
                    };
                    _gotoNext = 52633i32;
                } else if (__value__ == (52633i32)) {
                    if (_i_52431_0 < (stdgo._internal.internal.cpu.Cpu__options._options.length)) {
                        _gotoNext = 52445i32;
                    } else {
                        _gotoNext = 52635i32;
                    };
                } else if (__value__ == (52635i32)) {
                    _gotoNext = -1i32;
                };
            };
        };
    }
