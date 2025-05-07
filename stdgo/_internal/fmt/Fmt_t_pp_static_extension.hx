package stdgo._internal.fmt;
@:keep @:allow(stdgo._internal.fmt.Fmt.T_pp_asInterface) class T_pp_static_extension {
    @:keep
    @:tdfield
    static public function _doPrintln( _p:stdgo.Ref<stdgo._internal.fmt.Fmt_t_pp.T_pp>, _a:stdgo.Slice<stdgo.AnyInterface>):Void {
        @:recv var _p:stdgo.Ref<stdgo._internal.fmt.Fmt_t_pp.T_pp> = _p;
        //"file:///home/runner/.go/go1.21.3/src/fmt/print.go#L1219"
        for (_argNum => _arg in _a) {
            //"file:///home/runner/.go/go1.21.3/src/fmt/print.go#L1220"
            if ((_argNum > (0 : stdgo.GoInt) : Bool)) {
                //"file:///home/runner/.go/go1.21.3/src/fmt/print.go#L1221"
                (@:checkr _p ?? throw "null pointer dereference")._buf._writeByte((32 : stdgo.GoUInt8));
            };
            //"file:///home/runner/.go/go1.21.3/src/fmt/print.go#L1223"
            _p._printArg(_arg, (118 : stdgo.GoInt32));
        };
        //"file:///home/runner/.go/go1.21.3/src/fmt/print.go#L1225"
        (@:checkr _p ?? throw "null pointer dereference")._buf._writeByte((10 : stdgo.GoUInt8));
    }
    @:keep
    @:tdfield
    static public function _doPrint( _p:stdgo.Ref<stdgo._internal.fmt.Fmt_t_pp.T_pp>, _a:stdgo.Slice<stdgo.AnyInterface>):Void {
        @:recv var _p:stdgo.Ref<stdgo._internal.fmt.Fmt_t_pp.T_pp> = _p;
        var _prevString = (false : Bool);
        //"file:///home/runner/.go/go1.21.3/src/fmt/print.go#L1205"
        for (_argNum => _arg in _a) {
            var _isString = ((_arg != null) && (stdgo._internal.reflect.Reflect_typeof.typeOf(_arg).kind() == (24u32 : stdgo._internal.reflect.Reflect_kind.Kind)) : Bool);
            //"file:///home/runner/.go/go1.21.3/src/fmt/print.go#L1208"
            if ((((_argNum > (0 : stdgo.GoInt) : Bool) && !_isString : Bool) && !_prevString : Bool)) {
                //"file:///home/runner/.go/go1.21.3/src/fmt/print.go#L1209"
                (@:checkr _p ?? throw "null pointer dereference")._buf._writeByte((32 : stdgo.GoUInt8));
            };
            //"file:///home/runner/.go/go1.21.3/src/fmt/print.go#L1211"
            _p._printArg(_arg, (118 : stdgo.GoInt32));
            _prevString = _isString;
        };
    }
    @:keep
    @:tdfield
    static public function _doPrintf( _p:stdgo.Ref<stdgo._internal.fmt.Fmt_t_pp.T_pp>, _format:stdgo.GoString, _a:stdgo.Slice<stdgo.AnyInterface>):Void {
        @:recv var _p:stdgo.Ref<stdgo._internal.fmt.Fmt_t_pp.T_pp> = _p;
        var _lasti_4:stdgo.GoInt = (0 : stdgo.GoInt);
        var _i_3:stdgo.GoInt = (0 : stdgo.GoInt);
        var _i_8:stdgo.GoInt = (0 : stdgo.GoInt);
        var _c_5:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var _simpleFormatBreak = false;
        var _argNum_1:stdgo.GoInt = (0 : stdgo.GoInt);
        var _end_0:stdgo.GoInt = (0 : stdgo.GoInt);
        var _arg_9:stdgo.AnyInterface = (null : stdgo.AnyInterface);
        var _size_7:stdgo.GoInt = (0 : stdgo.GoInt);
        var _verb_6:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _formatLoopBreak = false;
        var _afterIndex_2:Bool = false;
        var _gotoNext = 0i64;
        _gotoNext == ((0i64 : stdgo.GoInt));
        //"file://#L0"
        while (_gotoNext != ((-1i64 : stdgo.GoInt))) {
            //"file://#L0"
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i64)) {
                    _end_0 = (_format.length);
                    _argNum_1 = (0 : stdgo.GoInt);
                    _afterIndex_2 = false;
                    (@:checkr _p ?? throw "null pointer dereference")._reordered = false;
                    _gotoNext = 4109803i64;
                } else if (__value__ == (4109803i64)) {
                    _i_3 = (0 : stdgo.GoInt);
                    _formatLoopBreak = false;
                    _gotoNext = 4109816i64;
                } else if (__value__ == (4109816i64)) {
                    //"file://#L0"
                    if (!_formatLoopBreak && ((_i_3 < _end_0 : Bool))) {
                        _gotoNext = 4109837i64;
                    } else {
                        _gotoNext = 4113647i64;
                    };
                } else if (__value__ == (4109837i64)) {
                    (@:checkr _p ?? throw "null pointer dereference")._goodArgNum = true;
                    _lasti_4 = _i_3;
                    0i64;
                    _gotoNext = 4109876i64;
                } else if (__value__ == (4109876i64)) {
                    //"file://#L0"
                    if (((_i_3 < _end_0 : Bool) && (_format[(_i_3 : stdgo.GoInt)] != (37 : stdgo.GoUInt8)) : Bool)) {
                        _gotoNext = 4109908i64;
                    } else {
                        _gotoNext = 4109923i64;
                    };
                } else if (__value__ == (4109908i64)) {
                    //"file:///home/runner/.go/go1.21.3/src/fmt/print.go#L1031"
                    _i_3++;
                    _gotoNext = 4109876i64;
                } else if (__value__ == (4109923i64)) {
                    //"file:///home/runner/.go/go1.21.3/src/fmt/print.go#L1033"
                    if ((_i_3 > _lasti_4 : Bool)) {
                        _gotoNext = 4109936i64;
                    } else {
                        _gotoNext = 4109982i64;
                    };
                } else if (__value__ == (4109936i64)) {
                    //"file:///home/runner/.go/go1.21.3/src/fmt/print.go#L1034"
                    (@:checkr _p ?? throw "null pointer dereference")._buf._writeString((_format.__slice__(_lasti_4, _i_3) : stdgo.GoString)?.__copy__());
                    _gotoNext = 4109982i64;
                } else if (__value__ == (4109982i64)) {
                    //"file:///home/runner/.go/go1.21.3/src/fmt/print.go#L1036"
                    if ((_i_3 >= _end_0 : Bool)) {
                        _gotoNext = 4109994i64;
                    } else {
                        _gotoNext = 4110070i64;
                    };
                } else if (__value__ == (4109994i64)) {
                    _gotoNext = 4113647i64;
                } else if (__value__ == (4110070i64)) {
                    //"file:///home/runner/.go/go1.21.3/src/fmt/print.go#L1042"
                    _i_3++;
                    //"file:///home/runner/.go/go1.21.3/src/fmt/print.go#L1045"
                    (@:checkr _p ?? throw "null pointer dereference")._fmt._clearflags();
                    _gotoNext = 4110120i64;
                } else if (__value__ == (4110120i64)) {
                    0i64;
                    _simpleFormatBreak = false;
                    _gotoNext = 4110136i64;
                } else if (__value__ == (4110136i64)) {
                    //"file://#L0"
                    if (!_simpleFormatBreak && ((_i_3 < _end_0 : Bool))) {
                        _gotoNext = 4110155i64;
                    } else {
                        _gotoNext = 4111190i64;
                    };
                } else if (__value__ == (4110151i64)) {
                    //"file:///home/runner/.go/go1.21.3/src/fmt/print.go#L1047"
                    _i_3++;
                    _gotoNext = 4110136i64;
                } else if (__value__ == (4110155i64)) {
                    _c_5 = _format[(_i_3 : stdgo.GoInt)];
                    _gotoNext = 4110178i64;
                } else if (__value__ == (4110178i64)) {
                    //"file:///home/runner/.go/go1.21.3/src/fmt/print.go#L1049"
                    {
                        final __value__ = _c_5;
                        if (__value__ == ((35 : stdgo.GoUInt8))) {
                            _gotoNext = 4110192i64;
                        } else if (__value__ == ((48 : stdgo.GoUInt8))) {
                            _gotoNext = 4110228i64;
                        } else if (__value__ == ((43 : stdgo.GoUInt8))) {
                            _gotoNext = 4110311i64;
                        } else if (__value__ == ((45 : stdgo.GoUInt8))) {
                            _gotoNext = 4110346i64;
                        } else if (__value__ == ((32 : stdgo.GoUInt8))) {
                            _gotoNext = 4110444i64;
                        } else {
                            _gotoNext = 4110480i64;
                        };
                    };
                } else if (__value__ == (4110192i64)) {
                    (@:checkr _p ?? throw "null pointer dereference")._fmt._fmtFlags._sharp = true;
                    _gotoNext = 4110151i64;
                } else if (__value__ == (4110228i64)) {
                    (@:checkr _p ?? throw "null pointer dereference")._fmt._fmtFlags._zero = !(@:checkr _p ?? throw "null pointer dereference")._fmt._fmtFlags._minus;
                    _gotoNext = 4110151i64;
                } else if (__value__ == (4110311i64)) {
                    (@:checkr _p ?? throw "null pointer dereference")._fmt._fmtFlags._plus = true;
                    _gotoNext = 4110151i64;
                } else if (__value__ == (4110346i64)) {
                    (@:checkr _p ?? throw "null pointer dereference")._fmt._fmtFlags._minus = true;
                    (@:checkr _p ?? throw "null pointer dereference")._fmt._fmtFlags._zero = false;
                    _gotoNext = 4110151i64;
                } else if (__value__ == (4110444i64)) {
                    (@:checkr _p ?? throw "null pointer dereference")._fmt._fmtFlags._space = true;
                    _gotoNext = 4110151i64;
                } else if (__value__ == (4110480i64)) {
                    //"file:///home/runner/.go/go1.21.3/src/fmt/print.go#L1064"
                    if (((((97 : stdgo.GoUInt8) <= _c_5 : Bool) && (_c_5 <= (122 : stdgo.GoUInt8) : Bool) : Bool) && (_argNum_1 < (_a.length) : Bool) : Bool)) {
                        _gotoNext = 4110657i64;
                    } else {
                        _gotoNext = 4111115i64;
                    };
                } else if (__value__ == (4110657i64)) {
                    _gotoNext = 4110664i64;
                } else if (__value__ == (4110664i64)) {
                    //"file:///home/runner/.go/go1.21.3/src/fmt/print.go#L1065"
                    {
                        final __value__ = _c_5;
                        if (__value__ == ((119 : stdgo.GoUInt8))) {
                            _gotoNext = 4110680i64;
                        } else if (__value__ == ((118 : stdgo.GoUInt8))) {
                            _gotoNext = 4110765i64;
                        } else {
                            _gotoNext = 4110950i64;
                        };
                    };
                } else if (__value__ == (4110680i64)) {
                    (@:checkr _p ?? throw "null pointer dereference")._wrappedErrs = ((@:checkr _p ?? throw "null pointer dereference")._wrappedErrs.__append__(_argNum_1) : stdgo.Slice<stdgo.GoInt>);
                    _gotoNext = 4110765i64;
                } else if (__value__ == (4110765i64)) {
                    (@:checkr _p ?? throw "null pointer dereference")._fmt._fmtFlags._sharpV = (@:checkr _p ?? throw "null pointer dereference")._fmt._fmtFlags._sharp;
                    (@:checkr _p ?? throw "null pointer dereference")._fmt._fmtFlags._sharp = false;
                    (@:checkr _p ?? throw "null pointer dereference")._fmt._fmtFlags._plusV = (@:checkr _p ?? throw "null pointer dereference")._fmt._fmtFlags._plus;
                    (@:checkr _p ?? throw "null pointer dereference")._fmt._fmtFlags._plus = false;
                    _gotoNext = 4110950i64;
                } else if (__value__ == (4110950i64)) {
                    //"file:///home/runner/.go/go1.21.3/src/fmt/print.go#L1077"
                    _p._printArg(_a[(_argNum_1 : stdgo.GoInt)], (_c_5 : stdgo.GoInt32));
                    //"file:///home/runner/.go/go1.21.3/src/fmt/print.go#L1078"
                    _argNum_1++;
                    //"file:///home/runner/.go/go1.21.3/src/fmt/print.go#L1079"
                    _i_3++;
                    _gotoNext = 4109816i64;
                } else if (__value__ == (4111115i64)) {
                    _simpleFormatBreak = true;
                    _gotoNext = 4110136i64;
                } else if (__value__ == (4111190i64)) {
                    {
                        var __tmp__ = _p._argNumber(_argNum_1, _format?.__copy__(), _i_3, (_a.length));
                        _argNum_1 = @:tmpset0 __tmp__._0;
                        _i_3 = @:tmpset0 __tmp__._1;
                        _afterIndex_2 = @:tmpset0 __tmp__._2;
                    };
                    //"file:///home/runner/.go/go1.21.3/src/fmt/print.go#L1091"
                    if (((_i_3 < _end_0 : Bool) && (_format[(_i_3 : stdgo.GoInt)] == (42 : stdgo.GoUInt8)) : Bool)) {
                        _gotoNext = 4111310i64;
                    } else {
                        _gotoNext = 4111717i64;
                    };
                } else if (__value__ == (4111310i64)) {
                    //"file:///home/runner/.go/go1.21.3/src/fmt/print.go#L1092"
                    _i_3++;
                    {
                        var __tmp__ = stdgo._internal.fmt.Fmt__intfromarg._intFromArg(_a, _argNum_1);
                        (@:checkr _p ?? throw "null pointer dereference")._fmt._wid = @:tmpset0 __tmp__._0;
                        (@:checkr _p ?? throw "null pointer dereference")._fmt._fmtFlags._widPresent = @:tmpset0 __tmp__._1;
                        _argNum_1 = @:tmpset0 __tmp__._2;
                    };
                    //"file:///home/runner/.go/go1.21.3/src/fmt/print.go#L1095"
                    if (!(@:checkr _p ?? throw "null pointer dereference")._fmt._fmtFlags._widPresent) {
                        _gotoNext = 4111407i64;
                    } else {
                        _gotoNext = 4111550i64;
                    };
                } else if (__value__ == (4111407i64)) {
                    //"file:///home/runner/.go/go1.21.3/src/fmt/print.go#L1096"
                    (@:checkr _p ?? throw "null pointer dereference")._buf._writeString(("%!(BADWIDTH)" : stdgo.GoString));
                    _gotoNext = 4111550i64;
                } else if (__value__ == (4111550i64)) {
                    //"file:///home/runner/.go/go1.21.3/src/fmt/print.go#L1101"
                    if (((@:checkr _p ?? throw "null pointer dereference")._fmt._wid < (0 : stdgo.GoInt) : Bool)) {
                        _gotoNext = 4111567i64;
                    } else {
                        _gotoNext = 4111689i64;
                    };
                } else if (__value__ == (4111567i64)) {
                    (@:checkr _p ?? throw "null pointer dereference")._fmt._wid = -(@:checkr _p ?? throw "null pointer dereference")._fmt._wid;
                    (@:checkr _p ?? throw "null pointer dereference")._fmt._fmtFlags._minus = true;
                    (@:checkr _p ?? throw "null pointer dereference")._fmt._fmtFlags._zero = false;
                    _gotoNext = 4111689i64;
                } else if (__value__ == (4111689i64)) {
                    _afterIndex_2 = false;
                    _gotoNext = 4111895i64;
                } else if (__value__ == (4111717i64)) {
                    _gotoNext = 4111717i64;
                    {
                        var __tmp__ = stdgo._internal.fmt.Fmt__parsenum._parsenum(_format?.__copy__(), _i_3, _end_0);
                        (@:checkr _p ?? throw "null pointer dereference")._fmt._wid = @:tmpset0 __tmp__._0;
                        (@:checkr _p ?? throw "null pointer dereference")._fmt._fmtFlags._widPresent = @:tmpset0 __tmp__._1;
                        _i_3 = @:tmpset0 __tmp__._2;
                    };
                    //"file:///home/runner/.go/go1.21.3/src/fmt/print.go#L1109"
                    if ((_afterIndex_2 && (@:checkr _p ?? throw "null pointer dereference")._fmt._fmtFlags._widPresent : Bool)) {
                        _gotoNext = 4111817i64;
                    } else {
                        _gotoNext = 4111895i64;
                    };
                } else if (__value__ == (4111817i64)) {
                    (@:checkr _p ?? throw "null pointer dereference")._goodArgNum = false;
                    _gotoNext = 4111895i64;
                } else if (__value__ == (4111895i64)) {
                    //"file:///home/runner/.go/go1.21.3/src/fmt/print.go#L1115"
                    if ((((_i_3 + (1 : stdgo.GoInt) : stdgo.GoInt) < _end_0 : Bool) && (_format[(_i_3 : stdgo.GoInt)] == (46 : stdgo.GoUInt8)) : Bool)) {
                        _gotoNext = 4111928i64;
                    } else {
                        _gotoNext = 4112576i64;
                    };
                } else if (__value__ == (4111928i64)) {
                    //"file:///home/runner/.go/go1.21.3/src/fmt/print.go#L1116"
                    _i_3++;
                    //"file:///home/runner/.go/go1.21.3/src/fmt/print.go#L1117"
                    if (_afterIndex_2) {
                        _gotoNext = 4111954i64;
                    } else {
                        _gotoNext = 4112002i64;
                    };
                } else if (__value__ == (4111954i64)) {
                    (@:checkr _p ?? throw "null pointer dereference")._goodArgNum = false;
                    _gotoNext = 4112002i64;
                } else if (__value__ == (4112002i64)) {
                    {
                        var __tmp__ = _p._argNumber(_argNum_1, _format?.__copy__(), _i_3, (_a.length));
                        _argNum_1 = @:tmpset0 __tmp__._0;
                        _i_3 = @:tmpset0 __tmp__._1;
                        _afterIndex_2 = @:tmpset0 __tmp__._2;
                    };
                    //"file:///home/runner/.go/go1.21.3/src/fmt/print.go#L1121"
                    if (((_i_3 < _end_0 : Bool) && (_format[(_i_3 : stdgo.GoInt)] == (42 : stdgo.GoUInt8)) : Bool)) {
                        _gotoNext = 4112099i64;
                    } else {
                        _gotoNext = 4112414i64;
                    };
                } else if (__value__ == (4112099i64)) {
                    //"file:///home/runner/.go/go1.21.3/src/fmt/print.go#L1122"
                    _i_3++;
                    {
                        var __tmp__ = stdgo._internal.fmt.Fmt__intfromarg._intFromArg(_a, _argNum_1);
                        (@:checkr _p ?? throw "null pointer dereference")._fmt._prec = @:tmpset0 __tmp__._0;
                        (@:checkr _p ?? throw "null pointer dereference")._fmt._fmtFlags._precPresent = @:tmpset0 __tmp__._1;
                        _argNum_1 = @:tmpset0 __tmp__._2;
                    };
                    //"file:///home/runner/.go/go1.21.3/src/fmt/print.go#L1125"
                    if (((@:checkr _p ?? throw "null pointer dereference")._fmt._prec < (0 : stdgo.GoInt) : Bool)) {
                        _gotoNext = 4112250i64;
                    } else {
                        _gotoNext = 4112313i64;
                    };
                } else if (__value__ == (4112250i64)) {
                    (@:checkr _p ?? throw "null pointer dereference")._fmt._prec = (0 : stdgo.GoInt);
                    (@:checkr _p ?? throw "null pointer dereference")._fmt._fmtFlags._precPresent = false;
                    _gotoNext = 4112313i64;
                } else if (__value__ == (4112313i64)) {
                    //"file:///home/runner/.go/go1.21.3/src/fmt/print.go#L1129"
                    if (!(@:checkr _p ?? throw "null pointer dereference")._fmt._fmtFlags._precPresent) {
                        _gotoNext = 4112335i64;
                    } else {
                        _gotoNext = 4112385i64;
                    };
                } else if (__value__ == (4112335i64)) {
                    //"file:///home/runner/.go/go1.21.3/src/fmt/print.go#L1130"
                    (@:checkr _p ?? throw "null pointer dereference")._buf._writeString(("%!(BADPREC)" : stdgo.GoString));
                    _gotoNext = 4112385i64;
                } else if (__value__ == (4112385i64)) {
                    _afterIndex_2 = false;
                    _gotoNext = 4112576i64;
                } else if (__value__ == (4112414i64)) {
                    _gotoNext = 4112414i64;
                    {
                        var __tmp__ = stdgo._internal.fmt.Fmt__parsenum._parsenum(_format?.__copy__(), _i_3, _end_0);
                        (@:checkr _p ?? throw "null pointer dereference")._fmt._prec = @:tmpset0 __tmp__._0;
                        (@:checkr _p ?? throw "null pointer dereference")._fmt._fmtFlags._precPresent = @:tmpset0 __tmp__._1;
                        _i_3 = @:tmpset0 __tmp__._2;
                    };
                    //"file:///home/runner/.go/go1.21.3/src/fmt/print.go#L1135"
                    if (!(@:checkr _p ?? throw "null pointer dereference")._fmt._fmtFlags._precPresent) {
                        _gotoNext = 4112506i64;
                    } else {
                        _gotoNext = 4112576i64;
                    };
                } else if (__value__ == (4112506i64)) {
                    (@:checkr _p ?? throw "null pointer dereference")._fmt._prec = (0 : stdgo.GoInt);
                    (@:checkr _p ?? throw "null pointer dereference")._fmt._fmtFlags._precPresent = true;
                    _gotoNext = 4112576i64;
                } else if (__value__ == (4112576i64)) {
                    //"file:///home/runner/.go/go1.21.3/src/fmt/print.go#L1142"
                    if (!_afterIndex_2) {
                        _gotoNext = 4112591i64;
                    } else {
                        _gotoNext = 4112666i64;
                    };
                } else if (__value__ == (4112591i64)) {
                    {
                        var __tmp__ = _p._argNumber(_argNum_1, _format?.__copy__(), _i_3, (_a.length));
                        _argNum_1 = @:tmpset0 __tmp__._0;
                        _i_3 = @:tmpset0 __tmp__._1;
                        _afterIndex_2 = @:tmpset0 __tmp__._2;
                    };
                    _gotoNext = 4112666i64;
                } else if (__value__ == (4112666i64)) {
                    //"file:///home/runner/.go/go1.21.3/src/fmt/print.go#L1146"
                    if ((_i_3 >= _end_0 : Bool)) {
                        _gotoNext = 4112678i64;
                    } else {
                        _gotoNext = 4112731i64;
                    };
                } else if (__value__ == (4112678i64)) {
                    //"file:///home/runner/.go/go1.21.3/src/fmt/print.go#L1147"
                    (@:checkr _p ?? throw "null pointer dereference")._buf._writeString(("%!(NOVERB)" : stdgo.GoString));
                    _gotoNext = 4113647i64;
                } else if (__value__ == (4112731i64)) {
                    {
                        final __tmp__0 = (_format[(_i_3 : stdgo.GoInt)] : stdgo.GoInt32);
                        final __tmp__1 = (1 : stdgo.GoInt);
                        _verb_6 = @:binopAssign __tmp__0;
                        _size_7 = @:binopAssign __tmp__1;
                    };
                    //"file:///home/runner/.go/go1.21.3/src/fmt/print.go#L1152"
                    if ((_verb_6 >= (128 : stdgo.GoInt32) : Bool)) {
                        _gotoNext = 4112791i64;
                    } else {
                        _gotoNext = 4112851i64;
                    };
                } else if (__value__ == (4112791i64)) {
                    {
                        var __tmp__ = stdgo._internal.unicode.utf8.Utf8_decoderuneinstring.decodeRuneInString((_format.__slice__(_i_3) : stdgo.GoString)?.__copy__());
                        _verb_6 = @:tmpset0 __tmp__._0;
                        _size_7 = @:tmpset0 __tmp__._1;
                    };
                    _gotoNext = 4112851i64;
                } else if (__value__ == (4112851i64)) {
                    _i_3 = (_i_3 + (_size_7) : stdgo.GoInt);
                    _gotoNext = 4112864i64;
                } else if (__value__ == (4112864i64)) {
                    //"file:///home/runner/.go/go1.21.3/src/fmt/print.go#L1157"
                    if (_verb_6 == ((37 : stdgo.GoInt32))) {
                        _gotoNext = 4112875i64;
                    } else if (!(@:checkr _p ?? throw "null pointer dereference")._goodArgNum) {
                        _gotoNext = 4112985i64;
                    } else if ((_argNum_1 >= (_a.length) : Bool)) {
                        _gotoNext = 4113028i64;
                    } else if (_verb_6 == ((119 : stdgo.GoInt32))) {
                        _gotoNext = 4113131i64;
                    } else if (_verb_6 == ((118 : stdgo.GoInt32))) {
                        _gotoNext = 4113215i64;
                    } else {
                        _gotoNext = 4113395i64;
                    };
                } else if (__value__ == (4112875i64)) {
                    //"file:///home/runner/.go/go1.21.3/src/fmt/print.go#L1159"
                    (@:checkr _p ?? throw "null pointer dereference")._buf._writeByte((37 : stdgo.GoUInt8));
                    _gotoNext = 4109816i64;
                } else if (__value__ == (4112985i64)) {
                    //"file:///home/runner/.go/go1.21.3/src/fmt/print.go#L1161"
                    _p._badArgNum(_verb_6);
                    _gotoNext = 4109816i64;
                } else if (__value__ == (4113028i64)) {
                    //"file:///home/runner/.go/go1.21.3/src/fmt/print.go#L1163"
                    _p._missingArg(_verb_6);
                    _gotoNext = 4109816i64;
                } else if (__value__ == (4113131i64)) {
                    (@:checkr _p ?? throw "null pointer dereference")._wrappedErrs = ((@:checkr _p ?? throw "null pointer dereference")._wrappedErrs.__append__(_argNum_1) : stdgo.Slice<stdgo.GoInt>);
                    _gotoNext = 4113215i64;
                } else if (__value__ == (4113215i64)) {
                    (@:checkr _p ?? throw "null pointer dereference")._fmt._fmtFlags._sharpV = (@:checkr _p ?? throw "null pointer dereference")._fmt._fmtFlags._sharp;
                    (@:checkr _p ?? throw "null pointer dereference")._fmt._fmtFlags._sharp = false;
                    (@:checkr _p ?? throw "null pointer dereference")._fmt._fmtFlags._plusV = (@:checkr _p ?? throw "null pointer dereference")._fmt._fmtFlags._plus;
                    (@:checkr _p ?? throw "null pointer dereference")._fmt._fmtFlags._plus = false;
                    _gotoNext = 4113395i64;
                } else if (__value__ == (4113395i64)) {
                    //"file:///home/runner/.go/go1.21.3/src/fmt/print.go#L1176"
                    _p._printArg(_a[(_argNum_1 : stdgo.GoInt)], _verb_6);
                    //"file:///home/runner/.go/go1.21.3/src/fmt/print.go#L1177"
                    _argNum_1++;
                    _gotoNext = 4109816i64;
                } else if (__value__ == (4113647i64)) {
                    //"file:///home/runner/.go/go1.21.3/src/fmt/print.go#L1184"
                    if ((!(@:checkr _p ?? throw "null pointer dereference")._reordered && (_argNum_1 < (_a.length) : Bool) : Bool)) {
                        _gotoNext = 4113682i64;
                    } else {
                        _gotoNext = 4114038i64;
                    };
                } else if (__value__ == (4113682i64)) {
                    //"file:///home/runner/.go/go1.21.3/src/fmt/print.go#L1185"
                    (@:checkr _p ?? throw "null pointer dereference")._fmt._clearflags();
                    //"file:///home/runner/.go/go1.21.3/src/fmt/print.go#L1186"
                    (@:checkr _p ?? throw "null pointer dereference")._buf._writeString(("%!(EXTRA " : stdgo.GoString));
                    //"file:///home/runner/.go/go1.21.3/src/fmt/print.go#L1187"
                    if ((0i64 : stdgo.GoInt) < ((_a.__slice__(_argNum_1) : stdgo.Slice<stdgo.AnyInterface>).length)) {
                        _gotoNext = 4114009i64;
                    } else {
                        _gotoNext = 4114014i64;
                    };
                } else if (__value__ == (4113744i64)) {
                    //"file:///home/runner/.go/go1.21.3/src/fmt/print.go#L1187"
                    _i_8++;
                    _gotoNext = 4114010i64;
                } else if (__value__ == (4113771i64)) {
                    _arg_9 = stdgo.Go.toInterface((_a.__slice__(_argNum_1) : stdgo.Slice<stdgo.AnyInterface>)[(_i_8 : stdgo.GoInt)]);
                    //"file:///home/runner/.go/go1.21.3/src/fmt/print.go#L1188"
                    if ((_i_8 > (0 : stdgo.GoInt) : Bool)) {
                        _gotoNext = 4113785i64;
                    } else {
                        _gotoNext = 4113835i64;
                    };
                } else if (__value__ == (4113785i64)) {
                    //"file:///home/runner/.go/go1.21.3/src/fmt/print.go#L1189"
                    (@:checkr _p ?? throw "null pointer dereference")._buf._writeString((", " : stdgo.GoString));
                    _gotoNext = 4113835i64;
                } else if (__value__ == (4113835i64)) {
                    //"file:///home/runner/.go/go1.21.3/src/fmt/print.go#L1191"
                    if (_arg_9 == null) {
                        _gotoNext = 4113849i64;
                    } else {
                        _gotoNext = 4113899i64;
                    };
                } else if (__value__ == (4113849i64)) {
                    //"file:///home/runner/.go/go1.21.3/src/fmt/print.go#L1192"
                    (@:checkr _p ?? throw "null pointer dereference")._buf._writeString(("<nil>" : stdgo.GoString));
                    _gotoNext = 4113744i64;
                } else if (__value__ == (4113899i64)) {
                    _gotoNext = 4113899i64;
                    //"file:///home/runner/.go/go1.21.3/src/fmt/print.go#L1194"
                    (@:checkr _p ?? throw "null pointer dereference")._buf._writeString((stdgo._internal.reflect.Reflect_typeof.typeOf(_arg_9).string() : stdgo.GoString)?.__copy__());
                    //"file:///home/runner/.go/go1.21.3/src/fmt/print.go#L1195"
                    (@:checkr _p ?? throw "null pointer dereference")._buf._writeByte((61 : stdgo.GoUInt8));
                    //"file:///home/runner/.go/go1.21.3/src/fmt/print.go#L1196"
                    _p._printArg(_arg_9, (118 : stdgo.GoInt32));
                    0i64;
                    _gotoNext = 4113744i64;
                } else if (__value__ == (4114009i64)) {
                    {
                        final __tmp__0 = 0i64;
                        final __tmp__1 = stdgo.Go.toInterface((_a.__slice__(_argNum_1) : stdgo.Slice<stdgo.AnyInterface>)[(0i64 : stdgo.GoInt)]);
                        _i_8 = @:binopAssign __tmp__0;
                        _arg_9 = @:binopAssign __tmp__1;
                    };
                    _gotoNext = 4114010i64;
                } else if (__value__ == (4114010i64)) {
                    //"file://#L0"
                    if (_i_8 < ((_a.__slice__(_argNum_1) : stdgo.Slice<stdgo.AnyInterface>).length)) {
                        _gotoNext = 4113771i64;
                    } else {
                        _gotoNext = 4114014i64;
                    };
                } else if (__value__ == (4114014i64)) {
                    //"file:///home/runner/.go/go1.21.3/src/fmt/print.go#L1199"
                    (@:checkr _p ?? throw "null pointer dereference")._buf._writeByte((41 : stdgo.GoUInt8));
                    _gotoNext = 4114038i64;
                } else if (__value__ == (4114038i64)) {
                    _gotoNext = -1i64;
                };
            };
        };
    }
    @:keep
    @:tdfield
    static public function _missingArg( _p:stdgo.Ref<stdgo._internal.fmt.Fmt_t_pp.T_pp>, _verb:stdgo.GoInt32):Void {
        @:recv var _p:stdgo.Ref<stdgo._internal.fmt.Fmt_t_pp.T_pp> = _p;
        //"file:///home/runner/.go/go1.21.3/src/fmt/print.go#L1016"
        (@:checkr _p ?? throw "null pointer dereference")._buf._writeString(("%!" : stdgo.GoString));
        //"file:///home/runner/.go/go1.21.3/src/fmt/print.go#L1017"
        (@:checkr _p ?? throw "null pointer dereference")._buf._writeRune(_verb);
        //"file:///home/runner/.go/go1.21.3/src/fmt/print.go#L1018"
        (@:checkr _p ?? throw "null pointer dereference")._buf._writeString(("(MISSING)" : stdgo.GoString));
    }
    @:keep
    @:tdfield
    static public function _badArgNum( _p:stdgo.Ref<stdgo._internal.fmt.Fmt_t_pp.T_pp>, _verb:stdgo.GoInt32):Void {
        @:recv var _p:stdgo.Ref<stdgo._internal.fmt.Fmt_t_pp.T_pp> = _p;
        //"file:///home/runner/.go/go1.21.3/src/fmt/print.go#L1010"
        (@:checkr _p ?? throw "null pointer dereference")._buf._writeString(("%!" : stdgo.GoString));
        //"file:///home/runner/.go/go1.21.3/src/fmt/print.go#L1011"
        (@:checkr _p ?? throw "null pointer dereference")._buf._writeRune(_verb);
        //"file:///home/runner/.go/go1.21.3/src/fmt/print.go#L1012"
        (@:checkr _p ?? throw "null pointer dereference")._buf._writeString(("(BADINDEX)" : stdgo.GoString));
    }
    @:keep
    @:tdfield
    static public function _argNumber( _p:stdgo.Ref<stdgo._internal.fmt.Fmt_t_pp.T_pp>, _argNum:stdgo.GoInt, _format:stdgo.GoString, _i:stdgo.GoInt, _numArgs:stdgo.GoInt):{ var _0 : stdgo.GoInt; var _1 : stdgo.GoInt; var _2 : Bool; } {
        @:recv var _p:stdgo.Ref<stdgo._internal.fmt.Fmt_t_pp.T_pp> = _p;
        var _newArgNum = (0 : stdgo.GoInt), _newi = (0 : stdgo.GoInt), _found = false;
        //"file:///home/runner/.go/go1.21.3/src/fmt/print.go#L997"
        if ((((_format.length) <= _i : Bool) || (_format[(_i : stdgo.GoInt)] != (91 : stdgo.GoUInt8)) : Bool)) {
            //"file:///home/runner/.go/go1.21.3/src/fmt/print.go#L998"
            return {
                @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.GoInt; var _1 : stdgo.GoInt; var _2 : Bool; } = { _0 : _argNum, _1 : _i, _2 : false };
                _newArgNum = __tmp__._0;
                _newi = __tmp__._1;
                _found = __tmp__._2;
                __tmp__;
            };
        };
        (@:checkr _p ?? throw "null pointer dereference")._reordered = true;
        var __tmp__ = stdgo._internal.fmt.Fmt__parseargnumber._parseArgNumber((_format.__slice__(_i) : stdgo.GoString)?.__copy__()), _index:stdgo.GoInt = __tmp__._0, _wid:stdgo.GoInt = __tmp__._1, _ok:Bool = __tmp__._2;
        //"file:///home/runner/.go/go1.21.3/src/fmt/print.go#L1002"
        if (((_ok && ((0 : stdgo.GoInt) <= _index : Bool) : Bool) && (_index < _numArgs : Bool) : Bool)) {
            //"file:///home/runner/.go/go1.21.3/src/fmt/print.go#L1003"
            return {
                @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.GoInt; var _1 : stdgo.GoInt; var _2 : Bool; } = { _0 : _index, _1 : (_i + _wid : stdgo.GoInt), _2 : true };
                _newArgNum = __tmp__._0;
                _newi = __tmp__._1;
                _found = __tmp__._2;
                __tmp__;
            };
        };
        (@:checkr _p ?? throw "null pointer dereference")._goodArgNum = false;
        //"file:///home/runner/.go/go1.21.3/src/fmt/print.go#L1006"
        return {
            @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.GoInt; var _1 : stdgo.GoInt; var _2 : Bool; } = { _0 : _argNum, _1 : (_i + _wid : stdgo.GoInt), _2 : _ok };
            _newArgNum = __tmp__._0;
            _newi = __tmp__._1;
            _found = __tmp__._2;
            __tmp__;
        };
    }
    @:keep
    @:tdfield
    static public function _printValue( _p:stdgo.Ref<stdgo._internal.fmt.Fmt_t_pp.T_pp>, _value:stdgo._internal.reflect.Reflect_value.Value, _verb:stdgo.GoInt32, _depth:stdgo.GoInt):Void {
        @:recv var _p:stdgo.Ref<stdgo._internal.fmt.Fmt_t_pp.T_pp> = _p;
        //"file:///home/runner/.go/go1.21.3/src/fmt/print.go#L768"
        if ((((_depth > (0 : stdgo.GoInt) : Bool) && _value.isValid() : Bool) && _value.canInterface() : Bool)) {
            (@:checkr _p ?? throw "null pointer dereference")._arg = _value.interface_();
            //"file:///home/runner/.go/go1.21.3/src/fmt/print.go#L770"
            if (_p._handleMethods(_verb)) {
                //"file:///home/runner/.go/go1.21.3/src/fmt/print.go#L771"
                return;
            };
        };
        (@:checkr _p ?? throw "null pointer dereference")._arg = (null : stdgo.AnyInterface);
        (@:checkr _p ?? throw "null pointer dereference")._value = _value?.__copy__();
        //"file:///home/runner/.go/go1.21.3/src/fmt/print.go#L777"
        {
            var _f = (_value?.__copy__() : stdgo._internal.reflect.Reflect_value.Value);
            {
                var __switchIndex__ = -1;
                var __run__ = true;
                while (__run__) {
                    __run__ = false;
                    {
                        final __value__ = _value.kind();
                        if (__switchIndex__ == 0 || (__switchIndex__ == -1 && (__value__ == (0u32 : stdgo._internal.reflect.Reflect_kind.Kind)))) {
                            //"file:///home/runner/.go/go1.21.3/src/fmt/print.go#L779"
                            if (_depth == ((0 : stdgo.GoInt))) {
                                //"file:///home/runner/.go/go1.21.3/src/fmt/print.go#L780"
                                (@:checkr _p ?? throw "null pointer dereference")._buf._writeString(("<invalid reflect.Value>" : stdgo.GoString));
                            } else {
                                //"file:///home/runner/.go/go1.21.3/src/fmt/print.go#L782"
                                {
                                    final __value__ = _verb;
                                    if (__value__ == ((118 : stdgo.GoInt32))) {
                                        //"file:///home/runner/.go/go1.21.3/src/fmt/print.go#L784"
                                        (@:checkr _p ?? throw "null pointer dereference")._buf._writeString(("<nil>" : stdgo.GoString));
                                    } else {
                                        //"file:///home/runner/.go/go1.21.3/src/fmt/print.go#L786"
                                        _p._badVerb(_verb);
                                    };
                                };
                            };
                            break;
                            break;
                        } else if (__switchIndex__ == 1 || (__switchIndex__ == -1 && (__value__ == (1u32 : stdgo._internal.reflect.Reflect_kind.Kind)))) {
                            //"file:///home/runner/.go/go1.21.3/src/fmt/print.go#L790"
                            _p._fmtBool(_f.bool_(), _verb);
                            break;
                            break;
                        } else if (__switchIndex__ == 2 || (__switchIndex__ == -1 && (__value__ == ((2u32 : stdgo._internal.reflect.Reflect_kind.Kind)) || __value__ == ((3u32 : stdgo._internal.reflect.Reflect_kind.Kind)) || __value__ == ((4u32 : stdgo._internal.reflect.Reflect_kind.Kind)) || __value__ == ((5u32 : stdgo._internal.reflect.Reflect_kind.Kind)) || __value__ == ((6u32 : stdgo._internal.reflect.Reflect_kind.Kind))))) {
                            //"file:///home/runner/.go/go1.21.3/src/fmt/print.go#L792"
                            _p._fmtInteger((_f.int_() : stdgo.GoUInt64), true, _verb);
                            break;
                            break;
                        } else if (__switchIndex__ == 3 || (__switchIndex__ == -1 && (__value__ == ((7u32 : stdgo._internal.reflect.Reflect_kind.Kind)) || __value__ == ((8u32 : stdgo._internal.reflect.Reflect_kind.Kind)) || __value__ == ((9u32 : stdgo._internal.reflect.Reflect_kind.Kind)) || __value__ == ((10u32 : stdgo._internal.reflect.Reflect_kind.Kind)) || __value__ == ((11u32 : stdgo._internal.reflect.Reflect_kind.Kind)) || __value__ == ((12u32 : stdgo._internal.reflect.Reflect_kind.Kind))))) {
                            //"file:///home/runner/.go/go1.21.3/src/fmt/print.go#L794"
                            _p._fmtInteger(_f.uint(), false, _verb);
                            break;
                            break;
                        } else if (__switchIndex__ == 4 || (__switchIndex__ == -1 && (__value__ == (13u32 : stdgo._internal.reflect.Reflect_kind.Kind)))) {
                            //"file:///home/runner/.go/go1.21.3/src/fmt/print.go#L796"
                            _p._fmtFloat(_f.float_(), (32 : stdgo.GoInt), _verb);
                            break;
                            break;
                        } else if (__switchIndex__ == 5 || (__switchIndex__ == -1 && (__value__ == (14u32 : stdgo._internal.reflect.Reflect_kind.Kind)))) {
                            //"file:///home/runner/.go/go1.21.3/src/fmt/print.go#L798"
                            _p._fmtFloat(_f.float_(), (64 : stdgo.GoInt), _verb);
                            break;
                            break;
                        } else if (__switchIndex__ == 6 || (__switchIndex__ == -1 && (__value__ == (15u32 : stdgo._internal.reflect.Reflect_kind.Kind)))) {
                            //"file:///home/runner/.go/go1.21.3/src/fmt/print.go#L800"
                            _p._fmtComplex(_f.complex(), (64 : stdgo.GoInt), _verb);
                            break;
                            break;
                        } else if (__switchIndex__ == 7 || (__switchIndex__ == -1 && (__value__ == (16u32 : stdgo._internal.reflect.Reflect_kind.Kind)))) {
                            //"file:///home/runner/.go/go1.21.3/src/fmt/print.go#L802"
                            _p._fmtComplex(_f.complex(), (128 : stdgo.GoInt), _verb);
                            break;
                            break;
                        } else if (__switchIndex__ == 8 || (__switchIndex__ == -1 && (__value__ == (24u32 : stdgo._internal.reflect.Reflect_kind.Kind)))) {
                            //"file:///home/runner/.go/go1.21.3/src/fmt/print.go#L804"
                            _p._fmtString((_f.string() : stdgo.GoString)?.__copy__(), _verb);
                            break;
                            break;
                        } else if (__switchIndex__ == 9 || (__switchIndex__ == -1 && (__value__ == (21u32 : stdgo._internal.reflect.Reflect_kind.Kind)))) {
                            //"file:///home/runner/.go/go1.21.3/src/fmt/print.go#L806"
                            if ((@:checkr _p ?? throw "null pointer dereference")._fmt._fmtFlags._sharpV) {
                                //"file:///home/runner/.go/go1.21.3/src/fmt/print.go#L807"
                                (@:checkr _p ?? throw "null pointer dereference")._buf._writeString((_f.type().string() : stdgo.GoString)?.__copy__());
                                //"file:///home/runner/.go/go1.21.3/src/fmt/print.go#L808"
                                if (_f.isNil()) {
                                    //"file:///home/runner/.go/go1.21.3/src/fmt/print.go#L809"
                                    (@:checkr _p ?? throw "null pointer dereference")._buf._writeString(("(nil)" : stdgo.GoString));
                                    //"file:///home/runner/.go/go1.21.3/src/fmt/print.go#L810"
                                    return;
                                };
                                //"file:///home/runner/.go/go1.21.3/src/fmt/print.go#L812"
                                (@:checkr _p ?? throw "null pointer dereference")._buf._writeByte((123 : stdgo.GoUInt8));
                            } else {
                                //"file:///home/runner/.go/go1.21.3/src/fmt/print.go#L814"
                                (@:checkr _p ?? throw "null pointer dereference")._buf._writeString(("map[" : stdgo.GoString));
                            };
                            var _sorted = stdgo._internal.internal.fmtsort.Fmtsort_sort.sort(_f?.__copy__());
                            //"file:///home/runner/.go/go1.21.3/src/fmt/print.go#L817"
                            for (_i => _key in (@:checkr _sorted ?? throw "null pointer dereference").key) {
                                //"file:///home/runner/.go/go1.21.3/src/fmt/print.go#L818"
                                if ((_i > (0 : stdgo.GoInt) : Bool)) {
                                    //"file:///home/runner/.go/go1.21.3/src/fmt/print.go#L819"
                                    if ((@:checkr _p ?? throw "null pointer dereference")._fmt._fmtFlags._sharpV) {
                                        //"file:///home/runner/.go/go1.21.3/src/fmt/print.go#L820"
                                        (@:checkr _p ?? throw "null pointer dereference")._buf._writeString((", " : stdgo.GoString));
                                    } else {
                                        //"file:///home/runner/.go/go1.21.3/src/fmt/print.go#L822"
                                        (@:checkr _p ?? throw "null pointer dereference")._buf._writeByte((32 : stdgo.GoUInt8));
                                    };
                                };
                                //"file:///home/runner/.go/go1.21.3/src/fmt/print.go#L825"
                                _p._printValue(_key?.__copy__(), _verb, (_depth + (1 : stdgo.GoInt) : stdgo.GoInt));
                                //"file:///home/runner/.go/go1.21.3/src/fmt/print.go#L826"
                                (@:checkr _p ?? throw "null pointer dereference")._buf._writeByte((58 : stdgo.GoUInt8));
                                //"file:///home/runner/.go/go1.21.3/src/fmt/print.go#L827"
                                _p._printValue((@:checkr _sorted ?? throw "null pointer dereference").value[(_i : stdgo.GoInt)], _verb, (_depth + (1 : stdgo.GoInt) : stdgo.GoInt));
                            };
                            //"file:///home/runner/.go/go1.21.3/src/fmt/print.go#L829"
                            if ((@:checkr _p ?? throw "null pointer dereference")._fmt._fmtFlags._sharpV) {
                                //"file:///home/runner/.go/go1.21.3/src/fmt/print.go#L830"
                                (@:checkr _p ?? throw "null pointer dereference")._buf._writeByte((125 : stdgo.GoUInt8));
                            } else {
                                //"file:///home/runner/.go/go1.21.3/src/fmt/print.go#L832"
                                (@:checkr _p ?? throw "null pointer dereference")._buf._writeByte((93 : stdgo.GoUInt8));
                            };
                            break;
                            break;
                        } else if (__switchIndex__ == 10 || (__switchIndex__ == -1 && (__value__ == (25u32 : stdgo._internal.reflect.Reflect_kind.Kind)))) {
                            //"file:///home/runner/.go/go1.21.3/src/fmt/print.go#L835"
                            if ((@:checkr _p ?? throw "null pointer dereference")._fmt._fmtFlags._sharpV) {
                                //"file:///home/runner/.go/go1.21.3/src/fmt/print.go#L836"
                                (@:checkr _p ?? throw "null pointer dereference")._buf._writeString((_f.type().string() : stdgo.GoString)?.__copy__());
                            };
                            //"file:///home/runner/.go/go1.21.3/src/fmt/print.go#L838"
                            (@:checkr _p ?? throw "null pointer dereference")._buf._writeByte((123 : stdgo.GoUInt8));
                            //"file:///home/runner/.go/go1.21.3/src/fmt/print.go#L839"
                            {
                                var _i = (0 : stdgo.GoInt);
                                while ((_i < _f.numField() : Bool)) {
                                    //"file:///home/runner/.go/go1.21.3/src/fmt/print.go#L840"
                                    if ((_i > (0 : stdgo.GoInt) : Bool)) {
                                        //"file:///home/runner/.go/go1.21.3/src/fmt/print.go#L841"
                                        if ((@:checkr _p ?? throw "null pointer dereference")._fmt._fmtFlags._sharpV) {
                                            //"file:///home/runner/.go/go1.21.3/src/fmt/print.go#L842"
                                            (@:checkr _p ?? throw "null pointer dereference")._buf._writeString((", " : stdgo.GoString));
                                        } else {
                                            //"file:///home/runner/.go/go1.21.3/src/fmt/print.go#L844"
                                            (@:checkr _p ?? throw "null pointer dereference")._buf._writeByte((32 : stdgo.GoUInt8));
                                        };
                                    };
//"file:///home/runner/.go/go1.21.3/src/fmt/print.go#L847"
                                    if (((@:checkr _p ?? throw "null pointer dereference")._fmt._fmtFlags._plusV || (@:checkr _p ?? throw "null pointer dereference")._fmt._fmtFlags._sharpV : Bool)) {
                                        //"file:///home/runner/.go/go1.21.3/src/fmt/print.go#L848"
                                        {
                                            var _name = (_f.type().field(_i).name.__copy__() : stdgo.GoString);
                                            if (_name != ((stdgo.Go.str() : stdgo.GoString))) {
                                                //"file:///home/runner/.go/go1.21.3/src/fmt/print.go#L849"
                                                (@:checkr _p ?? throw "null pointer dereference")._buf._writeString(_name.__copy__());
                                                //"file:///home/runner/.go/go1.21.3/src/fmt/print.go#L850"
                                                (@:checkr _p ?? throw "null pointer dereference")._buf._writeByte((58 : stdgo.GoUInt8));
                                            };
                                        };
                                    };
//"file:///home/runner/.go/go1.21.3/src/fmt/print.go#L853"
                                    _p._printValue(stdgo._internal.fmt.Fmt__getfield._getField(_f.__copy__(), _i).__copy__(), _verb, (_depth + (1 : stdgo.GoInt) : stdgo.GoInt));
                                    _i++;
                                };
                            };
                            //"file:///home/runner/.go/go1.21.3/src/fmt/print.go#L855"
                            (@:checkr _p ?? throw "null pointer dereference")._buf._writeByte((125 : stdgo.GoUInt8));
                            break;
                            break;
                        } else if (__switchIndex__ == 11 || (__switchIndex__ == -1 && (__value__ == (20u32 : stdgo._internal.reflect.Reflect_kind.Kind)))) {
                            var _value = (_f.elem()?.__copy__() : stdgo._internal.reflect.Reflect_value.Value);
                            //"file:///home/runner/.go/go1.21.3/src/fmt/print.go#L858"
                            if (!_value.isValid()) {
                                //"file:///home/runner/.go/go1.21.3/src/fmt/print.go#L859"
                                if ((@:checkr _p ?? throw "null pointer dereference")._fmt._fmtFlags._sharpV) {
                                    //"file:///home/runner/.go/go1.21.3/src/fmt/print.go#L860"
                                    (@:checkr _p ?? throw "null pointer dereference")._buf._writeString((_f.type().string() : stdgo.GoString)?.__copy__());
                                    //"file:///home/runner/.go/go1.21.3/src/fmt/print.go#L861"
                                    (@:checkr _p ?? throw "null pointer dereference")._buf._writeString(("(nil)" : stdgo.GoString));
                                } else {
                                    //"file:///home/runner/.go/go1.21.3/src/fmt/print.go#L863"
                                    (@:checkr _p ?? throw "null pointer dereference")._buf._writeString(("<nil>" : stdgo.GoString));
                                };
                            } else {
                                //"file:///home/runner/.go/go1.21.3/src/fmt/print.go#L866"
                                _p._printValue(_value?.__copy__(), _verb, (_depth + (1 : stdgo.GoInt) : stdgo.GoInt));
                            };
                            break;
                            break;
                        } else if (__switchIndex__ == 12 || (__switchIndex__ == -1 && (__value__ == ((17u32 : stdgo._internal.reflect.Reflect_kind.Kind)) || __value__ == ((23u32 : stdgo._internal.reflect.Reflect_kind.Kind))))) {
                            //"file:///home/runner/.go/go1.21.3/src/fmt/print.go#L869"
                            {
                                final __value__ = _verb;
                                if (__value__ == ((115 : stdgo.GoInt32)) || __value__ == ((113 : stdgo.GoInt32)) || __value__ == ((120 : stdgo.GoInt32)) || __value__ == ((88 : stdgo.GoInt32))) {
                                    var _t = (_f.type() : stdgo._internal.reflect.Reflect_type_.Type_);
                                    //"file:///home/runner/.go/go1.21.3/src/fmt/print.go#L873"
                                    if (_t.elem().kind() == ((8u32 : stdgo._internal.reflect.Reflect_kind.Kind))) {
                                        var _bytes:stdgo.Slice<stdgo.GoUInt8> = (null : stdgo.Slice<stdgo.GoUInt8>);
                                        //"file:///home/runner/.go/go1.21.3/src/fmt/print.go#L875"
                                        if (_f.kind() == ((23u32 : stdgo._internal.reflect.Reflect_kind.Kind))) {
                                            _bytes = _f.bytes();
                                        } else if (_f.canAddr()) {
                                            _bytes = _f.slice((0 : stdgo.GoInt), _f.len()).bytes();
                                        } else {
                                            _bytes = (new stdgo.Slice<stdgo.GoUInt8>((_f.len() : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>);
                                            //"file:///home/runner/.go/go1.21.3/src/fmt/print.go#L884"
                                            for (_i => _ in _bytes) {
                                                _bytes[(_i : stdgo.GoInt)] = (_f.index(_i).uint() : stdgo.GoUInt8);
                                            };
                                        };
                                        //"file:///home/runner/.go/go1.21.3/src/fmt/print.go#L888"
                                        _p._fmtBytes(_bytes, _verb, (_t.string() : stdgo.GoString)?.__copy__());
                                        //"file:///home/runner/.go/go1.21.3/src/fmt/print.go#L889"
                                        return;
                                    };
                                };
                            };
                            //"file:///home/runner/.go/go1.21.3/src/fmt/print.go#L892"
                            if ((@:checkr _p ?? throw "null pointer dereference")._fmt._fmtFlags._sharpV) {
                                //"file:///home/runner/.go/go1.21.3/src/fmt/print.go#L893"
                                (@:checkr _p ?? throw "null pointer dereference")._buf._writeString((_f.type().string() : stdgo.GoString)?.__copy__());
                                //"file:///home/runner/.go/go1.21.3/src/fmt/print.go#L894"
                                if (((_f.kind() == (23u32 : stdgo._internal.reflect.Reflect_kind.Kind)) && _f.isNil() : Bool)) {
                                    //"file:///home/runner/.go/go1.21.3/src/fmt/print.go#L895"
                                    (@:checkr _p ?? throw "null pointer dereference")._buf._writeString(("(nil)" : stdgo.GoString));
                                    //"file:///home/runner/.go/go1.21.3/src/fmt/print.go#L896"
                                    return;
                                };
                                //"file:///home/runner/.go/go1.21.3/src/fmt/print.go#L898"
                                (@:checkr _p ?? throw "null pointer dereference")._buf._writeByte((123 : stdgo.GoUInt8));
                                //"file:///home/runner/.go/go1.21.3/src/fmt/print.go#L899"
                                {
                                    var _i = (0 : stdgo.GoInt);
                                    while ((_i < _f.len() : Bool)) {
                                        //"file:///home/runner/.go/go1.21.3/src/fmt/print.go#L900"
                                        if ((_i > (0 : stdgo.GoInt) : Bool)) {
                                            //"file:///home/runner/.go/go1.21.3/src/fmt/print.go#L901"
                                            (@:checkr _p ?? throw "null pointer dereference")._buf._writeString((", " : stdgo.GoString));
                                        };
//"file:///home/runner/.go/go1.21.3/src/fmt/print.go#L903"
                                        _p._printValue(_f.index(_i).__copy__(), _verb, (_depth + (1 : stdgo.GoInt) : stdgo.GoInt));
                                        _i++;
                                    };
                                };
                                //"file:///home/runner/.go/go1.21.3/src/fmt/print.go#L905"
                                (@:checkr _p ?? throw "null pointer dereference")._buf._writeByte((125 : stdgo.GoUInt8));
                            } else {
                                //"file:///home/runner/.go/go1.21.3/src/fmt/print.go#L907"
                                (@:checkr _p ?? throw "null pointer dereference")._buf._writeByte((91 : stdgo.GoUInt8));
                                //"file:///home/runner/.go/go1.21.3/src/fmt/print.go#L908"
                                {
                                    var _i = (0 : stdgo.GoInt);
                                    while ((_i < _f.len() : Bool)) {
                                        //"file:///home/runner/.go/go1.21.3/src/fmt/print.go#L909"
                                        if ((_i > (0 : stdgo.GoInt) : Bool)) {
                                            //"file:///home/runner/.go/go1.21.3/src/fmt/print.go#L910"
                                            (@:checkr _p ?? throw "null pointer dereference")._buf._writeByte((32 : stdgo.GoUInt8));
                                        };
//"file:///home/runner/.go/go1.21.3/src/fmt/print.go#L912"
                                        _p._printValue(_f.index(_i).__copy__(), _verb, (_depth + (1 : stdgo.GoInt) : stdgo.GoInt));
                                        _i++;
                                    };
                                };
                                //"file:///home/runner/.go/go1.21.3/src/fmt/print.go#L914"
                                (@:checkr _p ?? throw "null pointer dereference")._buf._writeByte((93 : stdgo.GoUInt8));
                            };
                            break;
                            break;
                        } else if (__switchIndex__ == 13 || (__switchIndex__ == -1 && (__value__ == (22u32 : stdgo._internal.reflect.Reflect_kind.Kind)))) {
                            //"file:///home/runner/.go/go1.21.3/src/fmt/print.go#L919"
                            if (((_depth == (0 : stdgo.GoInt)) && (_f.pointer() != (new stdgo.GoUIntptr(0) : stdgo.GoUIntptr)) : Bool)) {
                                //"file:///home/runner/.go/go1.21.3/src/fmt/print.go#L920"
                                {
                                    var _a = (_f.elem()?.__copy__() : stdgo._internal.reflect.Reflect_value.Value);
                                    {
                                        final __value__ = _a.kind();
                                        if (__value__ == ((17u32 : stdgo._internal.reflect.Reflect_kind.Kind)) || __value__ == ((23u32 : stdgo._internal.reflect.Reflect_kind.Kind)) || __value__ == ((25u32 : stdgo._internal.reflect.Reflect_kind.Kind)) || __value__ == ((21u32 : stdgo._internal.reflect.Reflect_kind.Kind))) {
                                            //"file:///home/runner/.go/go1.21.3/src/fmt/print.go#L922"
                                            (@:checkr _p ?? throw "null pointer dereference")._buf._writeByte((38 : stdgo.GoUInt8));
                                            //"file:///home/runner/.go/go1.21.3/src/fmt/print.go#L923"
                                            _p._printValue(_a?.__copy__(), _verb, (_depth + (1 : stdgo.GoInt) : stdgo.GoInt));
                                            //"file:///home/runner/.go/go1.21.3/src/fmt/print.go#L924"
                                            return;
                                        };
                                    };
                                };
                            };
                            //"file:///home/runner/.go/go1.21.3/src/fmt/print.go#L927"
                            @:fallthrough {
                                __switchIndex__ = 14;
                                __run__ = true;
                                continue;
                            };
                            break;
                        } else if (__switchIndex__ == 14 || (__switchIndex__ == -1 && (__value__ == ((18u32 : stdgo._internal.reflect.Reflect_kind.Kind)) || __value__ == ((19u32 : stdgo._internal.reflect.Reflect_kind.Kind)) || __value__ == ((26u32 : stdgo._internal.reflect.Reflect_kind.Kind))))) {
                            //"file:///home/runner/.go/go1.21.3/src/fmt/print.go#L929"
                            _p._fmtPointer(_f?.__copy__(), _verb);
                            break;
                            break;
                        } else {
                            //"file:///home/runner/.go/go1.21.3/src/fmt/print.go#L931"
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
    @:tdfield
    static public function _printArg( _p:stdgo.Ref<stdgo._internal.fmt.Fmt_t_pp.T_pp>, _arg:stdgo.AnyInterface, _verb:stdgo.GoInt32):Void {
        @:recv var _p:stdgo.Ref<stdgo._internal.fmt.Fmt_t_pp.T_pp> = _p;
        (@:checkr _p ?? throw "null pointer dereference")._arg = _arg;
        (@:checkr _p ?? throw "null pointer dereference")._value = (new stdgo._internal.reflect.Reflect_value.Value() : stdgo._internal.reflect.Reflect_value.Value);
        //"file:///home/runner/.go/go1.21.3/src/fmt/print.go#L685"
        if (_arg == null) {
            //"file:///home/runner/.go/go1.21.3/src/fmt/print.go#L686"
            {
                final __value__ = _verb;
                if (__value__ == ((84 : stdgo.GoInt32)) || __value__ == ((118 : stdgo.GoInt32))) {
                    //"file:///home/runner/.go/go1.21.3/src/fmt/print.go#L688"
                    (@:checkr _p ?? throw "null pointer dereference")._fmt._padString(("<nil>" : stdgo.GoString));
                } else {
                    //"file:///home/runner/.go/go1.21.3/src/fmt/print.go#L690"
                    _p._badVerb(_verb);
                };
            };
            //"file:///home/runner/.go/go1.21.3/src/fmt/print.go#L692"
            return;
        };
        //"file:///home/runner/.go/go1.21.3/src/fmt/print.go#L697"
        {
            final __value__ = _verb;
            if (__value__ == ((84 : stdgo.GoInt32))) {
                //"file:///home/runner/.go/go1.21.3/src/fmt/print.go#L699"
                (@:checkr _p ?? throw "null pointer dereference")._fmt._fmtS((stdgo._internal.reflect.Reflect_typeof.typeOf(_arg).string() : stdgo.GoString)?.__copy__());
                //"file:///home/runner/.go/go1.21.3/src/fmt/print.go#L700"
                return;
            } else if (__value__ == ((112 : stdgo.GoInt32))) {
                //"file:///home/runner/.go/go1.21.3/src/fmt/print.go#L702"
                _p._fmtPointer(stdgo._internal.reflect.Reflect_valueof.valueOf(_arg)?.__copy__(), (112 : stdgo.GoInt32));
                //"file:///home/runner/.go/go1.21.3/src/fmt/print.go#L703"
                return;
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/fmt/print.go#L707"
        {
            final __type__ = _arg;
            if (stdgo.Go.typeEquals((__type__ : Bool))) {
                var _f:Bool = __type__ == null ? false : __type__.__underlying__() == null ? false : stdgo.Go.fromAsInterfaceToValue(__type__ == null ? false : __type__.__underlying__().value);
                //"file:///home/runner/.go/go1.21.3/src/fmt/print.go#L709"
                _p._fmtBool(_f, _verb);
            } else if (stdgo.Go.typeEquals((__type__ : stdgo.GoFloat32))) {
                var _f:stdgo.GoFloat32 = __type__ == null ? 0 : __type__.__underlying__() == null ? 0 : stdgo.Go.fromAsInterfaceToValue(__type__ == null ? 0 : __type__.__underlying__().value);
                //"file:///home/runner/.go/go1.21.3/src/fmt/print.go#L711"
                _p._fmtFloat((_f : stdgo.GoFloat64), (32 : stdgo.GoInt), _verb);
            } else if (stdgo.Go.typeEquals((__type__ : stdgo.GoFloat64))) {
                var _f:stdgo.GoFloat64 = __type__ == null ? 0 : __type__.__underlying__() == null ? 0 : stdgo.Go.fromAsInterfaceToValue(__type__ == null ? 0 : __type__.__underlying__().value);
                //"file:///home/runner/.go/go1.21.3/src/fmt/print.go#L713"
                _p._fmtFloat(_f, (64 : stdgo.GoInt), _verb);
            } else if (stdgo.Go.typeEquals((__type__ : stdgo.GoComplex64))) {
                var _f:stdgo.GoComplex64 = __type__ == null ? new stdgo.GoComplex64(0, 0) : __type__.__underlying__() == null ? new stdgo.GoComplex64(0, 0) : stdgo.Go.fromAsInterfaceToValue(__type__ == null ? new stdgo.GoComplex64(0, 0) : __type__.__underlying__().value);
                //"file:///home/runner/.go/go1.21.3/src/fmt/print.go#L715"
                _p._fmtComplex((_f : stdgo.GoComplex128), (64 : stdgo.GoInt), _verb);
            } else if (stdgo.Go.typeEquals((__type__ : stdgo.GoComplex128))) {
                var _f:stdgo.GoComplex128 = __type__ == null ? new stdgo.GoComplex128(0, 0) : __type__.__underlying__() == null ? new stdgo.GoComplex128(0, 0) : stdgo.Go.fromAsInterfaceToValue(__type__ == null ? new stdgo.GoComplex128(0, 0) : __type__.__underlying__().value);
                //"file:///home/runner/.go/go1.21.3/src/fmt/print.go#L717"
                _p._fmtComplex(_f, (128 : stdgo.GoInt), _verb);
            } else if (stdgo.Go.typeEquals((__type__ : stdgo.GoInt))) {
                var _f:stdgo.GoInt = __type__ == null ? 0 : __type__.__underlying__() == null ? 0 : stdgo.Go.fromAsInterfaceToValue(__type__ == null ? 0 : __type__.__underlying__().value);
                //"file:///home/runner/.go/go1.21.3/src/fmt/print.go#L719"
                _p._fmtInteger((_f : stdgo.GoUInt64), true, _verb);
            } else if (stdgo.Go.typeEquals((__type__ : stdgo.GoInt8))) {
                var _f:stdgo.GoInt8 = __type__ == null ? 0 : __type__.__underlying__() == null ? 0 : stdgo.Go.fromAsInterfaceToValue(__type__ == null ? 0 : __type__.__underlying__().value);
                //"file:///home/runner/.go/go1.21.3/src/fmt/print.go#L721"
                _p._fmtInteger((_f : stdgo.GoUInt64), true, _verb);
            } else if (stdgo.Go.typeEquals((__type__ : stdgo.GoInt16))) {
                var _f:stdgo.GoInt16 = __type__ == null ? 0 : __type__.__underlying__() == null ? 0 : stdgo.Go.fromAsInterfaceToValue(__type__ == null ? 0 : __type__.__underlying__().value);
                //"file:///home/runner/.go/go1.21.3/src/fmt/print.go#L723"
                _p._fmtInteger((_f : stdgo.GoUInt64), true, _verb);
            } else if (stdgo.Go.typeEquals((__type__ : stdgo.GoInt32))) {
                var _f:stdgo.GoInt32 = __type__ == null ? 0 : __type__.__underlying__() == null ? 0 : stdgo.Go.fromAsInterfaceToValue(__type__ == null ? 0 : __type__.__underlying__().value);
                //"file:///home/runner/.go/go1.21.3/src/fmt/print.go#L725"
                _p._fmtInteger((_f : stdgo.GoUInt64), true, _verb);
            } else if (stdgo.Go.typeEquals((__type__ : stdgo.GoInt64))) {
                var _f:stdgo.GoInt64 = __type__ == null ? 0 : __type__.__underlying__() == null ? 0 : stdgo.Go.fromAsInterfaceToValue(__type__ == null ? 0 : __type__.__underlying__().value);
                //"file:///home/runner/.go/go1.21.3/src/fmt/print.go#L727"
                _p._fmtInteger((_f : stdgo.GoUInt64), true, _verb);
            } else if (stdgo.Go.typeEquals((__type__ : stdgo.GoUInt))) {
                var _f:stdgo.GoUInt = __type__ == null ? 0 : __type__.__underlying__() == null ? 0 : stdgo.Go.fromAsInterfaceToValue(__type__ == null ? 0 : __type__.__underlying__().value);
                //"file:///home/runner/.go/go1.21.3/src/fmt/print.go#L729"
                _p._fmtInteger((_f : stdgo.GoUInt64), false, _verb);
            } else if (stdgo.Go.typeEquals((__type__ : stdgo.GoUInt8))) {
                var _f:stdgo.GoUInt8 = __type__ == null ? 0 : __type__.__underlying__() == null ? 0 : stdgo.Go.fromAsInterfaceToValue(__type__ == null ? 0 : __type__.__underlying__().value);
                //"file:///home/runner/.go/go1.21.3/src/fmt/print.go#L731"
                _p._fmtInteger((_f : stdgo.GoUInt64), false, _verb);
            } else if (stdgo.Go.typeEquals((__type__ : stdgo.GoUInt16))) {
                var _f:stdgo.GoUInt16 = __type__ == null ? 0 : __type__.__underlying__() == null ? 0 : stdgo.Go.fromAsInterfaceToValue(__type__ == null ? 0 : __type__.__underlying__().value);
                //"file:///home/runner/.go/go1.21.3/src/fmt/print.go#L733"
                _p._fmtInteger((_f : stdgo.GoUInt64), false, _verb);
            } else if (stdgo.Go.typeEquals((__type__ : stdgo.GoUInt32))) {
                var _f:stdgo.GoUInt32 = __type__ == null ? 0 : __type__.__underlying__() == null ? 0 : stdgo.Go.fromAsInterfaceToValue(__type__ == null ? 0 : __type__.__underlying__().value);
                //"file:///home/runner/.go/go1.21.3/src/fmt/print.go#L735"
                _p._fmtInteger((_f : stdgo.GoUInt64), false, _verb);
            } else if (stdgo.Go.typeEquals((__type__ : stdgo.GoUInt64))) {
                var _f:stdgo.GoUInt64 = __type__ == null ? 0 : __type__.__underlying__() == null ? 0 : stdgo.Go.fromAsInterfaceToValue(__type__ == null ? 0 : __type__.__underlying__().value);
                //"file:///home/runner/.go/go1.21.3/src/fmt/print.go#L737"
                _p._fmtInteger(_f, false, _verb);
            } else if (stdgo.Go.typeEquals((__type__ : stdgo.GoUIntptr))) {
                var _f:stdgo.GoUIntptr = __type__ == null ? new stdgo.GoUIntptr(0) : __type__.__underlying__() == null ? new stdgo.GoUIntptr(0) : stdgo.Go.fromAsInterfaceToValue(__type__ == null ? new stdgo.GoUIntptr(0) : __type__.__underlying__().value);
                //"file:///home/runner/.go/go1.21.3/src/fmt/print.go#L739"
                _p._fmtInteger((_f : stdgo.GoUInt64), false, _verb);
            } else if (stdgo.Go.typeEquals((__type__ : stdgo.GoString))) {
                var _f:stdgo.GoString = __type__ == null ? "" : __type__.__underlying__() == null ? "" : stdgo.Go.fromAsInterfaceToValue(__type__ == null ? "" : __type__.__underlying__().value);
                //"file:///home/runner/.go/go1.21.3/src/fmt/print.go#L741"
                _p._fmtString(_f?.__copy__(), _verb);
            } else if (stdgo.Go.typeEquals((__type__ : stdgo.Slice<stdgo.GoUInt8>))) {
                var _f:stdgo.Slice<stdgo.GoUInt8> = __type__ == null ? (null : stdgo.Slice<stdgo.GoUInt8>) : __type__.__underlying__() == null ? (null : stdgo.Slice<stdgo.GoUInt8>) : stdgo.Go.fromAsInterfaceToValue(__type__ == null ? (null : stdgo.Slice<stdgo.GoUInt8>) : __type__.__underlying__().value);
                //"file:///home/runner/.go/go1.21.3/src/fmt/print.go#L743"
                _p._fmtBytes(_f, _verb, ("[]byte" : stdgo.GoString));
            } else if (stdgo.Go.typeEquals((__type__ : stdgo._internal.reflect.Reflect_value.Value))) {
                var _f:stdgo._internal.reflect.Reflect_value.Value = __type__ == null ? ({} : stdgo._internal.reflect.Reflect_value.Value) : __type__.__underlying__() == null ? ({} : stdgo._internal.reflect.Reflect_value.Value) : stdgo.Go.fromAsInterfaceToValue(__type__ == null ? ({} : stdgo._internal.reflect.Reflect_value.Value) : __type__.__underlying__().value);
                //"file:///home/runner/.go/go1.21.3/src/fmt/print.go#L747"
                if ((_f.isValid() && _f.canInterface() : Bool)) {
                    (@:checkr _p ?? throw "null pointer dereference")._arg = _f.interface_();
                    //"file:///home/runner/.go/go1.21.3/src/fmt/print.go#L749"
                    if (_p._handleMethods(_verb)) {
                        //"file:///home/runner/.go/go1.21.3/src/fmt/print.go#L750"
                        return;
                    };
                };
                //"file:///home/runner/.go/go1.21.3/src/fmt/print.go#L753"
                _p._printValue(_f?.__copy__(), _verb, (0 : stdgo.GoInt));
            } else {
                var _f:stdgo.AnyInterface = __type__?.__underlying__();
                //"file:///home/runner/.go/go1.21.3/src/fmt/print.go#L756"
                if (!_p._handleMethods(_verb)) {
                    //"file:///home/runner/.go/go1.21.3/src/fmt/print.go#L759"
                    _p._printValue(stdgo._internal.reflect.Reflect_valueof.valueOf(_f)?.__copy__(), _verb, (0 : stdgo.GoInt));
                };
            };
        };
    }
    @:keep
    @:tdfield
    static public function _handleMethods( _p:stdgo.Ref<stdgo._internal.fmt.Fmt_t_pp.T_pp>, _verb:stdgo.GoInt32):Bool {
        @:recv var _p:stdgo.Ref<stdgo._internal.fmt.Fmt_t_pp.T_pp> = _p;
        var __deferstack__:Array<{ var ran : Bool; var f : Void -> Void; }> = [];
        var _handled = false;
        try {
            //"file:///home/runner/.go/go1.21.3/src/fmt/print.go#L622"
            if ((@:checkr _p ?? throw "null pointer dereference")._erroring) {
                //"file:///home/runner/.go/go1.21.3/src/fmt/print.go#L623"
                return _handled;
            };
            //"file:///home/runner/.go/go1.21.3/src/fmt/print.go#L625"
            if (_verb == ((119 : stdgo.GoInt32))) {
                var __tmp__ = try {
                    { _0 : (stdgo.Go.typeAssert(((@:checkr _p ?? throw "null pointer dereference")._arg : stdgo.Error)) : stdgo.Error), _1 : true };
                } catch(_) {
                    { _0 : (null : stdgo.Error), _1 : false };
                }, __0 = __tmp__._0, _ok = __tmp__._1;
                //"file:///home/runner/.go/go1.21.3/src/fmt/print.go#L628"
                if ((!_ok || !(@:checkr _p ?? throw "null pointer dereference")._wrapErrs : Bool)) {
                    //"file:///home/runner/.go/go1.21.3/src/fmt/print.go#L629"
                    _p._badVerb(_verb);
                    //"file:///home/runner/.go/go1.21.3/src/fmt/print.go#L630"
                    return _handled = true;
                };
                _verb = (118 : stdgo.GoInt32);
            };
            //"file:///home/runner/.go/go1.21.3/src/fmt/print.go#L637"
            {
                var __tmp__ = try {
                    { _0 : (stdgo.Go.typeAssert(((@:checkr _p ?? throw "null pointer dereference")._arg : stdgo._internal.fmt.Fmt_formatter.Formatter)) : stdgo._internal.fmt.Fmt_formatter.Formatter), _1 : true };
                } catch(_) {
                    { _0 : (null : stdgo._internal.fmt.Fmt_formatter.Formatter), _1 : false };
                }, _formatter = __tmp__._0, _ok = __tmp__._1;
                if (_ok) {
                    _handled = true;
                    {
                        var _a0 = (@:checkr _p ?? throw "null pointer dereference")._arg;
                        var _a1 = _verb;
                        var _a2 = ("Format" : stdgo.GoString);
                        final __f__ = _p._catchPanic;
                        __deferstack__.unshift({ ran : false, f : () -> __f__(_a0, _a1, _a2?.__copy__()) });
                    };
                    //"file:///home/runner/.go/go1.21.3/src/fmt/print.go#L640"
                    _formatter.format(stdgo.Go.asInterface(_p), _verb);
                    //"file:///home/runner/.go/go1.21.3/src/fmt/print.go#L641"
                    {
                        for (defer in __deferstack__) {
                            if (defer.ran) continue;
                            defer.ran = true;
                            defer.f();
                        };
                        return _handled;
                    };
                };
            };
            //"file:///home/runner/.go/go1.21.3/src/fmt/print.go#L645"
            if ((@:checkr _p ?? throw "null pointer dereference")._fmt._fmtFlags._sharpV) {
                //"file:///home/runner/.go/go1.21.3/src/fmt/print.go#L646"
                {
                    var __tmp__ = try {
                        { _0 : (stdgo.Go.typeAssert(((@:checkr _p ?? throw "null pointer dereference")._arg : stdgo._internal.fmt.Fmt_gostringer.GoStringer)) : stdgo._internal.fmt.Fmt_gostringer.GoStringer), _1 : true };
                    } catch(_) {
                        { _0 : (null : stdgo._internal.fmt.Fmt_gostringer.GoStringer), _1 : false };
                    }, _stringer = __tmp__._0, _ok = __tmp__._1;
                    if (_ok) {
                        _handled = true;
                        {
                            var _a0 = (@:checkr _p ?? throw "null pointer dereference")._arg;
                            var _a1 = _verb;
                            var _a2 = ("GoString" : stdgo.GoString);
                            final __f__ = _p._catchPanic;
                            __deferstack__.unshift({ ran : false, f : () -> __f__(_a0, _a1, _a2?.__copy__()) });
                        };
                        //"file:///home/runner/.go/go1.21.3/src/fmt/print.go#L650"
                        (@:checkr _p ?? throw "null pointer dereference")._fmt._fmtS(_stringer.goString()?.__copy__());
                        //"file:///home/runner/.go/go1.21.3/src/fmt/print.go#L651"
                        {
                            for (defer in __deferstack__) {
                                if (defer.ran) continue;
                                defer.ran = true;
                                defer.f();
                            };
                            return _handled;
                        };
                    };
                };
            } else {
                //"file:///home/runner/.go/go1.21.3/src/fmt/print.go#L657"
                {
                    final __value__ = _verb;
                    if (__value__ == ((118 : stdgo.GoInt32)) || __value__ == ((115 : stdgo.GoInt32)) || __value__ == ((120 : stdgo.GoInt32)) || __value__ == ((88 : stdgo.GoInt32)) || __value__ == ((113 : stdgo.GoInt32))) {
                        //"file:///home/runner/.go/go1.21.3/src/fmt/print.go#L663"
                        {
                            final __type__ = (@:checkr _p ?? throw "null pointer dereference")._arg;
                            if (stdgo.Go.typeEquals((__type__ : stdgo.Error))) {
                                var _v:stdgo.Error = __type__ == null ? (null : stdgo.Error) : __type__.__underlying__() == null ? (null : stdgo.Error) : __type__ == null ? (null : stdgo.Error) : __type__.__underlying__().value;
                                _handled = true;
                                {
                                    var _a0 = (@:checkr _p ?? throw "null pointer dereference")._arg;
                                    var _a1 = _verb;
                                    var _a2 = ("Error" : stdgo.GoString);
                                    final __f__ = _p._catchPanic;
                                    __deferstack__.unshift({ ran : false, f : () -> __f__(_a0, _a1, _a2?.__copy__()) });
                                };
                                //"file:///home/runner/.go/go1.21.3/src/fmt/print.go#L667"
                                _p._fmtString(_v.error()?.__copy__(), _verb);
                                //"file:///home/runner/.go/go1.21.3/src/fmt/print.go#L668"
                                {
                                    for (defer in __deferstack__) {
                                        if (defer.ran) continue;
                                        defer.ran = true;
                                        defer.f();
                                    };
                                    return _handled;
                                };
                            } else if (stdgo.Go.typeEquals((__type__ : stdgo._internal.fmt.Fmt_stringer.Stringer))) {
                                var _v:stdgo._internal.fmt.Fmt_stringer.Stringer = __type__ == null ? (null : stdgo._internal.fmt.Fmt_stringer.Stringer) : __type__.__underlying__() == null ? (null : stdgo._internal.fmt.Fmt_stringer.Stringer) : __type__ == null ? (null : stdgo._internal.fmt.Fmt_stringer.Stringer) : __type__.__underlying__().value;
                                _handled = true;
                                {
                                    var _a0 = (@:checkr _p ?? throw "null pointer dereference")._arg;
                                    var _a1 = _verb;
                                    var _a2 = ("String" : stdgo.GoString);
                                    final __f__ = _p._catchPanic;
                                    __deferstack__.unshift({ ran : false, f : () -> __f__(_a0, _a1, _a2?.__copy__()) });
                                };
                                //"file:///home/runner/.go/go1.21.3/src/fmt/print.go#L673"
                                _p._fmtString((_v.string() : stdgo.GoString)?.__copy__(), _verb);
                                //"file:///home/runner/.go/go1.21.3/src/fmt/print.go#L674"
                                {
                                    for (defer in __deferstack__) {
                                        if (defer.ran) continue;
                                        defer.ran = true;
                                        defer.f();
                                    };
                                    return _handled;
                                };
                            };
                        };
                    };
                };
            };
            //"file:///home/runner/.go/go1.21.3/src/fmt/print.go#L678"
            {
                final __ret__:Bool = _handled = false;
                for (defer in __deferstack__) {
                    if (defer.ran) continue;
                    defer.ran = true;
                    defer.f();
                };
                return __ret__;
            };
            {
                for (defer in __deferstack__) {
                    if (defer.ran) continue;
                    defer.ran = true;
                    defer.f();
                };
                if (stdgo.Go.recover_exception != null) {
                    final e = stdgo.Go.recover_exception;
                    stdgo.Go.recover_exception = null;
                    throw e;
                };
                return _handled;
            };
        } catch(__exception__) {
            {
                var exe:Dynamic = __exception__.native;
                if ((exe is haxe.ValueException)) exe = exe.value;
                if ((exe is stdgo.AnyInterface.AnyInterfaceData) == false) {
                    if (__exception__.message == "__return__") throw "__return__";
                    exe = stdgo.Go.toInterface(__exception__.message);
                };
                stdgo.Go.recover_exception = exe;
                {
                    function f() {
                        try {
                            {
                                for (defer in __deferstack__) {
                                    if (defer.ran) continue;
                                    defer.ran = true;
                                    defer.f();
                                };
                            };
                        } catch(__exception__2) {
                            var exe:Dynamic = __exception__2.native;
                            if ((exe is haxe.ValueException)) exe = exe.value;
                            if (!(exe is stdgo.AnyInterface.AnyInterfaceData)) {
                                if (__exception__.message == "__return__") throw "__return__";
                                exe = stdgo.Go.toInterface(__exception__.message);
                            };
                            stdgo.Go.recover_exception = exe;
                            f();
                        };
                    };
                    f();
                };
                if (stdgo.Go.recover_exception != null) {
                    final e = stdgo.Go.recover_exception;
                    stdgo.Go.recover_exception = null;
                    throw e;
                };
                return _handled;
            };
        };
    }
    @:keep
    @:tdfield
    static public function _catchPanic( _p:stdgo.Ref<stdgo._internal.fmt.Fmt_t_pp.T_pp>, _arg:stdgo.AnyInterface, _verb:stdgo.GoInt32, _method:stdgo.GoString):Void {
        @:recv var _p:stdgo.Ref<stdgo._internal.fmt.Fmt_t_pp.T_pp> = _p;
        //"file:///home/runner/.go/go1.21.3/src/fmt/print.go#L588"
        {
            var _err = ({
                final r = stdgo.Go.recover_exception;
                stdgo.Go.recover_exception = null;
                r;
            } : stdgo.AnyInterface);
            if (_err != null) {
                //"file:///home/runner/.go/go1.21.3/src/fmt/print.go#L592"
                {
                    var _v = (stdgo._internal.reflect.Reflect_valueof.valueOf(_arg)?.__copy__() : stdgo._internal.reflect.Reflect_value.Value);
                    if (((_v.kind() == (22u32 : stdgo._internal.reflect.Reflect_kind.Kind)) && _v.isNil() : Bool)) {
                        //"file:///home/runner/.go/go1.21.3/src/fmt/print.go#L593"
                        (@:checkr _p ?? throw "null pointer dereference")._buf._writeString(("<nil>" : stdgo.GoString));
                        //"file:///home/runner/.go/go1.21.3/src/fmt/print.go#L594"
                        return;
                    };
                };
                //"file:///home/runner/.go/go1.21.3/src/fmt/print.go#L598"
                if ((@:checkr _p ?? throw "null pointer dereference")._panicking) {
                    //"file:///home/runner/.go/go1.21.3/src/fmt/print.go#L600"
                    throw stdgo.Go.toInterface(_err);
                };
                var _oldFlags = ((@:checkr _p ?? throw "null pointer dereference")._fmt._fmtFlags?.__copy__() : stdgo._internal.fmt.Fmt_t_fmtflags.T_fmtFlags);
                //"file:///home/runner/.go/go1.21.3/src/fmt/print.go#L605"
                (@:checkr _p ?? throw "null pointer dereference")._fmt._clearflags();
                //"file:///home/runner/.go/go1.21.3/src/fmt/print.go#L607"
                (@:checkr _p ?? throw "null pointer dereference")._buf._writeString(("%!" : stdgo.GoString));
                //"file:///home/runner/.go/go1.21.3/src/fmt/print.go#L608"
                (@:checkr _p ?? throw "null pointer dereference")._buf._writeRune(_verb);
                //"file:///home/runner/.go/go1.21.3/src/fmt/print.go#L609"
                (@:checkr _p ?? throw "null pointer dereference")._buf._writeString(("(PANIC=" : stdgo.GoString));
                //"file:///home/runner/.go/go1.21.3/src/fmt/print.go#L610"
                (@:checkr _p ?? throw "null pointer dereference")._buf._writeString(_method?.__copy__());
                //"file:///home/runner/.go/go1.21.3/src/fmt/print.go#L611"
                (@:checkr _p ?? throw "null pointer dereference")._buf._writeString((" method: " : stdgo.GoString));
                (@:checkr _p ?? throw "null pointer dereference")._panicking = true;
                //"file:///home/runner/.go/go1.21.3/src/fmt/print.go#L613"
                _p._printArg(_err, (118 : stdgo.GoInt32));
                (@:checkr _p ?? throw "null pointer dereference")._panicking = false;
                //"file:///home/runner/.go/go1.21.3/src/fmt/print.go#L615"
                (@:checkr _p ?? throw "null pointer dereference")._buf._writeByte((41 : stdgo.GoUInt8));
                (@:checkr _p ?? throw "null pointer dereference")._fmt._fmtFlags = _oldFlags?.__copy__();
            };
        };
    }
    @:keep
    @:tdfield
    static public function _fmtPointer( _p:stdgo.Ref<stdgo._internal.fmt.Fmt_t_pp.T_pp>, _value:stdgo._internal.reflect.Reflect_value.Value, _verb:stdgo.GoInt32):Void {
        @:recv var _p:stdgo.Ref<stdgo._internal.fmt.Fmt_t_pp.T_pp> = _p;
        var _u:stdgo.GoUIntptr = new stdgo.GoUIntptr(0);
        //"file:///home/runner/.go/go1.21.3/src/fmt/print.go#L551"
        {
            final __value__ = _value.kind();
            if (__value__ == ((18u32 : stdgo._internal.reflect.Reflect_kind.Kind)) || __value__ == ((19u32 : stdgo._internal.reflect.Reflect_kind.Kind)) || __value__ == ((21u32 : stdgo._internal.reflect.Reflect_kind.Kind)) || __value__ == ((22u32 : stdgo._internal.reflect.Reflect_kind.Kind)) || __value__ == ((23u32 : stdgo._internal.reflect.Reflect_kind.Kind)) || __value__ == ((26u32 : stdgo._internal.reflect.Reflect_kind.Kind))) {
                _u = _value.pointer();
            } else {
                //"file:///home/runner/.go/go1.21.3/src/fmt/print.go#L555"
                _p._badVerb(_verb);
                //"file:///home/runner/.go/go1.21.3/src/fmt/print.go#L556"
                return;
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/fmt/print.go#L559"
        {
            final __value__ = _verb;
            if (__value__ == ((118 : stdgo.GoInt32))) {
                //"file:///home/runner/.go/go1.21.3/src/fmt/print.go#L561"
                if ((@:checkr _p ?? throw "null pointer dereference")._fmt._fmtFlags._sharpV) {
                    //"file:///home/runner/.go/go1.21.3/src/fmt/print.go#L562"
                    (@:checkr _p ?? throw "null pointer dereference")._buf._writeByte((40 : stdgo.GoUInt8));
                    //"file:///home/runner/.go/go1.21.3/src/fmt/print.go#L563"
                    (@:checkr _p ?? throw "null pointer dereference")._buf._writeString((_value.type().string() : stdgo.GoString)?.__copy__());
                    //"file:///home/runner/.go/go1.21.3/src/fmt/print.go#L564"
                    (@:checkr _p ?? throw "null pointer dereference")._buf._writeString((")(" : stdgo.GoString));
                    //"file:///home/runner/.go/go1.21.3/src/fmt/print.go#L565"
                    if (_u == ((new stdgo.GoUIntptr(0) : stdgo.GoUIntptr))) {
                        //"file:///home/runner/.go/go1.21.3/src/fmt/print.go#L566"
                        (@:checkr _p ?? throw "null pointer dereference")._buf._writeString(("nil" : stdgo.GoString));
                    } else {
                        //"file:///home/runner/.go/go1.21.3/src/fmt/print.go#L568"
                        _p._fmt0x64((_u : stdgo.GoUInt64), true);
                    };
                    //"file:///home/runner/.go/go1.21.3/src/fmt/print.go#L570"
                    (@:checkr _p ?? throw "null pointer dereference")._buf._writeByte((41 : stdgo.GoUInt8));
                } else {
                    //"file:///home/runner/.go/go1.21.3/src/fmt/print.go#L572"
                    if (_u == ((new stdgo.GoUIntptr(0) : stdgo.GoUIntptr))) {
                        //"file:///home/runner/.go/go1.21.3/src/fmt/print.go#L573"
                        (@:checkr _p ?? throw "null pointer dereference")._fmt._padString(("<nil>" : stdgo.GoString));
                    } else {
                        //"file:///home/runner/.go/go1.21.3/src/fmt/print.go#L575"
                        _p._fmt0x64((_u : stdgo.GoUInt64), !(@:checkr _p ?? throw "null pointer dereference")._fmt._fmtFlags._sharp);
                    };
                };
            } else if (__value__ == ((112 : stdgo.GoInt32))) {
                //"file:///home/runner/.go/go1.21.3/src/fmt/print.go#L579"
                _p._fmt0x64((_u : stdgo.GoUInt64), !(@:checkr _p ?? throw "null pointer dereference")._fmt._fmtFlags._sharp);
            } else if (__value__ == ((98 : stdgo.GoInt32)) || __value__ == ((111 : stdgo.GoInt32)) || __value__ == ((100 : stdgo.GoInt32)) || __value__ == ((120 : stdgo.GoInt32)) || __value__ == ((88 : stdgo.GoInt32))) {
                //"file:///home/runner/.go/go1.21.3/src/fmt/print.go#L581"
                _p._fmtInteger((_u : stdgo.GoUInt64), false, _verb);
            } else {
                //"file:///home/runner/.go/go1.21.3/src/fmt/print.go#L583"
                _p._badVerb(_verb);
            };
        };
    }
    @:keep
    @:tdfield
    static public function _fmtBytes( _p:stdgo.Ref<stdgo._internal.fmt.Fmt_t_pp.T_pp>, _v:stdgo.Slice<stdgo.GoUInt8>, _verb:stdgo.GoInt32, _typeString:stdgo.GoString):Void {
        @:recv var _p:stdgo.Ref<stdgo._internal.fmt.Fmt_t_pp.T_pp> = _p;
        //"file:///home/runner/.go/go1.21.3/src/fmt/print.go#L510"
        {
            final __value__ = _verb;
            if (__value__ == ((118 : stdgo.GoInt32)) || __value__ == ((100 : stdgo.GoInt32))) {
                //"file:///home/runner/.go/go1.21.3/src/fmt/print.go#L512"
                if ((@:checkr _p ?? throw "null pointer dereference")._fmt._fmtFlags._sharpV) {
                    //"file:///home/runner/.go/go1.21.3/src/fmt/print.go#L513"
                    (@:checkr _p ?? throw "null pointer dereference")._buf._writeString(_typeString?.__copy__());
                    //"file:///home/runner/.go/go1.21.3/src/fmt/print.go#L514"
                    if (_v == null) {
                        //"file:///home/runner/.go/go1.21.3/src/fmt/print.go#L515"
                        (@:checkr _p ?? throw "null pointer dereference")._buf._writeString(("(nil)" : stdgo.GoString));
                        //"file:///home/runner/.go/go1.21.3/src/fmt/print.go#L516"
                        return;
                    };
                    //"file:///home/runner/.go/go1.21.3/src/fmt/print.go#L518"
                    (@:checkr _p ?? throw "null pointer dereference")._buf._writeByte((123 : stdgo.GoUInt8));
                    //"file:///home/runner/.go/go1.21.3/src/fmt/print.go#L519"
                    for (_i => _c in _v) {
                        //"file:///home/runner/.go/go1.21.3/src/fmt/print.go#L520"
                        if ((_i > (0 : stdgo.GoInt) : Bool)) {
                            //"file:///home/runner/.go/go1.21.3/src/fmt/print.go#L521"
                            (@:checkr _p ?? throw "null pointer dereference")._buf._writeString((", " : stdgo.GoString));
                        };
                        //"file:///home/runner/.go/go1.21.3/src/fmt/print.go#L523"
                        _p._fmt0x64((_c : stdgo.GoUInt64), true);
                    };
                    //"file:///home/runner/.go/go1.21.3/src/fmt/print.go#L525"
                    (@:checkr _p ?? throw "null pointer dereference")._buf._writeByte((125 : stdgo.GoUInt8));
                } else {
                    //"file:///home/runner/.go/go1.21.3/src/fmt/print.go#L527"
                    (@:checkr _p ?? throw "null pointer dereference")._buf._writeByte((91 : stdgo.GoUInt8));
                    //"file:///home/runner/.go/go1.21.3/src/fmt/print.go#L528"
                    for (_i => _c in _v) {
                        //"file:///home/runner/.go/go1.21.3/src/fmt/print.go#L529"
                        if ((_i > (0 : stdgo.GoInt) : Bool)) {
                            //"file:///home/runner/.go/go1.21.3/src/fmt/print.go#L530"
                            (@:checkr _p ?? throw "null pointer dereference")._buf._writeByte((32 : stdgo.GoUInt8));
                        };
                        //"file:///home/runner/.go/go1.21.3/src/fmt/print.go#L532"
                        (@:checkr _p ?? throw "null pointer dereference")._fmt._fmtInteger((_c : stdgo.GoUInt64), (10 : stdgo.GoInt), false, _verb, ("0123456789abcdefx" : stdgo.GoString));
                    };
                    //"file:///home/runner/.go/go1.21.3/src/fmt/print.go#L534"
                    (@:checkr _p ?? throw "null pointer dereference")._buf._writeByte((93 : stdgo.GoUInt8));
                };
            } else if (__value__ == ((115 : stdgo.GoInt32))) {
                //"file:///home/runner/.go/go1.21.3/src/fmt/print.go#L537"
                (@:checkr _p ?? throw "null pointer dereference")._fmt._fmtBs(_v);
            } else if (__value__ == ((120 : stdgo.GoInt32))) {
                //"file:///home/runner/.go/go1.21.3/src/fmt/print.go#L539"
                (@:checkr _p ?? throw "null pointer dereference")._fmt._fmtBx(_v, ("0123456789abcdefx" : stdgo.GoString));
            } else if (__value__ == ((88 : stdgo.GoInt32))) {
                //"file:///home/runner/.go/go1.21.3/src/fmt/print.go#L541"
                (@:checkr _p ?? throw "null pointer dereference")._fmt._fmtBx(_v, ("0123456789ABCDEFX" : stdgo.GoString));
            } else if (__value__ == ((113 : stdgo.GoInt32))) {
                //"file:///home/runner/.go/go1.21.3/src/fmt/print.go#L543"
                (@:checkr _p ?? throw "null pointer dereference")._fmt._fmtQ((_v : stdgo.GoString)?.__copy__());
            } else {
                //"file:///home/runner/.go/go1.21.3/src/fmt/print.go#L545"
                _p._printValue(stdgo._internal.reflect.Reflect_valueof.valueOf(stdgo.Go.toInterface(_v))?.__copy__(), _verb, (0 : stdgo.GoInt));
            };
        };
    }
    @:keep
    @:tdfield
    static public function _fmtString( _p:stdgo.Ref<stdgo._internal.fmt.Fmt_t_pp.T_pp>, _v:stdgo.GoString, _verb:stdgo.GoInt32):Void {
        @:recv var _p:stdgo.Ref<stdgo._internal.fmt.Fmt_t_pp.T_pp> = _p;
        //"file:///home/runner/.go/go1.21.3/src/fmt/print.go#L489"
        {
            final __value__ = _verb;
            if (__value__ == ((118 : stdgo.GoInt32))) {
                //"file:///home/runner/.go/go1.21.3/src/fmt/print.go#L491"
                if ((@:checkr _p ?? throw "null pointer dereference")._fmt._fmtFlags._sharpV) {
                    //"file:///home/runner/.go/go1.21.3/src/fmt/print.go#L492"
                    (@:checkr _p ?? throw "null pointer dereference")._fmt._fmtQ(_v?.__copy__());
                } else {
                    //"file:///home/runner/.go/go1.21.3/src/fmt/print.go#L494"
                    (@:checkr _p ?? throw "null pointer dereference")._fmt._fmtS(_v?.__copy__());
                };
            } else if (__value__ == ((115 : stdgo.GoInt32))) {
                //"file:///home/runner/.go/go1.21.3/src/fmt/print.go#L497"
                (@:checkr _p ?? throw "null pointer dereference")._fmt._fmtS(_v?.__copy__());
            } else if (__value__ == ((120 : stdgo.GoInt32))) {
                //"file:///home/runner/.go/go1.21.3/src/fmt/print.go#L499"
                (@:checkr _p ?? throw "null pointer dereference")._fmt._fmtSx(_v?.__copy__(), ("0123456789abcdefx" : stdgo.GoString));
            } else if (__value__ == ((88 : stdgo.GoInt32))) {
                //"file:///home/runner/.go/go1.21.3/src/fmt/print.go#L501"
                (@:checkr _p ?? throw "null pointer dereference")._fmt._fmtSx(_v?.__copy__(), ("0123456789ABCDEFX" : stdgo.GoString));
            } else if (__value__ == ((113 : stdgo.GoInt32))) {
                //"file:///home/runner/.go/go1.21.3/src/fmt/print.go#L503"
                (@:checkr _p ?? throw "null pointer dereference")._fmt._fmtQ(_v?.__copy__());
            } else {
                //"file:///home/runner/.go/go1.21.3/src/fmt/print.go#L505"
                _p._badVerb(_verb);
            };
        };
    }
    @:keep
    @:tdfield
    static public function _fmtComplex( _p:stdgo.Ref<stdgo._internal.fmt.Fmt_t_pp.T_pp>, _v:stdgo.GoComplex128, _size:stdgo.GoInt, _verb:stdgo.GoInt32):Void {
        @:recv var _p:stdgo.Ref<stdgo._internal.fmt.Fmt_t_pp.T_pp> = _p;
        //"file:///home/runner/.go/go1.21.3/src/fmt/print.go#L473"
        {
            final __value__ = _verb;
            if (__value__ == ((118 : stdgo.GoInt32)) || __value__ == ((98 : stdgo.GoInt32)) || __value__ == ((103 : stdgo.GoInt32)) || __value__ == ((71 : stdgo.GoInt32)) || __value__ == ((120 : stdgo.GoInt32)) || __value__ == ((88 : stdgo.GoInt32)) || __value__ == ((102 : stdgo.GoInt32)) || __value__ == ((70 : stdgo.GoInt32)) || __value__ == ((101 : stdgo.GoInt32)) || __value__ == ((69 : stdgo.GoInt32))) {
                var _oldPlus = ((@:checkr _p ?? throw "null pointer dereference")._fmt._fmtFlags._plus : Bool);
                //"file:///home/runner/.go/go1.21.3/src/fmt/print.go#L476"
                (@:checkr _p ?? throw "null pointer dereference")._buf._writeByte((40 : stdgo.GoUInt8));
                //"file:///home/runner/.go/go1.21.3/src/fmt/print.go#L477"
                _p._fmtFloat((_v : stdgo.GoComplex128).real, (_size / (2 : stdgo.GoInt) : stdgo.GoInt), _verb);
                (@:checkr _p ?? throw "null pointer dereference")._fmt._fmtFlags._plus = true;
                //"file:///home/runner/.go/go1.21.3/src/fmt/print.go#L480"
                _p._fmtFloat((_v : stdgo.GoComplex128).imag, (_size / (2 : stdgo.GoInt) : stdgo.GoInt), _verb);
                //"file:///home/runner/.go/go1.21.3/src/fmt/print.go#L481"
                (@:checkr _p ?? throw "null pointer dereference")._buf._writeString(("i)" : stdgo.GoString));
                (@:checkr _p ?? throw "null pointer dereference")._fmt._fmtFlags._plus = _oldPlus;
            } else {
                //"file:///home/runner/.go/go1.21.3/src/fmt/print.go#L484"
                _p._badVerb(_verb);
            };
        };
    }
    @:keep
    @:tdfield
    static public function _fmtFloat( _p:stdgo.Ref<stdgo._internal.fmt.Fmt_t_pp.T_pp>, _v:stdgo.GoFloat64, _size:stdgo.GoInt, _verb:stdgo.GoInt32):Void {
        @:recv var _p:stdgo.Ref<stdgo._internal.fmt.Fmt_t_pp.T_pp> = _p;
        //"file:///home/runner/.go/go1.21.3/src/fmt/print.go#L453"
        {
            final __value__ = _verb;
            if (__value__ == ((118 : stdgo.GoInt32))) {
                //"file:///home/runner/.go/go1.21.3/src/fmt/print.go#L455"
                (@:checkr _p ?? throw "null pointer dereference")._fmt._fmtFloat(_v, _size, (103 : stdgo.GoInt32), (-1 : stdgo.GoInt));
            } else if (__value__ == ((98 : stdgo.GoInt32)) || __value__ == ((103 : stdgo.GoInt32)) || __value__ == ((71 : stdgo.GoInt32)) || __value__ == ((120 : stdgo.GoInt32)) || __value__ == ((88 : stdgo.GoInt32))) {
                //"file:///home/runner/.go/go1.21.3/src/fmt/print.go#L457"
                (@:checkr _p ?? throw "null pointer dereference")._fmt._fmtFloat(_v, _size, _verb, (-1 : stdgo.GoInt));
            } else if (__value__ == ((102 : stdgo.GoInt32)) || __value__ == ((101 : stdgo.GoInt32)) || __value__ == ((69 : stdgo.GoInt32))) {
                //"file:///home/runner/.go/go1.21.3/src/fmt/print.go#L459"
                (@:checkr _p ?? throw "null pointer dereference")._fmt._fmtFloat(_v, _size, _verb, (6 : stdgo.GoInt));
            } else if (__value__ == ((70 : stdgo.GoInt32))) {
                //"file:///home/runner/.go/go1.21.3/src/fmt/print.go#L461"
                (@:checkr _p ?? throw "null pointer dereference")._fmt._fmtFloat(_v, _size, (102 : stdgo.GoInt32), (6 : stdgo.GoInt));
            } else {
                //"file:///home/runner/.go/go1.21.3/src/fmt/print.go#L463"
                _p._badVerb(_verb);
            };
        };
    }
    @:keep
    @:tdfield
    static public function _fmtInteger( _p:stdgo.Ref<stdgo._internal.fmt.Fmt_t_pp.T_pp>, _v:stdgo.GoUInt64, _isSigned:Bool, _verb:stdgo.GoInt32):Void {
        @:recv var _p:stdgo.Ref<stdgo._internal.fmt.Fmt_t_pp.T_pp> = _p;
        //"file:///home/runner/.go/go1.21.3/src/fmt/print.go#L422"
        {
            final __value__ = _verb;
            if (__value__ == ((118 : stdgo.GoInt32))) {
                //"file:///home/runner/.go/go1.21.3/src/fmt/print.go#L424"
                if (((@:checkr _p ?? throw "null pointer dereference")._fmt._fmtFlags._sharpV && !_isSigned : Bool)) {
                    //"file:///home/runner/.go/go1.21.3/src/fmt/print.go#L425"
                    _p._fmt0x64(_v, true);
                } else {
                    //"file:///home/runner/.go/go1.21.3/src/fmt/print.go#L427"
                    (@:checkr _p ?? throw "null pointer dereference")._fmt._fmtInteger(_v, (10 : stdgo.GoInt), _isSigned, _verb, ("0123456789abcdefx" : stdgo.GoString));
                };
            } else if (__value__ == ((100 : stdgo.GoInt32))) {
                //"file:///home/runner/.go/go1.21.3/src/fmt/print.go#L430"
                (@:checkr _p ?? throw "null pointer dereference")._fmt._fmtInteger(_v, (10 : stdgo.GoInt), _isSigned, _verb, ("0123456789abcdefx" : stdgo.GoString));
            } else if (__value__ == ((98 : stdgo.GoInt32))) {
                //"file:///home/runner/.go/go1.21.3/src/fmt/print.go#L432"
                (@:checkr _p ?? throw "null pointer dereference")._fmt._fmtInteger(_v, (2 : stdgo.GoInt), _isSigned, _verb, ("0123456789abcdefx" : stdgo.GoString));
            } else if (__value__ == ((111 : stdgo.GoInt32)) || __value__ == ((79 : stdgo.GoInt32))) {
                //"file:///home/runner/.go/go1.21.3/src/fmt/print.go#L434"
                (@:checkr _p ?? throw "null pointer dereference")._fmt._fmtInteger(_v, (8 : stdgo.GoInt), _isSigned, _verb, ("0123456789abcdefx" : stdgo.GoString));
            } else if (__value__ == ((120 : stdgo.GoInt32))) {
                //"file:///home/runner/.go/go1.21.3/src/fmt/print.go#L436"
                (@:checkr _p ?? throw "null pointer dereference")._fmt._fmtInteger(_v, (16 : stdgo.GoInt), _isSigned, _verb, ("0123456789abcdefx" : stdgo.GoString));
            } else if (__value__ == ((88 : stdgo.GoInt32))) {
                //"file:///home/runner/.go/go1.21.3/src/fmt/print.go#L438"
                (@:checkr _p ?? throw "null pointer dereference")._fmt._fmtInteger(_v, (16 : stdgo.GoInt), _isSigned, _verb, ("0123456789ABCDEFX" : stdgo.GoString));
            } else if (__value__ == ((99 : stdgo.GoInt32))) {
                //"file:///home/runner/.go/go1.21.3/src/fmt/print.go#L440"
                (@:checkr _p ?? throw "null pointer dereference")._fmt._fmtC(_v);
            } else if (__value__ == ((113 : stdgo.GoInt32))) {
                //"file:///home/runner/.go/go1.21.3/src/fmt/print.go#L442"
                (@:checkr _p ?? throw "null pointer dereference")._fmt._fmtQc(_v);
            } else if (__value__ == ((85 : stdgo.GoInt32))) {
                //"file:///home/runner/.go/go1.21.3/src/fmt/print.go#L444"
                (@:checkr _p ?? throw "null pointer dereference")._fmt._fmtUnicode(_v);
            } else {
                //"file:///home/runner/.go/go1.21.3/src/fmt/print.go#L446"
                _p._badVerb(_verb);
            };
        };
    }
    @:keep
    @:tdfield
    static public function _fmt0x64( _p:stdgo.Ref<stdgo._internal.fmt.Fmt_t_pp.T_pp>, _v:stdgo.GoUInt64, _leading0x:Bool):Void {
        @:recv var _p:stdgo.Ref<stdgo._internal.fmt.Fmt_t_pp.T_pp> = _p;
        var _sharp = ((@:checkr _p ?? throw "null pointer dereference")._fmt._fmtFlags._sharp : Bool);
        (@:checkr _p ?? throw "null pointer dereference")._fmt._fmtFlags._sharp = _leading0x;
        //"file:///home/runner/.go/go1.21.3/src/fmt/print.go#L416"
        (@:checkr _p ?? throw "null pointer dereference")._fmt._fmtInteger(_v, (16 : stdgo.GoInt), false, (118 : stdgo.GoInt32), ("0123456789abcdefx" : stdgo.GoString));
        (@:checkr _p ?? throw "null pointer dereference")._fmt._fmtFlags._sharp = _sharp;
    }
    @:keep
    @:tdfield
    static public function _fmtBool( _p:stdgo.Ref<stdgo._internal.fmt.Fmt_t_pp.T_pp>, _v:Bool, _verb:stdgo.GoInt32):Void {
        @:recv var _p:stdgo.Ref<stdgo._internal.fmt.Fmt_t_pp.T_pp> = _p;
        //"file:///home/runner/.go/go1.21.3/src/fmt/print.go#L403"
        {
            final __value__ = _verb;
            if (__value__ == ((116 : stdgo.GoInt32)) || __value__ == ((118 : stdgo.GoInt32))) {
                //"file:///home/runner/.go/go1.21.3/src/fmt/print.go#L405"
                (@:checkr _p ?? throw "null pointer dereference")._fmt._fmtBoolean(_v);
            } else {
                //"file:///home/runner/.go/go1.21.3/src/fmt/print.go#L407"
                _p._badVerb(_verb);
            };
        };
    }
    @:keep
    @:tdfield
    static public function _badVerb( _p:stdgo.Ref<stdgo._internal.fmt.Fmt_t_pp.T_pp>, _verb:stdgo.GoInt32):Void {
        @:recv var _p:stdgo.Ref<stdgo._internal.fmt.Fmt_t_pp.T_pp> = _p;
        (@:checkr _p ?? throw "null pointer dereference")._erroring = true;
        //"file:///home/runner/.go/go1.21.3/src/fmt/print.go#L383"
        (@:checkr _p ?? throw "null pointer dereference")._buf._writeString(("%!" : stdgo.GoString));
        //"file:///home/runner/.go/go1.21.3/src/fmt/print.go#L384"
        (@:checkr _p ?? throw "null pointer dereference")._buf._writeRune(_verb);
        //"file:///home/runner/.go/go1.21.3/src/fmt/print.go#L385"
        (@:checkr _p ?? throw "null pointer dereference")._buf._writeByte((40 : stdgo.GoUInt8));
        //"file:///home/runner/.go/go1.21.3/src/fmt/print.go#L386"
        if ((@:checkr _p ?? throw "null pointer dereference")._arg != null) {
            //"file:///home/runner/.go/go1.21.3/src/fmt/print.go#L388"
            (@:checkr _p ?? throw "null pointer dereference")._buf._writeString((stdgo._internal.reflect.Reflect_typeof.typeOf((@:checkr _p ?? throw "null pointer dereference")._arg).string() : stdgo.GoString)?.__copy__());
            //"file:///home/runner/.go/go1.21.3/src/fmt/print.go#L389"
            (@:checkr _p ?? throw "null pointer dereference")._buf._writeByte((61 : stdgo.GoUInt8));
            //"file:///home/runner/.go/go1.21.3/src/fmt/print.go#L390"
            _p._printArg((@:checkr _p ?? throw "null pointer dereference")._arg, (118 : stdgo.GoInt32));
        } else if ((@:checkr _p ?? throw "null pointer dereference")._value.isValid()) {
            //"file:///home/runner/.go/go1.21.3/src/fmt/print.go#L392"
            (@:checkr _p ?? throw "null pointer dereference")._buf._writeString(((@:checkr _p ?? throw "null pointer dereference")._value.type().string() : stdgo.GoString)?.__copy__());
            //"file:///home/runner/.go/go1.21.3/src/fmt/print.go#L393"
            (@:checkr _p ?? throw "null pointer dereference")._buf._writeByte((61 : stdgo.GoUInt8));
            //"file:///home/runner/.go/go1.21.3/src/fmt/print.go#L394"
            _p._printValue((@:checkr _p ?? throw "null pointer dereference")._value?.__copy__(), (118 : stdgo.GoInt32), (0 : stdgo.GoInt));
        } else {
            //"file:///home/runner/.go/go1.21.3/src/fmt/print.go#L396"
            (@:checkr _p ?? throw "null pointer dereference")._buf._writeString(("<nil>" : stdgo.GoString));
        };
        //"file:///home/runner/.go/go1.21.3/src/fmt/print.go#L398"
        (@:checkr _p ?? throw "null pointer dereference")._buf._writeByte((41 : stdgo.GoUInt8));
        (@:checkr _p ?? throw "null pointer dereference")._erroring = false;
    }
    @:keep
    @:tdfield
    static public function _unknownType( _p:stdgo.Ref<stdgo._internal.fmt.Fmt_t_pp.T_pp>, _v:stdgo._internal.reflect.Reflect_value.Value):Void {
        @:recv var _p:stdgo.Ref<stdgo._internal.fmt.Fmt_t_pp.T_pp> = _p;
        //"file:///home/runner/.go/go1.21.3/src/fmt/print.go#L372"
        if (!_v.isValid()) {
            //"file:///home/runner/.go/go1.21.3/src/fmt/print.go#L373"
            (@:checkr _p ?? throw "null pointer dereference")._buf._writeString(("<nil>" : stdgo.GoString));
            //"file:///home/runner/.go/go1.21.3/src/fmt/print.go#L374"
            return;
        };
        //"file:///home/runner/.go/go1.21.3/src/fmt/print.go#L376"
        (@:checkr _p ?? throw "null pointer dereference")._buf._writeByte((63 : stdgo.GoUInt8));
        //"file:///home/runner/.go/go1.21.3/src/fmt/print.go#L377"
        (@:checkr _p ?? throw "null pointer dereference")._buf._writeString((_v.type().string() : stdgo.GoString)?.__copy__());
        //"file:///home/runner/.go/go1.21.3/src/fmt/print.go#L378"
        (@:checkr _p ?? throw "null pointer dereference")._buf._writeByte((63 : stdgo.GoUInt8));
    }
    @:keep
    @:tdfield
    static public function writeString( _p:stdgo.Ref<stdgo._internal.fmt.Fmt_t_pp.T_pp>, _s:stdgo.GoString):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } {
        @:recv var _p:stdgo.Ref<stdgo._internal.fmt.Fmt_t_pp.T_pp> = _p;
        var _ret = (0 : stdgo.GoInt), _err = (null : stdgo.Error);
        //"file:///home/runner/.go/go1.21.3/src/fmt/print.go#L214"
        (@:checkr _p ?? throw "null pointer dereference")._buf._writeString(_s?.__copy__());
        //"file:///home/runner/.go/go1.21.3/src/fmt/print.go#L215"
        return {
            @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } = { _0 : (_s.length), _1 : (null : stdgo.Error) };
            _ret = __tmp__._0;
            _err = __tmp__._1;
            __tmp__;
        };
    }
    @:keep
    @:tdfield
    static public function write( _p:stdgo.Ref<stdgo._internal.fmt.Fmt_t_pp.T_pp>, _b:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } {
        @:recv var _p:stdgo.Ref<stdgo._internal.fmt.Fmt_t_pp.T_pp> = _p;
        var _ret = (0 : stdgo.GoInt), _err = (null : stdgo.Error);
        //"file:///home/runner/.go/go1.21.3/src/fmt/print.go#L207"
        (@:checkr _p ?? throw "null pointer dereference")._buf._write(_b);
        //"file:///home/runner/.go/go1.21.3/src/fmt/print.go#L208"
        return {
            @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } = { _0 : (_b.length), _1 : (null : stdgo.Error) };
            _ret = __tmp__._0;
            _err = __tmp__._1;
            __tmp__;
        };
    }
    @:keep
    @:tdfield
    static public function flag( _p:stdgo.Ref<stdgo._internal.fmt.Fmt_t_pp.T_pp>, _b:stdgo.GoInt):Bool {
        @:recv var _p:stdgo.Ref<stdgo._internal.fmt.Fmt_t_pp.T_pp> = _p;
        //"file:///home/runner/.go/go1.21.3/src/fmt/print.go#L189"
        {
            final __value__ = _b;
            if (__value__ == ((45 : stdgo.GoInt))) {
                //"file:///home/runner/.go/go1.21.3/src/fmt/print.go#L191"
                return (@:checkr _p ?? throw "null pointer dereference")._fmt._fmtFlags._minus;
            } else if (__value__ == ((43 : stdgo.GoInt))) {
                //"file:///home/runner/.go/go1.21.3/src/fmt/print.go#L193"
                return ((@:checkr _p ?? throw "null pointer dereference")._fmt._fmtFlags._plus || (@:checkr _p ?? throw "null pointer dereference")._fmt._fmtFlags._plusV : Bool);
            } else if (__value__ == ((35 : stdgo.GoInt))) {
                //"file:///home/runner/.go/go1.21.3/src/fmt/print.go#L195"
                return ((@:checkr _p ?? throw "null pointer dereference")._fmt._fmtFlags._sharp || (@:checkr _p ?? throw "null pointer dereference")._fmt._fmtFlags._sharpV : Bool);
            } else if (__value__ == ((32 : stdgo.GoInt))) {
                //"file:///home/runner/.go/go1.21.3/src/fmt/print.go#L197"
                return (@:checkr _p ?? throw "null pointer dereference")._fmt._fmtFlags._space;
            } else if (__value__ == ((48 : stdgo.GoInt))) {
                //"file:///home/runner/.go/go1.21.3/src/fmt/print.go#L199"
                return (@:checkr _p ?? throw "null pointer dereference")._fmt._fmtFlags._zero;
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/fmt/print.go#L201"
        return false;
    }
    @:keep
    @:tdfield
    static public function precision( _p:stdgo.Ref<stdgo._internal.fmt.Fmt_t_pp.T_pp>):{ var _0 : stdgo.GoInt; var _1 : Bool; } {
        @:recv var _p:stdgo.Ref<stdgo._internal.fmt.Fmt_t_pp.T_pp> = _p;
        var _prec = (0 : stdgo.GoInt), _ok = false;
        //"file:///home/runner/.go/go1.21.3/src/fmt/print.go#L186"
        return {
            @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.GoInt; var _1 : Bool; } = { _0 : (@:checkr _p ?? throw "null pointer dereference")._fmt._prec, _1 : (@:checkr _p ?? throw "null pointer dereference")._fmt._fmtFlags._precPresent };
            _prec = __tmp__._0;
            _ok = __tmp__._1;
            __tmp__;
        };
    }
    @:keep
    @:tdfield
    static public function width( _p:stdgo.Ref<stdgo._internal.fmt.Fmt_t_pp.T_pp>):{ var _0 : stdgo.GoInt; var _1 : Bool; } {
        @:recv var _p:stdgo.Ref<stdgo._internal.fmt.Fmt_t_pp.T_pp> = _p;
        var _wid = (0 : stdgo.GoInt), _ok = false;
        //"file:///home/runner/.go/go1.21.3/src/fmt/print.go#L184"
        return {
            @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.GoInt; var _1 : Bool; } = { _0 : (@:checkr _p ?? throw "null pointer dereference")._fmt._wid, _1 : (@:checkr _p ?? throw "null pointer dereference")._fmt._fmtFlags._widPresent };
            _wid = __tmp__._0;
            _ok = __tmp__._1;
            __tmp__;
        };
    }
    @:keep
    @:tdfield
    static public function _free( _p:stdgo.Ref<stdgo._internal.fmt.Fmt_t_pp.T_pp>):Void {
        @:recv var _p:stdgo.Ref<stdgo._internal.fmt.Fmt_t_pp.T_pp> = _p;
        //"file:///home/runner/.go/go1.21.3/src/fmt/print.go#L169"
        if (((@:checkr _p ?? throw "null pointer dereference")._buf.capacity > (65536 : stdgo.GoInt) : Bool)) {
            (@:checkr _p ?? throw "null pointer dereference")._buf = null;
        } else {
            (@:checkr _p ?? throw "null pointer dereference")._buf = ((@:checkr _p ?? throw "null pointer dereference")._buf.__slice__(0, (0 : stdgo.GoInt)) : stdgo._internal.fmt.Fmt_t_buffer.T_buffer);
        };
        //"file:///home/runner/.go/go1.21.3/src/fmt/print.go#L174"
        if (((@:checkr _p ?? throw "null pointer dereference")._wrappedErrs.capacity > (8 : stdgo.GoInt) : Bool)) {
            (@:checkr _p ?? throw "null pointer dereference")._wrappedErrs = (null : stdgo.Slice<stdgo.GoInt>);
        };
        (@:checkr _p ?? throw "null pointer dereference")._arg = (null : stdgo.AnyInterface);
        (@:checkr _p ?? throw "null pointer dereference")._value = (new stdgo._internal.reflect.Reflect_value.Value() : stdgo._internal.reflect.Reflect_value.Value);
        (@:checkr _p ?? throw "null pointer dereference")._wrappedErrs = ((@:checkr _p ?? throw "null pointer dereference")._wrappedErrs.__slice__(0, (0 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoInt>);
        //"file:///home/runner/.go/go1.21.3/src/fmt/print.go#L181"
        stdgo._internal.fmt.Fmt__ppfree._ppFree.put(stdgo.Go.toInterface(stdgo.Go.asInterface(_p)));
    }
}
