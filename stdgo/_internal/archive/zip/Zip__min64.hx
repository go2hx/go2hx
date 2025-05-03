package stdgo._internal.archive.zip;
function _min64(_x:stdgo.GoUInt64, _y:stdgo.GoUInt64):stdgo.GoUInt64 {
        //"file:///home/runner/.go/go1.21.3/src/archive/zip/writer.go#L430"
        if ((_x < _y : Bool)) {
            //"file:///home/runner/.go/go1.21.3/src/archive/zip/writer.go#L431"
            return _x;
        };
        //"file:///home/runner/.go/go1.21.3/src/archive/zip/writer.go#L433"
        return _y;
    }
