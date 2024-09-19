package _internal.math.rand_test;
import stdgo._internal.math.rand.Rand;
import stdgo._internal.math.rand.Rand;
import stdgo._internal.math.rand.Rand;
import stdgo._internal.math.rand.Rand;
import stdgo._internal.math.rand.Rand;
function testReadSeedReset(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        var _r = stdgo._internal.math.rand.Rand_new_.new_(stdgo._internal.math.rand.Rand_newSource.newSource((42i64 : stdgo.GoInt64)));
        var _b1 = (new stdgo.Slice<stdgo.GoUInt8>((128 : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>);
        var __tmp__ = _r.read(_b1), __4:stdgo.GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            _t.errorf(("read: %v" : stdgo.GoString), stdgo.Go.toInterface(_err));
        };
        _r.seed((42i64 : stdgo.GoInt64));
        var _b2 = (new stdgo.Slice<stdgo.GoUInt8>((128 : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>);
        {
            var __tmp__ = _r.read(_b2);
            _err = __tmp__._1;
        };
        if (_err != null) {
            _t.errorf(("read: %v" : stdgo.GoString), stdgo.Go.toInterface(_err));
        };
        if (!stdgo._internal.bytes.Bytes_equal.equal(_b1, _b2)) {
            _t.errorf(("mismatch after re-seed:\n%x\n%x" : stdgo.GoString), stdgo.Go.toInterface(_b1), stdgo.Go.toInterface(_b2));
        };
    }
