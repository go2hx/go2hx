package stdgo._internal.image.jpeg;
function _min(_x:stdgo.GoInt, _y:stdgo.GoInt):stdgo.GoInt {
        //"file:///home/runner/.go/go1.21.3/src/image/jpeg/writer.go#L17"
        if ((_x < _y : Bool)) {
            //"file:///home/runner/.go/go1.21.3/src/image/jpeg/writer.go#L18"
            return _x;
        };
        //"file:///home/runner/.go/go1.21.3/src/image/jpeg/writer.go#L20"
        return _y;
    }
