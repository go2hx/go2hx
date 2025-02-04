package stdgo._internal.hash.crc32;
function makeTable(_poly:stdgo.GoUInt32):stdgo.Ref<stdgo._internal.hash.crc32.Crc32_table.Table> {
        {
            final __value__ = _poly;
            if (__value__ == ((-306674912u32 : stdgo.GoUInt32))) {
                @:check2 stdgo._internal.hash.crc32.Crc32__ieeeonce._ieeeOnce.do_(stdgo._internal.hash.crc32.Crc32__ieeeinit._ieeeInit);
                return stdgo._internal.hash.crc32.Crc32_ieeetable.iEEETable;
            } else if (__value__ == ((-2097792136u32 : stdgo.GoUInt32))) {
                @:check2 stdgo._internal.hash.crc32.Crc32__castagnolionce._castagnoliOnce.do_(stdgo._internal.hash.crc32.Crc32__castagnoliinit._castagnoliInit);
                return stdgo._internal.hash.crc32.Crc32__castagnolitable._castagnoliTable;
            } else {
                return stdgo._internal.hash.crc32.Crc32__simplemaketable._simpleMakeTable(_poly);
            };
        };
    }
