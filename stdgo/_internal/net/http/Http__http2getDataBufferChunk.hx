package stdgo._internal.net.http;
function _http2getDataBufferChunk(_size:stdgo.GoInt64):stdgo.Slice<stdgo.GoUInt8> {
        var _i = (0 : stdgo.GoInt);
        while ((_i < ((stdgo._internal.net.http.Http__http2dataChunkSizeClasses._http2dataChunkSizeClasses.length) - (1 : stdgo.GoInt) : stdgo.GoInt) : Bool)) {
            if ((_size <= (stdgo._internal.net.http.Http__http2dataChunkSizeClasses._http2dataChunkSizeClasses[(_i : stdgo.GoInt)] : stdgo.GoInt64) : Bool)) {
                break;
            };
            _i++;
        };
        return (stdgo.Go.typeAssert((@:check2 stdgo._internal.net.http.Http__http2dataChunkPools._http2dataChunkPools[(_i : stdgo.GoInt)].get() : stdgo.Slice<stdgo.GoUInt8>)) : stdgo.Slice<stdgo.GoUInt8>);
    }
