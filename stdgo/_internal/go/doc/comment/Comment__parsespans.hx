package stdgo._internal.go.doc.comment;
function _parseSpans(_lines:stdgo.Slice<stdgo.GoString>):stdgo.Slice<stdgo._internal.go.doc.comment.Comment_t_span.T_span> {
        var _spans_0:stdgo.Slice<stdgo._internal.go.doc.comment.Comment_t_span.T_span> = (null : stdgo.Slice<stdgo._internal.go.doc.comment.Comment_t_span.T_span>);
        var _unindentedListOK_7:Bool = false;
        var spansBreak = false;
        var _i_2:stdgo.GoInt = (0 : stdgo.GoInt);
        var _watchdog_1:stdgo.GoInt = (0 : stdgo.GoInt);
        var _forceIndent_3:stdgo.GoInt = (0 : stdgo.GoInt);
        var _end_6:stdgo.GoInt = (0 : stdgo.GoInt);
        var _start_5:stdgo.GoInt = (0 : stdgo.GoInt);
        var _kind_4:stdgo._internal.go.doc.comment.Comment_t_spankind.T_spanKind = ((0 : stdgo.GoInt) : stdgo._internal.go.doc.comment.Comment_t_spankind.T_spanKind);
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
                    _gotoNext = 3641467i64;
                } else if (__value__ == (3641467i64)) {
                    0i64;
                    spansBreak = false;
                    _gotoNext = 3641475i64;
                } else if (__value__ == (3641475i64)) {
                    //"file://#L0"
                    if (!spansBreak) {
                        _gotoNext = 3641479i64;
                    } else {
                        _gotoNext = 3644972i64;
                    };
                } else if (__value__ == (3641479i64)) {
                    0i64;
                    _gotoNext = 3641506i64;
                } else if (__value__ == (3641506i64)) {
                    //"file://#L0"
                    if (((_i_2 < (_lines.length) : Bool) && (_lines[(_i_2 : stdgo.GoInt)] == (stdgo.Go.str() : stdgo.GoString)) : Bool)) {
                        _gotoNext = 3641543i64;
                    } else {
                        _gotoNext = 3641558i64;
                    };
                } else if (__value__ == (3641543i64)) {
                    //"file:///home/runner/.go/go1.21.3/src/go/doc/comment/parse.go#L380"
                    _i_2++;
                    _gotoNext = 3641506i64;
                } else if (__value__ == (3641558i64)) {
                    //"file:///home/runner/.go/go1.21.3/src/go/doc/comment/parse.go#L382"
                    if ((_i_2 >= (_lines.length) : Bool)) {
                        _gotoNext = 3641577i64;
                    } else {
                        _gotoNext = 3641594i64;
                    };
                } else if (__value__ == (3641577i64)) {
                    _gotoNext = 3644972i64;
                } else if (__value__ == (3641594i64)) {
                    //"file:///home/runner/.go/go1.21.3/src/go/doc/comment/parse.go#L385"
                    {
                        _watchdog_1--;
                        if ((_watchdog_1 < (0 : stdgo.GoInt) : Bool)) {
                            _gotoNext = 3641622i64;
                        } else {
                            _gotoNext = 3641695i64;
                        };
                    };
                } else if (__value__ == (3641622i64)) {
                    //"file:///home/runner/.go/go1.21.3/src/go/doc/comment/parse.go#L386"
                    throw stdgo.Go.toInterface(("go/doc/comment: internal error: not making progress" : stdgo.GoString));
                    _gotoNext = 3641695i64;
                } else if (__value__ == (3641695i64)) {
                    _start_5 = _i_2;
                    _end_6 = _i_2;
                    //"file:///home/runner/.go/go1.21.3/src/go/doc/comment/parse.go#L392"
                    if (((_i_2 < _forceIndent_3 : Bool) || stdgo._internal.go.doc.comment.Comment__indented._indented(_lines[(_i_2 : stdgo.GoInt)]?.__copy__()) : Bool)) {
                        _gotoNext = 3641780i64;
                    } else {
                        _gotoNext = 3643171i64;
                    };
                } else if (__value__ == (3641780i64)) {
                    _unindentedListOK_7 = (stdgo._internal.go.doc.comment.Comment__islist._isList(_lines[(_i_2 : stdgo.GoInt)]?.__copy__()) && (_i_2 < _forceIndent_3 : Bool) : Bool);
                    //"file:///home/runner/.go/go1.21.3/src/go/doc/comment/parse.go#L400"
                    _i_2++;
                    0i64;
                    _gotoNext = 3642218i64;
                } else if (__value__ == (3642218i64)) {
                    //"file://#L0"
                    if (((_i_2 < (_lines.length) : Bool) && ((((_lines[(_i_2 : stdgo.GoInt)] == ((stdgo.Go.str() : stdgo.GoString)) || (_i_2 < _forceIndent_3 : Bool) : Bool) || stdgo._internal.go.doc.comment.Comment__indented._indented(_lines[(_i_2 : stdgo.GoInt)]?.__copy__()) : Bool) || ((_unindentedListOK_7 && stdgo._internal.go.doc.comment.Comment__islist._isList(_lines[(_i_2 : stdgo.GoInt)]?.__copy__()) : Bool)) : Bool)) : Bool)) {
                        _gotoNext = 3642340i64;
                    } else {
                        _gotoNext = 3642452i64;
                    };
                } else if (__value__ == (3642340i64)) {
                    //"file:///home/runner/.go/go1.21.3/src/go/doc/comment/parse.go#L402"
                    if (_lines[(_i_2 : stdgo.GoInt)] == ((stdgo.Go.str() : stdgo.GoString))) {
                        _gotoNext = 3642364i64;
                    } else {
                        _gotoNext = 3642406i64;
                    };
                } else if (__value__ == (3642364i64)) {
                    _unindentedListOK_7 = false;
                    _gotoNext = 3642406i64;
                } else if (__value__ == (3642406i64)) {
                    //"file:///home/runner/.go/go1.21.3/src/go/doc/comment/parse.go#L405"
                    _i_2++;
                    _gotoNext = 3642218i64;
                } else if (__value__ == (3642452i64)) {
                    _end_6 = _i_2;
                    0i64;
                    _gotoNext = 3642463i64;
                } else if (__value__ == (3642463i64)) {
                    //"file://#L0"
                    if (((_end_6 > _start_5 : Bool) && (_lines[(_end_6 - (1 : stdgo.GoInt) : stdgo.GoInt)] == (stdgo.Go.str() : stdgo.GoString)) : Bool)) {
                        _gotoNext = 3642501i64;
                    } else {
                        _gotoNext = 3643000i64;
                    };
                } else if (__value__ == (3642501i64)) {
                    //"file:///home/runner/.go/go1.21.3/src/go/doc/comment/parse.go#L411"
                    _end_6--;
                    _gotoNext = 3642463i64;
                } else if (__value__ == (3643000i64)) {
                    //"file:///home/runner/.go/go1.21.3/src/go/doc/comment/parse.go#L427"
                    if (((_end_6 < (_lines.length) : Bool) && stdgo._internal.strings.Strings_hasprefix.hasPrefix(_lines[(_end_6 : stdgo.GoInt)]?.__copy__(), ("}" : stdgo.GoString)) : Bool)) {
                        _gotoNext = 3643058i64;
                    } else {
                        _gotoNext = 3643079i64;
                    };
                } else if (__value__ == (3643058i64)) {
                    //"file:///home/runner/.go/go1.21.3/src/go/doc/comment/parse.go#L428"
                    _end_6++;
                    _gotoNext = 3643079i64;
                } else if (__value__ == (3643079i64)) {
                    //"file:///home/runner/.go/go1.21.3/src/go/doc/comment/parse.go#L431"
                    if (stdgo._internal.go.doc.comment.Comment__islist._isList(_lines[(_start_5 : stdgo.GoInt)]?.__copy__())) {
                        _gotoNext = 3643103i64;
                    } else {
                        _gotoNext = 3643135i64;
                    };
                } else if (__value__ == (3643103i64)) {
                    _kind_4 = (3 : stdgo._internal.go.doc.comment.Comment_t_spankind.T_spanKind);
                    _gotoNext = 3644911i64;
                } else if (__value__ == (3643135i64)) {
                    _gotoNext = 3643135i64;
                    _kind_4 = (1 : stdgo._internal.go.doc.comment.Comment_t_spankind.T_spanKind);
                    0i64;
                    _gotoNext = 3644911i64;
                } else if (__value__ == (3643171i64)) {
                    _gotoNext = 3643171i64;
                    //"file:///home/runner/.go/go1.21.3/src/go/doc/comment/parse.go#L438"
                    _i_2++;
                    0i64;
                    _gotoNext = 3643238i64;
                } else if (__value__ == (3643238i64)) {
                    //"file://#L0"
                    if ((((_i_2 < (_lines.length) : Bool) && _lines[(_i_2 : stdgo.GoInt)] != ((stdgo.Go.str() : stdgo.GoString)) : Bool) && !stdgo._internal.go.doc.comment.Comment__indented._indented(_lines[(_i_2 : stdgo.GoInt)]?.__copy__()) : Bool)) {
                        _gotoNext = 3643298i64;
                    } else {
                        _gotoNext = 3643316i64;
                    };
                } else if (__value__ == (3643298i64)) {
                    //"file:///home/runner/.go/go1.21.3/src/go/doc/comment/parse.go#L440"
                    _i_2++;
                    _gotoNext = 3643238i64;
                } else if (__value__ == (3643316i64)) {
                    _end_6 = _i_2;
                    //"file:///home/runner/.go/go1.21.3/src/go/doc/comment/parse.go#L453"
                    if ((((_i_2 < (_lines.length) : Bool) && _lines[(_i_2 : stdgo.GoInt)] != ((stdgo.Go.str() : stdgo.GoString)) : Bool) && !stdgo._internal.go.doc.comment.Comment__islist._isList(_lines[(_i_2 : stdgo.GoInt)]?.__copy__()) : Bool)) {
                        _gotoNext = 3643861i64;
                    } else {
                        _gotoNext = 3644697i64;
                    };
                } else if (__value__ == (3643861i64)) {
                    _gotoNext = 3643867i64;
                } else if (__value__ == (3643867i64)) {
                    //"file:///home/runner/.go/go1.21.3/src/go/doc/comment/parse.go#L454"
                    if (stdgo._internal.go.doc.comment.Comment__islist._isList(_lines[(_i_2 - (1 : stdgo.GoInt) : stdgo.GoInt)]?.__copy__())) {
                        _gotoNext = 3643880i64;
                    } else if ((stdgo._internal.strings.Strings_hassuffix.hasSuffix(_lines[(_i_2 - (1 : stdgo.GoInt) : stdgo.GoInt)]?.__copy__(), ("{" : stdgo.GoString)) || stdgo._internal.strings.Strings_hassuffix.hasSuffix(_lines[(_i_2 - (1 : stdgo.GoInt) : stdgo.GoInt)]?.__copy__(), ("\\" : stdgo.GoString)) : Bool)) {
                        _gotoNext = 3644206i64;
                    } else {
                        _gotoNext = 3644563i64;
                    };
                } else if (__value__ == (3643880i64)) {
                    _forceIndent_3 = _end_6;
                    //"file:///home/runner/.go/go1.21.3/src/go/doc/comment/parse.go#L461"
                    _end_6--;
                    0i64;
                    _gotoNext = 3644140i64;
                } else if (__value__ == (3644140i64)) {
                    //"file://#L0"
                    if (((_end_6 > _start_5 : Bool) && stdgo._internal.go.doc.comment.Comment__islist._isList(_lines[(_end_6 - (1 : stdgo.GoInt) : stdgo.GoInt)]?.__copy__()) : Bool)) {
                        _gotoNext = 3644180i64;
                    } else {
                        _gotoNext = 3644563i64;
                    };
                } else if (__value__ == (3644180i64)) {
                    //"file:///home/runner/.go/go1.21.3/src/go/doc/comment/parse.go#L463"
                    _end_6--;
                    _gotoNext = 3644140i64;
                } else if (__value__ == (3644206i64)) {
                    _forceIndent_3 = _end_6;
                    //"file:///home/runner/.go/go1.21.3/src/go/doc/comment/parse.go#L472"
                    _end_6--;
                    _gotoNext = 3644563i64;
                } else if (__value__ == (3644563i64)) {
                    //"file:///home/runner/.go/go1.21.3/src/go/doc/comment/parse.go#L475"
                    if (((_start_5 == _end_6) && (_forceIndent_3 > _start_5 : Bool) : Bool)) {
                        _gotoNext = 3644602i64;
                    } else {
                        _gotoNext = 3644697i64;
                    };
                } else if (__value__ == (3644602i64)) {
                    _i_2 = _start_5;
                    _gotoNext = 3641475i64;
                } else if (__value__ == (3644697i64)) {
                    //"file:///home/runner/.go/go1.21.3/src/go/doc/comment/parse.go#L482"
                    if ((((_end_6 - _start_5 : stdgo.GoInt) == (1 : stdgo.GoInt)) && stdgo._internal.go.doc.comment.Comment__isheading._isHeading(_lines[(_start_5 : stdgo.GoInt)]?.__copy__()) : Bool)) {
                        _gotoNext = 3644742i64;
                    } else if ((((_end_6 - _start_5 : stdgo.GoInt) == (1 : stdgo.GoInt)) && stdgo._internal.go.doc.comment.Comment__isoldheading._isOldHeading(_lines[(_start_5 : stdgo.GoInt)]?.__copy__(), _lines, _start_5) : Bool)) {
                        _gotoNext = 3644839i64;
                    } else {
                        _gotoNext = 3644877i64;
                    };
                } else if (__value__ == (3644742i64)) {
                    _kind_4 = (2 : stdgo._internal.go.doc.comment.Comment_t_spankind.T_spanKind);
                    _gotoNext = 3644911i64;
                } else if (__value__ == (3644839i64)) {
                    _kind_4 = (4 : stdgo._internal.go.doc.comment.Comment_t_spankind.T_spanKind);
                    _gotoNext = 3644911i64;
                } else if (__value__ == (3644877i64)) {
                    _gotoNext = 3644877i64;
                    _kind_4 = (5 : stdgo._internal.go.doc.comment.Comment_t_spankind.T_spanKind);
                    0i64;
                    _gotoNext = 3644911i64;
                } else if (__value__ == (3644911i64)) {
                    _spans_0 = (_spans_0.__append__((new stdgo._internal.go.doc.comment.Comment_t_span.T_span(_start_5, _end_6, _kind_4) : stdgo._internal.go.doc.comment.Comment_t_span.T_span)) : stdgo.Slice<stdgo._internal.go.doc.comment.Comment_t_span.T_span>);
                    _i_2 = _end_6;
                    _gotoNext = 3641475i64;
                } else if (__value__ == (3644972i64)) {
                    //"file:///home/runner/.go/go1.21.3/src/go/doc/comment/parse.go#L495"
                    return _spans_0;
                    _gotoNext = -1i64;
                };
            };
        };
        //"file://#L0"
        throw stdgo.Go.toInterface(("unreachable goto control flow" : stdgo.GoString));
    }
