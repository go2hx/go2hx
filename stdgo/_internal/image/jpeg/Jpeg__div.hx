package stdgo._internal.image.jpeg;
function _div(_a:stdgo.GoInt32, _b:stdgo.GoInt32):stdgo.GoInt32 {
        //"file:///home/runner/.go/go1.21.3/src/image/jpeg/writer.go#L25"
        if ((_a >= (0 : stdgo.GoInt32) : Bool)) {
            //"file:///home/runner/.go/go1.21.3/src/image/jpeg/writer.go#L26"
            return (((_a + ((_b >> (1i64 : stdgo.GoUInt64) : stdgo.GoInt32)) : stdgo.GoInt32)) / _b : stdgo.GoInt32);
        };
        //"file:///home/runner/.go/go1.21.3/src/image/jpeg/writer.go#L28"
        return -((((-_a + ((_b >> (1i64 : stdgo.GoUInt64) : stdgo.GoInt32)) : stdgo.GoInt32)) / _b : stdgo.GoInt32));
    }
