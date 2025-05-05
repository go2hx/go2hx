package stdgo._internal.hash.crc32;
function _simpleMakeTable(_poly:stdgo.GoUInt32):stdgo.Ref<stdgo._internal.hash.crc32.Crc32_table.Table> {
        var _t = (stdgo.Go.setRef(new stdgo._internal.hash.crc32.Crc32_table.Table(256, 256, ...[for (i in 0 ... 256) (0 : stdgo.GoUInt32)])) : stdgo.Ref<stdgo._internal.hash.crc32.Crc32_table.Table>);
        //"file:///home/runner/.go/go1.21.3/src/hash/crc32/crc32_generic.go#L20"
        stdgo._internal.hash.crc32.Crc32__simplepopulatetable._simplePopulateTable(_poly, _t);
        //"file:///home/runner/.go/go1.21.3/src/hash/crc32/crc32_generic.go#L21"
        return _t;
    }
