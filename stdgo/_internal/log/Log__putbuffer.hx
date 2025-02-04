package stdgo._internal.log;
function _putBuffer(_p:stdgo.Ref<stdgo.Slice<stdgo.GoUInt8>>):Void {
        if (((_p : stdgo.Slice<stdgo.GoUInt8>).capacity > (65536 : stdgo.GoInt) : Bool)) {
            (_p : stdgo.Slice<stdgo.GoUInt8>).__setData__((null : stdgo.Slice<stdgo.GoUInt8>));
        };
        @:check2 stdgo._internal.log.Log__bufferpool._bufferPool.put(stdgo.Go.toInterface(_p));
    }
