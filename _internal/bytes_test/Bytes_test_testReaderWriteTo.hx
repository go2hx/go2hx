package _internal.bytes_test;
import stdgo._internal.bytes.Bytes;
import stdgo._internal.bytes.Bytes;
import stdgo._internal.bytes.Bytes;
import stdgo._internal.bytes.Bytes;
function testReaderWriteTo(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        {
            var _i = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_i < (30 : stdgo.GoInt) : Bool), _i = (_i + ((3 : stdgo.GoInt)) : stdgo.GoInt), {
                var _l:stdgo.GoInt = (0 : stdgo.GoInt);
                if ((_i > (0 : stdgo.GoInt) : Bool)) {
                    _l = ((_internal.bytes_test.Bytes_test__testString._testString.length) / _i : stdgo.GoInt);
                };
                var _s = ((_internal.bytes_test.Bytes_test__testString._testString.__slice__(0, _l) : stdgo.GoString)?.__copy__() : stdgo.GoString);
                var _r = stdgo._internal.bytes.Bytes_newReader.newReader((_internal.bytes_test.Bytes_test__testBytes._testBytes.__slice__(0, _l) : stdgo.Slice<stdgo.GoUInt8>));
                var _b:stdgo._internal.bytes.Bytes_Buffer.Buffer = ({} : stdgo._internal.bytes.Bytes_Buffer.Buffer);
                var __tmp__ = _r.writeTo(stdgo.Go.asInterface((stdgo.Go.setRef(_b) : stdgo.Ref<stdgo._internal.bytes.Bytes_Buffer.Buffer>))), _n:stdgo.GoInt64 = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                {
                    var _expect = (_s.length : stdgo.GoInt64);
                    if (_n != (_expect)) {
                        _t.errorf(("got %v; want %v" : stdgo.GoString), stdgo.Go.toInterface(_n), stdgo.Go.toInterface(_expect));
                    };
                };
                if (_err != null) {
                    _t.errorf(("for length %d: got error = %v; want nil" : stdgo.GoString), stdgo.Go.toInterface(_l), stdgo.Go.toInterface(_err));
                };
                if ((_b.string() : stdgo.GoString) != (_s)) {
                    _t.errorf(("got string %q; want %q" : stdgo.GoString), stdgo.Go.toInterface((_b.string() : stdgo.GoString)), stdgo.Go.toInterface(_s));
                };
                if (_r.len() != ((0 : stdgo.GoInt))) {
                    _t.errorf(("reader contains %v bytes; want 0" : stdgo.GoString), stdgo.Go.toInterface(_r.len()));
                };
            });
        };
    }
