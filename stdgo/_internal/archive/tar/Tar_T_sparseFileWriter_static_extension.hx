package stdgo._internal.archive.tar;
@:keep @:allow(stdgo._internal.archive.tar.Tar.T_sparseFileWriter_asInterface) class T_sparseFileWriter_static_extension {
    @:keep
    static public function _physicalRemaining( _sw:stdgo._internal.archive.tar.Tar_T_sparseFileWriter.T_sparseFileWriter):stdgo.GoInt64 {
        @:recv var _sw:stdgo._internal.archive.tar.Tar_T_sparseFileWriter.T_sparseFileWriter = _sw?.__copy__();
        return _sw._fw._physicalRemaining();
    }
    @:keep
    static public function _logicalRemaining( _sw:stdgo._internal.archive.tar.Tar_T_sparseFileWriter.T_sparseFileWriter):stdgo.GoInt64 {
        @:recv var _sw:stdgo._internal.archive.tar.Tar_T_sparseFileWriter.T_sparseFileWriter = _sw?.__copy__();
        return (_sw._sp[((_sw._sp.length) - (1 : stdgo.GoInt) : stdgo.GoInt)]._endOffset() - _sw._pos : stdgo.GoInt64);
    }
    @:keep
    static public function readFrom( _sw:stdgo.Ref<stdgo._internal.archive.tar.Tar_T_sparseFileWriter.T_sparseFileWriter>, _r:stdgo._internal.io.Io_Reader.Reader):{ var _0 : stdgo.GoInt64; var _1 : stdgo.Error; } {
        @:recv var _sw:stdgo.Ref<stdgo._internal.archive.tar.Tar_T_sparseFileWriter.T_sparseFileWriter> = _sw;
        var _n = (0 : stdgo.GoInt64), _err = (null : stdgo.Error);
        var __tmp__ = try {
            { _0 : (stdgo.Go.typeAssert((stdgo.Go.toInterface(_r) : stdgo._internal.io.Io_ReadSeeker.ReadSeeker)) : stdgo._internal.io.Io_ReadSeeker.ReadSeeker), _1 : true };
        } catch(_) {
            { _0 : (null : stdgo._internal.io.Io_ReadSeeker.ReadSeeker), _1 : false };
        }, _rs = __tmp__._0, _ok = __tmp__._1;
        if (_ok) {
            {
                var __tmp__ = _rs.seek((0i64 : stdgo.GoInt64), (1 : stdgo.GoInt)), __1:stdgo.GoInt64 = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                if (_err != null) {
                    _ok = false;
                };
            };
        };
        if (!_ok) {
            return stdgo._internal.io.Io_copy.copy(stdgo.Go.asInterface(({ writer : stdgo.Go.asInterface(_sw) } : stdgo._internal.archive.tar.Tar_T__struct_1.T__struct_1)), _r);
        };
        var _readLastByte:Bool = false;
        var _pos0 = (_sw._pos : stdgo.GoInt64);
        while ((((_sw._logicalRemaining() > (0i64 : stdgo.GoInt64) : Bool) && !_readLastByte : Bool) && (_err == null) : Bool)) {
            var _nf:stdgo.GoInt64 = (0 : stdgo.GoInt64);
            var __0 = (_sw._sp[(0 : stdgo.GoInt)].offset : stdgo.GoInt64), __1 = (_sw._sp[(0 : stdgo.GoInt)]._endOffset() : stdgo.GoInt64);
var _dataEnd = __1, _dataStart = __0;
            if ((_sw._pos < _dataStart : Bool)) {
                _nf = (_dataStart - _sw._pos : stdgo.GoInt64);
                if (_sw._physicalRemaining() == ((0i64 : stdgo.GoInt64))) {
                    _readLastByte = true;
                    _nf--;
                };
                {
                    var __tmp__ = _rs.seek(_nf, (1 : stdgo.GoInt));
                    _err = __tmp__._1;
                };
            } else {
                _nf = (_dataEnd - _sw._pos : stdgo.GoInt64);
                {
                    var __tmp__ = stdgo._internal.io.Io_copyN.copyN(_sw._fw, _rs, _nf);
                    _nf = __tmp__._0;
                    _err = __tmp__._1;
                };
            };
            _sw._pos = (_sw._pos + (_nf) : stdgo.GoInt64);
            if (((_sw._pos >= _dataEnd : Bool) && ((_sw._sp.length) > (1 : stdgo.GoInt) : Bool) : Bool)) {
                _sw._sp = (_sw._sp.__slice__((1 : stdgo.GoInt)) : stdgo._internal.archive.tar.Tar_T_sparseDatas.T_sparseDatas);
            };
        };
        if ((_readLastByte && (_err == null) : Bool)) {
            {
                var __tmp__ = stdgo._internal.archive.tar.Tar__mustReadFull._mustReadFull(_rs, (new stdgo.Slice<stdgo.GoUInt8>(1, 1, ...[(0 : stdgo.GoUInt8)]).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>));
                _err = __tmp__._1;
            };
            _sw._pos++;
        };
        _n = (_sw._pos - _pos0 : stdgo.GoInt64);
        if (stdgo.Go.toInterface(_err) == (stdgo.Go.toInterface(stdgo._internal.io.Io_eof.eof))) {
            return { _0 : _n, _1 : stdgo._internal.io.Io_errUnexpectedEOF.errUnexpectedEOF };
        } else if (stdgo.Go.toInterface(_err) == (stdgo.Go.toInterface(stdgo._internal.archive.tar.Tar_errWriteTooLong.errWriteTooLong))) {
            return { _0 : _n, _1 : stdgo._internal.archive.tar.Tar__errMissData._errMissData };
        } else if (_err != null) {
            return { _0 : _n, _1 : _err };
        } else if (((_sw._logicalRemaining() == (0i64 : stdgo.GoInt64)) && (_sw._physicalRemaining() > (0i64 : stdgo.GoInt64) : Bool) : Bool)) {
            return { _0 : _n, _1 : stdgo._internal.archive.tar.Tar__errUnrefData._errUnrefData };
        } else {
            return { _0 : _n, _1 : stdgo._internal.archive.tar.Tar__ensureEOF._ensureEOF(_rs) };
        };
    }
    @:keep
    static public function write( _sw:stdgo.Ref<stdgo._internal.archive.tar.Tar_T_sparseFileWriter.T_sparseFileWriter>, _b:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } {
        @:recv var _sw:stdgo.Ref<stdgo._internal.archive.tar.Tar_T_sparseFileWriter.T_sparseFileWriter> = _sw;
        var _n = (0 : stdgo.GoInt), _err = (null : stdgo.Error);
        var _overwrite = ((_b.length : stdgo.GoInt64) > _sw._logicalRemaining() : Bool);
        if (_overwrite) {
            _b = (_b.__slice__(0, _sw._logicalRemaining()) : stdgo.Slice<stdgo.GoUInt8>);
        };
        var _b0 = _b;
        var _endPos = (_sw._pos + (_b.length : stdgo.GoInt64) : stdgo.GoInt64);
        while (((_endPos > _sw._pos : Bool) && (_err == null) : Bool)) {
            var _nf:stdgo.GoInt = (0 : stdgo.GoInt);
            var __0 = (_sw._sp[(0 : stdgo.GoInt)].offset : stdgo.GoInt64), __1 = (_sw._sp[(0 : stdgo.GoInt)]._endOffset() : stdgo.GoInt64);
var _dataEnd = __1, _dataStart = __0;
            if ((_sw._pos < _dataStart : Bool)) {
                var _bf = (_b.__slice__(0, stdgo._internal.archive.tar.Tar__min._min((_b.length : stdgo.GoInt64), (_dataStart - _sw._pos : stdgo.GoInt64))) : stdgo.Slice<stdgo.GoUInt8>);
                {
                    var __tmp__ = (new stdgo._internal.archive.tar.Tar_T_zeroWriter.T_zeroWriter() : stdgo._internal.archive.tar.Tar_T_zeroWriter.T_zeroWriter).write(_bf);
                    _nf = __tmp__._0;
                    _err = __tmp__._1;
                };
            } else {
                var _bf = (_b.__slice__(0, stdgo._internal.archive.tar.Tar__min._min((_b.length : stdgo.GoInt64), (_dataEnd - _sw._pos : stdgo.GoInt64))) : stdgo.Slice<stdgo.GoUInt8>);
                {
                    var __tmp__ = _sw._fw.write(_bf);
                    _nf = __tmp__._0;
                    _err = __tmp__._1;
                };
            };
            _b = (_b.__slice__(_nf) : stdgo.Slice<stdgo.GoUInt8>);
            _sw._pos = (_sw._pos + ((_nf : stdgo.GoInt64)) : stdgo.GoInt64);
            if (((_sw._pos >= _dataEnd : Bool) && ((_sw._sp.length) > (1 : stdgo.GoInt) : Bool) : Bool)) {
                _sw._sp = (_sw._sp.__slice__((1 : stdgo.GoInt)) : stdgo._internal.archive.tar.Tar_T_sparseDatas.T_sparseDatas);
            };
        };
        _n = ((_b0.length) - (_b.length) : stdgo.GoInt);
        if (stdgo.Go.toInterface(_err) == (stdgo.Go.toInterface(stdgo._internal.archive.tar.Tar_errWriteTooLong.errWriteTooLong))) {
            return { _0 : _n, _1 : stdgo._internal.archive.tar.Tar__errMissData._errMissData };
        } else if (_err != null) {
            return { _0 : _n, _1 : _err };
        } else if (((_sw._logicalRemaining() == (0i64 : stdgo.GoInt64)) && (_sw._physicalRemaining() > (0i64 : stdgo.GoInt64) : Bool) : Bool)) {
            return { _0 : _n, _1 : stdgo._internal.archive.tar.Tar__errUnrefData._errUnrefData };
        } else if (_overwrite) {
            return { _0 : _n, _1 : stdgo._internal.archive.tar.Tar_errWriteTooLong.errWriteTooLong };
        } else {
            return { _0 : _n, _1 : (null : stdgo.Error) };
        };
    }
}
