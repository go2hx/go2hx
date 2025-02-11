package stdgo._internal.hash.crc32;
function testSlicing(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void {
        var _tab = stdgo._internal.hash.crc32.Crc32__slicingmaketable._slicingMakeTable((-306674912u32 : stdgo.GoUInt32));
        stdgo._internal.hash.crc32.Crc32__testgoldenieee._testGoldenIEEE(_t, function(_b:stdgo.Slice<stdgo.GoUInt8>):stdgo.GoUInt32 {
            return stdgo._internal.hash.crc32.Crc32__slicingupdate._slicingUpdate((0u32 : stdgo.GoUInt32), _tab, _b);
        });
        _tab = stdgo._internal.hash.crc32.Crc32__slicingmaketable._slicingMakeTable((-2097792136u32 : stdgo.GoUInt32));
        stdgo._internal.hash.crc32.Crc32__testgoldencastagnoli._testGoldenCastagnoli(_t, function(_b:stdgo.Slice<stdgo.GoUInt8>):stdgo.GoUInt32 {
            return stdgo._internal.hash.crc32.Crc32__slicingupdate._slicingUpdate((0u32 : stdgo.GoUInt32), _tab, _b);
        });
        for (__4 => _poly in (new stdgo.Slice<stdgo.GoUInt32>(4, 4, ...[(-306674912u32 : stdgo.GoUInt32), (-2097792136u32 : stdgo.GoUInt32), (-349054930u32 : stdgo.GoUInt32), (-712867199u32 : stdgo.GoUInt32)]).__setNumber32__() : stdgo.Slice<stdgo.GoUInt32>)) {
            var _t1 = stdgo._internal.hash.crc32.Crc32__simplemaketable._simpleMakeTable(_poly);
            var _f1 = function(_crc:stdgo.GoUInt32, _b:stdgo.Slice<stdgo.GoUInt8>):stdgo.GoUInt32 {
                return stdgo._internal.hash.crc32.Crc32__simpleupdate._simpleUpdate(_crc, _t1, _b);
            };
            var _t2 = stdgo._internal.hash.crc32.Crc32__slicingmaketable._slicingMakeTable(_poly);
            var _f2 = function(_crc:stdgo.GoUInt32, _b:stdgo.Slice<stdgo.GoUInt8>):stdgo.GoUInt32 {
                return stdgo._internal.hash.crc32.Crc32__slicingupdate._slicingUpdate(_crc, _t2, _b);
            };
            stdgo._internal.hash.crc32.Crc32__testcrosscheck._testCrossCheck(_t, _f1, _f2);
        };
    }
