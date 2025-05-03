package stdgo._internal.compress.zlib;
@:keep @:allow(stdgo._internal.compress.zlib.Zlib.Writer_asInterface) class Writer_static_extension {
    @:keep
    @:tdfield
    static public function close( _z:stdgo.Ref<stdgo._internal.compress.zlib.Zlib_writer.Writer>):stdgo.Error {
        @:recv var _z:stdgo.Ref<stdgo._internal.compress.zlib.Zlib_writer.Writer> = _z;
        //"file:///home/runner/.go/go1.21.3/src/compress/zlib/writer.go#L178"
        if (!(@:checkr _z ?? throw "null pointer dereference")._wroteHeader) {
            (@:checkr _z ?? throw "null pointer dereference")._err = _z._writeHeader();
        };
        //"file:///home/runner/.go/go1.21.3/src/compress/zlib/writer.go#L181"
        if ((@:checkr _z ?? throw "null pointer dereference")._err != null) {
            //"file:///home/runner/.go/go1.21.3/src/compress/zlib/writer.go#L182"
            return (@:checkr _z ?? throw "null pointer dereference")._err;
        };
        (@:checkr _z ?? throw "null pointer dereference")._err = (@:checkr _z ?? throw "null pointer dereference")._compressor.close();
        //"file:///home/runner/.go/go1.21.3/src/compress/zlib/writer.go#L185"
        if ((@:checkr _z ?? throw "null pointer dereference")._err != null) {
            //"file:///home/runner/.go/go1.21.3/src/compress/zlib/writer.go#L186"
            return (@:checkr _z ?? throw "null pointer dereference")._err;
        };
        var _checksum = ((@:checkr _z ?? throw "null pointer dereference")._digest.sum32() : stdgo.GoUInt32);
        //"file:///home/runner/.go/go1.21.3/src/compress/zlib/writer.go#L190"
        stdgo._internal.encoding.binary.Binary_bigendian.bigEndian.putUint32(((@:checkr _z ?? throw "null pointer dereference")._scratch.__slice__(0) : stdgo.Slice<stdgo.GoUInt8>), _checksum);
        {
            var __tmp__ = (@:checkr _z ?? throw "null pointer dereference")._w.write(((@:checkr _z ?? throw "null pointer dereference")._scratch.__slice__((0 : stdgo.GoInt), (4 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>));
            (@:checkr _z ?? throw "null pointer dereference")._err = @:tmpset0 __tmp__._1;
        };
        //"file:///home/runner/.go/go1.21.3/src/compress/zlib/writer.go#L192"
        return (@:checkr _z ?? throw "null pointer dereference")._err;
    }
    @:keep
    @:tdfield
    static public function flush( _z:stdgo.Ref<stdgo._internal.compress.zlib.Zlib_writer.Writer>):stdgo.Error {
        @:recv var _z:stdgo.Ref<stdgo._internal.compress.zlib.Zlib_writer.Writer> = _z;
        //"file:///home/runner/.go/go1.21.3/src/compress/zlib/writer.go#L165"
        if (!(@:checkr _z ?? throw "null pointer dereference")._wroteHeader) {
            (@:checkr _z ?? throw "null pointer dereference")._err = _z._writeHeader();
        };
        //"file:///home/runner/.go/go1.21.3/src/compress/zlib/writer.go#L168"
        if ((@:checkr _z ?? throw "null pointer dereference")._err != null) {
            //"file:///home/runner/.go/go1.21.3/src/compress/zlib/writer.go#L169"
            return (@:checkr _z ?? throw "null pointer dereference")._err;
        };
        (@:checkr _z ?? throw "null pointer dereference")._err = (@:checkr _z ?? throw "null pointer dereference")._compressor.flush();
        //"file:///home/runner/.go/go1.21.3/src/compress/zlib/writer.go#L172"
        return (@:checkr _z ?? throw "null pointer dereference")._err;
    }
    @:keep
    @:tdfield
    static public function write( _z:stdgo.Ref<stdgo._internal.compress.zlib.Zlib_writer.Writer>, _p:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } {
        @:recv var _z:stdgo.Ref<stdgo._internal.compress.zlib.Zlib_writer.Writer> = _z;
        var _n = (0 : stdgo.GoInt), _err = (null : stdgo.Error);
        //"file:///home/runner/.go/go1.21.3/src/compress/zlib/writer.go#L145"
        if (!(@:checkr _z ?? throw "null pointer dereference")._wroteHeader) {
            (@:checkr _z ?? throw "null pointer dereference")._err = _z._writeHeader();
        };
        //"file:///home/runner/.go/go1.21.3/src/compress/zlib/writer.go#L148"
        if ((@:checkr _z ?? throw "null pointer dereference")._err != null) {
            //"file:///home/runner/.go/go1.21.3/src/compress/zlib/writer.go#L149"
            return {
                @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } = { _0 : (0 : stdgo.GoInt), _1 : (@:checkr _z ?? throw "null pointer dereference")._err };
                _n = __tmp__._0;
                _err = __tmp__._1;
                __tmp__;
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/compress/zlib/writer.go#L151"
        if ((_p.length) == ((0 : stdgo.GoInt))) {
            //"file:///home/runner/.go/go1.21.3/src/compress/zlib/writer.go#L152"
            return {
                @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } = { _0 : (0 : stdgo.GoInt), _1 : (null : stdgo.Error) };
                _n = __tmp__._0;
                _err = __tmp__._1;
                __tmp__;
            };
        };
        {
            var __tmp__ = (@:checkr _z ?? throw "null pointer dereference")._compressor.write(_p);
            _n = @:tmpset0 __tmp__._0;
            _err = @:tmpset0 __tmp__._1;
        };
        //"file:///home/runner/.go/go1.21.3/src/compress/zlib/writer.go#L155"
        if (_err != null) {
            (@:checkr _z ?? throw "null pointer dereference")._err = _err;
            //"file:///home/runner/.go/go1.21.3/src/compress/zlib/writer.go#L157"
            return { _0 : _n, _1 : _err };
        };
        //"file:///home/runner/.go/go1.21.3/src/compress/zlib/writer.go#L159"
        (@:checkr _z ?? throw "null pointer dereference")._digest.write(_p);
        //"file:///home/runner/.go/go1.21.3/src/compress/zlib/writer.go#L160"
        return { _0 : _n, _1 : _err };
    }
    @:keep
    @:tdfield
    static public function _writeHeader( _z:stdgo.Ref<stdgo._internal.compress.zlib.Zlib_writer.Writer>):stdgo.Error {
        @:recv var _z:stdgo.Ref<stdgo._internal.compress.zlib.Zlib_writer.Writer> = _z;
        var _err = (null : stdgo.Error);
        (@:checkr _z ?? throw "null pointer dereference")._wroteHeader = true;
        (@:checkr _z ?? throw "null pointer dereference")._scratch[(0 : stdgo.GoInt)] = (120 : stdgo.GoUInt8);
        //"file:///home/runner/.go/go1.21.3/src/compress/zlib/writer.go#L103"
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
                //"file:///home/runner/.go/go1.21.3/src/compress/zlib/writer.go#L113"
                throw stdgo.Go.toInterface(("unreachable" : stdgo.GoString));
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/compress/zlib/writer.go#L115"
        if ((@:checkr _z ?? throw "null pointer dereference")._dict != null) {
            (@:checkr _z ?? throw "null pointer dereference")._scratch[(1 : stdgo.GoInt)] = ((@:checkr _z ?? throw "null pointer dereference")._scratch[(1 : stdgo.GoInt)] | ((32 : stdgo.GoUInt8)) : stdgo.GoUInt8);
        };
        (@:checkr _z ?? throw "null pointer dereference")._scratch[(1 : stdgo.GoInt)] = ((@:checkr _z ?? throw "null pointer dereference")._scratch[(1 : stdgo.GoInt)] + ((((31 : stdgo.GoUInt16) - (stdgo._internal.encoding.binary.Binary_bigendian.bigEndian.uint16(((@:checkr _z ?? throw "null pointer dereference")._scratch.__slice__(0, (2 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>)) % (31 : stdgo.GoUInt16) : stdgo.GoUInt16) : stdgo.GoUInt16) : stdgo.GoUInt8)) : stdgo.GoUInt8);
        //"file:///home/runner/.go/go1.21.3/src/compress/zlib/writer.go#L119"
        {
            {
                var __tmp__ = (@:checkr _z ?? throw "null pointer dereference")._w.write(((@:checkr _z ?? throw "null pointer dereference")._scratch.__slice__((0 : stdgo.GoInt), (2 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>));
                _err = @:tmpset0 __tmp__._1;
            };
            if (_err != null) {
                //"file:///home/runner/.go/go1.21.3/src/compress/zlib/writer.go#L120"
                return _err;
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/compress/zlib/writer.go#L122"
        if ((@:checkr _z ?? throw "null pointer dereference")._dict != null) {
            //"file:///home/runner/.go/go1.21.3/src/compress/zlib/writer.go#L124"
            stdgo._internal.encoding.binary.Binary_bigendian.bigEndian.putUint32(((@:checkr _z ?? throw "null pointer dereference")._scratch.__slice__(0) : stdgo.Slice<stdgo.GoUInt8>), stdgo._internal.hash.adler32.Adler32_checksum.checksum((@:checkr _z ?? throw "null pointer dereference")._dict));
            //"file:///home/runner/.go/go1.21.3/src/compress/zlib/writer.go#L125"
            {
                {
                    var __tmp__ = (@:checkr _z ?? throw "null pointer dereference")._w.write(((@:checkr _z ?? throw "null pointer dereference")._scratch.__slice__((0 : stdgo.GoInt), (4 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>));
                    _err = @:tmpset0 __tmp__._1;
                };
                if (_err != null) {
                    //"file:///home/runner/.go/go1.21.3/src/compress/zlib/writer.go#L126"
                    return _err;
                };
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/compress/zlib/writer.go#L129"
        if (({
            final value = (@:checkr _z ?? throw "null pointer dereference")._compressor;
            (value == null || (value : Dynamic).__nil__);
        })) {
            {
                var __tmp__ = stdgo._internal.compress.flate.Flate_newwriterdict.newWriterDict((@:checkr _z ?? throw "null pointer dereference")._w, (@:checkr _z ?? throw "null pointer dereference")._level, (@:checkr _z ?? throw "null pointer dereference")._dict);
                (@:checkr _z ?? throw "null pointer dereference")._compressor = @:tmpset0 __tmp__._0;
                _err = @:tmpset0 __tmp__._1;
            };
            //"file:///home/runner/.go/go1.21.3/src/compress/zlib/writer.go#L133"
            if (_err != null) {
                //"file:///home/runner/.go/go1.21.3/src/compress/zlib/writer.go#L134"
                return _err;
            };
            (@:checkr _z ?? throw "null pointer dereference")._digest = stdgo._internal.hash.adler32.Adler32_new_.new_();
        };
        //"file:///home/runner/.go/go1.21.3/src/compress/zlib/writer.go#L138"
        return _err = (null : stdgo.Error);
    }
    @:keep
    @:tdfield
    static public function reset( _z:stdgo.Ref<stdgo._internal.compress.zlib.Zlib_writer.Writer>, _w:stdgo._internal.io.Io_writer.Writer):Void {
        @:recv var _z:stdgo.Ref<stdgo._internal.compress.zlib.Zlib_writer.Writer> = _z;
        (@:checkr _z ?? throw "null pointer dereference")._w = _w;
        //"file:///home/runner/.go/go1.21.3/src/compress/zlib/writer.go#L81"
        if (({
            final value = (@:checkr _z ?? throw "null pointer dereference")._compressor;
            (value != null && ((value : Dynamic).__nil__ == null || !(value : Dynamic).__nil__));
        })) {
            //"file:///home/runner/.go/go1.21.3/src/compress/zlib/writer.go#L82"
            (@:checkr _z ?? throw "null pointer dereference")._compressor.reset(_w);
        };
        //"file:///home/runner/.go/go1.21.3/src/compress/zlib/writer.go#L84"
        if ((@:checkr _z ?? throw "null pointer dereference")._digest != null) {
            //"file:///home/runner/.go/go1.21.3/src/compress/zlib/writer.go#L85"
            (@:checkr _z ?? throw "null pointer dereference")._digest.reset();
        };
        (@:checkr _z ?? throw "null pointer dereference")._err = (null : stdgo.Error);
        (@:checkr _z ?? throw "null pointer dereference")._scratch = (new stdgo.GoArray<stdgo.GoUInt8>(4, 4, ...[]).__setNumber32__() : stdgo.GoArray<stdgo.GoUInt8>)?.__copy__();
        (@:checkr _z ?? throw "null pointer dereference")._wroteHeader = false;
    }
}
