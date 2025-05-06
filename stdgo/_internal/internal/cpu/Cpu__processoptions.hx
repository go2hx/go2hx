package stdgo._internal.internal.cpu;
function _processOptions(_env:stdgo.GoString):Void {
        var _value_3:stdgo.GoString = ("" : stdgo.GoString);
        var _i_1:stdgo.GoInt = (0 : stdgo.GoInt);
        var _i_6:stdgo.GoInt = (0 : stdgo.GoInt);
        var _enable_4:Bool = false;
        var _field_0:stdgo.GoString = ("" : stdgo.GoString);
        var _fieldBreak = false;
        var _o_8:stdgo._internal.internal.cpu.Cpu_t_option.T_option = ({} : stdgo._internal.internal.cpu.Cpu_t_option.T_option);
        var _iterator_6966_7:stdgo.GoInt = (0 : stdgo.GoInt);
        var _i_5:stdgo.GoInt = (0 : stdgo.GoInt);
        var _key_2:stdgo.GoString = ("" : stdgo.GoString);
        var _gotoNext = 0i64;
        _gotoNext == ((0i64 : stdgo.GoInt));
        //"file://#L0"
        while (_gotoNext != ((-1i64 : stdgo.GoInt))) {
            //"file://#L0"
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i64)) {
                    _gotoNext = 5991i64;
                } else if (__value__ == (5991i64)) {
                    0i64;
                    _fieldBreak = false;
                    _gotoNext = 5999i64;
                } else if (__value__ == (5999i64)) {
                    //"file://#L0"
                    if (!_fieldBreak && (_env != (stdgo.Go.str() : stdgo.GoString))) {
                        _gotoNext = 6013i64;
                    } else {
                        _gotoNext = 6954i64;
                    };
                } else if (__value__ == (6013i64)) {
                    _field_0 = (stdgo.Go.str() : stdgo.GoString)?.__copy__();
                    _i_1 = stdgo._internal.internal.cpu.Cpu__indexbyte._indexByte(_env?.__copy__(), (44 : stdgo.GoUInt8));
                    //"file:///home/runner/.go/go1.21.3/src/internal/cpu/cpu.go#L154"
                    if ((_i_1 < (0 : stdgo.GoInt) : Bool)) {
                        _gotoNext = 6067i64;
                    } else {
                        _gotoNext = 6102i64;
                    };
                } else if (__value__ == (6067i64)) {
                    {
                        final __tmp__0 = _env?.__copy__();
                        final __tmp__1 = (stdgo.Go.str() : stdgo.GoString)?.__copy__();
                        _field_0 = @:binopAssign __tmp__0;
                        _env = @:binopAssign __tmp__1;
                    };
                    _gotoNext = 6145i64;
                } else if (__value__ == (6102i64)) {
                    _gotoNext = 6102i64;
                    {
                        final __tmp__0 = (_env.__slice__(0, _i_1) : stdgo.GoString)?.__copy__();
                        final __tmp__1 = (_env.__slice__((_i_1 + (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        _field_0 = @:binopAssign __tmp__0;
                        _env = @:binopAssign __tmp__1;
                    };
                    0i64;
                    _gotoNext = 6145i64;
                } else if (__value__ == (6145i64)) {
                    //"file:///home/runner/.go/go1.21.3/src/internal/cpu/cpu.go#L159"
                    if ((((_field_0.length) < (4 : stdgo.GoInt) : Bool) || ((_field_0.__slice__(0, (4 : stdgo.GoInt)) : stdgo.GoString) != ("cpu." : stdgo.GoString)) : Bool)) {
                        _gotoNext = 6186i64;
                    } else {
                        _gotoNext = 6206i64;
                    };
                } else if (__value__ == (6186i64)) {
                    0i64;
                    _gotoNext = 5999i64;
                } else if (__value__ == (6206i64)) {
                    _i_1 = stdgo._internal.internal.cpu.Cpu__indexbyte._indexByte(_field_0?.__copy__(), (61 : stdgo.GoUInt8));
                    //"file:///home/runner/.go/go1.21.3/src/internal/cpu/cpu.go#L163"
                    if ((_i_1 < (0 : stdgo.GoInt) : Bool)) {
                        _gotoNext = 6243i64;
                    } else {
                        _gotoNext = 6325i64;
                    };
                } else if (__value__ == (6243i64)) {
                    //"file:///home/runner/.go/go1.21.3/src/internal/cpu/cpu.go#L164"
                    stdgo.Go.print(("GODEBUG: no value specified for \"" : stdgo.GoString), _field_0, ("\"\n" : stdgo.GoString));
                    0i64;
                    _gotoNext = 5999i64;
                } else if (__value__ == (6325i64)) {
                    {
                        final __tmp__0 = (_field_0.__slice__((4 : stdgo.GoInt), _i_1) : stdgo.GoString)?.__copy__();
                        final __tmp__1 = (_field_0.__slice__((_i_1 + (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        _key_2 = @:binopAssign __tmp__0;
                        _value_3 = @:binopAssign __tmp__1;
                    };
                    _gotoNext = 6405i64;
                } else if (__value__ == (6405i64)) {
                    //"file:///home/runner/.go/go1.21.3/src/internal/cpu/cpu.go#L170"
                    {
                        final __value__ = _value_3;
                        if (__value__ == (("on" : stdgo.GoString))) {
                            _gotoNext = 6422i64;
                        } else if (__value__ == (("off" : stdgo.GoString))) {
                            _gotoNext = 6452i64;
                        } else {
                            _gotoNext = 6484i64;
                        };
                    };
                } else if (__value__ == (6422i64)) {
                    _enable_4 = true;
                    _gotoNext = 6606i64;
                } else if (__value__ == (6452i64)) {
                    _enable_4 = false;
                    _gotoNext = 6606i64;
                } else if (__value__ == (6484i64)) {
                    //"file:///home/runner/.go/go1.21.3/src/internal/cpu/cpu.go#L176"
                    stdgo.Go.print(("GODEBUG: value \"" : stdgo.GoString), _value_3, ("\" not supported for cpu option \"" : stdgo.GoString), _key_2, ("\"\n" : stdgo.GoString));
                    _gotoNext = 5999i64;
                } else if (__value__ == (6606i64)) {
                    //"file:///home/runner/.go/go1.21.3/src/internal/cpu/cpu.go#L180"
                    if (_key_2 == (("all" : stdgo.GoString))) {
                        _gotoNext = 6622i64;
                    } else {
                        _gotoNext = 6745i64;
                    };
                } else if (__value__ == (6622i64)) {
                    //"file:///home/runner/.go/go1.21.3/src/internal/cpu/cpu.go#L181"
                    if ((0i64 : stdgo.GoInt) < (stdgo._internal.internal.cpu.Cpu__options._options.length)) {
                        _gotoNext = 6717i64;
                    } else {
                        _gotoNext = 6723i64;
                    };
                } else if (__value__ == (6650i64)) {
                    stdgo._internal.internal.cpu.Cpu__options._options[(_i_5 : stdgo.GoInt)].specified = true;
                    stdgo._internal.internal.cpu.Cpu__options._options[(_i_5 : stdgo.GoInt)].enable = _enable_4;
                    //"file:///home/runner/.go/go1.21.3/src/internal/cpu/cpu.go#L181"
                    _i_5++;
                    _gotoNext = 6718i64;
                } else if (__value__ == (6717i64)) {
                    _i_5 = 0i64;
                    _gotoNext = 6718i64;
                } else if (__value__ == (6718i64)) {
                    //"file://#L0"
                    if (_i_5 < (stdgo._internal.internal.cpu.Cpu__options._options.length)) {
                        _gotoNext = 6650i64;
                    } else {
                        _gotoNext = 6723i64;
                    };
                } else if (__value__ == (6723i64)) {
                    _gotoNext = 5999i64;
                } else if (__value__ == (6745i64)) {
                    //"file:///home/runner/.go/go1.21.3/src/internal/cpu/cpu.go#L188"
                    if ((0i64 : stdgo.GoInt) < (stdgo._internal.internal.cpu.Cpu__options._options.length)) {
                        _gotoNext = 6889i64;
                    } else {
                        _gotoNext = 6895i64;
                    };
                } else if (__value__ == (6749i64)) {
                    //"file:///home/runner/.go/go1.21.3/src/internal/cpu/cpu.go#L188"
                    _i_6++;
                    _gotoNext = 6890i64;
                } else if (__value__ == (6768i64)) {
                    //"file:///home/runner/.go/go1.21.3/src/internal/cpu/cpu.go#L189"
                    if (stdgo._internal.internal.cpu.Cpu__options._options[(_i_6 : stdgo.GoInt)].name == (_key_2)) {
                        _gotoNext = 6799i64;
                    } else {
                        _gotoNext = 6749i64;
                    };
                } else if (__value__ == (6799i64)) {
                    stdgo._internal.internal.cpu.Cpu__options._options[(_i_6 : stdgo.GoInt)].specified = true;
                    stdgo._internal.internal.cpu.Cpu__options._options[(_i_6 : stdgo.GoInt)].enable = _enable_4;
                    _gotoNext = 5999i64;
                } else if (__value__ == (6889i64)) {
                    _i_6 = 0i64;
                    _gotoNext = 6890i64;
                } else if (__value__ == (6890i64)) {
                    //"file://#L0"
                    if (_i_6 < (stdgo._internal.internal.cpu.Cpu__options._options.length)) {
                        _gotoNext = 6768i64;
                    } else {
                        _gotoNext = 6895i64;
                    };
                } else if (__value__ == (6895i64)) {
                    //"file:///home/runner/.go/go1.21.3/src/internal/cpu/cpu.go#L196"
                    stdgo.Go.print(("GODEBUG: unknown cpu feature \"" : stdgo.GoString), _key_2, ("\"\n" : stdgo.GoString));
                    _gotoNext = 5999i64;
                } else if (__value__ == (6954i64)) {
                    //"file:///home/runner/.go/go1.21.3/src/internal/cpu/cpu.go#L199"
                    if ((0i64 : stdgo.GoInt) < (stdgo._internal.internal.cpu.Cpu__options._options.length)) {
                        _gotoNext = 7167i64;
                    } else {
                        _gotoNext = 7170i64;
                    };
                } else if (__value__ == (6980i64)) {
                    _o_8 = stdgo._internal.internal.cpu.Cpu__options._options[(_iterator_6966_7 : stdgo.GoInt)];
                    //"file:///home/runner/.go/go1.21.3/src/internal/cpu/cpu.go#L200"
                    if (!_o_8.specified) {
                        _gotoNext = 7000i64;
                    } else {
                        _gotoNext = 7021i64;
                    };
                } else if (__value__ == (7000i64)) {
                    //"file:///home/runner/.go/go1.21.3/src/internal/cpu/cpu.go#L199"
                    _iterator_6966_7++;
                    _gotoNext = 7168i64;
                } else if (__value__ == (7021i64)) {
                    //"file:///home/runner/.go/go1.21.3/src/internal/cpu/cpu.go#L204"
                    if ((_o_8.enable && !_o_8.feature.value : Bool)) {
                        _gotoNext = 7048i64;
                    } else {
                        _gotoNext = 7145i64;
                    };
                } else if (__value__ == (7048i64)) {
                    //"file:///home/runner/.go/go1.21.3/src/internal/cpu/cpu.go#L205"
                    stdgo.Go.print(("GODEBUG: can not enable \"" : stdgo.GoString), _o_8.name, ("\", missing CPU support\n" : stdgo.GoString));
                    //"file:///home/runner/.go/go1.21.3/src/internal/cpu/cpu.go#L199"
                    _iterator_6966_7++;
                    _gotoNext = 7168i64;
                } else if (__value__ == (7145i64)) {
                    _o_8.feature.value = _o_8.enable;
                    //"file:///home/runner/.go/go1.21.3/src/internal/cpu/cpu.go#L199"
                    _iterator_6966_7++;
                    _gotoNext = 7168i64;
                } else if (__value__ == (7167i64)) {
                    {
                        final __tmp__0 = 0i64;
                        final __tmp__1 = stdgo._internal.internal.cpu.Cpu__options._options[(0i64 : stdgo.GoInt)];
                        _iterator_6966_7 = @:binopAssign __tmp__0;
                        _o_8 = @:binopAssign __tmp__1;
                    };
                    _gotoNext = 7168i64;
                } else if (__value__ == (7168i64)) {
                    //"file://#L0"
                    if (_iterator_6966_7 < (stdgo._internal.internal.cpu.Cpu__options._options.length)) {
                        _gotoNext = 6980i64;
                    } else {
                        _gotoNext = 7170i64;
                    };
                } else if (__value__ == (7170i64)) {
                    _gotoNext = -1i64;
                };
            };
        };
    }
