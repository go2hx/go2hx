package stdgo._internal.hash.crc32;
function makeTable(_poly:stdgo.GoUInt32):stdgo.Ref<stdgo._internal.hash.crc32.Crc32_table.Table> {
        //"file:///home/runner/.go/go1.21.3/src/hash/crc32/crc32.go#L124"
        {
            final __value__ = _poly;
            if (__value__ == ((-306674912u32 : stdgo.GoUInt32))) {
                //"file:///home/runner/.go/go1.21.3/src/hash/crc32/crc32.go#L126"
                stdgo._internal.hash.crc32.Crc32__ieeeonce._ieeeOnce.do_(stdgo._internal.hash.crc32.Crc32__ieeeinit._ieeeInit);
                //"file:///home/runner/.go/go1.21.3/src/hash/crc32/crc32.go#L127"
                return stdgo._internal.hash.crc32.Crc32_ieeetable.iEEETable;
            } else if (__value__ == ((-2097792136u32 : stdgo.GoUInt32))) {
                //"file:///home/runner/.go/go1.21.3/src/hash/crc32/crc32.go#L129"
                stdgo._internal.hash.crc32.Crc32__castagnolionce._castagnoliOnce.do_(stdgo._internal.hash.crc32.Crc32__castagnoliinit._castagnoliInit);
                //"file:///home/runner/.go/go1.21.3/src/hash/crc32/crc32.go#L130"
                return stdgo._internal.hash.crc32.Crc32__castagnolitable._castagnoliTable;
            } else {
                //"file:///home/runner/.go/go1.21.3/src/hash/crc32/crc32.go#L132"
                return stdgo._internal.hash.crc32.Crc32__simplemaketable._simpleMakeTable(_poly);
            };
        };
    }
