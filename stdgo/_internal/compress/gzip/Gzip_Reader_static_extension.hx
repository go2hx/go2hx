package stdgo._internal.compress.gzip;
@:keep @:allow(stdgo._internal.compress.gzip.Gzip.Reader_asInterface) class Reader_static_extension {
    @:keep
    static public function close( _z:stdgo.Ref<stdgo._internal.compress.gzip.Gzip_Reader.Reader>):stdgo.Error {
        @:recv var _z:stdgo.Ref<stdgo._internal.compress.gzip.Gzip_Reader.Reader> = _z;
        return _z._decompressor.close();
    }
    @:keep
    static public function read( _z:stdgo.Ref<stdgo._internal.compress.gzip.Gzip_Reader.Reader>, _p:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } {
        @:recv var _z:stdgo.Ref<stdgo._internal.compress.gzip.Gzip_Reader.Reader> = _z;
        var _n = (0 : stdgo.GoInt), _err = (null : stdgo.Error);
        if (_z._err != null) {
            return { _0 : _n = (0 : stdgo.GoInt), _1 : _err = _z._err };
        };
        while (_n == ((0 : stdgo.GoInt))) {
            {
                var __tmp__ = _z._decompressor.read(_p);
                _n = __tmp__._0;
                _z._err = __tmp__._1;
            };
            _z._digest = stdgo._internal.hash.crc32.Crc32_update.update(_z._digest, stdgo._internal.hash.crc32.Crc32_ieeetable.ieeetable, (_p.__slice__(0, _n) : stdgo.Slice<stdgo.GoUInt8>));
            _z._size = (_z._size + ((_n : stdgo.GoUInt32)) : stdgo.GoUInt32);
            if (stdgo.Go.toInterface(_z._err) != (stdgo.Go.toInterface(stdgo._internal.io.Io_eof.eof))) {
                return { _0 : _n, _1 : _err = _z._err };
            };
            {
                var __tmp__ = stdgo._internal.io.Io_readFull.readFull(_z._r, (_z._buf.__slice__(0, (8 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>)), __0:stdgo.GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                if (_err != null) {
                    _z._err = stdgo._internal.compress.gzip.Gzip__noEOF._noEOF(_err);
                    return { _0 : _n, _1 : _err = _z._err };
                };
            };
            var _digest = (stdgo._internal.compress.gzip.Gzip__le._le.uint32((_z._buf.__slice__(0, (4 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>)) : stdgo.GoUInt32);
            var _size = (stdgo._internal.compress.gzip.Gzip__le._le.uint32((_z._buf.__slice__((4 : stdgo.GoInt), (8 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>)) : stdgo.GoUInt32);
            if (((_digest != _z._digest) || (_size != _z._size) : Bool)) {
                _z._err = stdgo._internal.compress.gzip.Gzip_errChecksum.errChecksum;
                return { _0 : _n, _1 : _err = _z._err };
            };
            {
                final __tmp__0 = (0u32 : stdgo.GoUInt32);
                final __tmp__1 = (0u32 : stdgo.GoUInt32);
                _z._digest = __tmp__0;
                _z._size = __tmp__1;
            };
            if (!_z._multistream) {
                return { _0 : _n, _1 : _err = stdgo._internal.io.Io_eof.eof };
            };
            _z._err = (null : stdgo.Error);
            {
                {
                    var __tmp__ = _z._readHeader();
                    _z._err = __tmp__._1;
                };
                if (_z._err != null) {
                    return { _0 : _n, _1 : _err = _z._err };
                };
            };
        };
        return { _0 : _n, _1 : _err = (null : stdgo.Error) };
    }
    @:keep
    static public function _readHeader( _z:stdgo.Ref<stdgo._internal.compress.gzip.Gzip_Reader.Reader>):{ var _0 : stdgo._internal.compress.gzip.Gzip_Header.Header; var _1 : stdgo.Error; } {
        @:recv var _z:stdgo.Ref<stdgo._internal.compress.gzip.Gzip_Reader.Reader> = _z;
        var _hdr = ({} : stdgo._internal.compress.gzip.Gzip_Header.Header), _err = (null : stdgo.Error);
        {
            {
                var __tmp__ = stdgo._internal.io.Io_readFull.readFull(_z._r, (_z._buf.__slice__(0, (10 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>));
                _err = __tmp__._1;
            };
            if (_err != null) {
                return { _0 : _hdr = _hdr?.__copy__(), _1 : _err };
            };
        };
        if (((_z._buf[(0 : stdgo.GoInt)] != ((31 : stdgo.GoUInt8)) || _z._buf[(1 : stdgo.GoInt)] != ((139 : stdgo.GoUInt8)) : Bool) || (_z._buf[(2 : stdgo.GoInt)] != (8 : stdgo.GoUInt8)) : Bool)) {
            return { _0 : _hdr = _hdr?.__copy__(), _1 : _err = stdgo._internal.compress.gzip.Gzip_errHeader.errHeader };
        };
        var _flg = (_z._buf[(3 : stdgo.GoInt)] : stdgo.GoUInt8);
        {
            var _t = (stdgo._internal.compress.gzip.Gzip__le._le.uint32((_z._buf.__slice__((4 : stdgo.GoInt), (8 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>)) : stdgo.GoInt64);
            if ((_t > (0i64 : stdgo.GoInt64) : Bool)) {
                _hdr.modTime = stdgo._internal.time.Time_unix.unix(_t, (0i64 : stdgo.GoInt64))?.__copy__();
            };
        };
        _hdr.os = _z._buf[(9 : stdgo.GoInt)];
        _z._digest = stdgo._internal.hash.crc32.Crc32_checksumIEEE.checksumIEEE((_z._buf.__slice__(0, (10 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>));
        if ((_flg & (4 : stdgo.GoUInt8) : stdgo.GoUInt8) != ((0 : stdgo.GoUInt8))) {
            {
                {
                    var __tmp__ = stdgo._internal.io.Io_readFull.readFull(_z._r, (_z._buf.__slice__(0, (2 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>));
                    _err = __tmp__._1;
                };
                if (_err != null) {
                    return { _0 : _hdr = _hdr?.__copy__(), _1 : _err = stdgo._internal.compress.gzip.Gzip__noEOF._noEOF(_err) };
                };
            };
            _z._digest = stdgo._internal.hash.crc32.Crc32_update.update(_z._digest, stdgo._internal.hash.crc32.Crc32_ieeetable.ieeetable, (_z._buf.__slice__(0, (2 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>));
            var _data = (new stdgo.Slice<stdgo.GoUInt8>((stdgo._internal.compress.gzip.Gzip__le._le.uint16((_z._buf.__slice__(0, (2 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>)) : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>);
            {
                {
                    var __tmp__ = stdgo._internal.io.Io_readFull.readFull(_z._r, _data);
                    _err = __tmp__._1;
                };
                if (_err != null) {
                    return { _0 : _hdr = _hdr?.__copy__(), _1 : _err = stdgo._internal.compress.gzip.Gzip__noEOF._noEOF(_err) };
                };
            };
            _z._digest = stdgo._internal.hash.crc32.Crc32_update.update(_z._digest, stdgo._internal.hash.crc32.Crc32_ieeetable.ieeetable, _data);
            _hdr.extra = _data;
        };
        var _s:stdgo.GoString = ("" : stdgo.GoString);
        if ((_flg & (8 : stdgo.GoUInt8) : stdgo.GoUInt8) != ((0 : stdgo.GoUInt8))) {
            {
                {
                    var __tmp__ = _z._readString();
                    _s = __tmp__._0?.__copy__();
                    _err = __tmp__._1;
                };
                if (_err != null) {
                    return { _0 : _hdr = _hdr?.__copy__(), _1 : _err = stdgo._internal.compress.gzip.Gzip__noEOF._noEOF(_err) };
                };
            };
            _hdr.name = _s?.__copy__();
        };
        if ((_flg & (16 : stdgo.GoUInt8) : stdgo.GoUInt8) != ((0 : stdgo.GoUInt8))) {
            {
                {
                    var __tmp__ = _z._readString();
                    _s = __tmp__._0?.__copy__();
                    _err = __tmp__._1;
                };
                if (_err != null) {
                    return { _0 : _hdr = _hdr?.__copy__(), _1 : _err = stdgo._internal.compress.gzip.Gzip__noEOF._noEOF(_err) };
                };
            };
            _hdr.comment = _s?.__copy__();
        };
        if ((_flg & (2 : stdgo.GoUInt8) : stdgo.GoUInt8) != ((0 : stdgo.GoUInt8))) {
            {
                {
                    var __tmp__ = stdgo._internal.io.Io_readFull.readFull(_z._r, (_z._buf.__slice__(0, (2 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>));
                    _err = __tmp__._1;
                };
                if (_err != null) {
                    return { _0 : _hdr = _hdr?.__copy__(), _1 : _err = stdgo._internal.compress.gzip.Gzip__noEOF._noEOF(_err) };
                };
            };
            var _digest = (stdgo._internal.compress.gzip.Gzip__le._le.uint16((_z._buf.__slice__(0, (2 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>)) : stdgo.GoUInt16);
            if (_digest != ((_z._digest : stdgo.GoUInt16))) {
                return { _0 : _hdr = _hdr?.__copy__(), _1 : _err = stdgo._internal.compress.gzip.Gzip_errHeader.errHeader };
            };
        };
        _z._digest = (0u32 : stdgo.GoUInt32);
        if (_z._decompressor == null) {
            _z._decompressor = stdgo._internal.compress.flate.Flate_newReader.newReader(_z._r);
        } else {
            (stdgo.Go.typeAssert((stdgo.Go.toInterface(_z._decompressor) : stdgo._internal.compress.flate.Flate_Resetter.Resetter)) : stdgo._internal.compress.flate.Flate_Resetter.Resetter).reset(_z._r, (null : stdgo.Slice<stdgo.GoUInt8>));
        };
        return { _0 : _hdr = _hdr?.__copy__(), _1 : _err = (null : stdgo.Error) };
    }
    @:keep
    static public function _readString( _z:stdgo.Ref<stdgo._internal.compress.gzip.Gzip_Reader.Reader>):{ var _0 : stdgo.GoString; var _1 : stdgo.Error; } {
        @:recv var _z:stdgo.Ref<stdgo._internal.compress.gzip.Gzip_Reader.Reader> = _z;
        var _err:stdgo.Error = (null : stdgo.Error);
        var _needConv = (false : Bool);
        {
            var _i = (0 : stdgo.GoInt);
            while (true) {
                if ((_i >= (_z._buf.length) : Bool)) {
                    return { _0 : stdgo.Go.str().__copy__(), _1 : stdgo._internal.compress.gzip.Gzip_errHeader.errHeader };
                };
{
                    var __tmp__ = _z._r.readByte();
                    _z._buf[(_i : stdgo.GoInt)] = __tmp__._0;
                    _err = __tmp__._1;
                };
if (_err != null) {
                    return { _0 : stdgo.Go.str().__copy__(), _1 : _err };
                };
if ((_z._buf[(_i : stdgo.GoInt)] > (127 : stdgo.GoUInt8) : Bool)) {
                    _needConv = true;
                };
if (_z._buf[(_i : stdgo.GoInt)] == ((0 : stdgo.GoUInt8))) {
                    _z._digest = stdgo._internal.hash.crc32.Crc32_update.update(_z._digest, stdgo._internal.hash.crc32.Crc32_ieeetable.ieeetable, (_z._buf.__slice__(0, (_i + (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>));
                    if (_needConv) {
                        var _s = (new stdgo.Slice<stdgo.GoInt32>((0 : stdgo.GoInt).toBasic(), _i).__setNumber32__() : stdgo.Slice<stdgo.GoInt32>);
                        for (__0 => _v in (_z._buf.__slice__(0, _i) : stdgo.Slice<stdgo.GoUInt8>)) {
                            _s = (_s.__append__((_v : stdgo.GoInt32)));
                        };
                        return { _0 : (_s : stdgo.GoString).__copy__(), _1 : (null : stdgo.Error) };
                    };
                    return { _0 : ((_z._buf.__slice__(0, _i) : stdgo.Slice<stdgo.GoUInt8>) : stdgo.GoString).__copy__(), _1 : (null : stdgo.Error) };
                };
                _i++;
            };
        };
    }
    @:keep
    static public function multistream( _z:stdgo.Ref<stdgo._internal.compress.gzip.Gzip_Reader.Reader>, _ok:Bool):Void {
        @:recv var _z:stdgo.Ref<stdgo._internal.compress.gzip.Gzip_Reader.Reader> = _z;
        _z._multistream = _ok;
    }
    @:keep
    static public function reset( _z:stdgo.Ref<stdgo._internal.compress.gzip.Gzip_Reader.Reader>, _r:stdgo._internal.io.Io_Reader.Reader):stdgo.Error {
        @:recv var _z:stdgo.Ref<stdgo._internal.compress.gzip.Gzip_Reader.Reader> = _z;
        {
            var __tmp__ = ({ _decompressor : _z._decompressor, _multistream : true } : stdgo._internal.compress.gzip.Gzip_Reader.Reader);
            (_z : stdgo._internal.compress.gzip.Gzip_Reader.Reader).header = __tmp__.header;
            (_z : stdgo._internal.compress.gzip.Gzip_Reader.Reader)._r = __tmp__._r;
            (_z : stdgo._internal.compress.gzip.Gzip_Reader.Reader)._decompressor = __tmp__._decompressor;
            (_z : stdgo._internal.compress.gzip.Gzip_Reader.Reader)._digest = __tmp__._digest;
            (_z : stdgo._internal.compress.gzip.Gzip_Reader.Reader)._size = __tmp__._size;
            (_z : stdgo._internal.compress.gzip.Gzip_Reader.Reader)._buf = __tmp__._buf;
            (_z : stdgo._internal.compress.gzip.Gzip_Reader.Reader)._err = __tmp__._err;
            (_z : stdgo._internal.compress.gzip.Gzip_Reader.Reader)._multistream = __tmp__._multistream;
        };
        {
            var __tmp__ = try {
                { _0 : (stdgo.Go.typeAssert((stdgo.Go.toInterface(_r) : stdgo._internal.compress.flate.Flate_Reader.Reader)) : stdgo._internal.compress.flate.Flate_Reader.Reader), _1 : true };
            } catch(_) {
                { _0 : (null : stdgo._internal.compress.flate.Flate_Reader.Reader), _1 : false };
            }, _rr = __tmp__._0, _ok = __tmp__._1;
            if (_ok) {
                _z._r = _rr;
            } else {
                _z._r = stdgo.Go.asInterface(stdgo._internal.bufio.Bufio_newReader.newReader(_r));
            };
        };
        {
            var __tmp__ = _z._readHeader();
            _z.header = __tmp__._0?.__copy__();
            _z._err = __tmp__._1;
        };
        return _z._err;
    }
}
