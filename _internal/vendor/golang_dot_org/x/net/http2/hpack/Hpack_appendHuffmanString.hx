package _internal.vendor.golang_dot_org.x.net.http2.hpack;
function appendHuffmanString(_dst:stdgo.Slice<stdgo.GoUInt8>, _s:stdgo.GoString):stdgo.Slice<stdgo.GoUInt8> {
        var __0:stdgo.GoUInt64 = (0 : stdgo.GoUInt64), __1:stdgo.GoUInt = (0 : stdgo.GoUInt);
var _n = __1, _x = __0;
        {
            var _i = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_i < (_s.length) : Bool), _i++, {
                var _c = (_s[(_i : stdgo.GoInt)] : stdgo.GoUInt8);
                _n = (_n + ((_internal.vendor.golang_dot_org.x.net.http2.hpack.Hpack__huffmanCodeLen._huffmanCodeLen[(_c : stdgo.GoInt)] : stdgo.GoUInt)) : stdgo.GoUInt);
                _x = (_x << ((_internal.vendor.golang_dot_org.x.net.http2.hpack.Hpack__huffmanCodeLen._huffmanCodeLen[(_c : stdgo.GoInt)] % (64 : stdgo.GoUInt8) : stdgo.GoUInt8)) : stdgo.GoUInt64);
                _x = (_x | ((_internal.vendor.golang_dot_org.x.net.http2.hpack.Hpack__huffmanCodes._huffmanCodes[(_c : stdgo.GoInt)] : stdgo.GoUInt64)) : stdgo.GoUInt64);
                if ((_n >= (32u32 : stdgo.GoUInt) : Bool)) {
                    _n = (_n % ((32u32 : stdgo.GoUInt)) : stdgo.GoUInt);
                    var _y = ((_x >> _n : stdgo.GoUInt64) : stdgo.GoUInt32);
                    _dst = (_dst.__append__(((_y >> (24i64 : stdgo.GoUInt64) : stdgo.GoUInt32) : stdgo.GoUInt8), ((_y >> (16i64 : stdgo.GoUInt64) : stdgo.GoUInt32) : stdgo.GoUInt8), ((_y >> (8i64 : stdgo.GoUInt64) : stdgo.GoUInt32) : stdgo.GoUInt8), (_y : stdgo.GoUInt8)));
                };
            });
        };
        {
            var _over = (_n % (8u32 : stdgo.GoUInt) : stdgo.GoUInt);
            if ((_over > (0u32 : stdgo.GoUInt) : Bool)) {
                {};
                var _pad = ((8u32 : stdgo.GoUInt) - _over : stdgo.GoUInt);
                _x = (((_x << _pad : stdgo.GoUInt64)) | (((255i64 : stdgo.GoUInt64) >> _over : stdgo.GoUInt64)) : stdgo.GoUInt64);
                _n = (_n + (_pad) : stdgo.GoUInt);
            };
        };
        {
            final __value__ = (_n / (8u32 : stdgo.GoUInt) : stdgo.GoUInt);
            if (__value__ == ((0u32 : stdgo.GoUInt))) {
                return _dst;
            } else if (__value__ == ((1u32 : stdgo.GoUInt))) {
                return (_dst.__append__((_x : stdgo.GoUInt8)));
            } else if (__value__ == ((2u32 : stdgo.GoUInt))) {
                var _y = (_x : stdgo.GoUInt16);
                return (_dst.__append__(((_y >> (8i64 : stdgo.GoUInt64) : stdgo.GoUInt16) : stdgo.GoUInt8), (_y : stdgo.GoUInt8)));
            } else if (__value__ == ((3u32 : stdgo.GoUInt))) {
                var _y = ((_x >> (8i64 : stdgo.GoUInt64) : stdgo.GoUInt64) : stdgo.GoUInt16);
                return (_dst.__append__(((_y >> (8i64 : stdgo.GoUInt64) : stdgo.GoUInt16) : stdgo.GoUInt8), (_y : stdgo.GoUInt8), (_x : stdgo.GoUInt8)));
            };
        };
        var _y = (_x : stdgo.GoUInt32);
        return (_dst.__append__(((_y >> (24i64 : stdgo.GoUInt64) : stdgo.GoUInt32) : stdgo.GoUInt8), ((_y >> (16i64 : stdgo.GoUInt64) : stdgo.GoUInt32) : stdgo.GoUInt8), ((_y >> (8i64 : stdgo.GoUInt64) : stdgo.GoUInt32) : stdgo.GoUInt8), (_y : stdgo.GoUInt8)));
    }
