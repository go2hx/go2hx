package stdgo._internal.go.doc.comment;
function _parseSpans(_lines:stdgo.Slice<stdgo.GoString>):stdgo.Slice<stdgo._internal.go.doc.comment.Comment_t_span.T_span> {
        var _watchdog_1:stdgo.GoInt = (0 : stdgo.GoInt);
        var _unindentedListOK_7:Bool = false;
        var _forceIndent_3:stdgo.GoInt = (0 : stdgo.GoInt);
        var _spans_0:stdgo.Slice<stdgo._internal.go.doc.comment.Comment_t_span.T_span> = (null : stdgo.Slice<stdgo._internal.go.doc.comment.Comment_t_span.T_span>);
        var _end_6:stdgo.GoInt = (0 : stdgo.GoInt);
        var _start_5:stdgo.GoInt = (0 : stdgo.GoInt);
        var _kind_4:stdgo._internal.go.doc.comment.Comment_t_spankind.T_spanKind = ((0 : stdgo.GoInt) : stdgo._internal.go.doc.comment.Comment_t_spankind.T_spanKind);
        var spansBreak = false;
        var _i_2:stdgo.GoInt = (0 : stdgo.GoInt);
        var _gotoNext = 0i64;
        _gotoNext == ((0i64 : stdgo.GoInt));
        //"file://#L0"
        while (_gotoNext != ((-1i64 : stdgo.GoInt))) {
            //"file://#L0"
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i64)) {
                    _watchdog_1 = ((2 : stdgo.GoInt) * (_lines.length) : stdgo.GoInt);
                    _i_2 = (0 : stdgo.GoInt);
                    _forceIndent_3 = (0 : stdgo.GoInt);
                    _gotoNext = 3645016i64;
                } else if (__value__ == (3645016i64)) {
                    0i64;
                    spansBreak = false;
                    _gotoNext = 3645024i64;
                } else if (__value__ == (3645024i64)) {
                    //"file://#L0"
                    if (!spansBreak) {
                        _gotoNext = 3645028i64;
                    } else {
                        _gotoNext = 3648521i64;
                    };
                } else if (__value__ == (3645028i64)) {
                    0i64;
                    _gotoNext = 3645055i64;
                } else if (__value__ == (3645055i64)) {
                    //"file://#L0"
                    if (((_i_2 < (_lines.length) : Bool) && (_lines[(_i_2 : stdgo.GoInt)] == (stdgo.Go.str() : stdgo.GoString)) : Bool)) {
                        _gotoNext = 3645092i64;
                    } else {
                        _gotoNext = 3645107i64;
                    };
                } else if (__value__ == (3645092i64)) {
                    //"file:///home/runner/.go/go1.21.3/src/go/doc/comment/parse.go#L380"
                    _i_2++;
                    _gotoNext = 3645055i64;
                } else if (__value__ == (3645107i64)) {
                    //"file:///home/runner/.go/go1.21.3/src/go/doc/comment/parse.go#L382"
                    if ((_i_2 >= (_lines.length) : Bool)) {
                        _gotoNext = 3645126i64;
                    } else {
                        _gotoNext = 3645143i64;
                    };
                } else if (__value__ == (3645126i64)) {
                    _gotoNext = 3648521i64;
                } else if (__value__ == (3645143i64)) {
                    //"file:///home/runner/.go/go1.21.3/src/go/doc/comment/parse.go#L385"
                    {
                        _watchdog_1--;
                        if ((_watchdog_1 < (0 : stdgo.GoInt) : Bool)) {
                            _gotoNext = 3645171i64;
                        } else {
                            _gotoNext = 3645244i64;
                        };
                    };
                } else if (__value__ == (3645171i64)) {
                    //"file:///home/runner/.go/go1.21.3/src/go/doc/comment/parse.go#L386"
                    throw stdgo.Go.toInterface(("go/doc/comment: internal error: not making progress" : stdgo.GoString));
                    _gotoNext = 3645244i64;
                } else if (__value__ == (3645244i64)) {
                    _start_5 = _i_2;
                    _end_6 = _i_2;
                    //"file:///home/runner/.go/go1.21.3/src/go/doc/comment/parse.go#L392"
                    if (((_i_2 < _forceIndent_3 : Bool) || stdgo._internal.go.doc.comment.Comment__indented._indented(_lines[(_i_2 : stdgo.GoInt)]?.__copy__()) : Bool)) {
                        _gotoNext = 3645329i64;
                    } else {
                        _gotoNext = 3646720i64;
                    };
                } else if (__value__ == (3645329i64)) {
                    _unindentedListOK_7 = (stdgo._internal.go.doc.comment.Comment__islist._isList(_lines[(_i_2 : stdgo.GoInt)]?.__copy__()) && (_i_2 < _forceIndent_3 : Bool) : Bool);
                    //"file:///home/runner/.go/go1.21.3/src/go/doc/comment/parse.go#L400"
                    _i_2++;
                    0i64;
                    _gotoNext = 3645767i64;
                } else if (__value__ == (3645767i64)) {
                    //"file://#L0"
                    if (((_i_2 < (_lines.length) : Bool) && ((((_lines[(_i_2 : stdgo.GoInt)] == ((stdgo.Go.str() : stdgo.GoString)) || (_i_2 < _forceIndent_3 : Bool) : Bool) || stdgo._internal.go.doc.comment.Comment__indented._indented(_lines[(_i_2 : stdgo.GoInt)]?.__copy__()) : Bool) || ((_unindentedListOK_7 && stdgo._internal.go.doc.comment.Comment__islist._isList(_lines[(_i_2 : stdgo.GoInt)]?.__copy__()) : Bool)) : Bool)) : Bool)) {
                        _gotoNext = 3645889i64;
                    } else {
                        _gotoNext = 3646001i64;
                    };
                } else if (__value__ == (3645889i64)) {
                    //"file:///home/runner/.go/go1.21.3/src/go/doc/comment/parse.go#L402"
                    if (_lines[(_i_2 : stdgo.GoInt)] == ((stdgo.Go.str() : stdgo.GoString))) {
                        _gotoNext = 3645913i64;
                    } else {
                        _gotoNext = 3645955i64;
                    };
                } else if (__value__ == (3645913i64)) {
                    _unindentedListOK_7 = false;
                    _gotoNext = 3645955i64;
                } else if (__value__ == (3645955i64)) {
                    //"file:///home/runner/.go/go1.21.3/src/go/doc/comment/parse.go#L405"
                    _i_2++;
                    _gotoNext = 3645767i64;
                } else if (__value__ == (3646001i64)) {
                    _end_6 = _i_2;
                    0i64;
                    _gotoNext = 3646012i64;
                } else if (__value__ == (3646012i64)) {
                    //"file://#L0"
                    if (((_end_6 > _start_5 : Bool) && (_lines[(_end_6 - (1 : stdgo.GoInt) : stdgo.GoInt)] == (stdgo.Go.str() : stdgo.GoString)) : Bool)) {
                        _gotoNext = 3646050i64;
                    } else {
                        _gotoNext = 3646549i64;
                    };
                } else if (__value__ == (3646050i64)) {
                    //"file:///home/runner/.go/go1.21.3/src/go/doc/comment/parse.go#L411"
                    _end_6--;
                    _gotoNext = 3646012i64;
                } else if (__value__ == (3646549i64)) {
                    //"file:///home/runner/.go/go1.21.3/src/go/doc/comment/parse.go#L427"
                    if (((_end_6 < (_lines.length) : Bool) && stdgo._internal.strings.Strings_hasprefix.hasPrefix(_lines[(_end_6 : stdgo.GoInt)]?.__copy__(), ("}" : stdgo.GoString)) : Bool)) {
                        _gotoNext = 3646607i64;
                    } else {
                        _gotoNext = 3646628i64;
                    };
                } else if (__value__ == (3646607i64)) {
                    //"file:///home/runner/.go/go1.21.3/src/go/doc/comment/parse.go#L428"
                    _end_6++;
                    _gotoNext = 3646628i64;
                } else if (__value__ == (3646628i64)) {
                    //"file:///home/runner/.go/go1.21.3/src/go/doc/comment/parse.go#L431"
                    if (stdgo._internal.go.doc.comment.Comment__islist._isList(_lines[(_start_5 : stdgo.GoInt)]?.__copy__())) {
                        _gotoNext = 3646652i64;
                    } else {
                        _gotoNext = 3646684i64;
                    };
                } else if (__value__ == (3646652i64)) {
                    _kind_4 = (3 : stdgo._internal.go.doc.comment.Comment_t_spankind.T_spanKind);
                    _gotoNext = 3648460i64;
                } else if (__value__ == (3646684i64)) {
                    _gotoNext = 3646684i64;
                    _kind_4 = (1 : stdgo._internal.go.doc.comment.Comment_t_spankind.T_spanKind);
                    0i64;
                    _gotoNext = 3648460i64;
                } else if (__value__ == (3646720i64)) {
                    _gotoNext = 3646720i64;
                    //"file:///home/runner/.go/go1.21.3/src/go/doc/comment/parse.go#L438"
                    _i_2++;
                    0i64;
                    _gotoNext = 3646787i64;
                } else if (__value__ == (3646787i64)) {
                    //"file://#L0"
                    if ((((_i_2 < (_lines.length) : Bool) && _lines[(_i_2 : stdgo.GoInt)] != ((stdgo.Go.str() : stdgo.GoString)) : Bool) && !stdgo._internal.go.doc.comment.Comment__indented._indented(_lines[(_i_2 : stdgo.GoInt)]?.__copy__()) : Bool)) {
                        _gotoNext = 3646847i64;
                    } else {
                        _gotoNext = 3646865i64;
                    };
                } else if (__value__ == (3646847i64)) {
                    //"file:///home/runner/.go/go1.21.3/src/go/doc/comment/parse.go#L440"
                    _i_2++;
                    _gotoNext = 3646787i64;
                } else if (__value__ == (3646865i64)) {
                    _end_6 = _i_2;
                    //"file:///home/runner/.go/go1.21.3/src/go/doc/comment/parse.go#L453"
                    if ((((_i_2 < (_lines.length) : Bool) && _lines[(_i_2 : stdgo.GoInt)] != ((stdgo.Go.str() : stdgo.GoString)) : Bool) && !stdgo._internal.go.doc.comment.Comment__islist._isList(_lines[(_i_2 : stdgo.GoInt)]?.__copy__()) : Bool)) {
                        _gotoNext = 3647410i64;
                    } else {
                        _gotoNext = 3648246i64;
                    };
                } else if (__value__ == (3647410i64)) {
                    _gotoNext = 3647416i64;
                } else if (__value__ == (3647416i64)) {
                    //"file:///home/runner/.go/go1.21.3/src/go/doc/comment/parse.go#L454"
                    if (stdgo._internal.go.doc.comment.Comment__islist._isList(_lines[(_i_2 - (1 : stdgo.GoInt) : stdgo.GoInt)]?.__copy__())) {
                        _gotoNext = 3647429i64;
                    } else if ((stdgo._internal.strings.Strings_hassuffix.hasSuffix(_lines[(_i_2 - (1 : stdgo.GoInt) : stdgo.GoInt)]?.__copy__(), ("{" : stdgo.GoString)) || stdgo._internal.strings.Strings_hassuffix.hasSuffix(_lines[(_i_2 - (1 : stdgo.GoInt) : stdgo.GoInt)]?.__copy__(), ("\\" : stdgo.GoString)) : Bool)) {
                        _gotoNext = 3647755i64;
                    } else {
                        _gotoNext = 3648112i64;
                    };
                } else if (__value__ == (3647429i64)) {
                    _forceIndent_3 = _end_6;
                    //"file:///home/runner/.go/go1.21.3/src/go/doc/comment/parse.go#L461"
                    _end_6--;
                    0i64;
                    _gotoNext = 3647689i64;
                } else if (__value__ == (3647689i64)) {
                    //"file://#L0"
                    if (((_end_6 > _start_5 : Bool) && stdgo._internal.go.doc.comment.Comment__islist._isList(_lines[(_end_6 - (1 : stdgo.GoInt) : stdgo.GoInt)]?.__copy__()) : Bool)) {
                        _gotoNext = 3647729i64;
                    } else {
                        _gotoNext = 3648112i64;
                    };
                } else if (__value__ == (3647729i64)) {
                    //"file:///home/runner/.go/go1.21.3/src/go/doc/comment/parse.go#L463"
                    _end_6--;
                    _gotoNext = 3647689i64;
                } else if (__value__ == (3647755i64)) {
                    _forceIndent_3 = _end_6;
                    //"file:///home/runner/.go/go1.21.3/src/go/doc/comment/parse.go#L472"
                    _end_6--;
                    _gotoNext = 3648112i64;
                } else if (__value__ == (3648112i64)) {
                    //"file:///home/runner/.go/go1.21.3/src/go/doc/comment/parse.go#L475"
                    if (((_start_5 == _end_6) && (_forceIndent_3 > _start_5 : Bool) : Bool)) {
                        _gotoNext = 3648151i64;
                    } else {
                        _gotoNext = 3648246i64;
                    };
                } else if (__value__ == (3648151i64)) {
                    _i_2 = _start_5;
                    _gotoNext = 3645024i64;
                } else if (__value__ == (3648246i64)) {
                    //"file:///home/runner/.go/go1.21.3/src/go/doc/comment/parse.go#L482"
                    if ((((_end_6 - _start_5 : stdgo.GoInt) == (1 : stdgo.GoInt)) && stdgo._internal.go.doc.comment.Comment__isheading._isHeading(_lines[(_start_5 : stdgo.GoInt)]?.__copy__()) : Bool)) {
                        _gotoNext = 3648291i64;
                    } else if ((((_end_6 - _start_5 : stdgo.GoInt) == (1 : stdgo.GoInt)) && stdgo._internal.go.doc.comment.Comment__isoldheading._isOldHeading(_lines[(_start_5 : stdgo.GoInt)]?.__copy__(), _lines, _start_5) : Bool)) {
                        _gotoNext = 3648388i64;
                    } else {
                        _gotoNext = 3648426i64;
                    };
                } else if (__value__ == (3648291i64)) {
                    _kind_4 = (2 : stdgo._internal.go.doc.comment.Comment_t_spankind.T_spanKind);
                    _gotoNext = 3648460i64;
                } else if (__value__ == (3648388i64)) {
                    _kind_4 = (4 : stdgo._internal.go.doc.comment.Comment_t_spankind.T_spanKind);
                    _gotoNext = 3648460i64;
                } else if (__value__ == (3648426i64)) {
                    _gotoNext = 3648426i64;
                    _kind_4 = (5 : stdgo._internal.go.doc.comment.Comment_t_spankind.T_spanKind);
                    0i64;
                    _gotoNext = 3648460i64;
                } else if (__value__ == (3648460i64)) {
                    _spans_0 = (_spans_0.__append__((new stdgo._internal.go.doc.comment.Comment_t_span.T_span(_start_5, _end_6, _kind_4) : stdgo._internal.go.doc.comment.Comment_t_span.T_span)) : stdgo.Slice<stdgo._internal.go.doc.comment.Comment_t_span.T_span>);
                    _i_2 = _end_6;
                    _gotoNext = 3645024i64;
                } else if (__value__ == (3648521i64)) {
                    //"file:///home/runner/.go/go1.21.3/src/go/doc/comment/parse.go#L495"
                    return _spans_0;
                    _gotoNext = -1i64;
                };
            };
        };
        //"file://#L0"
        throw stdgo.Go.toInterface(("unreachable goto control flow" : stdgo.GoString));
    }
