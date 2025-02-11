package stdgo._internal.archive.tar;
@:keep @:allow(stdgo._internal.archive.tar.Tar.T_sparseFileWriter_asInterface) class T_sparseFileWriter_static_extension {
    @:keep
    @:tdfield
    static public function _physicalRemaining( _sw:stdgo._internal.archive.tar.Tar_t_sparsefilewriter.T_sparseFileWriter):stdgo.GoInt64 {
        @:recv var _sw:stdgo._internal.archive.tar.Tar_t_sparsefilewriter.T_sparseFileWriter = _sw?.__copy__();
        return _sw._fw._physicalRemaining();
    }
    @:keep
    @:tdfield
    static public function _logicalRemaining( _sw:stdgo._internal.archive.tar.Tar_t_sparsefilewriter.T_sparseFileWriter):stdgo.GoInt64 {
        @:recv var _sw:stdgo._internal.archive.tar.Tar_t_sparsefilewriter.T_sparseFileWriter = _sw?.__copy__();
        return (_sw._sp[((_sw._sp.length) - (1 : stdgo.GoInt) : stdgo.GoInt)]._endOffset() - _sw._pos : stdgo.GoInt64);
    }
    @:keep
    @:tdfield
    static public function readFrom( _sw:stdgo.Ref<stdgo._internal.archive.tar.Tar_t_sparsefilewriter.T_sparseFileWriter>, _r:stdgo._internal.io.Io_reader.Reader):{ var _0 : stdgo.GoInt64; var _1 : stdgo.Error; } {
        @:recv var _sw:stdgo.Ref<stdgo._internal.archive.tar.Tar_t_sparsefilewriter.T_sparseFileWriter> = _sw;
        var _n = (0 : stdgo.GoInt64), _err = (null : stdgo.Error);
        var __tmp__ = try {
            { _0 : (stdgo.Go.typeAssert((stdgo.Go.toInterface(_r) : stdgo._internal.io.Io_readseeker.ReadSeeker)) : stdgo._internal.io.Io_readseeker.ReadSeeker), _1 : true };
        } catch(_) {
            { _0 : (null : stdgo._internal.io.Io_readseeker.ReadSeeker), _1 : false };
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
            return {
                final __tmp__ = stdgo._internal.io.Io_copy.copy(stdgo.Go.asInterface(({ writer : stdgo.Go.asInterface(_sw) } : stdgo._internal.archive.tar.Tar_t__struct_1.T__struct_1)), _r);
                _n = __tmp__._0;
                _err = __tmp__._1;
                { _0 : _n, _1 : _err };
            };
        };
        var _readLastByte:Bool = false;
        var _pos0 = ((@:checkr _sw ?? throw "null pointer dereference")._pos : stdgo.GoInt64);
        while (((((@:checkr _sw ?? throw "null pointer dereference")._logicalRemaining() > (0i64 : stdgo.GoInt64) : Bool) && !_readLastByte : Bool) && (_err == null) : Bool)) {
            var _nf:stdgo.GoInt64 = (0 : stdgo.GoInt64);
            var __0 = ((@:checkr _sw ?? throw "null pointer dereference")._sp[(0 : stdgo.GoInt)].offset : stdgo.GoInt64), __1 = ((@:checkr _sw ?? throw "null pointer dereference")._sp[(0 : stdgo.GoInt)]._endOffset() : stdgo.GoInt64);
var _dataEnd = __1, _dataStart = __0;
            if (((@:checkr _sw ?? throw "null pointer dereference")._pos < _dataStart : Bool)) {
                _nf = (_dataStart - (@:checkr _sw ?? throw "null pointer dereference")._pos : stdgo.GoInt64);
                if ((@:checkr _sw ?? throw "null pointer dereference")._physicalRemaining() == ((0i64 : stdgo.GoInt64))) {
                    _readLastByte = true;
                    _nf--;
                };
                {
                    var __tmp__ = _rs.seek(_nf, (1 : stdgo.GoInt));
                    _err = @:tmpset0 __tmp__._1;
                };
            } else {
                _nf = (_dataEnd - (@:checkr _sw ?? throw "null pointer dereference")._pos : stdgo.GoInt64);
                {
                    var __tmp__ = stdgo._internal.io.Io_copyn.copyN((@:checkr _sw ?? throw "null pointer dereference")._fw, _rs, _nf);
                    _nf = @:tmpset0 __tmp__._0;
                    _err = @:tmpset0 __tmp__._1;
                };
            };
            (@:checkr _sw ?? throw "null pointer dereference")._pos = ((@:checkr _sw ?? throw "null pointer dereference")._pos + (_nf) : stdgo.GoInt64);
            if ((((@:checkr _sw ?? throw "null pointer dereference")._pos >= _dataEnd : Bool) && (((@:checkr _sw ?? throw "null pointer dereference")._sp.length) > (1 : stdgo.GoInt) : Bool) : Bool)) {
                (@:checkr _sw ?? throw "null pointer dereference")._sp = ((@:checkr _sw ?? throw "null pointer dereference")._sp.__slice__((1 : stdgo.GoInt)) : stdgo._internal.archive.tar.Tar_t_sparsedatas.T_sparseDatas);
            };
        };
        if ((_readLastByte && (_err == null) : Bool)) {
            {
                var __tmp__ = stdgo._internal.archive.tar.Tar__mustreadfull._mustReadFull(_rs, (new stdgo.Slice<stdgo.GoUInt8>(1, 1, ...[(0 : stdgo.GoUInt8)]).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>));
                _err = @:tmpset0 __tmp__._1;
            };
            (@:checkr _sw ?? throw "null pointer dereference")._pos++;
        };
        _n = ((@:checkr _sw ?? throw "null pointer dereference")._pos - _pos0 : stdgo.GoInt64);
        if (stdgo.Go.toInterface(_err) == (stdgo.Go.toInterface(stdgo._internal.io.Io_eof.eOF))) {
            return {
                final __tmp__:{ var _0 : stdgo.GoInt64; var _1 : stdgo.Error; } = { _0 : _n, _1 : stdgo._internal.io.Io_errunexpectedeof.errUnexpectedEOF };
                _n = __tmp__._0;
                _err = __tmp__._1;
                __tmp__;
            };
        } else if (stdgo.Go.toInterface(_err) == (stdgo.Go.toInterface(stdgo._internal.archive.tar.Tar_errwritetoolong.errWriteTooLong))) {
            return {
                final __tmp__:{ var _0 : stdgo.GoInt64; var _1 : stdgo.Error; } = { _0 : _n, _1 : stdgo._internal.archive.tar.Tar__errmissdata._errMissData };
                _n = __tmp__._0;
                _err = __tmp__._1;
                __tmp__;
            };
        } else if (_err != null) {
            return {
                final __tmp__:{ var _0 : stdgo.GoInt64; var _1 : stdgo.Error; } = { _0 : _n, _1 : _err };
                _n = __tmp__._0;
                _err = __tmp__._1;
                __tmp__;
            };
        } else if ((((@:checkr _sw ?? throw "null pointer dereference")._logicalRemaining() == (0i64 : stdgo.GoInt64)) && ((@:checkr _sw ?? throw "null pointer dereference")._physicalRemaining() > (0i64 : stdgo.GoInt64) : Bool) : Bool)) {
            return {
                final __tmp__:{ var _0 : stdgo.GoInt64; var _1 : stdgo.Error; } = { _0 : _n, _1 : stdgo._internal.archive.tar.Tar__errunrefdata._errUnrefData };
                _n = __tmp__._0;
                _err = __tmp__._1;
                __tmp__;
            };
        } else {
            return {
                final __tmp__:{ var _0 : stdgo.GoInt64; var _1 : stdgo.Error; } = { _0 : _n, _1 : stdgo._internal.archive.tar.Tar__ensureeof._ensureEOF(_rs) };
                _n = __tmp__._0;
                _err = __tmp__._1;
                __tmp__;
            };
        };
    }
    @:keep
    @:tdfield
    static public function write( _sw:stdgo.Ref<stdgo._internal.archive.tar.Tar_t_sparsefilewriter.T_sparseFileWriter>, _b:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } {
        @:recv var _sw:stdgo.Ref<stdgo._internal.archive.tar.Tar_t_sparsefilewriter.T_sparseFileWriter> = _sw;
        var _n = (0 : stdgo.GoInt), _err = (null : stdgo.Error);
        var _overwrite = ((_b.length : stdgo.GoInt64) > (@:checkr _sw ?? throw "null pointer dereference")._logicalRemaining() : Bool);
        if (_overwrite) {
            _b = (_b.__slice__(0, (@:checkr _sw ?? throw "null pointer dereference")._logicalRemaining()) : stdgo.Slice<stdgo.GoUInt8>);
        };
        var _b0 = _b;
        var _endPos = ((@:checkr _sw ?? throw "null pointer dereference")._pos + (_b.length : stdgo.GoInt64) : stdgo.GoInt64);
        while (((_endPos > (@:checkr _sw ?? throw "null pointer dereference")._pos : Bool) && (_err == null) : Bool)) {
            var _nf:stdgo.GoInt = (0 : stdgo.GoInt);
            var __0 = ((@:checkr _sw ?? throw "null pointer dereference")._sp[(0 : stdgo.GoInt)].offset : stdgo.GoInt64), __1 = ((@:checkr _sw ?? throw "null pointer dereference")._sp[(0 : stdgo.GoInt)]._endOffset() : stdgo.GoInt64);
var _dataEnd = __1, _dataStart = __0;
            if (((@:checkr _sw ?? throw "null pointer dereference")._pos < _dataStart : Bool)) {
                var _bf = (_b.__slice__(0, stdgo._internal.archive.tar.Tar__min._min((_b.length : stdgo.GoInt64), (_dataStart - (@:checkr _sw ?? throw "null pointer dereference")._pos : stdgo.GoInt64))) : stdgo.Slice<stdgo.GoUInt8>);
                {
                    var __tmp__ = (new stdgo._internal.archive.tar.Tar_t_zerowriter.T_zeroWriter() : stdgo._internal.archive.tar.Tar_t_zerowriter.T_zeroWriter).write(_bf);
                    _nf = @:tmpset0 __tmp__._0;
                    _err = @:tmpset0 __tmp__._1;
                };
            } else {
                var _bf = (_b.__slice__(0, stdgo._internal.archive.tar.Tar__min._min((_b.length : stdgo.GoInt64), (_dataEnd - (@:checkr _sw ?? throw "null pointer dereference")._pos : stdgo.GoInt64))) : stdgo.Slice<stdgo.GoUInt8>);
                {
                    var __tmp__ = (@:checkr _sw ?? throw "null pointer dereference")._fw.write(_bf);
                    _nf = @:tmpset0 __tmp__._0;
                    _err = @:tmpset0 __tmp__._1;
                };
            };
            _b = (_b.__slice__(_nf) : stdgo.Slice<stdgo.GoUInt8>);
            (@:checkr _sw ?? throw "null pointer dereference")._pos = ((@:checkr _sw ?? throw "null pointer dereference")._pos + ((_nf : stdgo.GoInt64)) : stdgo.GoInt64);
            if ((((@:checkr _sw ?? throw "null pointer dereference")._pos >= _dataEnd : Bool) && (((@:checkr _sw ?? throw "null pointer dereference")._sp.length) > (1 : stdgo.GoInt) : Bool) : Bool)) {
                (@:checkr _sw ?? throw "null pointer dereference")._sp = ((@:checkr _sw ?? throw "null pointer dereference")._sp.__slice__((1 : stdgo.GoInt)) : stdgo._internal.archive.tar.Tar_t_sparsedatas.T_sparseDatas);
            };
        };
        _n = ((_b0.length) - (_b.length) : stdgo.GoInt);
        if (stdgo.Go.toInterface(_err) == (stdgo.Go.toInterface(stdgo._internal.archive.tar.Tar_errwritetoolong.errWriteTooLong))) {
            return {
                final __tmp__:{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } = { _0 : _n, _1 : stdgo._internal.archive.tar.Tar__errmissdata._errMissData };
                _n = __tmp__._0;
                _err = __tmp__._1;
                __tmp__;
            };
        } else if (_err != null) {
            return {
                final __tmp__:{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } = { _0 : _n, _1 : _err };
                _n = __tmp__._0;
                _err = __tmp__._1;
                __tmp__;
            };
        } else if ((((@:checkr _sw ?? throw "null pointer dereference")._logicalRemaining() == (0i64 : stdgo.GoInt64)) && ((@:checkr _sw ?? throw "null pointer dereference")._physicalRemaining() > (0i64 : stdgo.GoInt64) : Bool) : Bool)) {
            return {
                final __tmp__:{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } = { _0 : _n, _1 : stdgo._internal.archive.tar.Tar__errunrefdata._errUnrefData };
                _n = __tmp__._0;
                _err = __tmp__._1;
                __tmp__;
            };
        } else if (_overwrite) {
            return {
                final __tmp__:{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } = { _0 : _n, _1 : stdgo._internal.archive.tar.Tar_errwritetoolong.errWriteTooLong };
                _n = __tmp__._0;
                _err = __tmp__._1;
                __tmp__;
            };
        } else {
            return {
                final __tmp__:{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } = { _0 : _n, _1 : (null : stdgo.Error) };
                _n = __tmp__._0;
                _err = __tmp__._1;
                __tmp__;
            };
        };
    }
}
