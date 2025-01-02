package stdgo._internal.net.http;
function _http2putDataBufferChunk(_p:stdgo.Slice<stdgo.GoUInt8>):Void {
        for (_i => _n in stdgo._internal.net.http.Http__http2dataChunkSizeClasses._http2dataChunkSizeClasses) {
            if ((_p.length) == (_n)) {
                @:check2 stdgo._internal.net.http.Http__http2dataChunkPools._http2dataChunkPools[(_i : stdgo.GoInt)].put(stdgo.Go.toInterface(_p));
                return;
            };
        };
        throw stdgo.Go.toInterface(stdgo._internal.fmt.Fmt_sprintf.sprintf(("unexpected buffer len=%v" : stdgo.GoString), stdgo.Go.toInterface((_p.length))));
    }
