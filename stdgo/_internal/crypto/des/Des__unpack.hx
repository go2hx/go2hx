package stdgo._internal.crypto.des;
import stdgo._internal.encoding.binary.Binary;
import stdgo._internal.crypto.internal.alias.Alias;
import stdgo._internal.strconv.Strconv;
function _unpack(_x:stdgo.GoUInt64):stdgo.GoUInt64 {
        return ((((((((((((_x >> (6i64 : stdgo.GoUInt64) : stdgo.GoUInt64)) & (255i64 : stdgo.GoUInt64) : stdgo.GoUInt64)) << (0i64 : stdgo.GoUInt64) : stdgo.GoUInt64) | (((((_x >> (18i64 : stdgo.GoUInt64) : stdgo.GoUInt64)) & (255i64 : stdgo.GoUInt64) : stdgo.GoUInt64)) << (8i64 : stdgo.GoUInt64) : stdgo.GoUInt64) : stdgo.GoUInt64) | (((((_x >> (30i64 : stdgo.GoUInt64) : stdgo.GoUInt64)) & (255i64 : stdgo.GoUInt64) : stdgo.GoUInt64)) << (16i64 : stdgo.GoUInt64) : stdgo.GoUInt64) : stdgo.GoUInt64) | (((((_x >> (42i64 : stdgo.GoUInt64) : stdgo.GoUInt64)) & (255i64 : stdgo.GoUInt64) : stdgo.GoUInt64)) << (24i64 : stdgo.GoUInt64) : stdgo.GoUInt64) : stdgo.GoUInt64) | (((((_x >> (0i64 : stdgo.GoUInt64) : stdgo.GoUInt64)) & (255i64 : stdgo.GoUInt64) : stdgo.GoUInt64)) << (32i64 : stdgo.GoUInt64) : stdgo.GoUInt64) : stdgo.GoUInt64) | (((((_x >> (12i64 : stdgo.GoUInt64) : stdgo.GoUInt64)) & (255i64 : stdgo.GoUInt64) : stdgo.GoUInt64)) << (40i64 : stdgo.GoUInt64) : stdgo.GoUInt64) : stdgo.GoUInt64) | (((((_x >> (24i64 : stdgo.GoUInt64) : stdgo.GoUInt64)) & (255i64 : stdgo.GoUInt64) : stdgo.GoUInt64)) << (48i64 : stdgo.GoUInt64) : stdgo.GoUInt64) : stdgo.GoUInt64) | (((((_x >> (36i64 : stdgo.GoUInt64) : stdgo.GoUInt64)) & (255i64 : stdgo.GoUInt64) : stdgo.GoUInt64)) << (56i64 : stdgo.GoUInt64) : stdgo.GoUInt64) : stdgo.GoUInt64);
    }
