package stdgo._internal.archive.zip;
@:keep @:allow(stdgo._internal.archive.zip.Zip.Writer_asInterface) class Writer_static_extension {
    @:keep
    @:tdfield
    static public function _compressor( _w:stdgo.Ref<stdgo._internal.archive.zip.Zip_writer.Writer>, _method:stdgo.GoUInt16):stdgo._internal.archive.zip.Zip_compressor.Compressor {
        @:recv var _w:stdgo.Ref<stdgo._internal.archive.zip.Zip_writer.Writer> = _w;
        var _comp = ((@:checkr _w ?? throw "null pointer dereference")._compressors[_method] ?? (null : stdgo._internal.archive.zip.Zip_compressor.Compressor) : stdgo._internal.archive.zip.Zip_compressor.Compressor);
        if (_comp == null) {
            _comp = stdgo._internal.archive.zip.Zip__compressor._compressor(_method);
        };
        return _comp;
    }
    @:keep
    @:tdfield
    static public function registerCompressor( _w:stdgo.Ref<stdgo._internal.archive.zip.Zip_writer.Writer>, _method:stdgo.GoUInt16, _comp:stdgo._internal.archive.zip.Zip_compressor.Compressor):Void {
        @:recv var _w:stdgo.Ref<stdgo._internal.archive.zip.Zip_writer.Writer> = _w;
        if ((@:checkr _w ?? throw "null pointer dereference")._compressors == null) {
            (@:checkr _w ?? throw "null pointer dereference")._compressors = (({
                final x = new stdgo.GoMap.GoIntMap<stdgo._internal.archive.zip.Zip_compressor.Compressor>();
                x.__defaultValue__ = () -> (null : stdgo._internal.archive.zip.Zip_compressor.Compressor);
                {};
                x;
            } : stdgo.GoMap<stdgo.GoUInt16, stdgo._internal.archive.zip.Zip_compressor.Compressor>) : stdgo.GoMap<stdgo.GoUInt16, stdgo._internal.archive.zip.Zip_compressor.Compressor>);
        };
        (@:checkr _w ?? throw "null pointer dereference")._compressors[_method] = _comp;
    }
    @:keep
    @:tdfield
    static public function copy( _w:stdgo.Ref<stdgo._internal.archive.zip.Zip_writer.Writer>, _f:stdgo.Ref<stdgo._internal.archive.zip.Zip_file.File>):stdgo.Error {
        @:recv var _w:stdgo.Ref<stdgo._internal.archive.zip.Zip_writer.Writer> = _w;
        var __tmp__ = @:check2r _f.openRaw(), _r:stdgo._internal.io.Io_reader.Reader = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            return _err;
        };
        var __tmp__ = @:check2r _w.createRaw((stdgo.Go.setRef((@:checkr _f ?? throw "null pointer dereference").fileHeader) : stdgo.Ref<stdgo._internal.archive.zip.Zip_fileheader.FileHeader>)), _fw:stdgo._internal.io.Io_writer.Writer = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            return _err;
        };
        {
            var __tmp__ = stdgo._internal.io.Io_copy.copy(_fw, _r);
            _err = @:tmpset0 __tmp__._1;
        };
        return _err;
    }
    @:keep
    @:tdfield
    static public function createRaw( _w:stdgo.Ref<stdgo._internal.archive.zip.Zip_writer.Writer>, _fh:stdgo.Ref<stdgo._internal.archive.zip.Zip_fileheader.FileHeader>):{ var _0 : stdgo._internal.io.Io_writer.Writer; var _1 : stdgo.Error; } {
        @:recv var _w:stdgo.Ref<stdgo._internal.archive.zip.Zip_writer.Writer> = _w;
        {
            var _err = (@:check2r _w._prepare(_fh) : stdgo.Error);
            if (_err != null) {
                return { _0 : (null : stdgo._internal.io.Io_writer.Writer), _1 : _err };
            };
        };
        (@:checkr _fh ?? throw "null pointer dereference").compressedSize = (stdgo._internal.archive.zip.Zip__min64._min64((@:checkr _fh ?? throw "null pointer dereference").compressedSize64, (4294967295i64 : stdgo.GoUInt64)) : stdgo.GoUInt32);
        (@:checkr _fh ?? throw "null pointer dereference").uncompressedSize = (stdgo._internal.archive.zip.Zip__min64._min64((@:checkr _fh ?? throw "null pointer dereference").uncompressedSize64, (4294967295i64 : stdgo.GoUInt64)) : stdgo.GoUInt32);
        var _h = (stdgo.Go.setRef(({ fileHeader : _fh, _offset : ((@:checkr (@:checkr _w ?? throw "null pointer dereference")._cw ?? throw "null pointer dereference")._count : stdgo.GoUInt64), _raw : true } : stdgo._internal.archive.zip.Zip_t_header.T_header)) : stdgo.Ref<stdgo._internal.archive.zip.Zip_t_header.T_header>);
        (@:checkr _w ?? throw "null pointer dereference")._dir = ((@:checkr _w ?? throw "null pointer dereference")._dir.__append__(_h));
        {
            var _err = (stdgo._internal.archive.zip.Zip__writeheader._writeHeader(stdgo.Go.asInterface((@:checkr _w ?? throw "null pointer dereference")._cw), _h) : stdgo.Error);
            if (_err != null) {
                return { _0 : (null : stdgo._internal.io.Io_writer.Writer), _1 : _err };
            };
        };
        if (stdgo._internal.strings.Strings_hassuffix.hasSuffix((@:checkr _fh ?? throw "null pointer dereference").name?.__copy__(), ("/" : stdgo.GoString))) {
            (@:checkr _w ?? throw "null pointer dereference")._last = null;
            return { _0 : stdgo.Go.asInterface((new stdgo._internal.archive.zip.Zip_t_dirwriter.T_dirWriter() : stdgo._internal.archive.zip.Zip_t_dirwriter.T_dirWriter)), _1 : (null : stdgo.Error) };
        };
        var _fw = (stdgo.Go.setRef(({ _header : _h, _zipw : stdgo.Go.asInterface((@:checkr _w ?? throw "null pointer dereference")._cw) } : stdgo._internal.archive.zip.Zip_t_filewriter.T_fileWriter)) : stdgo.Ref<stdgo._internal.archive.zip.Zip_t_filewriter.T_fileWriter>);
        (@:checkr _w ?? throw "null pointer dereference")._last = _fw;
        return { _0 : stdgo.Go.asInterface(_fw), _1 : (null : stdgo.Error) };
    }
    @:keep
    @:tdfield
    static public function createHeader( _w:stdgo.Ref<stdgo._internal.archive.zip.Zip_writer.Writer>, _fh:stdgo.Ref<stdgo._internal.archive.zip.Zip_fileheader.FileHeader>):{ var _0 : stdgo._internal.io.Io_writer.Writer; var _1 : stdgo.Error; } {
        @:recv var _w:stdgo.Ref<stdgo._internal.archive.zip.Zip_writer.Writer> = _w;
        {
            var _err = (@:check2r _w._prepare(_fh) : stdgo.Error);
            if (_err != null) {
                return { _0 : (null : stdgo._internal.io.Io_writer.Writer), _1 : _err };
            };
        };
        var __tmp__ = stdgo._internal.archive.zip.Zip__detectutf8._detectUTF8((@:checkr _fh ?? throw "null pointer dereference").name?.__copy__()), _utf8Valid1:Bool = __tmp__._0, _utf8Require1:Bool = __tmp__._1;
        var __tmp__ = stdgo._internal.archive.zip.Zip__detectutf8._detectUTF8((@:checkr _fh ?? throw "null pointer dereference").comment?.__copy__()), _utf8Valid2:Bool = __tmp__._0, _utf8Require2:Bool = __tmp__._1;
        if ((@:checkr _fh ?? throw "null pointer dereference").nonUTF8) {
            (@:checkr _fh ?? throw "null pointer dereference").flags = ((@:checkr _fh ?? throw "null pointer dereference").flags & ((((2048 : stdgo.GoUInt16)) ^ (-1i32 : stdgo.GoInt32) : stdgo.GoUInt16)) : stdgo.GoUInt16);
        } else if ((((_utf8Require1 || _utf8Require2 : Bool)) && ((_utf8Valid1 && _utf8Valid2 : Bool)) : Bool)) {
            (@:checkr _fh ?? throw "null pointer dereference").flags = ((@:checkr _fh ?? throw "null pointer dereference").flags | ((2048 : stdgo.GoUInt16)) : stdgo.GoUInt16);
        };
        (@:checkr _fh ?? throw "null pointer dereference").creatorVersion = (((@:checkr _fh ?? throw "null pointer dereference").creatorVersion & (65280 : stdgo.GoUInt16) : stdgo.GoUInt16) | (20 : stdgo.GoUInt16) : stdgo.GoUInt16);
        (@:checkr _fh ?? throw "null pointer dereference").readerVersion = (20 : stdgo.GoUInt16);
        if (!(@:checkr _fh ?? throw "null pointer dereference").modified.isZero()) {
            {
                var __tmp__ = stdgo._internal.archive.zip.Zip__timetomsdostime._timeToMsDosTime((@:checkr _fh ?? throw "null pointer dereference").modified?.__copy__());
                (@:checkr _fh ?? throw "null pointer dereference").modifiedDate = @:tmpset0 __tmp__._0;
                (@:checkr _fh ?? throw "null pointer dereference").modifiedTime = @:tmpset0 __tmp__._1;
            };
            var _mbuf:stdgo.GoArray<stdgo.GoUInt8> = new stdgo.GoArray<stdgo.GoUInt8>(9, 9).__setNumber32__();
            var _mt = ((@:checkr _fh ?? throw "null pointer dereference").modified.unix() : stdgo.GoUInt32);
            var _eb = ((_mbuf.__slice__(0) : stdgo.Slice<stdgo.GoUInt8>) : stdgo._internal.archive.zip.Zip_t_writebuf.T_writeBuf);
            @:check2 _eb._uint16((21589 : stdgo.GoUInt16));
            @:check2 _eb._uint16((5 : stdgo.GoUInt16));
            @:check2 _eb._uint8((1 : stdgo.GoUInt8));
            @:check2 _eb._uint32(_mt);
            (@:checkr _fh ?? throw "null pointer dereference").extra = ((@:checkr _fh ?? throw "null pointer dereference").extra.__append__(...((_mbuf.__slice__(0) : stdgo.Slice<stdgo.GoUInt8>) : Array<stdgo.GoUInt8>)));
        };
        var __0:stdgo._internal.io.Io_writer.Writer = (null : stdgo._internal.io.Io_writer.Writer), __1:stdgo.Ref<stdgo._internal.archive.zip.Zip_t_filewriter.T_fileWriter> = (null : stdgo.Ref<stdgo._internal.archive.zip.Zip_t_filewriter.T_fileWriter>);
var _fw = __1, _ow = __0;
        var _h = (stdgo.Go.setRef(({ fileHeader : _fh, _offset : ((@:checkr (@:checkr _w ?? throw "null pointer dereference")._cw ?? throw "null pointer dereference")._count : stdgo.GoUInt64) } : stdgo._internal.archive.zip.Zip_t_header.T_header)) : stdgo.Ref<stdgo._internal.archive.zip.Zip_t_header.T_header>);
        if (stdgo._internal.strings.Strings_hassuffix.hasSuffix((@:checkr _fh ?? throw "null pointer dereference").name?.__copy__(), ("/" : stdgo.GoString))) {
            (@:checkr _fh ?? throw "null pointer dereference").method = (0 : stdgo.GoUInt16);
            (@:checkr _fh ?? throw "null pointer dereference").flags = ((@:checkr _fh ?? throw "null pointer dereference").flags & ((((8 : stdgo.GoUInt16)) ^ (-1i32 : stdgo.GoInt32) : stdgo.GoUInt16)) : stdgo.GoUInt16);
            (@:checkr _fh ?? throw "null pointer dereference").compressedSize = (0u32 : stdgo.GoUInt32);
            (@:checkr _fh ?? throw "null pointer dereference").compressedSize64 = (0i64 : stdgo.GoUInt64);
            (@:checkr _fh ?? throw "null pointer dereference").uncompressedSize = (0u32 : stdgo.GoUInt32);
            (@:checkr _fh ?? throw "null pointer dereference").uncompressedSize64 = (0i64 : stdgo.GoUInt64);
            _ow = stdgo.Go.asInterface((new stdgo._internal.archive.zip.Zip_t_dirwriter.T_dirWriter() : stdgo._internal.archive.zip.Zip_t_dirwriter.T_dirWriter));
        } else {
            (@:checkr _fh ?? throw "null pointer dereference").flags = ((@:checkr _fh ?? throw "null pointer dereference").flags | ((8 : stdgo.GoUInt16)) : stdgo.GoUInt16);
            _fw = (stdgo.Go.setRef(({ _zipw : stdgo.Go.asInterface((@:checkr _w ?? throw "null pointer dereference")._cw), _compCount : (stdgo.Go.setRef(({ _w : stdgo.Go.asInterface((@:checkr _w ?? throw "null pointer dereference")._cw) } : stdgo._internal.archive.zip.Zip_t_countwriter.T_countWriter)) : stdgo.Ref<stdgo._internal.archive.zip.Zip_t_countwriter.T_countWriter>), _crc32 : stdgo._internal.hash.crc32.Crc32_newieee.newIEEE() } : stdgo._internal.archive.zip.Zip_t_filewriter.T_fileWriter)) : stdgo.Ref<stdgo._internal.archive.zip.Zip_t_filewriter.T_fileWriter>);
            var _comp = (@:check2r _w._compressor((@:checkr _fh ?? throw "null pointer dereference").method) : stdgo._internal.archive.zip.Zip_compressor.Compressor);
            if (_comp == null) {
                return { _0 : (null : stdgo._internal.io.Io_writer.Writer), _1 : stdgo._internal.archive.zip.Zip_erralgorithm.errAlgorithm };
            };
            var _err:stdgo.Error = (null : stdgo.Error);
            {
                var __tmp__ = _comp(stdgo.Go.asInterface((@:checkr _fw ?? throw "null pointer dereference")._compCount));
                (@:checkr _fw ?? throw "null pointer dereference")._comp = @:tmpset0 __tmp__._0;
                _err = @:tmpset0 __tmp__._1;
            };
            if (_err != null) {
                return { _0 : (null : stdgo._internal.io.Io_writer.Writer), _1 : _err };
            };
            (@:checkr _fw ?? throw "null pointer dereference")._rawCount = (stdgo.Go.setRef(({ _w : (@:checkr _fw ?? throw "null pointer dereference")._comp } : stdgo._internal.archive.zip.Zip_t_countwriter.T_countWriter)) : stdgo.Ref<stdgo._internal.archive.zip.Zip_t_countwriter.T_countWriter>);
            (@:checkr _fw ?? throw "null pointer dereference")._header = _h;
            _ow = stdgo.Go.asInterface(_fw);
        };
        (@:checkr _w ?? throw "null pointer dereference")._dir = ((@:checkr _w ?? throw "null pointer dereference")._dir.__append__(_h));
        {
            var _err = (stdgo._internal.archive.zip.Zip__writeheader._writeHeader(stdgo.Go.asInterface((@:checkr _w ?? throw "null pointer dereference")._cw), _h) : stdgo.Error);
            if (_err != null) {
                return { _0 : (null : stdgo._internal.io.Io_writer.Writer), _1 : _err };
            };
        };
        (@:checkr _w ?? throw "null pointer dereference")._last = _fw;
        return { _0 : _ow, _1 : (null : stdgo.Error) };
    }
    @:keep
    @:tdfield
    static public function _prepare( _w:stdgo.Ref<stdgo._internal.archive.zip.Zip_writer.Writer>, _fh:stdgo.Ref<stdgo._internal.archive.zip.Zip_fileheader.FileHeader>):stdgo.Error {
        @:recv var _w:stdgo.Ref<stdgo._internal.archive.zip.Zip_writer.Writer> = _w;
        if ((((@:checkr _w ?? throw "null pointer dereference")._last != null && (((@:checkr _w ?? throw "null pointer dereference")._last : Dynamic).__nil__ == null || !((@:checkr _w ?? throw "null pointer dereference")._last : Dynamic).__nil__)) && !(@:checkr (@:checkr _w ?? throw "null pointer dereference")._last ?? throw "null pointer dereference")._closed : Bool)) {
            {
                var _err = (@:check2r (@:checkr _w ?? throw "null pointer dereference")._last._close() : stdgo.Error);
                if (_err != null) {
                    return _err;
                };
            };
        };
        if (((((@:checkr _w ?? throw "null pointer dereference")._dir.length) > (0 : stdgo.GoInt) : Bool) && ((@:checkr (@:checkr _w ?? throw "null pointer dereference")._dir[(((@:checkr _w ?? throw "null pointer dereference")._dir.length) - (1 : stdgo.GoInt) : stdgo.GoInt)] ?? throw "null pointer dereference").fileHeader == _fh) : Bool)) {
            return stdgo._internal.errors.Errors_new_.new_(("archive/zip: invalid duplicate FileHeader" : stdgo.GoString));
        };
        return (null : stdgo.Error);
    }
    @:keep
    @:tdfield
    static public function create( _w:stdgo.Ref<stdgo._internal.archive.zip.Zip_writer.Writer>, _name:stdgo.GoString):{ var _0 : stdgo._internal.io.Io_writer.Writer; var _1 : stdgo.Error; } {
        @:recv var _w:stdgo.Ref<stdgo._internal.archive.zip.Zip_writer.Writer> = _w;
        var _header = (stdgo.Go.setRef(({ name : _name?.__copy__(), method : (8 : stdgo.GoUInt16) } : stdgo._internal.archive.zip.Zip_fileheader.FileHeader)) : stdgo.Ref<stdgo._internal.archive.zip.Zip_fileheader.FileHeader>);
        return @:check2r _w.createHeader(_header);
    }
    @:keep
    @:tdfield
    static public function close( _w:stdgo.Ref<stdgo._internal.archive.zip.Zip_writer.Writer>):stdgo.Error {
        @:recv var _w:stdgo.Ref<stdgo._internal.archive.zip.Zip_writer.Writer> = _w;
        if ((((@:checkr _w ?? throw "null pointer dereference")._last != null && (((@:checkr _w ?? throw "null pointer dereference")._last : Dynamic).__nil__ == null || !((@:checkr _w ?? throw "null pointer dereference")._last : Dynamic).__nil__)) && !(@:checkr (@:checkr _w ?? throw "null pointer dereference")._last ?? throw "null pointer dereference")._closed : Bool)) {
            {
                var _err = (@:check2r (@:checkr _w ?? throw "null pointer dereference")._last._close() : stdgo.Error);
                if (_err != null) {
                    return _err;
                };
            };
            (@:checkr _w ?? throw "null pointer dereference")._last = null;
        };
        if ((@:checkr _w ?? throw "null pointer dereference")._closed) {
            return stdgo._internal.errors.Errors_new_.new_(("zip: writer closed twice" : stdgo.GoString));
        };
        (@:checkr _w ?? throw "null pointer dereference")._closed = true;
        var _start = ((@:checkr (@:checkr _w ?? throw "null pointer dereference")._cw ?? throw "null pointer dereference")._count : stdgo.GoInt64);
        for (__0 => _h in (@:checkr _w ?? throw "null pointer dereference")._dir) {
            var _buf:stdgo.GoArray<stdgo.GoUInt8> = new stdgo.GoArray<stdgo.GoUInt8>(46, 46).__setNumber32__();
            var _b = ((_buf.__slice__(0) : stdgo.Slice<stdgo.GoUInt8>) : stdgo._internal.archive.zip.Zip_t_writebuf.T_writeBuf);
            @:check2 _b._uint32((33639248u32 : stdgo.GoUInt32));
            @:check2 _b._uint16((@:checkr _h ?? throw "null pointer dereference").fileHeader.creatorVersion);
            @:check2 _b._uint16((@:checkr _h ?? throw "null pointer dereference").fileHeader.readerVersion);
            @:check2 _b._uint16((@:checkr _h ?? throw "null pointer dereference").fileHeader.flags);
            @:check2 _b._uint16((@:checkr _h ?? throw "null pointer dereference").fileHeader.method);
            @:check2 _b._uint16((@:checkr _h ?? throw "null pointer dereference").fileHeader.modifiedTime);
            @:check2 _b._uint16((@:checkr _h ?? throw "null pointer dereference").fileHeader.modifiedDate);
            @:check2 _b._uint32((@:checkr _h ?? throw "null pointer dereference").fileHeader.cRC32);
            if ((@:check2r _h._isZip64() || ((@:checkr _h ?? throw "null pointer dereference")._offset >= (4294967295i64 : stdgo.GoUInt64) : Bool) : Bool)) {
                @:check2 _b._uint32((-1u32 : stdgo.GoUInt32));
                @:check2 _b._uint32((-1u32 : stdgo.GoUInt32));
                var _buf:stdgo.GoArray<stdgo.GoUInt8> = new stdgo.GoArray<stdgo.GoUInt8>(28, 28).__setNumber32__();
                var _eb = ((_buf.__slice__(0) : stdgo.Slice<stdgo.GoUInt8>) : stdgo._internal.archive.zip.Zip_t_writebuf.T_writeBuf);
                @:check2 _eb._uint16((1 : stdgo.GoUInt16));
                @:check2 _eb._uint16((24 : stdgo.GoUInt16));
                @:check2 _eb._uint64((@:checkr _h ?? throw "null pointer dereference").fileHeader.uncompressedSize64);
                @:check2 _eb._uint64((@:checkr _h ?? throw "null pointer dereference").fileHeader.compressedSize64);
                @:check2 _eb._uint64((@:checkr _h ?? throw "null pointer dereference")._offset);
                (@:checkr _h ?? throw "null pointer dereference").fileHeader.extra = ((@:checkr _h ?? throw "null pointer dereference").fileHeader.extra.__append__(...((_buf.__slice__(0) : stdgo.Slice<stdgo.GoUInt8>) : Array<stdgo.GoUInt8>)));
            } else {
                @:check2 _b._uint32((@:checkr _h ?? throw "null pointer dereference").fileHeader.compressedSize);
                @:check2 _b._uint32((@:checkr _h ?? throw "null pointer dereference").fileHeader.uncompressedSize);
            };
            @:check2 _b._uint16(((@:checkr _h ?? throw "null pointer dereference").fileHeader.name.length : stdgo.GoUInt16));
            @:check2 _b._uint16(((@:checkr _h ?? throw "null pointer dereference").fileHeader.extra.length : stdgo.GoUInt16));
            @:check2 _b._uint16(((@:checkr _h ?? throw "null pointer dereference").fileHeader.comment.length : stdgo.GoUInt16));
            _b = (_b.__slice__((4 : stdgo.GoInt)) : stdgo._internal.archive.zip.Zip_t_writebuf.T_writeBuf);
            @:check2 _b._uint32((@:checkr _h ?? throw "null pointer dereference").fileHeader.externalAttrs);
            if (((@:checkr _h ?? throw "null pointer dereference")._offset > (4294967295i64 : stdgo.GoUInt64) : Bool)) {
                @:check2 _b._uint32((-1u32 : stdgo.GoUInt32));
            } else {
                @:check2 _b._uint32(((@:checkr _h ?? throw "null pointer dereference")._offset : stdgo.GoUInt32));
            };
            {
                var __tmp__ = @:check2r (@:checkr _w ?? throw "null pointer dereference")._cw.write((_buf.__slice__(0) : stdgo.Slice<stdgo.GoUInt8>)), __1:stdgo.GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                if (_err != null) {
                    return _err;
                };
            };
            {
                var __tmp__ = stdgo._internal.io.Io_writestring.writeString(stdgo.Go.asInterface((@:checkr _w ?? throw "null pointer dereference")._cw), (@:checkr _h ?? throw "null pointer dereference").fileHeader.name?.__copy__()), __2:stdgo.GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                if (_err != null) {
                    return _err;
                };
            };
            {
                var __tmp__ = @:check2r (@:checkr _w ?? throw "null pointer dereference")._cw.write((@:checkr _h ?? throw "null pointer dereference").fileHeader.extra), __3:stdgo.GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                if (_err != null) {
                    return _err;
                };
            };
            {
                var __tmp__ = stdgo._internal.io.Io_writestring.writeString(stdgo.Go.asInterface((@:checkr _w ?? throw "null pointer dereference")._cw), (@:checkr _h ?? throw "null pointer dereference").fileHeader.comment?.__copy__()), __4:stdgo.GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                if (_err != null) {
                    return _err;
                };
            };
        };
        var _end = ((@:checkr (@:checkr _w ?? throw "null pointer dereference")._cw ?? throw "null pointer dereference")._count : stdgo.GoInt64);
        var _records = ((@:checkr _w ?? throw "null pointer dereference")._dir.length : stdgo.GoUInt64);
        var _size = ((_end - _start : stdgo.GoInt64) : stdgo.GoUInt64);
        var _offset = (_start : stdgo.GoUInt64);
        {
            var _f = ((@:checkr _w ?? throw "null pointer dereference")._testHookCloseSizeOffset : (stdgo.GoUInt64, stdgo.GoUInt64) -> Void);
            if (_f != null) {
                _f(_size, _offset);
            };
        };
        if ((((_records >= (65535i64 : stdgo.GoUInt64) : Bool) || (_size >= (4294967295i64 : stdgo.GoUInt64) : Bool) : Bool) || (_offset >= (4294967295i64 : stdgo.GoUInt64) : Bool) : Bool)) {
            var _buf:stdgo.GoArray<stdgo.GoUInt8> = new stdgo.GoArray<stdgo.GoUInt8>(76, 76).__setNumber32__();
            var _b = ((_buf.__slice__(0) : stdgo.Slice<stdgo.GoUInt8>) : stdgo._internal.archive.zip.Zip_t_writebuf.T_writeBuf);
            @:check2 _b._uint32((101075792u32 : stdgo.GoUInt32));
            @:check2 _b._uint64((44i64 : stdgo.GoUInt64));
            @:check2 _b._uint16((45 : stdgo.GoUInt16));
            @:check2 _b._uint16((45 : stdgo.GoUInt16));
            @:check2 _b._uint32((0u32 : stdgo.GoUInt32));
            @:check2 _b._uint32((0u32 : stdgo.GoUInt32));
            @:check2 _b._uint64(_records);
            @:check2 _b._uint64(_records);
            @:check2 _b._uint64(_size);
            @:check2 _b._uint64(_offset);
            @:check2 _b._uint32((117853008u32 : stdgo.GoUInt32));
            @:check2 _b._uint32((0u32 : stdgo.GoUInt32));
            @:check2 _b._uint64((_end : stdgo.GoUInt64));
            @:check2 _b._uint32((1u32 : stdgo.GoUInt32));
            {
                var __tmp__ = @:check2r (@:checkr _w ?? throw "null pointer dereference")._cw.write((_buf.__slice__(0) : stdgo.Slice<stdgo.GoUInt8>)), __1:stdgo.GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                if (_err != null) {
                    return _err;
                };
            };
            _records = (65535i64 : stdgo.GoUInt64);
            _size = (4294967295i64 : stdgo.GoUInt64);
            _offset = (4294967295i64 : stdgo.GoUInt64);
        };
        var _buf:stdgo.GoArray<stdgo.GoUInt8> = new stdgo.GoArray<stdgo.GoUInt8>(22, 22).__setNumber32__();
        var _b = ((_buf.__slice__(0) : stdgo.Slice<stdgo.GoUInt8>) : stdgo._internal.archive.zip.Zip_t_writebuf.T_writeBuf);
        @:check2 _b._uint32((101010256u32 : stdgo.GoUInt32));
        _b = (_b.__slice__((4 : stdgo.GoInt)) : stdgo._internal.archive.zip.Zip_t_writebuf.T_writeBuf);
        @:check2 _b._uint16((_records : stdgo.GoUInt16));
        @:check2 _b._uint16((_records : stdgo.GoUInt16));
        @:check2 _b._uint32((_size : stdgo.GoUInt32));
        @:check2 _b._uint32((_offset : stdgo.GoUInt32));
        @:check2 _b._uint16(((@:checkr _w ?? throw "null pointer dereference")._comment.length : stdgo.GoUInt16));
        {
            var __tmp__ = @:check2r (@:checkr _w ?? throw "null pointer dereference")._cw.write((_buf.__slice__(0) : stdgo.Slice<stdgo.GoUInt8>)), __1:stdgo.GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                return _err;
            };
        };
        {
            var __tmp__ = stdgo._internal.io.Io_writestring.writeString(stdgo.Go.asInterface((@:checkr _w ?? throw "null pointer dereference")._cw), (@:checkr _w ?? throw "null pointer dereference")._comment?.__copy__()), __2:stdgo.GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                return _err;
            };
        };
        return @:check2r (stdgo.Go.typeAssert((stdgo.Go.toInterface((@:checkr (@:checkr _w ?? throw "null pointer dereference")._cw ?? throw "null pointer dereference")._w) : stdgo.Ref<stdgo._internal.bufio.Bufio_writer.Writer>)) : stdgo.Ref<stdgo._internal.bufio.Bufio_writer.Writer>).flush();
    }
    @:keep
    @:tdfield
    static public function setComment( _w:stdgo.Ref<stdgo._internal.archive.zip.Zip_writer.Writer>, _comment:stdgo.GoString):stdgo.Error {
        @:recv var _w:stdgo.Ref<stdgo._internal.archive.zip.Zip_writer.Writer> = _w;
        if (((_comment.length) > (65535 : stdgo.GoInt) : Bool)) {
            return stdgo._internal.errors.Errors_new_.new_(("zip: Writer.Comment too long" : stdgo.GoString));
        };
        (@:checkr _w ?? throw "null pointer dereference")._comment = _comment?.__copy__();
        return (null : stdgo.Error);
    }
    @:keep
    @:tdfield
    static public function flush( _w:stdgo.Ref<stdgo._internal.archive.zip.Zip_writer.Writer>):stdgo.Error {
        @:recv var _w:stdgo.Ref<stdgo._internal.archive.zip.Zip_writer.Writer> = _w;
        return @:check2r (stdgo.Go.typeAssert((stdgo.Go.toInterface((@:checkr (@:checkr _w ?? throw "null pointer dereference")._cw ?? throw "null pointer dereference")._w) : stdgo.Ref<stdgo._internal.bufio.Bufio_writer.Writer>)) : stdgo.Ref<stdgo._internal.bufio.Bufio_writer.Writer>).flush();
    }
    @:keep
    @:tdfield
    static public function setOffset( _w:stdgo.Ref<stdgo._internal.archive.zip.Zip_writer.Writer>, _n:stdgo.GoInt64):Void {
        @:recv var _w:stdgo.Ref<stdgo._internal.archive.zip.Zip_writer.Writer> = _w;
        if ((@:checkr (@:checkr _w ?? throw "null pointer dereference")._cw ?? throw "null pointer dereference")._count != ((0i64 : stdgo.GoInt64))) {
            throw stdgo.Go.toInterface(("zip: SetOffset called after data was written" : stdgo.GoString));
        };
        (@:checkr (@:checkr _w ?? throw "null pointer dereference")._cw ?? throw "null pointer dereference")._count = _n;
    }
}
