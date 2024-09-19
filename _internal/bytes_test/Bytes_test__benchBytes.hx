package _internal.bytes_test;
import stdgo._internal.bytes.Bytes;
import stdgo._internal.bytes.Bytes;
import stdgo._internal.bytes.Bytes;
import stdgo._internal.bytes.Bytes;
function _benchBytes(_b:stdgo.Ref<stdgo._internal.testing.Testing_B.B>, _sizes:stdgo.Slice<stdgo.GoInt>, _f:(stdgo.Ref<stdgo._internal.testing.Testing_B.B>, stdgo.GoInt) -> Void):Void {
        for (__0 => _n in _sizes) {
            if ((_internal.bytes_test.Bytes_test__isRaceBuilder._isRaceBuilder && (_n > (4096 : stdgo.GoInt) : Bool) : Bool)) {
                continue;
            };
            _b.run(_internal.bytes_test.Bytes_test__valName._valName(_n)?.__copy__(), function(_b:stdgo.Ref<stdgo._internal.testing.Testing_B.B>):Void {
                if (((_internal.bytes_test.Bytes_test__bmbuf._bmbuf.length) < _n : Bool)) {
                    _internal.bytes_test.Bytes_test__bmbuf._bmbuf = (new stdgo.Slice<stdgo.GoUInt8>((_n : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>);
                };
                _b.setBytes((_n : stdgo.GoInt64));
                _f(_b, _n);
            });
        };
    }
