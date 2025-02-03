package stdgo.internal.coverage.encodemeta;
class Encodemeta {
    static public inline function newCoverageMetaDataBuilder(_pkgpath:String, _pkgname:String, _modulepath:String):stdgo.Tuple<CoverageMetaDataBuilder, stdgo.Error> {
        final _pkgpath = (_pkgpath : stdgo.GoString);
        final _pkgname = (_pkgname : stdgo.GoString);
        final _modulepath = (_modulepath : stdgo.GoString);
        return {
            final obj = stdgo._internal.internal.coverage.encodemeta.Encodemeta_newCoverageMetaDataBuilder.newCoverageMetaDataBuilder(_pkgpath, _pkgname, _modulepath);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    /**
        HashFuncDesc computes an md5 sum of a coverage.FuncDesc and returns
        a digest for it.
    **/
    static public inline function hashFuncDesc(_f:stdgo._internal.internal.coverage.Coverage_FuncDesc.FuncDesc):haxe.ds.Vector<std.UInt> {
        final _f = (_f : stdgo.Ref<stdgo._internal.internal.coverage.Coverage_FuncDesc.FuncDesc>);
        return haxe.ds.Vector.fromArrayCopy([for (i in stdgo._internal.internal.coverage.encodemeta.Encodemeta_hashFuncDesc.hashFuncDesc(_f)) i]);
    }
    static public inline function newCoverageMetaFileWriter(_mfname:String, _w:stdgo._internal.io.Io_Writer.Writer):CoverageMetaFileWriter {
        final _mfname = (_mfname : stdgo.GoString);
        return stdgo._internal.internal.coverage.encodemeta.Encodemeta_newCoverageMetaFileWriter.newCoverageMetaFileWriter(_mfname, _w);
    }
}
