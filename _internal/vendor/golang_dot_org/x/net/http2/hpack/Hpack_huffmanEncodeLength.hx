package _internal.vendor.golang_dot_org.x.net.http2.hpack;
function huffmanEncodeLength(_s:stdgo.GoString):stdgo.GoUInt64 {
        var _n = ((0i64 : stdgo.GoUInt64) : stdgo.GoUInt64);
        {
            var _i = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_i < (_s.length) : Bool), _i++, {
                _n = (_n + ((_internal.vendor.golang_dot_org.x.net.http2.hpack.Hpack__huffmanCodeLen._huffmanCodeLen[(_s[(_i : stdgo.GoInt)] : stdgo.GoInt)] : stdgo.GoUInt64)) : stdgo.GoUInt64);
            });
        };
        return (((_n + (7i64 : stdgo.GoUInt64) : stdgo.GoUInt64)) / (8i64 : stdgo.GoUInt64) : stdgo.GoUInt64);
    }
