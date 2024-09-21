package _internal.io_test;
import stdgo._internal.io.Io;
import stdgo._internal.io.Io;
import stdgo._internal.io.Io;
function benchmarkCopyNSmall(_b:stdgo.Ref<stdgo._internal.testing.Testing_B.B>):Void {
        var _bs = stdgo._internal.bytes.Bytes_repeat.repeat((new stdgo.Slice<stdgo.GoUInt8>(1, 1, ...[(0 : stdgo.GoUInt8)]).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>), (513 : stdgo.GoInt));
        var _rd = stdgo._internal.bytes.Bytes_newReader.newReader(_bs);
        var _buf = (stdgo.Go.setRef(({} : _internal.io_test.Io_test_Buffer.Buffer)) : stdgo.Ref<_internal.io_test.Io_test_Buffer.Buffer>);
        _b.resetTimer();
        {
            var _i = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_i < _b.n : Bool), _i++, {
                stdgo._internal.io.Io_copyN.copyN(stdgo.Go.asInterface(_buf), stdgo.Go.asInterface(_rd), (512i64 : stdgo.GoInt64));
                _rd.reset(_bs);
            });
        };
    }
