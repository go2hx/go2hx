package stdgo._internal.fmt;
@:keep @:allow(stdgo._internal.fmt.Fmt.T_pp_asInterface) class T_pp_static_extension {
    @:keep
    @:tdfield
    static public function _doPrintln( _p:stdgo.Ref<stdgo._internal.fmt.Fmt_t_pp.T_pp>, _a:stdgo.Slice<stdgo.AnyInterface>):Void {
        @:recv var _p:stdgo.Ref<stdgo._internal.fmt.Fmt_t_pp.T_pp> = _p;
        for (_argNum => _arg in _a) {
            if ((_argNum > (0 : stdgo.GoInt) : Bool)) {
                @:check2 (@:checkr _p ?? throw "null pointer dereference")._buf._writeByte((32 : stdgo.GoUInt8));
            };
            @:check2r _p._printArg(_arg, (118 : stdgo.GoInt32));
        };
        @:check2 (@:checkr _p ?? throw "null pointer dereference")._buf._writeByte((10 : stdgo.GoUInt8));
    }
    @:keep
    @:tdfield
    static public function _doPrint( _p:stdgo.Ref<stdgo._internal.fmt.Fmt_t_pp.T_pp>, _a:stdgo.Slice<stdgo.AnyInterface>):Void {
        @:recv var _p:stdgo.Ref<stdgo._internal.fmt.Fmt_t_pp.T_pp> = _p;
        var _prevString = (false : Bool);
        for (_argNum => _arg in _a) {
            var _isString = ((_arg != null) && (stdgo._internal.reflect.Reflect_typeof.typeOf(_arg).kind() == (24u32 : stdgo._internal.reflect.Reflect_kind.Kind)) : Bool);
            if ((((_argNum > (0 : stdgo.GoInt) : Bool) && !_isString : Bool) && !_prevString : Bool)) {
                @:check2 (@:checkr _p ?? throw "null pointer dereference")._buf._writeByte((32 : stdgo.GoUInt8));
            };
            @:check2r _p._printArg(_arg, (118 : stdgo.GoInt32));
            _prevString = _isString;
        };
    }
    @:keep
    @:tdfield
    static public function _doPrintf( _p:stdgo.Ref<stdgo._internal.fmt.Fmt_t_pp.T_pp>, _format:stdgo.GoString, _a:stdgo.Slice<stdgo.AnyInterface>):Void {
        @:recv var _p:stdgo.Ref<stdgo._internal.fmt.Fmt_t_pp.T_pp> = _p;
        var _arg_9:stdgo.AnyInterface = (null : stdgo.AnyInterface);
        var _size_7:stdgo.GoInt = (0 : stdgo.GoInt);
        var _verb_6:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _lasti_4:stdgo.GoInt = (0 : stdgo.GoInt);
        var _formatLoopBreak = false;
        var _afterIndex_2:Bool = false;
        var _i_8:stdgo.GoInt = (0 : stdgo.GoInt);
        var _c_5:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var _simpleFormatBreak = false;
        var _i_3:stdgo.GoInt = (0 : stdgo.GoInt);
        var _argNum_1:stdgo.GoInt = (0 : stdgo.GoInt);
        var _end_0:stdgo.GoInt = (0 : stdgo.GoInt);
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    _end_0 = (_format.length);
                    _argNum_1 = (0 : stdgo.GoInt);
                    _afterIndex_2 = false;
                    (@:checkr _p ?? throw "null pointer dereference")._reordered = false;
                    _gotoNext = 4003955i32;
                } else if (__value__ == (4003955i32)) {
                    _i_3 = (0 : stdgo.GoInt);
                    _formatLoopBreak = false;
                    _gotoNext = 4003968i32;
                } else if (__value__ == (4003968i32)) {
                    if (!_formatLoopBreak && ((_i_3 < _end_0 : Bool))) {
                        _gotoNext = 4003989i32;
                    } else {
                        _gotoNext = 4007799i32;
                    };
                } else if (__value__ == (4003989i32)) {
                    (@:checkr _p ?? throw "null pointer dereference")._goodArgNum = true;
                    _lasti_4 = _i_3;
                    var __blank__ = 0i32;
                    _gotoNext = 4004028i32;
                } else if (__value__ == (4004028i32)) {
                    if (((_i_3 < _end_0 : Bool) && (_format[(_i_3 : stdgo.GoInt)] != (37 : stdgo.GoUInt8)) : Bool)) {
                        _gotoNext = 4004060i32;
                    } else {
                        _gotoNext = 4004075i32;
                    };
                } else if (__value__ == (4004060i32)) {
                    _i_3++;
                    _gotoNext = 4004028i32;
                } else if (__value__ == (4004075i32)) {
                    if ((_i_3 > _lasti_4 : Bool)) {
                        _gotoNext = 4004088i32;
                    } else {
                        _gotoNext = 4004134i32;
                    };
                } else if (__value__ == (4004088i32)) {
                    @:check2 (@:checkr _p ?? throw "null pointer dereference")._buf._writeString((_format.__slice__(_lasti_4, _i_3) : stdgo.GoString)?.__copy__());
                    _gotoNext = 4004134i32;
                } else if (__value__ == (4004134i32)) {
                    if ((_i_3 >= _end_0 : Bool)) {
                        _gotoNext = 4004146i32;
                    } else {
                        _gotoNext = 4004222i32;
                    };
                } else if (__value__ == (4004146i32)) {
                    _gotoNext = 4007799i32;
                } else if (__value__ == (4004222i32)) {
                    _i_3++;
                    @:check2 (@:checkr _p ?? throw "null pointer dereference")._fmt._clearflags();
                    _gotoNext = 4004272i32;
                } else if (__value__ == (4004272i32)) {
                    var __blank__ = 0i32;
                    _simpleFormatBreak = false;
                    _gotoNext = 4004288i32;
                } else if (__value__ == (4004288i32)) {
                    if (!_simpleFormatBreak && ((_i_3 < _end_0 : Bool))) {
                        _gotoNext = 4004307i32;
                    } else {
                        _gotoNext = 4005342i32;
                    };
                } else if (__value__ == (4004303i32)) {
                    _i_3++;
                    _gotoNext = 4004288i32;
                } else if (__value__ == (4004307i32)) {
                    _c_5 = _format[(_i_3 : stdgo.GoInt)];
                    _gotoNext = 4004330i32;
                } else if (__value__ == (4004330i32)) {
                    {
                        final __value__ = _c_5;
                        if (__value__ == ((35 : stdgo.GoUInt8))) {
                            _gotoNext = 4004344i32;
                        } else if (__value__ == ((48 : stdgo.GoUInt8))) {
                            _gotoNext = 4004380i32;
                        } else if (__value__ == ((43 : stdgo.GoUInt8))) {
                            _gotoNext = 4004463i32;
                        } else if (__value__ == ((45 : stdgo.GoUInt8))) {
                            _gotoNext = 4004498i32;
                        } else if (__value__ == ((32 : stdgo.GoUInt8))) {
                            _gotoNext = 4004596i32;
                        } else {
                            _gotoNext = 4004632i32;
                        };
                    };
                } else if (__value__ == (4004344i32)) {
                    (@:checkr _p ?? throw "null pointer dereference")._fmt._fmtFlags._sharp = true;
                    _gotoNext = 4004303i32;
                } else if (__value__ == (4004380i32)) {
                    (@:checkr _p ?? throw "null pointer dereference")._fmt._fmtFlags._zero = !(@:checkr _p ?? throw "null pointer dereference")._fmt._fmtFlags._minus;
                    _gotoNext = 4004303i32;
                } else if (__value__ == (4004463i32)) {
                    (@:checkr _p ?? throw "null pointer dereference")._fmt._fmtFlags._plus = true;
                    _gotoNext = 4004303i32;
                } else if (__value__ == (4004498i32)) {
                    (@:checkr _p ?? throw "null pointer dereference")._fmt._fmtFlags._minus = true;
                    (@:checkr _p ?? throw "null pointer dereference")._fmt._fmtFlags._zero = false;
                    _gotoNext = 4004303i32;
                } else if (__value__ == (4004596i32)) {
                    (@:checkr _p ?? throw "null pointer dereference")._fmt._fmtFlags._space = true;
                    _gotoNext = 4004303i32;
                } else if (__value__ == (4004632i32)) {
                    if (((((97 : stdgo.GoUInt8) <= _c_5 : Bool) && (_c_5 <= (122 : stdgo.GoUInt8) : Bool) : Bool) && (_argNum_1 < (_a.length) : Bool) : Bool)) {
                        _gotoNext = 4004809i32;
                    } else {
                        _gotoNext = 4005267i32;
                    };
                } else if (__value__ == (4004809i32)) {
                    _gotoNext = 4004816i32;
                } else if (__value__ == (4004816i32)) {
                    {
                        final __value__ = _c_5;
                        if (__value__ == ((119 : stdgo.GoUInt8))) {
                            _gotoNext = 4004832i32;
                        } else if (__value__ == ((118 : stdgo.GoUInt8))) {
                            _gotoNext = 4004917i32;
                        } else {
                            _gotoNext = 4005102i32;
                        };
                    };
                } else if (__value__ == (4004832i32)) {
                    (@:checkr _p ?? throw "null pointer dereference")._wrappedErrs = ((@:checkr _p ?? throw "null pointer dereference")._wrappedErrs.__append__(_argNum_1));
                    _gotoNext = 4004917i32;
                } else if (__value__ == (4004917i32)) {
                    (@:checkr _p ?? throw "null pointer dereference")._fmt._fmtFlags._sharpV = (@:checkr _p ?? throw "null pointer dereference")._fmt._fmtFlags._sharp;
                    (@:checkr _p ?? throw "null pointer dereference")._fmt._fmtFlags._sharp = false;
                    (@:checkr _p ?? throw "null pointer dereference")._fmt._fmtFlags._plusV = (@:checkr _p ?? throw "null pointer dereference")._fmt._fmtFlags._plus;
                    (@:checkr _p ?? throw "null pointer dereference")._fmt._fmtFlags._plus = false;
                    _gotoNext = 4005102i32;
                } else if (__value__ == (4005102i32)) {
                    @:check2r _p._printArg(_a[(_argNum_1 : stdgo.GoInt)], (_c_5 : stdgo.GoInt32));
                    _argNum_1++;
                    _i_3++;
                    _gotoNext = 4003968i32;
                } else if (__value__ == (4005267i32)) {
                    _simpleFormatBreak = true;
                    _gotoNext = 4004288i32;
                } else if (__value__ == (4005342i32)) {
                    {
                        var __tmp__ = @:check2r _p._argNumber(_argNum_1, _format?.__copy__(), _i_3, (_a.length));
                        _argNum_1 = @:tmpset0 __tmp__._0;
                        _i_3 = @:tmpset0 __tmp__._1;
                        _afterIndex_2 = @:tmpset0 __tmp__._2;
                    };
                    if (((_i_3 < _end_0 : Bool) && (_format[(_i_3 : stdgo.GoInt)] == (42 : stdgo.GoUInt8)) : Bool)) {
                        _gotoNext = 4005462i32;
                    } else {
                        _gotoNext = 4005869i32;
                    };
                } else if (__value__ == (4005462i32)) {
                    _i_3++;
                    {
                        var __tmp__ = stdgo._internal.fmt.Fmt__intfromarg._intFromArg(_a, _argNum_1);
                        (@:checkr _p ?? throw "null pointer dereference")._fmt._wid = @:tmpset0 __tmp__._0;
                        (@:checkr _p ?? throw "null pointer dereference")._fmt._fmtFlags._widPresent = @:tmpset0 __tmp__._1;
                        _argNum_1 = @:tmpset0 __tmp__._2;
                    };
                    if (!(@:checkr _p ?? throw "null pointer dereference")._fmt._fmtFlags._widPresent) {
                        _gotoNext = 4005559i32;
                    } else {
                        _gotoNext = 4005702i32;
                    };
                } else if (__value__ == (4005559i32)) {
                    @:check2 (@:checkr _p ?? throw "null pointer dereference")._buf._writeString(("%!(BADWIDTH)" : stdgo.GoString));
                    _gotoNext = 4005702i32;
                } else if (__value__ == (4005702i32)) {
                    if (((@:checkr _p ?? throw "null pointer dereference")._fmt._wid < (0 : stdgo.GoInt) : Bool)) {
                        _gotoNext = 4005719i32;
                    } else {
                        _gotoNext = 4005841i32;
                    };
                } else if (__value__ == (4005719i32)) {
                    (@:checkr _p ?? throw "null pointer dereference")._fmt._wid = -(@:checkr _p ?? throw "null pointer dereference")._fmt._wid;
                    (@:checkr _p ?? throw "null pointer dereference")._fmt._fmtFlags._minus = true;
                    (@:checkr _p ?? throw "null pointer dereference")._fmt._fmtFlags._zero = false;
                    _gotoNext = 4005841i32;
                } else if (__value__ == (4005841i32)) {
                    _afterIndex_2 = false;
                    _gotoNext = 4006047i32;
                } else if (__value__ == (4005869i32)) {
                    _gotoNext = 4005869i32;
                    {
                        var __tmp__ = stdgo._internal.fmt.Fmt__parsenum._parsenum(_format?.__copy__(), _i_3, _end_0);
                        (@:checkr _p ?? throw "null pointer dereference")._fmt._wid = @:tmpset0 __tmp__._0;
                        (@:checkr _p ?? throw "null pointer dereference")._fmt._fmtFlags._widPresent = @:tmpset0 __tmp__._1;
                        _i_3 = @:tmpset0 __tmp__._2;
                    };
                    if ((_afterIndex_2 && (@:checkr _p ?? throw "null pointer dereference")._fmt._fmtFlags._widPresent : Bool)) {
                        _gotoNext = 4005969i32;
                    } else {
                        _gotoNext = 4006047i32;
                    };
                } else if (__value__ == (4005969i32)) {
                    (@:checkr _p ?? throw "null pointer dereference")._goodArgNum = false;
                    _gotoNext = 4006047i32;
                } else if (__value__ == (4006047i32)) {
                    if ((((_i_3 + (1 : stdgo.GoInt) : stdgo.GoInt) < _end_0 : Bool) && (_format[(_i_3 : stdgo.GoInt)] == (46 : stdgo.GoUInt8)) : Bool)) {
                        _gotoNext = 4006080i32;
                    } else {
                        _gotoNext = 4006728i32;
                    };
                } else if (__value__ == (4006080i32)) {
                    _i_3++;
                    if (_afterIndex_2) {
                        _gotoNext = 4006106i32;
                    } else {
                        _gotoNext = 4006154i32;
                    };
                } else if (__value__ == (4006106i32)) {
                    (@:checkr _p ?? throw "null pointer dereference")._goodArgNum = false;
                    _gotoNext = 4006154i32;
                } else if (__value__ == (4006154i32)) {
                    {
                        var __tmp__ = @:check2r _p._argNumber(_argNum_1, _format?.__copy__(), _i_3, (_a.length));
                        _argNum_1 = @:tmpset0 __tmp__._0;
                        _i_3 = @:tmpset0 __tmp__._1;
                        _afterIndex_2 = @:tmpset0 __tmp__._2;
                    };
                    if (((_i_3 < _end_0 : Bool) && (_format[(_i_3 : stdgo.GoInt)] == (42 : stdgo.GoUInt8)) : Bool)) {
                        _gotoNext = 4006251i32;
                    } else {
                        _gotoNext = 4006566i32;
                    };
                } else if (__value__ == (4006251i32)) {
                    _i_3++;
                    {
                        var __tmp__ = stdgo._internal.fmt.Fmt__intfromarg._intFromArg(_a, _argNum_1);
                        (@:checkr _p ?? throw "null pointer dereference")._fmt._prec = @:tmpset0 __tmp__._0;
                        (@:checkr _p ?? throw "null pointer dereference")._fmt._fmtFlags._precPresent = @:tmpset0 __tmp__._1;
                        _argNum_1 = @:tmpset0 __tmp__._2;
                    };
                    if (((@:checkr _p ?? throw "null pointer dereference")._fmt._prec < (0 : stdgo.GoInt) : Bool)) {
                        _gotoNext = 4006402i32;
                    } else {
                        _gotoNext = 4006465i32;
                    };
                } else if (__value__ == (4006402i32)) {
                    (@:checkr _p ?? throw "null pointer dereference")._fmt._prec = (0 : stdgo.GoInt);
                    (@:checkr _p ?? throw "null pointer dereference")._fmt._fmtFlags._precPresent = false;
                    _gotoNext = 4006465i32;
                } else if (__value__ == (4006465i32)) {
                    if (!(@:checkr _p ?? throw "null pointer dereference")._fmt._fmtFlags._precPresent) {
                        _gotoNext = 4006487i32;
                    } else {
                        _gotoNext = 4006537i32;
                    };
                } else if (__value__ == (4006487i32)) {
                    @:check2 (@:checkr _p ?? throw "null pointer dereference")._buf._writeString(("%!(BADPREC)" : stdgo.GoString));
                    _gotoNext = 4006537i32;
                } else if (__value__ == (4006537i32)) {
                    _afterIndex_2 = false;
                    _gotoNext = 4006728i32;
                } else if (__value__ == (4006566i32)) {
                    _gotoNext = 4006566i32;
                    {
                        var __tmp__ = stdgo._internal.fmt.Fmt__parsenum._parsenum(_format?.__copy__(), _i_3, _end_0);
                        (@:checkr _p ?? throw "null pointer dereference")._fmt._prec = @:tmpset0 __tmp__._0;
                        (@:checkr _p ?? throw "null pointer dereference")._fmt._fmtFlags._precPresent = @:tmpset0 __tmp__._1;
                        _i_3 = @:tmpset0 __tmp__._2;
                    };
                    if (!(@:checkr _p ?? throw "null pointer dereference")._fmt._fmtFlags._precPresent) {
                        _gotoNext = 4006658i32;
                    } else {
                        _gotoNext = 4006728i32;
                    };
                } else if (__value__ == (4006658i32)) {
                    (@:checkr _p ?? throw "null pointer dereference")._fmt._prec = (0 : stdgo.GoInt);
                    (@:checkr _p ?? throw "null pointer dereference")._fmt._fmtFlags._precPresent = true;
                    _gotoNext = 4006728i32;
                } else if (__value__ == (4006728i32)) {
                    if (!_afterIndex_2) {
                        _gotoNext = 4006743i32;
                    } else {
                        _gotoNext = 4006818i32;
                    };
                } else if (__value__ == (4006743i32)) {
                    {
                        var __tmp__ = @:check2r _p._argNumber(_argNum_1, _format?.__copy__(), _i_3, (_a.length));
                        _argNum_1 = @:tmpset0 __tmp__._0;
                        _i_3 = @:tmpset0 __tmp__._1;
                        _afterIndex_2 = @:tmpset0 __tmp__._2;
                    };
                    _gotoNext = 4006818i32;
                } else if (__value__ == (4006818i32)) {
                    if ((_i_3 >= _end_0 : Bool)) {
                        _gotoNext = 4006830i32;
                    } else {
                        _gotoNext = 4006883i32;
                    };
                } else if (__value__ == (4006830i32)) {
                    @:check2 (@:checkr _p ?? throw "null pointer dereference")._buf._writeString(("%!(NOVERB)" : stdgo.GoString));
                    _gotoNext = 4007799i32;
                } else if (__value__ == (4006883i32)) {
                    {
                        final __tmp__0 = (_format[(_i_3 : stdgo.GoInt)] : stdgo.GoInt32);
                        final __tmp__1 = (1 : stdgo.GoInt);
                        _verb_6 = __tmp__0;
                        _size_7 = __tmp__1;
                    };
                    if ((_verb_6 >= (128 : stdgo.GoInt32) : Bool)) {
                        _gotoNext = 4006943i32;
                    } else {
                        _gotoNext = 4007003i32;
                    };
                } else if (__value__ == (4006943i32)) {
                    {
                        var __tmp__ = stdgo._internal.unicode.utf8.Utf8_decoderuneinstring.decodeRuneInString((_format.__slice__(_i_3) : stdgo.GoString)?.__copy__());
                        _verb_6 = @:tmpset0 __tmp__._0;
                        _size_7 = @:tmpset0 __tmp__._1;
                    };
                    _gotoNext = 4007003i32;
                } else if (__value__ == (4007003i32)) {
                    _i_3 = (_i_3 + (_size_7) : stdgo.GoInt);
                    _gotoNext = 4007016i32;
                } else if (__value__ == (4007016i32)) {
                    if (_verb_6 == ((37 : stdgo.GoInt32))) {
                        _gotoNext = 4007027i32;
                    } else if (!(@:checkr _p ?? throw "null pointer dereference")._goodArgNum) {
                        _gotoNext = 4007137i32;
                    } else if ((_argNum_1 >= (_a.length) : Bool)) {
                        _gotoNext = 4007180i32;
                    } else if (_verb_6 == ((119 : stdgo.GoInt32))) {
                        _gotoNext = 4007283i32;
                    } else if (_verb_6 == ((118 : stdgo.GoInt32))) {
                        _gotoNext = 4007367i32;
                    } else {
                        _gotoNext = 4007547i32;
                    };
                } else if (__value__ == (4007027i32)) {
                    @:check2 (@:checkr _p ?? throw "null pointer dereference")._buf._writeByte((37 : stdgo.GoUInt8));
                    _gotoNext = 4003968i32;
                } else if (__value__ == (4007137i32)) {
                    @:check2r _p._badArgNum(_verb_6);
                    _gotoNext = 4003968i32;
                } else if (__value__ == (4007180i32)) {
                    @:check2r _p._missingArg(_verb_6);
                    _gotoNext = 4003968i32;
                } else if (__value__ == (4007283i32)) {
                    (@:checkr _p ?? throw "null pointer dereference")._wrappedErrs = ((@:checkr _p ?? throw "null pointer dereference")._wrappedErrs.__append__(_argNum_1));
                    _gotoNext = 4007367i32;
                } else if (__value__ == (4007367i32)) {
                    (@:checkr _p ?? throw "null pointer dereference")._fmt._fmtFlags._sharpV = (@:checkr _p ?? throw "null pointer dereference")._fmt._fmtFlags._sharp;
                    (@:checkr _p ?? throw "null pointer dereference")._fmt._fmtFlags._sharp = false;
                    (@:checkr _p ?? throw "null pointer dereference")._fmt._fmtFlags._plusV = (@:checkr _p ?? throw "null pointer dereference")._fmt._fmtFlags._plus;
                    (@:checkr _p ?? throw "null pointer dereference")._fmt._fmtFlags._plus = false;
                    _gotoNext = 4007547i32;
                } else if (__value__ == (4007547i32)) {
                    @:check2r _p._printArg(_a[(_argNum_1 : stdgo.GoInt)], _verb_6);
                    _argNum_1++;
                    _gotoNext = 4003968i32;
                } else if (__value__ == (4007799i32)) {
                    if ((!(@:checkr _p ?? throw "null pointer dereference")._reordered && (_argNum_1 < (_a.length) : Bool) : Bool)) {
                        _gotoNext = 4007834i32;
                    } else {
                        _gotoNext = 4008190i32;
                    };
                } else if (__value__ == (4007834i32)) {
                    @:check2 (@:checkr _p ?? throw "null pointer dereference")._fmt._clearflags();
                    @:check2 (@:checkr _p ?? throw "null pointer dereference")._buf._writeString(("%!(EXTRA " : stdgo.GoString));
                    if ((0i32 : stdgo.GoInt) < ((_a.__slice__(_argNum_1) : stdgo.Slice<stdgo.AnyInterface>).length)) {
                        _gotoNext = 4008161i32;
                    } else {
                        _gotoNext = 4008166i32;
                    };
                } else if (__value__ == (4007896i32)) {
                    _i_8++;
                    _gotoNext = 4008162i32;
                } else if (__value__ == (4007923i32)) {
                    _arg_9 = stdgo.Go.toInterface((_a.__slice__(_argNum_1) : stdgo.Slice<stdgo.AnyInterface>)[(_i_8 : stdgo.GoInt)]);
                    if ((_i_8 > (0 : stdgo.GoInt) : Bool)) {
                        _gotoNext = 4007937i32;
                    } else {
                        _gotoNext = 4007987i32;
                    };
                } else if (__value__ == (4007937i32)) {
                    @:check2 (@:checkr _p ?? throw "null pointer dereference")._buf._writeString((", " : stdgo.GoString));
                    _gotoNext = 4007987i32;
                } else if (__value__ == (4007987i32)) {
                    if (_arg_9 == null) {
                        _gotoNext = 4008001i32;
                    } else {
                        _gotoNext = 4008051i32;
                    };
                } else if (__value__ == (4008001i32)) {
                    @:check2 (@:checkr _p ?? throw "null pointer dereference")._buf._writeString(("<nil>" : stdgo.GoString));
                    _gotoNext = 4007896i32;
                } else if (__value__ == (4008051i32)) {
                    _gotoNext = 4008051i32;
                    @:check2 (@:checkr _p ?? throw "null pointer dereference")._buf._writeString((stdgo._internal.reflect.Reflect_typeof.typeOf(_arg_9).string() : stdgo.GoString)?.__copy__());
                    @:check2 (@:checkr _p ?? throw "null pointer dereference")._buf._writeByte((61 : stdgo.GoUInt8));
                    @:check2r _p._printArg(_arg_9, (118 : stdgo.GoInt32));
                    var __blank__ = 0i32;
                    _gotoNext = 4007896i32;
                } else if (__value__ == (4008161i32)) {
                    {
                        final __tmp__0 = 0i32;
                        final __tmp__1 = stdgo.Go.toInterface((_a.__slice__(_argNum_1) : stdgo.Slice<stdgo.AnyInterface>)[(0i32 : stdgo.GoInt)]);
                        _i_8 = __tmp__0;
                        _arg_9 = __tmp__1;
                    };
                    _gotoNext = 4008162i32;
                } else if (__value__ == (4008162i32)) {
                    if (_i_8 < ((_a.__slice__(_argNum_1) : stdgo.Slice<stdgo.AnyInterface>).length)) {
                        _gotoNext = 4007923i32;
                    } else {
                        _gotoNext = 4008166i32;
                    };
                } else if (__value__ == (4008166i32)) {
                    @:check2 (@:checkr _p ?? throw "null pointer dereference")._buf._writeByte((41 : stdgo.GoUInt8));
                    _gotoNext = 4008190i32;
                } else if (__value__ == (4008190i32)) {
                    _gotoNext = -1i32;
                };
            };
        };
    }
    @:keep
    @:tdfield
    static public function _missingArg( _p:stdgo.Ref<stdgo._internal.fmt.Fmt_t_pp.T_pp>, _verb:stdgo.GoInt32):Void {
        @:recv var _p:stdgo.Ref<stdgo._internal.fmt.Fmt_t_pp.T_pp> = _p;
        @:check2 (@:checkr _p ?? throw "null pointer dereference")._buf._writeString(("%!" : stdgo.GoString));
        @:check2 (@:checkr _p ?? throw "null pointer dereference")._buf._writeRune(_verb);
        @:check2 (@:checkr _p ?? throw "null pointer dereference")._buf._writeString(("(MISSING)" : stdgo.GoString));
    }
    @:keep
    @:tdfield
    static public function _badArgNum( _p:stdgo.Ref<stdgo._internal.fmt.Fmt_t_pp.T_pp>, _verb:stdgo.GoInt32):Void {
        @:recv var _p:stdgo.Ref<stdgo._internal.fmt.Fmt_t_pp.T_pp> = _p;
        @:check2 (@:checkr _p ?? throw "null pointer dereference")._buf._writeString(("%!" : stdgo.GoString));
        @:check2 (@:checkr _p ?? throw "null pointer dereference")._buf._writeRune(_verb);
        @:check2 (@:checkr _p ?? throw "null pointer dereference")._buf._writeString(("(BADINDEX)" : stdgo.GoString));
    }
    @:keep
    @:tdfield
    static public function _argNumber( _p:stdgo.Ref<stdgo._internal.fmt.Fmt_t_pp.T_pp>, _argNum:stdgo.GoInt, _format:stdgo.GoString, _i:stdgo.GoInt, _numArgs:stdgo.GoInt):{ var _0 : stdgo.GoInt; var _1 : stdgo.GoInt; var _2 : Bool; } {
        @:recv var _p:stdgo.Ref<stdgo._internal.fmt.Fmt_t_pp.T_pp> = _p;
        var _newArgNum = (0 : stdgo.GoInt), _newi = (0 : stdgo.GoInt), _found = false;
        if ((((_format.length) <= _i : Bool) || (_format[(_i : stdgo.GoInt)] != (91 : stdgo.GoUInt8)) : Bool)) {
            return {
                final __tmp__:{ var _0 : stdgo.GoInt; var _1 : stdgo.GoInt; var _2 : Bool; } = { _0 : _argNum, _1 : _i, _2 : false };
                _newArgNum = __tmp__._0;
                _newi = __tmp__._1;
                _found = __tmp__._2;
                __tmp__;
            };
        };
        (@:checkr _p ?? throw "null pointer dereference")._reordered = true;
        var __tmp__ = stdgo._internal.fmt.Fmt__parseargnumber._parseArgNumber((_format.__slice__(_i) : stdgo.GoString)?.__copy__()), _index:stdgo.GoInt = __tmp__._0, _wid:stdgo.GoInt = __tmp__._1, _ok:Bool = __tmp__._2;
        if (((_ok && ((0 : stdgo.GoInt) <= _index : Bool) : Bool) && (_index < _numArgs : Bool) : Bool)) {
            return {
                final __tmp__:{ var _0 : stdgo.GoInt; var _1 : stdgo.GoInt; var _2 : Bool; } = { _0 : _index, _1 : (_i + _wid : stdgo.GoInt), _2 : true };
                _newArgNum = __tmp__._0;
                _newi = __tmp__._1;
                _found = __tmp__._2;
                __tmp__;
            };
        };
        (@:checkr _p ?? throw "null pointer dereference")._goodArgNum = false;
        return {
            final __tmp__:{ var _0 : stdgo.GoInt; var _1 : stdgo.GoInt; var _2 : Bool; } = { _0 : _argNum, _1 : (_i + _wid : stdgo.GoInt), _2 : _ok };
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
        if ((((_depth > (0 : stdgo.GoInt) : Bool) && _value.isValid() : Bool) && _value.canInterface() : Bool)) {
            (@:checkr _p ?? throw "null pointer dereference")._arg = _value.interface_();
            if (@:check2r _p._handleMethods(_verb)) {
                return;
            };
        };
        (@:checkr _p ?? throw "null pointer dereference")._arg = (null : stdgo.AnyInterface);
        (@:checkr _p ?? throw "null pointer dereference")._value = _value?.__copy__();
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
                            if (_depth == ((0 : stdgo.GoInt))) {
                                @:check2 (@:checkr _p ?? throw "null pointer dereference")._buf._writeString(("<invalid reflect.Value>" : stdgo.GoString));
                            } else {
                                {
                                    final __value__ = _verb;
                                    if (__value__ == ((118 : stdgo.GoInt32))) {
                                        @:check2 (@:checkr _p ?? throw "null pointer dereference")._buf._writeString(("<nil>" : stdgo.GoString));
                                    } else {
                                        @:check2r _p._badVerb(_verb);
                                    };
                                };
                            };
                            break;
                            break;
                        } else if (__switchIndex__ == 1 || (__switchIndex__ == -1 && (__value__ == (1u32 : stdgo._internal.reflect.Reflect_kind.Kind)))) {
                            @:check2r _p._fmtBool(_f.bool_(), _verb);
                            break;
                            break;
                        } else if (__switchIndex__ == 2 || (__switchIndex__ == -1 && (__value__ == ((2u32 : stdgo._internal.reflect.Reflect_kind.Kind)) || __value__ == ((3u32 : stdgo._internal.reflect.Reflect_kind.Kind)) || __value__ == ((4u32 : stdgo._internal.reflect.Reflect_kind.Kind)) || __value__ == ((5u32 : stdgo._internal.reflect.Reflect_kind.Kind)) || __value__ == ((6u32 : stdgo._internal.reflect.Reflect_kind.Kind))))) {
                            @:check2r _p._fmtInteger((_f.int_() : stdgo.GoUInt64), true, _verb);
                            break;
                            break;
                        } else if (__switchIndex__ == 3 || (__switchIndex__ == -1 && (__value__ == ((7u32 : stdgo._internal.reflect.Reflect_kind.Kind)) || __value__ == ((8u32 : stdgo._internal.reflect.Reflect_kind.Kind)) || __value__ == ((9u32 : stdgo._internal.reflect.Reflect_kind.Kind)) || __value__ == ((10u32 : stdgo._internal.reflect.Reflect_kind.Kind)) || __value__ == ((11u32 : stdgo._internal.reflect.Reflect_kind.Kind)) || __value__ == ((12u32 : stdgo._internal.reflect.Reflect_kind.Kind))))) {
                            @:check2r _p._fmtInteger(_f.uint(), false, _verb);
                            break;
                            break;
                        } else if (__switchIndex__ == 4 || (__switchIndex__ == -1 && (__value__ == (13u32 : stdgo._internal.reflect.Reflect_kind.Kind)))) {
                            @:check2r _p._fmtFloat(_f.float_(), (32 : stdgo.GoInt), _verb);
                            break;
                            break;
                        } else if (__switchIndex__ == 5 || (__switchIndex__ == -1 && (__value__ == (14u32 : stdgo._internal.reflect.Reflect_kind.Kind)))) {
                            @:check2r _p._fmtFloat(_f.float_(), (64 : stdgo.GoInt), _verb);
                            break;
                            break;
                        } else if (__switchIndex__ == 6 || (__switchIndex__ == -1 && (__value__ == (15u32 : stdgo._internal.reflect.Reflect_kind.Kind)))) {
                            @:check2r _p._fmtComplex(_f.complex(), (64 : stdgo.GoInt), _verb);
                            break;
                            break;
                        } else if (__switchIndex__ == 7 || (__switchIndex__ == -1 && (__value__ == (16u32 : stdgo._internal.reflect.Reflect_kind.Kind)))) {
                            @:check2r _p._fmtComplex(_f.complex(), (128 : stdgo.GoInt), _verb);
                            break;
                            break;
                        } else if (__switchIndex__ == 8 || (__switchIndex__ == -1 && (__value__ == (24u32 : stdgo._internal.reflect.Reflect_kind.Kind)))) {
                            @:check2r _p._fmtString((_f.string() : stdgo.GoString)?.__copy__(), _verb);
                            break;
                            break;
                        } else if (__switchIndex__ == 9 || (__switchIndex__ == -1 && (__value__ == (21u32 : stdgo._internal.reflect.Reflect_kind.Kind)))) {
                            if ((@:checkr _p ?? throw "null pointer dereference")._fmt._fmtFlags._sharpV) {
                                @:check2 (@:checkr _p ?? throw "null pointer dereference")._buf._writeString((_f.type().string() : stdgo.GoString)?.__copy__());
                                if (_f.isNil()) {
                                    @:check2 (@:checkr _p ?? throw "null pointer dereference")._buf._writeString(("(nil)" : stdgo.GoString));
                                    return;
                                };
                                @:check2 (@:checkr _p ?? throw "null pointer dereference")._buf._writeByte((123 : stdgo.GoUInt8));
                            } else {
                                @:check2 (@:checkr _p ?? throw "null pointer dereference")._buf._writeString(("map[" : stdgo.GoString));
                            };
                            var _sorted = stdgo._internal.internal.fmtsort.Fmtsort_sort.sort(_f?.__copy__());
                            for (_i => _key in (@:checkr _sorted ?? throw "null pointer dereference").key) {
                                if ((_i > (0 : stdgo.GoInt) : Bool)) {
                                    if ((@:checkr _p ?? throw "null pointer dereference")._fmt._fmtFlags._sharpV) {
                                        @:check2 (@:checkr _p ?? throw "null pointer dereference")._buf._writeString((", " : stdgo.GoString));
                                    } else {
                                        @:check2 (@:checkr _p ?? throw "null pointer dereference")._buf._writeByte((32 : stdgo.GoUInt8));
                                    };
                                };
                                @:check2r _p._printValue(_key?.__copy__(), _verb, (_depth + (1 : stdgo.GoInt) : stdgo.GoInt));
                                @:check2 (@:checkr _p ?? throw "null pointer dereference")._buf._writeByte((58 : stdgo.GoUInt8));
                                @:check2r _p._printValue((@:checkr _sorted ?? throw "null pointer dereference").value[(_i : stdgo.GoInt)], _verb, (_depth + (1 : stdgo.GoInt) : stdgo.GoInt));
                            };
                            if ((@:checkr _p ?? throw "null pointer dereference")._fmt._fmtFlags._sharpV) {
                                @:check2 (@:checkr _p ?? throw "null pointer dereference")._buf._writeByte((125 : stdgo.GoUInt8));
                            } else {
                                @:check2 (@:checkr _p ?? throw "null pointer dereference")._buf._writeByte((93 : stdgo.GoUInt8));
                            };
                            break;
                            break;
                        } else if (__switchIndex__ == 10 || (__switchIndex__ == -1 && (__value__ == (25u32 : stdgo._internal.reflect.Reflect_kind.Kind)))) {
                            if ((@:checkr _p ?? throw "null pointer dereference")._fmt._fmtFlags._sharpV) {
                                @:check2 (@:checkr _p ?? throw "null pointer dereference")._buf._writeString((_f.type().string() : stdgo.GoString)?.__copy__());
                            };
                            @:check2 (@:checkr _p ?? throw "null pointer dereference")._buf._writeByte((123 : stdgo.GoUInt8));
                            {
                                var _i = (0 : stdgo.GoInt);
                                while ((_i < _f.numField() : Bool)) {
                                    if ((_i > (0 : stdgo.GoInt) : Bool)) {
                                        if ((@:checkr _p ?? throw "null pointer dereference")._fmt._fmtFlags._sharpV) {
                                            @:check2 (@:checkr _p ?? throw "null pointer dereference")._buf._writeString((", " : stdgo.GoString));
                                        } else {
                                            @:check2 (@:checkr _p ?? throw "null pointer dereference")._buf._writeByte((32 : stdgo.GoUInt8));
                                        };
                                    };
if (((@:checkr _p ?? throw "null pointer dereference")._fmt._fmtFlags._plusV || (@:checkr _p ?? throw "null pointer dereference")._fmt._fmtFlags._sharpV : Bool)) {
                                        {
                                            var _name = (_f.type().field(_i).name.__copy__() : stdgo.GoString);
                                            if (_name != ((stdgo.Go.str() : stdgo.GoString))) {
                                                @:check2 (@:checkr _p ?? throw "null pointer dereference")._buf._writeString(_name.__copy__());
                                                @:check2 (@:checkr _p ?? throw "null pointer dereference")._buf._writeByte((58 : stdgo.GoUInt8));
                                            };
                                        };
                                    };
@:check2r _p._printValue(stdgo._internal.fmt.Fmt__getfield._getField(_f.__copy__(), _i).__copy__(), _verb, (_depth + (1 : stdgo.GoInt) : stdgo.GoInt));
                                    _i++;
                                };
                            };
                            @:check2 (@:checkr _p ?? throw "null pointer dereference")._buf._writeByte((125 : stdgo.GoUInt8));
                            break;
                            break;
                        } else if (__switchIndex__ == 11 || (__switchIndex__ == -1 && (__value__ == (20u32 : stdgo._internal.reflect.Reflect_kind.Kind)))) {
                            var _value = (_f.elem()?.__copy__() : stdgo._internal.reflect.Reflect_value.Value);
                            if (!_value.isValid()) {
                                if ((@:checkr _p ?? throw "null pointer dereference")._fmt._fmtFlags._sharpV) {
                                    @:check2 (@:checkr _p ?? throw "null pointer dereference")._buf._writeString((_f.type().string() : stdgo.GoString)?.__copy__());
                                    @:check2 (@:checkr _p ?? throw "null pointer dereference")._buf._writeString(("(nil)" : stdgo.GoString));
                                } else {
                                    @:check2 (@:checkr _p ?? throw "null pointer dereference")._buf._writeString(("<nil>" : stdgo.GoString));
                                };
                            } else {
                                @:check2r _p._printValue(_value?.__copy__(), _verb, (_depth + (1 : stdgo.GoInt) : stdgo.GoInt));
                            };
                            break;
                            break;
                        } else if (__switchIndex__ == 12 || (__switchIndex__ == -1 && (__value__ == ((17u32 : stdgo._internal.reflect.Reflect_kind.Kind)) || __value__ == ((23u32 : stdgo._internal.reflect.Reflect_kind.Kind))))) {
                            {
                                final __value__ = _verb;
                                if (__value__ == ((115 : stdgo.GoInt32)) || __value__ == ((113 : stdgo.GoInt32)) || __value__ == ((120 : stdgo.GoInt32)) || __value__ == ((88 : stdgo.GoInt32))) {
                                    var _t = (_f.type() : stdgo._internal.reflect.Reflect_type_.Type_);
                                    if (_t.elem().kind() == ((8u32 : stdgo._internal.reflect.Reflect_kind.Kind))) {
                                        var _bytes:stdgo.Slice<stdgo.GoUInt8> = (null : stdgo.Slice<stdgo.GoUInt8>);
                                        if (_f.kind() == ((23u32 : stdgo._internal.reflect.Reflect_kind.Kind))) {
                                            _bytes = _f.bytes();
                                        } else if (_f.canAddr()) {
                                            _bytes = _f.slice((0 : stdgo.GoInt), _f.len()).bytes();
                                        } else {
                                            _bytes = (new stdgo.Slice<stdgo.GoUInt8>((_f.len() : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>);
                                            for (_i => _ in _bytes) {
                                                _bytes[(_i : stdgo.GoInt)] = (_f.index(_i).uint() : stdgo.GoUInt8);
                                            };
                                        };
                                        @:check2r _p._fmtBytes(_bytes, _verb, (_t.string() : stdgo.GoString)?.__copy__());
                                        return;
                                    };
                                };
                            };
                            if ((@:checkr _p ?? throw "null pointer dereference")._fmt._fmtFlags._sharpV) {
                                @:check2 (@:checkr _p ?? throw "null pointer dereference")._buf._writeString((_f.type().string() : stdgo.GoString)?.__copy__());
                                if (((_f.kind() == (23u32 : stdgo._internal.reflect.Reflect_kind.Kind)) && _f.isNil() : Bool)) {
                                    @:check2 (@:checkr _p ?? throw "null pointer dereference")._buf._writeString(("(nil)" : stdgo.GoString));
                                    return;
                                };
                                @:check2 (@:checkr _p ?? throw "null pointer dereference")._buf._writeByte((123 : stdgo.GoUInt8));
                                {
                                    var _i = (0 : stdgo.GoInt);
                                    while ((_i < _f.len() : Bool)) {
                                        if ((_i > (0 : stdgo.GoInt) : Bool)) {
                                            @:check2 (@:checkr _p ?? throw "null pointer dereference")._buf._writeString((", " : stdgo.GoString));
                                        };
@:check2r _p._printValue(_f.index(_i).__copy__(), _verb, (_depth + (1 : stdgo.GoInt) : stdgo.GoInt));
                                        _i++;
                                    };
                                };
                                @:check2 (@:checkr _p ?? throw "null pointer dereference")._buf._writeByte((125 : stdgo.GoUInt8));
                            } else {
                                @:check2 (@:checkr _p ?? throw "null pointer dereference")._buf._writeByte((91 : stdgo.GoUInt8));
                                {
                                    var _i = (0 : stdgo.GoInt);
                                    while ((_i < _f.len() : Bool)) {
                                        if ((_i > (0 : stdgo.GoInt) : Bool)) {
                                            @:check2 (@:checkr _p ?? throw "null pointer dereference")._buf._writeByte((32 : stdgo.GoUInt8));
                                        };
@:check2r _p._printValue(_f.index(_i).__copy__(), _verb, (_depth + (1 : stdgo.GoInt) : stdgo.GoInt));
                                        _i++;
                                    };
                                };
                                @:check2 (@:checkr _p ?? throw "null pointer dereference")._buf._writeByte((93 : stdgo.GoUInt8));
                            };
                            break;
                            break;
                        } else if (__switchIndex__ == 13 || (__switchIndex__ == -1 && (__value__ == (22u32 : stdgo._internal.reflect.Reflect_kind.Kind)))) {
                            if (((_depth == (0 : stdgo.GoInt)) && (_f.pointer() != (new stdgo.GoUIntptr(0) : stdgo.GoUIntptr)) : Bool)) {
                                {
                                    var _a = (_f.elem()?.__copy__() : stdgo._internal.reflect.Reflect_value.Value);
                                    {
                                        final __value__ = _a.kind();
                                        if (__value__ == ((17u32 : stdgo._internal.reflect.Reflect_kind.Kind)) || __value__ == ((23u32 : stdgo._internal.reflect.Reflect_kind.Kind)) || __value__ == ((25u32 : stdgo._internal.reflect.Reflect_kind.Kind)) || __value__ == ((21u32 : stdgo._internal.reflect.Reflect_kind.Kind))) {
                                            @:check2 (@:checkr _p ?? throw "null pointer dereference")._buf._writeByte((38 : stdgo.GoUInt8));
                                            @:check2r _p._printValue(_a?.__copy__(), _verb, (_depth + (1 : stdgo.GoInt) : stdgo.GoInt));
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
                        } else if (__switchIndex__ == 14 || (__switchIndex__ == -1 && (__value__ == ((18u32 : stdgo._internal.reflect.Reflect_kind.Kind)) || __value__ == ((19u32 : stdgo._internal.reflect.Reflect_kind.Kind)) || __value__ == ((26u32 : stdgo._internal.reflect.Reflect_kind.Kind))))) {
                            @:check2r _p._fmtPointer(_f?.__copy__(), _verb);
                            break;
                            break;
                        } else {
                            @:check2r _p._unknownType(_f?.__copy__());
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
        if (_arg == null) {
            {
                final __value__ = _verb;
                if (__value__ == ((84 : stdgo.GoInt32)) || __value__ == ((118 : stdgo.GoInt32))) {
                    @:check2 (@:checkr _p ?? throw "null pointer dereference")._fmt._padString(("<nil>" : stdgo.GoString));
                } else {
                    @:check2r _p._badVerb(_verb);
                };
            };
            return;
        };
        {
            final __value__ = _verb;
            if (__value__ == ((84 : stdgo.GoInt32))) {
                @:check2 (@:checkr _p ?? throw "null pointer dereference")._fmt._fmtS((stdgo._internal.reflect.Reflect_typeof.typeOf(_arg).string() : stdgo.GoString)?.__copy__());
                return;
            } else if (__value__ == ((112 : stdgo.GoInt32))) {
                @:check2r _p._fmtPointer(stdgo._internal.reflect.Reflect_valueof.valueOf(_arg)?.__copy__(), (112 : stdgo.GoInt32));
                return;
            };
        };
        {
            final __type__ = _arg;
            if (stdgo.Go.typeEquals((__type__ : Bool))) {
                var _f:Bool = __type__ == null ? false : __type__.__underlying__() == null ? false : __type__ == null ? false : __type__.__underlying__().value;
                @:check2r _p._fmtBool(_f, _verb);
            } else if (stdgo.Go.typeEquals((__type__ : stdgo.GoFloat32))) {
                var _f:stdgo.GoFloat32 = __type__ == null ? 0 : __type__.__underlying__() == null ? 0 : __type__ == null ? 0 : __type__.__underlying__().value;
                @:check2r _p._fmtFloat((_f : stdgo.GoFloat64), (32 : stdgo.GoInt), _verb);
            } else if (stdgo.Go.typeEquals((__type__ : stdgo.GoFloat64))) {
                var _f:stdgo.GoFloat64 = __type__ == null ? 0 : __type__.__underlying__() == null ? 0 : __type__ == null ? 0 : __type__.__underlying__().value;
                @:check2r _p._fmtFloat(_f, (64 : stdgo.GoInt), _verb);
            } else if (stdgo.Go.typeEquals((__type__ : stdgo.GoComplex64))) {
                var _f:stdgo.GoComplex64 = __type__ == null ? new stdgo.GoComplex64(0, 0) : __type__.__underlying__() == null ? new stdgo.GoComplex64(0, 0) : __type__ == null ? new stdgo.GoComplex64(0, 0) : __type__.__underlying__().value;
                @:check2r _p._fmtComplex((_f : stdgo.GoComplex128), (64 : stdgo.GoInt), _verb);
            } else if (stdgo.Go.typeEquals((__type__ : stdgo.GoComplex128))) {
                var _f:stdgo.GoComplex128 = __type__ == null ? new stdgo.GoComplex128(0, 0) : __type__.__underlying__() == null ? new stdgo.GoComplex128(0, 0) : __type__ == null ? new stdgo.GoComplex128(0, 0) : __type__.__underlying__().value;
                @:check2r _p._fmtComplex(_f, (128 : stdgo.GoInt), _verb);
            } else if (stdgo.Go.typeEquals((__type__ : stdgo.GoInt))) {
                var _f:stdgo.GoInt = __type__ == null ? 0 : __type__.__underlying__() == null ? 0 : __type__ == null ? 0 : __type__.__underlying__().value;
                @:check2r _p._fmtInteger((_f : stdgo.GoUInt64), true, _verb);
            } else if (stdgo.Go.typeEquals((__type__ : stdgo.GoInt8))) {
                var _f:stdgo.GoInt8 = __type__ == null ? 0 : __type__.__underlying__() == null ? 0 : __type__ == null ? 0 : __type__.__underlying__().value;
                @:check2r _p._fmtInteger((_f : stdgo.GoUInt64), true, _verb);
            } else if (stdgo.Go.typeEquals((__type__ : stdgo.GoInt16))) {
                var _f:stdgo.GoInt16 = __type__ == null ? 0 : __type__.__underlying__() == null ? 0 : __type__ == null ? 0 : __type__.__underlying__().value;
                @:check2r _p._fmtInteger((_f : stdgo.GoUInt64), true, _verb);
            } else if (stdgo.Go.typeEquals((__type__ : stdgo.GoInt32))) {
                var _f:stdgo.GoInt32 = __type__ == null ? 0 : __type__.__underlying__() == null ? 0 : __type__ == null ? 0 : __type__.__underlying__().value;
                @:check2r _p._fmtInteger((_f : stdgo.GoUInt64), true, _verb);
            } else if (stdgo.Go.typeEquals((__type__ : stdgo.GoInt64))) {
                var _f:stdgo.GoInt64 = __type__ == null ? 0 : __type__.__underlying__() == null ? 0 : __type__ == null ? 0 : __type__.__underlying__().value;
                @:check2r _p._fmtInteger((_f : stdgo.GoUInt64), true, _verb);
            } else if (stdgo.Go.typeEquals((__type__ : stdgo.GoUInt))) {
                var _f:stdgo.GoUInt = __type__ == null ? 0 : __type__.__underlying__() == null ? 0 : __type__ == null ? 0 : __type__.__underlying__().value;
                @:check2r _p._fmtInteger((_f : stdgo.GoUInt64), false, _verb);
            } else if (stdgo.Go.typeEquals((__type__ : stdgo.GoUInt8))) {
                var _f:stdgo.GoUInt8 = __type__ == null ? 0 : __type__.__underlying__() == null ? 0 : __type__ == null ? 0 : __type__.__underlying__().value;
                @:check2r _p._fmtInteger((_f : stdgo.GoUInt64), false, _verb);
            } else if (stdgo.Go.typeEquals((__type__ : stdgo.GoUInt16))) {
                var _f:stdgo.GoUInt16 = __type__ == null ? 0 : __type__.__underlying__() == null ? 0 : __type__ == null ? 0 : __type__.__underlying__().value;
                @:check2r _p._fmtInteger((_f : stdgo.GoUInt64), false, _verb);
            } else if (stdgo.Go.typeEquals((__type__ : stdgo.GoUInt32))) {
                var _f:stdgo.GoUInt32 = __type__ == null ? 0 : __type__.__underlying__() == null ? 0 : __type__ == null ? 0 : __type__.__underlying__().value;
                @:check2r _p._fmtInteger((_f : stdgo.GoUInt64), false, _verb);
            } else if (stdgo.Go.typeEquals((__type__ : stdgo.GoUInt64))) {
                var _f:stdgo.GoUInt64 = __type__ == null ? 0 : __type__.__underlying__() == null ? 0 : __type__ == null ? 0 : __type__.__underlying__().value;
                @:check2r _p._fmtInteger(_f, false, _verb);
            } else if (stdgo.Go.typeEquals((__type__ : stdgo.GoUIntptr))) {
                var _f:stdgo.GoUIntptr = __type__ == null ? new stdgo.GoUIntptr(0) : __type__.__underlying__() == null ? new stdgo.GoUIntptr(0) : __type__ == null ? new stdgo.GoUIntptr(0) : __type__.__underlying__().value;
                @:check2r _p._fmtInteger((_f : stdgo.GoUInt64), false, _verb);
            } else if (stdgo.Go.typeEquals((__type__ : stdgo.GoString))) {
                var _f:stdgo.GoString = __type__ == null ? "" : __type__.__underlying__() == null ? "" : __type__ == null ? "" : __type__.__underlying__().value;
                @:check2r _p._fmtString(_f?.__copy__(), _verb);
            } else if (stdgo.Go.typeEquals((__type__ : stdgo.Slice<stdgo.GoUInt8>))) {
                var _f:stdgo.Slice<stdgo.GoUInt8> = __type__ == null ? (null : stdgo.Slice<stdgo.GoUInt8>) : __type__.__underlying__() == null ? (null : stdgo.Slice<stdgo.GoUInt8>) : __type__ == null ? (null : stdgo.Slice<stdgo.GoUInt8>) : __type__.__underlying__().value;
                @:check2r _p._fmtBytes(_f, _verb, ("[]byte" : stdgo.GoString));
            } else if (stdgo.Go.typeEquals((__type__ : stdgo._internal.reflect.Reflect_value.Value))) {
                var _f:stdgo._internal.reflect.Reflect_value.Value = __type__ == null ? ({} : stdgo._internal.reflect.Reflect_value.Value) : __type__.__underlying__() == null ? ({} : stdgo._internal.reflect.Reflect_value.Value) : __type__ == null ? ({} : stdgo._internal.reflect.Reflect_value.Value) : __type__.__underlying__().value;
                if ((_f.isValid() && _f.canInterface() : Bool)) {
                    (@:checkr _p ?? throw "null pointer dereference")._arg = _f.interface_();
                    if (@:check2r _p._handleMethods(_verb)) {
                        return;
                    };
                };
                @:check2r _p._printValue(_f?.__copy__(), _verb, (0 : stdgo.GoInt));
            } else {
                var _f:stdgo.AnyInterface = __type__?.__underlying__();
                if (!@:check2r _p._handleMethods(_verb)) {
                    @:check2r _p._printValue(stdgo._internal.reflect.Reflect_valueof.valueOf(_f)?.__copy__(), _verb, (0 : stdgo.GoInt));
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
            if ((@:checkr _p ?? throw "null pointer dereference")._erroring) {
                return _handled;
            };
            if (_verb == ((119 : stdgo.GoInt32))) {
                var __tmp__ = try {
                    { _0 : (stdgo.Go.typeAssert(((@:checkr _p ?? throw "null pointer dereference")._arg : stdgo.Error)) : stdgo.Error), _1 : true };
                } catch(_) {
                    { _0 : (null : stdgo.Error), _1 : false };
                }, __0 = __tmp__._0, _ok = __tmp__._1;
                if ((!_ok || !(@:checkr _p ?? throw "null pointer dereference")._wrapErrs : Bool)) {
                    @:check2r _p._badVerb(_verb);
                    return _handled = true;
                };
                _verb = (118 : stdgo.GoInt32);
            };
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
                        final __f__ = @:check2r _p._catchPanic;
                        __deferstack__.unshift({ ran : false, f : () -> __f__(_a0, _a1, _a2?.__copy__()) });
                    };
                    _formatter.format(stdgo.Go.asInterface(_p), _verb);
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
            if ((@:checkr _p ?? throw "null pointer dereference")._fmt._fmtFlags._sharpV) {
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
                            final __f__ = @:check2r _p._catchPanic;
                            __deferstack__.unshift({ ran : false, f : () -> __f__(_a0, _a1, _a2?.__copy__()) });
                        };
                        @:check2 (@:checkr _p ?? throw "null pointer dereference")._fmt._fmtS(_stringer.goString()?.__copy__());
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
                {
                    final __value__ = _verb;
                    if (__value__ == ((118 : stdgo.GoInt32)) || __value__ == ((115 : stdgo.GoInt32)) || __value__ == ((120 : stdgo.GoInt32)) || __value__ == ((88 : stdgo.GoInt32)) || __value__ == ((113 : stdgo.GoInt32))) {
                        {
                            final __type__ = (@:checkr _p ?? throw "null pointer dereference")._arg;
                            if (stdgo.Go.typeEquals((__type__ : stdgo.Error))) {
                                var _v:stdgo.Error = __type__ == null ? (null : stdgo.Error) : __type__.__underlying__() == null ? (null : stdgo.Error) : __type__ == null ? (null : stdgo.Error) : __type__.__underlying__().value;
                                _handled = true;
                                {
                                    var _a0 = (@:checkr _p ?? throw "null pointer dereference")._arg;
                                    var _a1 = _verb;
                                    var _a2 = ("Error" : stdgo.GoString);
                                    final __f__ = @:check2r _p._catchPanic;
                                    __deferstack__.unshift({ ran : false, f : () -> __f__(_a0, _a1, _a2?.__copy__()) });
                                };
                                @:check2r _p._fmtString(_v.error()?.__copy__(), _verb);
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
                                    final __f__ = @:check2r _p._catchPanic;
                                    __deferstack__.unshift({ ran : false, f : () -> __f__(_a0, _a1, _a2?.__copy__()) });
                                };
                                @:check2r _p._fmtString((_v.string() : stdgo.GoString)?.__copy__(), _verb);
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
                if (!(exe is stdgo.AnyInterface.AnyInterfaceData)) {
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
        {
            var _err = ({
                final r = stdgo.Go.recover_exception;
                stdgo.Go.recover_exception = null;
                r;
            } : stdgo.AnyInterface);
            if (_err != null) {
                {
                    var _v = (stdgo._internal.reflect.Reflect_valueof.valueOf(_arg)?.__copy__() : stdgo._internal.reflect.Reflect_value.Value);
                    if (((_v.kind() == (22u32 : stdgo._internal.reflect.Reflect_kind.Kind)) && _v.isNil() : Bool)) {
                        @:check2 (@:checkr _p ?? throw "null pointer dereference")._buf._writeString(("<nil>" : stdgo.GoString));
                        return;
                    };
                };
                if ((@:checkr _p ?? throw "null pointer dereference")._panicking) {
                    throw stdgo.Go.toInterface(_err);
                };
                var _oldFlags = ((@:checkr _p ?? throw "null pointer dereference")._fmt._fmtFlags?.__copy__() : stdgo._internal.fmt.Fmt_t_fmtflags.T_fmtFlags);
                @:check2 (@:checkr _p ?? throw "null pointer dereference")._fmt._clearflags();
                @:check2 (@:checkr _p ?? throw "null pointer dereference")._buf._writeString(("%!" : stdgo.GoString));
                @:check2 (@:checkr _p ?? throw "null pointer dereference")._buf._writeRune(_verb);
                @:check2 (@:checkr _p ?? throw "null pointer dereference")._buf._writeString(("(PANIC=" : stdgo.GoString));
                @:check2 (@:checkr _p ?? throw "null pointer dereference")._buf._writeString(_method?.__copy__());
                @:check2 (@:checkr _p ?? throw "null pointer dereference")._buf._writeString((" method: " : stdgo.GoString));
                (@:checkr _p ?? throw "null pointer dereference")._panicking = true;
                @:check2r _p._printArg(_err, (118 : stdgo.GoInt32));
                (@:checkr _p ?? throw "null pointer dereference")._panicking = false;
                @:check2 (@:checkr _p ?? throw "null pointer dereference")._buf._writeByte((41 : stdgo.GoUInt8));
                (@:checkr _p ?? throw "null pointer dereference")._fmt._fmtFlags = _oldFlags?.__copy__();
            };
        };
    }
    @:keep
    @:tdfield
    static public function _fmtPointer( _p:stdgo.Ref<stdgo._internal.fmt.Fmt_t_pp.T_pp>, _value:stdgo._internal.reflect.Reflect_value.Value, _verb:stdgo.GoInt32):Void {
        @:recv var _p:stdgo.Ref<stdgo._internal.fmt.Fmt_t_pp.T_pp> = _p;
        var _u:stdgo.GoUIntptr = new stdgo.GoUIntptr(0);
        {
            final __value__ = _value.kind();
            if (__value__ == ((18u32 : stdgo._internal.reflect.Reflect_kind.Kind)) || __value__ == ((19u32 : stdgo._internal.reflect.Reflect_kind.Kind)) || __value__ == ((21u32 : stdgo._internal.reflect.Reflect_kind.Kind)) || __value__ == ((22u32 : stdgo._internal.reflect.Reflect_kind.Kind)) || __value__ == ((23u32 : stdgo._internal.reflect.Reflect_kind.Kind)) || __value__ == ((26u32 : stdgo._internal.reflect.Reflect_kind.Kind))) {
                _u = _value.pointer();
            } else {
                @:check2r _p._badVerb(_verb);
                return;
            };
        };
        {
            final __value__ = _verb;
            if (__value__ == ((118 : stdgo.GoInt32))) {
                if ((@:checkr _p ?? throw "null pointer dereference")._fmt._fmtFlags._sharpV) {
                    @:check2 (@:checkr _p ?? throw "null pointer dereference")._buf._writeByte((40 : stdgo.GoUInt8));
                    @:check2 (@:checkr _p ?? throw "null pointer dereference")._buf._writeString((_value.type().string() : stdgo.GoString)?.__copy__());
                    @:check2 (@:checkr _p ?? throw "null pointer dereference")._buf._writeString((")(" : stdgo.GoString));
                    if (_u == ((new stdgo.GoUIntptr(0) : stdgo.GoUIntptr))) {
                        @:check2 (@:checkr _p ?? throw "null pointer dereference")._buf._writeString(("nil" : stdgo.GoString));
                    } else {
                        @:check2r _p._fmt0x64((_u : stdgo.GoUInt64), true);
                    };
                    @:check2 (@:checkr _p ?? throw "null pointer dereference")._buf._writeByte((41 : stdgo.GoUInt8));
                } else {
                    if (_u == ((new stdgo.GoUIntptr(0) : stdgo.GoUIntptr))) {
                        @:check2 (@:checkr _p ?? throw "null pointer dereference")._fmt._padString(("<nil>" : stdgo.GoString));
                    } else {
                        @:check2r _p._fmt0x64((_u : stdgo.GoUInt64), !(@:checkr _p ?? throw "null pointer dereference")._fmt._fmtFlags._sharp);
                    };
                };
            } else if (__value__ == ((112 : stdgo.GoInt32))) {
                @:check2r _p._fmt0x64((_u : stdgo.GoUInt64), !(@:checkr _p ?? throw "null pointer dereference")._fmt._fmtFlags._sharp);
            } else if (__value__ == ((98 : stdgo.GoInt32)) || __value__ == ((111 : stdgo.GoInt32)) || __value__ == ((100 : stdgo.GoInt32)) || __value__ == ((120 : stdgo.GoInt32)) || __value__ == ((88 : stdgo.GoInt32))) {
                @:check2r _p._fmtInteger((_u : stdgo.GoUInt64), false, _verb);
            } else {
                @:check2r _p._badVerb(_verb);
            };
        };
    }
    @:keep
    @:tdfield
    static public function _fmtBytes( _p:stdgo.Ref<stdgo._internal.fmt.Fmt_t_pp.T_pp>, _v:stdgo.Slice<stdgo.GoUInt8>, _verb:stdgo.GoInt32, _typeString:stdgo.GoString):Void {
        @:recv var _p:stdgo.Ref<stdgo._internal.fmt.Fmt_t_pp.T_pp> = _p;
        {
            final __value__ = _verb;
            if (__value__ == ((118 : stdgo.GoInt32)) || __value__ == ((100 : stdgo.GoInt32))) {
                if ((@:checkr _p ?? throw "null pointer dereference")._fmt._fmtFlags._sharpV) {
                    @:check2 (@:checkr _p ?? throw "null pointer dereference")._buf._writeString(_typeString?.__copy__());
                    if (_v == null) {
                        @:check2 (@:checkr _p ?? throw "null pointer dereference")._buf._writeString(("(nil)" : stdgo.GoString));
                        return;
                    };
                    @:check2 (@:checkr _p ?? throw "null pointer dereference")._buf._writeByte((123 : stdgo.GoUInt8));
                    for (_i => _c in _v) {
                        if ((_i > (0 : stdgo.GoInt) : Bool)) {
                            @:check2 (@:checkr _p ?? throw "null pointer dereference")._buf._writeString((", " : stdgo.GoString));
                        };
                        @:check2r _p._fmt0x64((_c : stdgo.GoUInt64), true);
                    };
                    @:check2 (@:checkr _p ?? throw "null pointer dereference")._buf._writeByte((125 : stdgo.GoUInt8));
                } else {
                    @:check2 (@:checkr _p ?? throw "null pointer dereference")._buf._writeByte((91 : stdgo.GoUInt8));
                    for (_i => _c in _v) {
                        if ((_i > (0 : stdgo.GoInt) : Bool)) {
                            @:check2 (@:checkr _p ?? throw "null pointer dereference")._buf._writeByte((32 : stdgo.GoUInt8));
                        };
                        @:check2 (@:checkr _p ?? throw "null pointer dereference")._fmt._fmtInteger((_c : stdgo.GoUInt64), (10 : stdgo.GoInt), false, _verb, ("0123456789abcdefx" : stdgo.GoString));
                    };
                    @:check2 (@:checkr _p ?? throw "null pointer dereference")._buf._writeByte((93 : stdgo.GoUInt8));
                };
            } else if (__value__ == ((115 : stdgo.GoInt32))) {
                @:check2 (@:checkr _p ?? throw "null pointer dereference")._fmt._fmtBs(_v);
            } else if (__value__ == ((120 : stdgo.GoInt32))) {
                @:check2 (@:checkr _p ?? throw "null pointer dereference")._fmt._fmtBx(_v, ("0123456789abcdefx" : stdgo.GoString));
            } else if (__value__ == ((88 : stdgo.GoInt32))) {
                @:check2 (@:checkr _p ?? throw "null pointer dereference")._fmt._fmtBx(_v, ("0123456789ABCDEFX" : stdgo.GoString));
            } else if (__value__ == ((113 : stdgo.GoInt32))) {
                @:check2 (@:checkr _p ?? throw "null pointer dereference")._fmt._fmtQ((_v : stdgo.GoString)?.__copy__());
            } else {
                @:check2r _p._printValue(stdgo._internal.reflect.Reflect_valueof.valueOf(stdgo.Go.toInterface(_v))?.__copy__(), _verb, (0 : stdgo.GoInt));
            };
        };
    }
    @:keep
    @:tdfield
    static public function _fmtString( _p:stdgo.Ref<stdgo._internal.fmt.Fmt_t_pp.T_pp>, _v:stdgo.GoString, _verb:stdgo.GoInt32):Void {
        @:recv var _p:stdgo.Ref<stdgo._internal.fmt.Fmt_t_pp.T_pp> = _p;
        {
            final __value__ = _verb;
            if (__value__ == ((118 : stdgo.GoInt32))) {
                if ((@:checkr _p ?? throw "null pointer dereference")._fmt._fmtFlags._sharpV) {
                    @:check2 (@:checkr _p ?? throw "null pointer dereference")._fmt._fmtQ(_v?.__copy__());
                } else {
                    @:check2 (@:checkr _p ?? throw "null pointer dereference")._fmt._fmtS(_v?.__copy__());
                };
            } else if (__value__ == ((115 : stdgo.GoInt32))) {
                @:check2 (@:checkr _p ?? throw "null pointer dereference")._fmt._fmtS(_v?.__copy__());
            } else if (__value__ == ((120 : stdgo.GoInt32))) {
                @:check2 (@:checkr _p ?? throw "null pointer dereference")._fmt._fmtSx(_v?.__copy__(), ("0123456789abcdefx" : stdgo.GoString));
            } else if (__value__ == ((88 : stdgo.GoInt32))) {
                @:check2 (@:checkr _p ?? throw "null pointer dereference")._fmt._fmtSx(_v?.__copy__(), ("0123456789ABCDEFX" : stdgo.GoString));
            } else if (__value__ == ((113 : stdgo.GoInt32))) {
                @:check2 (@:checkr _p ?? throw "null pointer dereference")._fmt._fmtQ(_v?.__copy__());
            } else {
                @:check2r _p._badVerb(_verb);
            };
        };
    }
    @:keep
    @:tdfield
    static public function _fmtComplex( _p:stdgo.Ref<stdgo._internal.fmt.Fmt_t_pp.T_pp>, _v:stdgo.GoComplex128, _size:stdgo.GoInt, _verb:stdgo.GoInt32):Void {
        @:recv var _p:stdgo.Ref<stdgo._internal.fmt.Fmt_t_pp.T_pp> = _p;
        {
            final __value__ = _verb;
            if (__value__ == ((118 : stdgo.GoInt32)) || __value__ == ((98 : stdgo.GoInt32)) || __value__ == ((103 : stdgo.GoInt32)) || __value__ == ((71 : stdgo.GoInt32)) || __value__ == ((120 : stdgo.GoInt32)) || __value__ == ((88 : stdgo.GoInt32)) || __value__ == ((102 : stdgo.GoInt32)) || __value__ == ((70 : stdgo.GoInt32)) || __value__ == ((101 : stdgo.GoInt32)) || __value__ == ((69 : stdgo.GoInt32))) {
                var _oldPlus = ((@:checkr _p ?? throw "null pointer dereference")._fmt._fmtFlags._plus : Bool);
                @:check2 (@:checkr _p ?? throw "null pointer dereference")._buf._writeByte((40 : stdgo.GoUInt8));
                @:check2r _p._fmtFloat((_v : stdgo.GoComplex128).real, (_size / (2 : stdgo.GoInt) : stdgo.GoInt), _verb);
                (@:checkr _p ?? throw "null pointer dereference")._fmt._fmtFlags._plus = true;
                @:check2r _p._fmtFloat((_v : stdgo.GoComplex128).imag, (_size / (2 : stdgo.GoInt) : stdgo.GoInt), _verb);
                @:check2 (@:checkr _p ?? throw "null pointer dereference")._buf._writeString(("i)" : stdgo.GoString));
                (@:checkr _p ?? throw "null pointer dereference")._fmt._fmtFlags._plus = _oldPlus;
            } else {
                @:check2r _p._badVerb(_verb);
            };
        };
    }
    @:keep
    @:tdfield
    static public function _fmtFloat( _p:stdgo.Ref<stdgo._internal.fmt.Fmt_t_pp.T_pp>, _v:stdgo.GoFloat64, _size:stdgo.GoInt, _verb:stdgo.GoInt32):Void {
        @:recv var _p:stdgo.Ref<stdgo._internal.fmt.Fmt_t_pp.T_pp> = _p;
        {
            final __value__ = _verb;
            if (__value__ == ((118 : stdgo.GoInt32))) {
                @:check2 (@:checkr _p ?? throw "null pointer dereference")._fmt._fmtFloat(_v, _size, (103 : stdgo.GoInt32), (-1 : stdgo.GoInt));
            } else if (__value__ == ((98 : stdgo.GoInt32)) || __value__ == ((103 : stdgo.GoInt32)) || __value__ == ((71 : stdgo.GoInt32)) || __value__ == ((120 : stdgo.GoInt32)) || __value__ == ((88 : stdgo.GoInt32))) {
                @:check2 (@:checkr _p ?? throw "null pointer dereference")._fmt._fmtFloat(_v, _size, _verb, (-1 : stdgo.GoInt));
            } else if (__value__ == ((102 : stdgo.GoInt32)) || __value__ == ((101 : stdgo.GoInt32)) || __value__ == ((69 : stdgo.GoInt32))) {
                @:check2 (@:checkr _p ?? throw "null pointer dereference")._fmt._fmtFloat(_v, _size, _verb, (6 : stdgo.GoInt));
            } else if (__value__ == ((70 : stdgo.GoInt32))) {
                @:check2 (@:checkr _p ?? throw "null pointer dereference")._fmt._fmtFloat(_v, _size, (102 : stdgo.GoInt32), (6 : stdgo.GoInt));
            } else {
                @:check2r _p._badVerb(_verb);
            };
        };
    }
    @:keep
    @:tdfield
    static public function _fmtInteger( _p:stdgo.Ref<stdgo._internal.fmt.Fmt_t_pp.T_pp>, _v:stdgo.GoUInt64, _isSigned:Bool, _verb:stdgo.GoInt32):Void {
        @:recv var _p:stdgo.Ref<stdgo._internal.fmt.Fmt_t_pp.T_pp> = _p;
        {
            final __value__ = _verb;
            if (__value__ == ((118 : stdgo.GoInt32))) {
                if (((@:checkr _p ?? throw "null pointer dereference")._fmt._fmtFlags._sharpV && !_isSigned : Bool)) {
                    @:check2r _p._fmt0x64(_v, true);
                } else {
                    @:check2 (@:checkr _p ?? throw "null pointer dereference")._fmt._fmtInteger(_v, (10 : stdgo.GoInt), _isSigned, _verb, ("0123456789abcdefx" : stdgo.GoString));
                };
            } else if (__value__ == ((100 : stdgo.GoInt32))) {
                @:check2 (@:checkr _p ?? throw "null pointer dereference")._fmt._fmtInteger(_v, (10 : stdgo.GoInt), _isSigned, _verb, ("0123456789abcdefx" : stdgo.GoString));
            } else if (__value__ == ((98 : stdgo.GoInt32))) {
                @:check2 (@:checkr _p ?? throw "null pointer dereference")._fmt._fmtInteger(_v, (2 : stdgo.GoInt), _isSigned, _verb, ("0123456789abcdefx" : stdgo.GoString));
            } else if (__value__ == ((111 : stdgo.GoInt32)) || __value__ == ((79 : stdgo.GoInt32))) {
                @:check2 (@:checkr _p ?? throw "null pointer dereference")._fmt._fmtInteger(_v, (8 : stdgo.GoInt), _isSigned, _verb, ("0123456789abcdefx" : stdgo.GoString));
            } else if (__value__ == ((120 : stdgo.GoInt32))) {
                @:check2 (@:checkr _p ?? throw "null pointer dereference")._fmt._fmtInteger(_v, (16 : stdgo.GoInt), _isSigned, _verb, ("0123456789abcdefx" : stdgo.GoString));
            } else if (__value__ == ((88 : stdgo.GoInt32))) {
                @:check2 (@:checkr _p ?? throw "null pointer dereference")._fmt._fmtInteger(_v, (16 : stdgo.GoInt), _isSigned, _verb, ("0123456789ABCDEFX" : stdgo.GoString));
            } else if (__value__ == ((99 : stdgo.GoInt32))) {
                @:check2 (@:checkr _p ?? throw "null pointer dereference")._fmt._fmtC(_v);
            } else if (__value__ == ((113 : stdgo.GoInt32))) {
                @:check2 (@:checkr _p ?? throw "null pointer dereference")._fmt._fmtQc(_v);
            } else if (__value__ == ((85 : stdgo.GoInt32))) {
                @:check2 (@:checkr _p ?? throw "null pointer dereference")._fmt._fmtUnicode(_v);
            } else {
                @:check2r _p._badVerb(_verb);
            };
        };
    }
    @:keep
    @:tdfield
    static public function _fmt0x64( _p:stdgo.Ref<stdgo._internal.fmt.Fmt_t_pp.T_pp>, _v:stdgo.GoUInt64, _leading0x:Bool):Void {
        @:recv var _p:stdgo.Ref<stdgo._internal.fmt.Fmt_t_pp.T_pp> = _p;
        var _sharp = ((@:checkr _p ?? throw "null pointer dereference")._fmt._fmtFlags._sharp : Bool);
        (@:checkr _p ?? throw "null pointer dereference")._fmt._fmtFlags._sharp = _leading0x;
        @:check2 (@:checkr _p ?? throw "null pointer dereference")._fmt._fmtInteger(_v, (16 : stdgo.GoInt), false, (118 : stdgo.GoInt32), ("0123456789abcdefx" : stdgo.GoString));
        (@:checkr _p ?? throw "null pointer dereference")._fmt._fmtFlags._sharp = _sharp;
    }
    @:keep
    @:tdfield
    static public function _fmtBool( _p:stdgo.Ref<stdgo._internal.fmt.Fmt_t_pp.T_pp>, _v:Bool, _verb:stdgo.GoInt32):Void {
        @:recv var _p:stdgo.Ref<stdgo._internal.fmt.Fmt_t_pp.T_pp> = _p;
        {
            final __value__ = _verb;
            if (__value__ == ((116 : stdgo.GoInt32)) || __value__ == ((118 : stdgo.GoInt32))) {
                @:check2 (@:checkr _p ?? throw "null pointer dereference")._fmt._fmtBoolean(_v);
            } else {
                @:check2r _p._badVerb(_verb);
            };
        };
    }
    @:keep
    @:tdfield
    static public function _badVerb( _p:stdgo.Ref<stdgo._internal.fmt.Fmt_t_pp.T_pp>, _verb:stdgo.GoInt32):Void {
        @:recv var _p:stdgo.Ref<stdgo._internal.fmt.Fmt_t_pp.T_pp> = _p;
        (@:checkr _p ?? throw "null pointer dereference")._erroring = true;
        @:check2 (@:checkr _p ?? throw "null pointer dereference")._buf._writeString(("%!" : stdgo.GoString));
        @:check2 (@:checkr _p ?? throw "null pointer dereference")._buf._writeRune(_verb);
        @:check2 (@:checkr _p ?? throw "null pointer dereference")._buf._writeByte((40 : stdgo.GoUInt8));
        if ((@:checkr _p ?? throw "null pointer dereference")._arg != null) {
            @:check2 (@:checkr _p ?? throw "null pointer dereference")._buf._writeString((stdgo._internal.reflect.Reflect_typeof.typeOf((@:checkr _p ?? throw "null pointer dereference")._arg).string() : stdgo.GoString)?.__copy__());
            @:check2 (@:checkr _p ?? throw "null pointer dereference")._buf._writeByte((61 : stdgo.GoUInt8));
            @:check2r _p._printArg((@:checkr _p ?? throw "null pointer dereference")._arg, (118 : stdgo.GoInt32));
        } else if ((@:checkr _p ?? throw "null pointer dereference")._value.isValid()) {
            @:check2 (@:checkr _p ?? throw "null pointer dereference")._buf._writeString(((@:checkr _p ?? throw "null pointer dereference")._value.type().string() : stdgo.GoString)?.__copy__());
            @:check2 (@:checkr _p ?? throw "null pointer dereference")._buf._writeByte((61 : stdgo.GoUInt8));
            @:check2r _p._printValue((@:checkr _p ?? throw "null pointer dereference")._value?.__copy__(), (118 : stdgo.GoInt32), (0 : stdgo.GoInt));
        } else {
            @:check2 (@:checkr _p ?? throw "null pointer dereference")._buf._writeString(("<nil>" : stdgo.GoString));
        };
        @:check2 (@:checkr _p ?? throw "null pointer dereference")._buf._writeByte((41 : stdgo.GoUInt8));
        (@:checkr _p ?? throw "null pointer dereference")._erroring = false;
    }
    @:keep
    @:tdfield
    static public function _unknownType( _p:stdgo.Ref<stdgo._internal.fmt.Fmt_t_pp.T_pp>, _v:stdgo._internal.reflect.Reflect_value.Value):Void {
        @:recv var _p:stdgo.Ref<stdgo._internal.fmt.Fmt_t_pp.T_pp> = _p;
        if (!_v.isValid()) {
            @:check2 (@:checkr _p ?? throw "null pointer dereference")._buf._writeString(("<nil>" : stdgo.GoString));
            return;
        };
        @:check2 (@:checkr _p ?? throw "null pointer dereference")._buf._writeByte((63 : stdgo.GoUInt8));
        @:check2 (@:checkr _p ?? throw "null pointer dereference")._buf._writeString((_v.type().string() : stdgo.GoString)?.__copy__());
        @:check2 (@:checkr _p ?? throw "null pointer dereference")._buf._writeByte((63 : stdgo.GoUInt8));
    }
    @:keep
    @:tdfield
    static public function writeString( _p:stdgo.Ref<stdgo._internal.fmt.Fmt_t_pp.T_pp>, _s:stdgo.GoString):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } {
        @:recv var _p:stdgo.Ref<stdgo._internal.fmt.Fmt_t_pp.T_pp> = _p;
        var _ret = (0 : stdgo.GoInt), _err = (null : stdgo.Error);
        @:check2 (@:checkr _p ?? throw "null pointer dereference")._buf._writeString(_s?.__copy__());
        return {
            final __tmp__:{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } = { _0 : (_s.length), _1 : (null : stdgo.Error) };
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
        @:check2 (@:checkr _p ?? throw "null pointer dereference")._buf._write(_b);
        return {
            final __tmp__:{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } = { _0 : (_b.length), _1 : (null : stdgo.Error) };
            _ret = __tmp__._0;
            _err = __tmp__._1;
            __tmp__;
        };
    }
    @:keep
    @:tdfield
    static public function flag( _p:stdgo.Ref<stdgo._internal.fmt.Fmt_t_pp.T_pp>, _b:stdgo.GoInt):Bool {
        @:recv var _p:stdgo.Ref<stdgo._internal.fmt.Fmt_t_pp.T_pp> = _p;
        {
            final __value__ = _b;
            if (__value__ == ((45 : stdgo.GoInt))) {
                return (@:checkr _p ?? throw "null pointer dereference")._fmt._fmtFlags._minus;
            } else if (__value__ == ((43 : stdgo.GoInt))) {
                return ((@:checkr _p ?? throw "null pointer dereference")._fmt._fmtFlags._plus || (@:checkr _p ?? throw "null pointer dereference")._fmt._fmtFlags._plusV : Bool);
            } else if (__value__ == ((35 : stdgo.GoInt))) {
                return ((@:checkr _p ?? throw "null pointer dereference")._fmt._fmtFlags._sharp || (@:checkr _p ?? throw "null pointer dereference")._fmt._fmtFlags._sharpV : Bool);
            } else if (__value__ == ((32 : stdgo.GoInt))) {
                return (@:checkr _p ?? throw "null pointer dereference")._fmt._fmtFlags._space;
            } else if (__value__ == ((48 : stdgo.GoInt))) {
                return (@:checkr _p ?? throw "null pointer dereference")._fmt._fmtFlags._zero;
            };
        };
        return false;
    }
    @:keep
    @:tdfield
    static public function precision( _p:stdgo.Ref<stdgo._internal.fmt.Fmt_t_pp.T_pp>):{ var _0 : stdgo.GoInt; var _1 : Bool; } {
        @:recv var _p:stdgo.Ref<stdgo._internal.fmt.Fmt_t_pp.T_pp> = _p;
        var _prec = (0 : stdgo.GoInt), _ok = false;
        return {
            final __tmp__:{ var _0 : stdgo.GoInt; var _1 : Bool; } = { _0 : (@:checkr _p ?? throw "null pointer dereference")._fmt._prec, _1 : (@:checkr _p ?? throw "null pointer dereference")._fmt._fmtFlags._precPresent };
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
        return {
            final __tmp__:{ var _0 : stdgo.GoInt; var _1 : Bool; } = { _0 : (@:checkr _p ?? throw "null pointer dereference")._fmt._wid, _1 : (@:checkr _p ?? throw "null pointer dereference")._fmt._fmtFlags._widPresent };
            _wid = __tmp__._0;
            _ok = __tmp__._1;
            __tmp__;
        };
    }
    @:keep
    @:tdfield
    static public function _free( _p:stdgo.Ref<stdgo._internal.fmt.Fmt_t_pp.T_pp>):Void {
        @:recv var _p:stdgo.Ref<stdgo._internal.fmt.Fmt_t_pp.T_pp> = _p;
        if (((@:checkr _p ?? throw "null pointer dereference")._buf.capacity > (65536 : stdgo.GoInt) : Bool)) {
            (@:checkr _p ?? throw "null pointer dereference")._buf = null;
        } else {
            (@:checkr _p ?? throw "null pointer dereference")._buf = ((@:checkr _p ?? throw "null pointer dereference")._buf.__slice__(0, (0 : stdgo.GoInt)) : stdgo._internal.fmt.Fmt_t_buffer.T_buffer);
        };
        if (((@:checkr _p ?? throw "null pointer dereference")._wrappedErrs.capacity > (8 : stdgo.GoInt) : Bool)) {
            (@:checkr _p ?? throw "null pointer dereference")._wrappedErrs = (null : stdgo.Slice<stdgo.GoInt>);
        };
        (@:checkr _p ?? throw "null pointer dereference")._arg = (null : stdgo.AnyInterface);
        (@:checkr _p ?? throw "null pointer dereference")._value = (new stdgo._internal.reflect.Reflect_value.Value() : stdgo._internal.reflect.Reflect_value.Value);
        (@:checkr _p ?? throw "null pointer dereference")._wrappedErrs = ((@:checkr _p ?? throw "null pointer dereference")._wrappedErrs.__slice__(0, (0 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoInt>);
        @:check2 stdgo._internal.fmt.Fmt__ppfree._ppFree.put(stdgo.Go.toInterface(stdgo.Go.asInterface(_p)));
    }
}
