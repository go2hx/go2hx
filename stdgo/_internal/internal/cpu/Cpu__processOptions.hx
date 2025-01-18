package stdgo._internal.internal.cpu;
function _processOptions(_env:stdgo.GoString):Void {
        var _i_217852:stdgo.GoInt = (0 : stdgo.GoInt);
        var _enable_217494:Bool = false;
        var _key_217428:stdgo.GoString = ("" : stdgo.GoString);
        var _field_217120:stdgo.GoString = ("" : stdgo.GoString);
        var _fieldBreak = false;
        var _o_218064:stdgo._internal.internal.cpu.Cpu_T_option.T_option = ({} : stdgo._internal.internal.cpu.Cpu_T_option.T_option);
        var _i_218069_0:stdgo.GoInt = (0 : stdgo.GoInt);
        var _i_217734:stdgo.GoInt = (0 : stdgo.GoInt);
        var _value_217433:stdgo.GoString = ("" : stdgo.GoString);
        var _i_217134:stdgo.GoInt = (0 : stdgo.GoInt);
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    _gotoNext = 217094i32;
                } else if (__value__ == (217094i32)) {
                    var __blank__ = 0i32;
                    _fieldBreak = false;
                    _gotoNext = 217102i32;
                } else if (__value__ == (217102i32)) {
                    if (!_fieldBreak && (_env != stdgo.Go.str())) {
                        _gotoNext = 217116i32;
                    } else {
                        _gotoNext = 218057i32;
                    };
                } else if (__value__ == (217116i32)) {
                    _field_217120 = stdgo.Go.str()?.__copy__();
                    _i_217134 = stdgo._internal.internal.cpu.Cpu__indexByte._indexByte(_env?.__copy__(), (44 : stdgo.GoUInt8));
                    if ((_i_217134 < (0 : stdgo.GoInt) : Bool)) {
                        _gotoNext = 217170i32;
                    } else {
                        _gotoNext = 217205i32;
                    };
                } else if (__value__ == (217170i32)) {
                    {
                        final __tmp__0 = _env?.__copy__();
                        final __tmp__1 = stdgo.Go.str()?.__copy__();
                        _field_217120 = __tmp__0;
                        _env = __tmp__1;
                    };
                    _gotoNext = 217248i32;
                } else if (__value__ == (217205i32)) {
                    _gotoNext = 217205i32;
                    {
                        final __tmp__0 = (_env.__slice__(0, _i_217134) : stdgo.GoString)?.__copy__();
                        final __tmp__1 = (_env.__slice__((_i_217134 + (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        _field_217120 = __tmp__0;
                        _env = __tmp__1;
                    };
                    var __blank__ = 0i32;
                    _gotoNext = 217248i32;
                } else if (__value__ == (217248i32)) {
                    if ((((_field_217120.length) < (4 : stdgo.GoInt) : Bool) || ((_field_217120.__slice__(0, (4 : stdgo.GoInt)) : stdgo.GoString) != ("cpu." : stdgo.GoString)) : Bool)) {
                        _gotoNext = 217289i32;
                    } else {
                        _gotoNext = 217309i32;
                    };
                } else if (__value__ == (217289i32)) {
                    var __blank__ = 0i32;
                    _gotoNext = 217102i32;
                } else if (__value__ == (217309i32)) {
                    _i_217134 = stdgo._internal.internal.cpu.Cpu__indexByte._indexByte(_field_217120?.__copy__(), (61 : stdgo.GoUInt8));
                    if ((_i_217134 < (0 : stdgo.GoInt) : Bool)) {
                        _gotoNext = 217346i32;
                    } else {
                        _gotoNext = 217428i32;
                    };
                } else if (__value__ == (217346i32)) {
                    stdgo.Go.print(("GODEBUG: no value specified for \"" : stdgo.GoString), _field_217120, ("\"\n" : stdgo.GoString));
                    var __blank__ = 0i32;
                    _gotoNext = 217102i32;
                } else if (__value__ == (217428i32)) {
                    {
                        final __tmp__0 = (_field_217120.__slice__((4 : stdgo.GoInt), _i_217134) : stdgo.GoString)?.__copy__();
                        final __tmp__1 = (_field_217120.__slice__((_i_217134 + (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        _key_217428 = __tmp__0;
                        _value_217433 = __tmp__1;
                    };
                    _gotoNext = 217508i32;
                } else if (__value__ == (217508i32)) {
                    {
                        final __value__ = _value_217433;
                        if (__value__ == (("on" : stdgo.GoString))) {
                            _gotoNext = 217525i32;
                        } else if (__value__ == (("off" : stdgo.GoString))) {
                            _gotoNext = 217555i32;
                        } else {
                            _gotoNext = 217587i32;
                        };
                    };
                } else if (__value__ == (217525i32)) {
                    _enable_217494 = true;
                    _gotoNext = 217709i32;
                } else if (__value__ == (217555i32)) {
                    _enable_217494 = false;
                    _gotoNext = 217709i32;
                } else if (__value__ == (217587i32)) {
                    stdgo.Go.print(("GODEBUG: value \"" : stdgo.GoString), _value_217433, ("\" not supported for cpu option \"" : stdgo.GoString), _key_217428, ("\"\n" : stdgo.GoString));
                    _gotoNext = 217102i32;
                } else if (__value__ == (217709i32)) {
                    if (_key_217428 == (("all" : stdgo.GoString))) {
                        _gotoNext = 217725i32;
                    } else {
                        _gotoNext = 217848i32;
                    };
                } else if (__value__ == (217725i32)) {
                    if ((0i32 : stdgo.GoInt) < (stdgo._internal.internal.cpu.Cpu__options._options.length)) {
                        _gotoNext = 217820i32;
                    } else {
                        _gotoNext = 217826i32;
                    };
                } else if (__value__ == (217753i32)) {
                    stdgo._internal.internal.cpu.Cpu__options._options[(_i_217734 : stdgo.GoInt)].specified = true;
                    stdgo._internal.internal.cpu.Cpu__options._options[(_i_217734 : stdgo.GoInt)].enable = _enable_217494;
                    _i_217734++;
                    _gotoNext = 217821i32;
                } else if (__value__ == (217820i32)) {
                    _i_217734 = 0i32;
                    _gotoNext = 217821i32;
                } else if (__value__ == (217821i32)) {
                    if (_i_217734 < (stdgo._internal.internal.cpu.Cpu__options._options.length)) {
                        _gotoNext = 217753i32;
                    } else {
                        _gotoNext = 217826i32;
                    };
                } else if (__value__ == (217826i32)) {
                    _gotoNext = 217102i32;
                } else if (__value__ == (217848i32)) {
                    if ((0i32 : stdgo.GoInt) < (stdgo._internal.internal.cpu.Cpu__options._options.length)) {
                        _gotoNext = 217992i32;
                    } else {
                        _gotoNext = 217998i32;
                    };
                } else if (__value__ == (217852i32)) {
                    _i_217852++;
                    _gotoNext = 217993i32;
                } else if (__value__ == (217871i32)) {
                    if (stdgo._internal.internal.cpu.Cpu__options._options[(_i_217852 : stdgo.GoInt)].name == (_key_217428)) {
                        _gotoNext = 217902i32;
                    } else {
                        _gotoNext = 217852i32;
                    };
                } else if (__value__ == (217902i32)) {
                    stdgo._internal.internal.cpu.Cpu__options._options[(_i_217852 : stdgo.GoInt)].specified = true;
                    stdgo._internal.internal.cpu.Cpu__options._options[(_i_217852 : stdgo.GoInt)].enable = _enable_217494;
                    _gotoNext = 217102i32;
                } else if (__value__ == (217992i32)) {
                    _i_217852 = 0i32;
                    _gotoNext = 217993i32;
                } else if (__value__ == (217993i32)) {
                    if (_i_217852 < (stdgo._internal.internal.cpu.Cpu__options._options.length)) {
                        _gotoNext = 217871i32;
                    } else {
                        _gotoNext = 217998i32;
                    };
                } else if (__value__ == (217998i32)) {
                    stdgo.Go.print(("GODEBUG: unknown cpu feature \"" : stdgo.GoString), _key_217428, ("\"\n" : stdgo.GoString));
                    _gotoNext = 217102i32;
                } else if (__value__ == (218057i32)) {
                    if ((0i32 : stdgo.GoInt) < (stdgo._internal.internal.cpu.Cpu__options._options.length)) {
                        _gotoNext = 218270i32;
                    } else {
                        _gotoNext = 218273i32;
                    };
                } else if (__value__ == (218083i32)) {
                    _o_218064 = stdgo._internal.internal.cpu.Cpu__options._options[(_i_218069_0 : stdgo.GoInt)];
                    if (!_o_218064.specified) {
                        _gotoNext = 218103i32;
                    } else {
                        _gotoNext = 218124i32;
                    };
                } else if (__value__ == (218103i32)) {
                    _i_218069_0++;
                    _gotoNext = 218271i32;
                } else if (__value__ == (218124i32)) {
                    if ((_o_218064.enable && !_o_218064.feature.value : Bool)) {
                        _gotoNext = 218151i32;
                    } else {
                        _gotoNext = 218248i32;
                    };
                } else if (__value__ == (218151i32)) {
                    stdgo.Go.print(("GODEBUG: can not enable \"" : stdgo.GoString), _o_218064.name, ("\", missing CPU support\n" : stdgo.GoString));
                    _i_218069_0++;
                    _gotoNext = 218271i32;
                } else if (__value__ == (218248i32)) {
                    _o_218064.feature.value = _o_218064.enable;
                    _i_218069_0++;
                    _gotoNext = 218271i32;
                } else if (__value__ == (218270i32)) {
                    {
                        final __tmp__0 = 0i32;
                        final __tmp__1 = stdgo._internal.internal.cpu.Cpu__options._options[(0i32 : stdgo.GoInt)];
                        _i_218069_0 = __tmp__0;
                        _o_218064 = __tmp__1;
                    };
                    _gotoNext = 218271i32;
                } else if (__value__ == (218271i32)) {
                    if (_i_218069_0 < (stdgo._internal.internal.cpu.Cpu__options._options.length)) {
                        _gotoNext = 218083i32;
                    } else {
                        _gotoNext = 218273i32;
                    };
                } else if (__value__ == (218273i32)) {
                    _gotoNext = -1i32;
                };
            };
        };
    }
