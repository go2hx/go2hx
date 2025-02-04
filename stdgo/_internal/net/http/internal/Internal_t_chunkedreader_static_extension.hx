package stdgo._internal.net.http.internal;
@:keep @:allow(stdgo._internal.net.http.internal.Internal.T_chunkedReader_asInterface) class T_chunkedReader_static_extension {
    @:keep
    @:tdfield
    static public function read( _cr:stdgo.Ref<stdgo._internal.net.http.internal.Internal_t_chunkedreader.T_chunkedReader>, _b:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } {
        @:recv var _cr:stdgo.Ref<stdgo._internal.net.http.internal.Internal_t_chunkedreader.T_chunkedReader> = _cr;
        var _n = (0 : stdgo.GoInt), _err = (null : stdgo.Error);
        while ((@:checkr _cr ?? throw "null pointer dereference")._err == null) {
            if ((@:checkr _cr ?? throw "null pointer dereference")._checkEnd) {
                if (((_n > (0 : stdgo.GoInt) : Bool) && (@:check2r (@:checkr _cr ?? throw "null pointer dereference")._r.buffered() < (2 : stdgo.GoInt) : Bool) : Bool)) {
                    break;
                };
                {
                    {
                        var __tmp__ = stdgo._internal.io.Io_readfull.readFull(stdgo.Go.asInterface((@:checkr _cr ?? throw "null pointer dereference")._r), ((@:checkr _cr ?? throw "null pointer dereference")._buf.__slice__(0, (2 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>));
                        (@:checkr _cr ?? throw "null pointer dereference")._err = @:tmpset0 __tmp__._1;
                    };
                    if ((@:checkr _cr ?? throw "null pointer dereference")._err == null) {
                        if ((((@:checkr _cr ?? throw "null pointer dereference")._buf.__slice__(0) : stdgo.Slice<stdgo.GoUInt8>) : stdgo.GoString) != (("\r\n" : stdgo.GoString))) {
                            (@:checkr _cr ?? throw "null pointer dereference")._err = stdgo._internal.errors.Errors_new_.new_(("malformed chunked encoding" : stdgo.GoString));
                            break;
                        };
                    } else {
                        if (stdgo.Go.toInterface((@:checkr _cr ?? throw "null pointer dereference")._err) == (stdgo.Go.toInterface(stdgo._internal.io.Io_eof.eOF))) {
                            (@:checkr _cr ?? throw "null pointer dereference")._err = stdgo._internal.io.Io_errunexpectedeof.errUnexpectedEOF;
                        };
                        break;
                    };
                };
                (@:checkr _cr ?? throw "null pointer dereference")._checkEnd = false;
            };
            if ((@:checkr _cr ?? throw "null pointer dereference")._n == ((0i64 : stdgo.GoUInt64))) {
                if (((_n > (0 : stdgo.GoInt) : Bool) && !@:check2r _cr._chunkHeaderAvailable() : Bool)) {
                    break;
                };
                @:check2r _cr._beginChunk();
                continue;
            };
            if ((_b.length) == ((0 : stdgo.GoInt))) {
                break;
            };
            var _rbuf = _b;
            if (((_rbuf.length : stdgo.GoUInt64) > (@:checkr _cr ?? throw "null pointer dereference")._n : Bool)) {
                _rbuf = (_rbuf.__slice__(0, (@:checkr _cr ?? throw "null pointer dereference")._n) : stdgo.Slice<stdgo.GoUInt8>);
            };
            var _n0:stdgo.GoInt = (0 : stdgo.GoInt);
            {
                var __tmp__ = @:check2r (@:checkr _cr ?? throw "null pointer dereference")._r.read(_rbuf);
                _n0 = @:tmpset0 __tmp__._0;
                (@:checkr _cr ?? throw "null pointer dereference")._err = @:tmpset0 __tmp__._1;
            };
            _n = (_n + (_n0) : stdgo.GoInt);
            _b = (_b.__slice__(_n0) : stdgo.Slice<stdgo.GoUInt8>);
            (@:checkr _cr ?? throw "null pointer dereference")._n = ((@:checkr _cr ?? throw "null pointer dereference")._n - ((_n0 : stdgo.GoUInt64)) : stdgo.GoUInt64);
            if ((((@:checkr _cr ?? throw "null pointer dereference")._n == (0i64 : stdgo.GoUInt64)) && ((@:checkr _cr ?? throw "null pointer dereference")._err == null) : Bool)) {
                (@:checkr _cr ?? throw "null pointer dereference")._checkEnd = true;
            } else if (stdgo.Go.toInterface((@:checkr _cr ?? throw "null pointer dereference")._err) == (stdgo.Go.toInterface(stdgo._internal.io.Io_eof.eOF))) {
                (@:checkr _cr ?? throw "null pointer dereference")._err = stdgo._internal.io.Io_errunexpectedeof.errUnexpectedEOF;
            };
        };
        return {
            final __tmp__:{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } = { _0 : _n, _1 : (@:checkr _cr ?? throw "null pointer dereference")._err };
            _n = __tmp__._0;
            _err = __tmp__._1;
            __tmp__;
        };
    }
    @:keep
    @:tdfield
    static public function _chunkHeaderAvailable( _cr:stdgo.Ref<stdgo._internal.net.http.internal.Internal_t_chunkedreader.T_chunkedReader>):Bool {
        @:recv var _cr:stdgo.Ref<stdgo._internal.net.http.internal.Internal_t_chunkedreader.T_chunkedReader> = _cr;
        var _n = (@:check2r (@:checkr _cr ?? throw "null pointer dereference")._r.buffered() : stdgo.GoInt);
        if ((_n > (0 : stdgo.GoInt) : Bool)) {
            var __tmp__ = @:check2r (@:checkr _cr ?? throw "null pointer dereference")._r.peek(_n), _peek:stdgo.Slice<stdgo.GoUInt8> = __tmp__._0, __0:stdgo.Error = __tmp__._1;
            return (stdgo._internal.bytes.Bytes_indexbyte.indexByte(_peek, (10 : stdgo.GoUInt8)) >= (0 : stdgo.GoInt) : Bool);
        };
        return false;
    }
    @:keep
    @:tdfield
    static public function _beginChunk( _cr:stdgo.Ref<stdgo._internal.net.http.internal.Internal_t_chunkedreader.T_chunkedReader>):Void {
        @:recv var _cr:stdgo.Ref<stdgo._internal.net.http.internal.Internal_t_chunkedreader.T_chunkedReader> = _cr;
        var _line:stdgo.Slice<stdgo.GoUInt8> = (null : stdgo.Slice<stdgo.GoUInt8>);
        {
            var __tmp__ = stdgo._internal.net.http.internal.Internal__readchunkline._readChunkLine((@:checkr _cr ?? throw "null pointer dereference")._r);
            _line = @:tmpset0 __tmp__._0;
            (@:checkr _cr ?? throw "null pointer dereference")._err = @:tmpset0 __tmp__._1;
        };
        if ((@:checkr _cr ?? throw "null pointer dereference")._err != null) {
            return;
        };
        {
            var __tmp__ = stdgo._internal.net.http.internal.Internal__parsehexuint._parseHexUint(_line);
            (@:checkr _cr ?? throw "null pointer dereference")._n = @:tmpset0 __tmp__._0;
            (@:checkr _cr ?? throw "null pointer dereference")._err = @:tmpset0 __tmp__._1;
        };
        if ((@:checkr _cr ?? throw "null pointer dereference")._err != null) {
            return;
        };
        if ((@:checkr _cr ?? throw "null pointer dereference")._n == ((0i64 : stdgo.GoUInt64))) {
            (@:checkr _cr ?? throw "null pointer dereference")._err = stdgo._internal.io.Io_eof.eOF;
        };
    }
}
