package stdgo._internal.archive.tar;
@:keep @:allow(stdgo._internal.archive.tar.Tar.T_sparseFileReader_asInterface) class T_sparseFileReader_static_extension {
    @:keep
    @:tdfield
    static public function _physicalRemaining( _sr:stdgo._internal.archive.tar.Tar_t_sparsefilereader.T_sparseFileReader):stdgo.GoInt64 {
        @:recv var _sr:stdgo._internal.archive.tar.Tar_t_sparsefilereader.T_sparseFileReader = _sr?.__copy__();
        return _sr._fr._physicalRemaining();
    }
    @:keep
    @:tdfield
    static public function _logicalRemaining( _sr:stdgo._internal.archive.tar.Tar_t_sparsefilereader.T_sparseFileReader):stdgo.GoInt64 {
        @:recv var _sr:stdgo._internal.archive.tar.Tar_t_sparsefilereader.T_sparseFileReader = _sr?.__copy__();
        return (_sr._sp[((_sr._sp.length) - (1 : stdgo.GoInt) : stdgo.GoInt)]._endOffset() - _sr._pos : stdgo.GoInt64);
    }
    @:keep
    @:tdfield
    static public function writeTo( _sr:stdgo.Ref<stdgo._internal.archive.tar.Tar_t_sparsefilereader.T_sparseFileReader>, _w:stdgo._internal.io.Io_writer.Writer):{ var _0 : stdgo.GoInt64; var _1 : stdgo.Error; } {
        @:recv var _sr:stdgo.Ref<stdgo._internal.archive.tar.Tar_t_sparsefilereader.T_sparseFileReader> = _sr;
        var _n = (0 : stdgo.GoInt64), _err = (null : stdgo.Error);
        var __tmp__ = try {
            { _0 : (stdgo.Go.typeAssert((stdgo.Go.toInterface(_w) : stdgo._internal.io.Io_writeseeker.WriteSeeker)) : stdgo._internal.io.Io_writeseeker.WriteSeeker), _1 : true };
        } catch(_) {
            { _0 : (null : stdgo._internal.io.Io_writeseeker.WriteSeeker), _1 : false };
        }, _ws = __tmp__._0, _ok = __tmp__._1;
        if (_ok) {
            {
                var __tmp__ = _ws.seek((0i64 : stdgo.GoInt64), (1 : stdgo.GoInt)), __1:stdgo.GoInt64 = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                if (_err != null) {
                    _ok = false;
                };
            };
        };
        if (!_ok) {
            return {
                final __tmp__ = stdgo._internal.io.Io_copy.copy(_w, stdgo.Go.asInterface(({ reader : stdgo.Go.asInterface(_sr) } : stdgo._internal.archive.tar.Tar_t__struct_0.T__struct_0)));
                _n = __tmp__._0;
                _err = __tmp__._1;
                { _0 : _n, _1 : _err };
            };
        };
        var _writeLastByte:Bool = false;
        var _pos0 = ((@:checkr _sr ?? throw "null pointer dereference")._pos : stdgo.GoInt64);
        while (((((@:checkr _sr ?? throw "null pointer dereference")._logicalRemaining() > (0i64 : stdgo.GoInt64) : Bool) && !_writeLastByte : Bool) && (_err == null) : Bool)) {
            var _nf:stdgo.GoInt64 = (0 : stdgo.GoInt64);
            var __0 = ((@:checkr _sr ?? throw "null pointer dereference")._sp[(0 : stdgo.GoInt)].offset : stdgo.GoInt64), __1 = ((@:checkr _sr ?? throw "null pointer dereference")._sp[(0 : stdgo.GoInt)]._endOffset() : stdgo.GoInt64);
var _holeEnd = __1, _holeStart = __0;
            if (((@:checkr _sr ?? throw "null pointer dereference")._pos < _holeStart : Bool)) {
                _nf = (_holeStart - (@:checkr _sr ?? throw "null pointer dereference")._pos : stdgo.GoInt64);
                {
                    var __tmp__ = stdgo._internal.io.Io_copyn.copyN(_ws, (@:checkr _sr ?? throw "null pointer dereference")._fr, _nf);
                    _nf = @:tmpset0 __tmp__._0;
                    _err = @:tmpset0 __tmp__._1;
                };
            } else {
                _nf = (_holeEnd - (@:checkr _sr ?? throw "null pointer dereference")._pos : stdgo.GoInt64);
                if ((@:checkr _sr ?? throw "null pointer dereference")._physicalRemaining() == ((0i64 : stdgo.GoInt64))) {
                    _writeLastByte = true;
                    _nf--;
                };
                {
                    var __tmp__ = _ws.seek(_nf, (1 : stdgo.GoInt));
                    _err = @:tmpset0 __tmp__._1;
                };
            };
            (@:checkr _sr ?? throw "null pointer dereference")._pos = ((@:checkr _sr ?? throw "null pointer dereference")._pos + (_nf) : stdgo.GoInt64);
            if ((((@:checkr _sr ?? throw "null pointer dereference")._pos >= _holeEnd : Bool) && (((@:checkr _sr ?? throw "null pointer dereference")._sp.length) > (1 : stdgo.GoInt) : Bool) : Bool)) {
                (@:checkr _sr ?? throw "null pointer dereference")._sp = ((@:checkr _sr ?? throw "null pointer dereference")._sp.__slice__((1 : stdgo.GoInt)) : stdgo._internal.archive.tar.Tar_t_sparseholes.T_sparseHoles);
            };
        };
        if ((_writeLastByte && (_err == null) : Bool)) {
            {
                var __tmp__ = _ws.write((new stdgo.Slice<stdgo.GoUInt8>(1, 1, ...[(0 : stdgo.GoUInt8)]).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>));
                _err = @:tmpset0 __tmp__._1;
            };
            (@:checkr _sr ?? throw "null pointer dereference")._pos++;
        };
        _n = ((@:checkr _sr ?? throw "null pointer dereference")._pos - _pos0 : stdgo.GoInt64);
        if (stdgo.Go.toInterface(_err) == (stdgo.Go.toInterface(stdgo._internal.io.Io_eof.eOF))) {
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
        } else if ((((@:checkr _sr ?? throw "null pointer dereference")._logicalRemaining() == (0i64 : stdgo.GoInt64)) && ((@:checkr _sr ?? throw "null pointer dereference")._physicalRemaining() > (0i64 : stdgo.GoInt64) : Bool) : Bool)) {
            return {
                final __tmp__:{ var _0 : stdgo.GoInt64; var _1 : stdgo.Error; } = { _0 : _n, _1 : stdgo._internal.archive.tar.Tar__errunrefdata._errUnrefData };
                _n = __tmp__._0;
                _err = __tmp__._1;
                __tmp__;
            };
        } else {
            return {
                final __tmp__:{ var _0 : stdgo.GoInt64; var _1 : stdgo.Error; } = { _0 : _n, _1 : (null : stdgo.Error) };
                _n = __tmp__._0;
                _err = __tmp__._1;
                __tmp__;
            };
        };
    }
    @:keep
    @:tdfield
    static public function read( _sr:stdgo.Ref<stdgo._internal.archive.tar.Tar_t_sparsefilereader.T_sparseFileReader>, _b:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } {
        @:recv var _sr:stdgo.Ref<stdgo._internal.archive.tar.Tar_t_sparsefilereader.T_sparseFileReader> = _sr;
        var _n = (0 : stdgo.GoInt), _err = (null : stdgo.Error);
        var _finished = ((_b.length : stdgo.GoInt64) >= (@:checkr _sr ?? throw "null pointer dereference")._logicalRemaining() : Bool);
        if (_finished) {
            _b = (_b.__slice__(0, (@:checkr _sr ?? throw "null pointer dereference")._logicalRemaining()) : stdgo.Slice<stdgo.GoUInt8>);
        };
        var _b0 = _b;
        var _endPos = ((@:checkr _sr ?? throw "null pointer dereference")._pos + (_b.length : stdgo.GoInt64) : stdgo.GoInt64);
        while (((_endPos > (@:checkr _sr ?? throw "null pointer dereference")._pos : Bool) && (_err == null) : Bool)) {
            var _nf:stdgo.GoInt = (0 : stdgo.GoInt);
            var __0 = ((@:checkr _sr ?? throw "null pointer dereference")._sp[(0 : stdgo.GoInt)].offset : stdgo.GoInt64), __1 = ((@:checkr _sr ?? throw "null pointer dereference")._sp[(0 : stdgo.GoInt)]._endOffset() : stdgo.GoInt64);
var _holeEnd = __1, _holeStart = __0;
            if (((@:checkr _sr ?? throw "null pointer dereference")._pos < _holeStart : Bool)) {
                var _bf = (_b.__slice__(0, stdgo._internal.archive.tar.Tar__min._min((_b.length : stdgo.GoInt64), (_holeStart - (@:checkr _sr ?? throw "null pointer dereference")._pos : stdgo.GoInt64))) : stdgo.Slice<stdgo.GoUInt8>);
                {
                    var __tmp__ = stdgo._internal.archive.tar.Tar__tryreadfull._tryReadFull((@:checkr _sr ?? throw "null pointer dereference")._fr, _bf);
                    _nf = @:tmpset0 __tmp__._0;
                    _err = @:tmpset0 __tmp__._1;
                };
            } else {
                var _bf = (_b.__slice__(0, stdgo._internal.archive.tar.Tar__min._min((_b.length : stdgo.GoInt64), (_holeEnd - (@:checkr _sr ?? throw "null pointer dereference")._pos : stdgo.GoInt64))) : stdgo.Slice<stdgo.GoUInt8>);
                {
                    var __tmp__ = stdgo._internal.archive.tar.Tar__tryreadfull._tryReadFull(stdgo.Go.asInterface((new stdgo._internal.archive.tar.Tar_t_zeroreader.T_zeroReader() : stdgo._internal.archive.tar.Tar_t_zeroreader.T_zeroReader)), _bf);
                    _nf = @:tmpset0 __tmp__._0;
                    _err = @:tmpset0 __tmp__._1;
                };
            };
            _b = (_b.__slice__(_nf) : stdgo.Slice<stdgo.GoUInt8>);
            (@:checkr _sr ?? throw "null pointer dereference")._pos = ((@:checkr _sr ?? throw "null pointer dereference")._pos + ((_nf : stdgo.GoInt64)) : stdgo.GoInt64);
            if ((((@:checkr _sr ?? throw "null pointer dereference")._pos >= _holeEnd : Bool) && (((@:checkr _sr ?? throw "null pointer dereference")._sp.length) > (1 : stdgo.GoInt) : Bool) : Bool)) {
                (@:checkr _sr ?? throw "null pointer dereference")._sp = ((@:checkr _sr ?? throw "null pointer dereference")._sp.__slice__((1 : stdgo.GoInt)) : stdgo._internal.archive.tar.Tar_t_sparseholes.T_sparseHoles);
            };
        };
        _n = ((_b0.length) - (_b.length) : stdgo.GoInt);
        if (stdgo.Go.toInterface(_err) == (stdgo.Go.toInterface(stdgo._internal.io.Io_eof.eOF))) {
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
        } else if ((((@:checkr _sr ?? throw "null pointer dereference")._logicalRemaining() == (0i64 : stdgo.GoInt64)) && ((@:checkr _sr ?? throw "null pointer dereference")._physicalRemaining() > (0i64 : stdgo.GoInt64) : Bool) : Bool)) {
            return {
                final __tmp__:{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } = { _0 : _n, _1 : stdgo._internal.archive.tar.Tar__errunrefdata._errUnrefData };
                _n = __tmp__._0;
                _err = __tmp__._1;
                __tmp__;
            };
        } else if (_finished) {
            return {
                final __tmp__:{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } = { _0 : _n, _1 : stdgo._internal.io.Io_eof.eOF };
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
