package stdgo._internal.compress.zlib;
@:keep @:allow(stdgo._internal.compress.zlib.Zlib.T_reader_asInterface) class T_reader_static_extension {
    @:keep
    @:tdfield
    static public function reset( _z:stdgo.Ref<stdgo._internal.compress.zlib.Zlib_t_reader.T_reader>, _r:stdgo._internal.io.Io_reader.Reader, _dict:stdgo.Slice<stdgo.GoUInt8>):stdgo.Error {
        @:recv var _z:stdgo.Ref<stdgo._internal.compress.zlib.Zlib_t_reader.T_reader> = _z;
        {
            var __tmp__ = ({ _decompressor : (@:checkr _z ?? throw "null pointer dereference")._decompressor } : stdgo._internal.compress.zlib.Zlib_t_reader.T_reader);
            var x = (_z : stdgo._internal.compress.zlib.Zlib_t_reader.T_reader);
            x._r = __tmp__?._r;
            x._decompressor = __tmp__?._decompressor;
            x._digest = __tmp__?._digest;
            x._err = __tmp__?._err;
            x._scratch = __tmp__?._scratch;
        };
        {
            var __tmp__ = try {
                { _0 : (stdgo.Go.typeAssert((stdgo.Go.toInterface(_r) : stdgo._internal.compress.flate.Flate_reader.Reader)) : stdgo._internal.compress.flate.Flate_reader.Reader), _1 : true };
            } catch(_) {
                { _0 : (null : stdgo._internal.compress.flate.Flate_reader.Reader), _1 : false };
            }, _fr = __tmp__._0, _ok = __tmp__._1;
            if (_ok) {
                (@:checkr _z ?? throw "null pointer dereference")._r = _fr;
            } else {
                (@:checkr _z ?? throw "null pointer dereference")._r = stdgo.Go.asInterface(stdgo._internal.bufio.Bufio_newreader.newReader(_r));
            };
        };
        {
            var __tmp__ = stdgo._internal.io.Io_readfull.readFull((@:checkr _z ?? throw "null pointer dereference")._r, ((@:checkr _z ?? throw "null pointer dereference")._scratch.__slice__((0 : stdgo.GoInt), (2 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>));
            (@:checkr _z ?? throw "null pointer dereference")._err = @:tmpset0 __tmp__._1;
        };
        if ((@:checkr _z ?? throw "null pointer dereference")._err != null) {
            if (stdgo.Go.toInterface((@:checkr _z ?? throw "null pointer dereference")._err) == (stdgo.Go.toInterface(stdgo._internal.io.Io_eof.eOF))) {
                (@:checkr _z ?? throw "null pointer dereference")._err = stdgo._internal.io.Io_errunexpectedeof.errUnexpectedEOF;
            };
            return (@:checkr _z ?? throw "null pointer dereference")._err;
        };
        var _h = (stdgo._internal.encoding.binary.Binary_bigendian.bigEndian.uint16(((@:checkr _z ?? throw "null pointer dereference")._scratch.__slice__(0, (2 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>)) : stdgo.GoUInt16);
        if ((((((@:checkr _z ?? throw "null pointer dereference")._scratch[(0 : stdgo.GoInt)] & (15 : stdgo.GoUInt8) : stdgo.GoUInt8) != (8 : stdgo.GoUInt8)) || ((((@:checkr _z ?? throw "null pointer dereference")._scratch[(0 : stdgo.GoInt)] >> (4i64 : stdgo.GoUInt64) : stdgo.GoUInt8) > (7 : stdgo.GoUInt8) : Bool)) : Bool) || ((_h % (31 : stdgo.GoUInt16) : stdgo.GoUInt16) != (0 : stdgo.GoUInt16)) : Bool)) {
            (@:checkr _z ?? throw "null pointer dereference")._err = stdgo._internal.compress.zlib.Zlib_errheader.errHeader;
            return (@:checkr _z ?? throw "null pointer dereference")._err;
        };
        var _haveDict = (((@:checkr _z ?? throw "null pointer dereference")._scratch[(1 : stdgo.GoInt)] & (32 : stdgo.GoUInt8) : stdgo.GoUInt8) != ((0 : stdgo.GoUInt8)) : Bool);
        if (_haveDict) {
            {
                var __tmp__ = stdgo._internal.io.Io_readfull.readFull((@:checkr _z ?? throw "null pointer dereference")._r, ((@:checkr _z ?? throw "null pointer dereference")._scratch.__slice__((0 : stdgo.GoInt), (4 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>));
                (@:checkr _z ?? throw "null pointer dereference")._err = @:tmpset0 __tmp__._1;
            };
            if ((@:checkr _z ?? throw "null pointer dereference")._err != null) {
                if (stdgo.Go.toInterface((@:checkr _z ?? throw "null pointer dereference")._err) == (stdgo.Go.toInterface(stdgo._internal.io.Io_eof.eOF))) {
                    (@:checkr _z ?? throw "null pointer dereference")._err = stdgo._internal.io.Io_errunexpectedeof.errUnexpectedEOF;
                };
                return (@:checkr _z ?? throw "null pointer dereference")._err;
            };
            var _checksum = (stdgo._internal.encoding.binary.Binary_bigendian.bigEndian.uint32(((@:checkr _z ?? throw "null pointer dereference")._scratch.__slice__(0, (4 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>)) : stdgo.GoUInt32);
            if (_checksum != (stdgo._internal.hash.adler32.Adler32_checksum.checksum(_dict))) {
                (@:checkr _z ?? throw "null pointer dereference")._err = stdgo._internal.compress.zlib.Zlib_errdictionary.errDictionary;
                return (@:checkr _z ?? throw "null pointer dereference")._err;
            };
        };
        if ((@:checkr _z ?? throw "null pointer dereference")._decompressor == null) {
            if (_haveDict) {
                (@:checkr _z ?? throw "null pointer dereference")._decompressor = stdgo._internal.compress.flate.Flate_newreaderdict.newReaderDict((@:checkr _z ?? throw "null pointer dereference")._r, _dict);
            } else {
                (@:checkr _z ?? throw "null pointer dereference")._decompressor = stdgo._internal.compress.flate.Flate_newreader.newReader((@:checkr _z ?? throw "null pointer dereference")._r);
            };
        } else {
            (stdgo.Go.typeAssert((stdgo.Go.toInterface((@:checkr _z ?? throw "null pointer dereference")._decompressor) : stdgo._internal.compress.flate.Flate_resetter.Resetter)) : stdgo._internal.compress.flate.Flate_resetter.Resetter).reset((@:checkr _z ?? throw "null pointer dereference")._r, _dict);
        };
        (@:checkr _z ?? throw "null pointer dereference")._digest = stdgo._internal.hash.adler32.Adler32_new_.new_();
        return (null : stdgo.Error);
    }
    @:keep
    @:tdfield
    static public function close( _z:stdgo.Ref<stdgo._internal.compress.zlib.Zlib_t_reader.T_reader>):stdgo.Error {
        @:recv var _z:stdgo.Ref<stdgo._internal.compress.zlib.Zlib_t_reader.T_reader> = _z;
        if ((((@:checkr _z ?? throw "null pointer dereference")._err != null) && (stdgo.Go.toInterface((@:checkr _z ?? throw "null pointer dereference")._err) != stdgo.Go.toInterface(stdgo._internal.io.Io_eof.eOF)) : Bool)) {
            return (@:checkr _z ?? throw "null pointer dereference")._err;
        };
        (@:checkr _z ?? throw "null pointer dereference")._err = (@:checkr _z ?? throw "null pointer dereference")._decompressor.close();
        return (@:checkr _z ?? throw "null pointer dereference")._err;
    }
    @:keep
    @:tdfield
    static public function read( _z:stdgo.Ref<stdgo._internal.compress.zlib.Zlib_t_reader.T_reader>, _p:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } {
        @:recv var _z:stdgo.Ref<stdgo._internal.compress.zlib.Zlib_t_reader.T_reader> = _z;
        if ((@:checkr _z ?? throw "null pointer dereference")._err != null) {
            return { _0 : (0 : stdgo.GoInt), _1 : (@:checkr _z ?? throw "null pointer dereference")._err };
        };
        var _n:stdgo.GoInt = (0 : stdgo.GoInt);
        {
            var __tmp__ = (@:checkr _z ?? throw "null pointer dereference")._decompressor.read(_p);
            _n = @:tmpset0 __tmp__._0;
            (@:checkr _z ?? throw "null pointer dereference")._err = @:tmpset0 __tmp__._1;
        };
        (@:checkr _z ?? throw "null pointer dereference")._digest.write((_p.__slice__((0 : stdgo.GoInt), _n) : stdgo.Slice<stdgo.GoUInt8>));
        if (stdgo.Go.toInterface((@:checkr _z ?? throw "null pointer dereference")._err) != (stdgo.Go.toInterface(stdgo._internal.io.Io_eof.eOF))) {
            return { _0 : _n, _1 : (@:checkr _z ?? throw "null pointer dereference")._err };
        };
        {
            var __tmp__ = stdgo._internal.io.Io_readfull.readFull((@:checkr _z ?? throw "null pointer dereference")._r, ((@:checkr _z ?? throw "null pointer dereference")._scratch.__slice__((0 : stdgo.GoInt), (4 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>)), __0:stdgo.GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                if (stdgo.Go.toInterface(_err) == (stdgo.Go.toInterface(stdgo._internal.io.Io_eof.eOF))) {
                    _err = stdgo._internal.io.Io_errunexpectedeof.errUnexpectedEOF;
                };
                (@:checkr _z ?? throw "null pointer dereference")._err = _err;
                return { _0 : _n, _1 : (@:checkr _z ?? throw "null pointer dereference")._err };
            };
        };
        var _checksum = (stdgo._internal.encoding.binary.Binary_bigendian.bigEndian.uint32(((@:checkr _z ?? throw "null pointer dereference")._scratch.__slice__(0, (4 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>)) : stdgo.GoUInt32);
        if (_checksum != ((@:checkr _z ?? throw "null pointer dereference")._digest.sum32())) {
            (@:checkr _z ?? throw "null pointer dereference")._err = stdgo._internal.compress.zlib.Zlib_errchecksum.errChecksum;
            return { _0 : _n, _1 : (@:checkr _z ?? throw "null pointer dereference")._err };
        };
        return { _0 : _n, _1 : stdgo._internal.io.Io_eof.eOF };
    }
}
