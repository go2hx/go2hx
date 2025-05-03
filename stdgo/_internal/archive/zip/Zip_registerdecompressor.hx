package stdgo._internal.archive.zip;
function registerDecompressor(_method:stdgo.GoUInt16, _dcomp:stdgo._internal.archive.zip.Zip_decompressor.Decompressor):Void {
        //"file:///home/runner/.go/go1.21.3/src/archive/zip/register.go#L120"
        {
            var __tmp__ = stdgo._internal.archive.zip.Zip__decompressors._decompressors.loadOrStore(stdgo.Go.toInterface(_method), stdgo.Go.toInterface(_dcomp)), __4:stdgo.AnyInterface = __tmp__._0, _dup:Bool = __tmp__._1;
            if (_dup) {
                //"file:///home/runner/.go/go1.21.3/src/archive/zip/register.go#L121"
                throw stdgo.Go.toInterface(("decompressor already registered" : stdgo.GoString));
            };
        };
    }
