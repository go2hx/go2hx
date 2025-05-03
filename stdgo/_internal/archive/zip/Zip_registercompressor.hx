package stdgo._internal.archive.zip;
function registerCompressor(_method:stdgo.GoUInt16, _comp:stdgo._internal.archive.zip.Zip_compressor.Compressor):Void {
        //"file:///home/runner/.go/go1.21.3/src/archive/zip/register.go#L128"
        {
            var __tmp__ = stdgo._internal.archive.zip.Zip__compressors._compressors.loadOrStore(stdgo.Go.toInterface(_method), stdgo.Go.toInterface(_comp)), __4:stdgo.AnyInterface = __tmp__._0, _dup:Bool = __tmp__._1;
            if (_dup) {
                //"file:///home/runner/.go/go1.21.3/src/archive/zip/register.go#L129"
                throw stdgo.Go.toInterface(("compressor already registered" : stdgo.GoString));
            };
        };
    }
