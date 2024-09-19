package stdgo._internal.net.http;
var _http2errChanPool : stdgo._internal.sync.Sync_Pool.Pool = ({ new_ : function():stdgo.AnyInterface {
        return stdgo.Go.toInterface((new stdgo.Chan<stdgo.Error>((1 : stdgo.GoInt).toBasic(), () -> (null : stdgo.Error)) : stdgo.Chan<stdgo.Error>));
    } } : stdgo._internal.sync.Sync_Pool.Pool);
