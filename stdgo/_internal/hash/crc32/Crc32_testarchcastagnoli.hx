package stdgo._internal.hash.crc32;
function testArchCastagnoli(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void {
        //"file:///home/runner/.go/go1.21.3/src/hash/crc32/crc32_test.go#L240"
        if (!stdgo._internal.hash.crc32.Crc32__archavailablecastagnoli._archAvailableCastagnoli()) {
            //"file:///home/runner/.go/go1.21.3/src/hash/crc32/crc32_test.go#L241"
            _t.skip(stdgo.Go.toInterface(("Arch-specific Castagnoli not available." : stdgo.GoString)));
        };
        //"file:///home/runner/.go/go1.21.3/src/hash/crc32/crc32_test.go#L243"
        stdgo._internal.hash.crc32.Crc32__archinitcastagnoli._archInitCastagnoli();
        var _slicingTable = stdgo._internal.hash.crc32.Crc32__slicingmaketable._slicingMakeTable((-2097792136u32 : stdgo.GoUInt32));
        //"file:///home/runner/.go/go1.21.3/src/hash/crc32/crc32_test.go#L245"
        stdgo._internal.hash.crc32.Crc32__testcrosscheck._testCrossCheck(_t, stdgo._internal.hash.crc32.Crc32__archupdatecastagnoli._archUpdateCastagnoli, function(_crc:stdgo.GoUInt32, _b:stdgo.Slice<stdgo.GoUInt8>):stdgo.GoUInt32 {
            //"file:///home/runner/.go/go1.21.3/src/hash/crc32/crc32_test.go#L246"
            return stdgo._internal.hash.crc32.Crc32__slicingupdate._slicingUpdate(_crc, _slicingTable, _b);
        });
    }
