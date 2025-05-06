package stdgo._internal.go.doc.comment;
function _splitDocName(_text:stdgo.GoString):{ var _0 : stdgo.GoString; var _1 : stdgo.GoString; var _2 : Bool; } {
        var _before = ("" : stdgo.GoString), _name = ("" : stdgo.GoString), _foundDot = false;
        var _i = (stdgo._internal.strings.Strings_lastindex.lastIndex(_text?.__copy__(), ("." : stdgo.GoString)) : stdgo.GoInt);
        _name = (_text.__slice__((_i + (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
        //"file:///home/runner/.go/go1.21.3/src/go/doc/comment/parse.go#L883"
        if (!stdgo._internal.go.doc.comment.Comment__isname._isName(_name?.__copy__())) {
            //"file:///home/runner/.go/go1.21.3/src/go/doc/comment/parse.go#L884"
            return {
                @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.GoString; var _1 : stdgo.GoString; var _2 : Bool; } = { _0 : _text?.__copy__(), _1 : (stdgo.Go.str() : stdgo.GoString)?.__copy__(), _2 : false };
                _before = __tmp__._0;
                _name = __tmp__._1;
                _foundDot = __tmp__._2;
                __tmp__;
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/go/doc/comment/parse.go#L886"
        if ((_i >= (0 : stdgo.GoInt) : Bool)) {
            _before = (_text.__slice__(0, _i) : stdgo.GoString)?.__copy__();
        };
        //"file:///home/runner/.go/go1.21.3/src/go/doc/comment/parse.go#L889"
        return {
            @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.GoString; var _1 : stdgo.GoString; var _2 : Bool; } = { _0 : _before?.__copy__(), _1 : _name?.__copy__(), _2 : true };
            _before = __tmp__._0;
            _name = __tmp__._1;
            _foundDot = __tmp__._2;
            __tmp__;
        };
    }
