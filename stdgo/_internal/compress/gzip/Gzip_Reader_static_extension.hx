package stdgo._internal.compress.gzip;
@:keep @:allow(stdgo._internal.compress.gzip.Gzip.Reader_asInterface) class Reader_static_extension {
    @:keep
    @:tdfield
    static public function close( _z:stdgo.Ref<stdgo._internal.compress.gzip.Gzip_Reader.Reader>):stdgo.Error {
        @:recv var _z:stdgo.Ref<stdgo._internal.compress.gzip.Gzip_Reader.Reader> = _z;
        return (@:checkr _z ?? throw "null pointer dereference")._decompressor.close();
    }
    @:keep
    @:tdfield
    static public function read( _z:stdgo.Ref<stdgo._internal.compress.gzip.Gzip_Reader.Reader>, _p:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } {
        @:recv var _z:stdgo.Ref<stdgo._internal.compress.gzip.Gzip_Reader.Reader> = _z;
        var _n = (0 : stdgo.GoInt), _err = (null : stdgo.Error);
        if ((@:checkr _z ?? throw "null pointer dereference")._err != null) {
            return {
                final __tmp__:{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } = { _0 : (0 : stdgo.GoInt), _1 : (@:checkr _z ?? throw "null pointer dereference")._err };
                _n = __tmp__._0;
                _err = __tmp__._1;
                __tmp__;
            };
        };
        while (_n == ((0 : stdgo.GoInt))) {
            {
                var __tmp__ = (@:checkr _z ?? throw "null pointer dereference")._decompressor.read(_p);
                _n = __tmp__._0;
                (@:checkr _z ?? throw "null pointer dereference")._err = __tmp__._1;
            };
            (@:checkr _z ?? throw "null pointer dereference")._digest = stdgo._internal.hash.crc32.Crc32_update.update((@:checkr _z ?? throw "null pointer dereference")._digest, stdgo._internal.hash.crc32.Crc32_iEEETable.iEEETable, (_p.__slice__(0, _n) : stdgo.Slice<stdgo.GoUInt8>));
            (@:checkr _z ?? throw "null pointer dereference")._size = ((@:checkr _z ?? throw "null pointer dereference")._size + ((_n : stdgo.GoUInt32)) : stdgo.GoUInt32);
            if (stdgo.Go.toInterface((@:checkr _z ?? throw "null pointer dereference")._err) != (stdgo.Go.toInterface(stdgo._internal.io.Io_eOF.eOF))) {
                return {
                    final __tmp__:{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } = { _0 : _n, _1 : (@:checkr _z ?? throw "null pointer dereference")._err };
                    _n = __tmp__._0;
                    _err = __tmp__._1;
                    __tmp__;
                };
            };
            {
                var __tmp__ = stdgo._internal.io.Io_readFull.readFull((@:checkr _z ?? throw "null pointer dereference")._r, ((@:checkr _z ?? throw "null pointer dereference")._buf.__slice__(0, (8 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>)), __0:stdgo.GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                if (_err != null) {
                    (@:checkr _z ?? throw "null pointer dereference")._err = stdgo._internal.compress.gzip.Gzip__noEOF._noEOF(_err);
                    return {
                        final __tmp__:{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } = { _0 : _n, _1 : (@:checkr _z ?? throw "null pointer dereference")._err };
                        _n = __tmp__._0;
                        _err = __tmp__._1;
                        __tmp__;
                    };
                };
            };
            var _digest = (stdgo._internal.compress.gzip.Gzip__le._le.uint32(((@:checkr _z ?? throw "null pointer dereference")._buf.__slice__(0, (4 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>)) : stdgo.GoUInt32);
            var _size = (stdgo._internal.compress.gzip.Gzip__le._le.uint32(((@:checkr _z ?? throw "null pointer dereference")._buf.__slice__((4 : stdgo.GoInt), (8 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>)) : stdgo.GoUInt32);
            if (((_digest != (@:checkr _z ?? throw "null pointer dereference")._digest) || (_size != (@:checkr _z ?? throw "null pointer dereference")._size) : Bool)) {
                (@:checkr _z ?? throw "null pointer dereference")._err = stdgo._internal.compress.gzip.Gzip_errChecksum.errChecksum;
                return {
                    final __tmp__:{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } = { _0 : _n, _1 : (@:checkr _z ?? throw "null pointer dereference")._err };
                    _n = __tmp__._0;
                    _err = __tmp__._1;
                    __tmp__;
                };
            };
            {
                final __tmp__0 = (0u32 : stdgo.GoUInt32);
                final __tmp__1 = (0u32 : stdgo.GoUInt32);
                (@:checkr _z ?? throw "null pointer dereference")._digest = __tmp__0;
                (@:checkr _z ?? throw "null pointer dereference")._size = __tmp__1;
            };
            if (!(@:checkr _z ?? throw "null pointer dereference")._multistream) {
                return {
                    final __tmp__:{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } = { _0 : _n, _1 : stdgo._internal.io.Io_eOF.eOF };
                    _n = __tmp__._0;
                    _err = __tmp__._1;
                    __tmp__;
                };
            };
            (@:checkr _z ?? throw "null pointer dereference")._err = (null : stdgo.Error);
            {
                {
                    var __tmp__ = @:check2r _z._readHeader();
                    (@:checkr _z ?? throw "null pointer dereference")._err = __tmp__._1;
                };
                if ((@:checkr _z ?? throw "null pointer dereference")._err != null) {
                    return {
                        final __tmp__:{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } = { _0 : _n, _1 : (@:checkr _z ?? throw "null pointer dereference")._err };
                        _n = __tmp__._0;
                        _err = __tmp__._1;
                        __tmp__;
                    };
                };
            };
        };
        return {
            final __tmp__:{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } = { _0 : _n, _1 : (null : stdgo.Error) };
            _n = __tmp__._0;
            _err = __tmp__._1;
            __tmp__;
        };
    }
    @:keep
    @:tdfield
    static public function _readHeader( _z:stdgo.Ref<stdgo._internal.compress.gzip.Gzip_Reader.Reader>):{ var _0 : stdgo._internal.compress.gzip.Gzip_Header.Header; var _1 : stdgo.Error; } {
        @:recv var _z:stdgo.Ref<stdgo._internal.compress.gzip.Gzip_Reader.Reader> = _z;
        var _hdr = ({} : stdgo._internal.compress.gzip.Gzip_Header.Header), _err = (null : stdgo.Error);
        {
            {
                var __tmp__ = stdgo._internal.io.Io_readFull.readFull((@:checkr _z ?? throw "null pointer dereference")._r, ((@:checkr _z ?? throw "null pointer dereference")._buf.__slice__(0, (10 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>));
                _err = __tmp__._1;
            };
            if (_err != null) {
                return {
                    final __tmp__:{ var _0 : stdgo._internal.compress.gzip.Gzip_Header.Header; var _1 : stdgo.Error; } = { _0 : _hdr?.__copy__(), _1 : _err };
                    _hdr = __tmp__._0;
                    _err = __tmp__._1;
                    __tmp__;
                };
            };
        };
        if ((((@:checkr _z ?? throw "null pointer dereference")._buf[(0 : stdgo.GoInt)] != ((31 : stdgo.GoUInt8)) || (@:checkr _z ?? throw "null pointer dereference")._buf[(1 : stdgo.GoInt)] != ((139 : stdgo.GoUInt8)) : Bool) || ((@:checkr _z ?? throw "null pointer dereference")._buf[(2 : stdgo.GoInt)] != (8 : stdgo.GoUInt8)) : Bool)) {
            return {
                final __tmp__:{ var _0 : stdgo._internal.compress.gzip.Gzip_Header.Header; var _1 : stdgo.Error; } = { _0 : _hdr?.__copy__(), _1 : stdgo._internal.compress.gzip.Gzip_errHeader.errHeader };
                _hdr = __tmp__._0;
                _err = __tmp__._1;
                __tmp__;
            };
        };
        var _flg = ((@:checkr _z ?? throw "null pointer dereference")._buf[(3 : stdgo.GoInt)] : stdgo.GoUInt8);
        {
            var _t = (stdgo._internal.compress.gzip.Gzip__le._le.uint32(((@:checkr _z ?? throw "null pointer dereference")._buf.__slice__((4 : stdgo.GoInt), (8 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>)) : stdgo.GoInt64);
            if ((_t > (0i64 : stdgo.GoInt64) : Bool)) {
                _hdr.modTime = stdgo._internal.time.Time_unix.unix(_t, (0i64 : stdgo.GoInt64))?.__copy__();
            };
        };
        _hdr.oS = (@:checkr _z ?? throw "null pointer dereference")._buf[(9 : stdgo.GoInt)];
        (@:checkr _z ?? throw "null pointer dereference")._digest = stdgo._internal.hash.crc32.Crc32_checksumIEEE.checksumIEEE(((@:checkr _z ?? throw "null pointer dereference")._buf.__slice__(0, (10 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>));
        if ((_flg & (4 : stdgo.GoUInt8) : stdgo.GoUInt8) != ((0 : stdgo.GoUInt8))) {
            {
                {
                    var __tmp__ = stdgo._internal.io.Io_readFull.readFull((@:checkr _z ?? throw "null pointer dereference")._r, ((@:checkr _z ?? throw "null pointer dereference")._buf.__slice__(0, (2 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>));
                    _err = __tmp__._1;
                };
                if (_err != null) {
                    return {
                        final __tmp__:{ var _0 : stdgo._internal.compress.gzip.Gzip_Header.Header; var _1 : stdgo.Error; } = { _0 : _hdr?.__copy__(), _1 : stdgo._internal.compress.gzip.Gzip__noEOF._noEOF(_err) };
                        _hdr = __tmp__._0;
                        _err = __tmp__._1;
                        __tmp__;
                    };
                };
            };
            (@:checkr _z ?? throw "null pointer dereference")._digest = stdgo._internal.hash.crc32.Crc32_update.update((@:checkr _z ?? throw "null pointer dereference")._digest, stdgo._internal.hash.crc32.Crc32_iEEETable.iEEETable, ((@:checkr _z ?? throw "null pointer dereference")._buf.__slice__(0, (2 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>));
            var _data = (new stdgo.Slice<stdgo.GoUInt8>((stdgo._internal.compress.gzip.Gzip__le._le.uint16(((@:checkr _z ?? throw "null pointer dereference")._buf.__slice__(0, (2 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>)) : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>);
            {
                {
                    var __tmp__ = stdgo._internal.io.Io_readFull.readFull((@:checkr _z ?? throw "null pointer dereference")._r, _data);
                    _err = __tmp__._1;
                };
                if (_err != null) {
                    return {
                        final __tmp__:{ var _0 : stdgo._internal.compress.gzip.Gzip_Header.Header; var _1 : stdgo.Error; } = { _0 : _hdr?.__copy__(), _1 : stdgo._internal.compress.gzip.Gzip__noEOF._noEOF(_err) };
                        _hdr = __tmp__._0;
                        _err = __tmp__._1;
                        __tmp__;
                    };
                };
            };
            (@:checkr _z ?? throw "null pointer dereference")._digest = stdgo._internal.hash.crc32.Crc32_update.update((@:checkr _z ?? throw "null pointer dereference")._digest, stdgo._internal.hash.crc32.Crc32_iEEETable.iEEETable, _data);
            _hdr.extra = _data;
        };
        var _s:stdgo.GoString = ("" : stdgo.GoString);
        if ((_flg & (8 : stdgo.GoUInt8) : stdgo.GoUInt8) != ((0 : stdgo.GoUInt8))) {
            {
                {
                    var __tmp__ = @:check2r _z._readString();
                    _s = __tmp__._0?.__copy__();
                    _err = __tmp__._1;
                };
                if (_err != null) {
                    return {
                        final __tmp__:{ var _0 : stdgo._internal.compress.gzip.Gzip_Header.Header; var _1 : stdgo.Error; } = { _0 : _hdr?.__copy__(), _1 : stdgo._internal.compress.gzip.Gzip__noEOF._noEOF(_err) };
                        _hdr = __tmp__._0;
                        _err = __tmp__._1;
                        __tmp__;
                    };
                };
            };
            _hdr.name = _s?.__copy__();
        };
        if ((_flg & (16 : stdgo.GoUInt8) : stdgo.GoUInt8) != ((0 : stdgo.GoUInt8))) {
            {
                {
                    var __tmp__ = @:check2r _z._readString();
                    _s = __tmp__._0?.__copy__();
                    _err = __tmp__._1;
                };
                if (_err != null) {
                    return {
                        final __tmp__:{ var _0 : stdgo._internal.compress.gzip.Gzip_Header.Header; var _1 : stdgo.Error; } = { _0 : _hdr?.__copy__(), _1 : stdgo._internal.compress.gzip.Gzip__noEOF._noEOF(_err) };
                        _hdr = __tmp__._0;
                        _err = __tmp__._1;
                        __tmp__;
                    };
                };
            };
            _hdr.comment = _s?.__copy__();
        };
        if ((_flg & (2 : stdgo.GoUInt8) : stdgo.GoUInt8) != ((0 : stdgo.GoUInt8))) {
            {
                {
                    var __tmp__ = stdgo._internal.io.Io_readFull.readFull((@:checkr _z ?? throw "null pointer dereference")._r, ((@:checkr _z ?? throw "null pointer dereference")._buf.__slice__(0, (2 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>));
                    _err = __tmp__._1;
                };
                if (_err != null) {
                    return {
                        final __tmp__:{ var _0 : stdgo._internal.compress.gzip.Gzip_Header.Header; var _1 : stdgo.Error; } = { _0 : _hdr?.__copy__(), _1 : stdgo._internal.compress.gzip.Gzip__noEOF._noEOF(_err) };
                        _hdr = __tmp__._0;
                        _err = __tmp__._1;
                        __tmp__;
                    };
                };
            };
            var _digest = (stdgo._internal.compress.gzip.Gzip__le._le.uint16(((@:checkr _z ?? throw "null pointer dereference")._buf.__slice__(0, (2 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>)) : stdgo.GoUInt16);
            if (_digest != (((@:checkr _z ?? throw "null pointer dereference")._digest : stdgo.GoUInt16))) {
                return {
                    final __tmp__:{ var _0 : stdgo._internal.compress.gzip.Gzip_Header.Header; var _1 : stdgo.Error; } = { _0 : _hdr?.__copy__(), _1 : stdgo._internal.compress.gzip.Gzip_errHeader.errHeader };
                    _hdr = __tmp__._0;
                    _err = __tmp__._1;
                    __tmp__;
                };
            };
        };
        (@:checkr _z ?? throw "null pointer dereference")._digest = (0u32 : stdgo.GoUInt32);
        if ((@:checkr _z ?? throw "null pointer dereference")._decompressor == null) {
            (@:checkr _z ?? throw "null pointer dereference")._decompressor = stdgo._internal.compress.flate.Flate_newReader.newReader((@:checkr _z ?? throw "null pointer dereference")._r);
        } else {
            (stdgo.Go.typeAssert((stdgo.Go.toInterface((@:checkr _z ?? throw "null pointer dereference")._decompressor) : stdgo._internal.compress.flate.Flate_Resetter.Resetter)) : stdgo._internal.compress.flate.Flate_Resetter.Resetter).reset((@:checkr _z ?? throw "null pointer dereference")._r, (null : stdgo.Slice<stdgo.GoUInt8>));
        };
        return {
            final __tmp__:{ var _0 : stdgo._internal.compress.gzip.Gzip_Header.Header; var _1 : stdgo.Error; } = { _0 : _hdr?.__copy__(), _1 : (null : stdgo.Error) };
            _hdr = __tmp__._0;
            _err = __tmp__._1;
            __tmp__;
        };
    }
    @:keep
    @:tdfield
    static public function _readString( _z:stdgo.Ref<stdgo._internal.compress.gzip.Gzip_Reader.Reader>):{ var _0 : stdgo.GoString; var _1 : stdgo.Error; } {
        @:recv var _z:stdgo.Ref<stdgo._internal.compress.gzip.Gzip_Reader.Reader> = _z;
        var _err:stdgo.Error = (null : stdgo.Error);
        var _needConv = (false : Bool);
        {
            var _i = (0 : stdgo.GoInt);
            while (true) {
                if ((_i >= ((@:checkr _z ?? throw "null pointer dereference")._buf.length) : Bool)) {
                    return { _0 : stdgo.Go.str().__copy__(), _1 : stdgo._internal.compress.gzip.Gzip_errHeader.errHeader };
                };
{
                    var __tmp__ = (@:checkr _z ?? throw "null pointer dereference")._r.readByte();
                    (@:checkr _z ?? throw "null pointer dereference")._buf[(_i : stdgo.GoInt)] = __tmp__._0;
                    _err = __tmp__._1;
                };
if (_err != null) {
                    return { _0 : stdgo.Go.str().__copy__(), _1 : _err };
                };
if (((@:checkr _z ?? throw "null pointer dereference")._buf[(_i : stdgo.GoInt)] > (127 : stdgo.GoUInt8) : Bool)) {
                    _needConv = true;
                };
if ((@:checkr _z ?? throw "null pointer dereference")._buf[(_i : stdgo.GoInt)] == ((0 : stdgo.GoUInt8))) {
                    (@:checkr _z ?? throw "null pointer dereference")._digest = stdgo._internal.hash.crc32.Crc32_update.update((@:checkr _z ?? throw "null pointer dereference")._digest, stdgo._internal.hash.crc32.Crc32_iEEETable.iEEETable, ((@:checkr _z ?? throw "null pointer dereference")._buf.__slice__(0, (_i + (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>));
                    if (_needConv) {
                        var _s = (new stdgo.Slice<stdgo.GoInt32>((0 : stdgo.GoInt).toBasic(), _i).__setNumber32__() : stdgo.Slice<stdgo.GoInt32>);
                        for (__0 => _v in ((@:checkr _z ?? throw "null pointer dereference")._buf.__slice__(0, _i) : stdgo.Slice<stdgo.GoUInt8>)) {
                            _s = (_s.__append__((_v : stdgo.GoInt32)));
                        };
                        return { _0 : (_s : stdgo.GoString).__copy__(), _1 : (null : stdgo.Error) };
                    };
                    return { _0 : (((@:checkr _z ?? throw "null pointer dereference")._buf.__slice__(0, _i) : stdgo.Slice<stdgo.GoUInt8>) : stdgo.GoString).__copy__(), _1 : (null : stdgo.Error) };
                };
                _i++;
            };
        };
    }
    @:keep
    @:tdfield
    static public function multistream( _z:stdgo.Ref<stdgo._internal.compress.gzip.Gzip_Reader.Reader>, _ok:Bool):Void {
        @:recv var _z:stdgo.Ref<stdgo._internal.compress.gzip.Gzip_Reader.Reader> = _z;
        (@:checkr _z ?? throw "null pointer dereference")._multistream = _ok;
    }
    @:keep
    @:tdfield
    static public function reset( _z:stdgo.Ref<stdgo._internal.compress.gzip.Gzip_Reader.Reader>, _r:stdgo._internal.io.Io_Reader.Reader):stdgo.Error {
        @:recv var _z:stdgo.Ref<stdgo._internal.compress.gzip.Gzip_Reader.Reader> = _z;
        {
            var __tmp__ = ({ _decompressor : (@:checkr _z ?? throw "null pointer dereference")._decompressor, _multistream : true } : stdgo._internal.compress.gzip.Gzip_Reader.Reader);
            var x = (_z : stdgo._internal.compress.gzip.Gzip_Reader.Reader);
            x.header = __tmp__.header;
            x._r = __tmp__._r;
            x._decompressor = __tmp__._decompressor;
            x._digest = __tmp__._digest;
            x._size = __tmp__._size;
            x._buf = __tmp__._buf;
            x._err = __tmp__._err;
            x._multistream = __tmp__._multistream;
        };
        {
            var __tmp__ = try {
                { _0 : (stdgo.Go.typeAssert((stdgo.Go.toInterface(_r) : stdgo._internal.compress.flate.Flate_Reader.Reader)) : stdgo._internal.compress.flate.Flate_Reader.Reader), _1 : true };
            } catch(_) {
                { _0 : (null : stdgo._internal.compress.flate.Flate_Reader.Reader), _1 : false };
            }, _rr = __tmp__._0, _ok = __tmp__._1;
            if (_ok) {
                (@:checkr _z ?? throw "null pointer dereference")._r = _rr;
            } else {
                (@:checkr _z ?? throw "null pointer dereference")._r = stdgo.Go.asInterface(stdgo._internal.bufio.Bufio_newReader.newReader(_r));
            };
        };
        {
            var __tmp__ = @:check2r _z._readHeader();
            (@:checkr _z ?? throw "null pointer dereference").header = __tmp__._0?.__copy__();
            (@:checkr _z ?? throw "null pointer dereference")._err = __tmp__._1;
        };
        return (@:checkr _z ?? throw "null pointer dereference")._err;
    }
}
