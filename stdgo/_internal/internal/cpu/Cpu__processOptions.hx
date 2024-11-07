package stdgo._internal.internal.cpu;
function _processOptions(_env:stdgo.GoString):Void {
        var _value_270002:stdgo.GoString = ("" : stdgo.GoString);
        var _i_269703:stdgo.GoInt = (0 : stdgo.GoInt);
        var _field_269689:stdgo.GoString = ("" : stdgo.GoString);
        var _fieldBreak = false;
        var _i_270303:stdgo.GoInt = (0 : stdgo.GoInt);
        var _i_270638_0:stdgo.GoInt = (0 : stdgo.GoInt);
        var _i_270421:stdgo.GoInt = (0 : stdgo.GoInt);
        var _enable_270063:Bool = false;
        var _key_269997:stdgo.GoString = ("" : stdgo.GoString);
        var _o_270633:stdgo._internal.internal.cpu.Cpu_T_option.T_option = ({} : stdgo._internal.internal.cpu.Cpu_T_option.T_option);
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    _gotoNext = 269663i32;
                } else if (__value__ == (269663i32)) {
                    var __blank__ = 0i32;
                    _fieldBreak = false;
                    _gotoNext = 269671i32;
                } else if (__value__ == (269671i32)) {
                    if (!_fieldBreak && (_env != stdgo.Go.str())) {
                        _gotoNext = 269685i32;
                    } else {
                        _gotoNext = 270626i32;
                    };
                } else if (__value__ == (269685i32)) {
                    _field_269689 = stdgo.Go.str()?.__copy__();
                    _i_269703 = stdgo._internal.internal.cpu.Cpu__indexByte._indexByte(_env?.__copy__(), (44 : stdgo.GoUInt8));
                    if ((_i_269703 < (0 : stdgo.GoInt) : Bool)) {
                        _gotoNext = 269739i32;
                    } else {
                        _gotoNext = 269774i32;
                    };
                } else if (__value__ == (269739i32)) {
                    {
                        final __tmp__0 = _env?.__copy__();
                        final __tmp__1 = stdgo.Go.str()?.__copy__();
                        _field_269689 = __tmp__0;
                        _env = __tmp__1;
                    };
                    _gotoNext = 269817i32;
                } else if (__value__ == (269774i32)) {
                    {
                        final __tmp__0 = (_env.__slice__(0, _i_269703) : stdgo.GoString)?.__copy__();
                        final __tmp__1 = (_env.__slice__((_i_269703 + (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        _field_269689 = __tmp__0;
                        _env = __tmp__1;
                    };
                    _gotoNext = 269817i32;
                } else if (__value__ == (269817i32)) {
                    if ((((_field_269689.length) < (4 : stdgo.GoInt) : Bool) || ((_field_269689.__slice__(0, (4 : stdgo.GoInt)) : stdgo.GoString) != ("cpu." : stdgo.GoString)) : Bool)) {
                        _gotoNext = 269858i32;
                    } else {
                        _gotoNext = 269878i32;
                    };
                } else if (__value__ == (269858i32)) {
                    var __blank__ = 0i32;
                    _gotoNext = 269671i32;
                } else if (__value__ == (269878i32)) {
                    _i_269703 = stdgo._internal.internal.cpu.Cpu__indexByte._indexByte(_field_269689?.__copy__(), (61 : stdgo.GoUInt8));
                    if ((_i_269703 < (0 : stdgo.GoInt) : Bool)) {
                        _gotoNext = 269915i32;
                    } else {
                        _gotoNext = 269997i32;
                    };
                } else if (__value__ == (269915i32)) {
                    stdgo.Go.print(("GODEBUG: no value specified for \"" : stdgo.GoString), _field_269689, ("\"\n" : stdgo.GoString));
                    var __blank__ = 0i32;
                    _gotoNext = 269671i32;
                } else if (__value__ == (269997i32)) {
                    {
                        final __tmp__0 = (_field_269689.__slice__((4 : stdgo.GoInt), _i_269703) : stdgo.GoString)?.__copy__();
                        final __tmp__1 = (_field_269689.__slice__((_i_269703 + (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        _key_269997 = __tmp__0;
                        _value_270002 = __tmp__1;
                    };
                    var __blank__ = 0i32;
                    _gotoNext = 270077i32;
                } else if (__value__ == (270077i32)) {
                    {
                        final __value__ = _value_270002;
                        if (__value__ == (("on" : stdgo.GoString))) {
                            _gotoNext = 270094i32;
                        } else if (__value__ == (("off" : stdgo.GoString))) {
                            _gotoNext = 270124i32;
                        } else {
                            _gotoNext = 270156i32;
                        };
                    };
                } else if (__value__ == (270094i32)) {
                    _enable_270063 = true;
                    _gotoNext = 270278i32;
                } else if (__value__ == (270124i32)) {
                    _enable_270063 = false;
                    _gotoNext = 270278i32;
                } else if (__value__ == (270156i32)) {
                    stdgo.Go.print(("GODEBUG: value \"" : stdgo.GoString), _value_270002, ("\" not supported for cpu option \"" : stdgo.GoString), _key_269997, ("\"\n" : stdgo.GoString));
                    _gotoNext = 269671i32;
                } else if (__value__ == (270278i32)) {
                    if (_key_269997 == (("all" : stdgo.GoString))) {
                        _gotoNext = 270294i32;
                    } else {
                        _gotoNext = 270417i32;
                    };
                } else if (__value__ == (270294i32)) {
                    if ((0i32 : stdgo.GoInt) < (stdgo._internal.internal.cpu.Cpu__options._options.length)) {
                        _gotoNext = 270389i32;
                    } else {
                        _gotoNext = 270395i32;
                    };
                } else if (__value__ == (270322i32)) {
                    stdgo._internal.internal.cpu.Cpu__options._options[(_i_270303 : stdgo.GoInt)].specified = true;
                    stdgo._internal.internal.cpu.Cpu__options._options[(_i_270303 : stdgo.GoInt)].enable = _enable_270063;
                    _i_270303++;
                    _gotoNext = 270390i32;
                } else if (__value__ == (270389i32)) {
                    _i_270303 = 0i32;
                    _gotoNext = 270390i32;
                } else if (__value__ == (270390i32)) {
                    if (_i_270303 < (stdgo._internal.internal.cpu.Cpu__options._options.length)) {
                        _gotoNext = 270322i32;
                    } else {
                        _gotoNext = 270395i32;
                    };
                } else if (__value__ == (270395i32)) {
                    _gotoNext = 269671i32;
                } else if (__value__ == (270417i32)) {
                    if ((0i32 : stdgo.GoInt) < (stdgo._internal.internal.cpu.Cpu__options._options.length)) {
                        _gotoNext = 270561i32;
                    } else {
                        _gotoNext = 270567i32;
                    };
                } else if (__value__ == (270421i32)) {
                    _i_270421++;
                    _gotoNext = 270562i32;
                } else if (__value__ == (270440i32)) {
                    if (stdgo._internal.internal.cpu.Cpu__options._options[(_i_270421 : stdgo.GoInt)].name == (_key_269997)) {
                        _gotoNext = 270471i32;
                    } else {
                        _gotoNext = 270421i32;
                    };
                } else if (__value__ == (270471i32)) {
                    stdgo._internal.internal.cpu.Cpu__options._options[(_i_270421 : stdgo.GoInt)].specified = true;
                    stdgo._internal.internal.cpu.Cpu__options._options[(_i_270421 : stdgo.GoInt)].enable = _enable_270063;
                    _gotoNext = 269671i32;
                } else if (__value__ == (270561i32)) {
                    _i_270421 = 0i32;
                    _gotoNext = 270562i32;
                } else if (__value__ == (270562i32)) {
                    if (_i_270421 < (stdgo._internal.internal.cpu.Cpu__options._options.length)) {
                        _gotoNext = 270440i32;
                    } else {
                        _gotoNext = 270567i32;
                    };
                } else if (__value__ == (270567i32)) {
                    stdgo.Go.print(("GODEBUG: unknown cpu feature \"" : stdgo.GoString), _key_269997, ("\"\n" : stdgo.GoString));
                    _gotoNext = 269671i32;
                } else if (__value__ == (270626i32)) {
                    if ((0i32 : stdgo.GoInt) < (stdgo._internal.internal.cpu.Cpu__options._options.length)) {
                        _gotoNext = 270839i32;
                    } else {
                        _gotoNext = 270842i32;
                    };
                } else if (__value__ == (270652i32)) {
                    _o_270633 = stdgo._internal.internal.cpu.Cpu__options._options[(_i_270638_0 : stdgo.GoInt)];
                    if (!_o_270633.specified) {
                        _gotoNext = 270672i32;
                    } else {
                        _gotoNext = 270693i32;
                    };
                } else if (__value__ == (270672i32)) {
                    _i_270638_0++;
                    _gotoNext = 270840i32;
                } else if (__value__ == (270693i32)) {
                    if ((_o_270633.enable && !_o_270633.feature.value : Bool)) {
                        _gotoNext = 270720i32;
                    } else {
                        _gotoNext = 270817i32;
                    };
                } else if (__value__ == (270720i32)) {
                    stdgo.Go.print(("GODEBUG: can not enable \"" : stdgo.GoString), _o_270633.name, ("\", missing CPU support\n" : stdgo.GoString));
                    _i_270638_0++;
                    _gotoNext = 270840i32;
                } else if (__value__ == (270817i32)) {
                    _o_270633.feature.value = _o_270633.enable;
                    _i_270638_0++;
                    _gotoNext = 270840i32;
                } else if (__value__ == (270839i32)) {
                    {
                        final __tmp__0 = 0i32;
                        final __tmp__1 = stdgo._internal.internal.cpu.Cpu__options._options[(0i32 : stdgo.GoInt)];
                        _i_270638_0 = __tmp__0;
                        _o_270633 = __tmp__1;
                    };
                    _gotoNext = 270840i32;
                } else if (__value__ == (270840i32)) {
                    if (_i_270638_0 < (stdgo._internal.internal.cpu.Cpu__options._options.length)) {
                        _gotoNext = 270652i32;
                    } else {
                        _gotoNext = 270842i32;
                    };
                } else if (__value__ == (270842i32)) {
                    _gotoNext = -1i32;
                };
            };
        };
    }
