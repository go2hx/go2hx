package stdgo._internal.encoding.hex;
function testDumper_doubleclose(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        var _out:stdgo._internal.strings.Strings_Builder.Builder = ({} : stdgo._internal.strings.Strings_Builder.Builder);
        var _out__pointer__ = (stdgo.Go.setRef(_out) : stdgo.Ref<stdgo._internal.strings.Strings_Builder.Builder>);
        var _out__pointer__ = (stdgo.Go.setRef(_out) : stdgo.Ref<stdgo._internal.strings.Strings_Builder.Builder>);
        var _out__pointer__ = (stdgo.Go.setRef(_out) : stdgo.Ref<stdgo._internal.strings.Strings_Builder.Builder>);
        var _out__pointer__ = (stdgo.Go.setRef(_out) : stdgo.Ref<stdgo._internal.strings.Strings_Builder.Builder>);
        var _dumper = (stdgo._internal.encoding.hex.Hex_dumper.dumper(stdgo.Go.asInterface(_out__pointer__)) : stdgo._internal.io.Io_WriteCloser.WriteCloser);
        _dumper.write((("gopher" : stdgo.GoString) : stdgo.Slice<stdgo.GoUInt8>));
        _dumper.close();
        _dumper.close();
        _dumper.write((("gopher" : stdgo.GoString) : stdgo.Slice<stdgo.GoUInt8>));
        _dumper.close();
        var _expected = ("00000000  67 6f 70 68 65 72                                 |gopher|\n" : stdgo.GoString);
        if ((_out.string() : stdgo.GoString) != (_expected)) {
            _t.fatalf(("got:\n%#v\nwant:\n%#v" : stdgo.GoString), stdgo.Go.toInterface((_out.string() : stdgo.GoString)), stdgo.Go.toInterface(_expected));
        };
    }
