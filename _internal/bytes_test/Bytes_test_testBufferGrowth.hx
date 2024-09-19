package _internal.bytes_test;
import stdgo._internal.bytes.Bytes;
import stdgo._internal.bytes.Bytes;
import stdgo._internal.bytes.Bytes;
import stdgo._internal.bytes.Bytes;
function testBufferGrowth(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        var _b:stdgo._internal.bytes.Bytes_Buffer.Buffer = ({} : stdgo._internal.bytes.Bytes_Buffer.Buffer);
        var _buf = (new stdgo.Slice<stdgo.GoUInt8>((1024 : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>);
        _b.write((_buf.__slice__((0 : stdgo.GoInt), (1 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>));
        var _cap0:stdgo.GoInt = (0 : stdgo.GoInt);
        {
            var _i = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_i < (5120 : stdgo.GoInt) : Bool), _i++, {
                _b.write(_buf);
                _b.read(_buf);
                if (_i == ((0 : stdgo.GoInt))) {
                    _cap0 = _b.cap();
                };
            });
        };
        var _cap1 = (_b.cap() : stdgo.GoInt);
        if ((_cap1 > (_cap0 * (3 : stdgo.GoInt) : stdgo.GoInt) : Bool)) {
            _t.errorf(("buffer cap = %d; too big (grew from %d)" : stdgo.GoString), stdgo.Go.toInterface(_cap1), stdgo.Go.toInterface(_cap0));
        };
    }
