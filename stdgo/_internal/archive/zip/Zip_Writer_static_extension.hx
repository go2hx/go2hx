package stdgo._internal.archive.zip;
@:keep @:allow(stdgo._internal.archive.zip.Zip.Writer_asInterface) class Writer_static_extension {
    @:keep
    static public function _compressor( _w:stdgo.Ref<stdgo._internal.archive.zip.Zip_Writer.Writer>, _method:stdgo.GoUInt16):stdgo._internal.archive.zip.Zip_Compressor.Compressor {
        @:recv var _w:stdgo.Ref<stdgo._internal.archive.zip.Zip_Writer.Writer> = _w;
        var _comp = (_w._compressors[_method] ?? (null : stdgo._internal.archive.zip.Zip_Compressor.Compressor) : stdgo._internal.archive.zip.Zip_Compressor.Compressor);
        if (_comp == null) {
            _comp = stdgo._internal.archive.zip.Zip__compressor._compressor(_method);
        };
        return _comp;
    }
    @:keep
    static public function registerCompressor( _w:stdgo.Ref<stdgo._internal.archive.zip.Zip_Writer.Writer>, _method:stdgo.GoUInt16, _comp:stdgo._internal.archive.zip.Zip_Compressor.Compressor):Void {
        @:recv var _w:stdgo.Ref<stdgo._internal.archive.zip.Zip_Writer.Writer> = _w;
        if (_w._compressors == null) {
            _w._compressors = ({
                final x = new stdgo.GoMap.GoIntMap<stdgo._internal.archive.zip.Zip_Compressor.Compressor>();
                x.__defaultValue__ = () -> (null : stdgo._internal.archive.zip.Zip_Compressor.Compressor);
                {};
                x;
            } : stdgo.GoMap<stdgo.GoUInt16, stdgo._internal.archive.zip.Zip_Compressor.Compressor>);
        };
        _w._compressors[_method] = _comp;
    }
    @:keep
    static public function copy( _w:stdgo.Ref<stdgo._internal.archive.zip.Zip_Writer.Writer>, _f:stdgo.Ref<stdgo._internal.archive.zip.Zip_File.File>):stdgo.Error {
        @:recv var _w:stdgo.Ref<stdgo._internal.archive.zip.Zip_Writer.Writer> = _w;
        var __tmp__ = _f.openRaw(), _r:stdgo._internal.io.Io_Reader.Reader = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            return _err;
        };
        var __tmp__ = _w.createRaw((stdgo.Go.setRef(_f.fileHeader) : stdgo.Ref<stdgo._internal.archive.zip.Zip_FileHeader.FileHeader>)), _fw:stdgo._internal.io.Io_Writer.Writer = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            return _err;
        };
        {
            var __tmp__ = stdgo._internal.io.Io_copy.copy(_fw, _r);
            _err = __tmp__._1;
        };
        return _err;
    }
    @:keep
    static public function createRaw( _w:stdgo.Ref<stdgo._internal.archive.zip.Zip_Writer.Writer>, _fh:stdgo.Ref<stdgo._internal.archive.zip.Zip_FileHeader.FileHeader>):{ var _0 : stdgo._internal.io.Io_Writer.Writer; var _1 : stdgo.Error; } {
        @:recv var _w:stdgo.Ref<stdgo._internal.archive.zip.Zip_Writer.Writer> = _w;
        {
            var _err = (_w._prepare(_fh) : stdgo.Error);
            if (_err != null) {
                return { _0 : (null : stdgo._internal.io.Io_Writer.Writer), _1 : _err };
            };
        };
        _fh.compressedSize = (stdgo._internal.archive.zip.Zip__min64._min64(_fh.compressedSize64, (4294967295i64 : stdgo.GoUInt64)) : stdgo.GoUInt32);
        _fh.uncompressedSize = (stdgo._internal.archive.zip.Zip__min64._min64(_fh.uncompressedSize64, (4294967295i64 : stdgo.GoUInt64)) : stdgo.GoUInt32);
        var _h = (stdgo.Go.setRef(({ fileHeader : _fh, _offset : (_w._cw._count : stdgo.GoUInt64), _raw : true } : stdgo._internal.archive.zip.Zip_T_header.T_header)) : stdgo.Ref<stdgo._internal.archive.zip.Zip_T_header.T_header>);
        _w._dir = (_w._dir.__append__(_h));
        {
            var _err = (stdgo._internal.archive.zip.Zip__writeHeader._writeHeader(stdgo.Go.asInterface(_w._cw), _h) : stdgo.Error);
            if (_err != null) {
                return { _0 : (null : stdgo._internal.io.Io_Writer.Writer), _1 : _err };
            };
        };
        if (stdgo._internal.strings.Strings_hasSuffix.hasSuffix(_fh.name?.__copy__(), ("/" : stdgo.GoString))) {
            _w._last = null;
            return { _0 : stdgo.Go.asInterface((new stdgo._internal.archive.zip.Zip_T_dirWriter.T_dirWriter() : stdgo._internal.archive.zip.Zip_T_dirWriter.T_dirWriter)), _1 : (null : stdgo.Error) };
        };
        var _fw = (stdgo.Go.setRef(({ _header : _h, _zipw : stdgo.Go.asInterface(_w._cw) } : stdgo._internal.archive.zip.Zip_T_fileWriter.T_fileWriter)) : stdgo.Ref<stdgo._internal.archive.zip.Zip_T_fileWriter.T_fileWriter>);
        _w._last = _fw;
        return { _0 : stdgo.Go.asInterface(_fw), _1 : (null : stdgo.Error) };
    }
    @:keep
    static public function createHeader( _w:stdgo.Ref<stdgo._internal.archive.zip.Zip_Writer.Writer>, _fh:stdgo.Ref<stdgo._internal.archive.zip.Zip_FileHeader.FileHeader>):{ var _0 : stdgo._internal.io.Io_Writer.Writer; var _1 : stdgo.Error; } {
        @:recv var _w:stdgo.Ref<stdgo._internal.archive.zip.Zip_Writer.Writer> = _w;
        {
            var _err = (_w._prepare(_fh) : stdgo.Error);
            if (_err != null) {
                return { _0 : (null : stdgo._internal.io.Io_Writer.Writer), _1 : _err };
            };
        };
        var __tmp__ = stdgo._internal.archive.zip.Zip__detectUTF8._detectUTF8(_fh.name?.__copy__()), _utf8Valid1:Bool = __tmp__._0, _utf8Require1:Bool = __tmp__._1;
        var __tmp__ = stdgo._internal.archive.zip.Zip__detectUTF8._detectUTF8(_fh.comment?.__copy__()), _utf8Valid2:Bool = __tmp__._0, _utf8Require2:Bool = __tmp__._1;
        if (_fh.nonUTF8) {
            _fh.flags = (_fh.flags & ((((2048 : stdgo.GoUInt16)) ^ (-1i32 : stdgo.GoInt) : stdgo.GoUInt16)) : stdgo.GoUInt16);
        } else if ((((_utf8Require1 || _utf8Require2 : Bool)) && ((_utf8Valid1 && _utf8Valid2 : Bool)) : Bool)) {
            _fh.flags = (_fh.flags | ((2048 : stdgo.GoUInt16)) : stdgo.GoUInt16);
        };
        _fh.creatorVersion = ((_fh.creatorVersion & (65280 : stdgo.GoUInt16) : stdgo.GoUInt16) | (20 : stdgo.GoUInt16) : stdgo.GoUInt16);
        _fh.readerVersion = (20 : stdgo.GoUInt16);
        if (!_fh.modified.isZero()) {
            {
                var __tmp__ = stdgo._internal.archive.zip.Zip__timeToMsDosTime._timeToMsDosTime(_fh.modified?.__copy__());
                _fh.modifiedDate = __tmp__._0;
                _fh.modifiedTime = __tmp__._1;
            };
            var _mbuf:stdgo.GoArray<stdgo.GoUInt8> = new stdgo.GoArray<stdgo.GoUInt8>(9, 9, ...[for (i in 0 ... 9) (0 : stdgo.GoUInt8)]);
            var _mt = (_fh.modified.unix() : stdgo.GoUInt32);
            var _eb = ((_mbuf.__slice__(0) : stdgo.Slice<stdgo.GoUInt8>) : stdgo._internal.archive.zip.Zip_T_writeBuf.T_writeBuf);
            _eb._uint16((21589 : stdgo.GoUInt16));
            _eb._uint16((5 : stdgo.GoUInt16));
            _eb._uint8((1 : stdgo.GoUInt8));
            _eb._uint32(_mt);
            _fh.extra = (_fh.extra.__append__(...((_mbuf.__slice__(0) : stdgo.Slice<stdgo.GoUInt8>) : Array<stdgo.GoUInt8>)));
        };
        var __0:stdgo._internal.io.Io_Writer.Writer = (null : stdgo._internal.io.Io_Writer.Writer), __1:stdgo.Ref<stdgo._internal.archive.zip.Zip_T_fileWriter.T_fileWriter> = (null : stdgo.Ref<stdgo._internal.archive.zip.Zip_T_fileWriter.T_fileWriter>);
var _fw = __1, _ow = __0;
        var _h = (stdgo.Go.setRef(({ fileHeader : _fh, _offset : (_w._cw._count : stdgo.GoUInt64) } : stdgo._internal.archive.zip.Zip_T_header.T_header)) : stdgo.Ref<stdgo._internal.archive.zip.Zip_T_header.T_header>);
        if (stdgo._internal.strings.Strings_hasSuffix.hasSuffix(_fh.name?.__copy__(), ("/" : stdgo.GoString))) {
            _fh.method = (0 : stdgo.GoUInt16);
            _fh.flags = (_fh.flags & ((((8 : stdgo.GoUInt16)) ^ (-1i32 : stdgo.GoInt) : stdgo.GoUInt16)) : stdgo.GoUInt16);
            _fh.compressedSize = (0u32 : stdgo.GoUInt32);
            _fh.compressedSize64 = (0i64 : stdgo.GoUInt64);
            _fh.uncompressedSize = (0u32 : stdgo.GoUInt32);
            _fh.uncompressedSize64 = (0i64 : stdgo.GoUInt64);
            _ow = stdgo.Go.asInterface((new stdgo._internal.archive.zip.Zip_T_dirWriter.T_dirWriter() : stdgo._internal.archive.zip.Zip_T_dirWriter.T_dirWriter));
        } else {
            _fh.flags = (_fh.flags | ((8 : stdgo.GoUInt16)) : stdgo.GoUInt16);
            _fw = (stdgo.Go.setRef(({ _zipw : stdgo.Go.asInterface(_w._cw), _compCount : (stdgo.Go.setRef(({ _w : stdgo.Go.asInterface(_w._cw) } : stdgo._internal.archive.zip.Zip_T_countWriter.T_countWriter)) : stdgo.Ref<stdgo._internal.archive.zip.Zip_T_countWriter.T_countWriter>), _crc32 : stdgo._internal.hash.crc32.Crc32_newIEEE.newIEEE() } : stdgo._internal.archive.zip.Zip_T_fileWriter.T_fileWriter)) : stdgo.Ref<stdgo._internal.archive.zip.Zip_T_fileWriter.T_fileWriter>);
            var _comp = (_w._compressor(_fh.method) : stdgo._internal.archive.zip.Zip_Compressor.Compressor);
            if (_comp == null) {
                return { _0 : (null : stdgo._internal.io.Io_Writer.Writer), _1 : stdgo._internal.archive.zip.Zip_errAlgorithm.errAlgorithm };
            };
            var _err:stdgo.Error = (null : stdgo.Error);
            {
                var __tmp__ = _comp(stdgo.Go.asInterface(_fw._compCount));
                _fw._comp = __tmp__._0;
                _err = __tmp__._1;
            };
            if (_err != null) {
                return { _0 : (null : stdgo._internal.io.Io_Writer.Writer), _1 : _err };
            };
            _fw._rawCount = (stdgo.Go.setRef(({ _w : _fw._comp } : stdgo._internal.archive.zip.Zip_T_countWriter.T_countWriter)) : stdgo.Ref<stdgo._internal.archive.zip.Zip_T_countWriter.T_countWriter>);
            _fw._header = _h;
            _ow = stdgo.Go.asInterface(_fw);
        };
        _w._dir = (_w._dir.__append__(_h));
        {
            var _err = (stdgo._internal.archive.zip.Zip__writeHeader._writeHeader(stdgo.Go.asInterface(_w._cw), _h) : stdgo.Error);
            if (_err != null) {
                return { _0 : (null : stdgo._internal.io.Io_Writer.Writer), _1 : _err };
            };
        };
        _w._last = _fw;
        return { _0 : _ow, _1 : (null : stdgo.Error) };
    }
    @:keep
    static public function _prepare( _w:stdgo.Ref<stdgo._internal.archive.zip.Zip_Writer.Writer>, _fh:stdgo.Ref<stdgo._internal.archive.zip.Zip_FileHeader.FileHeader>):stdgo.Error {
        @:recv var _w:stdgo.Ref<stdgo._internal.archive.zip.Zip_Writer.Writer> = _w;
        if (((_w._last != null && ((_w._last : Dynamic).__nil__ == null || !(_w._last : Dynamic).__nil__)) && !_w._last._closed : Bool)) {
            {
                var _err = (_w._last._close() : stdgo.Error);
                if (_err != null) {
                    return _err;
                };
            };
        };
        if ((((_w._dir.length) > (0 : stdgo.GoInt) : Bool) && (_w._dir[((_w._dir.length) - (1 : stdgo.GoInt) : stdgo.GoInt)].fileHeader == _fh) : Bool)) {
            return stdgo._internal.errors.Errors_new_.new_(("archive/zip: invalid duplicate FileHeader" : stdgo.GoString));
        };
        return (null : stdgo.Error);
    }
    @:keep
    static public function create( _w:stdgo.Ref<stdgo._internal.archive.zip.Zip_Writer.Writer>, _name:stdgo.GoString):{ var _0 : stdgo._internal.io.Io_Writer.Writer; var _1 : stdgo.Error; } {
        @:recv var _w:stdgo.Ref<stdgo._internal.archive.zip.Zip_Writer.Writer> = _w;
        var _header = (stdgo.Go.setRef(({ name : _name?.__copy__(), method : (8 : stdgo.GoUInt16) } : stdgo._internal.archive.zip.Zip_FileHeader.FileHeader)) : stdgo.Ref<stdgo._internal.archive.zip.Zip_FileHeader.FileHeader>);
        return _w.createHeader(_header);
    }
    @:keep
    static public function close( _w:stdgo.Ref<stdgo._internal.archive.zip.Zip_Writer.Writer>):stdgo.Error {
        @:recv var _w:stdgo.Ref<stdgo._internal.archive.zip.Zip_Writer.Writer> = _w;
        if (((_w._last != null && ((_w._last : Dynamic).__nil__ == null || !(_w._last : Dynamic).__nil__)) && !_w._last._closed : Bool)) {
            {
                var _err = (_w._last._close() : stdgo.Error);
                if (_err != null) {
                    return _err;
                };
            };
            _w._last = null;
        };
        if (_w._closed) {
            return stdgo._internal.errors.Errors_new_.new_(("zip: writer closed twice" : stdgo.GoString));
        };
        _w._closed = true;
        var _start = (_w._cw._count : stdgo.GoInt64);
        for (__0 => _h in _w._dir) {
            var _buf:stdgo.GoArray<stdgo.GoUInt8> = new stdgo.GoArray<stdgo.GoUInt8>(46, 46, ...[for (i in 0 ... 46) (0 : stdgo.GoUInt8)]);
            var _b = ((_buf.__slice__(0) : stdgo.Slice<stdgo.GoUInt8>) : stdgo._internal.archive.zip.Zip_T_writeBuf.T_writeBuf);
            _b._uint32((33639248u32 : stdgo.GoUInt32));
            _b._uint16(_h.fileHeader.creatorVersion);
            _b._uint16(_h.fileHeader.readerVersion);
            _b._uint16(_h.fileHeader.flags);
            _b._uint16(_h.fileHeader.method);
            _b._uint16(_h.fileHeader.modifiedTime);
            _b._uint16(_h.fileHeader.modifiedDate);
            _b._uint32(_h.fileHeader.crc32);
            if ((_h._isZip64() || (_h._offset >= (4294967295i64 : stdgo.GoUInt64) : Bool) : Bool)) {
                _b._uint32((-1u32 : stdgo.GoUInt32));
                _b._uint32((-1u32 : stdgo.GoUInt32));
                var _buf:stdgo.GoArray<stdgo.GoUInt8> = new stdgo.GoArray<stdgo.GoUInt8>(28, 28, ...[for (i in 0 ... 28) (0 : stdgo.GoUInt8)]);
                var _eb = ((_buf.__slice__(0) : stdgo.Slice<stdgo.GoUInt8>) : stdgo._internal.archive.zip.Zip_T_writeBuf.T_writeBuf);
                _eb._uint16((1 : stdgo.GoUInt16));
                _eb._uint16((24 : stdgo.GoUInt16));
                _eb._uint64(_h.fileHeader.uncompressedSize64);
                _eb._uint64(_h.fileHeader.compressedSize64);
                _eb._uint64(_h._offset);
                _h.fileHeader.extra = (_h.fileHeader.extra.__append__(...((_buf.__slice__(0) : stdgo.Slice<stdgo.GoUInt8>) : Array<stdgo.GoUInt8>)));
            } else {
                _b._uint32(_h.fileHeader.compressedSize);
                _b._uint32(_h.fileHeader.uncompressedSize);
            };
            _b._uint16((_h.fileHeader.name.length : stdgo.GoUInt16));
            _b._uint16((_h.fileHeader.extra.length : stdgo.GoUInt16));
            _b._uint16((_h.fileHeader.comment.length : stdgo.GoUInt16));
            _b = (_b.__slice__((4 : stdgo.GoInt)) : stdgo._internal.archive.zip.Zip_T_writeBuf.T_writeBuf);
            _b._uint32(_h.fileHeader.externalAttrs);
            if ((_h._offset > (4294967295i64 : stdgo.GoUInt64) : Bool)) {
                _b._uint32((-1u32 : stdgo.GoUInt32));
            } else {
                _b._uint32((_h._offset : stdgo.GoUInt32));
            };
            {
                var __tmp__ = _w._cw.write((_buf.__slice__(0) : stdgo.Slice<stdgo.GoUInt8>)), __1:stdgo.GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                if (_err != null) {
                    return _err;
                };
            };
            {
                var __tmp__ = stdgo._internal.io.Io_writeString.writeString(stdgo.Go.asInterface(_w._cw), _h.fileHeader.name?.__copy__()), __2:stdgo.GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                if (_err != null) {
                    return _err;
                };
            };
            {
                var __tmp__ = _w._cw.write(_h.fileHeader.extra), __3:stdgo.GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                if (_err != null) {
                    return _err;
                };
            };
            {
                var __tmp__ = stdgo._internal.io.Io_writeString.writeString(stdgo.Go.asInterface(_w._cw), _h.fileHeader.comment?.__copy__()), __4:stdgo.GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                if (_err != null) {
                    return _err;
                };
            };
        };
        var _end = (_w._cw._count : stdgo.GoInt64);
        var _records = (_w._dir.length : stdgo.GoUInt64);
        var _size = ((_end - _start : stdgo.GoInt64) : stdgo.GoUInt64);
        var _offset = (_start : stdgo.GoUInt64);
        {
            var _f = (_w._testHookCloseSizeOffset : (stdgo.GoUInt64, stdgo.GoUInt64) -> Void);
            if (_f != null) {
                _f(_size, _offset);
            };
        };
        if ((((_records >= (65535i64 : stdgo.GoUInt64) : Bool) || (_size >= (4294967295i64 : stdgo.GoUInt64) : Bool) : Bool) || (_offset >= (4294967295i64 : stdgo.GoUInt64) : Bool) : Bool)) {
            var _buf:stdgo.GoArray<stdgo.GoUInt8> = new stdgo.GoArray<stdgo.GoUInt8>(76, 76, ...[for (i in 0 ... 76) (0 : stdgo.GoUInt8)]);
            var _b = ((_buf.__slice__(0) : stdgo.Slice<stdgo.GoUInt8>) : stdgo._internal.archive.zip.Zip_T_writeBuf.T_writeBuf);
            _b._uint32((101075792u32 : stdgo.GoUInt32));
            _b._uint64((44i64 : stdgo.GoUInt64));
            _b._uint16((45 : stdgo.GoUInt16));
            _b._uint16((45 : stdgo.GoUInt16));
            _b._uint32((0u32 : stdgo.GoUInt32));
            _b._uint32((0u32 : stdgo.GoUInt32));
            _b._uint64(_records);
            _b._uint64(_records);
            _b._uint64(_size);
            _b._uint64(_offset);
            _b._uint32((117853008u32 : stdgo.GoUInt32));
            _b._uint32((0u32 : stdgo.GoUInt32));
            _b._uint64((_end : stdgo.GoUInt64));
            _b._uint32((1u32 : stdgo.GoUInt32));
            {
                var __tmp__ = _w._cw.write((_buf.__slice__(0) : stdgo.Slice<stdgo.GoUInt8>)), __1:stdgo.GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                if (_err != null) {
                    return _err;
                };
            };
            _records = (65535i64 : stdgo.GoUInt64);
            _size = (4294967295i64 : stdgo.GoUInt64);
            _offset = (4294967295i64 : stdgo.GoUInt64);
        };
        var _buf:stdgo.GoArray<stdgo.GoUInt8> = new stdgo.GoArray<stdgo.GoUInt8>(22, 22, ...[for (i in 0 ... 22) (0 : stdgo.GoUInt8)]);
        var _b = ((_buf.__slice__(0) : stdgo.Slice<stdgo.GoUInt8>) : stdgo._internal.archive.zip.Zip_T_writeBuf.T_writeBuf);
        _b._uint32((101010256u32 : stdgo.GoUInt32));
        _b = (_b.__slice__((4 : stdgo.GoInt)) : stdgo._internal.archive.zip.Zip_T_writeBuf.T_writeBuf);
        _b._uint16((_records : stdgo.GoUInt16));
        _b._uint16((_records : stdgo.GoUInt16));
        _b._uint32((_size : stdgo.GoUInt32));
        _b._uint32((_offset : stdgo.GoUInt32));
        _b._uint16((_w._comment.length : stdgo.GoUInt16));
        {
            var __tmp__ = _w._cw.write((_buf.__slice__(0) : stdgo.Slice<stdgo.GoUInt8>)), __1:stdgo.GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                return _err;
            };
        };
        {
            var __tmp__ = stdgo._internal.io.Io_writeString.writeString(stdgo.Go.asInterface(_w._cw), _w._comment?.__copy__()), __2:stdgo.GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                return _err;
            };
        };
        return (stdgo.Go.typeAssert((stdgo.Go.toInterface(_w._cw._w) : stdgo.Ref<stdgo._internal.bufio.Bufio_Writer.Writer>)) : stdgo.Ref<stdgo._internal.bufio.Bufio_Writer.Writer>).flush();
    }
    @:keep
    static public function setComment( _w:stdgo.Ref<stdgo._internal.archive.zip.Zip_Writer.Writer>, _comment:stdgo.GoString):stdgo.Error {
        @:recv var _w:stdgo.Ref<stdgo._internal.archive.zip.Zip_Writer.Writer> = _w;
        if (((_comment.length) > (65535 : stdgo.GoInt) : Bool)) {
            return stdgo._internal.errors.Errors_new_.new_(("zip: Writer.Comment too long" : stdgo.GoString));
        };
        _w._comment = _comment?.__copy__();
        return (null : stdgo.Error);
    }
    @:keep
    static public function flush( _w:stdgo.Ref<stdgo._internal.archive.zip.Zip_Writer.Writer>):stdgo.Error {
        @:recv var _w:stdgo.Ref<stdgo._internal.archive.zip.Zip_Writer.Writer> = _w;
        return (stdgo.Go.typeAssert((stdgo.Go.toInterface(_w._cw._w) : stdgo.Ref<stdgo._internal.bufio.Bufio_Writer.Writer>)) : stdgo.Ref<stdgo._internal.bufio.Bufio_Writer.Writer>).flush();
    }
    @:keep
    static public function setOffset( _w:stdgo.Ref<stdgo._internal.archive.zip.Zip_Writer.Writer>, _n:stdgo.GoInt64):Void {
        @:recv var _w:stdgo.Ref<stdgo._internal.archive.zip.Zip_Writer.Writer> = _w;
        if (_w._cw._count != ((0i64 : stdgo.GoInt64))) {
            throw stdgo.Go.toInterface(("zip: SetOffset called after data was written" : stdgo.GoString));
        };
        _w._cw._count = _n;
    }
}
