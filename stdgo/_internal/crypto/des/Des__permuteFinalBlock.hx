package stdgo._internal.crypto.des;
function _permuteFinalBlock(_block:stdgo.GoUInt64):stdgo.GoUInt64 {
        var _b1 = (_block & (-6148914692668172971i64 : stdgo.GoUInt64) : stdgo.GoUInt64);
        _block = (_block ^ (((_b1 ^ (_b1 >> (33i64 : stdgo.GoUInt64) : stdgo.GoUInt64) : stdgo.GoUInt64) ^ (_b1 << (33i64 : stdgo.GoUInt64) : stdgo.GoUInt64) : stdgo.GoUInt64)) : stdgo.GoUInt64);
        _b1 = (_block & (3674993371882992384i64 : stdgo.GoUInt64) : stdgo.GoUInt64);
        var _b2 = (_block & (57421771435671756i64 : stdgo.GoUInt64) : stdgo.GoUInt64);
        _block = (_block ^ ((((_b1 ^ _b2 : stdgo.GoUInt64) ^ (_b1 >> (6i64 : stdgo.GoUInt64) : stdgo.GoUInt64) : stdgo.GoUInt64) ^ (_b2 << (6i64 : stdgo.GoUInt64) : stdgo.GoUInt64) : stdgo.GoUInt64)) : stdgo.GoUInt64);
        _b1 = (_block & (1085086035472220160i64 : stdgo.GoUInt64) : stdgo.GoUInt64);
        _b2 = (_block & (264913582878960i64 : stdgo.GoUInt64) : stdgo.GoUInt64);
        _block = (_block ^ ((((_b1 ^ _b2 : stdgo.GoUInt64) ^ (_b1 >> (12i64 : stdgo.GoUInt64) : stdgo.GoUInt64) : stdgo.GoUInt64) ^ (_b2 << (12i64 : stdgo.GoUInt64) : stdgo.GoUInt64) : stdgo.GoUInt64)) : stdgo.GoUInt64);
        _b1 = ((_block >> (32i64 : stdgo.GoUInt64) : stdgo.GoUInt64) & (16711935i64 : stdgo.GoUInt64) : stdgo.GoUInt64);
        _b2 = ((_block & (4278255360i64 : stdgo.GoUInt64) : stdgo.GoUInt64));
        _block = (_block ^ (((((_b1 << (32i64 : stdgo.GoUInt64) : stdgo.GoUInt64) ^ _b2 : stdgo.GoUInt64) ^ (_b1 << (8i64 : stdgo.GoUInt64) : stdgo.GoUInt64) : stdgo.GoUInt64) ^ (_b2 << (24i64 : stdgo.GoUInt64) : stdgo.GoUInt64) : stdgo.GoUInt64)) : stdgo.GoUInt64);
        _b1 = (_block >> (48i64 : stdgo.GoUInt64) : stdgo.GoUInt64);
        _b2 = (_block << (48i64 : stdgo.GoUInt64) : stdgo.GoUInt64);
        _block = (_block ^ ((((_b1 ^ _b2 : stdgo.GoUInt64) ^ (_b1 << (48i64 : stdgo.GoUInt64) : stdgo.GoUInt64) : stdgo.GoUInt64) ^ (_b2 >> (48i64 : stdgo.GoUInt64) : stdgo.GoUInt64) : stdgo.GoUInt64)) : stdgo.GoUInt64);
        return _block;
    }
