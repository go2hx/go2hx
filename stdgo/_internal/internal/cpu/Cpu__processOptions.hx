package stdgo._internal.internal.cpu;
function _processOptions(_env:stdgo.GoString):Void {
        var _o_296211:stdgo._internal.internal.cpu.Cpu_T_option.T_option = ({} : stdgo._internal.internal.cpu.Cpu_T_option.T_option);
        var _i_295999:stdgo.GoInt = (0 : stdgo.GoInt);
        var _i_295881:stdgo.GoInt = (0 : stdgo.GoInt);
        var _enable_295641:Bool = false;
        var _i_295281:stdgo.GoInt = (0 : stdgo.GoInt);
        var _field_295267:stdgo.GoString = ("" : stdgo.GoString);
        var _i_296216_0:stdgo.GoInt = (0 : stdgo.GoInt);
        var _value_295580:stdgo.GoString = ("" : stdgo.GoString);
        var _key_295575:stdgo.GoString = ("" : stdgo.GoString);
        var _fieldBreak = false;
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    _gotoNext = 295241i32;
                } else if (__value__ == (295241i32)) {
                    var __blank__ = 0i32;
                    _fieldBreak = false;
                    _gotoNext = 295249i32;
                } else if (__value__ == (295249i32)) {
                    if (!_fieldBreak && (_env != stdgo.Go.str())) {
                        _gotoNext = 295263i32;
                    } else {
                        _gotoNext = 296204i32;
                    };
                } else if (__value__ == (295263i32)) {
                    _field_295267 = stdgo.Go.str()?.__copy__();
                    _i_295281 = stdgo._internal.internal.cpu.Cpu__indexByte._indexByte(_env?.__copy__(), (44 : stdgo.GoUInt8));
                    if ((_i_295281 < (0 : stdgo.GoInt) : Bool)) {
                        _gotoNext = 295317i32;
                    } else {
                        _gotoNext = 295352i32;
                    };
                } else if (__value__ == (295317i32)) {
                    {
                        final __tmp__0 = _env?.__copy__();
                        final __tmp__1 = stdgo.Go.str()?.__copy__();
                        _field_295267 = __tmp__0;
                        _env = __tmp__1;
                    };
                    _gotoNext = 295395i32;
                } else if (__value__ == (295352i32)) {
                    _gotoNext = 295352i32;
                    {
                        final __tmp__0 = (_env.__slice__(0, _i_295281) : stdgo.GoString)?.__copy__();
                        final __tmp__1 = (_env.__slice__((_i_295281 + (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        _field_295267 = __tmp__0;
                        _env = __tmp__1;
                    };
                    var __blank__ = 0i32;
                    _gotoNext = 295395i32;
                } else if (__value__ == (295395i32)) {
                    if ((((_field_295267.length) < (4 : stdgo.GoInt) : Bool) || ((_field_295267.__slice__(0, (4 : stdgo.GoInt)) : stdgo.GoString) != ("cpu." : stdgo.GoString)) : Bool)) {
                        _gotoNext = 295436i32;
                    } else {
                        _gotoNext = 295456i32;
                    };
                } else if (__value__ == (295436i32)) {
                    var __blank__ = 0i32;
                    _gotoNext = 295249i32;
                } else if (__value__ == (295456i32)) {
                    _i_295281 = stdgo._internal.internal.cpu.Cpu__indexByte._indexByte(_field_295267?.__copy__(), (61 : stdgo.GoUInt8));
                    if ((_i_295281 < (0 : stdgo.GoInt) : Bool)) {
                        _gotoNext = 295493i32;
                    } else {
                        _gotoNext = 295575i32;
                    };
                } else if (__value__ == (295493i32)) {
                    stdgo.Go.print(("GODEBUG: no value specified for \"" : stdgo.GoString), _field_295267, ("\"\n" : stdgo.GoString));
                    var __blank__ = 0i32;
                    _gotoNext = 295249i32;
                } else if (__value__ == (295575i32)) {
                    {
                        final __tmp__0 = (_field_295267.__slice__((4 : stdgo.GoInt), _i_295281) : stdgo.GoString)?.__copy__();
                        final __tmp__1 = (_field_295267.__slice__((_i_295281 + (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        _key_295575 = __tmp__0;
                        _value_295580 = __tmp__1;
                    };
                    _gotoNext = 295655i32;
                } else if (__value__ == (295655i32)) {
                    {
                        final __value__ = _value_295580;
                        if (__value__ == (("on" : stdgo.GoString))) {
                            _gotoNext = 295672i32;
                        } else if (__value__ == (("off" : stdgo.GoString))) {
                            _gotoNext = 295702i32;
                        } else {
                            _gotoNext = 295734i32;
                        };
                    };
                } else if (__value__ == (295672i32)) {
                    _enable_295641 = true;
                    _gotoNext = 295856i32;
                } else if (__value__ == (295702i32)) {
                    _enable_295641 = false;
                    _gotoNext = 295856i32;
                } else if (__value__ == (295734i32)) {
                    stdgo.Go.print(("GODEBUG: value \"" : stdgo.GoString), _value_295580, ("\" not supported for cpu option \"" : stdgo.GoString), _key_295575, ("\"\n" : stdgo.GoString));
                    _gotoNext = 295249i32;
                } else if (__value__ == (295856i32)) {
                    if (_key_295575 == (("all" : stdgo.GoString))) {
                        _gotoNext = 295872i32;
                    } else {
                        _gotoNext = 295995i32;
                    };
                } else if (__value__ == (295872i32)) {
                    if ((0i32 : stdgo.GoInt) < (stdgo._internal.internal.cpu.Cpu__options._options.length)) {
                        _gotoNext = 295967i32;
                    } else {
                        _gotoNext = 295973i32;
                    };
                } else if (__value__ == (295900i32)) {
                    stdgo._internal.internal.cpu.Cpu__options._options[(_i_295881 : stdgo.GoInt)].specified = true;
                    stdgo._internal.internal.cpu.Cpu__options._options[(_i_295881 : stdgo.GoInt)].enable = _enable_295641;
                    _i_295881++;
                    _gotoNext = 295968i32;
                } else if (__value__ == (295967i32)) {
                    _i_295881 = 0i32;
                    _gotoNext = 295968i32;
                } else if (__value__ == (295968i32)) {
                    if (_i_295881 < (stdgo._internal.internal.cpu.Cpu__options._options.length)) {
                        _gotoNext = 295900i32;
                    } else {
                        _gotoNext = 295973i32;
                    };
                } else if (__value__ == (295973i32)) {
                    _gotoNext = 295249i32;
                } else if (__value__ == (295995i32)) {
                    if ((0i32 : stdgo.GoInt) < (stdgo._internal.internal.cpu.Cpu__options._options.length)) {
                        _gotoNext = 296139i32;
                    } else {
                        _gotoNext = 296145i32;
                    };
                } else if (__value__ == (295999i32)) {
                    _i_295999++;
                    _gotoNext = 296140i32;
                } else if (__value__ == (296018i32)) {
                    if (stdgo._internal.internal.cpu.Cpu__options._options[(_i_295999 : stdgo.GoInt)].name == (_key_295575)) {
                        _gotoNext = 296049i32;
                    } else {
                        _gotoNext = 295999i32;
                    };
                } else if (__value__ == (296049i32)) {
                    stdgo._internal.internal.cpu.Cpu__options._options[(_i_295999 : stdgo.GoInt)].specified = true;
                    stdgo._internal.internal.cpu.Cpu__options._options[(_i_295999 : stdgo.GoInt)].enable = _enable_295641;
                    _gotoNext = 295249i32;
                } else if (__value__ == (296139i32)) {
                    _i_295999 = 0i32;
                    _gotoNext = 296140i32;
                } else if (__value__ == (296140i32)) {
                    if (_i_295999 < (stdgo._internal.internal.cpu.Cpu__options._options.length)) {
                        _gotoNext = 296018i32;
                    } else {
                        _gotoNext = 296145i32;
                    };
                } else if (__value__ == (296145i32)) {
                    stdgo.Go.print(("GODEBUG: unknown cpu feature \"" : stdgo.GoString), _key_295575, ("\"\n" : stdgo.GoString));
                    _gotoNext = 295249i32;
                } else if (__value__ == (296204i32)) {
                    if ((0i32 : stdgo.GoInt) < (stdgo._internal.internal.cpu.Cpu__options._options.length)) {
                        _gotoNext = 296417i32;
                    } else {
                        _gotoNext = 296420i32;
                    };
                } else if (__value__ == (296230i32)) {
                    _o_296211 = stdgo._internal.internal.cpu.Cpu__options._options[(_i_296216_0 : stdgo.GoInt)];
                    if (!_o_296211.specified) {
                        _gotoNext = 296250i32;
                    } else {
                        _gotoNext = 296271i32;
                    };
                } else if (__value__ == (296250i32)) {
                    _i_296216_0++;
                    _gotoNext = 296418i32;
                } else if (__value__ == (296271i32)) {
                    if ((_o_296211.enable && !_o_296211.feature.value : Bool)) {
                        _gotoNext = 296298i32;
                    } else {
                        _gotoNext = 296395i32;
                    };
                } else if (__value__ == (296298i32)) {
                    stdgo.Go.print(("GODEBUG: can not enable \"" : stdgo.GoString), _o_296211.name, ("\", missing CPU support\n" : stdgo.GoString));
                    _i_296216_0++;
                    _gotoNext = 296418i32;
                } else if (__value__ == (296395i32)) {
                    _o_296211.feature.value = _o_296211.enable;
                    _i_296216_0++;
                    _gotoNext = 296418i32;
                } else if (__value__ == (296417i32)) {
                    {
                        final __tmp__0 = 0i32;
                        final __tmp__1 = stdgo._internal.internal.cpu.Cpu__options._options[(0i32 : stdgo.GoInt)];
                        _i_296216_0 = __tmp__0;
                        _o_296211 = __tmp__1;
                    };
                    _gotoNext = 296418i32;
                } else if (__value__ == (296418i32)) {
                    if (_i_296216_0 < (stdgo._internal.internal.cpu.Cpu__options._options.length)) {
                        _gotoNext = 296230i32;
                    } else {
                        _gotoNext = 296420i32;
                    };
                } else if (__value__ == (296420i32)) {
                    _gotoNext = -1i32;
                };
            };
        };
    }
