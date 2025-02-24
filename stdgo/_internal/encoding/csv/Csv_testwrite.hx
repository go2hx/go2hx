package stdgo._internal.encoding.csv;
function testWrite(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void {
        for (_n => _tt in stdgo._internal.encoding.csv.Csv__writetests._writeTests) {
            var _b = (stdgo.Go.setRef((new stdgo._internal.strings.Strings_builder.Builder() : stdgo._internal.strings.Strings_builder.Builder)) : stdgo.Ref<stdgo._internal.strings.Strings_builder.Builder>);
            var _f = stdgo._internal.encoding.csv.Csv_newwriter.newWriter(stdgo.Go.asInterface(_b));
            (@:checkr _f ?? throw "null pointer dereference").useCRLF = _tt.useCRLF;
            if (_tt.comma != ((0 : stdgo.GoInt32))) {
                (@:checkr _f ?? throw "null pointer dereference").comma = _tt.comma;
            };
            var _err = (@:check2r _f.writeAll(_tt.input) : stdgo.Error);
            if (stdgo.Go.toInterface(_err) != (stdgo.Go.toInterface(_tt.error))) {
                @:check2r _t.errorf(("Unexpected error:\ngot  %v\nwant %v" : stdgo.GoString), stdgo.Go.toInterface(_err), stdgo.Go.toInterface(_tt.error));
            };
            var _out = ((@:check2r _b.string() : stdgo.GoString)?.__copy__() : stdgo.GoString);
            if (_out != (_tt.output)) {
                @:check2r _t.errorf(("#%d: out=%q want %q" : stdgo.GoString), stdgo.Go.toInterface(_n), stdgo.Go.toInterface(_out), stdgo.Go.toInterface(_tt.output));
            };
        };
    }
