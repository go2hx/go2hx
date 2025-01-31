package stdgo._internal.hash.crc32;
import stdgo._internal.errors.Errors;
function _simpleMakeTable(_poly:stdgo.GoUInt32):stdgo.Ref<stdgo._internal.hash.crc32.Crc32_Table.Table> {
        var _t = (stdgo.Go.setRef(new stdgo._internal.hash.crc32.Crc32_Table.Table(256, 256, ...[for (i in 0 ... 256) (0 : stdgo.GoUInt32)])) : stdgo.Ref<stdgo._internal.hash.crc32.Crc32_Table.Table>);
        stdgo._internal.hash.crc32.Crc32__simplePopulateTable._simplePopulateTable(_poly, _t);
        return _t;
    }
