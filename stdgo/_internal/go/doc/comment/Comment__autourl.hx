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
                    _gotoNext = 3661443i64;
                } else if (__value__ == (3661443i64)) {
                    //"file:///home/runner/.go/go1.21.3/src/go/doc/comment/parse.go#L981"
                    if (((_s.length) < (7 : stdgo.GoInt) : Bool)) {
                        _gotoNext = 3661453i64;
                    } else if (_s[(3 : stdgo.GoInt)] == ((58 : stdgo.GoUInt8))) {
                        _gotoNext = 3661490i64;
                    } else if (_s[(4 : stdgo.GoInt)] == ((58 : stdgo.GoUInt8))) {
                        _gotoNext = 3661517i64;
                    } else if (_s[(5 : stdgo.GoInt)] == ((58 : stdgo.GoUInt8))) {
                        _gotoNext = 3661544i64;
                    } else if (_s[(6 : stdgo.GoInt)] == ((58 : stdgo.GoUInt8))) {
                        _gotoNext = 3661571i64;
                    } else {
                        _gotoNext = 3661598i64;
                    };
                } else if (__value__ == (3661453i64)) {
                    //"file:///home/runner/.go/go1.21.3/src/go/doc/comment/parse.go#L983"
                    return {
                        @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.GoString; var _1 : Bool; } = { _0 : (stdgo.Go.str() : stdgo.GoString)?.__copy__(), _1 : false };
                        _url = __tmp__._0;
                        _ok = __tmp__._1;
                        __tmp__;
                    };
                    _gotoNext = 3661630i64;
                } else if (__value__ == (3661490i64)) {
                    _i_15 = (3 : stdgo.GoInt);
                    _gotoNext = 3661630i64;
                } else if (__value__ == (3661517i64)) {
                    _i_15 = (4 : stdgo.GoInt);
                    _gotoNext = 3661630i64;
                } else if (__value__ == (3661544i64)) {
                    _i_15 = (5 : stdgo.GoInt);
                    _gotoNext = 3661630i64;
                } else if (__value__ == (3661571i64)) {
                    _i_15 = (6 : stdgo.GoInt);
                    _gotoNext = 3661630i64;
                } else if (__value__ == (3661598i64)) {
                    //"file:///home/runner/.go/go1.21.3/src/go/doc/comment/parse.go#L993"
                    return {
                        @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.GoString; var _1 : Bool; } = { _0 : (stdgo.Go.str() : stdgo.GoString)?.__copy__(), _1 : false };
                        _url = __tmp__._0;
                        _ok = __tmp__._1;
                        __tmp__;
                    };
                    _gotoNext = 3661630i64;
                } else if (__value__ == (3661630i64)) {
                    //"file:///home/runner/.go/go1.21.3/src/go/doc/comment/parse.go#L995"
                    if ((((_i_15 + (3 : stdgo.GoInt) : stdgo.GoInt) > (_s.length) : Bool) || ((_s.__slice__(_i_15, (_i_15 + (3 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoString) != ("://" : stdgo.GoString)) : Bool)) {
                        _gotoNext = 3661667i64;
                    } else {
                        _gotoNext = 3661717i64;
                    };
                } else if (__value__ == (3661667i64)) {
                    //"file:///home/runner/.go/go1.21.3/src/go/doc/comment/parse.go#L996"
                    return {
                        @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.GoString; var _1 : Bool; } = { _0 : (stdgo.Go.str() : stdgo.GoString)?.__copy__(), _1 : false };
                        _url = __tmp__._0;
                        _ok = __tmp__._1;
                        __tmp__;
                    };
                    _gotoNext = 3661717i64;
                } else if (__value__ == (3661717i64)) {
                    //"file:///home/runner/.go/go1.21.3/src/go/doc/comment/parse.go#L1000"
                    if (!stdgo._internal.go.doc.comment.Comment__isscheme._isScheme((_s.__slice__(0, _i_15) : stdgo.GoString)?.__copy__())) {
                        _gotoNext = 3661737i64;
                    } else {
                        _gotoNext = 3661859i64;
                    };
                } else if (__value__ == (3661737i64)) {
                    //"file:///home/runner/.go/go1.21.3/src/go/doc/comment/parse.go#L1001"
                    return {
                        @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.GoString; var _1 : Bool; } = { _0 : (stdgo.Go.str() : stdgo.GoString)?.__copy__(), _1 : false };
                        _url = __tmp__._0;
                        _ok = __tmp__._1;
                        __tmp__;
                    };
                    _gotoNext = 3661859i64;
                } else if (__value__ == (3661859i64)) {
                    _i_15 = (_i_15 + ((3 : stdgo.GoInt)) : stdgo.GoInt);
                    //"file:///home/runner/.go/go1.21.3/src/go/doc/comment/parse.go#L1007"
                    if ((((_i_15 >= (_s.length) : Bool) || !stdgo._internal.go.doc.comment.Comment__ishost._isHost(_s[(_i_15 : stdgo.GoInt)]) : Bool) || stdgo._internal.go.doc.comment.Comment__ispunct._isPunct(_s[(_i_15 : stdgo.GoInt)]) : Bool)) {
                        _gotoNext = 3661916i64;
                    } else {
                        _gotoNext = 3661941i64;
                    };
                } else if (__value__ == (3661916i64)) {
                    //"file:///home/runner/.go/go1.21.3/src/go/doc/comment/parse.go#L1008"
                    return {
                        @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.GoString; var _1 : Bool; } = { _0 : (stdgo.Go.str() : stdgo.GoString)?.__copy__(), _1 : false };
                        _url = __tmp__._0;
                        _ok = __tmp__._1;
                        __tmp__;
                    };
                    _gotoNext = 3661941i64;
                } else if (__value__ == (3661941i64)) {
                    //"file:///home/runner/.go/go1.21.3/src/go/doc/comment/parse.go#L1010"
                    _i_15++;
                    _end_16 = _i_15;
                    0i64;
                    _gotoNext = 3661956i64;
                } else if (__value__ == (3661956i64)) {
                    //"file://#L0"
                    if (((_i_15 < (_s.length) : Bool) && stdgo._internal.go.doc.comment.Comment__ishost._isHost(_s[(_i_15 : stdgo.GoInt)]) : Bool)) {
                        _gotoNext = 3661987i64;
                    } else {
                        _gotoNext = 3662040i64;
                    };
                } else if (__value__ == (3661987i64)) {
                    //"file:///home/runner/.go/go1.21.3/src/go/doc/comment/parse.go#L1013"
                    if (!stdgo._internal.go.doc.comment.Comment__ispunct._isPunct(_s[(_i_15 : stdgo.GoInt)])) {
                        _gotoNext = 3662009i64;
                    } else {
                        _gotoNext = 3662032i64;
                    };
                } else if (__value__ == (3662009i64)) {
                    _end_16 = (_i_15 + (1 : stdgo.GoInt) : stdgo.GoInt);
                    _gotoNext = 3662032i64;
                } else if (__value__ == (3662032i64)) {
                    //"file:///home/runner/.go/go1.21.3/src/go/doc/comment/parse.go#L1016"
                    _i_15++;
                    _gotoNext = 3661956i64;
                } else if (__value__ == (3662040i64)) {
                    _i_15 = _end_16;
                    _stk_17 = (new stdgo.Slice<stdgo.GoUInt8>(0, 0, ...[]).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>);
                    _end_16 = _i_15;
                    _gotoNext = 3662425i64;
                } else if (__value__ == (3662425i64)) {
                    0i64;
                    pathBreak = false;
                    _gotoNext = 3662432i64;
                } else if (__value__ == (3662432i64)) {
                    //"file://#L0"
                    if (!pathBreak && ((_i_15 < (_s.length) : Bool))) {
                        _gotoNext = 3662454i64;
                    } else {
                        _gotoNext = 3662823i64;
                    };
                } else if (__value__ == (3662450i64)) {
                    //"file:///home/runner/.go/go1.21.3/src/go/doc/comment/parse.go#L1030"
                    _i_15++;
                    _gotoNext = 3662432i64;
                } else if (__value__ == (3662454i64)) {
                    //"file:///home/runner/.go/go1.21.3/src/go/doc/comment/parse.go#L1031"
                    if (stdgo._internal.go.doc.comment.Comment__ispunct._isPunct(_s[(_i_15 : stdgo.GoInt)])) {
                        _gotoNext = 3662475i64;
                    } else {
                        _gotoNext = 3662495i64;
                    };
                } else if (__value__ == (3662475i64)) {
                    //"file:///home/runner/.go/go1.21.3/src/go/doc/comment/parse.go#L1030"
                    _i_15++;
                    _gotoNext = 3662432i64;
                } else if (__value__ == (3662495i64)) {
                    //"file:///home/runner/.go/go1.21.3/src/go/doc/comment/parse.go#L1034"
                    if (!stdgo._internal.go.doc.comment.Comment__ispath._isPath(_s[(_i_15 : stdgo.GoInt)])) {
                        _gotoNext = 3662512i64;
                    } else {
                        _gotoNext = 3662529i64;
                    };
                } else if (__value__ == (3662512i64)) {
                    _gotoNext = 3662823i64;
                } else if (__value__ == (3662529i64)) {
                    _gotoNext = 3662529i64;
                    //"file:///home/runner/.go/go1.21.3/src/go/doc/comment/parse.go#L1037"
                    {
                        final __value__ = _s[(_i_15 : stdgo.GoInt)];
                        if (__value__ == ((40 : stdgo.GoUInt8))) {
                            _gotoNext = 3662545i64;
                        } else if (__value__ == ((123 : stdgo.GoUInt8))) {
                            _gotoNext = 3662583i64;
                        } else if (__value__ == ((91 : stdgo.GoUInt8))) {
                            _gotoNext = 3662621i64;
                        } else if (__value__ == ((41 : stdgo.GoUInt8)) || __value__ == ((125 : stdgo.GoUInt8)) || __value__ == ((93 : stdgo.GoUInt8))) {
                            _gotoNext = 3662659i64;
                        } else {
                            _gotoNext = 3662780i64;
                        };
                    };
                } else if (__value__ == (3662545i64)) {
                    _stk_17 = (_stk_17.__append__((41 : stdgo.GoUInt8)) : stdgo.Slice<stdgo.GoUInt8>);
                    _gotoNext = 3662780i64;
                } else if (__value__ == (3662583i64)) {
                    _stk_17 = (_stk_17.__append__((125 : stdgo.GoUInt8)) : stdgo.Slice<stdgo.GoUInt8>);
                    _gotoNext = 3662780i64;
                } else if (__value__ == (3662621i64)) {
                    _stk_17 = (_stk_17.__append__((93 : stdgo.GoUInt8)) : stdgo.Slice<stdgo.GoUInt8>);
                    _gotoNext = 3662780i64;
                } else if (__value__ == (3662659i64)) {
                    //"file:///home/runner/.go/go1.21.3/src/go/doc/comment/parse.go#L1045"
                    if (((_stk_17.length == (0 : stdgo.GoInt)) || (_stk_17[((_stk_17.length) - (1 : stdgo.GoInt) : stdgo.GoInt)] != _s[(_i_15 : stdgo.GoInt)]) : Bool)) {
                        _gotoNext = 3662726i64;
                    } else {
                        _gotoNext = 3662751i64;
                    };
                } else if (__value__ == (3662726i64)) {
                    pathBreak = true;
                    _gotoNext = 3662432i64;
                } else if (__value__ == (3662751i64)) {
                    _stk_17 = (_stk_17.__slice__(0, ((_stk_17.length) - (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>);
                    _gotoNext = 3662780i64;
                } else if (__value__ == (3662780i64)) {
                    //"file:///home/runner/.go/go1.21.3/src/go/doc/comment/parse.go#L1050"
                    if ((_stk_17.length) == ((0 : stdgo.GoInt))) {
                        _gotoNext = 3662797i64;
                    } else {
                        _gotoNext = 3662450i64;
                    };
                } else if (__value__ == (3662797i64)) {
                    _end_16 = (_i_15 + (1 : stdgo.GoInt) : stdgo.GoInt);
                    _gotoNext = 3662450i64;
                } else if (__value__ == (3662823i64)) {
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
