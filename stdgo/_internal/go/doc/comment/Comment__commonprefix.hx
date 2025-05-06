package stdgo._internal.go.doc.comment;
function _commonPrefix(_a:stdgo.GoString, _b:stdgo.GoString):stdgo.GoString {
        var _i = (0 : stdgo.GoInt);
        //"file:///home/runner/.go/go1.21.3/src/go/doc/comment/parse.go#L553"
        while ((((_i < (_a.length) : Bool) && (_i < (_b.length) : Bool) : Bool) && (_a[(_i : stdgo.GoInt)] == _b[(_i : stdgo.GoInt)]) : Bool)) {
            //"file:///home/runner/.go/go1.21.3/src/go/doc/comment/parse.go#L554"
            _i++;
        };
        //"file:///home/runner/.go/go1.21.3/src/go/doc/comment/parse.go#L556"
        return (_a.__slice__((0 : stdgo.GoInt), _i) : stdgo.GoString)?.__copy__();
    }
