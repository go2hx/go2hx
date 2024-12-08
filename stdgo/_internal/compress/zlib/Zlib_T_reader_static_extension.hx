package stdgo._internal.compress.zlib;
@:keep @:allow(stdgo._internal.compress.zlib.Zlib.T_reader_asInterface) class T_reader_static_extension {
    @:keep
    static public function reset( _z:stdgo.Ref<stdgo._internal.compress.zlib.Zlib_T_reader.T_reader>, _r:stdgo._internal.io.Io_Reader.Reader, _dict:stdgo.Slice<stdgo.GoUInt8>):stdgo.Error {
        @:recv var _z:stdgo.Ref<stdgo._internal.compress.zlib.Zlib_T_reader.T_reader> = _z;
        {
            var __tmp__ = ({ _decompressor : _z._decompressor } : stdgo._internal.compress.zlib.Zlib_T_reader.T_reader);
            var x = (_z : stdgo._internal.compress.zlib.Zlib_T_reader.T_reader);
            x._r = __tmp__._r;
            x._decompressor = __tmp__._decompressor;
            x._digest = __tmp__._digest;
            x._err = __tmp__._err;
            x._scratch = __tmp__._scratch;
        };
        {
            var __tmp__ = try {
                { _0 : (stdgo.Go.typeAssert((stdgo.Go.toInterface(_r) : stdgo._internal.compress.flate.Flate_Reader.Reader)) : stdgo._internal.compress.flate.Flate_Reader.Reader), _1 : true };
            } catch(_) {
                { _0 : (null : stdgo._internal.compress.flate.Flate_Reader.Reader), _1 : false };
            }, _fr = __tmp__._0, _ok = __tmp__._1;
            if (_ok) {
                _z._r = _fr;
            } else {
                _z._r = stdgo.Go.asInterface(stdgo._internal.bufio.Bufio_newReader.newReader(_r));
            };
        };
        {
            var __tmp__ = stdgo._internal.io.Io_readFull.readFull(_z._r, (_z._scratch.__slice__((0 : stdgo.GoInt), (2 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>));
            _z._err = __tmp__._1;
        };
        if (_z._err != null) {
            if (stdgo.Go.toInterface(_z._err) == (stdgo.Go.toInterface(stdgo._internal.io.Io_eof.eof))) {
                _z._err = stdgo._internal.io.Io_errUnexpectedEOF.errUnexpectedEOF;
            };
            return _z._err;
        };
        var _h = (stdgo._internal.encoding.binary.Binary_bigEndian.bigEndian.uint16((_z._scratch.__slice__(0, (2 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>)) : stdgo.GoUInt16);
        if (((((_z._scratch[(0 : stdgo.GoInt)] & (15 : stdgo.GoUInt8) : stdgo.GoUInt8) != (8 : stdgo.GoUInt8)) || (((_z._scratch[(0 : stdgo.GoInt)] >> (4i64 : stdgo.GoUInt64) : stdgo.GoUInt8) > (7 : stdgo.GoUInt8) : Bool)) : Bool) || ((_h % (31 : stdgo.GoUInt16) : stdgo.GoUInt16) != (0 : stdgo.GoUInt16)) : Bool)) {
            _z._err = stdgo._internal.compress.zlib.Zlib_errHeader.errHeader;
            return _z._err;
        };
        var _haveDict = ((_z._scratch[(1 : stdgo.GoInt)] & (32 : stdgo.GoUInt8) : stdgo.GoUInt8) != ((0 : stdgo.GoUInt8)) : Bool);
        if (_haveDict) {
            {
                var __tmp__ = stdgo._internal.io.Io_readFull.readFull(_z._r, (_z._scratch.__slice__((0 : stdgo.GoInt), (4 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>));
                _z._err = __tmp__._1;
            };
            if (_z._err != null) {
                if (stdgo.Go.toInterface(_z._err) == (stdgo.Go.toInterface(stdgo._internal.io.Io_eof.eof))) {
                    _z._err = stdgo._internal.io.Io_errUnexpectedEOF.errUnexpectedEOF;
                };
                return _z._err;
            };
            var _checksum = (stdgo._internal.encoding.binary.Binary_bigEndian.bigEndian.uint32((_z._scratch.__slice__(0, (4 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>)) : stdgo.GoUInt32);
            if (_checksum != (stdgo._internal.hash.adler32.Adler32_checksum.checksum(_dict))) {
                _z._err = stdgo._internal.compress.zlib.Zlib_errDictionary.errDictionary;
                return _z._err;
            };
        };
        if (_z._decompressor == null) {
            if (_haveDict) {
                _z._decompressor = stdgo._internal.compress.flate.Flate_newReaderDict.newReaderDict(_z._r, _dict);
            } else {
                _z._decompressor = stdgo._internal.compress.flate.Flate_newReader.newReader(_z._r);
            };
        } else {
            (stdgo.Go.typeAssert((stdgo.Go.toInterface(_z._decompressor) : stdgo._internal.compress.flate.Flate_Resetter.Resetter)) : stdgo._internal.compress.flate.Flate_Resetter.Resetter).reset(_z._r, _dict);
        };
        _z._digest = stdgo._internal.hash.adler32.Adler32_new_.new_();
        return (null : stdgo.Error);
    }
    @:keep
    static public function close( _z:stdgo.Ref<stdgo._internal.compress.zlib.Zlib_T_reader.T_reader>):stdgo.Error {
        @:recv var _z:stdgo.Ref<stdgo._internal.compress.zlib.Zlib_T_reader.T_reader> = _z;
        if (((_z._err != null) && (stdgo.Go.toInterface(_z._err) != stdgo.Go.toInterface(stdgo._internal.io.Io_eof.eof)) : Bool)) {
            return _z._err;
        };
        _z._err = _z._decompressor.close();
        return _z._err;
    }
    @:keep
    static public function read( _z:stdgo.Ref<stdgo._internal.compress.zlib.Zlib_T_reader.T_reader>, _p:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } {
        @:recv var _z:stdgo.Ref<stdgo._internal.compress.zlib.Zlib_T_reader.T_reader> = _z;
        if (_z._err != null) {
            return { _0 : (0 : stdgo.GoInt), _1 : _z._err };
        };
        var _n:stdgo.GoInt = (0 : stdgo.GoInt);
        {
            var __tmp__ = _z._decompressor.read(_p);
            _n = __tmp__._0;
            _z._err = __tmp__._1;
        };
        _z._digest.write((_p.__slice__((0 : stdgo.GoInt), _n) : stdgo.Slice<stdgo.GoUInt8>));
        if (stdgo.Go.toInterface(_z._err) != (stdgo.Go.toInterface(stdgo._internal.io.Io_eof.eof))) {
            return { _0 : _n, _1 : _z._err };
        };
        {
            var __tmp__ = stdgo._internal.io.Io_readFull.readFull(_z._r, (_z._scratch.__slice__((0 : stdgo.GoInt), (4 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>)), __0:stdgo.GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                if (stdgo.Go.toInterface(_err) == (stdgo.Go.toInterface(stdgo._internal.io.Io_eof.eof))) {
                    _err = stdgo._internal.io.Io_errUnexpectedEOF.errUnexpectedEOF;
                };
                _z._err = _err;
                return { _0 : _n, _1 : _z._err };
            };
        };
        var _checksum = (stdgo._internal.encoding.binary.Binary_bigEndian.bigEndian.uint32((_z._scratch.__slice__(0, (4 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>)) : stdgo.GoUInt32);
        if (_checksum != (_z._digest.sum32())) {
            _z._err = stdgo._internal.compress.zlib.Zlib_errChecksum.errChecksum;
            return { _0 : _n, _1 : _z._err };
        };
        return { _0 : _n, _1 : stdgo._internal.io.Io_eof.eof };
    }
}
