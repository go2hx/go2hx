package stdgo._internal.hash.crc64;
function checksum(_data:stdgo.Slice<stdgo.GoUInt8>, _tab:stdgo.Ref<stdgo._internal.hash.crc64.Crc64_table.Table>):stdgo.GoUInt64 {
        //"file:///home/runner/.go/go1.21.3/src/hash/crc64/crc64.go#L214"
        return stdgo._internal.hash.crc64.Crc64__update._update((0i64 : stdgo.GoUInt64), _tab, _data);
    }
