package stdgo._internal.net.http.internal;
@:keep @:allow(stdgo._internal.net.http.internal.Internal.T_chunkedReader_asInterface) class T_chunkedReader_static_extension {
    @:keep
    static public function read( _cr:stdgo.Ref<stdgo._internal.net.http.internal.Internal_T_chunkedReader.T_chunkedReader>, _b:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } {
        @:recv var _cr:stdgo.Ref<stdgo._internal.net.http.internal.Internal_T_chunkedReader.T_chunkedReader> = _cr;
        var _n = (0 : stdgo.GoInt), _err = (null : stdgo.Error);
        while (_cr._err == null) {
            if (_cr._checkEnd) {
                if (((_n > (0 : stdgo.GoInt) : Bool) && (_cr._r.buffered() < (2 : stdgo.GoInt) : Bool) : Bool)) {
                    break;
                };
                {
                    {
                        var __tmp__ = stdgo._internal.io.Io_readFull.readFull(stdgo.Go.asInterface(_cr._r), (_cr._buf.__slice__(0, (2 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>));
                        _cr._err = __tmp__._1;
                    };
                    if (_cr._err == null) {
                        if (((_cr._buf.__slice__(0) : stdgo.Slice<stdgo.GoUInt8>) : stdgo.GoString) != (("\r\n" : stdgo.GoString))) {
                            _cr._err = stdgo._internal.errors.Errors_new_.new_(("malformed chunked encoding" : stdgo.GoString));
                            break;
                        };
                    } else {
                        if (stdgo.Go.toInterface(_cr._err) == (stdgo.Go.toInterface(stdgo._internal.io.Io_eof.eof))) {
                            _cr._err = stdgo._internal.io.Io_errUnexpectedEOF.errUnexpectedEOF;
                        };
                        break;
                    };
                };
                _cr._checkEnd = false;
            };
            if (_cr._n == ((0i64 : stdgo.GoUInt64))) {
                if (((_n > (0 : stdgo.GoInt) : Bool) && !_cr._chunkHeaderAvailable() : Bool)) {
                    break;
                };
                _cr._beginChunk();
                continue;
            };
            if ((_b.length) == ((0 : stdgo.GoInt))) {
                break;
            };
            var _rbuf = _b;
            if (((_rbuf.length : stdgo.GoUInt64) > _cr._n : Bool)) {
                _rbuf = (_rbuf.__slice__(0, _cr._n) : stdgo.Slice<stdgo.GoUInt8>);
            };
            var _n0:stdgo.GoInt = (0 : stdgo.GoInt);
            {
                var __tmp__ = _cr._r.read(_rbuf);
                _n0 = __tmp__._0;
                _cr._err = __tmp__._1;
            };
            _n = (_n + (_n0) : stdgo.GoInt);
            _b = (_b.__slice__(_n0) : stdgo.Slice<stdgo.GoUInt8>);
            _cr._n = (_cr._n - ((_n0 : stdgo.GoUInt64)) : stdgo.GoUInt64);
            if (((_cr._n == (0i64 : stdgo.GoUInt64)) && (_cr._err == null) : Bool)) {
                _cr._checkEnd = true;
            } else if (stdgo.Go.toInterface(_cr._err) == (stdgo.Go.toInterface(stdgo._internal.io.Io_eof.eof))) {
                _cr._err = stdgo._internal.io.Io_errUnexpectedEOF.errUnexpectedEOF;
            };
        };
        return { _0 : _n, _1 : _cr._err };
    }
    @:keep
    static public function _chunkHeaderAvailable( _cr:stdgo.Ref<stdgo._internal.net.http.internal.Internal_T_chunkedReader.T_chunkedReader>):Bool {
        @:recv var _cr:stdgo.Ref<stdgo._internal.net.http.internal.Internal_T_chunkedReader.T_chunkedReader> = _cr;
        var _n = (_cr._r.buffered() : stdgo.GoInt);
        if ((_n > (0 : stdgo.GoInt) : Bool)) {
            var __tmp__ = _cr._r.peek(_n), _peek:stdgo.Slice<stdgo.GoUInt8> = __tmp__._0, __0:stdgo.Error = __tmp__._1;
            return (stdgo._internal.bytes.Bytes_indexByte.indexByte(_peek, (10 : stdgo.GoUInt8)) >= (0 : stdgo.GoInt) : Bool);
        };
        return false;
    }
    @:keep
    static public function _beginChunk( _cr:stdgo.Ref<stdgo._internal.net.http.internal.Internal_T_chunkedReader.T_chunkedReader>):Void {
        @:recv var _cr:stdgo.Ref<stdgo._internal.net.http.internal.Internal_T_chunkedReader.T_chunkedReader> = _cr;
        var _line:stdgo.Slice<stdgo.GoUInt8> = (null : stdgo.Slice<stdgo.GoUInt8>);
        {
            var __tmp__ = stdgo._internal.net.http.internal.Internal__readChunkLine._readChunkLine(_cr._r);
            _line = __tmp__._0;
            _cr._err = __tmp__._1;
        };
        if (_cr._err != null) {
            return;
        };
        {
            var __tmp__ = stdgo._internal.net.http.internal.Internal__parseHexUint._parseHexUint(_line);
            _cr._n = __tmp__._0;
            _cr._err = __tmp__._1;
        };
        if (_cr._err != null) {
            return;
        };
        if (_cr._n == ((0i64 : stdgo.GoUInt64))) {
            _cr._err = stdgo._internal.io.Io_eof.eof;
        };
    }
}
