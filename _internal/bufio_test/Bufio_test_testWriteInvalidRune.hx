package _internal.bufio_test;
import stdgo._internal.bufio.Bufio;
import stdgo._internal.bufio.Bufio;
function testWriteInvalidRune(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        for (__0 => _r in (new stdgo.Slice<stdgo.GoInt32>(2, 2, ...[(-1 : stdgo.GoInt32), (1114112 : stdgo.GoInt32)]).__setNumber32__() : stdgo.Slice<stdgo.GoInt32>)) {
            var _buf:stdgo._internal.strings.Strings_Builder.Builder = ({} : stdgo._internal.strings.Strings_Builder.Builder);
            var _w = stdgo._internal.bufio.Bufio_newWriter.newWriter(stdgo.Go.asInterface((stdgo.Go.setRef(_buf) : stdgo.Ref<stdgo._internal.strings.Strings_Builder.Builder>)));
            _w.writeRune(_r);
            _w.flush();
            {
                var _s = ((_buf.string() : stdgo.GoString)?.__copy__() : stdgo.GoString);
                if (_s != (("�" : stdgo.GoString))) {
                    _t.errorf(("WriteRune(%d) wrote %q, not replacement character" : stdgo.GoString), stdgo.Go.toInterface(_r), stdgo.Go.toInterface(_s));
                };
            };
        };
    }
