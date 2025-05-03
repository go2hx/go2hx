package stdgo._internal.internal.cpu;
function _processOptions(_env:stdgo.GoString):Void {
        var _i_6:stdgo.GoInt = (0 : stdgo.GoInt);
        var _i_5:stdgo.GoInt = (0 : stdgo.GoInt);
        var _fieldBreak = false;
        var _o_8:stdgo._internal.internal.cpu.Cpu_t_option.T_option = ({} : stdgo._internal.internal.cpu.Cpu_t_option.T_option);
        var _iterator_7123_7:stdgo.GoInt = (0 : stdgo.GoInt);
        var _enable_4:Bool = false;
        var _value_3:stdgo.GoString = ("" : stdgo.GoString);
        var _key_2:stdgo.GoString = ("" : stdgo.GoString);
        var _i_1:stdgo.GoInt = (0 : stdgo.GoInt);
        var _field_0:stdgo.GoString = ("" : stdgo.GoString);
        var _gotoNext = 0i64;
        _gotoNext == ((0i64 : stdgo.GoInt));
        //"file://#L0"
        while (_gotoNext != ((-1i64 : stdgo.GoInt))) {
            //"file://#L0"
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i64)) {
                    _gotoNext = 6148i64;
                } else if (__value__ == (6148i64)) {
                    0i64;
                    _fieldBreak = false;
                    _gotoNext = 6156i64;
                } else if (__value__ == (6156i64)) {
                    //"file://#L0"
                    if (!_fieldBreak && (_env != (stdgo.Go.str() : stdgo.GoString))) {
                        _gotoNext = 6170i64;
                    } else {
                        _gotoNext = 7111i64;
                    };
                } else if (__value__ == (6170i64)) {
                    _field_0 = (stdgo.Go.str() : stdgo.GoString)?.__copy__();
                    _i_1 = stdgo._internal.internal.cpu.Cpu__indexbyte._indexByte(_env?.__copy__(), (44 : stdgo.GoUInt8));
                    //"file:///home/runner/.go/go1.21.3/src/internal/cpu/cpu.go#L154"
                    if ((_i_1 < (0 : stdgo.GoInt) : Bool)) {
                        _gotoNext = 6224i64;
                    } else {
                        _gotoNext = 6259i64;
                    };
                } else if (__value__ == (6224i64)) {
                    {
                        final __tmp__0 = _env?.__copy__();
                        final __tmp__1 = (stdgo.Go.str() : stdgo.GoString)?.__copy__();
                        _field_0 = @:binopAssign __tmp__0;
                        _env = @:binopAssign __tmp__1;
                    };
                    _gotoNext = 6302i64;
                } else if (__value__ == (6259i64)) {
                    _gotoNext = 6259i64;
                    {
                        final __tmp__0 = (_env.__slice__(0, _i_1) : stdgo.GoString)?.__copy__();
                        final __tmp__1 = (_env.__slice__((_i_1 + (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        _field_0 = @:binopAssign __tmp__0;
                        _env = @:binopAssign __tmp__1;
                    };
                    0i64;
                    _gotoNext = 6302i64;
                } else if (__value__ == (6302i64)) {
                    //"file:///home/runner/.go/go1.21.3/src/internal/cpu/cpu.go#L159"
                    if ((((_field_0.length) < (4 : stdgo.GoInt) : Bool) || ((_field_0.__slice__(0, (4 : stdgo.GoInt)) : stdgo.GoString) != ("cpu." : stdgo.GoString)) : Bool)) {
                        _gotoNext = 6343i64;
                    } else {
                        _gotoNext = 6363i64;
                    };
                } else if (__value__ == (6343i64)) {
                    0i64;
                    _gotoNext = 6156i64;
                } else if (__value__ == (6363i64)) {
                    _i_1 = stdgo._internal.internal.cpu.Cpu__indexbyte._indexByte(_field_0?.__copy__(), (61 : stdgo.GoUInt8));
                    //"file:///home/runner/.go/go1.21.3/src/internal/cpu/cpu.go#L163"
                    if ((_i_1 < (0 : stdgo.GoInt) : Bool)) {
                        _gotoNext = 6400i64;
                    } else {
                        _gotoNext = 6482i64;
                    };
                } else if (__value__ == (6400i64)) {
                    //"file:///home/runner/.go/go1.21.3/src/internal/cpu/cpu.go#L164"
                    stdgo.Go.print(("GODEBUG: no value specified for \"" : stdgo.GoString), _field_0, ("\"\n" : stdgo.GoString));
                    0i64;
                    _gotoNext = 6156i64;
                } else if (__value__ == (6482i64)) {
                    {
                        final __tmp__0 = (_field_0.__slice__((4 : stdgo.GoInt), _i_1) : stdgo.GoString)?.__copy__();
                        final __tmp__1 = (_field_0.__slice__((_i_1 + (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        _key_2 = @:binopAssign __tmp__0;
                        _value_3 = @:binopAssign __tmp__1;
                    };
                    _gotoNext = 6562i64;
                } else if (__value__ == (6562i64)) {
                    //"file:///home/runner/.go/go1.21.3/src/internal/cpu/cpu.go#L170"
                    {
                        final __value__ = _value_3;
                        if (__value__ == (("on" : stdgo.GoString))) {
                            _gotoNext = 6579i64;
                        } else if (__value__ == (("off" : stdgo.GoString))) {
                            _gotoNext = 6609i64;
                        } else {
                            _gotoNext = 6641i64;
                        };
                    };
                } else if (__value__ == (6579i64)) {
                    _enable_4 = true;
                    _gotoNext = 6763i64;
                } else if (__value__ == (6609i64)) {
                    _enable_4 = false;
                    _gotoNext = 6763i64;
                } else if (__value__ == (6641i64)) {
                    //"file:///home/runner/.go/go1.21.3/src/internal/cpu/cpu.go#L176"
                    stdgo.Go.print(("GODEBUG: value \"" : stdgo.GoString), _value_3, ("\" not supported for cpu option \"" : stdgo.GoString), _key_2, ("\"\n" : stdgo.GoString));
                    _gotoNext = 6156i64;
                } else if (__value__ == (6763i64)) {
                    //"file:///home/runner/.go/go1.21.3/src/internal/cpu/cpu.go#L180"
                    if (_key_2 == (("all" : stdgo.GoString))) {
                        _gotoNext = 6779i64;
                    } else {
                        _gotoNext = 6902i64;
                    };
                } else if (__value__ == (6779i64)) {
                    //"file:///home/runner/.go/go1.21.3/src/internal/cpu/cpu.go#L181"
                    if ((0i64 : stdgo.GoInt) < (stdgo._internal.internal.cpu.Cpu__options._options.length)) {
                        _gotoNext = 6874i64;
                    } else {
                        _gotoNext = 6880i64;
                    };
                } else if (__value__ == (6807i64)) {
                    stdgo._internal.internal.cpu.Cpu__options._options[(_i_5 : stdgo.GoInt)].specified = true;
                    stdgo._internal.internal.cpu.Cpu__options._options[(_i_5 : stdgo.GoInt)].enable = _enable_4;
                    //"file:///home/runner/.go/go1.21.3/src/internal/cpu/cpu.go#L181"
                    _i_5++;
                    _gotoNext = 6875i64;
                } else if (__value__ == (6874i64)) {
                    _i_5 = 0i64;
                    _gotoNext = 6875i64;
                } else if (__value__ == (6875i64)) {
                    //"file://#L0"
                    if (_i_5 < (stdgo._internal.internal.cpu.Cpu__options._options.length)) {
                        _gotoNext = 6807i64;
                    } else {
                        _gotoNext = 6880i64;
                    };
                } else if (__value__ == (6880i64)) {
                    _gotoNext = 6156i64;
                } else if (__value__ == (6902i64)) {
                    //"file:///home/runner/.go/go1.21.3/src/internal/cpu/cpu.go#L188"
                    if ((0i64 : stdgo.GoInt) < (stdgo._internal.internal.cpu.Cpu__options._options.length)) {
                        _gotoNext = 7046i64;
                    } else {
                        _gotoNext = 7052i64;
                    };
                } else if (__value__ == (6906i64)) {
                    //"file:///home/runner/.go/go1.21.3/src/internal/cpu/cpu.go#L188"
                    _i_6++;
                    _gotoNext = 7047i64;
                } else if (__value__ == (6925i64)) {
                    //"file:///home/runner/.go/go1.21.3/src/internal/cpu/cpu.go#L189"
                    if (stdgo._internal.internal.cpu.Cpu__options._options[(_i_6 : stdgo.GoInt)].name == (_key_2)) {
                        _gotoNext = 6956i64;
                    } else {
                        _gotoNext = 6906i64;
                    };
                } else if (__value__ == (6956i64)) {
                    stdgo._internal.internal.cpu.Cpu__options._options[(_i_6 : stdgo.GoInt)].specified = true;
                    stdgo._internal.internal.cpu.Cpu__options._options[(_i_6 : stdgo.GoInt)].enable = _enable_4;
                    _gotoNext = 6156i64;
                } else if (__value__ == (7046i64)) {
                    _i_6 = 0i64;
                    _gotoNext = 7047i64;
                } else if (__value__ == (7047i64)) {
                    //"file://#L0"
                    if (_i_6 < (stdgo._internal.internal.cpu.Cpu__options._options.length)) {
                        _gotoNext = 6925i64;
                    } else {
                        _gotoNext = 7052i64;
                    };
                } else if (__value__ == (7052i64)) {
                    //"file:///home/runner/.go/go1.21.3/src/internal/cpu/cpu.go#L196"
                    stdgo.Go.print(("GODEBUG: unknown cpu feature \"" : stdgo.GoString), _key_2, ("\"\n" : stdgo.GoString));
                    _gotoNext = 6156i64;
                } else if (__value__ == (7111i64)) {
                    //"file:///home/runner/.go/go1.21.3/src/internal/cpu/cpu.go#L199"
                    if ((0i64 : stdgo.GoInt) < (stdgo._internal.internal.cpu.Cpu__options._options.length)) {
                        _gotoNext = 7324i64;
                    } else {
                        _gotoNext = 7327i64;
                    };
                } else if (__value__ == (7137i64)) {
                    _o_8 = stdgo._internal.internal.cpu.Cpu__options._options[(_iterator_7123_7 : stdgo.GoInt)];
                    //"file:///home/runner/.go/go1.21.3/src/internal/cpu/cpu.go#L200"
                    if (!_o_8.specified) {
                        _gotoNext = 7157i64;
                    } else {
                        _gotoNext = 7178i64;
                    };
                } else if (__value__ == (7157i64)) {
                    //"file:///home/runner/.go/go1.21.3/src/internal/cpu/cpu.go#L199"
                    _iterator_7123_7++;
                    _gotoNext = 7325i64;
                } else if (__value__ == (7178i64)) {
                    //"file:///home/runner/.go/go1.21.3/src/internal/cpu/cpu.go#L204"
                    if ((_o_8.enable && !_o_8.feature.value : Bool)) {
                        _gotoNext = 7205i64;
                    } else {
                        _gotoNext = 7302i64;
                    };
                } else if (__value__ == (7205i64)) {
                    //"file:///home/runner/.go/go1.21.3/src/internal/cpu/cpu.go#L205"
                    stdgo.Go.print(("GODEBUG: can not enable \"" : stdgo.GoString), _o_8.name, ("\", missing CPU support\n" : stdgo.GoString));
                    //"file:///home/runner/.go/go1.21.3/src/internal/cpu/cpu.go#L199"
                    _iterator_7123_7++;
                    _gotoNext = 7325i64;
                } else if (__value__ == (7302i64)) {
                    _o_8.feature.value = _o_8.enable;
                    //"file:///home/runner/.go/go1.21.3/src/internal/cpu/cpu.go#L199"
                    _iterator_7123_7++;
                    _gotoNext = 7325i64;
                } else if (__value__ == (7324i64)) {
                    {
                        final __tmp__0 = 0i64;
                        final __tmp__1 = stdgo._internal.internal.cpu.Cpu__options._options[(0i64 : stdgo.GoInt)];
                        _iterator_7123_7 = @:binopAssign __tmp__0;
                        _o_8 = @:binopAssign __tmp__1;
                    };
                    _gotoNext = 7325i64;
                } else if (__value__ == (7325i64)) {
                    //"file://#L0"
                    if (_iterator_7123_7 < (stdgo._internal.internal.cpu.Cpu__options._options.length)) {
                        _gotoNext = 7137i64;
                    } else {
                        _gotoNext = 7327i64;
                    };
                } else if (__value__ == (7327i64)) {
                    _gotoNext = -1i64;
                };
            };
        };
    }
