package stdgo._internal.fmt;
@:keep @:allow(stdgo._internal.fmt.Fmt.T_pp_asInterface) class T_pp_static_extension {
    @:keep
    static public function _doPrintln( _p:stdgo.Ref<stdgo._internal.fmt.Fmt_T_pp.T_pp>, _a:stdgo.Slice<stdgo.AnyInterface>):Void {
        @:recv var _p:stdgo.Ref<stdgo._internal.fmt.Fmt_T_pp.T_pp> = _p;
        for (_argNum => _arg in _a) {
            if ((_argNum > (0 : stdgo.GoInt) : Bool)) {
                _p._buf._writeByte((32 : stdgo.GoUInt8));
            };
            _p._printArg(_arg, (118 : stdgo.GoInt32));
        };
        _p._buf._writeByte((10 : stdgo.GoUInt8));
    }
    @:keep
    static public function _doPrint( _p:stdgo.Ref<stdgo._internal.fmt.Fmt_T_pp.T_pp>, _a:stdgo.Slice<stdgo.AnyInterface>):Void {
        @:recv var _p:stdgo.Ref<stdgo._internal.fmt.Fmt_T_pp.T_pp> = _p;
        var _prevString = (false : Bool);
        for (_argNum => _arg in _a) {
            var _isString = ((_arg != null) && (stdgo._internal.reflect.Reflect_typeOf.typeOf(_arg).kind() == (24u32 : stdgo._internal.reflect.Reflect_Kind.Kind)) : Bool);
            if ((((_argNum > (0 : stdgo.GoInt) : Bool) && !_isString : Bool) && !_prevString : Bool)) {
                _p._buf._writeByte((32 : stdgo.GoUInt8));
            };
            _p._printArg(_arg, (118 : stdgo.GoInt32));
            _prevString = _isString;
        };
    }
    @:keep
    static public function _doPrintf( _p:stdgo.Ref<stdgo._internal.fmt.Fmt_T_pp.T_pp>, _format:stdgo.GoString, _a:stdgo.Slice<stdgo.AnyInterface>):Void {
        @:recv var _p:stdgo.Ref<stdgo._internal.fmt.Fmt_T_pp.T_pp> = _p;
        var _simpleFormatBreak = false;
        var _lasti_4058692:stdgo.GoInt = (0 : stdgo.GoInt);
        var _formatLoopBreak = false;
        var _afterIndex_4058541:Bool = false;
        var _argNum_4058470:stdgo.GoInt = (0 : stdgo.GoInt);
        var _i_4062573:stdgo.GoInt = (0 : stdgo.GoInt);
        var _verb_4061560:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _arg_4062576:stdgo.AnyInterface = (null : stdgo.AnyInterface);
        var _size_4061566:stdgo.GoInt = (0 : stdgo.GoInt);
        var _c_4058989:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var _i_4058649:stdgo.GoInt = (0 : stdgo.GoInt);
        var _end_4058450:stdgo.GoInt = (0 : stdgo.GoInt);
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    _end_4058450 = (_format.length);
                    _argNum_4058470 = (0 : stdgo.GoInt);
                    _afterIndex_4058541 = false;
                    _p._reordered = false;
                    _gotoNext = 4058632i32;
                } else if (__value__ == (4058632i32)) {
                    _i_4058649 = (0 : stdgo.GoInt);
                    _formatLoopBreak = false;
                    _gotoNext = 4058645i32;
                } else if (__value__ == (4058645i32)) {
                    if (!_formatLoopBreak && ((_i_4058649 < _end_4058450 : Bool))) {
                        _gotoNext = 4058666i32;
                    } else {
                        _gotoNext = 4062476i32;
                    };
                } else if (__value__ == (4058666i32)) {
                    _p._goodArgNum = true;
                    _lasti_4058692 = _i_4058649;
                    var __blank__ = 0i32;
                    _gotoNext = 4058705i32;
                } else if (__value__ == (4058705i32)) {
                    if (((_i_4058649 < _end_4058450 : Bool) && (_format[(_i_4058649 : stdgo.GoInt)] != (37 : stdgo.GoUInt8)) : Bool)) {
                        _gotoNext = 4058737i32;
                    } else {
                        _gotoNext = 4058752i32;
                    };
                } else if (__value__ == (4058737i32)) {
                    _i_4058649++;
                    _gotoNext = 4058705i32;
                } else if (__value__ == (4058752i32)) {
                    if ((_i_4058649 > _lasti_4058692 : Bool)) {
                        _gotoNext = 4058765i32;
                    } else {
                        _gotoNext = 4058811i32;
                    };
                } else if (__value__ == (4058765i32)) {
                    _p._buf._writeString((_format.__slice__(_lasti_4058692, _i_4058649) : stdgo.GoString)?.__copy__());
                    _gotoNext = 4058811i32;
                } else if (__value__ == (4058811i32)) {
                    if ((_i_4058649 >= _end_4058450 : Bool)) {
                        _gotoNext = 4058823i32;
                    } else {
                        _gotoNext = 4058899i32;
                    };
                } else if (__value__ == (4058823i32)) {
                    _gotoNext = 4062476i32;
                } else if (__value__ == (4058899i32)) {
                    _i_4058649++;
                    _p._fmt._clearflags();
                    _gotoNext = 4058949i32;
                } else if (__value__ == (4058949i32)) {
                    var __blank__ = 0i32;
                    _simpleFormatBreak = false;
                    _gotoNext = 4058965i32;
                } else if (__value__ == (4058965i32)) {
                    if (!_simpleFormatBreak && ((_i_4058649 < _end_4058450 : Bool))) {
                        _gotoNext = 4058984i32;
                    } else {
                        _gotoNext = 4060019i32;
                    };
                } else if (__value__ == (4058980i32)) {
                    _i_4058649++;
                    _gotoNext = 4058965i32;
                } else if (__value__ == (4058984i32)) {
                    _c_4058989 = _format[(_i_4058649 : stdgo.GoInt)];
                    var __blank__ = 0i32;
                    _gotoNext = 4059007i32;
                } else if (__value__ == (4059007i32)) {
                    {
                        final __value__ = _c_4058989;
                        if (__value__ == ((35 : stdgo.GoUInt8))) {
                            _gotoNext = 4059021i32;
                        } else if (__value__ == ((48 : stdgo.GoUInt8))) {
                            _gotoNext = 4059057i32;
                        } else if (__value__ == ((43 : stdgo.GoUInt8))) {
                            _gotoNext = 4059140i32;
                        } else if (__value__ == ((45 : stdgo.GoUInt8))) {
                            _gotoNext = 4059175i32;
                        } else if (__value__ == ((32 : stdgo.GoUInt8))) {
                            _gotoNext = 4059273i32;
                        } else {
                            _gotoNext = 4059309i32;
                        };
                    };
                } else if (__value__ == (4059021i32)) {
                    _p._fmt._fmtFlags._sharp = true;
                    _gotoNext = 4058980i32;
                } else if (__value__ == (4059057i32)) {
                    _p._fmt._fmtFlags._zero = !_p._fmt._fmtFlags._minus;
                    _gotoNext = 4058980i32;
                } else if (__value__ == (4059140i32)) {
                    _p._fmt._fmtFlags._plus = true;
                    _gotoNext = 4058980i32;
                } else if (__value__ == (4059175i32)) {
                    _p._fmt._fmtFlags._minus = true;
                    _p._fmt._fmtFlags._zero = false;
                    _gotoNext = 4058980i32;
                } else if (__value__ == (4059273i32)) {
                    _p._fmt._fmtFlags._space = true;
                    _gotoNext = 4058980i32;
                } else if (__value__ == (4059309i32)) {
                    if (((((97 : stdgo.GoUInt8) <= _c_4058989 : Bool) && (_c_4058989 <= (122 : stdgo.GoUInt8) : Bool) : Bool) && (_argNum_4058470 < (_a.length) : Bool) : Bool)) {
                        _gotoNext = 4059486i32;
                    } else {
                        _gotoNext = 4059944i32;
                    };
                } else if (__value__ == (4059486i32)) {
                    var __blank__ = 0i32;
                    _gotoNext = 4059493i32;
                } else if (__value__ == (4059493i32)) {
                    {
                        final __value__ = _c_4058989;
                        if (__value__ == ((119 : stdgo.GoUInt8))) {
                            _gotoNext = 4059509i32;
                        } else if (__value__ == ((118 : stdgo.GoUInt8))) {
                            _gotoNext = 4059594i32;
                        } else {
                            _gotoNext = 4059779i32;
                        };
                    };
                } else if (__value__ == (4059509i32)) {
                    _p._wrappedErrs = (_p._wrappedErrs.__append__(_argNum_4058470));
                    _gotoNext = 4059594i32;
                } else if (__value__ == (4059594i32)) {
                    _p._fmt._fmtFlags._sharpV = _p._fmt._fmtFlags._sharp;
                    _p._fmt._fmtFlags._sharp = false;
                    _p._fmt._fmtFlags._plusV = _p._fmt._fmtFlags._plus;
                    _p._fmt._fmtFlags._plus = false;
                    _gotoNext = 4059779i32;
                } else if (__value__ == (4059779i32)) {
                    _p._printArg(_a[(_argNum_4058470 : stdgo.GoInt)], (_c_4058989 : stdgo.GoInt32));
                    _argNum_4058470++;
                    _i_4058649++;
                    _gotoNext = 4058645i32;
                } else if (__value__ == (4059944i32)) {
                    _simpleFormatBreak = true;
                    _gotoNext = 4058965i32;
                } else if (__value__ == (4060019i32)) {
                    {
                        var __tmp__ = _p._argNumber(_argNum_4058470, _format?.__copy__(), _i_4058649, (_a.length));
                        _argNum_4058470 = __tmp__._0;
                        _i_4058649 = __tmp__._1;
                        _afterIndex_4058541 = __tmp__._2;
                    };
                    if (((_i_4058649 < _end_4058450 : Bool) && (_format[(_i_4058649 : stdgo.GoInt)] == (42 : stdgo.GoUInt8)) : Bool)) {
                        _gotoNext = 4060139i32;
                    } else {
                        _gotoNext = 4060546i32;
                    };
                } else if (__value__ == (4060139i32)) {
                    _i_4058649++;
                    {
                        var __tmp__ = stdgo._internal.fmt.Fmt__intFromArg._intFromArg(_a, _argNum_4058470);
                        _p._fmt._wid = __tmp__._0;
                        _p._fmt._fmtFlags._widPresent = __tmp__._1;
                        _argNum_4058470 = __tmp__._2;
                    };
                    if (!_p._fmt._fmtFlags._widPresent) {
                        _gotoNext = 4060236i32;
                    } else {
                        _gotoNext = 4060379i32;
                    };
                } else if (__value__ == (4060236i32)) {
                    _p._buf._writeString(("%!(BADWIDTH)" : stdgo.GoString));
                    _gotoNext = 4060379i32;
                } else if (__value__ == (4060379i32)) {
                    if ((_p._fmt._wid < (0 : stdgo.GoInt) : Bool)) {
                        _gotoNext = 4060396i32;
                    } else {
                        _gotoNext = 4060518i32;
                    };
                } else if (__value__ == (4060396i32)) {
                    _p._fmt._wid = -_p._fmt._wid;
                    _p._fmt._fmtFlags._minus = true;
                    _p._fmt._fmtFlags._zero = false;
                    _gotoNext = 4060518i32;
                } else if (__value__ == (4060518i32)) {
                    _afterIndex_4058541 = false;
                    _gotoNext = 4060724i32;
                } else if (__value__ == (4060546i32)) {
                    {
                        var __tmp__ = stdgo._internal.fmt.Fmt__parsenum._parsenum(_format?.__copy__(), _i_4058649, _end_4058450);
                        _p._fmt._wid = __tmp__._0;
                        _p._fmt._fmtFlags._widPresent = __tmp__._1;
                        _i_4058649 = __tmp__._2;
                    };
                    if ((_afterIndex_4058541 && _p._fmt._fmtFlags._widPresent : Bool)) {
                        _gotoNext = 4060646i32;
                    } else {
                        _gotoNext = 4060724i32;
                    };
                } else if (__value__ == (4060646i32)) {
                    _p._goodArgNum = false;
                    _gotoNext = 4060724i32;
                } else if (__value__ == (4060724i32)) {
                    if ((((_i_4058649 + (1 : stdgo.GoInt) : stdgo.GoInt) < _end_4058450 : Bool) && (_format[(_i_4058649 : stdgo.GoInt)] == (46 : stdgo.GoUInt8)) : Bool)) {
                        _gotoNext = 4060757i32;
                    } else {
                        _gotoNext = 4061405i32;
                    };
                } else if (__value__ == (4060757i32)) {
                    _i_4058649++;
                    if (_afterIndex_4058541) {
                        _gotoNext = 4060783i32;
                    } else {
                        _gotoNext = 4060831i32;
                    };
                } else if (__value__ == (4060783i32)) {
                    _p._goodArgNum = false;
                    _gotoNext = 4060831i32;
                } else if (__value__ == (4060831i32)) {
                    {
                        var __tmp__ = _p._argNumber(_argNum_4058470, _format?.__copy__(), _i_4058649, (_a.length));
                        _argNum_4058470 = __tmp__._0;
                        _i_4058649 = __tmp__._1;
                        _afterIndex_4058541 = __tmp__._2;
                    };
                    if (((_i_4058649 < _end_4058450 : Bool) && (_format[(_i_4058649 : stdgo.GoInt)] == (42 : stdgo.GoUInt8)) : Bool)) {
                        _gotoNext = 4060928i32;
                    } else {
                        _gotoNext = 4061243i32;
                    };
                } else if (__value__ == (4060928i32)) {
                    _i_4058649++;
                    {
                        var __tmp__ = stdgo._internal.fmt.Fmt__intFromArg._intFromArg(_a, _argNum_4058470);
                        _p._fmt._prec = __tmp__._0;
                        _p._fmt._fmtFlags._precPresent = __tmp__._1;
                        _argNum_4058470 = __tmp__._2;
                    };
                    if ((_p._fmt._prec < (0 : stdgo.GoInt) : Bool)) {
                        _gotoNext = 4061079i32;
                    } else {
                        _gotoNext = 4061142i32;
                    };
                } else if (__value__ == (4061079i32)) {
                    _p._fmt._prec = (0 : stdgo.GoInt);
                    _p._fmt._fmtFlags._precPresent = false;
                    _gotoNext = 4061142i32;
                } else if (__value__ == (4061142i32)) {
                    if (!_p._fmt._fmtFlags._precPresent) {
                        _gotoNext = 4061164i32;
                    } else {
                        _gotoNext = 4061214i32;
                    };
                } else if (__value__ == (4061164i32)) {
                    _p._buf._writeString(("%!(BADPREC)" : stdgo.GoString));
                    _gotoNext = 4061214i32;
                } else if (__value__ == (4061214i32)) {
                    _afterIndex_4058541 = false;
                    _gotoNext = 4061405i32;
                } else if (__value__ == (4061243i32)) {
                    {
                        var __tmp__ = stdgo._internal.fmt.Fmt__parsenum._parsenum(_format?.__copy__(), _i_4058649, _end_4058450);
                        _p._fmt._prec = __tmp__._0;
                        _p._fmt._fmtFlags._precPresent = __tmp__._1;
                        _i_4058649 = __tmp__._2;
                    };
                    if (!_p._fmt._fmtFlags._precPresent) {
                        _gotoNext = 4061335i32;
                    } else {
                        _gotoNext = 4061405i32;
                    };
                } else if (__value__ == (4061335i32)) {
                    _p._fmt._prec = (0 : stdgo.GoInt);
                    _p._fmt._fmtFlags._precPresent = true;
                    _gotoNext = 4061405i32;
                } else if (__value__ == (4061405i32)) {
                    if (!_afterIndex_4058541) {
                        _gotoNext = 4061420i32;
                    } else {
                        _gotoNext = 4061495i32;
                    };
                } else if (__value__ == (4061420i32)) {
                    {
                        var __tmp__ = _p._argNumber(_argNum_4058470, _format?.__copy__(), _i_4058649, (_a.length));
                        _argNum_4058470 = __tmp__._0;
                        _i_4058649 = __tmp__._1;
                        _afterIndex_4058541 = __tmp__._2;
                    };
                    _gotoNext = 4061495i32;
                } else if (__value__ == (4061495i32)) {
                    if ((_i_4058649 >= _end_4058450 : Bool)) {
                        _gotoNext = 4061507i32;
                    } else {
                        _gotoNext = 4061560i32;
                    };
                } else if (__value__ == (4061507i32)) {
                    _p._buf._writeString(("%!(NOVERB)" : stdgo.GoString));
                    _gotoNext = 4062476i32;
                } else if (__value__ == (4061560i32)) {
                    {
                        final __tmp__0 = (_format[(_i_4058649 : stdgo.GoInt)] : stdgo.GoInt32);
                        final __tmp__1 = (1 : stdgo.GoInt);
                        _verb_4061560 = __tmp__0;
                        _size_4061566 = __tmp__1;
                    };
                    if ((_verb_4061560 >= (128 : stdgo.GoInt32) : Bool)) {
                        _gotoNext = 4061620i32;
                    } else {
                        _gotoNext = 4061680i32;
                    };
                } else if (__value__ == (4061620i32)) {
                    {
                        var __tmp__ = stdgo._internal.unicode.utf8.Utf8_decodeRuneInString.decodeRuneInString((_format.__slice__(_i_4058649) : stdgo.GoString)?.__copy__());
                        _verb_4061560 = __tmp__._0;
                        _size_4061566 = __tmp__._1;
                    };
                    _gotoNext = 4061680i32;
                } else if (__value__ == (4061680i32)) {
                    _i_4058649 = (_i_4058649 + (_size_4061566) : stdgo.GoInt);
                    var __blank__ = 0i32;
                    _gotoNext = 4061693i32;
                } else if (__value__ == (4061693i32)) {
                    if (_verb_4061560 == ((37 : stdgo.GoInt32))) {
                        _gotoNext = 4061704i32;
                    } else if (!_p._goodArgNum) {
                        _gotoNext = 4061814i32;
                    } else if ((_argNum_4058470 >= (_a.length) : Bool)) {
                        _gotoNext = 4061857i32;
                    } else if (_verb_4061560 == ((119 : stdgo.GoInt32))) {
                        _gotoNext = 4061960i32;
                    } else if (_verb_4061560 == ((118 : stdgo.GoInt32))) {
                        _gotoNext = 4062044i32;
                    } else {
                        _gotoNext = 4062224i32;
                    };
                } else if (__value__ == (4061704i32)) {
                    _p._buf._writeByte((37 : stdgo.GoUInt8));
                    _gotoNext = 4062476i32;
                } else if (__value__ == (4061814i32)) {
                    _p._badArgNum(_verb_4061560);
                    _gotoNext = 4062476i32;
                } else if (__value__ == (4061857i32)) {
                    _p._missingArg(_verb_4061560);
                    _gotoNext = 4062476i32;
                } else if (__value__ == (4061960i32)) {
                    _p._wrappedErrs = (_p._wrappedErrs.__append__(_argNum_4058470));
                    _gotoNext = 4062044i32;
                } else if (__value__ == (4062044i32)) {
                    _p._fmt._fmtFlags._sharpV = _p._fmt._fmtFlags._sharp;
                    _p._fmt._fmtFlags._sharp = false;
                    _p._fmt._fmtFlags._plusV = _p._fmt._fmtFlags._plus;
                    _p._fmt._fmtFlags._plus = false;
                    _gotoNext = 4062224i32;
                } else if (__value__ == (4062224i32)) {
                    _p._printArg(_a[(_argNum_4058470 : stdgo.GoInt)], _verb_4061560);
                    _argNum_4058470++;
                    _gotoNext = 4062476i32;
                } else if (__value__ == (4062476i32)) {
                    if ((!_p._reordered && (_argNum_4058470 < (_a.length) : Bool) : Bool)) {
                        _gotoNext = 4062511i32;
                    } else {
                        _gotoNext = 4062867i32;
                    };
                } else if (__value__ == (4062511i32)) {
                    _p._fmt._clearflags();
                    _p._buf._writeString(("%!(EXTRA " : stdgo.GoString));
                    if ((0i32 : stdgo.GoInt) < ((_a.__slice__(_argNum_4058470) : stdgo.Slice<stdgo.AnyInterface>).length)) {
                        _gotoNext = 4062838i32;
                    } else {
                        _gotoNext = 4062843i32;
                    };
                } else if (__value__ == (4062573i32)) {
                    _i_4062573++;
                    _gotoNext = 4062839i32;
                } else if (__value__ == (4062600i32)) {
                    _arg_4062576 = stdgo.Go.toInterface((_a.__slice__(_argNum_4058470) : stdgo.Slice<stdgo.AnyInterface>)[(_i_4062573 : stdgo.GoInt)]);
                    if ((_i_4062573 > (0 : stdgo.GoInt) : Bool)) {
                        _gotoNext = 4062614i32;
                    } else {
                        _gotoNext = 4062664i32;
                    };
                } else if (__value__ == (4062614i32)) {
                    _p._buf._writeString((", " : stdgo.GoString));
                    _gotoNext = 4062664i32;
                } else if (__value__ == (4062664i32)) {
                    if (_arg_4062576 == null) {
                        _gotoNext = 4062678i32;
                    } else {
                        _gotoNext = 4062728i32;
                    };
                } else if (__value__ == (4062678i32)) {
                    _p._buf._writeString(("<nil>" : stdgo.GoString));
                    _gotoNext = 4062573i32;
                } else if (__value__ == (4062728i32)) {
                    _p._buf._writeString((stdgo._internal.reflect.Reflect_typeOf.typeOf(_arg_4062576).string() : stdgo.GoString)?.__copy__());
                    _p._buf._writeByte((61 : stdgo.GoUInt8));
                    _p._printArg(_arg_4062576, (118 : stdgo.GoInt32));
                    _gotoNext = 4062573i32;
                } else if (__value__ == (4062838i32)) {
                    {
                        final __tmp__0 = 0i32;
                        final __tmp__1 = stdgo.Go.toInterface((_a.__slice__(_argNum_4058470) : stdgo.Slice<stdgo.AnyInterface>)[(0i32 : stdgo.GoInt)]);
                        _i_4062573 = __tmp__0;
                        _arg_4062576 = __tmp__1;
                    };
                    _gotoNext = 4062839i32;
                } else if (__value__ == (4062839i32)) {
                    if (_i_4062573 < ((_a.__slice__(_argNum_4058470) : stdgo.Slice<stdgo.AnyInterface>).length)) {
                        _gotoNext = 4062600i32;
                    } else {
                        _gotoNext = 4062843i32;
                    };
                } else if (__value__ == (4062843i32)) {
                    _p._buf._writeByte((41 : stdgo.GoUInt8));
                    _gotoNext = 4062867i32;
                } else if (__value__ == (4062867i32)) {
                    _gotoNext = -1i32;
                };
            };
        };
    }
    @:keep
    static public function _missingArg( _p:stdgo.Ref<stdgo._internal.fmt.Fmt_T_pp.T_pp>, _verb:stdgo.GoInt32):Void {
        @:recv var _p:stdgo.Ref<stdgo._internal.fmt.Fmt_T_pp.T_pp> = _p;
        _p._buf._writeString(("%!" : stdgo.GoString));
        _p._buf._writeRune(_verb);
        _p._buf._writeString(("(MISSING)" : stdgo.GoString));
    }
    @:keep
    static public function _badArgNum( _p:stdgo.Ref<stdgo._internal.fmt.Fmt_T_pp.T_pp>, _verb:stdgo.GoInt32):Void {
        @:recv var _p:stdgo.Ref<stdgo._internal.fmt.Fmt_T_pp.T_pp> = _p;
        _p._buf._writeString(("%!" : stdgo.GoString));
        _p._buf._writeRune(_verb);
        _p._buf._writeString(("(BADINDEX)" : stdgo.GoString));
    }
    @:keep
    static public function _argNumber( _p:stdgo.Ref<stdgo._internal.fmt.Fmt_T_pp.T_pp>, _argNum:stdgo.GoInt, _format:stdgo.GoString, _i:stdgo.GoInt, _numArgs:stdgo.GoInt):{ var _0 : stdgo.GoInt; var _1 : stdgo.GoInt; var _2 : Bool; } {
        @:recv var _p:stdgo.Ref<stdgo._internal.fmt.Fmt_T_pp.T_pp> = _p;
        var _newArgNum = (0 : stdgo.GoInt), _newi = (0 : stdgo.GoInt), _found = false;
        if ((((_format.length) <= _i : Bool) || (_format[(_i : stdgo.GoInt)] != (91 : stdgo.GoUInt8)) : Bool)) {
            return { _0 : _argNum, _1 : _i, _2 : false };
        };
        _p._reordered = true;
        var __tmp__ = stdgo._internal.fmt.Fmt__parseArgNumber._parseArgNumber((_format.__slice__(_i) : stdgo.GoString)?.__copy__()), _index:stdgo.GoInt = __tmp__._0, _wid:stdgo.GoInt = __tmp__._1, _ok:Bool = __tmp__._2;
        if (((_ok && ((0 : stdgo.GoInt) <= _index : Bool) : Bool) && (_index < _numArgs : Bool) : Bool)) {
            return { _0 : _index, _1 : (_i + _wid : stdgo.GoInt), _2 : true };
        };
        _p._goodArgNum = false;
        return { _0 : _argNum, _1 : (_i + _wid : stdgo.GoInt), _2 : _ok };
    }
    @:keep
    static public function _printValue( _p:stdgo.Ref<stdgo._internal.fmt.Fmt_T_pp.T_pp>, _value:stdgo._internal.reflect.Reflect_Value.Value, _verb:stdgo.GoInt32, _depth:stdgo.GoInt):Void {
        @:recv var _p:stdgo.Ref<stdgo._internal.fmt.Fmt_T_pp.T_pp> = _p;
        if ((((_depth > (0 : stdgo.GoInt) : Bool) && _value.isValid() : Bool) && _value.canInterface() : Bool)) {
            _p._arg = _value.interface_();
            if (_p._handleMethods(_verb)) {
                return;
            };
        };
        _p._arg = (null : stdgo.AnyInterface);
        _p._value = _value?.__copy__();
        {
            var _f = (_value?.__copy__() : stdgo._internal.reflect.Reflect_Value.Value);
            {
                var __switchIndex__ = -1;
                var __run__ = true;
                while (__run__) {
                    __run__ = false;
                    {
                        final __value__ = _value.kind();
                        if (__switchIndex__ == 0 || (__switchIndex__ == -1 && (__value__ == (0u32 : stdgo._internal.reflect.Reflect_Kind.Kind)))) {
                            if (_depth == ((0 : stdgo.GoInt))) {
                                _p._buf._writeString(("<invalid reflect.Value>" : stdgo.GoString));
                            } else {
                                {
                                    final __value__ = _verb;
                                    if (__value__ == ((118 : stdgo.GoInt32))) {
                                        _p._buf._writeString(("<nil>" : stdgo.GoString));
                                    } else {
                                        _p._badVerb(_verb);
                                    };
                                };
                            };
                            break;
                            break;
                        } else if (__switchIndex__ == 1 || (__switchIndex__ == -1 && (__value__ == (1u32 : stdgo._internal.reflect.Reflect_Kind.Kind)))) {
                            _p._fmtBool(_f.bool_(), _verb);
                            break;
                            break;
                        } else if (__switchIndex__ == 2 || (__switchIndex__ == -1 && (__value__ == ((2u32 : stdgo._internal.reflect.Reflect_Kind.Kind)) || __value__ == ((3u32 : stdgo._internal.reflect.Reflect_Kind.Kind)) || __value__ == ((4u32 : stdgo._internal.reflect.Reflect_Kind.Kind)) || __value__ == ((5u32 : stdgo._internal.reflect.Reflect_Kind.Kind)) || __value__ == ((6u32 : stdgo._internal.reflect.Reflect_Kind.Kind))))) {
                            _p._fmtInteger((_f.int_() : stdgo.GoUInt64), true, _verb);
                            break;
                            break;
                        } else if (__switchIndex__ == 3 || (__switchIndex__ == -1 && (__value__ == ((7u32 : stdgo._internal.reflect.Reflect_Kind.Kind)) || __value__ == ((8u32 : stdgo._internal.reflect.Reflect_Kind.Kind)) || __value__ == ((9u32 : stdgo._internal.reflect.Reflect_Kind.Kind)) || __value__ == ((10u32 : stdgo._internal.reflect.Reflect_Kind.Kind)) || __value__ == ((11u32 : stdgo._internal.reflect.Reflect_Kind.Kind)) || __value__ == ((12u32 : stdgo._internal.reflect.Reflect_Kind.Kind))))) {
                            _p._fmtInteger(_f.uint(), false, _verb);
                            break;
                            break;
                        } else if (__switchIndex__ == 4 || (__switchIndex__ == -1 && (__value__ == (13u32 : stdgo._internal.reflect.Reflect_Kind.Kind)))) {
                            _p._fmtFloat(_f.float_(), (32 : stdgo.GoInt), _verb);
                            break;
                            break;
                        } else if (__switchIndex__ == 5 || (__switchIndex__ == -1 && (__value__ == (14u32 : stdgo._internal.reflect.Reflect_Kind.Kind)))) {
                            _p._fmtFloat(_f.float_(), (64 : stdgo.GoInt), _verb);
                            break;
                            break;
                        } else if (__switchIndex__ == 6 || (__switchIndex__ == -1 && (__value__ == (15u32 : stdgo._internal.reflect.Reflect_Kind.Kind)))) {
                            _p._fmtComplex(_f.complex(), (64 : stdgo.GoInt), _verb);
                            break;
                            break;
                        } else if (__switchIndex__ == 7 || (__switchIndex__ == -1 && (__value__ == (16u32 : stdgo._internal.reflect.Reflect_Kind.Kind)))) {
                            _p._fmtComplex(_f.complex(), (128 : stdgo.GoInt), _verb);
                            break;
                            break;
                        } else if (__switchIndex__ == 8 || (__switchIndex__ == -1 && (__value__ == (24u32 : stdgo._internal.reflect.Reflect_Kind.Kind)))) {
                            _p._fmtString((_f.string() : stdgo.GoString)?.__copy__(), _verb);
                            break;
                            break;
                        } else if (__switchIndex__ == 9 || (__switchIndex__ == -1 && (__value__ == (21u32 : stdgo._internal.reflect.Reflect_Kind.Kind)))) {
                            if (_p._fmt._fmtFlags._sharpV) {
                                _p._buf._writeString((_f.type().string() : stdgo.GoString)?.__copy__());
                                if (_f.isNil()) {
                                    _p._buf._writeString(("(nil)" : stdgo.GoString));
                                    return;
                                };
                                _p._buf._writeByte((123 : stdgo.GoUInt8));
                            } else {
                                _p._buf._writeString(("map[" : stdgo.GoString));
                            };
                            var _sorted = stdgo._internal.internal.fmtsort.Fmtsort_sort.sort(_f?.__copy__());
                            for (_i => _key in _sorted.key) {
                                if ((_i > (0 : stdgo.GoInt) : Bool)) {
                                    if (_p._fmt._fmtFlags._sharpV) {
                                        _p._buf._writeString((", " : stdgo.GoString));
                                    } else {
                                        _p._buf._writeByte((32 : stdgo.GoUInt8));
                                    };
                                };
                                _p._printValue(_key?.__copy__(), _verb, (_depth + (1 : stdgo.GoInt) : stdgo.GoInt));
                                _p._buf._writeByte((58 : stdgo.GoUInt8));
                                _p._printValue(_sorted.value[(_i : stdgo.GoInt)], _verb, (_depth + (1 : stdgo.GoInt) : stdgo.GoInt));
                            };
                            if (_p._fmt._fmtFlags._sharpV) {
                                _p._buf._writeByte((125 : stdgo.GoUInt8));
                            } else {
                                _p._buf._writeByte((93 : stdgo.GoUInt8));
                            };
                            break;
                            break;
                        } else if (__switchIndex__ == 10 || (__switchIndex__ == -1 && (__value__ == (25u32 : stdgo._internal.reflect.Reflect_Kind.Kind)))) {
                            if (_p._fmt._fmtFlags._sharpV) {
                                _p._buf._writeString((_f.type().string() : stdgo.GoString)?.__copy__());
                            };
                            _p._buf._writeByte((123 : stdgo.GoUInt8));
                            {
                                var _i = (0 : stdgo.GoInt);
                                while ((_i < _f.numField() : Bool)) {
                                    if ((_i > (0 : stdgo.GoInt) : Bool)) {
                                        if (_p._fmt._fmtFlags._sharpV) {
                                            _p._buf._writeString((", " : stdgo.GoString));
                                        } else {
                                            _p._buf._writeByte((32 : stdgo.GoUInt8));
                                        };
                                    };
if ((_p._fmt._fmtFlags._plusV || _p._fmt._fmtFlags._sharpV : Bool)) {
                                        {
                                            var _name = (_f.type().field(_i).name.__copy__() : stdgo.GoString);
                                            if (_name != (stdgo.Go.str())) {
                                                _p._buf._writeString(_name.__copy__());
                                                _p._buf._writeByte((58 : stdgo.GoUInt8));
                                            };
                                        };
                                    };
_p._printValue(stdgo._internal.fmt.Fmt__getField._getField(_f.__copy__(), _i).__copy__(), _verb, (_depth + (1 : stdgo.GoInt) : stdgo.GoInt));
                                    _i++;
                                };
                            };
                            _p._buf._writeByte((125 : stdgo.GoUInt8));
                            break;
                            break;
                        } else if (__switchIndex__ == 11 || (__switchIndex__ == -1 && (__value__ == (20u32 : stdgo._internal.reflect.Reflect_Kind.Kind)))) {
                            var _value = (_f.elem()?.__copy__() : stdgo._internal.reflect.Reflect_Value.Value);
                            if (!_value.isValid()) {
                                if (_p._fmt._fmtFlags._sharpV) {
                                    _p._buf._writeString((_f.type().string() : stdgo.GoString)?.__copy__());
                                    _p._buf._writeString(("(nil)" : stdgo.GoString));
                                } else {
                                    _p._buf._writeString(("<nil>" : stdgo.GoString));
                                };
                            } else {
                                _p._printValue(_value?.__copy__(), _verb, (_depth + (1 : stdgo.GoInt) : stdgo.GoInt));
                            };
                            break;
                            break;
                        } else if (__switchIndex__ == 12 || (__switchIndex__ == -1 && (__value__ == ((17u32 : stdgo._internal.reflect.Reflect_Kind.Kind)) || __value__ == ((23u32 : stdgo._internal.reflect.Reflect_Kind.Kind))))) {
                            {
                                final __value__ = _verb;
                                if (__value__ == ((115 : stdgo.GoInt32)) || __value__ == ((113 : stdgo.GoInt32)) || __value__ == ((120 : stdgo.GoInt32)) || __value__ == ((88 : stdgo.GoInt32))) {
                                    var _t = (_f.type() : stdgo._internal.reflect.Reflect_Type_.Type_);
                                    if (_t.elem().kind() == ((8u32 : stdgo._internal.reflect.Reflect_Kind.Kind))) {
                                        var _bytes:stdgo.Slice<stdgo.GoUInt8> = (null : stdgo.Slice<stdgo.GoUInt8>);
                                        if (_f.kind() == ((23u32 : stdgo._internal.reflect.Reflect_Kind.Kind))) {
                                            _bytes = _f.bytes();
                                        } else if (_f.canAddr()) {
                                            _bytes = _f.slice((0 : stdgo.GoInt), _f.len()).bytes();
                                        } else {
                                            _bytes = (new stdgo.Slice<stdgo.GoUInt8>((_f.len() : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>);
                                            for (_i => _ in _bytes) {
                                                _bytes[(_i : stdgo.GoInt)] = (_f.index(_i).uint() : stdgo.GoUInt8);
                                            };
                                        };
                                        _p._fmtBytes(_bytes, _verb, (_t.string() : stdgo.GoString)?.__copy__());
                                        return;
                                    };
                                };
                            };
                            if (_p._fmt._fmtFlags._sharpV) {
                                _p._buf._writeString((_f.type().string() : stdgo.GoString)?.__copy__());
                                if (((_f.kind() == (23u32 : stdgo._internal.reflect.Reflect_Kind.Kind)) && _f.isNil() : Bool)) {
                                    _p._buf._writeString(("(nil)" : stdgo.GoString));
                                    return;
                                };
                                _p._buf._writeByte((123 : stdgo.GoUInt8));
                                {
                                    var _i = (0 : stdgo.GoInt);
                                    while ((_i < _f.len() : Bool)) {
                                        if ((_i > (0 : stdgo.GoInt) : Bool)) {
                                            _p._buf._writeString((", " : stdgo.GoString));
                                        };
_p._printValue(_f.index(_i).__copy__(), _verb, (_depth + (1 : stdgo.GoInt) : stdgo.GoInt));
                                        _i++;
                                    };
                                };
                                _p._buf._writeByte((125 : stdgo.GoUInt8));
                            } else {
                                _p._buf._writeByte((91 : stdgo.GoUInt8));
                                {
                                    var _i = (0 : stdgo.GoInt);
                                    while ((_i < _f.len() : Bool)) {
                                        if ((_i > (0 : stdgo.GoInt) : Bool)) {
                                            _p._buf._writeByte((32 : stdgo.GoUInt8));
                                        };
_p._printValue(_f.index(_i).__copy__(), _verb, (_depth + (1 : stdgo.GoInt) : stdgo.GoInt));
                                        _i++;
                                    };
                                };
                                _p._buf._writeByte((93 : stdgo.GoUInt8));
                            };
                            break;
                            break;
                        } else if (__switchIndex__ == 13 || (__switchIndex__ == -1 && (__value__ == (22u32 : stdgo._internal.reflect.Reflect_Kind.Kind)))) {
                            if (((_depth == (0 : stdgo.GoInt)) && (_f.pointer() != (0 : stdgo.GoUIntptr)) : Bool)) {
                                {
                                    var _a = (_f.elem()?.__copy__() : stdgo._internal.reflect.Reflect_Value.Value);
                                    {
                                        final __value__ = _a.kind();
                                        if (__value__ == ((17u32 : stdgo._internal.reflect.Reflect_Kind.Kind)) || __value__ == ((23u32 : stdgo._internal.reflect.Reflect_Kind.Kind)) || __value__ == ((25u32 : stdgo._internal.reflect.Reflect_Kind.Kind)) || __value__ == ((21u32 : stdgo._internal.reflect.Reflect_Kind.Kind))) {
                                            _p._buf._writeByte((38 : stdgo.GoUInt8));
                                            _p._printValue(_a?.__copy__(), _verb, (_depth + (1 : stdgo.GoInt) : stdgo.GoInt));
                                            return;
                                        };
                                    };
                                };
                            };
                            @:fallthrough {
                                __switchIndex__ = 14;
                                __run__ = true;
                                continue;
                            };
                            break;
                        } else if (__switchIndex__ == 14 || (__switchIndex__ == -1 && (__value__ == ((18u32 : stdgo._internal.reflect.Reflect_Kind.Kind)) || __value__ == ((19u32 : stdgo._internal.reflect.Reflect_Kind.Kind)) || __value__ == ((26u32 : stdgo._internal.reflect.Reflect_Kind.Kind))))) {
                            _p._fmtPointer(_f?.__copy__(), _verb);
                            break;
                            break;
                        } else {
                            _p._unknownType(_f?.__copy__());
                            break;
                        };
                    };
                    break;
                };
            };
        };
    }
    @:keep
    static public function _printArg( _p:stdgo.Ref<stdgo._internal.fmt.Fmt_T_pp.T_pp>, _arg:stdgo.AnyInterface, _verb:stdgo.GoInt32):Void {
        @:recv var _p:stdgo.Ref<stdgo._internal.fmt.Fmt_T_pp.T_pp> = _p;
        _p._arg = _arg;
        _p._value = (new stdgo._internal.reflect.Reflect_Value.Value() : stdgo._internal.reflect.Reflect_Value.Value);
        if (_arg == null) {
            {
                final __value__ = _verb;
                if (__value__ == ((84 : stdgo.GoInt32)) || __value__ == ((118 : stdgo.GoInt32))) {
                    _p._fmt._padString(("<nil>" : stdgo.GoString));
                } else {
                    _p._badVerb(_verb);
                };
            };
            return;
        };
        {
            final __value__ = _verb;
            if (__value__ == ((84 : stdgo.GoInt32))) {
                _p._fmt._fmtS((stdgo._internal.reflect.Reflect_typeOf.typeOf(_arg).string() : stdgo.GoString)?.__copy__());
                return;
            } else if (__value__ == ((112 : stdgo.GoInt32))) {
                _p._fmtPointer(stdgo._internal.reflect.Reflect_valueOf.valueOf(_arg)?.__copy__(), (112 : stdgo.GoInt32));
                return;
            };
        };
        {
            final __type__ = _arg;
            if (stdgo.Go.typeEquals((__type__ : Bool))) {
                var _f:Bool = __type__ == null ? false : __type__.__underlying__() == null ? false : __type__ == null ? false : __type__.__underlying__().value;
                _p._fmtBool(_f, _verb);
            } else if (stdgo.Go.typeEquals((__type__ : stdgo.GoFloat32))) {
                var _f:stdgo.GoFloat32 = __type__ == null ? 0 : __type__.__underlying__() == null ? 0 : __type__ == null ? 0 : __type__.__underlying__().value;
                _p._fmtFloat((_f : stdgo.GoFloat64), (32 : stdgo.GoInt), _verb);
            } else if (stdgo.Go.typeEquals((__type__ : stdgo.GoFloat64))) {
                var _f:stdgo.GoFloat64 = __type__ == null ? 0 : __type__.__underlying__() == null ? 0 : __type__ == null ? 0 : __type__.__underlying__().value;
                _p._fmtFloat(_f, (64 : stdgo.GoInt), _verb);
            } else if (stdgo.Go.typeEquals((__type__ : stdgo.GoComplex64))) {
                var _f:stdgo.GoComplex64 = __type__ == null ? new stdgo.GoComplex64(0, 0) : __type__.__underlying__() == null ? new stdgo.GoComplex64(0, 0) : __type__ == null ? new stdgo.GoComplex64(0, 0) : __type__.__underlying__().value;
                _p._fmtComplex((_f : stdgo.GoComplex128), (64 : stdgo.GoInt), _verb);
            } else if (stdgo.Go.typeEquals((__type__ : stdgo.GoComplex128))) {
                var _f:stdgo.GoComplex128 = __type__ == null ? new stdgo.GoComplex128(0, 0) : __type__.__underlying__() == null ? new stdgo.GoComplex128(0, 0) : __type__ == null ? new stdgo.GoComplex128(0, 0) : __type__.__underlying__().value;
                _p._fmtComplex(_f, (128 : stdgo.GoInt), _verb);
            } else if (stdgo.Go.typeEquals((__type__ : stdgo.GoInt))) {
                var _f:stdgo.GoInt = __type__ == null ? 0 : __type__.__underlying__() == null ? 0 : __type__ == null ? 0 : __type__.__underlying__().value;
                _p._fmtInteger((_f : stdgo.GoUInt64), true, _verb);
            } else if (stdgo.Go.typeEquals((__type__ : stdgo.GoInt8))) {
                var _f:stdgo.GoInt8 = __type__ == null ? 0 : __type__.__underlying__() == null ? 0 : __type__ == null ? 0 : __type__.__underlying__().value;
                _p._fmtInteger((_f : stdgo.GoUInt64), true, _verb);
            } else if (stdgo.Go.typeEquals((__type__ : stdgo.GoInt16))) {
                var _f:stdgo.GoInt16 = __type__ == null ? 0 : __type__.__underlying__() == null ? 0 : __type__ == null ? 0 : __type__.__underlying__().value;
                _p._fmtInteger((_f : stdgo.GoUInt64), true, _verb);
            } else if (stdgo.Go.typeEquals((__type__ : stdgo.GoInt32))) {
                var _f:stdgo.GoInt32 = __type__ == null ? 0 : __type__.__underlying__() == null ? 0 : __type__ == null ? 0 : __type__.__underlying__().value;
                _p._fmtInteger((_f : stdgo.GoUInt64), true, _verb);
            } else if (stdgo.Go.typeEquals((__type__ : stdgo.GoInt64))) {
                var _f:stdgo.GoInt64 = __type__ == null ? 0 : __type__.__underlying__() == null ? 0 : __type__ == null ? 0 : __type__.__underlying__().value;
                _p._fmtInteger((_f : stdgo.GoUInt64), true, _verb);
            } else if (stdgo.Go.typeEquals((__type__ : stdgo.GoUInt))) {
                var _f:stdgo.GoUInt = __type__ == null ? 0 : __type__.__underlying__() == null ? 0 : __type__ == null ? 0 : __type__.__underlying__().value;
                _p._fmtInteger((_f : stdgo.GoUInt64), false, _verb);
            } else if (stdgo.Go.typeEquals((__type__ : stdgo.GoUInt8))) {
                var _f:stdgo.GoUInt8 = __type__ == null ? 0 : __type__.__underlying__() == null ? 0 : __type__ == null ? 0 : __type__.__underlying__().value;
                _p._fmtInteger((_f : stdgo.GoUInt64), false, _verb);
            } else if (stdgo.Go.typeEquals((__type__ : stdgo.GoUInt16))) {
                var _f:stdgo.GoUInt16 = __type__ == null ? 0 : __type__.__underlying__() == null ? 0 : __type__ == null ? 0 : __type__.__underlying__().value;
                _p._fmtInteger((_f : stdgo.GoUInt64), false, _verb);
            } else if (stdgo.Go.typeEquals((__type__ : stdgo.GoUInt32))) {
                var _f:stdgo.GoUInt32 = __type__ == null ? 0 : __type__.__underlying__() == null ? 0 : __type__ == null ? 0 : __type__.__underlying__().value;
                _p._fmtInteger((_f : stdgo.GoUInt64), false, _verb);
            } else if (stdgo.Go.typeEquals((__type__ : stdgo.GoUInt64))) {
                var _f:stdgo.GoUInt64 = __type__ == null ? 0 : __type__.__underlying__() == null ? 0 : __type__ == null ? 0 : __type__.__underlying__().value;
                _p._fmtInteger(_f, false, _verb);
            } else if (stdgo.Go.typeEquals((__type__ : stdgo.GoUIntptr))) {
                var _f:stdgo.GoUIntptr = __type__ == null ? 0 : __type__.__underlying__() == null ? 0 : __type__ == null ? 0 : __type__.__underlying__().value;
                _p._fmtInteger((_f : stdgo.GoUInt64), false, _verb);
            } else if (stdgo.Go.typeEquals((__type__ : stdgo.GoString))) {
                var _f:stdgo.GoString = __type__ == null ? "" : __type__.__underlying__() == null ? "" : __type__ == null ? "" : __type__.__underlying__().value;
                _p._fmtString(_f?.__copy__(), _verb);
            } else if (stdgo.Go.typeEquals((__type__ : stdgo.Slice<stdgo.GoUInt8>))) {
                var _f:stdgo.Slice<stdgo.GoUInt8> = __type__ == null ? (null : stdgo.Slice<stdgo.GoUInt8>) : __type__.__underlying__() == null ? (null : stdgo.Slice<stdgo.GoUInt8>) : __type__ == null ? (null : stdgo.Slice<stdgo.GoUInt8>) : __type__.__underlying__().value;
                _p._fmtBytes(_f, _verb, ("[]byte" : stdgo.GoString));
            } else if (stdgo.Go.typeEquals((__type__ : stdgo._internal.reflect.Reflect_Value.Value))) {
                var _f:stdgo._internal.reflect.Reflect_Value.Value = __type__ == null ? ({} : stdgo._internal.reflect.Reflect_Value.Value) : __type__.__underlying__() == null ? ({} : stdgo._internal.reflect.Reflect_Value.Value) : __type__ == null ? ({} : stdgo._internal.reflect.Reflect_Value.Value) : __type__.__underlying__().value;
                if ((_f.isValid() && _f.canInterface() : Bool)) {
                    _p._arg = _f.interface_();
                    if (_p._handleMethods(_verb)) {
                        return;
                    };
                };
                _p._printValue(_f?.__copy__(), _verb, (0 : stdgo.GoInt));
            } else {
                var _f:stdgo.AnyInterface = __type__?.__underlying__();
                if (!_p._handleMethods(_verb)) {
                    _p._printValue(stdgo._internal.reflect.Reflect_valueOf.valueOf(_f)?.__copy__(), _verb, (0 : stdgo.GoInt));
                };
            };
        };
    }
    @:keep
    static public function _handleMethods( _p:stdgo.Ref<stdgo._internal.fmt.Fmt_T_pp.T_pp>, _verb:stdgo.GoInt32):Bool {
        @:recv var _p:stdgo.Ref<stdgo._internal.fmt.Fmt_T_pp.T_pp> = _p;
        var __deferstack__:Array<Void -> Void> = [];
        var _handled = false;
        try {
            if (_p._erroring) {
                return _handled;
            };
            if (_verb == ((119 : stdgo.GoInt32))) {
                var __tmp__ = try {
                    { _0 : (stdgo.Go.typeAssert((_p._arg : stdgo.Error)) : stdgo.Error), _1 : true };
                } catch(_) {
                    { _0 : (null : stdgo.Error), _1 : false };
                }, __0 = __tmp__._0, _ok = __tmp__._1;
                if ((!_ok || !_p._wrapErrs : Bool)) {
                    _p._badVerb(_verb);
                    return true;
                };
                _verb = (118 : stdgo.GoInt32);
            };
            {
                var __tmp__ = try {
                    { _0 : (stdgo.Go.typeAssert((_p._arg : stdgo._internal.fmt.Fmt_Formatter.Formatter)) : stdgo._internal.fmt.Fmt_Formatter.Formatter), _1 : true };
                } catch(_) {
                    { _0 : (null : stdgo._internal.fmt.Fmt_Formatter.Formatter), _1 : false };
                }, _formatter = __tmp__._0, _ok = __tmp__._1;
                if (_ok) {
                    _handled = true;
                    {
                        var _a0 = _p._arg;
                        var _a1 = _verb;
                        var _a2 = ("Format" : stdgo.GoString);
                        __deferstack__.unshift(() -> _p._catchPanic(_a0, _a1, _a2?.__copy__()));
                    };
                    _formatter.format(stdgo.Go.asInterface(_p), _verb);
                    {
                        for (defer in __deferstack__) {
                            defer();
                        };
                        return _handled;
                    };
                };
            };
            if (_p._fmt._fmtFlags._sharpV) {
                {
                    var __tmp__ = try {
                        { _0 : (stdgo.Go.typeAssert((_p._arg : stdgo._internal.fmt.Fmt_GoStringer.GoStringer)) : stdgo._internal.fmt.Fmt_GoStringer.GoStringer), _1 : true };
                    } catch(_) {
                        { _0 : (null : stdgo._internal.fmt.Fmt_GoStringer.GoStringer), _1 : false };
                    }, _stringer = __tmp__._0, _ok = __tmp__._1;
                    if (_ok) {
                        _handled = true;
                        {
                            var _a0 = _p._arg;
                            var _a1 = _verb;
                            var _a2 = ("GoString" : stdgo.GoString);
                            __deferstack__.unshift(() -> _p._catchPanic(_a0, _a1, _a2?.__copy__()));
                        };
                        _p._fmt._fmtS(_stringer.goString()?.__copy__());
                        {
                            for (defer in __deferstack__) {
                                defer();
                            };
                            return _handled;
                        };
                    };
                };
            } else {
                {
                    final __value__ = _verb;
                    if (__value__ == ((118 : stdgo.GoInt32)) || __value__ == ((115 : stdgo.GoInt32)) || __value__ == ((120 : stdgo.GoInt32)) || __value__ == ((88 : stdgo.GoInt32)) || __value__ == ((113 : stdgo.GoInt32))) {
                        {
                            final __type__ = _p._arg;
                            if (stdgo.Go.typeEquals((__type__ : stdgo.Error))) {
                                var _v:stdgo.Error = __type__ == null ? (null : stdgo.Error) : __type__.__underlying__() == null ? (null : stdgo.Error) : __type__ == null ? (null : stdgo.Error) : __type__.__underlying__().value;
                                _handled = true;
                                {
                                    var _a0 = _p._arg;
                                    var _a1 = _verb;
                                    var _a2 = ("Error" : stdgo.GoString);
                                    __deferstack__.unshift(() -> _p._catchPanic(_a0, _a1, _a2?.__copy__()));
                                };
                                _p._fmtString(_v.error()?.__copy__(), _verb);
                                {
                                    for (defer in __deferstack__) {
                                        defer();
                                    };
                                    return _handled;
                                };
                            } else if (stdgo.Go.typeEquals((__type__ : stdgo._internal.fmt.Fmt_Stringer.Stringer))) {
                                var _v:stdgo._internal.fmt.Fmt_Stringer.Stringer = __type__ == null ? (null : stdgo._internal.fmt.Fmt_Stringer.Stringer) : __type__.__underlying__() == null ? (null : stdgo._internal.fmt.Fmt_Stringer.Stringer) : __type__ == null ? (null : stdgo._internal.fmt.Fmt_Stringer.Stringer) : __type__.__underlying__().value;
                                _handled = true;
                                {
                                    var _a0 = _p._arg;
                                    var _a1 = _verb;
                                    var _a2 = ("String" : stdgo.GoString);
                                    __deferstack__.unshift(() -> _p._catchPanic(_a0, _a1, _a2?.__copy__()));
                                };
                                _p._fmtString((_v.string() : stdgo.GoString)?.__copy__(), _verb);
                                {
                                    for (defer in __deferstack__) {
                                        defer();
                                    };
                                    return _handled;
                                };
                            };
                        };
                    };
                };
            };
            {
                for (defer in __deferstack__) {
                    defer();
                };
                return false;
            };
            {
                for (defer in __deferstack__) {
                    defer();
                };
                if (stdgo.Go.recover_exception != null) throw stdgo.Go.recover_exception;
                return _handled;
            };
        } catch(__exception__) {
            var exe:Dynamic = __exception__.native;
            if ((exe is haxe.ValueException)) exe = exe.value;
            if (!(exe is stdgo.AnyInterface.AnyInterfaceData)) {
                if (__exception__.message == "__return__") throw "__return__";
                exe = stdgo.Go.toInterface(__exception__.message);
            };
            stdgo.Go.recover_exception = exe;
            for (defer in __deferstack__) {
                defer();
            };
            if (stdgo.Go.recover_exception != null) throw stdgo.Go.recover_exception;
            return _handled;
        };
    }
    @:keep
    static public function _catchPanic( _p:stdgo.Ref<stdgo._internal.fmt.Fmt_T_pp.T_pp>, _arg:stdgo.AnyInterface, _verb:stdgo.GoInt32, _method:stdgo.GoString):Void {
        @:recv var _p:stdgo.Ref<stdgo._internal.fmt.Fmt_T_pp.T_pp> = _p;
        {
            var _err = ({
                final r = stdgo.Go.recover_exception;
                stdgo.Go.recover_exception = null;
                r;
            } : stdgo.AnyInterface);
            if (_err != null) {
                {
                    var _v = (stdgo._internal.reflect.Reflect_valueOf.valueOf(_arg)?.__copy__() : stdgo._internal.reflect.Reflect_Value.Value);
                    if (((_v.kind() == (22u32 : stdgo._internal.reflect.Reflect_Kind.Kind)) && _v.isNil() : Bool)) {
                        _p._buf._writeString(("<nil>" : stdgo.GoString));
                        return;
                    };
                };
                if (_p._panicking) {
                    throw stdgo.Go.toInterface(_err);
                };
                var _oldFlags = (_p._fmt._fmtFlags?.__copy__() : stdgo._internal.fmt.Fmt_T_fmtFlags.T_fmtFlags);
                _p._fmt._clearflags();
                _p._buf._writeString(("%!" : stdgo.GoString));
                _p._buf._writeRune(_verb);
                _p._buf._writeString(("(PANIC=" : stdgo.GoString));
                _p._buf._writeString(_method?.__copy__());
                _p._buf._writeString((" method: " : stdgo.GoString));
                _p._panicking = true;
                _p._printArg(_err, (118 : stdgo.GoInt32));
                _p._panicking = false;
                _p._buf._writeByte((41 : stdgo.GoUInt8));
                _p._fmt._fmtFlags = _oldFlags?.__copy__();
            };
        };
    }
    @:keep
    static public function _fmtPointer( _p:stdgo.Ref<stdgo._internal.fmt.Fmt_T_pp.T_pp>, _value:stdgo._internal.reflect.Reflect_Value.Value, _verb:stdgo.GoInt32):Void {
        @:recv var _p:stdgo.Ref<stdgo._internal.fmt.Fmt_T_pp.T_pp> = _p;
        var _u:stdgo.GoUIntptr = (0 : stdgo.GoUIntptr);
        {
            final __value__ = _value.kind();
            if (__value__ == ((18u32 : stdgo._internal.reflect.Reflect_Kind.Kind)) || __value__ == ((19u32 : stdgo._internal.reflect.Reflect_Kind.Kind)) || __value__ == ((21u32 : stdgo._internal.reflect.Reflect_Kind.Kind)) || __value__ == ((22u32 : stdgo._internal.reflect.Reflect_Kind.Kind)) || __value__ == ((23u32 : stdgo._internal.reflect.Reflect_Kind.Kind)) || __value__ == ((26u32 : stdgo._internal.reflect.Reflect_Kind.Kind))) {
                _u = _value.pointer();
            } else {
                _p._badVerb(_verb);
                return;
            };
        };
        {
            final __value__ = _verb;
            if (__value__ == ((118 : stdgo.GoInt32))) {
                if (_p._fmt._fmtFlags._sharpV) {
                    _p._buf._writeByte((40 : stdgo.GoUInt8));
                    _p._buf._writeString((_value.type().string() : stdgo.GoString)?.__copy__());
                    _p._buf._writeString((")(" : stdgo.GoString));
                    if (_u == ((0 : stdgo.GoUIntptr))) {
                        _p._buf._writeString(("nil" : stdgo.GoString));
                    } else {
                        _p._fmt0x64((_u : stdgo.GoUInt64), true);
                    };
                    _p._buf._writeByte((41 : stdgo.GoUInt8));
                } else {
                    if (_u == ((0 : stdgo.GoUIntptr))) {
                        _p._fmt._padString(("<nil>" : stdgo.GoString));
                    } else {
                        _p._fmt0x64((_u : stdgo.GoUInt64), !_p._fmt._fmtFlags._sharp);
                    };
                };
            } else if (__value__ == ((112 : stdgo.GoInt32))) {
                _p._fmt0x64((_u : stdgo.GoUInt64), !_p._fmt._fmtFlags._sharp);
            } else if (__value__ == ((98 : stdgo.GoInt32)) || __value__ == ((111 : stdgo.GoInt32)) || __value__ == ((100 : stdgo.GoInt32)) || __value__ == ((120 : stdgo.GoInt32)) || __value__ == ((88 : stdgo.GoInt32))) {
                _p._fmtInteger((_u : stdgo.GoUInt64), false, _verb);
            } else {
                _p._badVerb(_verb);
            };
        };
    }
    @:keep
    static public function _fmtBytes( _p:stdgo.Ref<stdgo._internal.fmt.Fmt_T_pp.T_pp>, _v:stdgo.Slice<stdgo.GoUInt8>, _verb:stdgo.GoInt32, _typeString:stdgo.GoString):Void {
        @:recv var _p:stdgo.Ref<stdgo._internal.fmt.Fmt_T_pp.T_pp> = _p;
        {
            final __value__ = _verb;
            if (__value__ == ((118 : stdgo.GoInt32)) || __value__ == ((100 : stdgo.GoInt32))) {
                if (_p._fmt._fmtFlags._sharpV) {
                    _p._buf._writeString(_typeString?.__copy__());
                    if (_v == null) {
                        _p._buf._writeString(("(nil)" : stdgo.GoString));
                        return;
                    };
                    _p._buf._writeByte((123 : stdgo.GoUInt8));
                    for (_i => _c in _v) {
                        if ((_i > (0 : stdgo.GoInt) : Bool)) {
                            _p._buf._writeString((", " : stdgo.GoString));
                        };
                        _p._fmt0x64((_c : stdgo.GoUInt64), true);
                    };
                    _p._buf._writeByte((125 : stdgo.GoUInt8));
                } else {
                    _p._buf._writeByte((91 : stdgo.GoUInt8));
                    for (_i => _c in _v) {
                        if ((_i > (0 : stdgo.GoInt) : Bool)) {
                            _p._buf._writeByte((32 : stdgo.GoUInt8));
                        };
                        _p._fmt._fmtInteger((_c : stdgo.GoUInt64), (10 : stdgo.GoInt), false, _verb, ("0123456789abcdefx" : stdgo.GoString));
                    };
                    _p._buf._writeByte((93 : stdgo.GoUInt8));
                };
            } else if (__value__ == ((115 : stdgo.GoInt32))) {
                _p._fmt._fmtBs(_v);
            } else if (__value__ == ((120 : stdgo.GoInt32))) {
                _p._fmt._fmtBx(_v, ("0123456789abcdefx" : stdgo.GoString));
            } else if (__value__ == ((88 : stdgo.GoInt32))) {
                _p._fmt._fmtBx(_v, ("0123456789ABCDEFX" : stdgo.GoString));
            } else if (__value__ == ((113 : stdgo.GoInt32))) {
                _p._fmt._fmtQ((_v : stdgo.GoString)?.__copy__());
            } else {
                _p._printValue(stdgo._internal.reflect.Reflect_valueOf.valueOf(stdgo.Go.toInterface(_v))?.__copy__(), _verb, (0 : stdgo.GoInt));
            };
        };
    }
    @:keep
    static public function _fmtString( _p:stdgo.Ref<stdgo._internal.fmt.Fmt_T_pp.T_pp>, _v:stdgo.GoString, _verb:stdgo.GoInt32):Void {
        @:recv var _p:stdgo.Ref<stdgo._internal.fmt.Fmt_T_pp.T_pp> = _p;
        {
            final __value__ = _verb;
            if (__value__ == ((118 : stdgo.GoInt32))) {
                if (_p._fmt._fmtFlags._sharpV) {
                    _p._fmt._fmtQ(_v?.__copy__());
                } else {
                    _p._fmt._fmtS(_v?.__copy__());
                };
            } else if (__value__ == ((115 : stdgo.GoInt32))) {
                _p._fmt._fmtS(_v?.__copy__());
            } else if (__value__ == ((120 : stdgo.GoInt32))) {
                _p._fmt._fmtSx(_v?.__copy__(), ("0123456789abcdefx" : stdgo.GoString));
            } else if (__value__ == ((88 : stdgo.GoInt32))) {
                _p._fmt._fmtSx(_v?.__copy__(), ("0123456789ABCDEFX" : stdgo.GoString));
            } else if (__value__ == ((113 : stdgo.GoInt32))) {
                _p._fmt._fmtQ(_v?.__copy__());
            } else {
                _p._badVerb(_verb);
            };
        };
    }
    @:keep
    static public function _fmtComplex( _p:stdgo.Ref<stdgo._internal.fmt.Fmt_T_pp.T_pp>, _v:stdgo.GoComplex128, _size:stdgo.GoInt, _verb:stdgo.GoInt32):Void {
        @:recv var _p:stdgo.Ref<stdgo._internal.fmt.Fmt_T_pp.T_pp> = _p;
        {
            final __value__ = _verb;
            if (__value__ == ((118 : stdgo.GoInt32)) || __value__ == ((98 : stdgo.GoInt32)) || __value__ == ((103 : stdgo.GoInt32)) || __value__ == ((71 : stdgo.GoInt32)) || __value__ == ((120 : stdgo.GoInt32)) || __value__ == ((88 : stdgo.GoInt32)) || __value__ == ((102 : stdgo.GoInt32)) || __value__ == ((70 : stdgo.GoInt32)) || __value__ == ((101 : stdgo.GoInt32)) || __value__ == ((69 : stdgo.GoInt32))) {
                var _oldPlus = (_p._fmt._fmtFlags._plus : Bool);
                _p._buf._writeByte((40 : stdgo.GoUInt8));
                _p._fmtFloat(_v.real, (_size / (2 : stdgo.GoInt) : stdgo.GoInt), _verb);
                _p._fmt._fmtFlags._plus = true;
                _p._fmtFloat(_v.imag, (_size / (2 : stdgo.GoInt) : stdgo.GoInt), _verb);
                _p._buf._writeString(("i)" : stdgo.GoString));
                _p._fmt._fmtFlags._plus = _oldPlus;
            } else {
                _p._badVerb(_verb);
            };
        };
    }
    @:keep
    static public function _fmtFloat( _p:stdgo.Ref<stdgo._internal.fmt.Fmt_T_pp.T_pp>, _v:stdgo.GoFloat64, _size:stdgo.GoInt, _verb:stdgo.GoInt32):Void {
        @:recv var _p:stdgo.Ref<stdgo._internal.fmt.Fmt_T_pp.T_pp> = _p;
        {
            final __value__ = _verb;
            if (__value__ == ((118 : stdgo.GoInt32))) {
                _p._fmt._fmtFloat(_v, _size, (103 : stdgo.GoInt32), (-1 : stdgo.GoInt));
            } else if (__value__ == ((98 : stdgo.GoInt32)) || __value__ == ((103 : stdgo.GoInt32)) || __value__ == ((71 : stdgo.GoInt32)) || __value__ == ((120 : stdgo.GoInt32)) || __value__ == ((88 : stdgo.GoInt32))) {
                _p._fmt._fmtFloat(_v, _size, _verb, (-1 : stdgo.GoInt));
            } else if (__value__ == ((102 : stdgo.GoInt32)) || __value__ == ((101 : stdgo.GoInt32)) || __value__ == ((69 : stdgo.GoInt32))) {
                _p._fmt._fmtFloat(_v, _size, _verb, (6 : stdgo.GoInt));
            } else if (__value__ == ((70 : stdgo.GoInt32))) {
                _p._fmt._fmtFloat(_v, _size, (102 : stdgo.GoInt32), (6 : stdgo.GoInt));
            } else {
                _p._badVerb(_verb);
            };
        };
    }
    @:keep
    static public function _fmtInteger( _p:stdgo.Ref<stdgo._internal.fmt.Fmt_T_pp.T_pp>, _v:stdgo.GoUInt64, _isSigned:Bool, _verb:stdgo.GoInt32):Void {
        @:recv var _p:stdgo.Ref<stdgo._internal.fmt.Fmt_T_pp.T_pp> = _p;
        {
            final __value__ = _verb;
            if (__value__ == ((118 : stdgo.GoInt32))) {
                if ((_p._fmt._fmtFlags._sharpV && !_isSigned : Bool)) {
                    _p._fmt0x64(_v, true);
                } else {
                    _p._fmt._fmtInteger(_v, (10 : stdgo.GoInt), _isSigned, _verb, ("0123456789abcdefx" : stdgo.GoString));
                };
            } else if (__value__ == ((100 : stdgo.GoInt32))) {
                _p._fmt._fmtInteger(_v, (10 : stdgo.GoInt), _isSigned, _verb, ("0123456789abcdefx" : stdgo.GoString));
            } else if (__value__ == ((98 : stdgo.GoInt32))) {
                _p._fmt._fmtInteger(_v, (2 : stdgo.GoInt), _isSigned, _verb, ("0123456789abcdefx" : stdgo.GoString));
            } else if (__value__ == ((111 : stdgo.GoInt32)) || __value__ == ((79 : stdgo.GoInt32))) {
                _p._fmt._fmtInteger(_v, (8 : stdgo.GoInt), _isSigned, _verb, ("0123456789abcdefx" : stdgo.GoString));
            } else if (__value__ == ((120 : stdgo.GoInt32))) {
                _p._fmt._fmtInteger(_v, (16 : stdgo.GoInt), _isSigned, _verb, ("0123456789abcdefx" : stdgo.GoString));
            } else if (__value__ == ((88 : stdgo.GoInt32))) {
                _p._fmt._fmtInteger(_v, (16 : stdgo.GoInt), _isSigned, _verb, ("0123456789ABCDEFX" : stdgo.GoString));
            } else if (__value__ == ((99 : stdgo.GoInt32))) {
                _p._fmt._fmtC(_v);
            } else if (__value__ == ((113 : stdgo.GoInt32))) {
                _p._fmt._fmtQc(_v);
            } else if (__value__ == ((85 : stdgo.GoInt32))) {
                _p._fmt._fmtUnicode(_v);
            } else {
                _p._badVerb(_verb);
            };
        };
    }
    @:keep
    static public function _fmt0x64( _p:stdgo.Ref<stdgo._internal.fmt.Fmt_T_pp.T_pp>, _v:stdgo.GoUInt64, _leading0x:Bool):Void {
        @:recv var _p:stdgo.Ref<stdgo._internal.fmt.Fmt_T_pp.T_pp> = _p;
        var _sharp = (_p._fmt._fmtFlags._sharp : Bool);
        _p._fmt._fmtFlags._sharp = _leading0x;
        _p._fmt._fmtInteger(_v, (16 : stdgo.GoInt), false, (118 : stdgo.GoInt32), ("0123456789abcdefx" : stdgo.GoString));
        _p._fmt._fmtFlags._sharp = _sharp;
    }
    @:keep
    static public function _fmtBool( _p:stdgo.Ref<stdgo._internal.fmt.Fmt_T_pp.T_pp>, _v:Bool, _verb:stdgo.GoInt32):Void {
        @:recv var _p:stdgo.Ref<stdgo._internal.fmt.Fmt_T_pp.T_pp> = _p;
        {
            final __value__ = _verb;
            if (__value__ == ((116 : stdgo.GoInt32)) || __value__ == ((118 : stdgo.GoInt32))) {
                _p._fmt._fmtBoolean(_v);
            } else {
                _p._badVerb(_verb);
            };
        };
    }
    @:keep
    static public function _badVerb( _p:stdgo.Ref<stdgo._internal.fmt.Fmt_T_pp.T_pp>, _verb:stdgo.GoInt32):Void {
        @:recv var _p:stdgo.Ref<stdgo._internal.fmt.Fmt_T_pp.T_pp> = _p;
        _p._erroring = true;
        _p._buf._writeString(("%!" : stdgo.GoString));
        _p._buf._writeRune(_verb);
        _p._buf._writeByte((40 : stdgo.GoUInt8));
        if (_p._arg != null) {
            _p._buf._writeString((stdgo._internal.reflect.Reflect_typeOf.typeOf(_p._arg).string() : stdgo.GoString)?.__copy__());
            _p._buf._writeByte((61 : stdgo.GoUInt8));
            _p._printArg(_p._arg, (118 : stdgo.GoInt32));
        } else if (_p._value.isValid()) {
            _p._buf._writeString((_p._value.type().string() : stdgo.GoString)?.__copy__());
            _p._buf._writeByte((61 : stdgo.GoUInt8));
            _p._printValue(_p._value?.__copy__(), (118 : stdgo.GoInt32), (0 : stdgo.GoInt));
        } else {
            _p._buf._writeString(("<nil>" : stdgo.GoString));
        };
        _p._buf._writeByte((41 : stdgo.GoUInt8));
        _p._erroring = false;
    }
    @:keep
    static public function _unknownType( _p:stdgo.Ref<stdgo._internal.fmt.Fmt_T_pp.T_pp>, _v:stdgo._internal.reflect.Reflect_Value.Value):Void {
        @:recv var _p:stdgo.Ref<stdgo._internal.fmt.Fmt_T_pp.T_pp> = _p;
        if (!_v.isValid()) {
            _p._buf._writeString(("<nil>" : stdgo.GoString));
            return;
        };
        _p._buf._writeByte((63 : stdgo.GoUInt8));
        _p._buf._writeString((_v.type().string() : stdgo.GoString)?.__copy__());
        _p._buf._writeByte((63 : stdgo.GoUInt8));
    }
    @:keep
    static public function writeString( _p:stdgo.Ref<stdgo._internal.fmt.Fmt_T_pp.T_pp>, _s:stdgo.GoString):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } {
        @:recv var _p:stdgo.Ref<stdgo._internal.fmt.Fmt_T_pp.T_pp> = _p;
        var _ret = (0 : stdgo.GoInt), _err = (null : stdgo.Error);
        _p._buf._writeString(_s?.__copy__());
        return { _0 : (_s.length), _1 : (null : stdgo.Error) };
    }
    @:keep
    static public function write( _p:stdgo.Ref<stdgo._internal.fmt.Fmt_T_pp.T_pp>, _b:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } {
        @:recv var _p:stdgo.Ref<stdgo._internal.fmt.Fmt_T_pp.T_pp> = _p;
        var _ret = (0 : stdgo.GoInt), _err = (null : stdgo.Error);
        _p._buf._write(_b);
        return { _0 : (_b.length), _1 : (null : stdgo.Error) };
    }
    @:keep
    static public function flag( _p:stdgo.Ref<stdgo._internal.fmt.Fmt_T_pp.T_pp>, _b:stdgo.GoInt):Bool {
        @:recv var _p:stdgo.Ref<stdgo._internal.fmt.Fmt_T_pp.T_pp> = _p;
        {
            final __value__ = _b;
            if (__value__ == ((45 : stdgo.GoInt))) {
                return _p._fmt._fmtFlags._minus;
            } else if (__value__ == ((43 : stdgo.GoInt))) {
                return (_p._fmt._fmtFlags._plus || _p._fmt._fmtFlags._plusV : Bool);
            } else if (__value__ == ((35 : stdgo.GoInt))) {
                return (_p._fmt._fmtFlags._sharp || _p._fmt._fmtFlags._sharpV : Bool);
            } else if (__value__ == ((32 : stdgo.GoInt))) {
                return _p._fmt._fmtFlags._space;
            } else if (__value__ == ((48 : stdgo.GoInt))) {
                return _p._fmt._fmtFlags._zero;
            };
        };
        return false;
    }
    @:keep
    static public function precision( _p:stdgo.Ref<stdgo._internal.fmt.Fmt_T_pp.T_pp>):{ var _0 : stdgo.GoInt; var _1 : Bool; } {
        @:recv var _p:stdgo.Ref<stdgo._internal.fmt.Fmt_T_pp.T_pp> = _p;
        var _prec = (0 : stdgo.GoInt), _ok = false;
        return { _0 : _p._fmt._prec, _1 : _p._fmt._fmtFlags._precPresent };
    }
    @:keep
    static public function width( _p:stdgo.Ref<stdgo._internal.fmt.Fmt_T_pp.T_pp>):{ var _0 : stdgo.GoInt; var _1 : Bool; } {
        @:recv var _p:stdgo.Ref<stdgo._internal.fmt.Fmt_T_pp.T_pp> = _p;
        var _wid = (0 : stdgo.GoInt), _ok = false;
        return { _0 : _p._fmt._wid, _1 : _p._fmt._fmtFlags._widPresent };
    }
    @:keep
    static public function _free( _p:stdgo.Ref<stdgo._internal.fmt.Fmt_T_pp.T_pp>):Void {
        @:recv var _p:stdgo.Ref<stdgo._internal.fmt.Fmt_T_pp.T_pp> = _p;
        if ((_p._buf.capacity > (65536 : stdgo.GoInt) : Bool)) {
            _p._buf = null;
        } else {
            _p._buf = (_p._buf.__slice__(0, (0 : stdgo.GoInt)) : stdgo._internal.fmt.Fmt_T_buffer.T_buffer);
        };
        if ((_p._wrappedErrs.capacity > (8 : stdgo.GoInt) : Bool)) {
            _p._wrappedErrs = (null : stdgo.Slice<stdgo.GoInt>);
        };
        _p._arg = (null : stdgo.AnyInterface);
        _p._value = (new stdgo._internal.reflect.Reflect_Value.Value() : stdgo._internal.reflect.Reflect_Value.Value);
        _p._wrappedErrs = (_p._wrappedErrs.__slice__(0, (0 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoInt>);
        stdgo._internal.fmt.Fmt__ppFree._ppFree.put(stdgo.Go.toInterface(stdgo.Go.asInterface(_p)));
    }
}
