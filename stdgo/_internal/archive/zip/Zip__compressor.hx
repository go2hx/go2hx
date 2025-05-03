package stdgo._internal.archive.zip;
function _compressor(_method:stdgo.GoUInt16):stdgo._internal.archive.zip.Zip_compressor.Compressor {
        var __tmp__ = stdgo._internal.archive.zip.Zip__compressors._compressors.load(stdgo.Go.toInterface(_method)), _ci:stdgo.AnyInterface = __tmp__._0, _ok:Bool = __tmp__._1;
        //"file:///home/runner/.go/go1.21.3/src/archive/zip/register.go#L135"
        if (!_ok) {
            //"file:///home/runner/.go/go1.21.3/src/archive/zip/register.go#L136"
            return null;
        };
        //"file:///home/runner/.go/go1.21.3/src/archive/zip/register.go#L138"
        return (stdgo.Go.typeAssert((_ci : stdgo._internal.archive.zip.Zip_compressor.Compressor)) : stdgo._internal.archive.zip.Zip_compressor.Compressor);
    }
