package _internal.io_test;
import stdgo._internal.io.Io;
import stdgo._internal.io.Io;
import stdgo._internal.io.Io;
function testMultiWriterCopy(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        var _buf:stdgo._internal.strings.Strings_Builder.Builder = ({} : stdgo._internal.strings.Strings_Builder.Builder);
        var _slice = (new stdgo.Slice<stdgo._internal.io.Io_Writer.Writer>(1, 1, ...[stdgo.Go.asInterface((stdgo.Go.setRef(_buf) : stdgo.Ref<stdgo._internal.strings.Strings_Builder.Builder>))]) : stdgo.Slice<stdgo._internal.io.Io_Writer.Writer>);
        var _w = (stdgo._internal.io.Io_multiWriter.multiWriter(...(_slice : Array<stdgo._internal.io.Io_Writer.Writer>)) : stdgo._internal.io.Io_Writer.Writer);
        _slice[(0 : stdgo.GoInt)] = (null : stdgo._internal.io.Io_Writer.Writer);
        var __tmp__ = _w.write((("hello world" : stdgo.GoString) : stdgo.Slice<stdgo.GoUInt8>)), _n:stdgo.GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (((_err != null) || (_n != (11 : stdgo.GoInt)) : Bool)) {
            _t.errorf(("Write(`hello world`) = %d, %v, want 11, nil" : stdgo.GoString), stdgo.Go.toInterface(_n), stdgo.Go.toInterface(_err));
        };
        if ((_buf.string() : stdgo.GoString) != (("hello world" : stdgo.GoString))) {
            _t.errorf(("buf.String() = %q, want %q" : stdgo.GoString), stdgo.Go.toInterface((_buf.string() : stdgo.GoString)), stdgo.Go.toInterface(("hello world" : stdgo.GoString)));
        };
    }
