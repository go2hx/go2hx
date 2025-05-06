package stdgo._internal.go.doc.comment;
function _parseSpans(_lines:stdgo.Slice<stdgo.GoString>):stdgo.Slice<stdgo._internal.go.doc.comment.Comment_t_span.T_span> {
        var _end_6:stdgo.GoInt = (0 : stdgo.GoInt);
        var _start_5:stdgo.GoInt = (0 : stdgo.GoInt);
        var spansBreak = false;
        var _forceIndent_3:stdgo.GoInt = (0 : stdgo.GoInt);
        var _spans_0:stdgo.Slice<stdgo._internal.go.doc.comment.Comment_t_span.T_span> = (null : stdgo.Slice<stdgo._internal.go.doc.comment.Comment_t_span.T_span>);
        var _unindentedListOK_7:Bool = false;
        var _kind_4:stdgo._internal.go.doc.comment.Comment_t_spankind.T_spanKind = ((0 : stdgo.GoInt) : stdgo._internal.go.doc.comment.Comment_t_spankind.T_spanKind);
        var _i_2:stdgo.GoInt = (0 : stdgo.GoInt);
        var _watchdog_1:stdgo.GoInt = (0 : stdgo.GoInt);
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
                    _gotoNext = 3639523i64;
                } else if (__value__ == (3639523i64)) {
                    0i64;
                    spansBreak = false;
                    _gotoNext = 3639531i64;
                } else if (__value__ == (3639531i64)) {
                    //"file://#L0"
                    if (!spansBreak) {
                        _gotoNext = 3639535i64;
                    } else {
                        _gotoNext = 3643028i64;
                    };
                } else if (__value__ == (3639535i64)) {
                    0i64;
                    _gotoNext = 3639562i64;
                } else if (__value__ == (3639562i64)) {
                    //"file://#L0"
                    if (((_i_2 < (_lines.length) : Bool) && (_lines[(_i_2 : stdgo.GoInt)] == (stdgo.Go.str() : stdgo.GoString)) : Bool)) {
                        _gotoNext = 3639599i64;
                    } else {
                        _gotoNext = 3639614i64;
                    };
                } else if (__value__ == (3639599i64)) {
                    //"file:///home/runner/.go/go1.21.3/src/go/doc/comment/parse.go#L380"
                    _i_2++;
                    _gotoNext = 3639562i64;
                } else if (__value__ == (3639614i64)) {
                    //"file:///home/runner/.go/go1.21.3/src/go/doc/comment/parse.go#L382"
                    if ((_i_2 >= (_lines.length) : Bool)) {
                        _gotoNext = 3639633i64;
                    } else {
                        _gotoNext = 3639650i64;
                    };
                } else if (__value__ == (3639633i64)) {
                    _gotoNext = 3643028i64;
                } else if (__value__ == (3639650i64)) {
                    //"file:///home/runner/.go/go1.21.3/src/go/doc/comment/parse.go#L385"
                    {
                        _watchdog_1--;
                        if ((_watchdog_1 < (0 : stdgo.GoInt) : Bool)) {
                            _gotoNext = 3639678i64;
                        } else {
                            _gotoNext = 3639751i64;
                        };
                    };
                } else if (__value__ == (3639678i64)) {
                    //"file:///home/runner/.go/go1.21.3/src/go/doc/comment/parse.go#L386"
                    throw stdgo.Go.toInterface(("go/doc/comment: internal error: not making progress" : stdgo.GoString));
                    _gotoNext = 3639751i64;
                } else if (__value__ == (3639751i64)) {
                    _start_5 = _i_2;
                    _end_6 = _i_2;
                    //"file:///home/runner/.go/go1.21.3/src/go/doc/comment/parse.go#L392"
                    if (((_i_2 < _forceIndent_3 : Bool) || stdgo._internal.go.doc.comment.Comment__indented._indented(_lines[(_i_2 : stdgo.GoInt)]?.__copy__()) : Bool)) {
                        _gotoNext = 3639836i64;
                    } else {
                        _gotoNext = 3641227i64;
                    };
                } else if (__value__ == (3639836i64)) {
                    _unindentedListOK_7 = (stdgo._internal.go.doc.comment.Comment__islist._isList(_lines[(_i_2 : stdgo.GoInt)]?.__copy__()) && (_i_2 < _forceIndent_3 : Bool) : Bool);
                    //"file:///home/runner/.go/go1.21.3/src/go/doc/comment/parse.go#L400"
                    _i_2++;
                    0i64;
                    _gotoNext = 3640274i64;
                } else if (__value__ == (3640274i64)) {
                    //"file://#L0"
                    if (((_i_2 < (_lines.length) : Bool) && ((((_lines[(_i_2 : stdgo.GoInt)] == ((stdgo.Go.str() : stdgo.GoString)) || (_i_2 < _forceIndent_3 : Bool) : Bool) || stdgo._internal.go.doc.comment.Comment__indented._indented(_lines[(_i_2 : stdgo.GoInt)]?.__copy__()) : Bool) || ((_unindentedListOK_7 && stdgo._internal.go.doc.comment.Comment__islist._isList(_lines[(_i_2 : stdgo.GoInt)]?.__copy__()) : Bool)) : Bool)) : Bool)) {
                        _gotoNext = 3640396i64;
                    } else {
                        _gotoNext = 3640508i64;
                    };
                } else if (__value__ == (3640396i64)) {
                    //"file:///home/runner/.go/go1.21.3/src/go/doc/comment/parse.go#L402"
                    if (_lines[(_i_2 : stdgo.GoInt)] == ((stdgo.Go.str() : stdgo.GoString))) {
                        _gotoNext = 3640420i64;
                    } else {
                        _gotoNext = 3640462i64;
                    };
                } else if (__value__ == (3640420i64)) {
                    _unindentedListOK_7 = false;
                    _gotoNext = 3640462i64;
                } else if (__value__ == (3640462i64)) {
                    //"file:///home/runner/.go/go1.21.3/src/go/doc/comment/parse.go#L405"
                    _i_2++;
                    _gotoNext = 3640274i64;
                } else if (__value__ == (3640508i64)) {
                    _end_6 = _i_2;
                    0i64;
                    _gotoNext = 3640519i64;
                } else if (__value__ == (3640519i64)) {
                    //"file://#L0"
                    if (((_end_6 > _start_5 : Bool) && (_lines[(_end_6 - (1 : stdgo.GoInt) : stdgo.GoInt)] == (stdgo.Go.str() : stdgo.GoString)) : Bool)) {
                        _gotoNext = 3640557i64;
                    } else {
                        _gotoNext = 3641056i64;
                    };
                } else if (__value__ == (3640557i64)) {
                    //"file:///home/runner/.go/go1.21.3/src/go/doc/comment/parse.go#L411"
                    _end_6--;
                    _gotoNext = 3640519i64;
                } else if (__value__ == (3641056i64)) {
                    //"file:///home/runner/.go/go1.21.3/src/go/doc/comment/parse.go#L427"
                    if (((_end_6 < (_lines.length) : Bool) && stdgo._internal.strings.Strings_hasprefix.hasPrefix(_lines[(_end_6 : stdgo.GoInt)]?.__copy__(), ("}" : stdgo.GoString)) : Bool)) {
                        _gotoNext = 3641114i64;
                    } else {
                        _gotoNext = 3641135i64;
                    };
                } else if (__value__ == (3641114i64)) {
                    //"file:///home/runner/.go/go1.21.3/src/go/doc/comment/parse.go#L428"
                    _end_6++;
                    _gotoNext = 3641135i64;
                } else if (__value__ == (3641135i64)) {
                    //"file:///home/runner/.go/go1.21.3/src/go/doc/comment/parse.go#L431"
                    if (stdgo._internal.go.doc.comment.Comment__islist._isList(_lines[(_start_5 : stdgo.GoInt)]?.__copy__())) {
                        _gotoNext = 3641159i64;
                    } else {
                        _gotoNext = 3641191i64;
                    };
                } else if (__value__ == (3641159i64)) {
                    _kind_4 = (3 : stdgo._internal.go.doc.comment.Comment_t_spankind.T_spanKind);
                    _gotoNext = 3642967i64;
                } else if (__value__ == (3641191i64)) {
                    _gotoNext = 3641191i64;
                    _kind_4 = (1 : stdgo._internal.go.doc.comment.Comment_t_spankind.T_spanKind);
                    0i64;
                    _gotoNext = 3642967i64;
                } else if (__value__ == (3641227i64)) {
                    _gotoNext = 3641227i64;
                    //"file:///home/runner/.go/go1.21.3/src/go/doc/comment/parse.go#L438"
                    _i_2++;
                    0i64;
                    _gotoNext = 3641294i64;
                } else if (__value__ == (3641294i64)) {
                    //"file://#L0"
                    if ((((_i_2 < (_lines.length) : Bool) && _lines[(_i_2 : stdgo.GoInt)] != ((stdgo.Go.str() : stdgo.GoString)) : Bool) && !stdgo._internal.go.doc.comment.Comment__indented._indented(_lines[(_i_2 : stdgo.GoInt)]?.__copy__()) : Bool)) {
                        _gotoNext = 3641354i64;
                    } else {
                        _gotoNext = 3641372i64;
                    };
                } else if (__value__ == (3641354i64)) {
                    //"file:///home/runner/.go/go1.21.3/src/go/doc/comment/parse.go#L440"
                    _i_2++;
                    _gotoNext = 3641294i64;
                } else if (__value__ == (3641372i64)) {
                    _end_6 = _i_2;
                    //"file:///home/runner/.go/go1.21.3/src/go/doc/comment/parse.go#L453"
                    if ((((_i_2 < (_lines.length) : Bool) && _lines[(_i_2 : stdgo.GoInt)] != ((stdgo.Go.str() : stdgo.GoString)) : Bool) && !stdgo._internal.go.doc.comment.Comment__islist._isList(_lines[(_i_2 : stdgo.GoInt)]?.__copy__()) : Bool)) {
                        _gotoNext = 3641917i64;
                    } else {
                        _gotoNext = 3642753i64;
                    };
                } else if (__value__ == (3641917i64)) {
                    _gotoNext = 3641923i64;
                } else if (__value__ == (3641923i64)) {
                    //"file:///home/runner/.go/go1.21.3/src/go/doc/comment/parse.go#L454"
                    if (stdgo._internal.go.doc.comment.Comment__islist._isList(_lines[(_i_2 - (1 : stdgo.GoInt) : stdgo.GoInt)]?.__copy__())) {
                        _gotoNext = 3641936i64;
                    } else if ((stdgo._internal.strings.Strings_hassuffix.hasSuffix(_lines[(_i_2 - (1 : stdgo.GoInt) : stdgo.GoInt)]?.__copy__(), ("{" : stdgo.GoString)) || stdgo._internal.strings.Strings_hassuffix.hasSuffix(_lines[(_i_2 - (1 : stdgo.GoInt) : stdgo.GoInt)]?.__copy__(), ("\\" : stdgo.GoString)) : Bool)) {
                        _gotoNext = 3642262i64;
                    } else {
                        _gotoNext = 3642619i64;
                    };
                } else if (__value__ == (3641936i64)) {
                    _forceIndent_3 = _end_6;
                    //"file:///home/runner/.go/go1.21.3/src/go/doc/comment/parse.go#L461"
                    _end_6--;
                    0i64;
                    _gotoNext = 3642196i64;
                } else if (__value__ == (3642196i64)) {
                    //"file://#L0"
                    if (((_end_6 > _start_5 : Bool) && stdgo._internal.go.doc.comment.Comment__islist._isList(_lines[(_end_6 - (1 : stdgo.GoInt) : stdgo.GoInt)]?.__copy__()) : Bool)) {
                        _gotoNext = 3642236i64;
                    } else {
                        _gotoNext = 3642619i64;
                    };
                } else if (__value__ == (3642236i64)) {
                    //"file:///home/runner/.go/go1.21.3/src/go/doc/comment/parse.go#L463"
                    _end_6--;
                    _gotoNext = 3642196i64;
                } else if (__value__ == (3642262i64)) {
                    _forceIndent_3 = _end_6;
                    //"file:///home/runner/.go/go1.21.3/src/go/doc/comment/parse.go#L472"
                    _end_6--;
                    _gotoNext = 3642619i64;
                } else if (__value__ == (3642619i64)) {
                    //"file:///home/runner/.go/go1.21.3/src/go/doc/comment/parse.go#L475"
                    if (((_start_5 == _end_6) && (_forceIndent_3 > _start_5 : Bool) : Bool)) {
                        _gotoNext = 3642658i64;
                    } else {
                        _gotoNext = 3642753i64;
                    };
                } else if (__value__ == (3642658i64)) {
                    _i_2 = _start_5;
                    _gotoNext = 3639531i64;
                } else if (__value__ == (3642753i64)) {
                    //"file:///home/runner/.go/go1.21.3/src/go/doc/comment/parse.go#L482"
                    if ((((_end_6 - _start_5 : stdgo.GoInt) == (1 : stdgo.GoInt)) && stdgo._internal.go.doc.comment.Comment__isheading._isHeading(_lines[(_start_5 : stdgo.GoInt)]?.__copy__()) : Bool)) {
                        _gotoNext = 3642798i64;
                    } else if ((((_end_6 - _start_5 : stdgo.GoInt) == (1 : stdgo.GoInt)) && stdgo._internal.go.doc.comment.Comment__isoldheading._isOldHeading(_lines[(_start_5 : stdgo.GoInt)]?.__copy__(), _lines, _start_5) : Bool)) {
                        _gotoNext = 3642895i64;
                    } else {
                        _gotoNext = 3642933i64;
                    };
                } else if (__value__ == (3642798i64)) {
                    _kind_4 = (2 : stdgo._internal.go.doc.comment.Comment_t_spankind.T_spanKind);
                    _gotoNext = 3642967i64;
                } else if (__value__ == (3642895i64)) {
                    _kind_4 = (4 : stdgo._internal.go.doc.comment.Comment_t_spankind.T_spanKind);
                    _gotoNext = 3642967i64;
                } else if (__value__ == (3642933i64)) {
                    _gotoNext = 3642933i64;
                    _kind_4 = (5 : stdgo._internal.go.doc.comment.Comment_t_spankind.T_spanKind);
                    0i64;
                    _gotoNext = 3642967i64;
                } else if (__value__ == (3642967i64)) {
                    _spans_0 = (_spans_0.__append__((new stdgo._internal.go.doc.comment.Comment_t_span.T_span(_start_5, _end_6, _kind_4) : stdgo._internal.go.doc.comment.Comment_t_span.T_span)) : stdgo.Slice<stdgo._internal.go.doc.comment.Comment_t_span.T_span>);
                    _i_2 = _end_6;
                    _gotoNext = 3639531i64;
                } else if (__value__ == (3643028i64)) {
                    //"file:///home/runner/.go/go1.21.3/src/go/doc/comment/parse.go#L495"
                    return _spans_0;
                    _gotoNext = -1i64;
                };
            };
        };
        //"file://#L0"
        throw stdgo.Go.toInterface(("unreachable goto control flow" : stdgo.GoString));
    }
