package stdgo._internal.hash.crc32;
function testCastagnoliRace(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void {
        var _ieee = (stdgo._internal.hash.crc32.Crc32_newieee.newIEEE() : stdgo._internal.hash.Hash_hash32.Hash32);
        stdgo.Go.routine(() -> stdgo._internal.hash.crc32.Crc32_maketable.makeTable((-2097792136u32 : stdgo.GoUInt32)));
        _ieee.write(((("hello" : stdgo.GoString) : stdgo.GoString) : stdgo.Slice<stdgo.GoUInt8>));
    }
