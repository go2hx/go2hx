package stdgo._internal.compress.gzip;
@:keep @:allow(stdgo._internal.compress.gzip.Gzip.Writer_asInterface) class Writer_static_extension {
    @:keep
    static public function close( _z:stdgo.Ref<stdgo._internal.compress.gzip.Gzip_Writer.Writer>):stdgo.Error {
        @:recv var _z:stdgo.Ref<stdgo._internal.compress.gzip.Gzip_Writer.Writer> = _z;
        if (_z._err != null) {
            return _z._err;
        };
        if (_z._closed) {
            return (null : stdgo.Error);
        };
        _z._closed = true;
        if (!_z._wroteHeader) {
            _z.write((null : stdgo.Slice<stdgo.GoUInt8>));
            if (_z._err != null) {
                return _z._err;
            };
        };
        _z._err = _z._compressor.close();
        if (_z._err != null) {
            return _z._err;
        };
        stdgo._internal.compress.gzip.Gzip__le._le.putUint32((_z._buf.__slice__(0, (4 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>), _z._digest);
        stdgo._internal.compress.gzip.Gzip__le._le.putUint32((_z._buf.__slice__((4 : stdgo.GoInt), (8 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>), _z._size);
        {
            var __tmp__ = _z._w.write((_z._buf.__slice__(0, (8 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>));
            _z._err = __tmp__._1;
        };
        return _z._err;
    }
    @:keep
    static public function flush( _z:stdgo.Ref<stdgo._internal.compress.gzip.Gzip_Writer.Writer>):stdgo.Error {
        @:recv var _z:stdgo.Ref<stdgo._internal.compress.gzip.Gzip_Writer.Writer> = _z;
        if (_z._err != null) {
            return _z._err;
        };
        if (_z._closed) {
            return (null : stdgo.Error);
        };
        if (!_z._wroteHeader) {
            _z.write((null : stdgo.Slice<stdgo.GoUInt8>));
            if (_z._err != null) {
                return _z._err;
            };
        };
        _z._err = _z._compressor.flush();
        return _z._err;
    }
    @:keep
    static public function write( _z:stdgo.Ref<stdgo._internal.compress.gzip.Gzip_Writer.Writer>, _p:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } {
        @:recv var _z:stdgo.Ref<stdgo._internal.compress.gzip.Gzip_Writer.Writer> = _z;
        if (_z._err != null) {
            return { _0 : (0 : stdgo.GoInt), _1 : _z._err };
        };
        var _n:stdgo.GoInt = (0 : stdgo.GoInt);
        if (!_z._wroteHeader) {
            _z._wroteHeader = true;
            _z._buf = {
                var s:stdgo.GoArray<stdgo.GoUInt8> = new stdgo.GoArray<stdgo.GoUInt8>(10, 10, ...[for (i in 0 ... 10) 0]);
                s[0] = (31 : stdgo.GoUInt8);
                s[1] = (139 : stdgo.GoUInt8);
                s[2] = (8 : stdgo.GoUInt8);
                s;
            };
            if (_z.header.extra != null) {
                _z._buf[(3 : stdgo.GoInt)] = (_z._buf[(3 : stdgo.GoInt)] | ((4 : stdgo.GoUInt8)) : stdgo.GoUInt8);
            };
            if (_z.header.name != (stdgo.Go.str())) {
                _z._buf[(3 : stdgo.GoInt)] = (_z._buf[(3 : stdgo.GoInt)] | ((8 : stdgo.GoUInt8)) : stdgo.GoUInt8);
            };
            if (_z.header.comment != (stdgo.Go.str())) {
                _z._buf[(3 : stdgo.GoInt)] = (_z._buf[(3 : stdgo.GoInt)] | ((16 : stdgo.GoUInt8)) : stdgo.GoUInt8);
            };
            if (_z.header.modTime.after(stdgo._internal.time.Time_unix.unix((0i64 : stdgo.GoInt64), (0i64 : stdgo.GoInt64))?.__copy__())) {
                stdgo._internal.compress.gzip.Gzip__le._le.putUint32((_z._buf.__slice__((4 : stdgo.GoInt), (8 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>), (_z.header.modTime.unix() : stdgo.GoUInt32));
            };
            if (_z._level == ((9 : stdgo.GoInt))) {
                _z._buf[(8 : stdgo.GoInt)] = (2 : stdgo.GoUInt8);
            } else if (_z._level == ((1 : stdgo.GoInt))) {
                _z._buf[(8 : stdgo.GoInt)] = (4 : stdgo.GoUInt8);
            };
            _z._buf[(9 : stdgo.GoInt)] = _z.header.os;
            {
                var __tmp__ = _z._w.write((_z._buf.__slice__(0, (10 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>));
                _z._err = __tmp__._1;
            };
            if (_z._err != null) {
                return { _0 : (0 : stdgo.GoInt), _1 : _z._err };
            };
            if (_z.header.extra != null) {
                _z._err = _z._writeBytes(_z.header.extra);
                if (_z._err != null) {
                    return { _0 : (0 : stdgo.GoInt), _1 : _z._err };
                };
            };
            if (_z.header.name != (stdgo.Go.str())) {
                _z._err = _z._writeString(_z.header.name?.__copy__());
                if (_z._err != null) {
                    return { _0 : (0 : stdgo.GoInt), _1 : _z._err };
                };
            };
            if (_z.header.comment != (stdgo.Go.str())) {
                _z._err = _z._writeString(_z.header.comment?.__copy__());
                if (_z._err != null) {
                    return { _0 : (0 : stdgo.GoInt), _1 : _z._err };
                };
            };
            if ((_z._compressor == null || (_z._compressor : Dynamic).__nil__)) {
                {
                    var __tmp__ = stdgo._internal.compress.flate.Flate_newWriter.newWriter(_z._w, _z._level);
                    _z._compressor = __tmp__._0;
                };
            };
        };
        _z._size = (_z._size + ((_p.length : stdgo.GoUInt32)) : stdgo.GoUInt32);
        _z._digest = stdgo._internal.hash.crc32.Crc32_update.update(_z._digest, stdgo._internal.hash.crc32.Crc32_ieeetable.ieeetable, _p);
        {
            var __tmp__ = _z._compressor.write(_p);
            _n = __tmp__._0;
            _z._err = __tmp__._1;
        };
        return { _0 : _n, _1 : _z._err };
    }
    @:keep
    static public function _writeString( _z:stdgo.Ref<stdgo._internal.compress.gzip.Gzip_Writer.Writer>, _s:stdgo.GoString):stdgo.Error {
        @:recv var _z:stdgo.Ref<stdgo._internal.compress.gzip.Gzip_Writer.Writer> = _z;
        var _err = (null : stdgo.Error);
        var _needconv = (false : Bool);
        for (__0 => _v in _s) {
            if (((_v == (0 : stdgo.GoInt32)) || (_v > (255 : stdgo.GoInt32) : Bool) : Bool)) {
                return _err = stdgo._internal.errors.Errors_new_.new_(("gzip.Write: non-Latin-1 header string" : stdgo.GoString));
            };
            if ((_v > (127 : stdgo.GoInt32) : Bool)) {
                _needconv = true;
            };
        };
        if (_needconv) {
            var _b = (new stdgo.Slice<stdgo.GoUInt8>((0 : stdgo.GoInt).toBasic(), (_s.length)).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>);
            for (__1 => _v in _s) {
                _b = (_b.__append__((_v : stdgo.GoUInt8)));
            };
            {
                var __tmp__ = _z._w.write(_b);
                _err = __tmp__._1;
            };
        } else {
            {
                var __tmp__ = stdgo._internal.io.Io_writeString.writeString(_z._w, _s?.__copy__());
                _err = __tmp__._1;
            };
        };
        if (_err != null) {
            return _err;
        };
        _z._buf[(0 : stdgo.GoInt)] = (0 : stdgo.GoUInt8);
        {
            var __tmp__ = _z._w.write((_z._buf.__slice__(0, (1 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>));
            _err = __tmp__._1;
        };
        return _err;
    }
    @:keep
    static public function _writeBytes( _z:stdgo.Ref<stdgo._internal.compress.gzip.Gzip_Writer.Writer>, _b:stdgo.Slice<stdgo.GoUInt8>):stdgo.Error {
        @:recv var _z:stdgo.Ref<stdgo._internal.compress.gzip.Gzip_Writer.Writer> = _z;
        if (((_b.length) > (65535 : stdgo.GoInt) : Bool)) {
            return stdgo._internal.errors.Errors_new_.new_(("gzip.Write: Extra data is too large" : stdgo.GoString));
        };
        stdgo._internal.compress.gzip.Gzip__le._le.putUint16((_z._buf.__slice__(0, (2 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>), (_b.length : stdgo.GoUInt16));
        var __tmp__ = _z._w.write((_z._buf.__slice__(0, (2 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>)), __0:stdgo.GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            return _err;
        };
        {
            var __tmp__ = _z._w.write(_b);
            _err = __tmp__._1;
        };
        return _err;
    }
    @:keep
    static public function reset( _z:stdgo.Ref<stdgo._internal.compress.gzip.Gzip_Writer.Writer>, _w:stdgo._internal.io.Io_Writer.Writer):Void {
        @:recv var _z:stdgo.Ref<stdgo._internal.compress.gzip.Gzip_Writer.Writer> = _z;
        _z._init(_w, _z._level);
    }
    @:keep
    static public function _init( _z:stdgo.Ref<stdgo._internal.compress.gzip.Gzip_Writer.Writer>, _w:stdgo._internal.io.Io_Writer.Writer, _level:stdgo.GoInt):Void {
        @:recv var _z:stdgo.Ref<stdgo._internal.compress.gzip.Gzip_Writer.Writer> = _z;
        var _compressor = _z._compressor;
        if ((_compressor != null && ((_compressor : Dynamic).__nil__ == null || !(_compressor : Dynamic).__nil__))) {
            _compressor.reset(_w);
        };
        {
            var __tmp__ = ({ header : ({ os : (255 : stdgo.GoUInt8) } : stdgo._internal.compress.gzip.Gzip_Header.Header), _w : _w, _level : _level, _compressor : _compressor } : stdgo._internal.compress.gzip.Gzip_Writer.Writer);
            var x = (_z : stdgo._internal.compress.gzip.Gzip_Writer.Writer);
            x.header = __tmp__.header;
            x._w = __tmp__._w;
            x._level = __tmp__._level;
            x._wroteHeader = __tmp__._wroteHeader;
            x._compressor = __tmp__._compressor;
            x._digest = __tmp__._digest;
            x._size = __tmp__._size;
            x._closed = __tmp__._closed;
            x._buf = __tmp__._buf;
            x._err = __tmp__._err;
        };
    }
}
