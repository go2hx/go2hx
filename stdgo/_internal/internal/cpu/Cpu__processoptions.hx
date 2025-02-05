package stdgo._internal.internal.cpu;
function _processOptions(_env:stdgo.GoString):Void {
        var _i_51507:stdgo.GoInt = (0 : stdgo.GoInt);
        var _field_51493:stdgo.GoString = ("" : stdgo.GoString);
        var _i_52225:stdgo.GoInt = (0 : stdgo.GoInt);
        var _value_51806:stdgo.GoString = ("" : stdgo.GoString);
        var _key_51801:stdgo.GoString = ("" : stdgo.GoString);
        var _enable_51867:Bool = false;
        var _fieldBreak = false;
        var _o_52437:stdgo._internal.internal.cpu.Cpu_t_option.T_option = ({} : stdgo._internal.internal.cpu.Cpu_t_option.T_option);
        var _i_52442_0:stdgo.GoInt = (0 : stdgo.GoInt);
        var _i_52107:stdgo.GoInt = (0 : stdgo.GoInt);
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    _gotoNext = 51467i32;
                } else if (__value__ == (51467i32)) {
                    var __blank__ = 0i32;
                    _fieldBreak = false;
                    _gotoNext = 51475i32;
                } else if (__value__ == (51475i32)) {
                    if (!_fieldBreak && (_env != (stdgo.Go.str() : stdgo.GoString))) {
                        _gotoNext = 51489i32;
                    } else {
                        _gotoNext = 52430i32;
                    };
                } else if (__value__ == (51489i32)) {
                    _field_51493 = (stdgo.Go.str() : stdgo.GoString)?.__copy__();
                    _i_51507 = stdgo._internal.internal.cpu.Cpu__indexbyte._indexByte(_env?.__copy__(), (44 : stdgo.GoUInt8));
                    if ((_i_51507 < (0 : stdgo.GoInt) : Bool)) {
                        _gotoNext = 51543i32;
                    } else {
                        _gotoNext = 51578i32;
                    };
                } else if (__value__ == (51543i32)) {
                    {
                        final __tmp__0 = _env?.__copy__();
                        final __tmp__1 = (stdgo.Go.str() : stdgo.GoString)?.__copy__();
                        _field_51493 = __tmp__0;
                        _env = __tmp__1;
                    };
                    _gotoNext = 51621i32;
                } else if (__value__ == (51578i32)) {
                    _gotoNext = 51578i32;
                    {
                        final __tmp__0 = (_env.__slice__(0, _i_51507) : stdgo.GoString)?.__copy__();
                        final __tmp__1 = (_env.__slice__((_i_51507 + (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        _field_51493 = __tmp__0;
                        _env = __tmp__1;
                    };
                    var __blank__ = 0i32;
                    _gotoNext = 51621i32;
                } else if (__value__ == (51621i32)) {
                    if ((((_field_51493.length) < (4 : stdgo.GoInt) : Bool) || ((_field_51493.__slice__(0, (4 : stdgo.GoInt)) : stdgo.GoString) != ("cpu." : stdgo.GoString)) : Bool)) {
                        _gotoNext = 51662i32;
                    } else {
                        _gotoNext = 51682i32;
                    };
                } else if (__value__ == (51662i32)) {
                    var __blank__ = 0i32;
                    _gotoNext = 51475i32;
                } else if (__value__ == (51682i32)) {
                    _i_51507 = stdgo._internal.internal.cpu.Cpu__indexbyte._indexByte(_field_51493?.__copy__(), (61 : stdgo.GoUInt8));
                    if ((_i_51507 < (0 : stdgo.GoInt) : Bool)) {
                        _gotoNext = 51719i32;
                    } else {
                        _gotoNext = 51801i32;
                    };
                } else if (__value__ == (51719i32)) {
                    stdgo.Go.print(("GODEBUG: no value specified for \"" : stdgo.GoString), _field_51493, ("\"\n" : stdgo.GoString));
                    var __blank__ = 0i32;
                    _gotoNext = 51475i32;
                } else if (__value__ == (51801i32)) {
                    {
                        final __tmp__0 = (_field_51493.__slice__((4 : stdgo.GoInt), _i_51507) : stdgo.GoString)?.__copy__();
                        final __tmp__1 = (_field_51493.__slice__((_i_51507 + (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        _key_51801 = __tmp__0;
                        _value_51806 = __tmp__1;
                    };
                    _gotoNext = 51881i32;
                } else if (__value__ == (51881i32)) {
                    {
                        final __value__ = _value_51806;
                        if (__value__ == (("on" : stdgo.GoString))) {
                            _gotoNext = 51898i32;
                        } else if (__value__ == (("off" : stdgo.GoString))) {
                            _gotoNext = 51928i32;
                        } else {
                            _gotoNext = 51960i32;
                        };
                    };
                } else if (__value__ == (51898i32)) {
                    _enable_51867 = true;
                    _gotoNext = 52082i32;
                } else if (__value__ == (51928i32)) {
                    _enable_51867 = false;
                    _gotoNext = 52082i32;
                } else if (__value__ == (51960i32)) {
                    stdgo.Go.print(("GODEBUG: value \"" : stdgo.GoString), _value_51806, ("\" not supported for cpu option \"" : stdgo.GoString), _key_51801, ("\"\n" : stdgo.GoString));
                    _gotoNext = 51475i32;
                } else if (__value__ == (52082i32)) {
                    if (_key_51801 == (("all" : stdgo.GoString))) {
                        _gotoNext = 52098i32;
                    } else {
                        _gotoNext = 52221i32;
                    };
                } else if (__value__ == (52098i32)) {
                    if ((0i32 : stdgo.GoInt) < (stdgo._internal.internal.cpu.Cpu__options._options.length)) {
                        _gotoNext = 52193i32;
                    } else {
                        _gotoNext = 52199i32;
                    };
                } else if (__value__ == (52126i32)) {
                    stdgo._internal.internal.cpu.Cpu__options._options[(_i_52107 : stdgo.GoInt)].specified = true;
                    stdgo._internal.internal.cpu.Cpu__options._options[(_i_52107 : stdgo.GoInt)].enable = _enable_51867;
                    _i_52107++;
                    _gotoNext = 52194i32;
                } else if (__value__ == (52193i32)) {
                    _i_52107 = 0i32;
                    _gotoNext = 52194i32;
                } else if (__value__ == (52194i32)) {
                    if (_i_52107 < (stdgo._internal.internal.cpu.Cpu__options._options.length)) {
                        _gotoNext = 52126i32;
                    } else {
                        _gotoNext = 52199i32;
                    };
                } else if (__value__ == (52199i32)) {
                    _gotoNext = 51475i32;
                } else if (__value__ == (52221i32)) {
                    if ((0i32 : stdgo.GoInt) < (stdgo._internal.internal.cpu.Cpu__options._options.length)) {
                        _gotoNext = 52365i32;
                    } else {
                        _gotoNext = 52371i32;
                    };
                } else if (__value__ == (52225i32)) {
                    _i_52225++;
                    _gotoNext = 52366i32;
                } else if (__value__ == (52244i32)) {
                    if (stdgo._internal.internal.cpu.Cpu__options._options[(_i_52225 : stdgo.GoInt)].name == (_key_51801)) {
                        _gotoNext = 52275i32;
                    } else {
                        _gotoNext = 52225i32;
                    };
                } else if (__value__ == (52275i32)) {
                    stdgo._internal.internal.cpu.Cpu__options._options[(_i_52225 : stdgo.GoInt)].specified = true;
                    stdgo._internal.internal.cpu.Cpu__options._options[(_i_52225 : stdgo.GoInt)].enable = _enable_51867;
                    _gotoNext = 51475i32;
                } else if (__value__ == (52365i32)) {
                    _i_52225 = 0i32;
                    _gotoNext = 52366i32;
                } else if (__value__ == (52366i32)) {
                    if (_i_52225 < (stdgo._internal.internal.cpu.Cpu__options._options.length)) {
                        _gotoNext = 52244i32;
                    } else {
                        _gotoNext = 52371i32;
                    };
                } else if (__value__ == (52371i32)) {
                    stdgo.Go.print(("GODEBUG: unknown cpu feature \"" : stdgo.GoString), _key_51801, ("\"\n" : stdgo.GoString));
                    _gotoNext = 51475i32;
                } else if (__value__ == (52430i32)) {
                    if ((0i32 : stdgo.GoInt) < (stdgo._internal.internal.cpu.Cpu__options._options.length)) {
                        _gotoNext = 52643i32;
                    } else {
                        _gotoNext = 52646i32;
                    };
                } else if (__value__ == (52456i32)) {
                    _o_52437 = stdgo._internal.internal.cpu.Cpu__options._options[(_i_52442_0 : stdgo.GoInt)];
                    if (!_o_52437.specified) {
                        _gotoNext = 52476i32;
                    } else {
                        _gotoNext = 52497i32;
                    };
                } else if (__value__ == (52476i32)) {
                    _i_52442_0++;
                    _gotoNext = 52644i32;
                } else if (__value__ == (52497i32)) {
                    if ((_o_52437.enable && !_o_52437.feature.value : Bool)) {
                        _gotoNext = 52524i32;
                    } else {
                        _gotoNext = 52621i32;
                    };
                } else if (__value__ == (52524i32)) {
                    stdgo.Go.print(("GODEBUG: can not enable \"" : stdgo.GoString), _o_52437.name, ("\", missing CPU support\n" : stdgo.GoString));
                    _i_52442_0++;
                    _gotoNext = 52644i32;
                } else if (__value__ == (52621i32)) {
                    _o_52437.feature.value = _o_52437.enable;
                    _i_52442_0++;
                    _gotoNext = 52644i32;
                } else if (__value__ == (52643i32)) {
                    {
                        final __tmp__0 = 0i32;
                        final __tmp__1 = stdgo._internal.internal.cpu.Cpu__options._options[(0i32 : stdgo.GoInt)];
                        _i_52442_0 = __tmp__0;
                        _o_52437 = __tmp__1;
                    };
                    _gotoNext = 52644i32;
                } else if (__value__ == (52644i32)) {
                    if (_i_52442_0 < (stdgo._internal.internal.cpu.Cpu__options._options.length)) {
                        _gotoNext = 52456i32;
                    } else {
                        _gotoNext = 52646i32;
                    };
                } else if (__value__ == (52646i32)) {
                    _gotoNext = -1i32;
                };
            };
        };
    }
