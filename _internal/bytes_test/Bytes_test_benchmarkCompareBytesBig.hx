package _internal.bytes_test;
import stdgo._internal.bytes.Bytes;
import stdgo._internal.bytes.Bytes;
import stdgo._internal.bytes.Bytes;
import stdgo._internal.bytes.Bytes;
function benchmarkCompareBytesBig(_b:stdgo.Ref<stdgo._internal.testing.Testing_B.B>):Void {
        _b.stopTimer();
        var _b1 = (new stdgo.Slice<stdgo.GoUInt8>((0 : stdgo.GoInt).toBasic(), (1048576 : stdgo.GoInt)).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>);
        while (((_b1.length) < (1048576 : stdgo.GoInt) : Bool)) {
            _b1 = (_b1.__append__(...(("Hello Gophers!" : stdgo.GoString) : Array<stdgo.GoUInt8>)));
        };
        var _b2 = ((new stdgo.Slice<stdgo.GoUInt8>(0, 0, ...[]).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>).__append__(...(_b1 : Array<stdgo.GoUInt8>)));
        _b.startTimer();
        {
            var _i = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_i < _b.n : Bool), _i++, {
                if (stdgo._internal.bytes.Bytes_compare.compare(_b1, _b2) != ((0 : stdgo.GoInt))) {
                    _b.fatal(stdgo.Go.toInterface(("b1 != b2" : stdgo.GoString)));
                };
            });
        };
        _b.setBytes((_b1.length : stdgo.GoInt64));
    }
