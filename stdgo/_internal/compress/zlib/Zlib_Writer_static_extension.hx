package stdgo._internal.compress.zlib;
@:keep @:allow(stdgo._internal.compress.zlib.Zlib.Writer_asInterface) class Writer_static_extension {
    @:keep
    static public function close( _z:stdgo.Ref<stdgo._internal.compress.zlib.Zlib_Writer.Writer>):stdgo.Error {
        @:recv var _z:stdgo.Ref<stdgo._internal.compress.zlib.Zlib_Writer.Writer> = _z;
        if (!_z._wroteHeader) {
            _z._err = _z._writeHeader();
        };
        if (_z._err != null) {
            return _z._err;
        };
        _z._err = _z._compressor.close();
        if (_z._err != null) {
            return _z._err;
        };
        var _checksum = (_z._digest.sum32() : stdgo.GoUInt32);
        stdgo._internal.encoding.binary.Binary_bigEndian.bigEndian.putUint32((_z._scratch.__slice__(0) : stdgo.Slice<stdgo.GoUInt8>), _checksum);
        {
            var __tmp__ = _z._w.write((_z._scratch.__slice__((0 : stdgo.GoInt), (4 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>));
            _z._err = __tmp__._1;
        };
        return _z._err;
    }
    @:keep
    static public function flush( _z:stdgo.Ref<stdgo._internal.compress.zlib.Zlib_Writer.Writer>):stdgo.Error {
        @:recv var _z:stdgo.Ref<stdgo._internal.compress.zlib.Zlib_Writer.Writer> = _z;
        if (!_z._wroteHeader) {
            _z._err = _z._writeHeader();
        };
        if (_z._err != null) {
            return _z._err;
        };
        _z._err = _z._compressor.flush();
        return _z._err;
    }
    @:keep
    static public function write( _z:stdgo.Ref<stdgo._internal.compress.zlib.Zlib_Writer.Writer>, _p:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } {
        @:recv var _z:stdgo.Ref<stdgo._internal.compress.zlib.Zlib_Writer.Writer> = _z;
        var _n = (0 : stdgo.GoInt), _err = (null : stdgo.Error);
        if (!_z._wroteHeader) {
            _z._err = _z._writeHeader();
        };
        if (_z._err != null) {
            return { _0 : (0 : stdgo.GoInt), _1 : _z._err };
        };
        if ((_p.length) == ((0 : stdgo.GoInt))) {
            return { _0 : (0 : stdgo.GoInt), _1 : (null : stdgo.Error) };
        };
        {
            var __tmp__ = _z._compressor.write(_p);
            _n = __tmp__._0;
            _err = __tmp__._1;
        };
        if (_err != null) {
            _z._err = _err;
            return { _0 : _n, _1 : _err };
        };
        _z._digest.write(_p);
        return { _0 : _n, _1 : _err };
    }
    @:keep
    static public function _writeHeader( _z:stdgo.Ref<stdgo._internal.compress.zlib.Zlib_Writer.Writer>):stdgo.Error {
        @:recv var _z:stdgo.Ref<stdgo._internal.compress.zlib.Zlib_Writer.Writer> = _z;
        var _err = (null : stdgo.Error);
        _z._wroteHeader = true;
        _z._scratch[(0 : stdgo.GoInt)] = (120 : stdgo.GoUInt8);
        {
            final __value__ = _z._level;
            if (__value__ == ((-2 : stdgo.GoInt)) || __value__ == ((0 : stdgo.GoInt)) || __value__ == ((1 : stdgo.GoInt))) {
                _z._scratch[(1 : stdgo.GoInt)] = (0 : stdgo.GoUInt8);
            } else if (__value__ == ((2 : stdgo.GoInt)) || __value__ == ((3 : stdgo.GoInt)) || __value__ == ((4 : stdgo.GoInt)) || __value__ == ((5 : stdgo.GoInt))) {
                _z._scratch[(1 : stdgo.GoInt)] = (64 : stdgo.GoUInt8);
            } else if (__value__ == ((6 : stdgo.GoInt)) || __value__ == ((-1 : stdgo.GoInt))) {
                _z._scratch[(1 : stdgo.GoInt)] = (128 : stdgo.GoUInt8);
            } else if (__value__ == ((7 : stdgo.GoInt)) || __value__ == ((8 : stdgo.GoInt)) || __value__ == ((9 : stdgo.GoInt))) {
                _z._scratch[(1 : stdgo.GoInt)] = (192 : stdgo.GoUInt8);
            } else {
                throw stdgo.Go.toInterface(("unreachable" : stdgo.GoString));
            };
        };
        if (_z._dict != null) {
            _z._scratch[(1 : stdgo.GoInt)] = (_z._scratch[(1 : stdgo.GoInt)] | ((32 : stdgo.GoUInt8)) : stdgo.GoUInt8);
        };
        _z._scratch[(1 : stdgo.GoInt)] = (_z._scratch[(1 : stdgo.GoInt)] + ((((31 : stdgo.GoUInt16) - (stdgo._internal.encoding.binary.Binary_bigEndian.bigEndian.uint16((_z._scratch.__slice__(0, (2 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>)) % (31 : stdgo.GoUInt16) : stdgo.GoUInt16) : stdgo.GoUInt16) : stdgo.GoUInt8)) : stdgo.GoUInt8);
        {
            {
                var __tmp__ = _z._w.write((_z._scratch.__slice__((0 : stdgo.GoInt), (2 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>));
                _err = __tmp__._1;
            };
            if (_err != null) {
                return _err;
            };
        };
        if (_z._dict != null) {
            stdgo._internal.encoding.binary.Binary_bigEndian.bigEndian.putUint32((_z._scratch.__slice__(0) : stdgo.Slice<stdgo.GoUInt8>), stdgo._internal.hash.adler32.Adler32_checksum.checksum(_z._dict));
            {
                {
                    var __tmp__ = _z._w.write((_z._scratch.__slice__((0 : stdgo.GoInt), (4 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>));
                    _err = __tmp__._1;
                };
                if (_err != null) {
                    return _err;
                };
            };
        };
        if ((_z._compressor == null || (_z._compressor : Dynamic).__nil__)) {
            {
                var __tmp__ = stdgo._internal.compress.flate.Flate_newWriterDict.newWriterDict(_z._w, _z._level, _z._dict);
                _z._compressor = __tmp__._0;
                _err = __tmp__._1;
            };
            if (_err != null) {
                return _err;
            };
            _z._digest = stdgo._internal.hash.adler32.Adler32_new_.new_();
        };
        return (null : stdgo.Error);
    }
    @:keep
    static public function reset( _z:stdgo.Ref<stdgo._internal.compress.zlib.Zlib_Writer.Writer>, _w:stdgo._internal.io.Io_Writer.Writer):Void {
        @:recv var _z:stdgo.Ref<stdgo._internal.compress.zlib.Zlib_Writer.Writer> = _z;
        _z._w = _w;
        if ((_z._compressor != null && ((_z._compressor : Dynamic).__nil__ == null || !(_z._compressor : Dynamic).__nil__))) {
            _z._compressor.reset(_w);
        };
        if (_z._digest != null) {
            _z._digest.reset();
        };
        _z._err = (null : stdgo.Error);
        _z._scratch = (new stdgo.GoArray<stdgo.GoUInt8>(4, 4, ...[]).__setNumber32__() : stdgo.GoArray<stdgo.GoUInt8>)?.__copy__();
        _z._wroteHeader = false;
    }
}
