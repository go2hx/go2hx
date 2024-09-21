package _internal.bytes_test;
import stdgo._internal.bytes.Bytes;
import stdgo._internal.bytes.Bytes;
import stdgo._internal.bytes.Bytes;
import stdgo._internal.bytes.Bytes;
function testLargeStringWrites(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        var _buf:stdgo._internal.bytes.Bytes_Buffer.Buffer = ({} : stdgo._internal.bytes.Bytes_Buffer.Buffer);
        var _limit = (30 : stdgo.GoInt);
        if (stdgo._internal.testing.Testing_short.short()) {
            _limit = (9 : stdgo.GoInt);
        };
        {
            var _i = (3 : stdgo.GoInt);
            stdgo.Go.cfor((_i < _limit : Bool), _i = (_i + ((3 : stdgo.GoInt)) : stdgo.GoInt), {
                var _s = (_internal.bytes_test.Bytes_test__fillString._fillString(_t, ("TestLargeWrites (1)" : stdgo.GoString), (stdgo.Go.setRef(_buf) : stdgo.Ref<stdgo._internal.bytes.Bytes_Buffer.Buffer>), stdgo.Go.str()?.__copy__(), (5 : stdgo.GoInt), _internal.bytes_test.Bytes_test__testString._testString?.__copy__())?.__copy__() : stdgo.GoString);
                _internal.bytes_test.Bytes_test__empty._empty(_t, ("TestLargeStringWrites (2)" : stdgo.GoString), (stdgo.Go.setRef(_buf) : stdgo.Ref<stdgo._internal.bytes.Bytes_Buffer.Buffer>), _s?.__copy__(), (new stdgo.Slice<stdgo.GoUInt8>(((_internal.bytes_test.Bytes_test__testString._testString.length) / _i : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>));
            });
        };
        _internal.bytes_test.Bytes_test__check._check(_t, ("TestLargeStringWrites (3)" : stdgo.GoString), (stdgo.Go.setRef(_buf) : stdgo.Ref<stdgo._internal.bytes.Bytes_Buffer.Buffer>), stdgo.Go.str()?.__copy__());
    }
