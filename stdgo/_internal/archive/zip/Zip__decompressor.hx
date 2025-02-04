package stdgo._internal.archive.zip;
function _decompressor(_method:stdgo.GoUInt16):stdgo._internal.archive.zip.Zip_decompressor.Decompressor {
        var __tmp__ = @:check2 stdgo._internal.archive.zip.Zip__decompressors._decompressors.load(stdgo.Go.toInterface(_method)), _di:stdgo.AnyInterface = __tmp__._0, _ok:Bool = __tmp__._1;
        if (!_ok) {
            return null;
        };
        return (stdgo.Go.typeAssert((_di : stdgo._internal.archive.zip.Zip_decompressor.Decompressor)) : stdgo._internal.archive.zip.Zip_decompressor.Decompressor);
    }
