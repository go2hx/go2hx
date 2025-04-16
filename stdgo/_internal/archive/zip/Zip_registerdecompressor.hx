package stdgo._internal.archive.zip;
function registerDecompressor(_method:stdgo.GoUInt16, _dcomp:stdgo._internal.archive.zip.Zip_decompressor.Decompressor):Void {
        {
            var __tmp__ = @:check2 stdgo._internal.archive.zip.Zip__decompressors._decompressors.loadOrStore(stdgo.Go.toInterface(_method), stdgo.Go.toInterface(_dcomp)), __4:stdgo.AnyInterface = __tmp__._0, _dup:Bool = __tmp__._1;
            if (_dup) {
                throw stdgo.Go.toInterface(("decompressor already registered" : stdgo.GoString));
            };
        };
    }
