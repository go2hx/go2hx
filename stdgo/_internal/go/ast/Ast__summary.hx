package stdgo._internal.go.ast;
function _summary(_list:stdgo.Slice<stdgo.Ref<stdgo._internal.go.ast.Ast_commentgroup.CommentGroup>>):stdgo.GoString {
        var _b_8:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var _comment_5:stdgo.Ref<stdgo._internal.go.ast.Ast_comment.Comment> = (null : stdgo.Ref<stdgo._internal.go.ast.Ast_comment.Comment>);
        var _iterator_4871123_4:stdgo.GoInt = (0 : stdgo.GoInt);
        var _buf_1:stdgo._internal.bytes.Bytes_buffer.Buffer = ({} : stdgo._internal.bytes.Bytes_buffer.Buffer);
        var _i_7:stdgo.GoInt = (0 : stdgo.GoInt);
        var _bytes_6:stdgo.Slice<stdgo.GoUInt8> = (null : stdgo.Slice<stdgo.GoUInt8>);
        var _group_3:stdgo.Ref<stdgo._internal.go.ast.Ast_commentgroup.CommentGroup> = (null : stdgo.Ref<stdgo._internal.go.ast.Ast_commentgroup.CommentGroup>);
        var _iterator_4870934_2:stdgo.GoInt = (0 : stdgo.GoInt);
        var _maxLen_0 = 40i64;
        var _gotoNext = 0i64;
        _gotoNext == ((0i64 : stdgo.GoInt));
        //"file://#L0"
        while (_gotoNext != ((-1i64 : stdgo.GoInt))) {
            //"file://#L0"
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i64)) {
                    _gotoNext = 4870911i64;
                } else if (__value__ == (4870911i64)) {
                    //"file:///home/runner/.go/go1.21.3/src/go/ast/commentmap.go#L277"
                    if ((0i64 : stdgo.GoInt) < (_list.length)) {
                        _gotoNext = 4871227i64;
                    } else {
                        _gotoNext = 4871257i64;
                    };
                } else if (__value__ == (4870922i64)) {
                    //"file:///home/runner/.go/go1.21.3/src/go/ast/commentmap.go#L277"
                    _iterator_4870934_2++;
                    _gotoNext = 4871228i64;
                } else if (__value__ == (4870945i64)) {
                    _group_3 = _list[(_iterator_4870934_2 : stdgo.GoInt)];
                    //"file:///home/runner/.go/go1.21.3/src/go/ast/commentmap.go#L281"
                    if ((0i64 : stdgo.GoInt) < ((@:checkr _group_3 ?? throw "null pointer dereference").list.length)) {
                        _gotoNext = 4871224i64;
                    } else {
                        _gotoNext = 4870922i64;
                    };
                } else if (__value__ == (4871140i64)) {
                    _comment_5 = (@:checkr _group_3 ?? throw "null pointer dereference").list[(_iterator_4871123_4 : stdgo.GoInt)];
                    //"file:///home/runner/.go/go1.21.3/src/go/ast/commentmap.go#L282"
                    if ((_buf_1.len() >= (40 : stdgo.GoInt) : Bool)) {
                        _gotoNext = 4871168i64;
                    } else {
                        _gotoNext = 4871193i64;
                    };
                } else if (__value__ == (4871168i64)) {
                    stdgo._internal.go.ast.Ast__loopbreak._loopBreak = true;
                    _gotoNext = 4871228i64;
                } else if (__value__ == (4871193i64)) {
                    //"file:///home/runner/.go/go1.21.3/src/go/ast/commentmap.go#L285"
                    _buf_1.writeString((@:checkr _comment_5 ?? throw "null pointer dereference").text?.__copy__());
                    //"file:///home/runner/.go/go1.21.3/src/go/ast/commentmap.go#L281"
                    _iterator_4871123_4++;
                    _gotoNext = 4871225i64;
                } else if (__value__ == (4871224i64)) {
                    {
                        final __tmp__0 = 0i64;
                        final __tmp__1 = (@:checkr _group_3 ?? throw "null pointer dereference").list[(0i64 : stdgo.GoInt)];
                        _iterator_4871123_4 = @:binopAssign __tmp__0;
                        _comment_5 = @:binopAssign __tmp__1;
                    };
                    _gotoNext = 4871225i64;
                } else if (__value__ == (4871225i64)) {
                    //"file://#L0"
                    if (_iterator_4871123_4 < ((@:checkr _group_3 ?? throw "null pointer dereference").list.length)) {
                        _gotoNext = 4871140i64;
                    } else {
                        _gotoNext = 4870922i64;
                    };
                } else if (__value__ == (4871227i64)) {
                    {
                        final __tmp__0 = 0i64;
                        final __tmp__1 = _list[(0i64 : stdgo.GoInt)];
                        _iterator_4870934_2 = @:binopAssign __tmp__0;
                        _group_3 = @:binopAssign __tmp__1;
                    };
                    _gotoNext = 4871228i64;
                } else if (__value__ == (4871228i64)) {
                    //"file://#L0"
                    if (_iterator_4870934_2 < (_list.length)) {
                        _gotoNext = 4870945i64;
                    } else {
                        _gotoNext = 4871257i64;
                    };
                } else if (__value__ == (4871257i64)) {
                    //"file:///home/runner/.go/go1.21.3/src/go/ast/commentmap.go#L290"
                    if ((_buf_1.len() > (40 : stdgo.GoInt) : Bool)) {
                        _gotoNext = 4871279i64;
                    } else {
                        _gotoNext = 4871377i64;
                    };
                } else if (__value__ == (4871279i64)) {
                    //"file:///home/runner/.go/go1.21.3/src/go/ast/commentmap.go#L291"
                    _buf_1.truncate((37 : stdgo.GoInt));
                    //"file:///home/runner/.go/go1.21.3/src/go/ast/commentmap.go#L292"
                    _buf_1.writeString(("..." : stdgo.GoString));
                    _gotoNext = 4871377i64;
                } else if (__value__ == (4871377i64)) {
                    _bytes_6 = _buf_1.bytes();
                    //"file:///home/runner/.go/go1.21.3/src/go/ast/commentmap.go#L297"
                    if ((0i64 : stdgo.GoInt) < (_bytes_6.length)) {
                        _gotoNext = 4871485i64;
                    } else {
                        _gotoNext = 4871490i64;
                    };
                } else if (__value__ == (4871403i64)) {
                    //"file:///home/runner/.go/go1.21.3/src/go/ast/commentmap.go#L297"
                    _i_7++;
                    _gotoNext = 4871486i64;
                } else if (__value__ == (4871423i64)) {
                    _b_8 = _bytes_6[(_i_7 : stdgo.GoInt)];
                    _gotoNext = 4871427i64;
                } else if (__value__ == (4871427i64)) {
                    //"file:///home/runner/.go/go1.21.3/src/go/ast/commentmap.go#L298"
                    {
                        final __value__ = _b_8;
                        if (__value__ == ((9 : stdgo.GoUInt8)) || __value__ == ((10 : stdgo.GoUInt8)) || __value__ == ((13 : stdgo.GoUInt8))) {
                            _gotoNext = 4871440i64;
                        } else {
                            _gotoNext = 4871403i64;
                        };
                    };
                } else if (__value__ == (4871440i64)) {
                    _bytes_6[(_i_7 : stdgo.GoInt)] = (32 : stdgo.GoUInt8);
                    _gotoNext = 4871403i64;
                } else if (__value__ == (4871485i64)) {
                    {
                        final __tmp__0 = 0i64;
                        final __tmp__1 = _bytes_6[(0i64 : stdgo.GoInt)];
                        _i_7 = @:binopAssign __tmp__0;
                        _b_8 = @:binopAssign __tmp__1;
                    };
                    _gotoNext = 4871486i64;
                } else if (__value__ == (4871486i64)) {
                    //"file://#L0"
                    if (_i_7 < (_bytes_6.length)) {
                        _gotoNext = 4871423i64;
                    } else {
                        _gotoNext = 4871490i64;
                    };
                } else if (__value__ == (4871490i64)) {
                    //"file:///home/runner/.go/go1.21.3/src/go/ast/commentmap.go#L304"
                    return (_bytes_6 : stdgo.GoString)?.__copy__();
                    _gotoNext = -1i64;
                };
            };
        };
        //"file://#L0"
        throw stdgo.Go.toInterface(("unreachable goto control flow" : stdgo.GoString));
    }
