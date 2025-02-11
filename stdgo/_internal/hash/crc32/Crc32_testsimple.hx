package stdgo._internal.hash.crc32;
function testSimple(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void {
        var _tab = stdgo._internal.hash.crc32.Crc32__simplemaketable._simpleMakeTable((-306674912u32 : stdgo.GoUInt32));
        stdgo._internal.hash.crc32.Crc32__testgoldenieee._testGoldenIEEE(_t, function(_b:stdgo.Slice<stdgo.GoUInt8>):stdgo.GoUInt32 {
            return stdgo._internal.hash.crc32.Crc32__simpleupdate._simpleUpdate((0u32 : stdgo.GoUInt32), _tab, _b);
        });
        _tab = stdgo._internal.hash.crc32.Crc32__simplemaketable._simpleMakeTable((-2097792136u32 : stdgo.GoUInt32));
        stdgo._internal.hash.crc32.Crc32__testgoldencastagnoli._testGoldenCastagnoli(_t, function(_b:stdgo.Slice<stdgo.GoUInt8>):stdgo.GoUInt32 {
            return stdgo._internal.hash.crc32.Crc32__simpleupdate._simpleUpdate((0u32 : stdgo.GoUInt32), _tab, _b);
        });
    }
