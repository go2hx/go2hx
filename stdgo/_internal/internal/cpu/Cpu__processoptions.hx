package stdgo._internal.internal.cpu;
function _processOptions(_env:stdgo.GoString):Void {
        var _fieldBreak = false;
        var _iterator_221781_7:stdgo.GoInt = (0 : stdgo.GoInt);
        var _i_5:stdgo.GoInt = (0 : stdgo.GoInt);
        var _enable_4:Bool = false;
        var _value_3:stdgo.GoString = ("" : stdgo.GoString);
        var _key_2:stdgo.GoString = ("" : stdgo.GoString);
        var _field_0:stdgo.GoString = ("" : stdgo.GoString);
        var _i_1:stdgo.GoInt = (0 : stdgo.GoInt);
        var _o_8:stdgo._internal.internal.cpu.Cpu_t_option.T_option = ({} : stdgo._internal.internal.cpu.Cpu_t_option.T_option);
        var _i_6:stdgo.GoInt = (0 : stdgo.GoInt);
        var _gotoNext = 0i64;
        _gotoNext == ((0i64 : stdgo.GoInt));
        //"file://#L0"
        while (_gotoNext != ((-1i64 : stdgo.GoInt))) {
            //"file://#L0"
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i64)) {
                    _gotoNext = 220806i64;
                } else if (__value__ == (220806i64)) {
                    0i64;
                    _fieldBreak = false;
                    _gotoNext = 220814i64;
                } else if (__value__ == (220814i64)) {
                    //"file://#L0"
                    if (!_fieldBreak && (_env != (stdgo.Go.str() : stdgo.GoString))) {
                        _gotoNext = 220828i64;
                    } else {
                        _gotoNext = 221769i64;
                    };
                } else if (__value__ == (220828i64)) {
                    _field_0 = (stdgo.Go.str() : stdgo.GoString)?.__copy__();
                    _i_1 = stdgo._internal.internal.cpu.Cpu__indexbyte._indexByte(_env?.__copy__(), (44 : stdgo.GoUInt8));
                    //"file:///home/runner/.go/go1.21.3/src/internal/cpu/cpu.go#L154"
                    if ((_i_1 < (0 : stdgo.GoInt) : Bool)) {
                        _gotoNext = 220882i64;
                    } else {
                        _gotoNext = 220917i64;
                    };
                } else if (__value__ == (220882i64)) {
                    {
                        final __tmp__0 = _env?.__copy__();
                        final __tmp__1 = (stdgo.Go.str() : stdgo.GoString)?.__copy__();
                        _field_0 = @:binopAssign __tmp__0;
                        _env = @:binopAssign __tmp__1;
                    };
                    _gotoNext = 220960i64;
                } else if (__value__ == (220917i64)) {
                    _gotoNext = 220917i64;
                    {
                        final __tmp__0 = (_env.__slice__(0, _i_1) : stdgo.GoString)?.__copy__();
                        final __tmp__1 = (_env.__slice__((_i_1 + (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        _field_0 = @:binopAssign __tmp__0;
                        _env = @:binopAssign __tmp__1;
                    };
                    0i64;
                    _gotoNext = 220960i64;
                } else if (__value__ == (220960i64)) {
                    //"file:///home/runner/.go/go1.21.3/src/internal/cpu/cpu.go#L159"
                    if ((((_field_0.length) < (4 : stdgo.GoInt) : Bool) || ((_field_0.__slice__(0, (4 : stdgo.GoInt)) : stdgo.GoString) != ("cpu." : stdgo.GoString)) : Bool)) {
                        _gotoNext = 221001i64;
                    } else {
                        _gotoNext = 221021i64;
                    };
                } else if (__value__ == (221001i64)) {
                    0i64;
                    _gotoNext = 220814i64;
                } else if (__value__ == (221021i64)) {
                    _i_1 = stdgo._internal.internal.cpu.Cpu__indexbyte._indexByte(_field_0?.__copy__(), (61 : stdgo.GoUInt8));
                    //"file:///home/runner/.go/go1.21.3/src/internal/cpu/cpu.go#L163"
                    if ((_i_1 < (0 : stdgo.GoInt) : Bool)) {
                        _gotoNext = 221058i64;
                    } else {
                        _gotoNext = 221140i64;
                    };
                } else if (__value__ == (221058i64)) {
                    //"file:///home/runner/.go/go1.21.3/src/internal/cpu/cpu.go#L164"
                    stdgo.Go.print(("GODEBUG: no value specified for \"" : stdgo.GoString), _field_0, ("\"\n" : stdgo.GoString));
                    0i64;
                    _gotoNext = 220814i64;
                } else if (__value__ == (221140i64)) {
                    {
                        final __tmp__0 = (_field_0.__slice__((4 : stdgo.GoInt), _i_1) : stdgo.GoString)?.__copy__();
                        final __tmp__1 = (_field_0.__slice__((_i_1 + (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        _key_2 = @:binopAssign __tmp__0;
                        _value_3 = @:binopAssign __tmp__1;
                    };
                    _gotoNext = 221220i64;
                } else if (__value__ == (221220i64)) {
                    //"file:///home/runner/.go/go1.21.3/src/internal/cpu/cpu.go#L170"
                    {
                        final __value__ = _value_3;
                        if (__value__ == (("on" : stdgo.GoString))) {
                            _gotoNext = 221237i64;
                        } else if (__value__ == (("off" : stdgo.GoString))) {
                            _gotoNext = 221267i64;
                        } else {
                            _gotoNext = 221299i64;
                        };
                    };
                } else if (__value__ == (221237i64)) {
                    _enable_4 = true;
                    _gotoNext = 221421i64;
                } else if (__value__ == (221267i64)) {
                    _enable_4 = false;
                    _gotoNext = 221421i64;
                } else if (__value__ == (221299i64)) {
                    //"file:///home/runner/.go/go1.21.3/src/internal/cpu/cpu.go#L176"
                    stdgo.Go.print(("GODEBUG: value \"" : stdgo.GoString), _value_3, ("\" not supported for cpu option \"" : stdgo.GoString), _key_2, ("\"\n" : stdgo.GoString));
                    _gotoNext = 220814i64;
                } else if (__value__ == (221421i64)) {
                    //"file:///home/runner/.go/go1.21.3/src/internal/cpu/cpu.go#L180"
                    if (_key_2 == (("all" : stdgo.GoString))) {
                        _gotoNext = 221437i64;
                    } else {
                        _gotoNext = 221560i64;
                    };
                } else if (__value__ == (221437i64)) {
                    //"file:///home/runner/.go/go1.21.3/src/internal/cpu/cpu.go#L181"
                    if ((0i64 : stdgo.GoInt) < (stdgo._internal.internal.cpu.Cpu__options._options.length)) {
                        _gotoNext = 221532i64;
                    } else {
                        _gotoNext = 221538i64;
                    };
                } else if (__value__ == (221465i64)) {
                    stdgo._internal.internal.cpu.Cpu__options._options[(_i_5 : stdgo.GoInt)].specified = true;
                    stdgo._internal.internal.cpu.Cpu__options._options[(_i_5 : stdgo.GoInt)].enable = _enable_4;
                    //"file:///home/runner/.go/go1.21.3/src/internal/cpu/cpu.go#L181"
                    _i_5++;
                    _gotoNext = 221533i64;
                } else if (__value__ == (221532i64)) {
                    _i_5 = 0i64;
                    _gotoNext = 221533i64;
                } else if (__value__ == (221533i64)) {
                    //"file://#L0"
                    if (_i_5 < (stdgo._internal.internal.cpu.Cpu__options._options.length)) {
                        _gotoNext = 221465i64;
                    } else {
                        _gotoNext = 221538i64;
                    };
                } else if (__value__ == (221538i64)) {
                    _gotoNext = 220814i64;
                } else if (__value__ == (221560i64)) {
                    //"file:///home/runner/.go/go1.21.3/src/internal/cpu/cpu.go#L188"
                    if ((0i64 : stdgo.GoInt) < (stdgo._internal.internal.cpu.Cpu__options._options.length)) {
                        _gotoNext = 221704i64;
                    } else {
                        _gotoNext = 221710i64;
                    };
                } else if (__value__ == (221564i64)) {
                    //"file:///home/runner/.go/go1.21.3/src/internal/cpu/cpu.go#L188"
                    _i_6++;
                    _gotoNext = 221705i64;
                } else if (__value__ == (221583i64)) {
                    //"file:///home/runner/.go/go1.21.3/src/internal/cpu/cpu.go#L189"
                    if (stdgo._internal.internal.cpu.Cpu__options._options[(_i_6 : stdgo.GoInt)].name == (_key_2)) {
                        _gotoNext = 221614i64;
                    } else {
                        _gotoNext = 221564i64;
                    };
                } else if (__value__ == (221614i64)) {
                    stdgo._internal.internal.cpu.Cpu__options._options[(_i_6 : stdgo.GoInt)].specified = true;
                    stdgo._internal.internal.cpu.Cpu__options._options[(_i_6 : stdgo.GoInt)].enable = _enable_4;
                    _gotoNext = 220814i64;
                } else if (__value__ == (221704i64)) {
                    _i_6 = 0i64;
                    _gotoNext = 221705i64;
                } else if (__value__ == (221705i64)) {
                    //"file://#L0"
                    if (_i_6 < (stdgo._internal.internal.cpu.Cpu__options._options.length)) {
                        _gotoNext = 221583i64;
                    } else {
                        _gotoNext = 221710i64;
                    };
                } else if (__value__ == (221710i64)) {
                    //"file:///home/runner/.go/go1.21.3/src/internal/cpu/cpu.go#L196"
                    stdgo.Go.print(("GODEBUG: unknown cpu feature \"" : stdgo.GoString), _key_2, ("\"\n" : stdgo.GoString));
                    _gotoNext = 220814i64;
                } else if (__value__ == (221769i64)) {
                    //"file:///home/runner/.go/go1.21.3/src/internal/cpu/cpu.go#L199"
                    if ((0i64 : stdgo.GoInt) < (stdgo._internal.internal.cpu.Cpu__options._options.length)) {
                        _gotoNext = 221982i64;
                    } else {
                        _gotoNext = 221985i64;
                    };
                } else if (__value__ == (221795i64)) {
                    _o_8 = stdgo._internal.internal.cpu.Cpu__options._options[(_iterator_221781_7 : stdgo.GoInt)];
                    //"file:///home/runner/.go/go1.21.3/src/internal/cpu/cpu.go#L200"
                    if (!_o_8.specified) {
                        _gotoNext = 221815i64;
                    } else {
                        _gotoNext = 221836i64;
                    };
                } else if (__value__ == (221815i64)) {
                    //"file:///home/runner/.go/go1.21.3/src/internal/cpu/cpu.go#L199"
                    _iterator_221781_7++;
                    _gotoNext = 221983i64;
                } else if (__value__ == (221836i64)) {
                    //"file:///home/runner/.go/go1.21.3/src/internal/cpu/cpu.go#L204"
                    if ((_o_8.enable && !_o_8.feature.value : Bool)) {
                        _gotoNext = 221863i64;
                    } else {
                        _gotoNext = 221960i64;
                    };
                } else if (__value__ == (221863i64)) {
                    //"file:///home/runner/.go/go1.21.3/src/internal/cpu/cpu.go#L205"
                    stdgo.Go.print(("GODEBUG: can not enable \"" : stdgo.GoString), _o_8.name, ("\", missing CPU support\n" : stdgo.GoString));
                    //"file:///home/runner/.go/go1.21.3/src/internal/cpu/cpu.go#L199"
                    _iterator_221781_7++;
                    _gotoNext = 221983i64;
                } else if (__value__ == (221960i64)) {
                    _o_8.feature.value = _o_8.enable;
                    //"file:///home/runner/.go/go1.21.3/src/internal/cpu/cpu.go#L199"
                    _iterator_221781_7++;
                    _gotoNext = 221983i64;
                } else if (__value__ == (221982i64)) {
                    {
                        final __tmp__0 = 0i64;
                        final __tmp__1 = stdgo._internal.internal.cpu.Cpu__options._options[(0i64 : stdgo.GoInt)];
                        _iterator_221781_7 = @:binopAssign __tmp__0;
                        _o_8 = @:binopAssign __tmp__1;
                    };
                    _gotoNext = 221983i64;
                } else if (__value__ == (221983i64)) {
                    //"file://#L0"
                    if (_iterator_221781_7 < (stdgo._internal.internal.cpu.Cpu__options._options.length)) {
                        _gotoNext = 221795i64;
                    } else {
                        _gotoNext = 221985i64;
                    };
                } else if (__value__ == (221985i64)) {
                    _gotoNext = -1i64;
                };
            };
        };
    }
