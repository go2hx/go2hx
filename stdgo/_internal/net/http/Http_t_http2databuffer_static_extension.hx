package stdgo._internal.net.http;
@:keep @:allow(stdgo._internal.net.http.Http.T_http2dataBuffer_asInterface) class T_http2dataBuffer_static_extension {
    @:keep
    @:tdfield
    static public function write( _b:stdgo.Ref<stdgo._internal.net.http.Http_t_http2databuffer.T_http2dataBuffer>, _p:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } {
        @:recv var _b:stdgo.Ref<stdgo._internal.net.http.Http_t_http2databuffer.T_http2dataBuffer> = _b;
        var _ntotal = (_p.length : stdgo.GoInt);
        while (((_p.length) > (0 : stdgo.GoInt) : Bool)) {
            var _want = (_p.length : stdgo.GoInt64);
            if (((@:checkr _b ?? throw "null pointer dereference")._expected > _want : Bool)) {
                _want = (@:checkr _b ?? throw "null pointer dereference")._expected;
            };
            var _chunk = @:check2r _b._lastChunkOrAlloc(_want);
            var _n = ((_chunk.__slice__((@:checkr _b ?? throw "null pointer dereference")._w) : stdgo.Slice<stdgo.GoUInt8>).__copyTo__(_p) : stdgo.GoInt);
            _p = (_p.__slice__(_n) : stdgo.Slice<stdgo.GoUInt8>);
            (@:checkr _b ?? throw "null pointer dereference")._w = ((@:checkr _b ?? throw "null pointer dereference")._w + (_n) : stdgo.GoInt);
            (@:checkr _b ?? throw "null pointer dereference")._size = ((@:checkr _b ?? throw "null pointer dereference")._size + (_n) : stdgo.GoInt);
            (@:checkr _b ?? throw "null pointer dereference")._expected = ((@:checkr _b ?? throw "null pointer dereference")._expected - ((_n : stdgo.GoInt64)) : stdgo.GoInt64);
        };
        return { _0 : _ntotal, _1 : (null : stdgo.Error) };
    }
    @:keep
    @:tdfield
    static public function len( _b:stdgo.Ref<stdgo._internal.net.http.Http_t_http2databuffer.T_http2dataBuffer>):stdgo.GoInt {
        @:recv var _b:stdgo.Ref<stdgo._internal.net.http.Http_t_http2databuffer.T_http2dataBuffer> = _b;
        return (@:checkr _b ?? throw "null pointer dereference")._size;
    }
    @:keep
    @:tdfield
    static public function read( _b:stdgo.Ref<stdgo._internal.net.http.Http_t_http2databuffer.T_http2dataBuffer>, _p:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } {
        @:recv var _b:stdgo.Ref<stdgo._internal.net.http.Http_t_http2databuffer.T_http2dataBuffer> = _b;
        if ((@:checkr _b ?? throw "null pointer dereference")._size == ((0 : stdgo.GoInt))) {
            return { _0 : (0 : stdgo.GoInt), _1 : stdgo._internal.net.http.Http__http2errreadempty._http2errReadEmpty };
        };
        var _ntotal:stdgo.GoInt = (0 : stdgo.GoInt);
        while ((((_p.length) > (0 : stdgo.GoInt) : Bool) && ((@:checkr _b ?? throw "null pointer dereference")._size > (0 : stdgo.GoInt) : Bool) : Bool)) {
            var _readFrom = @:check2r _b._bytesFromFirstChunk();
            var _n = (_p.__copyTo__(_readFrom) : stdgo.GoInt);
            _p = (_p.__slice__(_n) : stdgo.Slice<stdgo.GoUInt8>);
            _ntotal = (_ntotal + (_n) : stdgo.GoInt);
            (@:checkr _b ?? throw "null pointer dereference")._r = ((@:checkr _b ?? throw "null pointer dereference")._r + (_n) : stdgo.GoInt);
            (@:checkr _b ?? throw "null pointer dereference")._size = ((@:checkr _b ?? throw "null pointer dereference")._size - (_n) : stdgo.GoInt);
            if ((@:checkr _b ?? throw "null pointer dereference")._r == (((@:checkr _b ?? throw "null pointer dereference")._chunks[(0 : stdgo.GoInt)].length))) {
                stdgo._internal.net.http.Http__http2putdatabufferchunk._http2putDataBufferChunk((@:checkr _b ?? throw "null pointer dereference")._chunks[(0 : stdgo.GoInt)]);
                var _end = (((@:checkr _b ?? throw "null pointer dereference")._chunks.length) - (1 : stdgo.GoInt) : stdgo.GoInt);
                ((@:checkr _b ?? throw "null pointer dereference")._chunks.__slice__(0, _end) : stdgo.Slice<stdgo.Slice<stdgo.GoUInt8>>).__copyTo__(((@:checkr _b ?? throw "null pointer dereference")._chunks.__slice__((1 : stdgo.GoInt)) : stdgo.Slice<stdgo.Slice<stdgo.GoUInt8>>));
                (@:checkr _b ?? throw "null pointer dereference")._chunks[(_end : stdgo.GoInt)] = (null : stdgo.Slice<stdgo.GoUInt8>);
                (@:checkr _b ?? throw "null pointer dereference")._chunks = ((@:checkr _b ?? throw "null pointer dereference")._chunks.__slice__(0, _end) : stdgo.Slice<stdgo.Slice<stdgo.GoUInt8>>);
                (@:checkr _b ?? throw "null pointer dereference")._r = (0 : stdgo.GoInt);
            };
        };
        return { _0 : _ntotal, _1 : (null : stdgo.Error) };
    }
}
