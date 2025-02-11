package stdgo._internal.hash.crc32;
function benchmarkCRC32(_b:stdgo.Ref<stdgo._internal.testing.Testing_b.B>):Void {
        @:check2r _b.run(("poly=IEEE" : stdgo.GoString), stdgo._internal.hash.crc32.Crc32__benchmarkall._benchmarkAll(stdgo._internal.hash.crc32.Crc32_newieee.newIEEE()));
        @:check2r _b.run(("poly=Castagnoli" : stdgo.GoString), stdgo._internal.hash.crc32.Crc32__benchmarkall._benchmarkAll(stdgo._internal.hash.crc32.Crc32_new_.new_(stdgo._internal.hash.crc32.Crc32_maketable.makeTable((-2097792136u32 : stdgo.GoUInt32)))));
        @:check2r _b.run(("poly=Koopman" : stdgo.GoString), stdgo._internal.hash.crc32.Crc32__benchmarkall._benchmarkAll(stdgo._internal.hash.crc32.Crc32_new_.new_(stdgo._internal.hash.crc32.Crc32_maketable.makeTable((-349054930u32 : stdgo.GoUInt32)))));
    }
