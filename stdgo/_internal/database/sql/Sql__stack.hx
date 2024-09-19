package stdgo._internal.database.sql;
function _stack():stdgo.GoString {
        var _buf:stdgo.GoArray<stdgo.GoUInt8> = new stdgo.GoArray<stdgo.GoUInt8>(2048, 2048, ...[for (i in 0 ... 2048) (0 : stdgo.GoUInt8)]);
        return ((_buf.__slice__(0, stdgo._internal.runtime.Runtime_stack.stack((_buf.__slice__(0) : stdgo.Slice<stdgo.GoUInt8>), false)) : stdgo.Slice<stdgo.GoUInt8>) : stdgo.GoString)?.__copy__();
    }
