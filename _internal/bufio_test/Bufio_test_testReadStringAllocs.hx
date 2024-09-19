package _internal.bufio_test;
import stdgo._internal.bufio.Bufio;
import stdgo._internal.bufio.Bufio;
function testReadStringAllocs(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        var _r = stdgo._internal.strings.Strings_newReader.newReader(("       foo       foo        42        42        42        42        42        42        42        42       4.2       4.2       4.2       4.2\n" : stdgo.GoString));
        var _buf = stdgo._internal.bufio.Bufio_newReader.newReader(stdgo.Go.asInterface(_r));
        var _allocs = (stdgo._internal.testing.Testing_allocsPerRun.allocsPerRun((100 : stdgo.GoInt), function():Void {
            _r.seek((0i64 : stdgo.GoInt64), (0 : stdgo.GoInt));
            _buf.reset(stdgo.Go.asInterface(_r));
            var __tmp__ = _buf.readString((10 : stdgo.GoUInt8)), __0:stdgo.GoString = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                _t.fatal(stdgo.Go.toInterface(_err));
            };
        }) : stdgo.GoFloat64);
        if (_allocs != (1 : stdgo.GoFloat64)) {
            _t.errorf(("Unexpected number of allocations, got %f, want 1" : stdgo.GoString), stdgo.Go.toInterface(_allocs));
        };
    }
