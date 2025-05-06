package stdgo._internal.go.doc;
function _exampleOutput(_b:stdgo.Ref<stdgo._internal.go.ast.Ast_blockstmt.BlockStmt>, _comments:stdgo.Slice<stdgo.Ref<stdgo._internal.go.ast.Ast_commentgroup.CommentGroup>>):{ var _0 : stdgo.GoString; var _1 : Bool; var _2 : Bool; } {
        var _output = ("" : stdgo.GoString), _unordered = false, _ok = false;
        //"file:///home/runner/.go/go1.21.3/src/go/doc/example.go#L117"
        {
            var __tmp__ = stdgo._internal.go.doc.Doc__lastcomment._lastComment(_b, _comments), __0:stdgo.GoInt = __tmp__._0, _last:stdgo.Ref<stdgo._internal.go.ast.Ast_commentgroup.CommentGroup> = __tmp__._1;
            if (({
                final value = _last;
                (value != null && ((value : Dynamic).__nil__ == null || !(value : Dynamic).__nil__));
            })) {
                var _text = (_last.text()?.__copy__() : stdgo.GoString);
                //"file:///home/runner/.go/go1.21.3/src/go/doc/example.go#L120"
                {
                    var _loc = stdgo._internal.go.doc.Doc__outputprefix._outputPrefix.findStringSubmatchIndex(_text?.__copy__());
                    if (_loc != null) {
                        //"file:///home/runner/.go/go1.21.3/src/go/doc/example.go#L121"
                        if (_loc[(2 : stdgo.GoInt)] != ((-1 : stdgo.GoInt))) {
                            _unordered = true;
                        };
                        _text = (_text.__slice__(_loc[(1 : stdgo.GoInt)]) : stdgo.GoString)?.__copy__();
                        _text = stdgo._internal.strings.Strings_trimleft.trimLeft(_text?.__copy__(), (" " : stdgo.GoString))?.__copy__();
                        //"file:///home/runner/.go/go1.21.3/src/go/doc/example.go#L127"
                        if ((((_text.length) > (0 : stdgo.GoInt) : Bool) && (_text[(0 : stdgo.GoInt)] == (10 : stdgo.GoUInt8)) : Bool)) {
                            _text = (_text.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        };
                        //"file:///home/runner/.go/go1.21.3/src/go/doc/example.go#L130"
                        return {
                            @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.GoString; var _1 : Bool; var _2 : Bool; } = { _0 : _text?.__copy__(), _1 : _unordered, _2 : true };
                            _output = __tmp__._0;
                            _unordered = __tmp__._1;
                            _ok = __tmp__._2;
                            __tmp__;
                        };
                    };
                };
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/go/doc/example.go#L133"
        return {
            @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.GoString; var _1 : Bool; var _2 : Bool; } = { _0 : (stdgo.Go.str() : stdgo.GoString)?.__copy__(), _1 : false, _2 : false };
            _output = __tmp__._0;
            _unordered = __tmp__._1;
            _ok = __tmp__._2;
            __tmp__;
        };
    }
