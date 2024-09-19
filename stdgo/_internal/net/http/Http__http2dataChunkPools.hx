package stdgo._internal.net.http;
var _http2dataChunkPools : stdgo.GoArray<stdgo._internal.sync.Sync_Pool.Pool> = (new stdgo.GoArray<stdgo._internal.sync.Sync_Pool.Pool>(5, 5, ...[({ new_ : function():stdgo.AnyInterface {
        return stdgo.Go.toInterface((new stdgo.Slice<stdgo.GoUInt8>((1024 : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>));
    } } : stdgo._internal.sync.Sync_Pool.Pool), ({ new_ : function():stdgo.AnyInterface {
        return stdgo.Go.toInterface((new stdgo.Slice<stdgo.GoUInt8>((2048 : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>));
    } } : stdgo._internal.sync.Sync_Pool.Pool), ({ new_ : function():stdgo.AnyInterface {
        return stdgo.Go.toInterface((new stdgo.Slice<stdgo.GoUInt8>((4096 : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>));
    } } : stdgo._internal.sync.Sync_Pool.Pool), ({ new_ : function():stdgo.AnyInterface {
        return stdgo.Go.toInterface((new stdgo.Slice<stdgo.GoUInt8>((8192 : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>));
    } } : stdgo._internal.sync.Sync_Pool.Pool), ({ new_ : function():stdgo.AnyInterface {
        return stdgo.Go.toInterface((new stdgo.Slice<stdgo.GoUInt8>((16384 : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>));
    } } : stdgo._internal.sync.Sync_Pool.Pool)].concat([for (i in 5 ... (5 > 5 ? 5 : 5 : stdgo.GoInt).toBasic()) ({} : stdgo._internal.sync.Sync_Pool.Pool)])) : stdgo.GoArray<stdgo._internal.sync.Sync_Pool.Pool>);
