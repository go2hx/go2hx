package stdgo._internal.log;
function _putBuffer(_p:stdgo.Ref<stdgo.Slice<stdgo.GoUInt8>>):Void {
        //"file:///home/runner/.go/go1.21.3/src/log/log.go#L181"
        if (((_p : stdgo.Slice<stdgo.GoUInt8>).capacity > (65536 : stdgo.GoInt) : Bool)) {
            (_p : stdgo.Slice<stdgo.GoUInt8>).__setData__((null : stdgo.Slice<stdgo.GoUInt8>));
        };
        //"file:///home/runner/.go/go1.21.3/src/log/log.go#L184"
        stdgo._internal.log.Log__bufferpool._bufferPool.put(stdgo.Go.toInterface(_p));
    }
