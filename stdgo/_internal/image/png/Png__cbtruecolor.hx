package stdgo._internal.image.png;
function _cbTrueColor(_cb:stdgo.GoInt):Bool {
        //"file:///home/runner/.go/go1.21.3/src/image/png/reader.go#L55"
        return ((_cb == (6 : stdgo.GoInt)) || (_cb == (14 : stdgo.GoInt)) : Bool);
    }
