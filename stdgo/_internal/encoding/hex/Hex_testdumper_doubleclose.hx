package stdgo._internal.encoding.hex;
function testDumper_doubleclose(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void {
        var _out:stdgo._internal.strings.Strings_builder.Builder = ({} : stdgo._internal.strings.Strings_builder.Builder);
        var _dumper = (stdgo._internal.encoding.hex.Hex_dumper.dumper(stdgo.Go.asInterface((stdgo.Go.setRef(_out) : stdgo.Ref<stdgo._internal.strings.Strings_builder.Builder>))) : stdgo._internal.io.Io_writecloser.WriteCloser);
        _dumper.write(((("gopher" : stdgo.GoString) : stdgo.GoString) : stdgo.Slice<stdgo.GoUInt8>));
        _dumper.close();
        _dumper.close();
        _dumper.write(((("gopher" : stdgo.GoString) : stdgo.GoString) : stdgo.Slice<stdgo.GoUInt8>));
        _dumper.close();
        var _expected = (("00000000  67 6f 70 68 65 72                                 |gopher|\n" : stdgo.GoString) : stdgo.GoString);
        if ((@:check2 _out.string() : stdgo.GoString) != (_expected)) {
            @:check2r _t.fatalf(("got:\n%#v\nwant:\n%#v" : stdgo.GoString), stdgo.Go.toInterface((@:check2 _out.string() : stdgo.GoString)), stdgo.Go.toInterface(_expected));
        };
    }
