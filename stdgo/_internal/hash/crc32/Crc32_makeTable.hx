package stdgo._internal.hash.crc32;
function makeTable(_poly:stdgo.GoUInt32):stdgo.Ref<stdgo._internal.hash.crc32.Crc32_Table.Table> {
        {
            final __value__ = _poly;
            if (__value__ == ((-306674912u32 : stdgo.GoUInt32))) {
                stdgo._internal.hash.crc32.Crc32__ieeeOnce._ieeeOnce.do_(stdgo._internal.hash.crc32.Crc32__ieeeInit._ieeeInit);
                return stdgo._internal.hash.crc32.Crc32_ieeetable.ieeetable;
            } else if (__value__ == ((-2097792136u32 : stdgo.GoUInt32))) {
                stdgo._internal.hash.crc32.Crc32__castagnoliOnce._castagnoliOnce.do_(stdgo._internal.hash.crc32.Crc32__castagnoliInit._castagnoliInit);
                return stdgo._internal.hash.crc32.Crc32__castagnoliTable._castagnoliTable;
            } else {
                return stdgo._internal.hash.crc32.Crc32__simpleMakeTable._simpleMakeTable(_poly);
            };
        };
    }
