package stdgo._internal.internal.coverage.decodemeta;
@:keep @:allow(stdgo._internal.internal.coverage.decodemeta.Decodemeta.CoverageMetaDataDecoder_asInterface) class CoverageMetaDataDecoder_static_extension {
    @:keep
    @:tdfield
    static public function readFunc( _d:stdgo.Ref<stdgo._internal.internal.coverage.decodemeta.Decodemeta_coveragemetadatadecoder.CoverageMetaDataDecoder>, _fidx:stdgo.GoUInt32, _f:stdgo.Ref<stdgo._internal.internal.coverage.Coverage_funcdesc.FuncDesc>):stdgo.Error {
        @:recv var _d:stdgo.Ref<stdgo._internal.internal.coverage.decodemeta.Decodemeta_coveragemetadatadecoder.CoverageMetaDataDecoder> = _d;
        //"file:///home/runner/.go/go1.21.3/src/internal/coverage/decodemeta/decode.go#L88"
        if ((_fidx >= (@:checkr _d ?? throw "null pointer dereference")._hdr.numFuncs : Bool)) {
            //"file:///home/runner/.go/go1.21.3/src/internal/coverage/decodemeta/decode.go#L89"
            return stdgo._internal.fmt.Fmt_errorf.errorf(("illegal function index" : stdgo.GoString));
        };
        var _funcOffsetLocation = (((44u32 : stdgo.GoUInt32) + ((4u32 : stdgo.GoUInt32) * _fidx : stdgo.GoUInt32) : stdgo.GoUInt32) : stdgo.GoInt64);
        //"file:///home/runner/.go/go1.21.3/src/internal/coverage/decodemeta/decode.go#L94"
        {
            var __tmp__ = (@:checkr _d ?? throw "null pointer dereference")._r.seek(_funcOffsetLocation, (0 : stdgo.GoInt)), __16:stdgo.GoInt64 = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                //"file:///home/runner/.go/go1.21.3/src/internal/coverage/decodemeta/decode.go#L95"
                return _err;
            };
        };
        var _foff = ((@:checkr _d ?? throw "null pointer dereference")._r.readUint32() : stdgo.GoUInt32);
        //"file:///home/runner/.go/go1.21.3/src/internal/coverage/decodemeta/decode.go#L100"
        if (((_foff < (_funcOffsetLocation : stdgo.GoUInt32) : Bool) || (_foff > (@:checkr _d ?? throw "null pointer dereference")._hdr.length_ : Bool) : Bool)) {
            //"file:///home/runner/.go/go1.21.3/src/internal/coverage/decodemeta/decode.go#L101"
            return stdgo._internal.fmt.Fmt_errorf.errorf(("malformed func offset %d" : stdgo.GoString), stdgo.Go.toInterface(_foff));
        };
        var _floc = (_foff : stdgo.GoInt64);
        //"file:///home/runner/.go/go1.21.3/src/internal/coverage/decodemeta/decode.go#L106"
        {
            var __tmp__ = (@:checkr _d ?? throw "null pointer dereference")._r.seek(_floc, (0 : stdgo.GoInt)), __31:stdgo.GoInt64 = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                //"file:///home/runner/.go/go1.21.3/src/internal/coverage/decodemeta/decode.go#L107"
                return _err;
            };
        };
        var _numUnits = ((@:checkr _d ?? throw "null pointer dereference")._r.readULEB128() : stdgo.GoUInt32);
        var _fnameidx = ((@:checkr _d ?? throw "null pointer dereference")._r.readULEB128() : stdgo.GoUInt32);
        var _fileidx = ((@:checkr _d ?? throw "null pointer dereference")._r.readULEB128() : stdgo.GoUInt32);
        (@:checkr _f ?? throw "null pointer dereference").srcfile = (@:checkr _d ?? throw "null pointer dereference")._strtab.get(_fileidx)?.__copy__();
        (@:checkr _f ?? throw "null pointer dereference").funcname = (@:checkr _d ?? throw "null pointer dereference")._strtab.get(_fnameidx)?.__copy__();
        (@:checkr _f ?? throw "null pointer dereference").units = ((@:checkr _f ?? throw "null pointer dereference").units.__slice__(0, (0 : stdgo.GoInt)) : stdgo.Slice<stdgo._internal.internal.coverage.Coverage_coverableunit.CoverableUnit>);
        //"file:///home/runner/.go/go1.21.3/src/internal/coverage/decodemeta/decode.go#L120"
        if (((@:checkr _f ?? throw "null pointer dereference").units.capacity < (_numUnits : stdgo.GoInt) : Bool)) {
            (@:checkr _f ?? throw "null pointer dereference").units = (new stdgo.Slice<stdgo._internal.internal.coverage.Coverage_coverableunit.CoverableUnit>((0 : stdgo.GoInt).toBasic(), _numUnits, ...[for (i in 0 ... ((0 : stdgo.GoInt).toBasic() > _numUnits ? (0 : stdgo.GoInt).toBasic() : _numUnits : stdgo.GoInt).toBasic()) ({} : stdgo._internal.internal.coverage.Coverage_coverableunit.CoverableUnit)]) : stdgo.Slice<stdgo._internal.internal.coverage.Coverage_coverableunit.CoverableUnit>);
        };
        //"file:///home/runner/.go/go1.21.3/src/internal/coverage/decodemeta/decode.go#L123"
        {
            var _k = ((0u32 : stdgo.GoUInt32) : stdgo.GoUInt32);
            while ((_k < _numUnits : Bool)) {
                (@:checkr _f ?? throw "null pointer dereference").units = ((@:checkr _f ?? throw "null pointer dereference").units.__append__(({ stLine : ((@:checkr _d ?? throw "null pointer dereference")._r.readULEB128() : stdgo.GoUInt32), stCol : ((@:checkr _d ?? throw "null pointer dereference")._r.readULEB128() : stdgo.GoUInt32), enLine : ((@:checkr _d ?? throw "null pointer dereference")._r.readULEB128() : stdgo.GoUInt32), enCol : ((@:checkr _d ?? throw "null pointer dereference")._r.readULEB128() : stdgo.GoUInt32), nxStmts : ((@:checkr _d ?? throw "null pointer dereference")._r.readULEB128() : stdgo.GoUInt32) } : stdgo._internal.internal.coverage.Coverage_coverableunit.CoverableUnit)) : stdgo.Slice<stdgo._internal.internal.coverage.Coverage_coverableunit.CoverableUnit>);
                _k++;
            };
        };
        var _lit = ((@:checkr _d ?? throw "null pointer dereference")._r.readULEB128() : stdgo.GoUInt64);
        (@:checkr _f ?? throw "null pointer dereference").lit = _lit != ((0i64 : stdgo.GoUInt64));
        //"file:///home/runner/.go/go1.21.3/src/internal/coverage/decodemeta/decode.go#L135"
        return (null : stdgo.Error);
    }
    @:keep
    @:tdfield
    static public function numFuncs( _d:stdgo.Ref<stdgo._internal.internal.coverage.decodemeta.Decodemeta_coveragemetadatadecoder.CoverageMetaDataDecoder>):stdgo.GoUInt32 {
        @:recv var _d:stdgo.Ref<stdgo._internal.internal.coverage.decodemeta.Decodemeta_coveragemetadatadecoder.CoverageMetaDataDecoder> = _d;
        //"file:///home/runner/.go/go1.21.3/src/internal/coverage/decodemeta/decode.go#L82"
        return (@:checkr _d ?? throw "null pointer dereference")._hdr.numFuncs;
    }
    @:keep
    @:tdfield
    static public function modulePath( _d:stdgo.Ref<stdgo._internal.internal.coverage.decodemeta.Decodemeta_coveragemetadatadecoder.CoverageMetaDataDecoder>):stdgo.GoString {
        @:recv var _d:stdgo.Ref<stdgo._internal.internal.coverage.decodemeta.Decodemeta_coveragemetadatadecoder.CoverageMetaDataDecoder> = _d;
        //"file:///home/runner/.go/go1.21.3/src/internal/coverage/decodemeta/decode.go#L78"
        return (@:checkr _d ?? throw "null pointer dereference")._strtab.get((@:checkr _d ?? throw "null pointer dereference")._hdr.modulePath)?.__copy__();
    }
    @:keep
    @:tdfield
    static public function packageName( _d:stdgo.Ref<stdgo._internal.internal.coverage.decodemeta.Decodemeta_coveragemetadatadecoder.CoverageMetaDataDecoder>):stdgo.GoString {
        @:recv var _d:stdgo.Ref<stdgo._internal.internal.coverage.decodemeta.Decodemeta_coveragemetadatadecoder.CoverageMetaDataDecoder> = _d;
        //"file:///home/runner/.go/go1.21.3/src/internal/coverage/decodemeta/decode.go#L74"
        return (@:checkr _d ?? throw "null pointer dereference")._strtab.get((@:checkr _d ?? throw "null pointer dereference")._hdr.pkgName)?.__copy__();
    }
    @:keep
    @:tdfield
    static public function packagePath( _d:stdgo.Ref<stdgo._internal.internal.coverage.decodemeta.Decodemeta_coveragemetadatadecoder.CoverageMetaDataDecoder>):stdgo.GoString {
        @:recv var _d:stdgo.Ref<stdgo._internal.internal.coverage.decodemeta.Decodemeta_coveragemetadatadecoder.CoverageMetaDataDecoder> = _d;
        //"file:///home/runner/.go/go1.21.3/src/internal/coverage/decodemeta/decode.go#L70"
        return (@:checkr _d ?? throw "null pointer dereference")._strtab.get((@:checkr _d ?? throw "null pointer dereference")._hdr.pkgPath)?.__copy__();
    }
    @:keep
    @:tdfield
    static public function _readStringTable( _d:stdgo.Ref<stdgo._internal.internal.coverage.decodemeta.Decodemeta_coveragemetadatadecoder.CoverageMetaDataDecoder>):stdgo.Error {
        @:recv var _d:stdgo.Ref<stdgo._internal.internal.coverage.decodemeta.Decodemeta_coveragemetadatadecoder.CoverageMetaDataDecoder> = _d;
        var _stringTableLocation = (((44u32 : stdgo.GoUInt32) + ((4u32 : stdgo.GoUInt32) * (@:checkr _d ?? throw "null pointer dereference")._hdr.numFuncs : stdgo.GoUInt32) : stdgo.GoUInt32) : stdgo.GoInt64);
        //"file:///home/runner/.go/go1.21.3/src/internal/coverage/decodemeta/decode.go#L59"
        {
            var __tmp__ = (@:checkr _d ?? throw "null pointer dereference")._r.seek(_stringTableLocation, (0 : stdgo.GoInt)), __16:stdgo.GoInt64 = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                //"file:///home/runner/.go/go1.21.3/src/internal/coverage/decodemeta/decode.go#L60"
                return _err;
            };
        };
        (@:checkr _d ?? throw "null pointer dereference")._strtab = stdgo._internal.internal.coverage.stringtab.Stringtab_newreader.newReader((@:checkr _d ?? throw "null pointer dereference")._r);
        //"file:///home/runner/.go/go1.21.3/src/internal/coverage/decodemeta/decode.go#L65"
        (@:checkr _d ?? throw "null pointer dereference")._strtab.read();
        //"file:///home/runner/.go/go1.21.3/src/internal/coverage/decodemeta/decode.go#L66"
        return (null : stdgo.Error);
    }
    @:keep
    @:tdfield
    static public function _readHeader( _d:stdgo.Ref<stdgo._internal.internal.coverage.decodemeta.Decodemeta_coveragemetadatadecoder.CoverageMetaDataDecoder>):stdgo.Error {
        @:recv var _d:stdgo.Ref<stdgo._internal.internal.coverage.decodemeta.Decodemeta_coveragemetadatadecoder.CoverageMetaDataDecoder> = _d;
        //"file:///home/runner/.go/go1.21.3/src/internal/coverage/decodemeta/decode.go#L47"
        {
            var _err = (stdgo._internal.encoding.binary.Binary_read.read(stdgo.Go.asInterface((@:checkr _d ?? throw "null pointer dereference")._r), stdgo.Go.asInterface(stdgo._internal.encoding.binary.Binary_littleendian.littleEndian), stdgo.Go.toInterface(stdgo.Go.asInterface((stdgo.Go.setRef((@:checkr _d ?? throw "null pointer dereference")._hdr) : stdgo.Ref<stdgo._internal.internal.coverage.Coverage_metasymbolheader.MetaSymbolHeader>)))) : stdgo.Error);
            if (_err != null) {
                //"file:///home/runner/.go/go1.21.3/src/internal/coverage/decodemeta/decode.go#L48"
                return _err;
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/internal/coverage/decodemeta/decode.go#L50"
        if ((@:checkr _d ?? throw "null pointer dereference")._debug) {
            //"file:///home/runner/.go/go1.21.3/src/internal/coverage/decodemeta/decode.go#L51"
            stdgo._internal.fmt.Fmt_fprintf.fprintf(stdgo.Go.asInterface(stdgo._internal.os.Os_stderr.stderr), ("=-= after readHeader: %+v\n" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface((@:checkr _d ?? throw "null pointer dereference")._hdr)));
        };
        //"file:///home/runner/.go/go1.21.3/src/internal/coverage/decodemeta/decode.go#L53"
        return (null : stdgo.Error);
    }
}
