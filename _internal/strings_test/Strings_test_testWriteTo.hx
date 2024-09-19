package _internal.strings_test;
import stdgo._internal.strings.Strings;
import stdgo._internal.strings.Strings;
import stdgo._internal.strings.Strings;
import stdgo._internal.strings.Strings;
import stdgo._internal.strings.Strings;
function testWriteTo(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        {};
        {
            var _i = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_i <= (("0123456789" : stdgo.GoString).length) : Bool), _i++, {
                var _s = ((("0123456789" : stdgo.GoString).__slice__(_i) : stdgo.GoString)?.__copy__() : stdgo.GoString);
                var _r = stdgo._internal.strings.Strings_newReader.newReader(_s?.__copy__());
                var _b:stdgo._internal.bytes.Bytes_Buffer.Buffer = ({} : stdgo._internal.bytes.Bytes_Buffer.Buffer);
                var __tmp__ = _r.writeTo(stdgo.Go.asInterface((stdgo.Go.setRef(_b) : stdgo.Ref<stdgo._internal.bytes.Bytes_Buffer.Buffer>))), _n:stdgo.GoInt64 = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                {
                    var _expect = (_s.length : stdgo.GoInt64);
                    if (_n != (_expect)) {
                        _t.errorf(("got %v; want %v" : stdgo.GoString), stdgo.Go.toInterface(_n), stdgo.Go.toInterface(_expect));
                    };
                };
                if (_err != null) {
                    _t.errorf(("for length %d: got error = %v; want nil" : stdgo.GoString), stdgo.Go.toInterface((_s.length)), stdgo.Go.toInterface(_err));
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
