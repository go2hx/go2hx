package stdgo._internal.compress.zlib;
@:keep @:allow(stdgo._internal.compress.zlib.Zlib.Writer_asInterface) class Writer_static_extension {
    @:keep
    @:tdfield
    static public function close( _z:stdgo.Ref<stdgo._internal.compress.zlib.Zlib_writer.Writer>):stdgo.Error {
        @:recv var _z:stdgo.Ref<stdgo._internal.compress.zlib.Zlib_writer.Writer> = _z;
        if (!(@:checkr _z ?? throw "null pointer dereference")._wroteHeader) {
            (@:checkr _z ?? throw "null pointer dereference")._err = @:check2r _z._writeHeader();
        };
        if ((@:checkr _z ?? throw "null pointer dereference")._err != null) {
            return (@:checkr _z ?? throw "null pointer dereference")._err;
        };
        (@:checkr _z ?? throw "null pointer dereference")._err = @:check2r (@:checkr _z ?? throw "null pointer dereference")._compressor.close();
        if ((@:checkr _z ?? throw "null pointer dereference")._err != null) {
            return (@:checkr _z ?? throw "null pointer dereference")._err;
        };
        var _checksum = ((@:checkr _z ?? throw "null pointer dereference")._digest.sum32() : stdgo.GoUInt32);
        stdgo._internal.encoding.binary.Binary_bigendian.bigEndian.putUint32(((@:checkr _z ?? throw "null pointer dereference")._scratch.__slice__(0) : stdgo.Slice<stdgo.GoUInt8>), _checksum);
        {
            var __tmp__ = (@:checkr _z ?? throw "null pointer dereference")._w.write(((@:checkr _z ?? throw "null pointer dereference")._scratch.__slice__((0 : stdgo.GoInt), (4 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>));
            (@:checkr _z ?? throw "null pointer dereference")._err = @:tmpset0 __tmp__._1;
        };
        return (@:checkr _z ?? throw "null pointer dereference")._err;
    }
    @:keep
    @:tdfield
    static public function flush( _z:stdgo.Ref<stdgo._internal.compress.zlib.Zlib_writer.Writer>):stdgo.Error {
        @:recv var _z:stdgo.Ref<stdgo._internal.compress.zlib.Zlib_writer.Writer> = _z;
        if (!(@:checkr _z ?? throw "null pointer dereference")._wroteHeader) {
            (@:checkr _z ?? throw "null pointer dereference")._err = @:check2r _z._writeHeader();
        };
        if ((@:checkr _z ?? throw "null pointer dereference")._err != null) {
            return (@:checkr _z ?? throw "null pointer dereference")._err;
        };
        (@:checkr _z ?? throw "null pointer dereference")._err = @:check2r (@:checkr _z ?? throw "null pointer dereference")._compressor.flush();
        return (@:checkr _z ?? throw "null pointer dereference")._err;
    }
    @:keep
    @:tdfield
    static public function write( _z:stdgo.Ref<stdgo._internal.compress.zlib.Zlib_writer.Writer>, _p:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } {
        @:recv var _z:stdgo.Ref<stdgo._internal.compress.zlib.Zlib_writer.Writer> = _z;
        var _n = (0 : stdgo.GoInt), _err = (null : stdgo.Error);
        if (!(@:checkr _z ?? throw "null pointer dereference")._wroteHeader) {
            (@:checkr _z ?? throw "null pointer dereference")._err = @:check2r _z._writeHeader();
        };
        if ((@:checkr _z ?? throw "null pointer dereference")._err != null) {
            return {
                final __tmp__:{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } = { _0 : (0 : stdgo.GoInt), _1 : (@:checkr _z ?? throw "null pointer dereference")._err };
                _n = __tmp__._0;
                _err = __tmp__._1;
                __tmp__;
            };
        };
        if ((_p.length) == ((0 : stdgo.GoInt))) {
            return {
                final __tmp__:{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } = { _0 : (0 : stdgo.GoInt), _1 : (null : stdgo.Error) };
                _n = __tmp__._0;
                _err = __tmp__._1;
                __tmp__;
            };
        };
        {
            var __tmp__ = @:check2r (@:checkr _z ?? throw "null pointer dereference")._compressor.write(_p);
            _n = @:tmpset0 __tmp__._0;
            _err = @:tmpset0 __tmp__._1;
        };
        if (_err != null) {
            (@:checkr _z ?? throw "null pointer dereference")._err = _err;
            return { _0 : _n, _1 : _err };
        };
        (@:checkr _z ?? throw "null pointer dereference")._digest.write(_p);
        return { _0 : _n, _1 : _err };
    }
    @:keep
    @:tdfield
    static public function _writeHeader( _z:stdgo.Ref<stdgo._internal.compress.zlib.Zlib_writer.Writer>):stdgo.Error {
        @:recv var _z:stdgo.Ref<stdgo._internal.compress.zlib.Zlib_writer.Writer> = _z;
        var _err = (null : stdgo.Error);
        (@:checkr _z ?? throw "null pointer dereference")._wroteHeader = true;
        (@:checkr _z ?? throw "null pointer dereference")._scratch[(0 : stdgo.GoInt)] = (120 : stdgo.GoUInt8);
        {
            final __value__ = (@:checkr _z ?? throw "null pointer dereference")._level;
            if (__value__ == ((-2 : stdgo.GoInt)) || __value__ == ((0 : stdgo.GoInt)) || __value__ == ((1 : stdgo.GoInt))) {
                (@:checkr _z ?? throw "null pointer dereference")._scratch[(1 : stdgo.GoInt)] = (0 : stdgo.GoUInt8);
            } else if (__value__ == ((2 : stdgo.GoInt)) || __value__ == ((3 : stdgo.GoInt)) || __value__ == ((4 : stdgo.GoInt)) || __value__ == ((5 : stdgo.GoInt))) {
                (@:checkr _z ?? throw "null pointer dereference")._scratch[(1 : stdgo.GoInt)] = (64 : stdgo.GoUInt8);
            } else if (__value__ == ((6 : stdgo.GoInt)) || __value__ == ((-1 : stdgo.GoInt))) {
                (@:checkr _z ?? throw "null pointer dereference")._scratch[(1 : stdgo.GoInt)] = (128 : stdgo.GoUInt8);
            } else if (__value__ == ((7 : stdgo.GoInt)) || __value__ == ((8 : stdgo.GoInt)) || __value__ == ((9 : stdgo.GoInt))) {
                (@:checkr _z ?? throw "null pointer dereference")._scratch[(1 : stdgo.GoInt)] = (192 : stdgo.GoUInt8);
            } else {
                throw stdgo.Go.toInterface(("unreachable" : stdgo.GoString));
            };
        };
        if ((@:checkr _z ?? throw "null pointer dereference")._dict != null) {
            (@:checkr _z ?? throw "null pointer dereference")._scratch[(1 : stdgo.GoInt)] = ((@:checkr _z ?? throw "null pointer dereference")._scratch[(1 : stdgo.GoInt)] | ((32 : stdgo.GoUInt8)) : stdgo.GoUInt8);
        };
        (@:checkr _z ?? throw "null pointer dereference")._scratch[(1 : stdgo.GoInt)] = ((@:checkr _z ?? throw "null pointer dereference")._scratch[(1 : stdgo.GoInt)] + ((((31 : stdgo.GoUInt16) - (stdgo._internal.encoding.binary.Binary_bigendian.bigEndian.uint16(((@:checkr _z ?? throw "null pointer dereference")._scratch.__slice__(0, (2 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>)) % (31 : stdgo.GoUInt16) : stdgo.GoUInt16) : stdgo.GoUInt16) : stdgo.GoUInt8)) : stdgo.GoUInt8);
        {
            {
                var __tmp__ = (@:checkr _z ?? throw "null pointer dereference")._w.write(((@:checkr _z ?? throw "null pointer dereference")._scratch.__slice__((0 : stdgo.GoInt), (2 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>));
                _err = @:tmpset0 __tmp__._1;
            };
            if (_err != null) {
                return _err;
            };
        };
        if ((@:checkr _z ?? throw "null pointer dereference")._dict != null) {
            stdgo._internal.encoding.binary.Binary_bigendian.bigEndian.putUint32(((@:checkr _z ?? throw "null pointer dereference")._scratch.__slice__(0) : stdgo.Slice<stdgo.GoUInt8>), stdgo._internal.hash.adler32.Adler32_checksum.checksum((@:checkr _z ?? throw "null pointer dereference")._dict));
            {
                {
                    var __tmp__ = (@:checkr _z ?? throw "null pointer dereference")._w.write(((@:checkr _z ?? throw "null pointer dereference")._scratch.__slice__((0 : stdgo.GoInt), (4 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>));
                    _err = @:tmpset0 __tmp__._1;
                };
                if (_err != null) {
                    return _err;
                };
            };
        };
        if (((@:checkr _z ?? throw "null pointer dereference")._compressor == null || ((@:checkr _z ?? throw "null pointer dereference")._compressor : Dynamic).__nil__)) {
            {
                var __tmp__ = stdgo._internal.compress.flate.Flate_newwriterdict.newWriterDict((@:checkr _z ?? throw "null pointer dereference")._w, (@:checkr _z ?? throw "null pointer dereference")._level, (@:checkr _z ?? throw "null pointer dereference")._dict);
                (@:checkr _z ?? throw "null pointer dereference")._compressor = @:tmpset0 __tmp__._0;
                _err = @:tmpset0 __tmp__._1;
            };
            if (_err != null) {
                return _err;
            };
            (@:checkr _z ?? throw "null pointer dereference")._digest = stdgo._internal.hash.adler32.Adler32_new_.new_();
        };
        return _err = (null : stdgo.Error);
    }
    @:keep
    @:tdfield
    static public function reset( _z:stdgo.Ref<stdgo._internal.compress.zlib.Zlib_writer.Writer>, _w:stdgo._internal.io.Io_writer.Writer):Void {
        @:recv var _z:stdgo.Ref<stdgo._internal.compress.zlib.Zlib_writer.Writer> = _z;
        (@:checkr _z ?? throw "null pointer dereference")._w = _w;
        if (((@:checkr _z ?? throw "null pointer dereference")._compressor != null && (((@:checkr _z ?? throw "null pointer dereference")._compressor : Dynamic).__nil__ == null || !((@:checkr _z ?? throw "null pointer dereference")._compressor : Dynamic).__nil__))) {
            @:check2r (@:checkr _z ?? throw "null pointer dereference")._compressor.reset(_w);
        };
        if ((@:checkr _z ?? throw "null pointer dereference")._digest != null) {
            (@:checkr _z ?? throw "null pointer dereference")._digest.reset();
        };
        (@:checkr _z ?? throw "null pointer dereference")._err = (null : stdgo.Error);
        (@:checkr _z ?? throw "null pointer dereference")._scratch = (new stdgo.GoArray<stdgo.GoUInt8>(4, 4, ...[]).__setNumber32__() : stdgo.GoArray<stdgo.GoUInt8>)?.__copy__();
        (@:checkr _z ?? throw "null pointer dereference")._wroteHeader = false;
    }
}
