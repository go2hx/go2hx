package stdgo._internal.internal.cpu;
function _processOptions(_env:stdgo.GoString):Void {
        var _i_5:stdgo.GoInt = (0 : stdgo.GoInt);
        var _enable_4:Bool = false;
        var _value_3:stdgo.GoString = ("" : stdgo.GoString);
        var _field_0:stdgo.GoString = ("" : stdgo.GoString);
        var _o_8:stdgo._internal.internal.cpu.Cpu_t_option.T_option = ({} : stdgo._internal.internal.cpu.Cpu_t_option.T_option);
        var _iterator_273022_7:stdgo.GoInt = (0 : stdgo.GoInt);
        var _i_6:stdgo.GoInt = (0 : stdgo.GoInt);
        var _key_2:stdgo.GoString = ("" : stdgo.GoString);
        var _i_1:stdgo.GoInt = (0 : stdgo.GoInt);
        var _fieldBreak = false;
        var _gotoNext = 0i64;
        _gotoNext == ((0i64 : stdgo.GoInt));
        //"file://#L0"
        while (_gotoNext != ((-1i64 : stdgo.GoInt))) {
            //"file://#L0"
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i64)) {
                    _gotoNext = 272047i64;
                } else if (__value__ == (272047i64)) {
                    0i64;
                    _fieldBreak = false;
                    _gotoNext = 272055i64;
                } else if (__value__ == (272055i64)) {
                    //"file://#L0"
                    if (!_fieldBreak && (_env != (stdgo.Go.str() : stdgo.GoString))) {
                        _gotoNext = 272069i64;
                    } else {
                        _gotoNext = 273010i64;
                    };
                } else if (__value__ == (272069i64)) {
                    _field_0 = (stdgo.Go.str() : stdgo.GoString)?.__copy__();
                    _i_1 = stdgo._internal.internal.cpu.Cpu__indexbyte._indexByte(_env?.__copy__(), (44 : stdgo.GoUInt8));
                    //"file:///home/runner/.go/go1.21.3/src/internal/cpu/cpu.go#L154"
                    if ((_i_1 < (0 : stdgo.GoInt) : Bool)) {
                        _gotoNext = 272123i64;
                    } else {
                        _gotoNext = 272158i64;
                    };
                } else if (__value__ == (272123i64)) {
                    {
                        final __tmp__0 = _env?.__copy__();
                        final __tmp__1 = (stdgo.Go.str() : stdgo.GoString)?.__copy__();
                        _field_0 = @:binopAssign __tmp__0;
                        _env = @:binopAssign __tmp__1;
                    };
                    _gotoNext = 272201i64;
                } else if (__value__ == (272158i64)) {
                    _gotoNext = 272158i64;
                    {
                        final __tmp__0 = (_env.__slice__(0, _i_1) : stdgo.GoString)?.__copy__();
                        final __tmp__1 = (_env.__slice__((_i_1 + (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        _field_0 = @:binopAssign __tmp__0;
                        _env = @:binopAssign __tmp__1;
                    };
                    0i64;
                    _gotoNext = 272201i64;
                } else if (__value__ == (272201i64)) {
                    //"file:///home/runner/.go/go1.21.3/src/internal/cpu/cpu.go#L159"
                    if ((((_field_0.length) < (4 : stdgo.GoInt) : Bool) || ((_field_0.__slice__(0, (4 : stdgo.GoInt)) : stdgo.GoString) != ("cpu." : stdgo.GoString)) : Bool)) {
                        _gotoNext = 272242i64;
                    } else {
                        _gotoNext = 272262i64;
                    };
                } else if (__value__ == (272242i64)) {
                    0i64;
                    _gotoNext = 272055i64;
                } else if (__value__ == (272262i64)) {
                    _i_1 = stdgo._internal.internal.cpu.Cpu__indexbyte._indexByte(_field_0?.__copy__(), (61 : stdgo.GoUInt8));
                    //"file:///home/runner/.go/go1.21.3/src/internal/cpu/cpu.go#L163"
                    if ((_i_1 < (0 : stdgo.GoInt) : Bool)) {
                        _gotoNext = 272299i64;
                    } else {
                        _gotoNext = 272381i64;
                    };
                } else if (__value__ == (272299i64)) {
                    //"file:///home/runner/.go/go1.21.3/src/internal/cpu/cpu.go#L164"
                    stdgo.Go.print(("GODEBUG: no value specified for \"" : stdgo.GoString), _field_0, ("\"\n" : stdgo.GoString));
                    0i64;
                    _gotoNext = 272055i64;
                } else if (__value__ == (272381i64)) {
                    {
                        final __tmp__0 = (_field_0.__slice__((4 : stdgo.GoInt), _i_1) : stdgo.GoString)?.__copy__();
                        final __tmp__1 = (_field_0.__slice__((_i_1 + (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        _key_2 = @:binopAssign __tmp__0;
                        _value_3 = @:binopAssign __tmp__1;
                    };
                    _gotoNext = 272461i64;
                } else if (__value__ == (272461i64)) {
                    //"file:///home/runner/.go/go1.21.3/src/internal/cpu/cpu.go#L170"
                    {
                        final __value__ = _value_3;
                        if (__value__ == (("on" : stdgo.GoString))) {
                            _gotoNext = 272478i64;
                        } else if (__value__ == (("off" : stdgo.GoString))) {
                            _gotoNext = 272508i64;
                        } else {
                            _gotoNext = 272540i64;
                        };
                    };
                } else if (__value__ == (272478i64)) {
                    _enable_4 = true;
                    _gotoNext = 272662i64;
                } else if (__value__ == (272508i64)) {
                    _enable_4 = false;
                    _gotoNext = 272662i64;
                } else if (__value__ == (272540i64)) {
                    //"file:///home/runner/.go/go1.21.3/src/internal/cpu/cpu.go#L176"
                    stdgo.Go.print(("GODEBUG: value \"" : stdgo.GoString), _value_3, ("\" not supported for cpu option \"" : stdgo.GoString), _key_2, ("\"\n" : stdgo.GoString));
                    _gotoNext = 272055i64;
                } else if (__value__ == (272662i64)) {
                    //"file:///home/runner/.go/go1.21.3/src/internal/cpu/cpu.go#L180"
                    if (_key_2 == (("all" : stdgo.GoString))) {
                        _gotoNext = 272678i64;
                    } else {
                        _gotoNext = 272801i64;
                    };
                } else if (__value__ == (272678i64)) {
                    //"file:///home/runner/.go/go1.21.3/src/internal/cpu/cpu.go#L181"
                    if ((0i64 : stdgo.GoInt) < (stdgo._internal.internal.cpu.Cpu__options._options.length)) {
                        _gotoNext = 272773i64;
                    } else {
                        _gotoNext = 272779i64;
                    };
                } else if (__value__ == (272706i64)) {
                    stdgo._internal.internal.cpu.Cpu__options._options[(_i_5 : stdgo.GoInt)].specified = true;
                    stdgo._internal.internal.cpu.Cpu__options._options[(_i_5 : stdgo.GoInt)].enable = _enable_4;
                    //"file:///home/runner/.go/go1.21.3/src/internal/cpu/cpu.go#L181"
                    _i_5++;
                    _gotoNext = 272774i64;
                } else if (__value__ == (272773i64)) {
                    _i_5 = 0i64;
                    _gotoNext = 272774i64;
                } else if (__value__ == (272774i64)) {
                    //"file://#L0"
                    if (_i_5 < (stdgo._internal.internal.cpu.Cpu__options._options.length)) {
                        _gotoNext = 272706i64;
                    } else {
                        _gotoNext = 272779i64;
                    };
                } else if (__value__ == (272779i64)) {
                    _gotoNext = 272055i64;
                } else if (__value__ == (272801i64)) {
                    //"file:///home/runner/.go/go1.21.3/src/internal/cpu/cpu.go#L188"
                    if ((0i64 : stdgo.GoInt) < (stdgo._internal.internal.cpu.Cpu__options._options.length)) {
                        _gotoNext = 272945i64;
                    } else {
                        _gotoNext = 272951i64;
                    };
                } else if (__value__ == (272805i64)) {
                    //"file:///home/runner/.go/go1.21.3/src/internal/cpu/cpu.go#L188"
                    _i_6++;
                    _gotoNext = 272946i64;
                } else if (__value__ == (272824i64)) {
                    //"file:///home/runner/.go/go1.21.3/src/internal/cpu/cpu.go#L189"
                    if (stdgo._internal.internal.cpu.Cpu__options._options[(_i_6 : stdgo.GoInt)].name == (_key_2)) {
                        _gotoNext = 272855i64;
                    } else {
                        _gotoNext = 272805i64;
                    };
                } else if (__value__ == (272855i64)) {
                    stdgo._internal.internal.cpu.Cpu__options._options[(_i_6 : stdgo.GoInt)].specified = true;
                    stdgo._internal.internal.cpu.Cpu__options._options[(_i_6 : stdgo.GoInt)].enable = _enable_4;
                    _gotoNext = 272055i64;
                } else if (__value__ == (272945i64)) {
                    _i_6 = 0i64;
                    _gotoNext = 272946i64;
                } else if (__value__ == (272946i64)) {
                    //"file://#L0"
                    if (_i_6 < (stdgo._internal.internal.cpu.Cpu__options._options.length)) {
                        _gotoNext = 272824i64;
                    } else {
                        _gotoNext = 272951i64;
                    };
                } else if (__value__ == (272951i64)) {
                    //"file:///home/runner/.go/go1.21.3/src/internal/cpu/cpu.go#L196"
                    stdgo.Go.print(("GODEBUG: unknown cpu feature \"" : stdgo.GoString), _key_2, ("\"\n" : stdgo.GoString));
                    _gotoNext = 272055i64;
                } else if (__value__ == (273010i64)) {
                    //"file:///home/runner/.go/go1.21.3/src/internal/cpu/cpu.go#L199"
                    if ((0i64 : stdgo.GoInt) < (stdgo._internal.internal.cpu.Cpu__options._options.length)) {
                        _gotoNext = 273223i64;
                    } else {
                        _gotoNext = 273226i64;
                    };
                } else if (__value__ == (273036i64)) {
                    _o_8 = stdgo._internal.internal.cpu.Cpu__options._options[(_iterator_273022_7 : stdgo.GoInt)];
                    //"file:///home/runner/.go/go1.21.3/src/internal/cpu/cpu.go#L200"
                    if (!_o_8.specified) {
                        _gotoNext = 273056i64;
                    } else {
                        _gotoNext = 273077i64;
                    };
                } else if (__value__ == (273056i64)) {
                    //"file:///home/runner/.go/go1.21.3/src/internal/cpu/cpu.go#L199"
                    _iterator_273022_7++;
                    _gotoNext = 273224i64;
                } else if (__value__ == (273077i64)) {
                    //"file:///home/runner/.go/go1.21.3/src/internal/cpu/cpu.go#L204"
                    if ((_o_8.enable && !_o_8.feature.value : Bool)) {
                        _gotoNext = 273104i64;
                    } else {
                        _gotoNext = 273201i64;
                    };
                } else if (__value__ == (273104i64)) {
                    //"file:///home/runner/.go/go1.21.3/src/internal/cpu/cpu.go#L205"
                    stdgo.Go.print(("GODEBUG: can not enable \"" : stdgo.GoString), _o_8.name, ("\", missing CPU support\n" : stdgo.GoString));
                    //"file:///home/runner/.go/go1.21.3/src/internal/cpu/cpu.go#L199"
                    _iterator_273022_7++;
                    _gotoNext = 273224i64;
                } else if (__value__ == (273201i64)) {
                    _o_8.feature.value = _o_8.enable;
                    //"file:///home/runner/.go/go1.21.3/src/internal/cpu/cpu.go#L199"
                    _iterator_273022_7++;
                    _gotoNext = 273224i64;
                } else if (__value__ == (273223i64)) {
                    {
                        final __tmp__0 = 0i64;
                        final __tmp__1 = stdgo._internal.internal.cpu.Cpu__options._options[(0i64 : stdgo.GoInt)];
                        _iterator_273022_7 = @:binopAssign __tmp__0;
                        _o_8 = @:binopAssign __tmp__1;
                    };
                    _gotoNext = 273224i64;
                } else if (__value__ == (273224i64)) {
                    //"file://#L0"
                    if (_iterator_273022_7 < (stdgo._internal.internal.cpu.Cpu__options._options.length)) {
                        _gotoNext = 273036i64;
                    } else {
                        _gotoNext = 273226i64;
                    };
                } else if (__value__ == (273226i64)) {
                    _gotoNext = -1i64;
                };
            };
        };
    }
