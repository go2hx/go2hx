package stdgo._internal.compress.bzip2;
function _benchmarkDecode(_b:stdgo.Ref<stdgo._internal.testing.Testing_b.B>, _compressed:stdgo.Slice<stdgo.GoUInt8>):Void {
        var __tmp__ = stdgo._internal.io.Io_copy.copy(stdgo._internal.io.Io_discard.discard, stdgo._internal.compress.bzip2.Bzip2_newreader.newReader(stdgo.Go.asInterface(stdgo._internal.bytes.Bytes_newreader.newReader(_compressed)))), _uncompressedSize:stdgo.GoInt64 = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        //"file:///home/runner/.go/go1.21.3/src/compress/bzip2/bzip2_test.go#L224"
        if (_err != null) {
            //"file:///home/runner/.go/go1.21.3/src/compress/bzip2/bzip2_test.go#L225"
            _b.fatal(stdgo.Go.toInterface(_err));
        };
        //"file:///home/runner/.go/go1.21.3/src/compress/bzip2/bzip2_test.go#L228"
        _b.setBytes(_uncompressedSize);
        //"file:///home/runner/.go/go1.21.3/src/compress/bzip2/bzip2_test.go#L229"
        _b.reportAllocs();
        //"file:///home/runner/.go/go1.21.3/src/compress/bzip2/bzip2_test.go#L230"
        _b.resetTimer();
        //"file:///home/runner/.go/go1.21.3/src/compress/bzip2/bzip2_test.go#L232"
        {
            var _i = (0 : stdgo.GoInt);
            while ((_i < (@:checkr _b ?? throw "null pointer dereference").n : Bool)) {
                var _r = stdgo._internal.bytes.Bytes_newreader.newReader(_compressed);
//"file:///home/runner/.go/go1.21.3/src/compress/bzip2/bzip2_test.go#L234"
                stdgo._internal.io.Io_copy.copy(stdgo._internal.io.Io_discard.discard, stdgo._internal.compress.bzip2.Bzip2_newreader.newReader(stdgo.Go.asInterface(_r)));
                _i++;
            };
        };
    }
