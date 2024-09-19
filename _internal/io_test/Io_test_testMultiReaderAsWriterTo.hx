package _internal.io_test;
import stdgo._internal.io.Io;
import stdgo._internal.io.Io;
import stdgo._internal.io.Io;
function testMultiReaderAsWriterTo(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        var _mr = (stdgo._internal.io.Io_multiReader.multiReader(stdgo.Go.asInterface(stdgo._internal.strings.Strings_newReader.newReader(("foo " : stdgo.GoString))), stdgo._internal.io.Io_multiReader.multiReader(stdgo.Go.asInterface(stdgo._internal.strings.Strings_newReader.newReader(stdgo.Go.str()?.__copy__())), stdgo.Go.asInterface(stdgo._internal.strings.Strings_newReader.newReader(("bar" : stdgo.GoString))))) : stdgo._internal.io.Io_Reader.Reader);
        var __tmp__ = try {
            { _0 : (stdgo.Go.typeAssert((stdgo.Go.toInterface(_mr) : stdgo._internal.io.Io_WriterTo.WriterTo)) : stdgo._internal.io.Io_WriterTo.WriterTo), _1 : true };
        } catch(_) {
            { _0 : (null : stdgo._internal.io.Io_WriterTo.WriterTo), _1 : false };
        }, _mrAsWriterTo = __tmp__._0, _ok = __tmp__._1;
        if (!_ok) {
            _t.fatalf(("expected cast to WriterTo to succeed" : stdgo.GoString));
        };
        var _sink = (stdgo.Go.setRef((new stdgo._internal.strings.Strings_Builder.Builder() : stdgo._internal.strings.Strings_Builder.Builder)) : stdgo.Ref<stdgo._internal.strings.Strings_Builder.Builder>);
        var __tmp__ = _mrAsWriterTo.writeTo(stdgo.Go.asInterface(_sink)), _n:stdgo.GoInt64 = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            _t.fatalf(("expected no error; got %v" : stdgo.GoString), stdgo.Go.toInterface(_err));
        };
        if (_n != ((7i64 : stdgo.GoInt64))) {
            _t.errorf(("expected read 7 bytes; got %d" : stdgo.GoString), stdgo.Go.toInterface(_n));
        };
        {
            var _result = ((_sink.string() : stdgo.GoString)?.__copy__() : stdgo.GoString);
            if (_result != (("foo bar" : stdgo.GoString))) {
                _t.errorf(("expected \"foo bar\"; got %q" : stdgo.GoString), stdgo.Go.toInterface(_result));
            };
        };
    }
