package _internal.bufio_test;
import stdgo._internal.bufio.Bufio;
import stdgo._internal.bufio.Bufio;
function testWriterReset(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        var __0:stdgo._internal.strings.Strings_Builder.Builder = ({} : stdgo._internal.strings.Strings_Builder.Builder), __1:stdgo._internal.strings.Strings_Builder.Builder = ({} : stdgo._internal.strings.Strings_Builder.Builder), __2:stdgo._internal.strings.Strings_Builder.Builder = ({} : stdgo._internal.strings.Strings_Builder.Builder), __3:stdgo._internal.strings.Strings_Builder.Builder = ({} : stdgo._internal.strings.Strings_Builder.Builder), __4:stdgo._internal.strings.Strings_Builder.Builder = ({} : stdgo._internal.strings.Strings_Builder.Builder);
var _buf5 = __4, _buf4 = __3, _buf3 = __2, _buf2 = __1, _buf1 = __0;
        var _w = stdgo._internal.bufio.Bufio_newWriter.newWriter(stdgo.Go.asInterface((stdgo.Go.setRef(_buf1) : stdgo.Ref<stdgo._internal.strings.Strings_Builder.Builder>)));
        _w.writeString(("foo" : stdgo.GoString));
        _w.reset(stdgo.Go.asInterface((stdgo.Go.setRef(_buf2) : stdgo.Ref<stdgo._internal.strings.Strings_Builder.Builder>)));
        _w.writeString(("bar" : stdgo.GoString));
        _w.flush();
        if ((_buf1.string() : stdgo.GoString) != (stdgo.Go.str())) {
            _t.errorf(("buf1 = %q; want empty" : stdgo.GoString), stdgo.Go.toInterface((_buf1.string() : stdgo.GoString)));
        };
        if ((_buf2.string() : stdgo.GoString) != (("bar" : stdgo.GoString))) {
            _t.errorf(("buf2 = %q; want bar" : stdgo.GoString), stdgo.Go.toInterface((_buf2.string() : stdgo.GoString)));
        };
        {
            var __tmp__ = (new stdgo._internal.bufio.Bufio_Writer.Writer() : stdgo._internal.bufio.Bufio_Writer.Writer);
            (_w : stdgo._internal.bufio.Bufio_Writer.Writer)._err = __tmp__._err;
            (_w : stdgo._internal.bufio.Bufio_Writer.Writer)._buf = __tmp__._buf;
            (_w : stdgo._internal.bufio.Bufio_Writer.Writer)._n = __tmp__._n;
            (_w : stdgo._internal.bufio.Bufio_Writer.Writer)._wr = __tmp__._wr;
        };
        _w.reset(stdgo.Go.asInterface((stdgo.Go.setRef(_buf3) : stdgo.Ref<stdgo._internal.strings.Strings_Builder.Builder>)));
        _w.writeString(("bar" : stdgo.GoString));
        _w.flush();
        if ((_buf1.string() : stdgo.GoString) != (stdgo.Go.str())) {
            _t.errorf(("buf1 = %q; want empty" : stdgo.GoString), stdgo.Go.toInterface((_buf1.string() : stdgo.GoString)));
        };
        if ((_buf3.string() : stdgo.GoString) != (("bar" : stdgo.GoString))) {
            _t.errorf(("buf3 = %q; want bar" : stdgo.GoString), stdgo.Go.toInterface((_buf3.string() : stdgo.GoString)));
        };
        _w.reset(stdgo.Go.asInterface((stdgo.Go.setRef(_buf4) : stdgo.Ref<stdgo._internal.strings.Strings_Builder.Builder>)));
        var _w2 = stdgo._internal.bufio.Bufio_newWriter.newWriter(stdgo.Go.asInterface(_w));
        _w2.writeString(("recur" : stdgo.GoString));
        _w2.flush();
        if ((_buf4.string() : stdgo.GoString) != (("recur" : stdgo.GoString))) {
            _t.errorf(("buf4 = %q, want %q" : stdgo.GoString), stdgo.Go.toInterface((_buf4.string() : stdgo.GoString)), stdgo.Go.toInterface(("recur" : stdgo.GoString)));
        };
        _w.reset(stdgo.Go.asInterface((stdgo.Go.setRef(_buf5) : stdgo.Ref<stdgo._internal.strings.Strings_Builder.Builder>)));
        _w2.reset(stdgo.Go.asInterface(_w));
        _w2.writeString(("recur2" : stdgo.GoString));
        _w2.flush();
        if ((_buf5.string() : stdgo.GoString) != (("recur2" : stdgo.GoString))) {
            _t.errorf(("buf5 = %q, want %q" : stdgo.GoString), stdgo.Go.toInterface((_buf5.string() : stdgo.GoString)), stdgo.Go.toInterface(("recur2" : stdgo.GoString)));
        };
    }
