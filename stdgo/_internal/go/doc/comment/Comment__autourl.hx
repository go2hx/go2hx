package stdgo._internal.go.doc.comment;
function _autoURL(_s:stdgo.GoString):{ var _0 : stdgo.GoString; var _1 : Bool; } {
        var _url = ("" : stdgo.GoString), _ok = false;
        var pathBreak = false;
        var _stk_17:stdgo.Slice<stdgo.GoUInt8> = (null : stdgo.Slice<stdgo.GoUInt8>);
        var _end_16:stdgo.GoInt = (0 : stdgo.GoInt);
        var _i_15:stdgo.GoInt = (0 : stdgo.GoInt);
        var _gotoNext = 0i64;
        _gotoNext == ((0i64 : stdgo.GoInt));
        //"file://#L0"
        while (_gotoNext != ((-1i64 : stdgo.GoInt))) {
            //"file://#L0"
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i64)) {
                    _gotoNext = 3657894i64;
                } else if (__value__ == (3657894i64)) {
                    //"file:///home/runner/.go/go1.21.3/src/go/doc/comment/parse.go#L981"
                    if (((_s.length) < (7 : stdgo.GoInt) : Bool)) {
                        _gotoNext = 3657904i64;
                    } else if (_s[(3 : stdgo.GoInt)] == ((58 : stdgo.GoUInt8))) {
                        _gotoNext = 3657941i64;
                    } else if (_s[(4 : stdgo.GoInt)] == ((58 : stdgo.GoUInt8))) {
                        _gotoNext = 3657968i64;
                    } else if (_s[(5 : stdgo.GoInt)] == ((58 : stdgo.GoUInt8))) {
                        _gotoNext = 3657995i64;
                    } else if (_s[(6 : stdgo.GoInt)] == ((58 : stdgo.GoUInt8))) {
                        _gotoNext = 3658022i64;
                    } else {
                        _gotoNext = 3658049i64;
                    };
                } else if (__value__ == (3657904i64)) {
                    //"file:///home/runner/.go/go1.21.3/src/go/doc/comment/parse.go#L983"
                    return {
                        @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.GoString; var _1 : Bool; } = { _0 : (stdgo.Go.str() : stdgo.GoString)?.__copy__(), _1 : false };
                        _url = __tmp__._0;
                        _ok = __tmp__._1;
                        __tmp__;
                    };
                    _gotoNext = 3658081i64;
                } else if (__value__ == (3657941i64)) {
                    _i_15 = (3 : stdgo.GoInt);
                    _gotoNext = 3658081i64;
                } else if (__value__ == (3657968i64)) {
                    _i_15 = (4 : stdgo.GoInt);
                    _gotoNext = 3658081i64;
                } else if (__value__ == (3657995i64)) {
                    _i_15 = (5 : stdgo.GoInt);
                    _gotoNext = 3658081i64;
                } else if (__value__ == (3658022i64)) {
                    _i_15 = (6 : stdgo.GoInt);
                    _gotoNext = 3658081i64;
                } else if (__value__ == (3658049i64)) {
                    //"file:///home/runner/.go/go1.21.3/src/go/doc/comment/parse.go#L993"
                    return {
                        @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.GoString; var _1 : Bool; } = { _0 : (stdgo.Go.str() : stdgo.GoString)?.__copy__(), _1 : false };
                        _url = __tmp__._0;
                        _ok = __tmp__._1;
                        __tmp__;
                    };
                    _gotoNext = 3658081i64;
                } else if (__value__ == (3658081i64)) {
                    //"file:///home/runner/.go/go1.21.3/src/go/doc/comment/parse.go#L995"
                    if ((((_i_15 + (3 : stdgo.GoInt) : stdgo.GoInt) > (_s.length) : Bool) || ((_s.__slice__(_i_15, (_i_15 + (3 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoString) != ("://" : stdgo.GoString)) : Bool)) {
                        _gotoNext = 3658118i64;
                    } else {
                        _gotoNext = 3658168i64;
                    };
                } else if (__value__ == (3658118i64)) {
                    //"file:///home/runner/.go/go1.21.3/src/go/doc/comment/parse.go#L996"
                    return {
                        @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.GoString; var _1 : Bool; } = { _0 : (stdgo.Go.str() : stdgo.GoString)?.__copy__(), _1 : false };
                        _url = __tmp__._0;
                        _ok = __tmp__._1;
                        __tmp__;
                    };
                    _gotoNext = 3658168i64;
                } else if (__value__ == (3658168i64)) {
                    //"file:///home/runner/.go/go1.21.3/src/go/doc/comment/parse.go#L1000"
                    if (!stdgo._internal.go.doc.comment.Comment__isscheme._isScheme((_s.__slice__(0, _i_15) : stdgo.GoString)?.__copy__())) {
                        _gotoNext = 3658188i64;
                    } else {
                        _gotoNext = 3658310i64;
                    };
                } else if (__value__ == (3658188i64)) {
                    //"file:///home/runner/.go/go1.21.3/src/go/doc/comment/parse.go#L1001"
                    return {
                        @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.GoString; var _1 : Bool; } = { _0 : (stdgo.Go.str() : stdgo.GoString)?.__copy__(), _1 : false };
                        _url = __tmp__._0;
                        _ok = __tmp__._1;
                        __tmp__;
                    };
                    _gotoNext = 3658310i64;
                } else if (__value__ == (3658310i64)) {
                    _i_15 = (_i_15 + ((3 : stdgo.GoInt)) : stdgo.GoInt);
                    //"file:///home/runner/.go/go1.21.3/src/go/doc/comment/parse.go#L1007"
                    if ((((_i_15 >= (_s.length) : Bool) || !stdgo._internal.go.doc.comment.Comment__ishost._isHost(_s[(_i_15 : stdgo.GoInt)]) : Bool) || stdgo._internal.go.doc.comment.Comment__ispunct._isPunct(_s[(_i_15 : stdgo.GoInt)]) : Bool)) {
                        _gotoNext = 3658367i64;
                    } else {
                        _gotoNext = 3658392i64;
                    };
                } else if (__value__ == (3658367i64)) {
                    //"file:///home/runner/.go/go1.21.3/src/go/doc/comment/parse.go#L1008"
                    return {
                        @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.GoString; var _1 : Bool; } = { _0 : (stdgo.Go.str() : stdgo.GoString)?.__copy__(), _1 : false };
                        _url = __tmp__._0;
                        _ok = __tmp__._1;
                        __tmp__;
                    };
                    _gotoNext = 3658392i64;
                } else if (__value__ == (3658392i64)) {
                    //"file:///home/runner/.go/go1.21.3/src/go/doc/comment/parse.go#L1010"
                    _i_15++;
                    _end_16 = _i_15;
                    0i64;
                    _gotoNext = 3658407i64;
                } else if (__value__ == (3658407i64)) {
                    //"file://#L0"
                    if (((_i_15 < (_s.length) : Bool) && stdgo._internal.go.doc.comment.Comment__ishost._isHost(_s[(_i_15 : stdgo.GoInt)]) : Bool)) {
                        _gotoNext = 3658438i64;
                    } else {
                        _gotoNext = 3658491i64;
                    };
                } else if (__value__ == (3658438i64)) {
                    //"file:///home/runner/.go/go1.21.3/src/go/doc/comment/parse.go#L1013"
                    if (!stdgo._internal.go.doc.comment.Comment__ispunct._isPunct(_s[(_i_15 : stdgo.GoInt)])) {
                        _gotoNext = 3658460i64;
                    } else {
                        _gotoNext = 3658483i64;
                    };
                } else if (__value__ == (3658460i64)) {
                    _end_16 = (_i_15 + (1 : stdgo.GoInt) : stdgo.GoInt);
                    _gotoNext = 3658483i64;
                } else if (__value__ == (3658483i64)) {
                    //"file:///home/runner/.go/go1.21.3/src/go/doc/comment/parse.go#L1016"
                    _i_15++;
                    _gotoNext = 3658407i64;
                } else if (__value__ == (3658491i64)) {
                    _i_15 = _end_16;
                    _stk_17 = (new stdgo.Slice<stdgo.GoUInt8>(0, 0, ...[]).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>);
                    _end_16 = _i_15;
                    _gotoNext = 3658876i64;
                } else if (__value__ == (3658876i64)) {
                    0i64;
                    pathBreak = false;
                    _gotoNext = 3658883i64;
                } else if (__value__ == (3658883i64)) {
                    //"file://#L0"
                    if (!pathBreak && ((_i_15 < (_s.length) : Bool))) {
                        _gotoNext = 3658905i64;
                    } else {
                        _gotoNext = 3659274i64;
                    };
                } else if (__value__ == (3658901i64)) {
                    //"file:///home/runner/.go/go1.21.3/src/go/doc/comment/parse.go#L1030"
                    _i_15++;
                    _gotoNext = 3658883i64;
                } else if (__value__ == (3658905i64)) {
                    //"file:///home/runner/.go/go1.21.3/src/go/doc/comment/parse.go#L1031"
                    if (stdgo._internal.go.doc.comment.Comment__ispunct._isPunct(_s[(_i_15 : stdgo.GoInt)])) {
                        _gotoNext = 3658926i64;
                    } else {
                        _gotoNext = 3658946i64;
                    };
                } else if (__value__ == (3658926i64)) {
                    //"file:///home/runner/.go/go1.21.3/src/go/doc/comment/parse.go#L1030"
                    _i_15++;
                    _gotoNext = 3658883i64;
                } else if (__value__ == (3658946i64)) {
                    //"file:///home/runner/.go/go1.21.3/src/go/doc/comment/parse.go#L1034"
                    if (!stdgo._internal.go.doc.comment.Comment__ispath._isPath(_s[(_i_15 : stdgo.GoInt)])) {
                        _gotoNext = 3658963i64;
                    } else {
                        _gotoNext = 3658980i64;
                    };
                } else if (__value__ == (3658963i64)) {
                    _gotoNext = 3659274i64;
                } else if (__value__ == (3658980i64)) {
                    _gotoNext = 3658980i64;
                    //"file:///home/runner/.go/go1.21.3/src/go/doc/comment/parse.go#L1037"
                    {
                        final __value__ = _s[(_i_15 : stdgo.GoInt)];
                        if (__value__ == ((40 : stdgo.GoUInt8))) {
                            _gotoNext = 3658996i64;
                        } else if (__value__ == ((123 : stdgo.GoUInt8))) {
                            _gotoNext = 3659034i64;
                        } else if (__value__ == ((91 : stdgo.GoUInt8))) {
                            _gotoNext = 3659072i64;
                        } else if (__value__ == ((41 : stdgo.GoUInt8)) || __value__ == ((125 : stdgo.GoUInt8)) || __value__ == ((93 : stdgo.GoUInt8))) {
                            _gotoNext = 3659110i64;
                        } else {
                            _gotoNext = 3659231i64;
                        };
                    };
                } else if (__value__ == (3658996i64)) {
                    _stk_17 = (_stk_17.__append__((41 : stdgo.GoUInt8)) : stdgo.Slice<stdgo.GoUInt8>);
                    _gotoNext = 3659231i64;
                } else if (__value__ == (3659034i64)) {
                    _stk_17 = (_stk_17.__append__((125 : stdgo.GoUInt8)) : stdgo.Slice<stdgo.GoUInt8>);
                    _gotoNext = 3659231i64;
                } else if (__value__ == (3659072i64)) {
                    _stk_17 = (_stk_17.__append__((93 : stdgo.GoUInt8)) : stdgo.Slice<stdgo.GoUInt8>);
                    _gotoNext = 3659231i64;
                } else if (__value__ == (3659110i64)) {
                    //"file:///home/runner/.go/go1.21.3/src/go/doc/comment/parse.go#L1045"
                    if (((_stk_17.length == (0 : stdgo.GoInt)) || (_stk_17[((_stk_17.length) - (1 : stdgo.GoInt) : stdgo.GoInt)] != _s[(_i_15 : stdgo.GoInt)]) : Bool)) {
                        _gotoNext = 3659177i64;
                    } else {
                        _gotoNext = 3659202i64;
                    };
                } else if (__value__ == (3659177i64)) {
                    pathBreak = true;
                    _gotoNext = 3658883i64;
                } else if (__value__ == (3659202i64)) {
                    _stk_17 = (_stk_17.__slice__(0, ((_stk_17.length) - (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>);
                    _gotoNext = 3659231i64;
                } else if (__value__ == (3659231i64)) {
                    //"file:///home/runner/.go/go1.21.3/src/go/doc/comment/parse.go#L1050"
                    if ((_stk_17.length) == ((0 : stdgo.GoInt))) {
                        _gotoNext = 3659248i64;
                    } else {
                        _gotoNext = 3658901i64;
                    };
                } else if (__value__ == (3659248i64)) {
                    _end_16 = (_i_15 + (1 : stdgo.GoInt) : stdgo.GoInt);
                    _gotoNext = 3658901i64;
                } else if (__value__ == (3659274i64)) {
                    //"file:///home/runner/.go/go1.21.3/src/go/doc/comment/parse.go#L1055"
                    return {
                        @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.GoString; var _1 : Bool; } = { _0 : (_s.__slice__(0, _end_16) : stdgo.GoString)?.__copy__(), _1 : true };
                        _url = __tmp__._0;
                        _ok = __tmp__._1;
                        __tmp__;
                    };
                    _gotoNext = -1i64;
                };
            };
        };
        //"file://#L0"
        throw stdgo.Go.toInterface(("unreachable goto control flow" : stdgo.GoString));
    }
