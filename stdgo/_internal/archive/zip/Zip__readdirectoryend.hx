package stdgo._internal.archive.zip;
function _readDirectoryEnd(_r:stdgo._internal.io.Io_readerat.ReaderAt, _size:stdgo.GoInt64):{ var _0 : stdgo.Ref<stdgo._internal.archive.zip.Zip_t_directoryend.T_directoryEnd>; var _1 : stdgo.GoInt64; var _2 : stdgo.Error; } {
        var _dir = (null : stdgo.Ref<stdgo._internal.archive.zip.Zip_t_directoryend.T_directoryEnd>), _baseOffset = (0 : stdgo.GoInt64), _err = (null : stdgo.Error);
        var _buf:stdgo.Slice<stdgo.GoUInt8> = (null : stdgo.Slice<stdgo.GoUInt8>);
        var _directoryEndOffset:stdgo.GoInt64 = (0 : stdgo.GoInt64);
        //"file:///home/runner/.go/go1.21.3/src/archive/zip/reader.go#L571"
        for (_i => _bLen in (new stdgo.Slice<stdgo.GoInt64>(2, 2, ...[(1024i64 : stdgo.GoInt64), (66560i64 : stdgo.GoInt64)]).__setNumber64__() : stdgo.Slice<stdgo.GoInt64>)) {
            //"file:///home/runner/.go/go1.21.3/src/archive/zip/reader.go#L572"
            if ((_bLen > _size : Bool)) {
                _bLen = _size;
            };
            _buf = (new stdgo.Slice<stdgo.GoUInt8>((_bLen : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>);
            //"file:///home/runner/.go/go1.21.3/src/archive/zip/reader.go#L576"
            {
                var __tmp__ = _r.readAt(_buf, (_size - _bLen : stdgo.GoInt64)), __0:stdgo.GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                if (((_err != null) && (stdgo.Go.toInterface(_err) != stdgo.Go.toInterface(stdgo._internal.io.Io_eof.eOF)) : Bool)) {
                    //"file:///home/runner/.go/go1.21.3/src/archive/zip/reader.go#L577"
                    return {
                        @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.Ref<stdgo._internal.archive.zip.Zip_t_directoryend.T_directoryEnd>; var _1 : stdgo.GoInt64; var _2 : stdgo.Error; } = { _0 : null, _1 : (0i64 : stdgo.GoInt64), _2 : _err };
                        _dir = __tmp__._0;
                        _baseOffset = __tmp__._1;
                        _err = __tmp__._2;
                        __tmp__;
                    };
                };
            };
            //"file:///home/runner/.go/go1.21.3/src/archive/zip/reader.go#L579"
            {
                var _p = (stdgo._internal.archive.zip.Zip__findsignatureinblock._findSignatureInBlock(_buf) : stdgo.GoInt);
                if ((_p >= (0 : stdgo.GoInt) : Bool)) {
                    _buf = (_buf.__slice__(_p) : stdgo.Slice<stdgo.GoUInt8>);
                    _directoryEndOffset = ((_size - _bLen : stdgo.GoInt64) + (_p : stdgo.GoInt64) : stdgo.GoInt64);
                    //"file:///home/runner/.go/go1.21.3/src/archive/zip/reader.go#L582"
                    break;
                };
            };
            //"file:///home/runner/.go/go1.21.3/src/archive/zip/reader.go#L584"
            if (((_i == (1 : stdgo.GoInt)) || (_bLen == _size) : Bool)) {
                //"file:///home/runner/.go/go1.21.3/src/archive/zip/reader.go#L585"
                return {
                    @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.Ref<stdgo._internal.archive.zip.Zip_t_directoryend.T_directoryEnd>; var _1 : stdgo.GoInt64; var _2 : stdgo.Error; } = { _0 : null, _1 : (0i64 : stdgo.GoInt64), _2 : stdgo._internal.archive.zip.Zip_errformat.errFormat };
                    _dir = __tmp__._0;
                    _baseOffset = __tmp__._1;
                    _err = __tmp__._2;
                    __tmp__;
                };
            };
        };
        var _b = ((_buf.__slice__((4 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>) : stdgo._internal.archive.zip.Zip_t_readbuf.T_readBuf);
        var _d = (stdgo.Go.setRef(({ _diskNbr : (_b._uint16() : stdgo.GoUInt32), _dirDiskNbr : (_b._uint16() : stdgo.GoUInt32), _dirRecordsThisDisk : (_b._uint16() : stdgo.GoUInt64), _directoryRecords : (_b._uint16() : stdgo.GoUInt64), _directorySize : (_b._uint32() : stdgo.GoUInt64), _directoryOffset : (_b._uint32() : stdgo.GoUInt64), _commentLen : _b._uint16() } : stdgo._internal.archive.zip.Zip_t_directoryend.T_directoryEnd)) : stdgo.Ref<stdgo._internal.archive.zip.Zip_t_directoryend.T_directoryEnd>);
        var _l = ((@:checkr _d ?? throw "null pointer dereference")._commentLen : stdgo.GoInt);
        //"file:///home/runner/.go/go1.21.3/src/archive/zip/reader.go#L601"
        if ((_l > (_b.length) : Bool)) {
            //"file:///home/runner/.go/go1.21.3/src/archive/zip/reader.go#L602"
            return {
                @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.Ref<stdgo._internal.archive.zip.Zip_t_directoryend.T_directoryEnd>; var _1 : stdgo.GoInt64; var _2 : stdgo.Error; } = { _0 : null, _1 : (0i64 : stdgo.GoInt64), _2 : stdgo._internal.errors.Errors_new_.new_(("zip: invalid comment length" : stdgo.GoString)) };
                _dir = __tmp__._0;
                _baseOffset = __tmp__._1;
                _err = __tmp__._2;
                __tmp__;
            };
        };
        (@:checkr _d ?? throw "null pointer dereference")._comment = ((_b.__slice__(0, _l) : stdgo._internal.archive.zip.Zip_t_readbuf.T_readBuf) : stdgo.GoString)?.__copy__();
        //"file:///home/runner/.go/go1.21.3/src/archive/zip/reader.go#L607"
        if ((((@:checkr _d ?? throw "null pointer dereference")._directoryRecords == ((65535i64 : stdgo.GoUInt64)) || (@:checkr _d ?? throw "null pointer dereference")._directorySize == ((65535i64 : stdgo.GoUInt64)) : Bool) || ((@:checkr _d ?? throw "null pointer dereference")._directoryOffset == (4294967295i64 : stdgo.GoUInt64)) : Bool)) {
            var __tmp__ = stdgo._internal.archive.zip.Zip__finddirectory64end._findDirectory64End(_r, _directoryEndOffset), _p:stdgo.GoInt64 = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            //"file:///home/runner/.go/go1.21.3/src/archive/zip/reader.go#L609"
            if (((_err == null) && (_p >= (0i64 : stdgo.GoInt64) : Bool) : Bool)) {
                _directoryEndOffset = _p;
                _err = stdgo._internal.archive.zip.Zip__readdirectory64end._readDirectory64End(_r, _p, _d);
            };
            //"file:///home/runner/.go/go1.21.3/src/archive/zip/reader.go#L613"
            if (_err != null) {
                //"file:///home/runner/.go/go1.21.3/src/archive/zip/reader.go#L614"
                return {
                    @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.Ref<stdgo._internal.archive.zip.Zip_t_directoryend.T_directoryEnd>; var _1 : stdgo.GoInt64; var _2 : stdgo.Error; } = { _0 : null, _1 : (0i64 : stdgo.GoInt64), _2 : _err };
                    _dir = __tmp__._0;
                    _baseOffset = __tmp__._1;
                    _err = __tmp__._2;
                    __tmp__;
                };
            };
        };
        var _maxInt64 = ((9223372036854775807i64 : stdgo.GoUInt64) : stdgo.GoUInt64);
        //"file:///home/runner/.go/go1.21.3/src/archive/zip/reader.go#L619"
        if ((((@:checkr _d ?? throw "null pointer dereference")._directorySize > _maxInt64 : Bool) || ((@:checkr _d ?? throw "null pointer dereference")._directoryOffset > _maxInt64 : Bool) : Bool)) {
            //"file:///home/runner/.go/go1.21.3/src/archive/zip/reader.go#L620"
            return {
                @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.Ref<stdgo._internal.archive.zip.Zip_t_directoryend.T_directoryEnd>; var _1 : stdgo.GoInt64; var _2 : stdgo.Error; } = { _0 : null, _1 : (0i64 : stdgo.GoInt64), _2 : stdgo._internal.archive.zip.Zip_errformat.errFormat };
                _dir = __tmp__._0;
                _baseOffset = __tmp__._1;
                _err = __tmp__._2;
                __tmp__;
            };
        };
        _baseOffset = ((_directoryEndOffset - ((@:checkr _d ?? throw "null pointer dereference")._directorySize : stdgo.GoInt64) : stdgo.GoInt64) - ((@:checkr _d ?? throw "null pointer dereference")._directoryOffset : stdgo.GoInt64) : stdgo.GoInt64);
        //"file:///home/runner/.go/go1.21.3/src/archive/zip/reader.go#L626"
        {
            var _o = (_baseOffset + ((@:checkr _d ?? throw "null pointer dereference")._directoryOffset : stdgo.GoInt64) : stdgo.GoInt64);
            if (((_o < (0i64 : stdgo.GoInt64) : Bool) || (_o >= _size : Bool) : Bool)) {
                //"file:///home/runner/.go/go1.21.3/src/archive/zip/reader.go#L627"
                return {
                    @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.Ref<stdgo._internal.archive.zip.Zip_t_directoryend.T_directoryEnd>; var _1 : stdgo.GoInt64; var _2 : stdgo.Error; } = { _0 : null, _1 : (0i64 : stdgo.GoInt64), _2 : stdgo._internal.archive.zip.Zip_errformat.errFormat };
                    _dir = __tmp__._0;
                    _baseOffset = __tmp__._1;
                    _err = __tmp__._2;
                    __tmp__;
                };
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/archive/zip/reader.go#L635"
        if ((_baseOffset > (0i64 : stdgo.GoInt64) : Bool)) {
            var _off = ((@:checkr _d ?? throw "null pointer dereference")._directoryOffset : stdgo.GoInt64);
            var _rs = stdgo._internal.io.Io_newsectionreader.newSectionReader(_r, _off, (_size - _off : stdgo.GoInt64));
            //"file:///home/runner/.go/go1.21.3/src/archive/zip/reader.go#L638"
            if (stdgo._internal.archive.zip.Zip__readdirectoryheader._readDirectoryHeader((stdgo.Go.setRef((new stdgo._internal.archive.zip.Zip_file.File() : stdgo._internal.archive.zip.Zip_file.File)) : stdgo.Ref<stdgo._internal.archive.zip.Zip_file.File>), stdgo.Go.asInterface(_rs)) == null) {
                _baseOffset = (0i64 : stdgo.GoInt64);
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/archive/zip/reader.go#L643"
        return {
            @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.Ref<stdgo._internal.archive.zip.Zip_t_directoryend.T_directoryEnd>; var _1 : stdgo.GoInt64; var _2 : stdgo.Error; } = { _0 : _d, _1 : _baseOffset, _2 : (null : stdgo.Error) };
            _dir = __tmp__._0;
            _baseOffset = __tmp__._1;
            _err = __tmp__._2;
            __tmp__;
        };
    }
