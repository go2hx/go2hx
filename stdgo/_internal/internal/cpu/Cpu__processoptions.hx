package stdgo._internal.internal.cpu;
function _processOptions(_env:stdgo.GoString):Void {
        var _fieldBreak = false;
        var _iterator_262147_7:stdgo.GoInt = (0 : stdgo.GoInt);
        var _i_5:stdgo.GoInt = (0 : stdgo.GoInt);
        var _enable_4:Bool = false;
        var _value_3:stdgo.GoString = ("" : stdgo.GoString);
        var _i_1:stdgo.GoInt = (0 : stdgo.GoInt);
        var _field_0:stdgo.GoString = ("" : stdgo.GoString);
        var _o_8:stdgo._internal.internal.cpu.Cpu_t_option.T_option = ({} : stdgo._internal.internal.cpu.Cpu_t_option.T_option);
        var _i_6:stdgo.GoInt = (0 : stdgo.GoInt);
        var _key_2:stdgo.GoString = ("" : stdgo.GoString);
        var _gotoNext = 0i64;
        _gotoNext == ((0i64 : stdgo.GoInt));
        //"file://#L0"
        while (_gotoNext != ((-1i64 : stdgo.GoInt))) {
            //"file://#L0"
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i64)) {
                    _gotoNext = 261172i64;
                } else if (__value__ == (261172i64)) {
                    0i64;
                    _fieldBreak = false;
                    _gotoNext = 261180i64;
                } else if (__value__ == (261180i64)) {
                    //"file://#L0"
                    if (!_fieldBreak && (_env != (stdgo.Go.str() : stdgo.GoString))) {
                        _gotoNext = 261194i64;
                    } else {
                        _gotoNext = 262135i64;
                    };
                } else if (__value__ == (261194i64)) {
                    _field_0 = (stdgo.Go.str() : stdgo.GoString)?.__copy__();
                    _i_1 = stdgo._internal.internal.cpu.Cpu__indexbyte._indexByte(_env?.__copy__(), (44 : stdgo.GoUInt8));
                    //"file:///home/runner/.go/go1.21.3/src/internal/cpu/cpu.go#L154"
                    if ((_i_1 < (0 : stdgo.GoInt) : Bool)) {
                        _gotoNext = 261248i64;
                    } else {
                        _gotoNext = 261283i64;
                    };
                } else if (__value__ == (261248i64)) {
                    {
                        final __tmp__0 = _env?.__copy__();
                        final __tmp__1 = (stdgo.Go.str() : stdgo.GoString)?.__copy__();
                        _field_0 = @:binopAssign __tmp__0;
                        _env = @:binopAssign __tmp__1;
                    };
                    _gotoNext = 261326i64;
                } else if (__value__ == (261283i64)) {
                    _gotoNext = 261283i64;
                    {
                        final __tmp__0 = (_env.__slice__(0, _i_1) : stdgo.GoString)?.__copy__();
                        final __tmp__1 = (_env.__slice__((_i_1 + (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        _field_0 = @:binopAssign __tmp__0;
                        _env = @:binopAssign __tmp__1;
                    };
                    0i64;
                    _gotoNext = 261326i64;
                } else if (__value__ == (261326i64)) {
                    //"file:///home/runner/.go/go1.21.3/src/internal/cpu/cpu.go#L159"
                    if ((((_field_0.length) < (4 : stdgo.GoInt) : Bool) || ((_field_0.__slice__(0, (4 : stdgo.GoInt)) : stdgo.GoString) != ("cpu." : stdgo.GoString)) : Bool)) {
                        _gotoNext = 261367i64;
                    } else {
                        _gotoNext = 261387i64;
                    };
                } else if (__value__ == (261367i64)) {
                    0i64;
                    _gotoNext = 261180i64;
                } else if (__value__ == (261387i64)) {
                    _i_1 = stdgo._internal.internal.cpu.Cpu__indexbyte._indexByte(_field_0?.__copy__(), (61 : stdgo.GoUInt8));
                    //"file:///home/runner/.go/go1.21.3/src/internal/cpu/cpu.go#L163"
                    if ((_i_1 < (0 : stdgo.GoInt) : Bool)) {
                        _gotoNext = 261424i64;
                    } else {
                        _gotoNext = 261506i64;
                    };
                } else if (__value__ == (261424i64)) {
                    //"file:///home/runner/.go/go1.21.3/src/internal/cpu/cpu.go#L164"
                    stdgo.Go.print(("GODEBUG: no value specified for \"" : stdgo.GoString), _field_0, ("\"\n" : stdgo.GoString));
                    0i64;
                    _gotoNext = 261180i64;
                } else if (__value__ == (261506i64)) {
                    {
                        final __tmp__0 = (_field_0.__slice__((4 : stdgo.GoInt), _i_1) : stdgo.GoString)?.__copy__();
                        final __tmp__1 = (_field_0.__slice__((_i_1 + (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        _key_2 = @:binopAssign __tmp__0;
                        _value_3 = @:binopAssign __tmp__1;
                    };
                    _gotoNext = 261586i64;
                } else if (__value__ == (261586i64)) {
                    //"file:///home/runner/.go/go1.21.3/src/internal/cpu/cpu.go#L170"
                    {
                        final __value__ = _value_3;
                        if (__value__ == (("on" : stdgo.GoString))) {
                            _gotoNext = 261603i64;
                        } else if (__value__ == (("off" : stdgo.GoString))) {
                            _gotoNext = 261633i64;
                        } else {
                            _gotoNext = 261665i64;
                        };
                    };
                } else if (__value__ == (261603i64)) {
                    _enable_4 = true;
                    _gotoNext = 261787i64;
                } else if (__value__ == (261633i64)) {
                    _enable_4 = false;
                    _gotoNext = 261787i64;
                } else if (__value__ == (261665i64)) {
                    //"file:///home/runner/.go/go1.21.3/src/internal/cpu/cpu.go#L176"
                    stdgo.Go.print(("GODEBUG: value \"" : stdgo.GoString), _value_3, ("\" not supported for cpu option \"" : stdgo.GoString), _key_2, ("\"\n" : stdgo.GoString));
                    _gotoNext = 261180i64;
                } else if (__value__ == (261787i64)) {
                    //"file:///home/runner/.go/go1.21.3/src/internal/cpu/cpu.go#L180"
                    if (_key_2 == (("all" : stdgo.GoString))) {
                        _gotoNext = 261803i64;
                    } else {
                        _gotoNext = 261926i64;
                    };
                } else if (__value__ == (261803i64)) {
                    //"file:///home/runner/.go/go1.21.3/src/internal/cpu/cpu.go#L181"
                    if ((0i64 : stdgo.GoInt) < (stdgo._internal.internal.cpu.Cpu__options._options.length)) {
                        _gotoNext = 261898i64;
                    } else {
                        _gotoNext = 261904i64;
                    };
                } else if (__value__ == (261831i64)) {
                    stdgo._internal.internal.cpu.Cpu__options._options[(_i_5 : stdgo.GoInt)].specified = true;
                    stdgo._internal.internal.cpu.Cpu__options._options[(_i_5 : stdgo.GoInt)].enable = _enable_4;
                    //"file:///home/runner/.go/go1.21.3/src/internal/cpu/cpu.go#L181"
                    _i_5++;
                    _gotoNext = 261899i64;
                } else if (__value__ == (261898i64)) {
                    _i_5 = 0i64;
                    _gotoNext = 261899i64;
                } else if (__value__ == (261899i64)) {
                    //"file://#L0"
                    if (_i_5 < (stdgo._internal.internal.cpu.Cpu__options._options.length)) {
                        _gotoNext = 261831i64;
                    } else {
                        _gotoNext = 261904i64;
                    };
                } else if (__value__ == (261904i64)) {
                    _gotoNext = 261180i64;
                } else if (__value__ == (261926i64)) {
                    //"file:///home/runner/.go/go1.21.3/src/internal/cpu/cpu.go#L188"
                    if ((0i64 : stdgo.GoInt) < (stdgo._internal.internal.cpu.Cpu__options._options.length)) {
                        _gotoNext = 262070i64;
                    } else {
                        _gotoNext = 262076i64;
                    };
                } else if (__value__ == (261930i64)) {
                    //"file:///home/runner/.go/go1.21.3/src/internal/cpu/cpu.go#L188"
                    _i_6++;
                    _gotoNext = 262071i64;
                } else if (__value__ == (261949i64)) {
                    //"file:///home/runner/.go/go1.21.3/src/internal/cpu/cpu.go#L189"
                    if (stdgo._internal.internal.cpu.Cpu__options._options[(_i_6 : stdgo.GoInt)].name == (_key_2)) {
                        _gotoNext = 261980i64;
                    } else {
                        _gotoNext = 261930i64;
                    };
                } else if (__value__ == (261980i64)) {
                    stdgo._internal.internal.cpu.Cpu__options._options[(_i_6 : stdgo.GoInt)].specified = true;
                    stdgo._internal.internal.cpu.Cpu__options._options[(_i_6 : stdgo.GoInt)].enable = _enable_4;
                    _gotoNext = 261180i64;
                } else if (__value__ == (262070i64)) {
                    _i_6 = 0i64;
                    _gotoNext = 262071i64;
                } else if (__value__ == (262071i64)) {
                    //"file://#L0"
                    if (_i_6 < (stdgo._internal.internal.cpu.Cpu__options._options.length)) {
                        _gotoNext = 261949i64;
                    } else {
                        _gotoNext = 262076i64;
                    };
                } else if (__value__ == (262076i64)) {
                    //"file:///home/runner/.go/go1.21.3/src/internal/cpu/cpu.go#L196"
                    stdgo.Go.print(("GODEBUG: unknown cpu feature \"" : stdgo.GoString), _key_2, ("\"\n" : stdgo.GoString));
                    _gotoNext = 261180i64;
                } else if (__value__ == (262135i64)) {
                    //"file:///home/runner/.go/go1.21.3/src/internal/cpu/cpu.go#L199"
                    if ((0i64 : stdgo.GoInt) < (stdgo._internal.internal.cpu.Cpu__options._options.length)) {
                        _gotoNext = 262348i64;
                    } else {
                        _gotoNext = 262351i64;
                    };
                } else if (__value__ == (262161i64)) {
                    _o_8 = stdgo._internal.internal.cpu.Cpu__options._options[(_iterator_262147_7 : stdgo.GoInt)];
                    //"file:///home/runner/.go/go1.21.3/src/internal/cpu/cpu.go#L200"
                    if (!_o_8.specified) {
                        _gotoNext = 262181i64;
                    } else {
                        _gotoNext = 262202i64;
                    };
                } else if (__value__ == (262181i64)) {
                    //"file:///home/runner/.go/go1.21.3/src/internal/cpu/cpu.go#L199"
                    _iterator_262147_7++;
                    _gotoNext = 262349i64;
                } else if (__value__ == (262202i64)) {
                    //"file:///home/runner/.go/go1.21.3/src/internal/cpu/cpu.go#L204"
                    if ((_o_8.enable && !_o_8.feature.value : Bool)) {
                        _gotoNext = 262229i64;
                    } else {
                        _gotoNext = 262326i64;
                    };
                } else if (__value__ == (262229i64)) {
                    //"file:///home/runner/.go/go1.21.3/src/internal/cpu/cpu.go#L205"
                    stdgo.Go.print(("GODEBUG: can not enable \"" : stdgo.GoString), _o_8.name, ("\", missing CPU support\n" : stdgo.GoString));
                    //"file:///home/runner/.go/go1.21.3/src/internal/cpu/cpu.go#L199"
                    _iterator_262147_7++;
                    _gotoNext = 262349i64;
                } else if (__value__ == (262326i64)) {
                    _o_8.feature.value = _o_8.enable;
                    //"file:///home/runner/.go/go1.21.3/src/internal/cpu/cpu.go#L199"
                    _iterator_262147_7++;
                    _gotoNext = 262349i64;
                } else if (__value__ == (262348i64)) {
                    {
                        final __tmp__0 = 0i64;
                        final __tmp__1 = stdgo._internal.internal.cpu.Cpu__options._options[(0i64 : stdgo.GoInt)];
                        _iterator_262147_7 = @:binopAssign __tmp__0;
                        _o_8 = @:binopAssign __tmp__1;
                    };
                    _gotoNext = 262349i64;
                } else if (__value__ == (262349i64)) {
                    //"file://#L0"
                    if (_iterator_262147_7 < (stdgo._internal.internal.cpu.Cpu__options._options.length)) {
                        _gotoNext = 262161i64;
                    } else {
                        _gotoNext = 262351i64;
                    };
                } else if (__value__ == (262351i64)) {
                    _gotoNext = -1i64;
                };
            };
        };
    }
