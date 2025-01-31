package stdgo._internal.io;
import stdgo._internal.errors.Errors;
var _blackHolePool : stdgo._internal.sync.Sync_Pool.Pool = ({ new_ : function():stdgo.AnyInterface {
        var _b = (new stdgo.Slice<stdgo.GoUInt8>((8192 : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>);
        return stdgo.Go.toInterface((stdgo.Go.setRef(_b) : stdgo.Ref<stdgo.Slice<stdgo.GoUInt8>>));
    } } : stdgo._internal.sync.Sync_Pool.Pool);
