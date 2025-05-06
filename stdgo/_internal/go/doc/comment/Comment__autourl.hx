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
                    _gotoNext = 3640483i64;
                } else if (__value__ == (3640483i64)) {
                    //"file:///home/runner/.go/go1.21.3/src/go/doc/comment/parse.go#L981"
                    if (((_s.length) < (7 : stdgo.GoInt) : Bool)) {
                        _gotoNext = 3640493i64;
                    } else if (_s[(3 : stdgo.GoInt)] == ((58 : stdgo.GoUInt8))) {
                        _gotoNext = 3640530i64;
                    } else if (_s[(4 : stdgo.GoInt)] == ((58 : stdgo.GoUInt8))) {
                        _gotoNext = 3640557i64;
                    } else if (_s[(5 : stdgo.GoInt)] == ((58 : stdgo.GoUInt8))) {
                        _gotoNext = 3640584i64;
                    } else if (_s[(6 : stdgo.GoInt)] == ((58 : stdgo.GoUInt8))) {
                        _gotoNext = 3640611i64;
                    } else {
                        _gotoNext = 3640638i64;
                    };
                } else if (__value__ == (3640493i64)) {
                    //"file:///home/runner/.go/go1.21.3/src/go/doc/comment/parse.go#L983"
                    return {
                        @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.GoString; var _1 : Bool; } = { _0 : (stdgo.Go.str() : stdgo.GoString)?.__copy__(), _1 : false };
                        _url = __tmp__._0;
                        _ok = __tmp__._1;
                        __tmp__;
                    };
                    _gotoNext = 3640670i64;
                } else if (__value__ == (3640530i64)) {
                    _i_15 = (3 : stdgo.GoInt);
                    _gotoNext = 3640670i64;
                } else if (__value__ == (3640557i64)) {
                    _i_15 = (4 : stdgo.GoInt);
                    _gotoNext = 3640670i64;
                } else if (__value__ == (3640584i64)) {
                    _i_15 = (5 : stdgo.GoInt);
                    _gotoNext = 3640670i64;
                } else if (__value__ == (3640611i64)) {
                    _i_15 = (6 : stdgo.GoInt);
                    _gotoNext = 3640670i64;
                } else if (__value__ == (3640638i64)) {
                    //"file:///home/runner/.go/go1.21.3/src/go/doc/comment/parse.go#L993"
                    return {
                        @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.GoString; var _1 : Bool; } = { _0 : (stdgo.Go.str() : stdgo.GoString)?.__copy__(), _1 : false };
                        _url = __tmp__._0;
                        _ok = __tmp__._1;
                        __tmp__;
                    };
                    _gotoNext = 3640670i64;
                } else if (__value__ == (3640670i64)) {
                    //"file:///home/runner/.go/go1.21.3/src/go/doc/comment/parse.go#L995"
                    if ((((_i_15 + (3 : stdgo.GoInt) : stdgo.GoInt) > (_s.length) : Bool) || ((_s.__slice__(_i_15, (_i_15 + (3 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoString) != ("://" : stdgo.GoString)) : Bool)) {
                        _gotoNext = 3640707i64;
                    } else {
                        _gotoNext = 3640757i64;
                    };
                } else if (__value__ == (3640707i64)) {
                    //"file:///home/runner/.go/go1.21.3/src/go/doc/comment/parse.go#L996"
                    return {
                        @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.GoString; var _1 : Bool; } = { _0 : (stdgo.Go.str() : stdgo.GoString)?.__copy__(), _1 : false };
                        _url = __tmp__._0;
                        _ok = __tmp__._1;
                        __tmp__;
                    };
                    _gotoNext = 3640757i64;
                } else if (__value__ == (3640757i64)) {
                    //"file:///home/runner/.go/go1.21.3/src/go/doc/comment/parse.go#L1000"
                    if (!stdgo._internal.go.doc.comment.Comment__isscheme._isScheme((_s.__slice__(0, _i_15) : stdgo.GoString)?.__copy__())) {
                        _gotoNext = 3640777i64;
                    } else {
                        _gotoNext = 3640899i64;
                    };
                } else if (__value__ == (3640777i64)) {
                    //"file:///home/runner/.go/go1.21.3/src/go/doc/comment/parse.go#L1001"
                    return {
                        @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.GoString; var _1 : Bool; } = { _0 : (stdgo.Go.str() : stdgo.GoString)?.__copy__(), _1 : false };
                        _url = __tmp__._0;
                        _ok = __tmp__._1;
                        __tmp__;
                    };
                    _gotoNext = 3640899i64;
                } else if (__value__ == (3640899i64)) {
                    _i_15 = (_i_15 + ((3 : stdgo.GoInt)) : stdgo.GoInt);
                    //"file:///home/runner/.go/go1.21.3/src/go/doc/comment/parse.go#L1007"
                    if ((((_i_15 >= (_s.length) : Bool) || !stdgo._internal.go.doc.comment.Comment__ishost._isHost(_s[(_i_15 : stdgo.GoInt)]) : Bool) || stdgo._internal.go.doc.comment.Comment__ispunct._isPunct(_s[(_i_15 : stdgo.GoInt)]) : Bool)) {
                        _gotoNext = 3640956i64;
                    } else {
                        _gotoNext = 3640981i64;
                    };
                } else if (__value__ == (3640956i64)) {
                    //"file:///home/runner/.go/go1.21.3/src/go/doc/comment/parse.go#L1008"
                    return {
                        @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.GoString; var _1 : Bool; } = { _0 : (stdgo.Go.str() : stdgo.GoString)?.__copy__(), _1 : false };
                        _url = __tmp__._0;
                        _ok = __tmp__._1;
                        __tmp__;
                    };
                    _gotoNext = 3640981i64;
                } else if (__value__ == (3640981i64)) {
                    //"file:///home/runner/.go/go1.21.3/src/go/doc/comment/parse.go#L1010"
                    _i_15++;
                    _end_16 = _i_15;
                    0i64;
                    _gotoNext = 3640996i64;
                } else if (__value__ == (3640996i64)) {
                    //"file://#L0"
                    if (((_i_15 < (_s.length) : Bool) && stdgo._internal.go.doc.comment.Comment__ishost._isHost(_s[(_i_15 : stdgo.GoInt)]) : Bool)) {
                        _gotoNext = 3641027i64;
                    } else {
                        _gotoNext = 3641080i64;
                    };
                } else if (__value__ == (3641027i64)) {
                    //"file:///home/runner/.go/go1.21.3/src/go/doc/comment/parse.go#L1013"
                    if (!stdgo._internal.go.doc.comment.Comment__ispunct._isPunct(_s[(_i_15 : stdgo.GoInt)])) {
                        _gotoNext = 3641049i64;
                    } else {
                        _gotoNext = 3641072i64;
                    };
                } else if (__value__ == (3641049i64)) {
                    _end_16 = (_i_15 + (1 : stdgo.GoInt) : stdgo.GoInt);
                    _gotoNext = 3641072i64;
                } else if (__value__ == (3641072i64)) {
                    //"file:///home/runner/.go/go1.21.3/src/go/doc/comment/parse.go#L1016"
                    _i_15++;
                    _gotoNext = 3640996i64;
                } else if (__value__ == (3641080i64)) {
                    _i_15 = _end_16;
                    _stk_17 = (new stdgo.Slice<stdgo.GoUInt8>(0, 0, ...[]).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>);
                    _end_16 = _i_15;
                    _gotoNext = 3641465i64;
                } else if (__value__ == (3641465i64)) {
                    0i64;
                    pathBreak = false;
                    _gotoNext = 3641472i64;
                } else if (__value__ == (3641472i64)) {
                    //"file://#L0"
                    if (!pathBreak && ((_i_15 < (_s.length) : Bool))) {
                        _gotoNext = 3641494i64;
                    } else {
                        _gotoNext = 3641863i64;
                    };
                } else if (__value__ == (3641490i64)) {
                    //"file:///home/runner/.go/go1.21.3/src/go/doc/comment/parse.go#L1030"
                    _i_15++;
                    _gotoNext = 3641472i64;
                } else if (__value__ == (3641494i64)) {
                    //"file:///home/runner/.go/go1.21.3/src/go/doc/comment/parse.go#L1031"
                    if (stdgo._internal.go.doc.comment.Comment__ispunct._isPunct(_s[(_i_15 : stdgo.GoInt)])) {
                        _gotoNext = 3641515i64;
                    } else {
                        _gotoNext = 3641535i64;
                    };
                } else if (__value__ == (3641515i64)) {
                    //"file:///home/runner/.go/go1.21.3/src/go/doc/comment/parse.go#L1030"
                    _i_15++;
                    _gotoNext = 3641472i64;
                } else if (__value__ == (3641535i64)) {
                    //"file:///home/runner/.go/go1.21.3/src/go/doc/comment/parse.go#L1034"
                    if (!stdgo._internal.go.doc.comment.Comment__ispath._isPath(_s[(_i_15 : stdgo.GoInt)])) {
                        _gotoNext = 3641552i64;
                    } else {
                        _gotoNext = 3641569i64;
                    };
                } else if (__value__ == (3641552i64)) {
                    _gotoNext = 3641863i64;
                } else if (__value__ == (3641569i64)) {
                    _gotoNext = 3641569i64;
                    //"file:///home/runner/.go/go1.21.3/src/go/doc/comment/parse.go#L1037"
                    {
                        final __value__ = _s[(_i_15 : stdgo.GoInt)];
                        if (__value__ == ((40 : stdgo.GoUInt8))) {
                            _gotoNext = 3641585i64;
                        } else if (__value__ == ((123 : stdgo.GoUInt8))) {
                            _gotoNext = 3641623i64;
                        } else if (__value__ == ((91 : stdgo.GoUInt8))) {
                            _gotoNext = 3641661i64;
                        } else if (__value__ == ((41 : stdgo.GoUInt8)) || __value__ == ((125 : stdgo.GoUInt8)) || __value__ == ((93 : stdgo.GoUInt8))) {
                            _gotoNext = 3641699i64;
                        } else {
                            _gotoNext = 3641820i64;
                        };
                    };
                } else if (__value__ == (3641585i64)) {
                    _stk_17 = (_stk_17.__append__((41 : stdgo.GoUInt8)) : stdgo.Slice<stdgo.GoUInt8>);
                    _gotoNext = 3641820i64;
                } else if (__value__ == (3641623i64)) {
                    _stk_17 = (_stk_17.__append__((125 : stdgo.GoUInt8)) : stdgo.Slice<stdgo.GoUInt8>);
                    _gotoNext = 3641820i64;
                } else if (__value__ == (3641661i64)) {
                    _stk_17 = (_stk_17.__append__((93 : stdgo.GoUInt8)) : stdgo.Slice<stdgo.GoUInt8>);
                    _gotoNext = 3641820i64;
                } else if (__value__ == (3641699i64)) {
                    //"file:///home/runner/.go/go1.21.3/src/go/doc/comment/parse.go#L1045"
                    if (((_stk_17.length == (0 : stdgo.GoInt)) || (_stk_17[((_stk_17.length) - (1 : stdgo.GoInt) : stdgo.GoInt)] != _s[(_i_15 : stdgo.GoInt)]) : Bool)) {
                        _gotoNext = 3641766i64;
                    } else {
                        _gotoNext = 3641791i64;
                    };
                } else if (__value__ == (3641766i64)) {
                    pathBreak = true;
                    _gotoNext = 3641472i64;
                } else if (__value__ == (3641791i64)) {
                    _stk_17 = (_stk_17.__slice__(0, ((_stk_17.length) - (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>);
                    _gotoNext = 3641820i64;
                } else if (__value__ == (3641820i64)) {
                    //"file:///home/runner/.go/go1.21.3/src/go/doc/comment/parse.go#L1050"
                    if ((_stk_17.length) == ((0 : stdgo.GoInt))) {
                        _gotoNext = 3641837i64;
                    } else {
                        _gotoNext = 3641490i64;
                    };
                } else if (__value__ == (3641837i64)) {
                    _end_16 = (_i_15 + (1 : stdgo.GoInt) : stdgo.GoInt);
                    _gotoNext = 3641490i64;
                } else if (__value__ == (3641863i64)) {
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
