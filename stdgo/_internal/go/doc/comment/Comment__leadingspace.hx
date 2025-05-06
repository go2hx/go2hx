package stdgo._internal.go.doc.comment;
function _leadingSpace(_s:stdgo.GoString):stdgo.GoString {
        var _i = (0 : stdgo.GoInt);
        //"file:///home/runner/.go/go1.21.3/src/go/doc/comment/parse.go#L562"
        while (((_i < (_s.length) : Bool) && (((_s[(_i : stdgo.GoInt)] == (32 : stdgo.GoUInt8)) || (_s[(_i : stdgo.GoInt)] == (9 : stdgo.GoUInt8)) : Bool)) : Bool)) {
            //"file:///home/runner/.go/go1.21.3/src/go/doc/comment/parse.go#L563"
            _i++;
        };
        //"file:///home/runner/.go/go1.21.3/src/go/doc/comment/parse.go#L565"
        return (_s.__slice__(0, _i) : stdgo.GoString)?.__copy__();
    }
