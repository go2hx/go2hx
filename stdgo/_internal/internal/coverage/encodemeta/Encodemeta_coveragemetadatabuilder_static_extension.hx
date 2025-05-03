package stdgo._internal.internal.coverage.encodemeta;
@:keep @:allow(stdgo._internal.internal.coverage.encodemeta.Encodemeta.CoverageMetaDataBuilder_asInterface) class CoverageMetaDataBuilder_static_extension {
    @:keep
    @:tdfield
    static public function emit( _b:stdgo.Ref<stdgo._internal.internal.coverage.encodemeta.Encodemeta_coveragemetadatabuilder.CoverageMetaDataBuilder>, _w:stdgo._internal.io.Io_writeseeker.WriteSeeker):{ var _0 : stdgo.GoArray<stdgo.GoUInt8>; var _1 : stdgo.Error; } {
        @:recv var _b:stdgo.Ref<stdgo._internal.internal.coverage.encodemeta.Encodemeta_coveragemetadatabuilder.CoverageMetaDataBuilder> = _b;
        var _digest:stdgo.GoArray<stdgo.GoUInt8> = new stdgo.GoArray<stdgo.GoUInt8>(16, 16).__setNumber32__();
        //"file:///home/runner/.go/go1.21.3/src/internal/coverage/encodemeta/encode.go#L135"
        (_digest.__slice__(0) : stdgo.Slice<stdgo.GoUInt8>).__copyTo__((@:checkr _b ?? throw "null pointer dereference")._h.sum((null : stdgo.Slice<stdgo.GoUInt8>)));
        var _mh = ({ pkgPath : ((@:checkr _b ?? throw "null pointer dereference")._pkgpath : stdgo.GoUInt32), pkgName : ((@:checkr _b ?? throw "null pointer dereference")._pkgname : stdgo.GoUInt32), modulePath : ((@:checkr _b ?? throw "null pointer dereference")._modpath : stdgo.GoUInt32), numFiles : ((@:checkr _b ?? throw "null pointer dereference")._stab.nentries() : stdgo.GoUInt32), numFuncs : ((@:checkr _b ?? throw "null pointer dereference")._funcs.length : stdgo.GoUInt32), metaHash : _digest?.__copy__() } : stdgo._internal.internal.coverage.Coverage_metasymbolheader.MetaSymbolHeader);
        //"file:///home/runner/.go/go1.21.3/src/internal/coverage/encodemeta/encode.go#L145"
        if ((@:checkr _b ?? throw "null pointer dereference")._debug) {
            //"file:///home/runner/.go/go1.21.3/src/internal/coverage/encodemeta/encode.go#L146"
            stdgo._internal.fmt.Fmt_fprintf.fprintf(stdgo.Go.asInterface(stdgo._internal.os.Os_stderr.stderr), ("=-= writing header: %+v\n" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_mh)));
        };
        //"file:///home/runner/.go/go1.21.3/src/internal/coverage/encodemeta/encode.go#L148"
        {
            var _err = (stdgo._internal.encoding.binary.Binary_write.write(_w, stdgo.Go.asInterface(stdgo._internal.encoding.binary.Binary_littleendian.littleEndian), stdgo.Go.toInterface(stdgo.Go.asInterface(_mh))) : stdgo.Error);
            if (_err != null) {
                //"file:///home/runner/.go/go1.21.3/src/internal/coverage/encodemeta/encode.go#L149"
                return { _0 : _digest?.__copy__(), _1 : stdgo._internal.fmt.Fmt_errorf.errorf(("error writing meta-file header: %v" : stdgo.GoString), stdgo.Go.toInterface(_err)) };
            };
        };
        var _off = ((44i64 : stdgo.GoInt64) : stdgo.GoInt64);
        _off = _b._emitFuncOffsets(_w, _off);
        //"file:///home/runner/.go/go1.21.3/src/internal/coverage/encodemeta/encode.go#L157"
        if ((@:checkr _b ?? throw "null pointer dereference")._werr != null) {
            //"file:///home/runner/.go/go1.21.3/src/internal/coverage/encodemeta/encode.go#L158"
            return { _0 : _digest?.__copy__(), _1 : (@:checkr _b ?? throw "null pointer dereference")._werr };
        };
        //"file:///home/runner/.go/go1.21.3/src/internal/coverage/encodemeta/encode.go#L162"
        {
            var _err = ((@:checkr _b ?? throw "null pointer dereference")._stab.write(_w) : stdgo.Error);
            if (_err != null) {
                //"file:///home/runner/.go/go1.21.3/src/internal/coverage/encodemeta/encode.go#L163"
                return { _0 : _digest?.__copy__(), _1 : _err };
            };
        };
        _off = (_off + (((@:checkr _b ?? throw "null pointer dereference")._stab.size() : stdgo.GoInt64)) : stdgo.GoInt64);
        //"file:///home/runner/.go/go1.21.3/src/internal/coverage/encodemeta/encode.go#L168"
        for (__8 => _f in (@:checkr _b ?? throw "null pointer dereference")._funcs) {
            var _err:stdgo.Error = (null : stdgo.Error);
            {
                var __tmp__ = _b._emitFunc(_w, _off, _f?.__copy__());
                _off = @:tmpset0 __tmp__._0;
                _err = @:tmpset0 __tmp__._1;
            };
            //"file:///home/runner/.go/go1.21.3/src/internal/coverage/encodemeta/encode.go#L171"
            if (_err != null) {
                //"file:///home/runner/.go/go1.21.3/src/internal/coverage/encodemeta/encode.go#L172"
                return { _0 : _digest?.__copy__(), _1 : _err };
            };
        };
        var _totalLength = (_off : stdgo.GoUInt32);
        //"file:///home/runner/.go/go1.21.3/src/internal/coverage/encodemeta/encode.go#L178"
        {
            var __tmp__ = _w.seek((0i64 : stdgo.GoInt64), (0 : stdgo.GoInt)), __9:stdgo.GoInt64 = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                //"file:///home/runner/.go/go1.21.3/src/internal/coverage/encodemeta/encode.go#L179"
                return { _0 : _digest?.__copy__(), _1 : _err };
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/internal/coverage/encodemeta/encode.go#L181"
        _b._wrUint32(_w, _totalLength);
        //"file:///home/runner/.go/go1.21.3/src/internal/coverage/encodemeta/encode.go#L182"
        if ((@:checkr _b ?? throw "null pointer dereference")._werr != null) {
            //"file:///home/runner/.go/go1.21.3/src/internal/coverage/encodemeta/encode.go#L183"
            return { _0 : _digest?.__copy__(), _1 : (@:checkr _b ?? throw "null pointer dereference")._werr };
        };
        //"file:///home/runner/.go/go1.21.3/src/internal/coverage/encodemeta/encode.go#L185"
        return { _0 : _digest?.__copy__(), _1 : (null : stdgo.Error) };
    }
    @:keep
    @:tdfield
    static public function _wrUint32( _b:stdgo.Ref<stdgo._internal.internal.coverage.encodemeta.Encodemeta_coveragemetadatabuilder.CoverageMetaDataBuilder>, _w:stdgo._internal.io.Io_writeseeker.WriteSeeker, _v:stdgo.GoUInt32):Void {
        @:recv var _b:stdgo.Ref<stdgo._internal.internal.coverage.encodemeta.Encodemeta_coveragemetadatabuilder.CoverageMetaDataBuilder> = _b;
        (@:checkr _b ?? throw "null pointer dereference")._tmp = ((@:checkr _b ?? throw "null pointer dereference")._tmp.__slice__(0, (0 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>);
        (@:checkr _b ?? throw "null pointer dereference")._tmp = ((@:checkr _b ?? throw "null pointer dereference")._tmp.__append__(...((new stdgo.Slice<stdgo.GoUInt8>(4, 4, ...[(0 : stdgo.GoUInt8), (0 : stdgo.GoUInt8), (0 : stdgo.GoUInt8), (0 : stdgo.GoUInt8)]).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>) : Array<stdgo.GoUInt8>)) : stdgo.Slice<stdgo.GoUInt8>);
        //"file:///home/runner/.go/go1.21.3/src/internal/coverage/encodemeta/encode.go#L121"
        stdgo._internal.encoding.binary.Binary_littleendian.littleEndian.putUint32((@:checkr _b ?? throw "null pointer dereference")._tmp, _v);
        //"file:///home/runner/.go/go1.21.3/src/internal/coverage/encodemeta/encode.go#L122"
        {
            var __tmp__ = _w.write((@:checkr _b ?? throw "null pointer dereference")._tmp), _nw:stdgo.GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                //"file:///home/runner/.go/go1.21.3/src/internal/coverage/encodemeta/encode.go#L123"
                _b._reportWriteError(_err);
            } else if (_nw != ((4 : stdgo.GoInt))) {
                //"file:///home/runner/.go/go1.21.3/src/internal/coverage/encodemeta/encode.go#L125"
                _b._reportWriteError(stdgo._internal.fmt.Fmt_errorf.errorf(("short write" : stdgo.GoString)));
            };
        };
    }
    @:keep
    @:tdfield
    static public function _reportWriteError( _b:stdgo.Ref<stdgo._internal.internal.coverage.encodemeta.Encodemeta_coveragemetadatabuilder.CoverageMetaDataBuilder>, _err:stdgo.Error):Void {
        @:recv var _b:stdgo.Ref<stdgo._internal.internal.coverage.encodemeta.Encodemeta_coveragemetadatabuilder.CoverageMetaDataBuilder> = _b;
        //"file:///home/runner/.go/go1.21.3/src/internal/coverage/encodemeta/encode.go#L113"
        if ((@:checkr _b ?? throw "null pointer dereference")._werr != null) {
            (@:checkr _b ?? throw "null pointer dereference")._werr = _err;
        };
    }
    @:keep
    @:tdfield
    static public function _emitFunc( _b:stdgo.Ref<stdgo._internal.internal.coverage.encodemeta.Encodemeta_coveragemetadatabuilder.CoverageMetaDataBuilder>, _w:stdgo._internal.io.Io_writeseeker.WriteSeeker, _off:stdgo.GoInt64, _f:stdgo._internal.internal.coverage.encodemeta.Encodemeta_t_funcdesc.T_funcDesc):{ var _0 : stdgo.GoInt64; var _1 : stdgo.Error; } {
        @:recv var _b:stdgo.Ref<stdgo._internal.internal.coverage.encodemeta.Encodemeta_coveragemetadatabuilder.CoverageMetaDataBuilder> = _b;
        var _ew = (_f._encoded.length : stdgo.GoInt);
        //"file:///home/runner/.go/go1.21.3/src/internal/coverage/encodemeta/encode.go#L104"
        {
            var __tmp__ = _w.write(_f._encoded), _nw:stdgo.GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                //"file:///home/runner/.go/go1.21.3/src/internal/coverage/encodemeta/encode.go#L105"
                return { _0 : (0i64 : stdgo.GoInt64), _1 : _err };
            } else if (_ew != (_nw)) {
                //"file:///home/runner/.go/go1.21.3/src/internal/coverage/encodemeta/encode.go#L107"
                return { _0 : (0i64 : stdgo.GoInt64), _1 : stdgo._internal.fmt.Fmt_errorf.errorf(("short write emitting coverage meta-data" : stdgo.GoString)) };
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/internal/coverage/encodemeta/encode.go#L109"
        return { _0 : (_off + (_ew : stdgo.GoInt64) : stdgo.GoInt64), _1 : (null : stdgo.Error) };
    }
    @:keep
    @:tdfield
    static public function _emitFuncOffsets( _b:stdgo.Ref<stdgo._internal.internal.coverage.encodemeta.Encodemeta_coveragemetadatabuilder.CoverageMetaDataBuilder>, _w:stdgo._internal.io.Io_writeseeker.WriteSeeker, _off:stdgo.GoInt64):stdgo.GoInt64 {
        @:recv var _b:stdgo.Ref<stdgo._internal.internal.coverage.encodemeta.Encodemeta_coveragemetadatabuilder.CoverageMetaDataBuilder> = _b;
        var _nFuncs = ((@:checkr _b ?? throw "null pointer dereference")._funcs.length : stdgo.GoInt);
        var _foff:stdgo.GoInt64 = (((44i64 : stdgo.GoInt64) + ((@:checkr _b ?? throw "null pointer dereference")._stab.size() : stdgo.GoInt64) : stdgo.GoInt64) + ((_nFuncs : stdgo.GoInt64) * (4i64 : stdgo.GoInt64) : stdgo.GoInt64) : stdgo.GoInt64);
        //"file:///home/runner/.go/go1.21.3/src/internal/coverage/encodemeta/encode.go#L95"
        {
            var _idx = (0 : stdgo.GoInt);
            while ((_idx < _nFuncs : Bool)) {
                //"file:///home/runner/.go/go1.21.3/src/internal/coverage/encodemeta/encode.go#L96"
                _b._wrUint32(_w, (_foff : stdgo.GoUInt32));
_foff = (_foff + (((@:checkr _b ?? throw "null pointer dereference")._funcs[(_idx : stdgo.GoInt)]._encoded.length : stdgo.GoInt64)) : stdgo.GoInt64);
                _idx++;
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/internal/coverage/encodemeta/encode.go#L99"
        return (_off + ((((@:checkr _b ?? throw "null pointer dereference")._funcs.length : stdgo.GoInt64) * (4i64 : stdgo.GoInt64) : stdgo.GoInt64)) : stdgo.GoInt64);
    }
    @:keep
    @:tdfield
    static public function addFunc( _b:stdgo.Ref<stdgo._internal.internal.coverage.encodemeta.Encodemeta_coveragemetadatabuilder.CoverageMetaDataBuilder>, _f:stdgo._internal.internal.coverage.Coverage_funcdesc.FuncDesc):stdgo.GoUInt {
        @:recv var _b:stdgo.Ref<stdgo._internal.internal.coverage.encodemeta.Encodemeta_coveragemetadatabuilder.CoverageMetaDataBuilder> = _b;
        //"file:///home/runner/.go/go1.21.3/src/internal/coverage/encodemeta/encode.go#L68"
        stdgo._internal.internal.coverage.encodemeta.Encodemeta__hashfuncdesc._hashFuncDesc((@:checkr _b ?? throw "null pointer dereference")._h, (stdgo.Go.setRef(_f) : stdgo.Ref<stdgo._internal.internal.coverage.Coverage_funcdesc.FuncDesc>), (@:checkr _b ?? throw "null pointer dereference")._tmp);
        var _fd = (new stdgo._internal.internal.coverage.encodemeta.Encodemeta_t_funcdesc.T_funcDesc() : stdgo._internal.internal.coverage.encodemeta.Encodemeta_t_funcdesc.T_funcDesc);
        (@:checkr _b ?? throw "null pointer dereference")._tmp = ((@:checkr _b ?? throw "null pointer dereference")._tmp.__slice__(0, (0 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>);
        (@:checkr _b ?? throw "null pointer dereference")._tmp = stdgo._internal.internal.coverage.uleb128.Uleb128_appenduleb128.appendUleb128((@:checkr _b ?? throw "null pointer dereference")._tmp, (_f.units.length : stdgo.GoUInt));
        (@:checkr _b ?? throw "null pointer dereference")._tmp = stdgo._internal.internal.coverage.uleb128.Uleb128_appenduleb128.appendUleb128((@:checkr _b ?? throw "null pointer dereference")._tmp, ((@:checkr _b ?? throw "null pointer dereference")._stab.lookup(_f.funcname?.__copy__()) : stdgo.GoUInt));
        (@:checkr _b ?? throw "null pointer dereference")._tmp = stdgo._internal.internal.coverage.uleb128.Uleb128_appenduleb128.appendUleb128((@:checkr _b ?? throw "null pointer dereference")._tmp, ((@:checkr _b ?? throw "null pointer dereference")._stab.lookup(_f.srcfile?.__copy__()) : stdgo.GoUInt));
        //"file:///home/runner/.go/go1.21.3/src/internal/coverage/encodemeta/encode.go#L74"
        for (__0 => _u in _f.units) {
            (@:checkr _b ?? throw "null pointer dereference")._tmp = stdgo._internal.internal.coverage.uleb128.Uleb128_appenduleb128.appendUleb128((@:checkr _b ?? throw "null pointer dereference")._tmp, (_u.stLine : stdgo.GoUInt));
            (@:checkr _b ?? throw "null pointer dereference")._tmp = stdgo._internal.internal.coverage.uleb128.Uleb128_appenduleb128.appendUleb128((@:checkr _b ?? throw "null pointer dereference")._tmp, (_u.stCol : stdgo.GoUInt));
            (@:checkr _b ?? throw "null pointer dereference")._tmp = stdgo._internal.internal.coverage.uleb128.Uleb128_appenduleb128.appendUleb128((@:checkr _b ?? throw "null pointer dereference")._tmp, (_u.enLine : stdgo.GoUInt));
            (@:checkr _b ?? throw "null pointer dereference")._tmp = stdgo._internal.internal.coverage.uleb128.Uleb128_appenduleb128.appendUleb128((@:checkr _b ?? throw "null pointer dereference")._tmp, (_u.enCol : stdgo.GoUInt));
            (@:checkr _b ?? throw "null pointer dereference")._tmp = stdgo._internal.internal.coverage.uleb128.Uleb128_appenduleb128.appendUleb128((@:checkr _b ?? throw "null pointer dereference")._tmp, (_u.nxStmts : stdgo.GoUInt));
        };
        var _lit = ((0u32 : stdgo.GoUInt) : stdgo.GoUInt);
        //"file:///home/runner/.go/go1.21.3/src/internal/coverage/encodemeta/encode.go#L82"
        if (_f.lit) {
            _lit = (1u32 : stdgo.GoUInt);
        };
        (@:checkr _b ?? throw "null pointer dereference")._tmp = stdgo._internal.internal.coverage.uleb128.Uleb128_appenduleb128.appendUleb128((@:checkr _b ?? throw "null pointer dereference")._tmp, _lit);
        _fd._encoded = stdgo._internal.bytes.Bytes_clone.clone((@:checkr _b ?? throw "null pointer dereference")._tmp);
        var _rv = ((@:checkr _b ?? throw "null pointer dereference")._funcs.length : stdgo.GoUInt);
        (@:checkr _b ?? throw "null pointer dereference")._funcs = ((@:checkr _b ?? throw "null pointer dereference")._funcs.__append__(_fd?.__copy__()) : stdgo.Slice<stdgo._internal.internal.coverage.encodemeta.Encodemeta_t_funcdesc.T_funcDesc>);
        //"file:///home/runner/.go/go1.21.3/src/internal/coverage/encodemeta/encode.go#L89"
        return _rv;
    }
}
