package stdgo._internal.go.build;
function _parseFileHeader(_content:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.Slice<stdgo.GoUInt8>; var _1 : stdgo.Slice<stdgo.GoUInt8>; var _2 : Bool; var _3 : stdgo.Error; } {
        var _trimmed = (null : stdgo.Slice<stdgo.GoUInt8>), _goBuild = (null : stdgo.Slice<stdgo.GoUInt8>), _sawBinaryOnly = false, _err = (null : stdgo.Error);
        var _i_93:stdgo.GoInt = (0 : stdgo.GoInt);
        var commentsBreak = false;
        var _line_91:stdgo.Slice<stdgo.GoUInt8> = (null : stdgo.Slice<stdgo.GoUInt8>);
        var _i_92:stdgo.GoInt = (0 : stdgo.GoInt);
        var linesBreak = false;
        var _inSlashStar_90:Bool = false;
        var _ended_89:Bool = false;
        var _p_88:stdgo.Slice<stdgo.GoUInt8> = (null : stdgo.Slice<stdgo.GoUInt8>);
        var _end_87:stdgo.GoInt = (0 : stdgo.GoInt);
        var _gotoNext = 0i64;
        _gotoNext == ((0i64 : stdgo.GoInt));
        //"file://#L0"
        while (_gotoNext != ((-1i64 : stdgo.GoInt))) {
            //"file://#L0"
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i64)) {
                    _end_87 = (0 : stdgo.GoInt);
                    _p_88 = _content;
                    _ended_89 = false;
                    _inSlashStar_90 = false;
                    _gotoNext = 4429513i64;
                } else if (__value__ == (4429513i64)) {
                    0i64;
                    linesBreak = false;
                    _gotoNext = 4429521i64;
                } else if (__value__ == (4429521i64)) {
                    //"file://#L0"
                    if (!linesBreak && (((_p_88.length) > (0 : stdgo.GoInt) : Bool))) {
                        _gotoNext = 4429536i64;
                    } else {
                        _gotoNext = 4431083i64;
                    };
                } else if (__value__ == (4429536i64)) {
                    _line_91 = _p_88;
                    //"file:///home/runner/.go/go1.21.3/src/go/build/build.go#L1616"
                    {
                        _i_92 = stdgo._internal.bytes.Bytes_indexbyte.indexByte(_line_91, (10 : stdgo.GoUInt8));
                        if ((_i_92 >= (0 : stdgo.GoInt) : Bool)) {
                            _gotoNext = 4429596i64;
                        } else {
                            _gotoNext = 4429638i64;
                        };
                    };
                } else if (__value__ == (4429596i64)) {
                    {
                        final __tmp__0 = (_line_91.__slice__(0, _i_92) : stdgo.Slice<stdgo.GoUInt8>);
                        final __tmp__1 = (_p_88.__slice__((_i_92 + (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>);
                        _line_91 = @:binopAssign __tmp__0;
                        _p_88 = @:binopAssign __tmp__1;
                    };
                    _gotoNext = 4429664i64;
                } else if (__value__ == (4429638i64)) {
                    _gotoNext = 4429638i64;
                    _p_88 = (_p_88.__slice__((_p_88.length)) : stdgo.Slice<stdgo.GoUInt8>);
                    0i64;
                    _gotoNext = 4429664i64;
                } else if (__value__ == (4429664i64)) {
                    _line_91 = stdgo._internal.bytes.Bytes_trimspace.trimSpace(_line_91);
                    //"file:///home/runner/.go/go1.21.3/src/go/build/build.go#L1622"
                    if (((_line_91.length == (0 : stdgo.GoInt)) && !_ended_89 : Bool)) {
                        _gotoNext = 4429723i64;
                    } else {
                        _gotoNext = 4430274i64;
                    };
                } else if (__value__ == (4429723i64)) {
                    _end_87 = ((_content.length) - (_p_88.length) : stdgo.GoInt);
                    _gotoNext = 4429521i64;
                } else if (__value__ == (4430274i64)) {
                    //"file:///home/runner/.go/go1.21.3/src/go/build/build.go#L1634"
                    if (!stdgo._internal.bytes.Bytes_hasprefix.hasPrefix(_line_91, stdgo._internal.go.build.Build__slashslash._slashSlash)) {
                        _gotoNext = 4430312i64;
                    } else {
                        _gotoNext = 4430357i64;
                    };
                } else if (__value__ == (4430312i64)) {
                    _ended_89 = true;
                    _gotoNext = 4430357i64;
                } else if (__value__ == (4430357i64)) {
                    //"file:///home/runner/.go/go1.21.3/src/go/build/build.go#L1638"
                    if ((!_inSlashStar_90 && stdgo._internal.go.build.Build__isgobuildcomment._isGoBuildComment(_line_91) : Bool)) {
                        _gotoNext = 4430399i64;
                    } else {
                        _gotoNext = 4430500i64;
                    };
                } else if (__value__ == (4430399i64)) {
                    //"file:///home/runner/.go/go1.21.3/src/go/build/build.go#L1639"
                    if (_goBuild != null) {
                        _gotoNext = 4430422i64;
                    } else {
                        _gotoNext = 4430479i64;
                    };
                } else if (__value__ == (4430422i64)) {
                    //"file:///home/runner/.go/go1.21.3/src/go/build/build.go#L1640"
                    return {
                        @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.Slice<stdgo.GoUInt8>; var _1 : stdgo.Slice<stdgo.GoUInt8>; var _2 : Bool; var _3 : stdgo.Error; } = { _0 : (null : stdgo.Slice<stdgo.GoUInt8>), _1 : (null : stdgo.Slice<stdgo.GoUInt8>), _2 : false, _3 : stdgo._internal.go.build.Build__errmultiplegobuild._errMultipleGoBuild };
                        _trimmed = __tmp__._0;
                        _goBuild = __tmp__._1;
                        _sawBinaryOnly = __tmp__._2;
                        _err = __tmp__._3;
                        __tmp__;
                    };
                    _gotoNext = 4430479i64;
                } else if (__value__ == (4430479i64)) {
                    _goBuild = _line_91;
                    _gotoNext = 4430500i64;
                } else if (__value__ == (4430500i64)) {
                    //"file:///home/runner/.go/go1.21.3/src/go/build/build.go#L1644"
                    if ((!_inSlashStar_90 && stdgo._internal.bytes.Bytes_equal.equal(_line_91, stdgo._internal.go.build.Build__binaryonlycomment._binaryOnlyComment) : Bool)) {
                        _gotoNext = 4430556i64;
                    } else {
                        _gotoNext = 4430588i64;
                    };
                } else if (__value__ == (4430556i64)) {
                    _sawBinaryOnly = true;
                    _gotoNext = 4430588i64;
                } else if (__value__ == (4430588i64)) {
                    _gotoNext = 4430588i64;
                    0i64;
                    commentsBreak = false;
                    _gotoNext = 4430600i64;
                } else if (__value__ == (4430600i64)) {
                    //"file://#L0"
                    if (!commentsBreak && (((_line_91.length) > (0 : stdgo.GoInt) : Bool))) {
                        _gotoNext = 4430618i64;
                    } else {
                        _gotoNext = 4429521i64;
                    };
                } else if (__value__ == (4430618i64)) {
                    //"file:///home/runner/.go/go1.21.3/src/go/build/build.go#L1650"
                    if (_inSlashStar_90) {
                        _gotoNext = 4430638i64;
                    } else {
                        _gotoNext = 4430825i64;
                    };
                } else if (__value__ == (4430638i64)) {
                    //"file:///home/runner/.go/go1.21.3/src/go/build/build.go#L1651"
                    {
                        _i_93 = stdgo._internal.bytes.Bytes_index.index(_line_91, stdgo._internal.go.build.Build__starslash._starSlash);
                        if ((_i_93 >= (0 : stdgo.GoInt) : Bool)) {
                            _gotoNext = 4430689i64;
                        } else {
                            _gotoNext = 4430802i64;
                        };
                    };
                } else if (__value__ == (4430689i64)) {
                    _inSlashStar_90 = false;
                    _line_91 = stdgo._internal.bytes.Bytes_trimspace.trimSpace((_line_91.__slice__((_i_93 + (stdgo._internal.go.build.Build__starslash._starSlash.length) : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>));
                    _gotoNext = 4430600i64;
                } else if (__value__ == (4430802i64)) {
                    _gotoNext = 4429521i64;
                } else if (__value__ == (4430825i64)) {
                    //"file:///home/runner/.go/go1.21.3/src/go/build/build.go#L1658"
                    if (stdgo._internal.bytes.Bytes_hasprefix.hasPrefix(_line_91, stdgo._internal.go.build.Build__slashslash._slashSlash)) {
                        _gotoNext = 4430862i64;
                    } else {
                        _gotoNext = 4430891i64;
                    };
                } else if (__value__ == (4430862i64)) {
                    _gotoNext = 4429521i64;
                } else if (__value__ == (4430891i64)) {
                    //"file:///home/runner/.go/go1.21.3/src/go/build/build.go#L1661"
                    if (stdgo._internal.bytes.Bytes_hasprefix.hasPrefix(_line_91, stdgo._internal.go.build.Build__slashstar._slashStar)) {
                        _gotoNext = 4430927i64;
                    } else {
                        _gotoNext = 4431062i64;
                    };
                } else if (__value__ == (4430927i64)) {
                    _inSlashStar_90 = true;
                    _line_91 = stdgo._internal.bytes.Bytes_trimspace.trimSpace((_line_91.__slice__((stdgo._internal.go.build.Build__slashstar._slashStar.length)) : stdgo.Slice<stdgo.GoUInt8>));
                    _gotoNext = 4430600i64;
                } else if (__value__ == (4431062i64)) {
                    linesBreak = true;
                    _gotoNext = 4429521i64;
                } else if (__value__ == (4431083i64)) {
                    //"file:///home/runner/.go/go1.21.3/src/go/build/build.go#L1671"
                    return {
                        @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.Slice<stdgo.GoUInt8>; var _1 : stdgo.Slice<stdgo.GoUInt8>; var _2 : Bool; var _3 : stdgo.Error; } = { _0 : (_content.__slice__(0, _end_87) : stdgo.Slice<stdgo.GoUInt8>), _1 : _goBuild, _2 : _sawBinaryOnly, _3 : (null : stdgo.Error) };
                        _trimmed = __tmp__._0;
                        _goBuild = __tmp__._1;
                        _sawBinaryOnly = __tmp__._2;
                        _err = __tmp__._3;
                        __tmp__;
                    };
                    _gotoNext = -1i64;
                };
            };
        };
        //"file://#L0"
        throw stdgo.Go.toInterface(("unreachable goto control flow" : stdgo.GoString));
    }
