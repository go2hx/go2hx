package stdgo._internal.go.doc.comment;
function _isName(_s:stdgo.GoString):Bool {
        var __tmp__ = stdgo._internal.go.doc.comment.Comment__ident._ident(_s?.__copy__()), _t:stdgo.GoString = __tmp__._0, _ok:Bool = __tmp__._1;
        //"file:///home/runner/.go/go1.21.3/src/go/doc/comment/parse.go#L1154"
        if ((!_ok || (_t != _s) : Bool)) {
            //"file:///home/runner/.go/go1.21.3/src/go/doc/comment/parse.go#L1155"
            return false;
        };
        var __tmp__ = stdgo._internal.unicode.utf8.Utf8_decoderuneinstring.decodeRuneInString(_s?.__copy__()), _r:stdgo.GoInt32 = __tmp__._0, __1:stdgo.GoInt = __tmp__._1;
        //"file:///home/runner/.go/go1.21.3/src/go/doc/comment/parse.go#L1158"
        return stdgo._internal.unicode.Unicode_isupper.isUpper(_r);
    }
