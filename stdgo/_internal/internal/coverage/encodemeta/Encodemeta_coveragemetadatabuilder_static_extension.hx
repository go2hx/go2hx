package stdgo._internal.internal.coverage.encodemeta;
@:keep @:allow(stdgo._internal.internal.coverage.encodemeta.Encodemeta.CoverageMetaDataBuilder_asInterface) class CoverageMetaDataBuilder_static_extension {
    @:keep
    @:tdfield
    static public function emit( _b:stdgo.Ref<stdgo._internal.internal.coverage.encodemeta.Encodemeta_coveragemetadatabuilder.CoverageMetaDataBuilder>, _w:stdgo._internal.io.Io_writeseeker.WriteSeeker):{ var _0 : stdgo.GoArray<stdgo.GoUInt8>; var _1 : stdgo.Error; } {
        @:recv var _b:stdgo.Ref<stdgo._internal.internal.coverage.encodemeta.Encodemeta_coveragemetadatabuilder.CoverageMetaDataBuilder> = _b;
        var _digest:stdgo.GoArray<stdgo.GoUInt8> = new stdgo.GoArray<stdgo.GoUInt8>(16, 16).__setNumber32__();
        (_digest.__slice__(0) : stdgo.Slice<stdgo.GoUInt8>).__copyTo__((@:checkr _b ?? throw "null pointer dereference")._h.sum((null : stdgo.Slice<stdgo.GoUInt8>)));
        var _mh = ({ pkgPath : ((@:checkr _b ?? throw "null pointer dereference")._pkgpath : stdgo.GoUInt32), pkgName : ((@:checkr _b ?? throw "null pointer dereference")._pkgname : stdgo.GoUInt32), modulePath : ((@:checkr _b ?? throw "null pointer dereference")._modpath : stdgo.GoUInt32), numFiles : (@:check2 (@:checkr _b ?? throw "null pointer dereference")._stab.nentries() : stdgo.GoUInt32), numFuncs : ((@:checkr _b ?? throw "null pointer dereference")._funcs.length : stdgo.GoUInt32), metaHash : _digest?.__copy__() } : stdgo._internal.internal.coverage.Coverage_metasymbolheader.MetaSymbolHeader);
        if ((@:checkr _b ?? throw "null pointer dereference")._debug) {
            stdgo._internal.fmt.Fmt_fprintf.fprintf(stdgo.Go.asInterface(stdgo._internal.os.Os_stderr.stderr), ("=-= writing header: %+v\n" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_mh)));
        };
        {
            var _err = (stdgo._internal.encoding.binary.Binary_write.write(_w, stdgo.Go.asInterface(stdgo._internal.encoding.binary.Binary_littleendian.littleEndian), stdgo.Go.toInterface(stdgo.Go.asInterface(_mh))) : stdgo.Error);
            if (_err != null) {
                return { _0 : _digest?.__copy__(), _1 : stdgo._internal.fmt.Fmt_errorf.errorf(("error writing meta-file header: %v" : stdgo.GoString), stdgo.Go.toInterface(_err)) };
            };
        };
        var _off = ((44i64 : stdgo.GoInt64) : stdgo.GoInt64);
        _off = @:check2r _b._emitFuncOffsets(_w, _off);
        if ((@:checkr _b ?? throw "null pointer dereference")._werr != null) {
            return { _0 : _digest?.__copy__(), _1 : (@:checkr _b ?? throw "null pointer dereference")._werr };
        };
        {
            var _err = (@:check2 (@:checkr _b ?? throw "null pointer dereference")._stab.write(_w) : stdgo.Error);
            if (_err != null) {
                return { _0 : _digest?.__copy__(), _1 : _err };
            };
        };
        _off = (_off + ((@:check2 (@:checkr _b ?? throw "null pointer dereference")._stab.size() : stdgo.GoInt64)) : stdgo.GoInt64);
        for (__8 => _f in (@:checkr _b ?? throw "null pointer dereference")._funcs) {
            var _err:stdgo.Error = (null : stdgo.Error);
            {
                var __tmp__ = @:check2r _b._emitFunc(_w, _off, _f?.__copy__());
                _off = @:tmpset0 __tmp__._0;
                _err = @:tmpset0 __tmp__._1;
            };
            if (_err != null) {
                return { _0 : _digest?.__copy__(), _1 : _err };
            };
        };
        var _totalLength = (_off : stdgo.GoUInt32);
        {
            var __tmp__ = _w.seek((0i64 : stdgo.GoInt64), (0 : stdgo.GoInt)), __9:stdgo.GoInt64 = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                return { _0 : _digest?.__copy__(), _1 : _err };
            };
        };
        @:check2r _b._wrUint32(_w, _totalLength);
        if ((@:checkr _b ?? throw "null pointer dereference")._werr != null) {
            return { _0 : _digest?.__copy__(), _1 : (@:checkr _b ?? throw "null pointer dereference")._werr };
        };
        return { _0 : _digest?.__copy__(), _1 : (null : stdgo.Error) };
    }
    @:keep
    @:tdfield
    static public function _wrUint32( _b:stdgo.Ref<stdgo._internal.internal.coverage.encodemeta.Encodemeta_coveragemetadatabuilder.CoverageMetaDataBuilder>, _w:stdgo._internal.io.Io_writeseeker.WriteSeeker, _v:stdgo.GoUInt32):Void {
        @:recv var _b:stdgo.Ref<stdgo._internal.internal.coverage.encodemeta.Encodemeta_coveragemetadatabuilder.CoverageMetaDataBuilder> = _b;
        (@:checkr _b ?? throw "null pointer dereference")._tmp = ((@:checkr _b ?? throw "null pointer dereference")._tmp.__slice__(0, (0 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>);
        (@:checkr _b ?? throw "null pointer dereference")._tmp = ((@:checkr _b ?? throw "null pointer dereference")._tmp.__append__(...((new stdgo.Slice<stdgo.GoUInt8>(4, 4, ...[(0 : stdgo.GoUInt8), (0 : stdgo.GoUInt8), (0 : stdgo.GoUInt8), (0 : stdgo.GoUInt8)]).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>) : Array<stdgo.GoUInt8>)));
        stdgo._internal.encoding.binary.Binary_littleendian.littleEndian.putUint32((@:checkr _b ?? throw "null pointer dereference")._tmp, _v);
        {
            var __tmp__ = _w.write((@:checkr _b ?? throw "null pointer dereference")._tmp), _nw:stdgo.GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                @:check2r _b._reportWriteError(_err);
            } else if (_nw != ((4 : stdgo.GoInt))) {
                @:check2r _b._reportWriteError(stdgo._internal.fmt.Fmt_errorf.errorf(("short write" : stdgo.GoString)));
            };
        };
    }
    @:keep
    @:tdfield
    static public function _reportWriteError( _b:stdgo.Ref<stdgo._internal.internal.coverage.encodemeta.Encodemeta_coveragemetadatabuilder.CoverageMetaDataBuilder>, _err:stdgo.Error):Void {
        @:recv var _b:stdgo.Ref<stdgo._internal.internal.coverage.encodemeta.Encodemeta_coveragemetadatabuilder.CoverageMetaDataBuilder> = _b;
        if ((@:checkr _b ?? throw "null pointer dereference")._werr != null) {
            (@:checkr _b ?? throw "null pointer dereference")._werr = _err;
        };
    }
    @:keep
    @:tdfield
    static public function _emitFunc( _b:stdgo.Ref<stdgo._internal.internal.coverage.encodemeta.Encodemeta_coveragemetadatabuilder.CoverageMetaDataBuilder>, _w:stdgo._internal.io.Io_writeseeker.WriteSeeker, _off:stdgo.GoInt64, _f:stdgo._internal.internal.coverage.encodemeta.Encodemeta_t_funcdesc.T_funcDesc):{ var _0 : stdgo.GoInt64; var _1 : stdgo.Error; } {
        @:recv var _b:stdgo.Ref<stdgo._internal.internal.coverage.encodemeta.Encodemeta_coveragemetadatabuilder.CoverageMetaDataBuilder> = _b;
        var _ew = (_f._encoded.length : stdgo.GoInt);
        {
            var __tmp__ = _w.write(_f._encoded), _nw:stdgo.GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                return { _0 : (0i64 : stdgo.GoInt64), _1 : _err };
            } else if (_ew != (_nw)) {
                return { _0 : (0i64 : stdgo.GoInt64), _1 : stdgo._internal.fmt.Fmt_errorf.errorf(("short write emitting coverage meta-data" : stdgo.GoString)) };
            };
        };
        return { _0 : (_off + (_ew : stdgo.GoInt64) : stdgo.GoInt64), _1 : (null : stdgo.Error) };
    }
    @:keep
    @:tdfield
    static public function _emitFuncOffsets( _b:stdgo.Ref<stdgo._internal.internal.coverage.encodemeta.Encodemeta_coveragemetadatabuilder.CoverageMetaDataBuilder>, _w:stdgo._internal.io.Io_writeseeker.WriteSeeker, _off:stdgo.GoInt64):stdgo.GoInt64 {
        @:recv var _b:stdgo.Ref<stdgo._internal.internal.coverage.encodemeta.Encodemeta_coveragemetadatabuilder.CoverageMetaDataBuilder> = _b;
        var _nFuncs = ((@:checkr _b ?? throw "null pointer dereference")._funcs.length : stdgo.GoInt);
        var _foff:stdgo.GoInt64 = (((44i64 : stdgo.GoInt64) + (@:check2 (@:checkr _b ?? throw "null pointer dereference")._stab.size() : stdgo.GoInt64) : stdgo.GoInt64) + ((_nFuncs : stdgo.GoInt64) * (4i64 : stdgo.GoInt64) : stdgo.GoInt64) : stdgo.GoInt64);
        {
            var _idx = (0 : stdgo.GoInt);
            while ((_idx < _nFuncs : Bool)) {
                @:check2r _b._wrUint32(_w, (_foff : stdgo.GoUInt32));
_foff = (_foff + (((@:checkr _b ?? throw "null pointer dereference")._funcs[(_idx : stdgo.GoInt)]._encoded.length : stdgo.GoInt64)) : stdgo.GoInt64);
                _idx++;
            };
        };
        return (_off + ((((@:checkr _b ?? throw "null pointer dereference")._funcs.length : stdgo.GoInt64) * (4i64 : stdgo.GoInt64) : stdgo.GoInt64)) : stdgo.GoInt64);
    }
    @:keep
    @:tdfield
    static public function addFunc( _b:stdgo.Ref<stdgo._internal.internal.coverage.encodemeta.Encodemeta_coveragemetadatabuilder.CoverageMetaDataBuilder>, _f:stdgo._internal.internal.coverage.Coverage_funcdesc.FuncDesc):stdgo.GoUInt {
        @:recv var _b:stdgo.Ref<stdgo._internal.internal.coverage.encodemeta.Encodemeta_coveragemetadatabuilder.CoverageMetaDataBuilder> = _b;
        stdgo._internal.internal.coverage.encodemeta.Encodemeta__hashfuncdesc._hashFuncDesc((@:checkr _b ?? throw "null pointer dereference")._h, (stdgo.Go.setRef(_f) : stdgo.Ref<stdgo._internal.internal.coverage.Coverage_funcdesc.FuncDesc>), (@:checkr _b ?? throw "null pointer dereference")._tmp);
        var _fd = (new stdgo._internal.internal.coverage.encodemeta.Encodemeta_t_funcdesc.T_funcDesc() : stdgo._internal.internal.coverage.encodemeta.Encodemeta_t_funcdesc.T_funcDesc);
        (@:checkr _b ?? throw "null pointer dereference")._tmp = ((@:checkr _b ?? throw "null pointer dereference")._tmp.__slice__(0, (0 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>);
        (@:checkr _b ?? throw "null pointer dereference")._tmp = stdgo._internal.internal.coverage.uleb128.Uleb128_appenduleb128.appendUleb128((@:checkr _b ?? throw "null pointer dereference")._tmp, (_f.units.length : stdgo.GoUInt));
        (@:checkr _b ?? throw "null pointer dereference")._tmp = stdgo._internal.internal.coverage.uleb128.Uleb128_appenduleb128.appendUleb128((@:checkr _b ?? throw "null pointer dereference")._tmp, (@:check2 (@:checkr _b ?? throw "null pointer dereference")._stab.lookup(_f.funcname?.__copy__()) : stdgo.GoUInt));
        (@:checkr _b ?? throw "null pointer dereference")._tmp = stdgo._internal.internal.coverage.uleb128.Uleb128_appenduleb128.appendUleb128((@:checkr _b ?? throw "null pointer dereference")._tmp, (@:check2 (@:checkr _b ?? throw "null pointer dereference")._stab.lookup(_f.srcfile?.__copy__()) : stdgo.GoUInt));
        for (__0 => _u in _f.units) {
            (@:checkr _b ?? throw "null pointer dereference")._tmp = stdgo._internal.internal.coverage.uleb128.Uleb128_appenduleb128.appendUleb128((@:checkr _b ?? throw "null pointer dereference")._tmp, (_u.stLine : stdgo.GoUInt));
            (@:checkr _b ?? throw "null pointer dereference")._tmp = stdgo._internal.internal.coverage.uleb128.Uleb128_appenduleb128.appendUleb128((@:checkr _b ?? throw "null pointer dereference")._tmp, (_u.stCol : stdgo.GoUInt));
            (@:checkr _b ?? throw "null pointer dereference")._tmp = stdgo._internal.internal.coverage.uleb128.Uleb128_appenduleb128.appendUleb128((@:checkr _b ?? throw "null pointer dereference")._tmp, (_u.enLine : stdgo.GoUInt));
            (@:checkr _b ?? throw "null pointer dereference")._tmp = stdgo._internal.internal.coverage.uleb128.Uleb128_appenduleb128.appendUleb128((@:checkr _b ?? throw "null pointer dereference")._tmp, (_u.enCol : stdgo.GoUInt));
            (@:checkr _b ?? throw "null pointer dereference")._tmp = stdgo._internal.internal.coverage.uleb128.Uleb128_appenduleb128.appendUleb128((@:checkr _b ?? throw "null pointer dereference")._tmp, (_u.nxStmts : stdgo.GoUInt));
        };
        var _lit = ((0u32 : stdgo.GoUInt) : stdgo.GoUInt);
        if (_f.lit) {
            _lit = (1u32 : stdgo.GoUInt);
        };
        (@:checkr _b ?? throw "null pointer dereference")._tmp = stdgo._internal.internal.coverage.uleb128.Uleb128_appenduleb128.appendUleb128((@:checkr _b ?? throw "null pointer dereference")._tmp, _lit);
        _fd._encoded = stdgo._internal.bytes.Bytes_clone.clone((@:checkr _b ?? throw "null pointer dereference")._tmp);
        var _rv = ((@:checkr _b ?? throw "null pointer dereference")._funcs.length : stdgo.GoUInt);
        (@:checkr _b ?? throw "null pointer dereference")._funcs = ((@:checkr _b ?? throw "null pointer dereference")._funcs.__append__(_fd?.__copy__()));
        return _rv;
    }
}
