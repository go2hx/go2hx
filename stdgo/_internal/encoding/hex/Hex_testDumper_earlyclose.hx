package stdgo._internal.encoding.hex;
function testDumper_earlyclose(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        var _out:stdgo._internal.strings.Strings_Builder.Builder = ({} : stdgo._internal.strings.Strings_Builder.Builder);
        var _dumper = (stdgo._internal.encoding.hex.Hex_dumper.dumper(stdgo.Go.asInterface((stdgo.Go.setRef(_out) : stdgo.Ref<stdgo._internal.strings.Strings_Builder.Builder>))) : stdgo._internal.io.Io_WriteCloser.WriteCloser);
        _dumper.close();
        _dumper.write((("gopher" : stdgo.GoString) : stdgo.Slice<stdgo.GoUInt8>));
        var _expected = (stdgo.Go.str()?.__copy__() : stdgo.GoString);
        if ((@:check2 _out.string() : stdgo.GoString) != (_expected)) {
            @:check2r _t.fatalf(("got:\n%#v\nwant:\n%#v" : stdgo.GoString), stdgo.Go.toInterface((@:check2 _out.string() : stdgo.GoString)), stdgo.Go.toInterface(_expected));
        };
    }
