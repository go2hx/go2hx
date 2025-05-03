package stdgo._internal.image.draw;
function _sqDiff(_x:stdgo.GoInt32, _y:stdgo.GoInt32):stdgo.GoUInt32 {
        var _d = ((_x - _y : stdgo.GoInt32) : stdgo.GoUInt32);
        //"file:///home/runner/.go/go1.21.3/src/image/draw/draw.go#L953"
        return (((_d * _d : stdgo.GoUInt32)) >> (2i64 : stdgo.GoUInt64) : stdgo.GoUInt32);
    }
