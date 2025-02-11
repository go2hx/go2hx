package stdgo._internal.hash.crc32;
function testArchIEEE(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void {
        if (!stdgo._internal.hash.crc32.Crc32__archavailableieee._archAvailableIEEE()) {
            @:check2r _t.skip(stdgo.Go.toInterface(("Arch-specific IEEE not available." : stdgo.GoString)));
        };
        stdgo._internal.hash.crc32.Crc32__archinitieee._archInitIEEE();
        var _slicingTable = stdgo._internal.hash.crc32.Crc32__slicingmaketable._slicingMakeTable((-306674912u32 : stdgo.GoUInt32));
        stdgo._internal.hash.crc32.Crc32__testcrosscheck._testCrossCheck(_t, stdgo._internal.hash.crc32.Crc32__archupdateieee._archUpdateIEEE, function(_crc:stdgo.GoUInt32, _b:stdgo.Slice<stdgo.GoUInt8>):stdgo.GoUInt32 {
            return stdgo._internal.hash.crc32.Crc32__slicingupdate._slicingUpdate(_crc, _slicingTable, _b);
        });
    }
