package stdgo._internal.compress.gzip;
@:keep @:allow(stdgo._internal.compress.gzip.Gzip.Writer_asInterface) class Writer_static_extension {
    @:keep
    @:tdfield
    static public function close( _z:stdgo.Ref<stdgo._internal.compress.gzip.Gzip_writer.Writer>):stdgo.Error {
        @:recv var _z:stdgo.Ref<stdgo._internal.compress.gzip.Gzip_writer.Writer> = _z;
        //"file:///home/runner/.go/go1.21.3/src/compress/gzip/gzip.go#L229"
        if ((@:checkr _z ?? throw "null pointer dereference")._err != null) {
            //"file:///home/runner/.go/go1.21.3/src/compress/gzip/gzip.go#L230"
            return (@:checkr _z ?? throw "null pointer dereference")._err;
        };
        //"file:///home/runner/.go/go1.21.3/src/compress/gzip/gzip.go#L232"
        if ((@:checkr _z ?? throw "null pointer dereference")._closed) {
            //"file:///home/runner/.go/go1.21.3/src/compress/gzip/gzip.go#L233"
            return (null : stdgo.Error);
        };
        (@:checkr _z ?? throw "null pointer dereference")._closed = true;
        //"file:///home/runner/.go/go1.21.3/src/compress/gzip/gzip.go#L236"
        if (!(@:checkr _z ?? throw "null pointer dereference")._wroteHeader) {
            //"file:///home/runner/.go/go1.21.3/src/compress/gzip/gzip.go#L237"
            _z.write((null : stdgo.Slice<stdgo.GoUInt8>));
            //"file:///home/runner/.go/go1.21.3/src/compress/gzip/gzip.go#L238"
            if ((@:checkr _z ?? throw "null pointer dereference")._err != null) {
                //"file:///home/runner/.go/go1.21.3/src/compress/gzip/gzip.go#L239"
                return (@:checkr _z ?? throw "null pointer dereference")._err;
            };
        };
        (@:checkr _z ?? throw "null pointer dereference")._err = (@:checkr _z ?? throw "null pointer dereference")._compressor.close();
        //"file:///home/runner/.go/go1.21.3/src/compress/gzip/gzip.go#L243"
        if ((@:checkr _z ?? throw "null pointer dereference")._err != null) {
            //"file:///home/runner/.go/go1.21.3/src/compress/gzip/gzip.go#L244"
            return (@:checkr _z ?? throw "null pointer dereference")._err;
        };
        //"file:///home/runner/.go/go1.21.3/src/compress/gzip/gzip.go#L246"
        stdgo._internal.compress.gzip.Gzip__le._le.putUint32(((@:checkr _z ?? throw "null pointer dereference")._buf.__slice__(0, (4 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>), (@:checkr _z ?? throw "null pointer dereference")._digest);
        //"file:///home/runner/.go/go1.21.3/src/compress/gzip/gzip.go#L247"
        stdgo._internal.compress.gzip.Gzip__le._le.putUint32(((@:checkr _z ?? throw "null pointer dereference")._buf.__slice__((4 : stdgo.GoInt), (8 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>), (@:checkr _z ?? throw "null pointer dereference")._size);
        {
            var __tmp__ = (@:checkr _z ?? throw "null pointer dereference")._w.write(((@:checkr _z ?? throw "null pointer dereference")._buf.__slice__(0, (8 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>));
            (@:checkr _z ?? throw "null pointer dereference")._err = @:tmpset0 __tmp__._1;
        };
        //"file:///home/runner/.go/go1.21.3/src/compress/gzip/gzip.go#L249"
        return (@:checkr _z ?? throw "null pointer dereference")._err;
    }
    @:keep
    @:tdfield
    static public function flush( _z:stdgo.Ref<stdgo._internal.compress.gzip.Gzip_writer.Writer>):stdgo.Error {
        @:recv var _z:stdgo.Ref<stdgo._internal.compress.gzip.Gzip_writer.Writer> = _z;
        //"file:///home/runner/.go/go1.21.3/src/compress/gzip/gzip.go#L209"
        if ((@:checkr _z ?? throw "null pointer dereference")._err != null) {
            //"file:///home/runner/.go/go1.21.3/src/compress/gzip/gzip.go#L210"
            return (@:checkr _z ?? throw "null pointer dereference")._err;
        };
        //"file:///home/runner/.go/go1.21.3/src/compress/gzip/gzip.go#L212"
        if ((@:checkr _z ?? throw "null pointer dereference")._closed) {
            //"file:///home/runner/.go/go1.21.3/src/compress/gzip/gzip.go#L213"
            return (null : stdgo.Error);
        };
        //"file:///home/runner/.go/go1.21.3/src/compress/gzip/gzip.go#L215"
        if (!(@:checkr _z ?? throw "null pointer dereference")._wroteHeader) {
            //"file:///home/runner/.go/go1.21.3/src/compress/gzip/gzip.go#L216"
            _z.write((null : stdgo.Slice<stdgo.GoUInt8>));
            //"file:///home/runner/.go/go1.21.3/src/compress/gzip/gzip.go#L217"
            if ((@:checkr _z ?? throw "null pointer dereference")._err != null) {
                //"file:///home/runner/.go/go1.21.3/src/compress/gzip/gzip.go#L218"
                return (@:checkr _z ?? throw "null pointer dereference")._err;
            };
        };
        (@:checkr _z ?? throw "null pointer dereference")._err = (@:checkr _z ?? throw "null pointer dereference")._compressor.flush();
        //"file:///home/runner/.go/go1.21.3/src/compress/gzip/gzip.go#L222"
        return (@:checkr _z ?? throw "null pointer dereference")._err;
    }
    @:keep
    @:tdfield
    static public function write( _z:stdgo.Ref<stdgo._internal.compress.gzip.Gzip_writer.Writer>, _p:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } {
        @:recv var _z:stdgo.Ref<stdgo._internal.compress.gzip.Gzip_writer.Writer> = _z;
        //"file:///home/runner/.go/go1.21.3/src/compress/gzip/gzip.go#L140"
        if ((@:checkr _z ?? throw "null pointer dereference")._err != null) {
            //"file:///home/runner/.go/go1.21.3/src/compress/gzip/gzip.go#L141"
            return { _0 : (0 : stdgo.GoInt), _1 : (@:checkr _z ?? throw "null pointer dereference")._err };
        };
        var _n:stdgo.GoInt = (0 : stdgo.GoInt);
        //"file:///home/runner/.go/go1.21.3/src/compress/gzip/gzip.go#L145"
        if (!(@:checkr _z ?? throw "null pointer dereference")._wroteHeader) {
            (@:checkr _z ?? throw "null pointer dereference")._wroteHeader = true;
            (@:checkr _z ?? throw "null pointer dereference")._buf = {
                var s:stdgo.GoArray<stdgo.GoUInt8> = new stdgo.GoArray<stdgo.GoUInt8>(10, 10, ...[for (i in 0 ... 10) 0]);
                s[0] = (31 : stdgo.GoUInt8);
                s[1] = (139 : stdgo.GoUInt8);
                s[2] = (8 : stdgo.GoUInt8);
                s;
            };
            //"file:///home/runner/.go/go1.21.3/src/compress/gzip/gzip.go#L148"
            if ((@:checkr _z ?? throw "null pointer dereference").header.extra != null) {
                (@:checkr _z ?? throw "null pointer dereference")._buf[(3 : stdgo.GoInt)] = ((@:checkr _z ?? throw "null pointer dereference")._buf[(3 : stdgo.GoInt)] | ((4 : stdgo.GoUInt8)) : stdgo.GoUInt8);
            };
            //"file:///home/runner/.go/go1.21.3/src/compress/gzip/gzip.go#L151"
            if ((@:checkr _z ?? throw "null pointer dereference").header.name != ((stdgo.Go.str() : stdgo.GoString))) {
                (@:checkr _z ?? throw "null pointer dereference")._buf[(3 : stdgo.GoInt)] = ((@:checkr _z ?? throw "null pointer dereference")._buf[(3 : stdgo.GoInt)] | ((8 : stdgo.GoUInt8)) : stdgo.GoUInt8);
            };
            //"file:///home/runner/.go/go1.21.3/src/compress/gzip/gzip.go#L154"
            if ((@:checkr _z ?? throw "null pointer dereference").header.comment != ((stdgo.Go.str() : stdgo.GoString))) {
                (@:checkr _z ?? throw "null pointer dereference")._buf[(3 : stdgo.GoInt)] = ((@:checkr _z ?? throw "null pointer dereference")._buf[(3 : stdgo.GoInt)] | ((16 : stdgo.GoUInt8)) : stdgo.GoUInt8);
            };
            //"file:///home/runner/.go/go1.21.3/src/compress/gzip/gzip.go#L157"
            if ((@:checkr _z ?? throw "null pointer dereference").header.modTime.after(stdgo._internal.time.Time_unix.unix((0i64 : stdgo.GoInt64), (0i64 : stdgo.GoInt64))?.__copy__())) {
                //"file:///home/runner/.go/go1.21.3/src/compress/gzip/gzip.go#L160"
                stdgo._internal.compress.gzip.Gzip__le._le.putUint32(((@:checkr _z ?? throw "null pointer dereference")._buf.__slice__((4 : stdgo.GoInt), (8 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>), ((@:checkr _z ?? throw "null pointer dereference").header.modTime.unix() : stdgo.GoUInt32));
            };
            //"file:///home/runner/.go/go1.21.3/src/compress/gzip/gzip.go#L162"
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
            //"file:///home/runner/.go/go1.21.3/src/compress/gzip/gzip.go#L169"
            if ((@:checkr _z ?? throw "null pointer dereference")._err != null) {
                //"file:///home/runner/.go/go1.21.3/src/compress/gzip/gzip.go#L170"
                return { _0 : (0 : stdgo.GoInt), _1 : (@:checkr _z ?? throw "null pointer dereference")._err };
            };
            //"file:///home/runner/.go/go1.21.3/src/compress/gzip/gzip.go#L172"
            if ((@:checkr _z ?? throw "null pointer dereference").header.extra != null) {
                (@:checkr _z ?? throw "null pointer dereference")._err = _z._writeBytes((@:checkr _z ?? throw "null pointer dereference").header.extra);
                //"file:///home/runner/.go/go1.21.3/src/compress/gzip/gzip.go#L174"
                if ((@:checkr _z ?? throw "null pointer dereference")._err != null) {
                    //"file:///home/runner/.go/go1.21.3/src/compress/gzip/gzip.go#L175"
                    return { _0 : (0 : stdgo.GoInt), _1 : (@:checkr _z ?? throw "null pointer dereference")._err };
                };
            };
            //"file:///home/runner/.go/go1.21.3/src/compress/gzip/gzip.go#L178"
            if ((@:checkr _z ?? throw "null pointer dereference").header.name != ((stdgo.Go.str() : stdgo.GoString))) {
                (@:checkr _z ?? throw "null pointer dereference")._err = _z._writeString((@:checkr _z ?? throw "null pointer dereference").header.name?.__copy__());
                //"file:///home/runner/.go/go1.21.3/src/compress/gzip/gzip.go#L180"
                if ((@:checkr _z ?? throw "null pointer dereference")._err != null) {
                    //"file:///home/runner/.go/go1.21.3/src/compress/gzip/gzip.go#L181"
                    return { _0 : (0 : stdgo.GoInt), _1 : (@:checkr _z ?? throw "null pointer dereference")._err };
                };
            };
            //"file:///home/runner/.go/go1.21.3/src/compress/gzip/gzip.go#L184"
            if ((@:checkr _z ?? throw "null pointer dereference").header.comment != ((stdgo.Go.str() : stdgo.GoString))) {
                (@:checkr _z ?? throw "null pointer dereference")._err = _z._writeString((@:checkr _z ?? throw "null pointer dereference").header.comment?.__copy__());
                //"file:///home/runner/.go/go1.21.3/src/compress/gzip/gzip.go#L186"
                if ((@:checkr _z ?? throw "null pointer dereference")._err != null) {
                    //"file:///home/runner/.go/go1.21.3/src/compress/gzip/gzip.go#L187"
                    return { _0 : (0 : stdgo.GoInt), _1 : (@:checkr _z ?? throw "null pointer dereference")._err };
                };
            };
            //"file:///home/runner/.go/go1.21.3/src/compress/gzip/gzip.go#L190"
            if (({
                final value = (@:checkr _z ?? throw "null pointer dereference")._compressor;
                (value == null || (value : Dynamic).__nil__);
            })) {
                {
                    var __tmp__ = stdgo._internal.compress.flate.Flate_newwriter.newWriter((@:checkr _z ?? throw "null pointer dereference")._w, (@:checkr _z ?? throw "null pointer dereference")._level);
                    (@:checkr _z ?? throw "null pointer dereference")._compressor = @:tmpset0 __tmp__._0;
                };
            };
        };
        (@:checkr _z ?? throw "null pointer dereference")._size = ((@:checkr _z ?? throw "null pointer dereference")._size + ((_p.length : stdgo.GoUInt32)) : stdgo.GoUInt32);
        (@:checkr _z ?? throw "null pointer dereference")._digest = stdgo._internal.hash.crc32.Crc32_update.update((@:checkr _z ?? throw "null pointer dereference")._digest, stdgo._internal.hash.crc32.Crc32_ieeetable.iEEETable, _p);
        {
            var __tmp__ = (@:checkr _z ?? throw "null pointer dereference")._compressor.write(_p);
            _n = @:tmpset0 __tmp__._0;
            (@:checkr _z ?? throw "null pointer dereference")._err = @:tmpset0 __tmp__._1;
        };
        //"file:///home/runner/.go/go1.21.3/src/compress/gzip/gzip.go#L197"
        return { _0 : _n, _1 : (@:checkr _z ?? throw "null pointer dereference")._err };
    }
    @:keep
    @:tdfield
    static public function _writeString( _z:stdgo.Ref<stdgo._internal.compress.gzip.Gzip_writer.Writer>, _s:stdgo.GoString):stdgo.Error {
        @:recv var _z:stdgo.Ref<stdgo._internal.compress.gzip.Gzip_writer.Writer> = _z;
        var _err = (null : stdgo.Error);
        var _needconv = (false : Bool);
        //"file:///home/runner/.go/go1.21.3/src/compress/gzip/gzip.go#L111"
        for (__0 => _v in _s) {
            //"file:///home/runner/.go/go1.21.3/src/compress/gzip/gzip.go#L112"
            if (((_v == (0 : stdgo.GoInt32)) || (_v > (255 : stdgo.GoInt32) : Bool) : Bool)) {
                //"file:///home/runner/.go/go1.21.3/src/compress/gzip/gzip.go#L113"
                return _err = stdgo._internal.errors.Errors_new_.new_(("gzip.Write: non-Latin-1 header string" : stdgo.GoString));
            };
            //"file:///home/runner/.go/go1.21.3/src/compress/gzip/gzip.go#L115"
            if ((_v > (127 : stdgo.GoInt32) : Bool)) {
                _needconv = true;
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/compress/gzip/gzip.go#L119"
        if (_needconv) {
            var _b = (new stdgo.Slice<stdgo.GoUInt8>((0 : stdgo.GoInt).toBasic(), (_s.length)).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>);
            //"file:///home/runner/.go/go1.21.3/src/compress/gzip/gzip.go#L121"
            for (__1 => _v in _s) {
                _b = (_b.__append__((_v : stdgo.GoUInt8)) : stdgo.Slice<stdgo.GoUInt8>);
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
        //"file:///home/runner/.go/go1.21.3/src/compress/gzip/gzip.go#L128"
        if (_err != null) {
            //"file:///home/runner/.go/go1.21.3/src/compress/gzip/gzip.go#L129"
            return _err;
        };
        (@:checkr _z ?? throw "null pointer dereference")._buf[(0 : stdgo.GoInt)] = (0 : stdgo.GoUInt8);
        {
            var __tmp__ = (@:checkr _z ?? throw "null pointer dereference")._w.write(((@:checkr _z ?? throw "null pointer dereference")._buf.__slice__(0, (1 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>));
            _err = @:tmpset0 __tmp__._1;
        };
        //"file:///home/runner/.go/go1.21.3/src/compress/gzip/gzip.go#L134"
        return _err;
    }
    @:keep
    @:tdfield
    static public function _writeBytes( _z:stdgo.Ref<stdgo._internal.compress.gzip.Gzip_writer.Writer>, _b:stdgo.Slice<stdgo.GoUInt8>):stdgo.Error {
        @:recv var _z:stdgo.Ref<stdgo._internal.compress.gzip.Gzip_writer.Writer> = _z;
        //"file:///home/runner/.go/go1.21.3/src/compress/gzip/gzip.go#L94"
        if (((_b.length) > (65535 : stdgo.GoInt) : Bool)) {
            //"file:///home/runner/.go/go1.21.3/src/compress/gzip/gzip.go#L95"
            return stdgo._internal.errors.Errors_new_.new_(("gzip.Write: Extra data is too large" : stdgo.GoString));
        };
        //"file:///home/runner/.go/go1.21.3/src/compress/gzip/gzip.go#L97"
        stdgo._internal.compress.gzip.Gzip__le._le.putUint16(((@:checkr _z ?? throw "null pointer dereference")._buf.__slice__(0, (2 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>), (_b.length : stdgo.GoUInt16));
        var __tmp__ = (@:checkr _z ?? throw "null pointer dereference")._w.write(((@:checkr _z ?? throw "null pointer dereference")._buf.__slice__(0, (2 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>)), __0:stdgo.GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        //"file:///home/runner/.go/go1.21.3/src/compress/gzip/gzip.go#L99"
        if (_err != null) {
            //"file:///home/runner/.go/go1.21.3/src/compress/gzip/gzip.go#L100"
            return _err;
        };
        {
            var __tmp__ = (@:checkr _z ?? throw "null pointer dereference")._w.write(_b);
            _err = @:tmpset0 __tmp__._1;
        };
        //"file:///home/runner/.go/go1.21.3/src/compress/gzip/gzip.go#L103"
        return _err;
    }
    @:keep
    @:tdfield
    static public function reset( _z:stdgo.Ref<stdgo._internal.compress.gzip.Gzip_writer.Writer>, _w:stdgo._internal.io.Io_writer.Writer):Void {
        @:recv var _z:stdgo.Ref<stdgo._internal.compress.gzip.Gzip_writer.Writer> = _z;
        //"file:///home/runner/.go/go1.21.3/src/compress/gzip/gzip.go#L89"
        _z._init(_w, (@:checkr _z ?? throw "null pointer dereference")._level);
    }
    @:keep
    @:tdfield
    static public function _init( _z:stdgo.Ref<stdgo._internal.compress.gzip.Gzip_writer.Writer>, _w:stdgo._internal.io.Io_writer.Writer, _level:stdgo.GoInt):Void {
        @:recv var _z:stdgo.Ref<stdgo._internal.compress.gzip.Gzip_writer.Writer> = _z;
        var _compressor = (@:checkr _z ?? throw "null pointer dereference")._compressor;
        //"file:///home/runner/.go/go1.21.3/src/compress/gzip/gzip.go#L71"
        if (({
            final value = _compressor;
            (value != null && ((value : Dynamic).__nil__ == null || !(value : Dynamic).__nil__));
        })) {
            //"file:///home/runner/.go/go1.21.3/src/compress/gzip/gzip.go#L72"
            _compressor.reset(_w);
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
