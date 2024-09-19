package _internal.vendor.golang_dot_org.x.net.dns.dnsmessage;
function _printUint32(_i:stdgo.GoUInt32):stdgo.GoString {
        var _buf = (new stdgo.Slice<stdgo.GoUInt8>((10 : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>);
        {
            var __0 = _buf, __1 = ((1000000000u32 : stdgo.GoUInt32) : stdgo.GoUInt32);
var _d = __1, _b = __0;
            stdgo.Go.cfor((_d > (0u32 : stdgo.GoUInt32) : Bool), _d = (_d / ((10u32 : stdgo.GoUInt32)) : stdgo.GoUInt32), {
                _b[(0 : stdgo.GoInt)] = ((((_i / _d : stdgo.GoUInt32) % (10u32 : stdgo.GoUInt32) : stdgo.GoUInt32) + (48u32 : stdgo.GoUInt32) : stdgo.GoUInt32) : stdgo.GoUInt8);
                if (((_b[(0 : stdgo.GoInt)] == ((48 : stdgo.GoUInt8)) && (_b.length) == ((_buf.length)) : Bool) && ((_buf.length) > (1 : stdgo.GoInt) : Bool) : Bool)) {
                    _buf = (_buf.__slice__((1 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>);
                };
                _b = (_b.__slice__((1 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>);
                _i = (_i % (_d) : stdgo.GoUInt32);
            });
        };
        return (_buf : stdgo.GoString)?.__copy__();
    }
