package stdgo._internal.archive.zip;
function _decompressor(_method:stdgo.GoUInt16):stdgo._internal.archive.zip.Zip_decompressor.Decompressor {
        var __tmp__ = stdgo._internal.archive.zip.Zip__decompressors._decompressors.load(stdgo.Go.toInterface(_method)), _di:stdgo.AnyInterface = __tmp__._0, _ok:Bool = __tmp__._1;
        //"file:///home/runner/.go/go1.21.3/src/archive/zip/register.go#L143"
        if (!_ok) {
            //"file:///home/runner/.go/go1.21.3/src/archive/zip/register.go#L144"
            return null;
        };
        //"file:///home/runner/.go/go1.21.3/src/archive/zip/register.go#L146"
        return (stdgo.Go.typeAssert((_di : stdgo._internal.archive.zip.Zip_decompressor.Decompressor)) : stdgo._internal.archive.zip.Zip_decompressor.Decompressor);
    }
