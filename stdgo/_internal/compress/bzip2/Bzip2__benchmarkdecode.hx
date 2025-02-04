package stdgo._internal.compress.bzip2;
function _benchmarkDecode(_b:stdgo.Ref<stdgo._internal.testing.Testing_b.B>, _compressed:stdgo.Slice<stdgo.GoUInt8>):Void {
        var __tmp__ = stdgo._internal.io.Io_copy.copy(stdgo._internal.io.Io_discard.discard, stdgo._internal.compress.bzip2.Bzip2_newreader.newReader(stdgo.Go.asInterface(stdgo._internal.bytes.Bytes_newreader.newReader(_compressed)))), _uncompressedSize:stdgo.GoInt64 = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            @:check2r _b.fatal(stdgo.Go.toInterface(_err));
        };
        @:check2r _b.setBytes(_uncompressedSize);
        @:check2r _b.reportAllocs();
        @:check2r _b.resetTimer();
        {
            var _i = (0 : stdgo.GoInt);
            while ((_i < (@:checkr _b ?? throw "null pointer dereference").n : Bool)) {
                var _r = stdgo._internal.bytes.Bytes_newreader.newReader(_compressed);
stdgo._internal.io.Io_copy.copy(stdgo._internal.io.Io_discard.discard, stdgo._internal.compress.bzip2.Bzip2_newreader.newReader(stdgo.Go.asInterface(_r)));
                _i++;
            };
        };
    }
