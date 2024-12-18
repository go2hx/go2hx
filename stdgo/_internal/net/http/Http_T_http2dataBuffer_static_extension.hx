package stdgo._internal.net.http;
@:keep @:allow(stdgo._internal.net.http.Http.T_http2dataBuffer_asInterface) class T_http2dataBuffer_static_extension {
    @:keep
    static public function _lastChunkOrAlloc( _b:stdgo.Ref<stdgo._internal.net.http.Http_T_http2dataBuffer.T_http2dataBuffer>, _want:stdgo.GoInt64):stdgo.Slice<stdgo.GoUInt8> {
        @:recv var _b:stdgo.Ref<stdgo._internal.net.http.Http_T_http2dataBuffer.T_http2dataBuffer> = _b;
        if ((_b._chunks.length) != ((0 : stdgo.GoInt))) {
            var _last = _b._chunks[((_b._chunks.length) - (1 : stdgo.GoInt) : stdgo.GoInt)];
            if ((_b._w < (_last.length) : Bool)) {
                return _last;
            };
        };
        var _chunk = stdgo._internal.net.http.Http__http2getDataBufferChunk._http2getDataBufferChunk(_want);
        _b._chunks = (_b._chunks.__append__(_chunk));
        _b._w = (0 : stdgo.GoInt);
        return _chunk;
    }
    @:keep
    static public function write( _b:stdgo.Ref<stdgo._internal.net.http.Http_T_http2dataBuffer.T_http2dataBuffer>, _p:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } {
        @:recv var _b:stdgo.Ref<stdgo._internal.net.http.Http_T_http2dataBuffer.T_http2dataBuffer> = _b;
        var _ntotal = (_p.length : stdgo.GoInt);
        while (((_p.length) > (0 : stdgo.GoInt) : Bool)) {
            var _want = (_p.length : stdgo.GoInt64);
            if ((_b._expected > _want : Bool)) {
                _want = _b._expected;
            };
            var _chunk = _b._lastChunkOrAlloc(_want);
            var _n = ((_chunk.__slice__(_b._w) : stdgo.Slice<stdgo.GoUInt8>).__copyTo__(_p) : stdgo.GoInt);
            _p = (_p.__slice__(_n) : stdgo.Slice<stdgo.GoUInt8>);
            _b._w = (_b._w + (_n) : stdgo.GoInt);
            _b._size = (_b._size + (_n) : stdgo.GoInt);
            _b._expected = (_b._expected - ((_n : stdgo.GoInt64)) : stdgo.GoInt64);
        };
        return { _0 : _ntotal, _1 : (null : stdgo.Error) };
    }
    @:keep
    static public function len( _b:stdgo.Ref<stdgo._internal.net.http.Http_T_http2dataBuffer.T_http2dataBuffer>):stdgo.GoInt {
        @:recv var _b:stdgo.Ref<stdgo._internal.net.http.Http_T_http2dataBuffer.T_http2dataBuffer> = _b;
        return _b._size;
    }
    @:keep
    static public function _bytesFromFirstChunk( _b:stdgo.Ref<stdgo._internal.net.http.Http_T_http2dataBuffer.T_http2dataBuffer>):stdgo.Slice<stdgo.GoUInt8> {
        @:recv var _b:stdgo.Ref<stdgo._internal.net.http.Http_T_http2dataBuffer.T_http2dataBuffer> = _b;
        if ((_b._chunks.length) == ((1 : stdgo.GoInt))) {
            return (_b._chunks[(0 : stdgo.GoInt)].__slice__(_b._r, _b._w) : stdgo.Slice<stdgo.GoUInt8>);
        };
        return (_b._chunks[(0 : stdgo.GoInt)].__slice__(_b._r) : stdgo.Slice<stdgo.GoUInt8>);
    }
    @:keep
    static public function read( _b:stdgo.Ref<stdgo._internal.net.http.Http_T_http2dataBuffer.T_http2dataBuffer>, _p:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } {
        @:recv var _b:stdgo.Ref<stdgo._internal.net.http.Http_T_http2dataBuffer.T_http2dataBuffer> = _b;
        if (_b._size == ((0 : stdgo.GoInt))) {
            return { _0 : (0 : stdgo.GoInt), _1 : stdgo._internal.net.http.Http__http2errReadEmpty._http2errReadEmpty };
        };
        var _ntotal:stdgo.GoInt = (0 : stdgo.GoInt);
        while ((((_p.length) > (0 : stdgo.GoInt) : Bool) && (_b._size > (0 : stdgo.GoInt) : Bool) : Bool)) {
            var _readFrom = _b._bytesFromFirstChunk();
            var _n = (_p.__copyTo__(_readFrom) : stdgo.GoInt);
            _p = (_p.__slice__(_n) : stdgo.Slice<stdgo.GoUInt8>);
            _ntotal = (_ntotal + (_n) : stdgo.GoInt);
            _b._r = (_b._r + (_n) : stdgo.GoInt);
            _b._size = (_b._size - (_n) : stdgo.GoInt);
            if (_b._r == ((_b._chunks[(0 : stdgo.GoInt)].length))) {
                stdgo._internal.net.http.Http__http2putDataBufferChunk._http2putDataBufferChunk(_b._chunks[(0 : stdgo.GoInt)]);
                var _end = ((_b._chunks.length) - (1 : stdgo.GoInt) : stdgo.GoInt);
                (_b._chunks.__slice__(0, _end) : stdgo.Slice<stdgo.Slice<stdgo.GoUInt8>>).__copyTo__((_b._chunks.__slice__((1 : stdgo.GoInt)) : stdgo.Slice<stdgo.Slice<stdgo.GoUInt8>>));
                _b._chunks[(_end : stdgo.GoInt)] = (null : stdgo.Slice<stdgo.GoUInt8>);
                _b._chunks = (_b._chunks.__slice__(0, _end) : stdgo.Slice<stdgo.Slice<stdgo.GoUInt8>>);
                _b._r = (0 : stdgo.GoInt);
            };
        };
        return { _0 : _ntotal, _1 : (null : stdgo.Error) };
    }
}
