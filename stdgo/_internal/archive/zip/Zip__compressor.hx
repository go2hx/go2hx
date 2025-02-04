package stdgo._internal.archive.zip;
function _compressor(_method:stdgo.GoUInt16):stdgo._internal.archive.zip.Zip_compressor.Compressor {
        var __tmp__ = @:check2 stdgo._internal.archive.zip.Zip__compressors._compressors.load(stdgo.Go.toInterface(_method)), _ci:stdgo.AnyInterface = __tmp__._0, _ok:Bool = __tmp__._1;
        if (!_ok) {
            return null;
        };
        return (stdgo.Go.typeAssert((_ci : stdgo._internal.archive.zip.Zip_compressor.Compressor)) : stdgo._internal.archive.zip.Zip_compressor.Compressor);
    }
