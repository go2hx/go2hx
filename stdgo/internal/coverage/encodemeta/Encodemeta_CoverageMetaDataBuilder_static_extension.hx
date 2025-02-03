package stdgo.internal.coverage.encodemeta;
class CoverageMetaDataBuilder_static_extension {
    static public function emit(_b:CoverageMetaDataBuilder, _w:stdgo._internal.io.Io_WriteSeeker.WriteSeeker):stdgo.Tuple<haxe.ds.Vector<std.UInt>, stdgo.Error> {
        final _b = (_b : stdgo.Ref<stdgo._internal.internal.coverage.encodemeta.Encodemeta_CoverageMetaDataBuilder.CoverageMetaDataBuilder>);
        return {
            final obj = stdgo._internal.internal.coverage.encodemeta.Encodemeta_CoverageMetaDataBuilder_static_extension.CoverageMetaDataBuilder_static_extension.emit(_b, _w);
            { _0 : haxe.ds.Vector.fromArrayCopy([for (i in obj._0) i]), _1 : obj._1 };
        };
    }
    static public function _wrUint32(_b:CoverageMetaDataBuilder, _w:stdgo._internal.io.Io_WriteSeeker.WriteSeeker, _v:std.UInt):Void {
        final _b = (_b : stdgo.Ref<stdgo._internal.internal.coverage.encodemeta.Encodemeta_CoverageMetaDataBuilder.CoverageMetaDataBuilder>);
        final _v = (_v : stdgo.GoUInt32);
        stdgo._internal.internal.coverage.encodemeta.Encodemeta_CoverageMetaDataBuilder_static_extension.CoverageMetaDataBuilder_static_extension._wrUint32(_b, _w, _v);
    }
    static public function _reportWriteError(_b:CoverageMetaDataBuilder, _err:stdgo.Error):Void {
        final _b = (_b : stdgo.Ref<stdgo._internal.internal.coverage.encodemeta.Encodemeta_CoverageMetaDataBuilder.CoverageMetaDataBuilder>);
        final _err = (_err : stdgo.Error);
        stdgo._internal.internal.coverage.encodemeta.Encodemeta_CoverageMetaDataBuilder_static_extension.CoverageMetaDataBuilder_static_extension._reportWriteError(_b, _err);
    }
    static public function _emitFunc(_b:CoverageMetaDataBuilder, _w:stdgo._internal.io.Io_WriteSeeker.WriteSeeker, _off:haxe.Int64, _f:T_funcDesc):stdgo.Tuple<haxe.Int64, stdgo.Error> {
        final _b = (_b : stdgo.Ref<stdgo._internal.internal.coverage.encodemeta.Encodemeta_CoverageMetaDataBuilder.CoverageMetaDataBuilder>);
        final _off = (_off : stdgo.GoInt64);
        return {
            final obj = stdgo._internal.internal.coverage.encodemeta.Encodemeta_CoverageMetaDataBuilder_static_extension.CoverageMetaDataBuilder_static_extension._emitFunc(_b, _w, _off, _f);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function _emitFuncOffsets(_b:CoverageMetaDataBuilder, _w:stdgo._internal.io.Io_WriteSeeker.WriteSeeker, _off:haxe.Int64):haxe.Int64 {
        final _b = (_b : stdgo.Ref<stdgo._internal.internal.coverage.encodemeta.Encodemeta_CoverageMetaDataBuilder.CoverageMetaDataBuilder>);
        final _off = (_off : stdgo.GoInt64);
        return stdgo._internal.internal.coverage.encodemeta.Encodemeta_CoverageMetaDataBuilder_static_extension.CoverageMetaDataBuilder_static_extension._emitFuncOffsets(_b, _w, _off);
    }
    static public function addFunc(_b:CoverageMetaDataBuilder, _f:stdgo._internal.internal.coverage.Coverage_FuncDesc.FuncDesc):std.UInt {
        final _b = (_b : stdgo.Ref<stdgo._internal.internal.coverage.encodemeta.Encodemeta_CoverageMetaDataBuilder.CoverageMetaDataBuilder>);
        return stdgo._internal.internal.coverage.encodemeta.Encodemeta_CoverageMetaDataBuilder_static_extension.CoverageMetaDataBuilder_static_extension.addFunc(_b, _f);
    }
}
