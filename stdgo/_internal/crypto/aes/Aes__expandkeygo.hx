package stdgo._internal.crypto.aes;
function _expandKeyGo(_key:stdgo.Slice<stdgo.GoUInt8>, _enc:stdgo.Slice<stdgo.GoUInt32>, _dec:stdgo.Slice<stdgo.GoUInt32>):Void {
        var _i:stdgo.GoInt = (0 : stdgo.GoInt);
        var _nk = ((_key.length) / (4 : stdgo.GoInt) : stdgo.GoInt);
        {
            _i = (0 : stdgo.GoInt);
            while ((_i < _nk : Bool)) {
                _enc[(_i : stdgo.GoInt)] = stdgo._internal.encoding.binary.Binary_bigendian.bigEndian.uint32((_key.__slice__(((4 : stdgo.GoInt) * _i : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>));
                _i++;
            };
        };
        while ((_i < (_enc.length) : Bool)) {
            var _t = (_enc[(_i - (1 : stdgo.GoInt) : stdgo.GoInt)] : stdgo.GoUInt32);
if ((_i % _nk : stdgo.GoInt) == ((0 : stdgo.GoInt))) {
                _t = (stdgo._internal.crypto.aes.Aes__subw._subw(stdgo._internal.crypto.aes.Aes__rotw._rotw(_t)) ^ (((stdgo._internal.crypto.aes.Aes__powx._powx[((_i / _nk : stdgo.GoInt) - (1 : stdgo.GoInt) : stdgo.GoInt)] : stdgo.GoUInt32) << (24i64 : stdgo.GoUInt64) : stdgo.GoUInt32)) : stdgo.GoUInt32);
            } else if (((_nk > (6 : stdgo.GoInt) : Bool) && ((_i % _nk : stdgo.GoInt) == (4 : stdgo.GoInt)) : Bool)) {
                _t = stdgo._internal.crypto.aes.Aes__subw._subw(_t);
            };
_enc[(_i : stdgo.GoInt)] = (_enc[(_i - _nk : stdgo.GoInt)] ^ _t : stdgo.GoUInt32);
            _i++;
        };
        if (_dec == null) {
            return;
        };
        var _n = (_enc.length : stdgo.GoInt);
        {
            var _i = (0 : stdgo.GoInt);
            while ((_i < _n : Bool)) {
                var _ei = ((_n - _i : stdgo.GoInt) - (4 : stdgo.GoInt) : stdgo.GoInt);
{
                    var _j = (0 : stdgo.GoInt);
                    while ((_j < (4 : stdgo.GoInt) : Bool)) {
                        var _x = (_enc[(_ei + _j : stdgo.GoInt)] : stdgo.GoUInt32);
if (((_i > (0 : stdgo.GoInt) : Bool) && ((_i + (4 : stdgo.GoInt) : stdgo.GoInt) < _n : Bool) : Bool)) {
                            _x = (((stdgo._internal.crypto.aes.Aes__td0._td0[(stdgo._internal.crypto.aes.Aes__sbox0._sbox0[((_x >> (24i64 : stdgo.GoUInt64) : stdgo.GoUInt32) : stdgo.GoInt)] : stdgo.GoInt)] ^ stdgo._internal.crypto.aes.Aes__td1._td1[(stdgo._internal.crypto.aes.Aes__sbox0._sbox0[(((_x >> (16i64 : stdgo.GoUInt64) : stdgo.GoUInt32) & (255u32 : stdgo.GoUInt32) : stdgo.GoUInt32) : stdgo.GoInt)] : stdgo.GoInt)] : stdgo.GoUInt32) ^ stdgo._internal.crypto.aes.Aes__td2._td2[(stdgo._internal.crypto.aes.Aes__sbox0._sbox0[(((_x >> (8i64 : stdgo.GoUInt64) : stdgo.GoUInt32) & (255u32 : stdgo.GoUInt32) : stdgo.GoUInt32) : stdgo.GoInt)] : stdgo.GoInt)] : stdgo.GoUInt32) ^ stdgo._internal.crypto.aes.Aes__td3._td3[(stdgo._internal.crypto.aes.Aes__sbox0._sbox0[((_x & (255u32 : stdgo.GoUInt32) : stdgo.GoUInt32) : stdgo.GoInt)] : stdgo.GoInt)] : stdgo.GoUInt32);
                        };
_dec[(_i + _j : stdgo.GoInt)] = _x;
                        _j++;
                    };
                };
                _i = (_i + ((4 : stdgo.GoInt)) : stdgo.GoInt);
            };
        };
    }
