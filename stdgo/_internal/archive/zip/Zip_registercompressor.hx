package stdgo._internal.archive.zip;
function registerCompressor(_method:stdgo.GoUInt16, _comp:stdgo._internal.archive.zip.Zip_compressor.Compressor):Void {
        {
            var __tmp__ = @:check2 stdgo._internal.archive.zip.Zip__compressors._compressors.loadOrStore(stdgo.Go.toInterface(_method), stdgo.Go.toInterface(_comp)), __4:stdgo.AnyInterface = __tmp__._0, _dup:Bool = __tmp__._1;
            if (_dup) {
                throw stdgo.Go.toInterface(("compressor already registered" : stdgo.GoString));
            };
        };
    }
