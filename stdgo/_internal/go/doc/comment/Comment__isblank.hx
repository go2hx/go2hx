package stdgo._internal.go.doc.comment;
function _isBlank(_s:stdgo.GoString):Bool {
        //"file:///home/runner/.go/go1.21.3/src/go/doc/comment/parse.go#L547"
        return ((_s.length == (0 : stdgo.GoInt)) || (((_s.length == (1 : stdgo.GoInt)) && (_s[(0 : stdgo.GoInt)] == (10 : stdgo.GoUInt8)) : Bool)) : Bool);
    }
