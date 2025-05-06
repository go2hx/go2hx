package stdgo._internal.go.doc.comment;
function _indented(_line:stdgo.GoString):Bool {
        //"file:///home/runner/.go/go1.21.3/src/go/doc/comment/parse.go#L501"
        return ((_line != (stdgo.Go.str() : stdgo.GoString)) && (((_line[(0 : stdgo.GoInt)] == (32 : stdgo.GoUInt8)) || (_line[(0 : stdgo.GoInt)] == (9 : stdgo.GoUInt8)) : Bool)) : Bool);
    }
