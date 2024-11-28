package stdgo._internal.archive.zip;
function _readDirectoryEnd(_r:stdgo._internal.io.Io_ReaderAt.ReaderAt, _size:stdgo.GoInt64):{ var _0 : stdgo.Ref<stdgo._internal.archive.zip.Zip_T_directoryEnd.T_directoryEnd>; var _1 : stdgo.GoInt64; var _2 : stdgo.Error; } {
        var _dir = (null : stdgo.Ref<stdgo._internal.archive.zip.Zip_T_directoryEnd.T_directoryEnd>), _baseOffset = (0 : stdgo.GoInt64), _err = (null : stdgo.Error);
        var _buf:stdgo.Slice<stdgo.GoUInt8> = (null : stdgo.Slice<stdgo.GoUInt8>);
        var _directoryEndOffset:stdgo.GoInt64 = (0 : stdgo.GoInt64);
        for (_i => _bLen in (new stdgo.Slice<stdgo.GoInt64>(2, 2, ...[(1024i64 : stdgo.GoInt64), (66560i64 : stdgo.GoInt64)]).__setNumber64__() : stdgo.Slice<stdgo.GoInt64>)) {
            if ((_bLen > _size : Bool)) {
                _bLen = _size;
            };
            _buf = (new stdgo.Slice<stdgo.GoUInt8>((_bLen : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>);
            {
                var __tmp__ = _r.readAt(_buf, (_size - _bLen : stdgo.GoInt64)), __0:stdgo.GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                if (((_err != null) && (stdgo.Go.toInterface(_err) != stdgo.Go.toInterface(stdgo._internal.io.Io_eof.eof)) : Bool)) {
                    return {
                        final __tmp__:{ var _0 : stdgo.Ref<stdgo._internal.archive.zip.Zip_T_directoryEnd.T_directoryEnd>; var _1 : stdgo.GoInt64; var _2 : stdgo.Error; } = { _0 : null, _1 : (0i64 : stdgo.GoInt64), _2 : _err };
                        _dir = __tmp__._0;
                        _baseOffset = __tmp__._1;
                        _err = __tmp__._2;
                        __tmp__;
                    };
                };
            };
            {
                var _p = (stdgo._internal.archive.zip.Zip__findSignatureInBlock._findSignatureInBlock(_buf) : stdgo.GoInt);
                if ((_p >= (0 : stdgo.GoInt) : Bool)) {
                    _buf = (_buf.__slice__(_p) : stdgo.Slice<stdgo.GoUInt8>);
                    _directoryEndOffset = ((_size - _bLen : stdgo.GoInt64) + (_p : stdgo.GoInt64) : stdgo.GoInt64);
                    break;
                };
            };
            if (((_i == (1 : stdgo.GoInt)) || (_bLen == _size) : Bool)) {
                return {
                    final __tmp__:{ var _0 : stdgo.Ref<stdgo._internal.archive.zip.Zip_T_directoryEnd.T_directoryEnd>; var _1 : stdgo.GoInt64; var _2 : stdgo.Error; } = { _0 : null, _1 : (0i64 : stdgo.GoInt64), _2 : stdgo._internal.archive.zip.Zip_errFormat.errFormat };
                    _dir = __tmp__._0;
                    _baseOffset = __tmp__._1;
                    _err = __tmp__._2;
                    __tmp__;
                };
            };
        };
        var _b = ((_buf.__slice__((4 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>) : stdgo._internal.archive.zip.Zip_T_readBuf.T_readBuf);
        var _d = (stdgo.Go.setRef(({ _diskNbr : (_b._uint16() : stdgo.GoUInt32), _dirDiskNbr : (_b._uint16() : stdgo.GoUInt32), _dirRecordsThisDisk : (_b._uint16() : stdgo.GoUInt64), _directoryRecords : (_b._uint16() : stdgo.GoUInt64), _directorySize : (_b._uint32() : stdgo.GoUInt64), _directoryOffset : (_b._uint32() : stdgo.GoUInt64), _commentLen : _b._uint16() } : stdgo._internal.archive.zip.Zip_T_directoryEnd.T_directoryEnd)) : stdgo.Ref<stdgo._internal.archive.zip.Zip_T_directoryEnd.T_directoryEnd>);
        var _l = (_d._commentLen : stdgo.GoInt);
        if ((_l > (_b.length) : Bool)) {
            return {
                final __tmp__:{ var _0 : stdgo.Ref<stdgo._internal.archive.zip.Zip_T_directoryEnd.T_directoryEnd>; var _1 : stdgo.GoInt64; var _2 : stdgo.Error; } = { _0 : null, _1 : (0i64 : stdgo.GoInt64), _2 : stdgo._internal.errors.Errors_new_.new_(("zip: invalid comment length" : stdgo.GoString)) };
                _dir = __tmp__._0;
                _baseOffset = __tmp__._1;
                _err = __tmp__._2;
                __tmp__;
            };
        };
        _d._comment = ((_b.__slice__(0, _l) : stdgo._internal.archive.zip.Zip_T_readBuf.T_readBuf) : stdgo.GoString)?.__copy__();
        if (((_d._directoryRecords == ((65535i64 : stdgo.GoUInt64)) || _d._directorySize == ((65535i64 : stdgo.GoUInt64)) : Bool) || (_d._directoryOffset == (4294967295i64 : stdgo.GoUInt64)) : Bool)) {
            var __tmp__ = stdgo._internal.archive.zip.Zip__findDirectory64End._findDirectory64End(_r, _directoryEndOffset), _p:stdgo.GoInt64 = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (((_err == null) && (_p >= (0i64 : stdgo.GoInt64) : Bool) : Bool)) {
                _directoryEndOffset = _p;
                _err = stdgo._internal.archive.zip.Zip__readDirectory64End._readDirectory64End(_r, _p, _d);
            };
            if (_err != null) {
                return {
                    final __tmp__:{ var _0 : stdgo.Ref<stdgo._internal.archive.zip.Zip_T_directoryEnd.T_directoryEnd>; var _1 : stdgo.GoInt64; var _2 : stdgo.Error; } = { _0 : null, _1 : (0i64 : stdgo.GoInt64), _2 : _err };
                    _dir = __tmp__._0;
                    _baseOffset = __tmp__._1;
                    _err = __tmp__._2;
                    __tmp__;
                };
            };
        };
        var _maxInt64 = ((9223372036854775807i64 : stdgo.GoUInt64) : stdgo.GoUInt64);
        if (((_d._directorySize > _maxInt64 : Bool) || (_d._directoryOffset > _maxInt64 : Bool) : Bool)) {
            return {
                final __tmp__:{ var _0 : stdgo.Ref<stdgo._internal.archive.zip.Zip_T_directoryEnd.T_directoryEnd>; var _1 : stdgo.GoInt64; var _2 : stdgo.Error; } = { _0 : null, _1 : (0i64 : stdgo.GoInt64), _2 : stdgo._internal.archive.zip.Zip_errFormat.errFormat };
                _dir = __tmp__._0;
                _baseOffset = __tmp__._1;
                _err = __tmp__._2;
                __tmp__;
            };
        };
        _baseOffset = ((_directoryEndOffset - (_d._directorySize : stdgo.GoInt64) : stdgo.GoInt64) - (_d._directoryOffset : stdgo.GoInt64) : stdgo.GoInt64);
        {
            var _o = (_baseOffset + (_d._directoryOffset : stdgo.GoInt64) : stdgo.GoInt64);
            if (((_o < (0i64 : stdgo.GoInt64) : Bool) || (_o >= _size : Bool) : Bool)) {
                return {
                    final __tmp__:{ var _0 : stdgo.Ref<stdgo._internal.archive.zip.Zip_T_directoryEnd.T_directoryEnd>; var _1 : stdgo.GoInt64; var _2 : stdgo.Error; } = { _0 : null, _1 : (0i64 : stdgo.GoInt64), _2 : stdgo._internal.archive.zip.Zip_errFormat.errFormat };
                    _dir = __tmp__._0;
                    _baseOffset = __tmp__._1;
                    _err = __tmp__._2;
                    __tmp__;
                };
            };
        };
        if ((_baseOffset > (0i64 : stdgo.GoInt64) : Bool)) {
            var _off = (_d._directoryOffset : stdgo.GoInt64);
            var _rs = stdgo._internal.io.Io_newSectionReader.newSectionReader(_r, _off, (_size - _off : stdgo.GoInt64));
            if (stdgo._internal.archive.zip.Zip__readDirectoryHeader._readDirectoryHeader((stdgo.Go.setRef((new stdgo._internal.archive.zip.Zip_File.File() : stdgo._internal.archive.zip.Zip_File.File)) : stdgo.Ref<stdgo._internal.archive.zip.Zip_File.File>), stdgo.Go.asInterface(_rs)) == null) {
                _baseOffset = (0i64 : stdgo.GoInt64);
            };
        };
        return {
            final __tmp__:{ var _0 : stdgo.Ref<stdgo._internal.archive.zip.Zip_T_directoryEnd.T_directoryEnd>; var _1 : stdgo.GoInt64; var _2 : stdgo.Error; } = { _0 : _d, _1 : _baseOffset, _2 : (null : stdgo.Error) };
            _dir = __tmp__._0;
            _baseOffset = __tmp__._1;
            _err = __tmp__._2;
            __tmp__;
        };
    }
