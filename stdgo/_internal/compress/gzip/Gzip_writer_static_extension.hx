package stdgo._internal.compress.gzip;
@:keep @:allow(stdgo._internal.compress.gzip.Gzip.Writer_asInterface) class Writer_static_extension {
    @:keep
    @:tdfield
    static public function close( _z:stdgo.Ref<stdgo._internal.compress.gzip.Gzip_writer.Writer>):stdgo.Error {
        @:recv var _z:stdgo.Ref<stdgo._internal.compress.gzip.Gzip_writer.Writer> = _z;
        if ((@:checkr _z ?? throw "null pointer dereference")._err != null) {
            return (@:checkr _z ?? throw "null pointer dereference")._err;
        };
        if ((@:checkr _z ?? throw "null pointer dereference")._closed) {
            return (null : stdgo.Error);
        };
        (@:checkr _z ?? throw "null pointer dereference")._closed = true;
        if (!(@:checkr _z ?? throw "null pointer dereference")._wroteHeader) {
            @:check2r _z.write((null : stdgo.Slice<stdgo.GoUInt8>));
            if ((@:checkr _z ?? throw "null pointer dereference")._err != null) {
                return (@:checkr _z ?? throw "null pointer dereference")._err;
            };
        };
        (@:checkr _z ?? throw "null pointer dereference")._err = @:check2r (@:checkr _z ?? throw "null pointer dereference")._compressor.close();
        if ((@:checkr _z ?? throw "null pointer dereference")._err != null) {
            return (@:checkr _z ?? throw "null pointer dereference")._err;
        };
        stdgo._internal.compress.gzip.Gzip__le._le.putUint32(((@:checkr _z ?? throw "null pointer dereference")._buf.__slice__(0, (4 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>), (@:checkr _z ?? throw "null pointer dereference")._digest);
        stdgo._internal.compress.gzip.Gzip__le._le.putUint32(((@:checkr _z ?? throw "null pointer dereference")._buf.__slice__((4 : stdgo.GoInt), (8 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>), (@:checkr _z ?? throw "null pointer dereference")._size);
        {
            var __tmp__ = (@:checkr _z ?? throw "null pointer dereference")._w.write(((@:checkr _z ?? throw "null pointer dereference")._buf.__slice__(0, (8 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>));
            (@:checkr _z ?? throw "null pointer dereference")._err = @:tmpset0 __tmp__._1;
        };
        return (@:checkr _z ?? throw "null pointer dereference")._err;
    }
    @:keep
    @:tdfield
    static public function flush( _z:stdgo.Ref<stdgo._internal.compress.gzip.Gzip_writer.Writer>):stdgo.Error {
        @:recv var _z:stdgo.Ref<stdgo._internal.compress.gzip.Gzip_writer.Writer> = _z;
        if ((@:checkr _z ?? throw "null pointer dereference")._err != null) {
            return (@:checkr _z ?? throw "null pointer dereference")._err;
        };
        if ((@:checkr _z ?? throw "null pointer dereference")._closed) {
            return (null : stdgo.Error);
        };
        if (!(@:checkr _z ?? throw "null pointer dereference")._wroteHeader) {
            @:check2r _z.write((null : stdgo.Slice<stdgo.GoUInt8>));
            if ((@:checkr _z ?? throw "null pointer dereference")._err != null) {
                return (@:checkr _z ?? throw "null pointer dereference")._err;
            };
        };
        (@:checkr _z ?? throw "null pointer dereference")._err = @:check2r (@:checkr _z ?? throw "null pointer dereference")._compressor.flush();
        return (@:checkr _z ?? throw "null pointer dereference")._err;
    }
    @:keep
    @:tdfield
    static public function write( _z:stdgo.Ref<stdgo._internal.compress.gzip.Gzip_writer.Writer>, _p:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } {
        @:recv var _z:stdgo.Ref<stdgo._internal.compress.gzip.Gzip_writer.Writer> = _z;
        if ((@:checkr _z ?? throw "null pointer dereference")._err != null) {
            return { _0 : (0 : stdgo.GoInt), _1 : (@:checkr _z ?? throw "null pointer dereference")._err };
        };
        var _n:stdgo.GoInt = (0 : stdgo.GoInt);
        if (!(@:checkr _z ?? throw "null pointer dereference")._wroteHeader) {
            (@:checkr _z ?? throw "null pointer dereference")._wroteHeader = true;
            (@:checkr _z ?? throw "null pointer dereference")._buf = {
                var s:stdgo.GoArray<stdgo.GoUInt8> = new stdgo.GoArray<stdgo.GoUInt8>(10, 10, ...[for (i in 0 ... 10) 0]);
                s[0] = (31 : stdgo.GoUInt8);
                s[1] = (139 : stdgo.GoUInt8);
                s[2] = (8 : stdgo.GoUInt8);
                s;
            };
            if ((@:checkr _z ?? throw "null pointer dereference").header.extra != null) {
                (@:checkr _z ?? throw "null pointer dereference")._buf[(3 : stdgo.GoInt)] = ((@:checkr _z ?? throw "null pointer dereference")._buf[(3 : stdgo.GoInt)] | ((4 : stdgo.GoUInt8)) : stdgo.GoUInt8);
            };
            if ((@:checkr _z ?? throw "null pointer dereference").header.name != ((stdgo.Go.str() : stdgo.GoString))) {
                (@:checkr _z ?? throw "null pointer dereference")._buf[(3 : stdgo.GoInt)] = ((@:checkr _z ?? throw "null pointer dereference")._buf[(3 : stdgo.GoInt)] | ((8 : stdgo.GoUInt8)) : stdgo.GoUInt8);
            };
            if ((@:checkr _z ?? throw "null pointer dereference").header.comment != ((stdgo.Go.str() : stdgo.GoString))) {
                (@:checkr _z ?? throw "null pointer dereference")._buf[(3 : stdgo.GoInt)] = ((@:checkr _z ?? throw "null pointer dereference")._buf[(3 : stdgo.GoInt)] | ((16 : stdgo.GoUInt8)) : stdgo.GoUInt8);
            };
            if ((@:checkr _z ?? throw "null pointer dereference").header.modTime.after(stdgo._internal.time.Time_unix.unix((0i64 : stdgo.GoInt64), (0i64 : stdgo.GoInt64))?.__copy__())) {
                stdgo._internal.compress.gzip.Gzip__le._le.putUint32(((@:checkr _z ?? throw "null pointer dereference")._buf.__slice__((4 : stdgo.GoInt), (8 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>), ((@:checkr _z ?? throw "null pointer dereference").header.modTime.unix() : stdgo.GoUInt32));
            };
            if ((@:checkr _z ?? throw "null pointer dereference")._level == ((9 : stdgo.GoInt))) {
                (@:checkr _z ?? throw "null pointer dereference")._buf[(8 : stdgo.GoInt)] = (2 : stdgo.GoUInt8);
            } else if ((@:checkr _z ?? throw "null pointer dereference")._level == ((1 : stdgo.GoInt))) {
                (@:checkr _z ?? throw "null pointer dereference")._buf[(8 : stdgo.GoInt)] = (4 : stdgo.GoUInt8);
            };
            (@:checkr _z ?? throw "null pointer dereference")._buf[(9 : stdgo.GoInt)] = (@:checkr _z ?? throw "null pointer dereference").header.oS;
            {
                var __tmp__ = (@:checkr _z ?? throw "null pointer dereference")._w.write(((@:checkr _z ?? throw "null pointer dereference")._buf.__slice__(0, (10 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>));
                (@:checkr _z ?? throw "null pointer dereference")._err = @:tmpset0 __tmp__._1;
            };
            if ((@:checkr _z ?? throw "null pointer dereference")._err != null) {
                return { _0 : (0 : stdgo.GoInt), _1 : (@:checkr _z ?? throw "null pointer dereference")._err };
            };
            if ((@:checkr _z ?? throw "null pointer dereference").header.extra != null) {
                (@:checkr _z ?? throw "null pointer dereference")._err = @:check2r _z._writeBytes((@:checkr _z ?? throw "null pointer dereference").header.extra);
                if ((@:checkr _z ?? throw "null pointer dereference")._err != null) {
                    return { _0 : (0 : stdgo.GoInt), _1 : (@:checkr _z ?? throw "null pointer dereference")._err };
                };
            };
            if ((@:checkr _z ?? throw "null pointer dereference").header.name != ((stdgo.Go.str() : stdgo.GoString))) {
                (@:checkr _z ?? throw "null pointer dereference")._err = @:check2r _z._writeString((@:checkr _z ?? throw "null pointer dereference").header.name?.__copy__());
                if ((@:checkr _z ?? throw "null pointer dereference")._err != null) {
                    return { _0 : (0 : stdgo.GoInt), _1 : (@:checkr _z ?? throw "null pointer dereference")._err };
                };
            };
            if ((@:checkr _z ?? throw "null pointer dereference").header.comment != ((stdgo.Go.str() : stdgo.GoString))) {
                (@:checkr _z ?? throw "null pointer dereference")._err = @:check2r _z._writeString((@:checkr _z ?? throw "null pointer dereference").header.comment?.__copy__());
                if ((@:checkr _z ?? throw "null pointer dereference")._err != null) {
                    return { _0 : (0 : stdgo.GoInt), _1 : (@:checkr _z ?? throw "null pointer dereference")._err };
                };
            };
            if (((@:checkr _z ?? throw "null pointer dereference")._compressor == null || ((@:checkr _z ?? throw "null pointer dereference")._compressor : Dynamic).__nil__)) {
                {
                    var __tmp__ = stdgo._internal.compress.flate.Flate_newwriter.newWriter((@:checkr _z ?? throw "null pointer dereference")._w, (@:checkr _z ?? throw "null pointer dereference")._level);
                    (@:checkr _z ?? throw "null pointer dereference")._compressor = @:tmpset0 __tmp__._0;
                };
            };
        };
        (@:checkr _z ?? throw "null pointer dereference")._size = ((@:checkr _z ?? throw "null pointer dereference")._size + ((_p.length : stdgo.GoUInt32)) : stdgo.GoUInt32);
        (@:checkr _z ?? throw "null pointer dereference")._digest = stdgo._internal.hash.crc32.Crc32_update.update((@:checkr _z ?? throw "null pointer dereference")._digest, stdgo._internal.hash.crc32.Crc32_ieeetable.iEEETable, _p);
        {
            var __tmp__ = @:check2r (@:checkr _z ?? throw "null pointer dereference")._compressor.write(_p);
            _n = @:tmpset0 __tmp__._0;
            (@:checkr _z ?? throw "null pointer dereference")._err = @:tmpset0 __tmp__._1;
        };
        return { _0 : _n, _1 : (@:checkr _z ?? throw "null pointer dereference")._err };
    }
    @:keep
    @:tdfield
    static public function _writeString( _z:stdgo.Ref<stdgo._internal.compress.gzip.Gzip_writer.Writer>, _s:stdgo.GoString):stdgo.Error {
        @:recv var _z:stdgo.Ref<stdgo._internal.compress.gzip.Gzip_writer.Writer> = _z;
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
                var __tmp__ = (@:checkr _z ?? throw "null pointer dereference")._w.write(_b);
                _err = @:tmpset0 __tmp__._1;
            };
        } else {
            {
                var __tmp__ = stdgo._internal.io.Io_writestring.writeString((@:checkr _z ?? throw "null pointer dereference")._w, _s?.__copy__());
                _err = @:tmpset0 __tmp__._1;
            };
        };
        if (_err != null) {
            return _err;
        };
        (@:checkr _z ?? throw "null pointer dereference")._buf[(0 : stdgo.GoInt)] = (0 : stdgo.GoUInt8);
        {
            var __tmp__ = (@:checkr _z ?? throw "null pointer dereference")._w.write(((@:checkr _z ?? throw "null pointer dereference")._buf.__slice__(0, (1 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>));
            _err = @:tmpset0 __tmp__._1;
        };
        return _err;
    }
    @:keep
    @:tdfield
    static public function _writeBytes( _z:stdgo.Ref<stdgo._internal.compress.gzip.Gzip_writer.Writer>, _b:stdgo.Slice<stdgo.GoUInt8>):stdgo.Error {
        @:recv var _z:stdgo.Ref<stdgo._internal.compress.gzip.Gzip_writer.Writer> = _z;
        if (((_b.length) > (65535 : stdgo.GoInt) : Bool)) {
            return stdgo._internal.errors.Errors_new_.new_(("gzip.Write: Extra data is too large" : stdgo.GoString));
        };
        stdgo._internal.compress.gzip.Gzip__le._le.putUint16(((@:checkr _z ?? throw "null pointer dereference")._buf.__slice__(0, (2 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>), (_b.length : stdgo.GoUInt16));
        var __tmp__ = (@:checkr _z ?? throw "null pointer dereference")._w.write(((@:checkr _z ?? throw "null pointer dereference")._buf.__slice__(0, (2 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>)), __0:stdgo.GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            return _err;
        };
        {
            var __tmp__ = (@:checkr _z ?? throw "null pointer dereference")._w.write(_b);
            _err = @:tmpset0 __tmp__._1;
        };
        return _err;
    }
    @:keep
    @:tdfield
    static public function reset( _z:stdgo.Ref<stdgo._internal.compress.gzip.Gzip_writer.Writer>, _w:stdgo._internal.io.Io_writer.Writer):Void {
        @:recv var _z:stdgo.Ref<stdgo._internal.compress.gzip.Gzip_writer.Writer> = _z;
        @:check2r _z._init(_w, (@:checkr _z ?? throw "null pointer dereference")._level);
    }
    @:keep
    @:tdfield
    static public function _init( _z:stdgo.Ref<stdgo._internal.compress.gzip.Gzip_writer.Writer>, _w:stdgo._internal.io.Io_writer.Writer, _level:stdgo.GoInt):Void {
        @:recv var _z:stdgo.Ref<stdgo._internal.compress.gzip.Gzip_writer.Writer> = _z;
        var _compressor = (@:checkr _z ?? throw "null pointer dereference")._compressor;
        if ((_compressor != null && ((_compressor : Dynamic).__nil__ == null || !(_compressor : Dynamic).__nil__))) {
            @:check2r _compressor.reset(_w);
        };
        {
            var __tmp__ = ({ header : ({ oS : (255 : stdgo.GoUInt8) } : stdgo._internal.compress.gzip.Gzip_header.Header), _w : _w, _level : _level, _compressor : _compressor } : stdgo._internal.compress.gzip.Gzip_writer.Writer);
            var x = (_z : stdgo._internal.compress.gzip.Gzip_writer.Writer);
            x.header = __tmp__?.header;
            x._w = __tmp__?._w;
            x._level = __tmp__?._level;
            x._wroteHeader = __tmp__?._wroteHeader;
            x._compressor = __tmp__?._compressor;
            x._digest = __tmp__?._digest;
            x._size = __tmp__?._size;
            x._closed = __tmp__?._closed;
            x._buf = __tmp__?._buf;
            x._err = __tmp__?._err;
        };
    }
}
