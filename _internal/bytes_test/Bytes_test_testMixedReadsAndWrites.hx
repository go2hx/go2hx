package _internal.bytes_test;
import stdgo._internal.bytes.Bytes;
import stdgo._internal.bytes.Bytes;
import stdgo._internal.bytes.Bytes;
import stdgo._internal.bytes.Bytes;
function testMixedReadsAndWrites(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        var _buf:stdgo._internal.bytes.Bytes_Buffer.Buffer = ({} : stdgo._internal.bytes.Bytes_Buffer.Buffer);
        var _s = (stdgo.Go.str()?.__copy__() : stdgo.GoString);
        {
            var _i = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_i < (50 : stdgo.GoInt) : Bool), _i++, {
                var _wlen = (stdgo._internal.math.rand.Rand_intn.intn((_internal.bytes_test.Bytes_test__testString._testString.length)) : stdgo.GoInt);
                if ((_i % (2 : stdgo.GoInt) : stdgo.GoInt) == ((0 : stdgo.GoInt))) {
                    _s = _internal.bytes_test.Bytes_test__fillString._fillString(_t, ("TestMixedReadsAndWrites (1)" : stdgo.GoString), (stdgo.Go.setRef(_buf) : stdgo.Ref<stdgo._internal.bytes.Bytes_Buffer.Buffer>), _s?.__copy__(), (1 : stdgo.GoInt), (_internal.bytes_test.Bytes_test__testString._testString.__slice__((0 : stdgo.GoInt), _wlen) : stdgo.GoString)?.__copy__())?.__copy__();
                } else {
                    _s = _internal.bytes_test.Bytes_test__fillBytes._fillBytes(_t, ("TestMixedReadsAndWrites (1)" : stdgo.GoString), (stdgo.Go.setRef(_buf) : stdgo.Ref<stdgo._internal.bytes.Bytes_Buffer.Buffer>), _s?.__copy__(), (1 : stdgo.GoInt), (_internal.bytes_test.Bytes_test__testBytes._testBytes.__slice__((0 : stdgo.GoInt), _wlen) : stdgo.Slice<stdgo.GoUInt8>))?.__copy__();
                };
                var _rlen = (stdgo._internal.math.rand.Rand_intn.intn((_internal.bytes_test.Bytes_test__testString._testString.length)) : stdgo.GoInt);
                var _fub = (new stdgo.Slice<stdgo.GoUInt8>((_rlen : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>);
                var __tmp__ = _buf.read(_fub), _n:stdgo.GoInt = __tmp__._0, __0:stdgo.Error = __tmp__._1;
                _s = (_s.__slice__(_n) : stdgo.GoString)?.__copy__();
            });
        };
        _internal.bytes_test.Bytes_test__empty._empty(_t, ("TestMixedReadsAndWrites (2)" : stdgo.GoString), (stdgo.Go.setRef(_buf) : stdgo.Ref<stdgo._internal.bytes.Bytes_Buffer.Buffer>), _s?.__copy__(), (new stdgo.Slice<stdgo.GoUInt8>((_buf.len() : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>));
    }
