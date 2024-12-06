package stdgo._internal.log;
function testEmptyPrintCreatesLine(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        var _b:stdgo._internal.strings.Strings_Builder.Builder = ({} : stdgo._internal.strings.Strings_Builder.Builder);
        var _l = stdgo._internal.log.Log_new_.new_(stdgo.Go.asInterface((stdgo.Go.setRef(_b) : stdgo.Ref<stdgo._internal.strings.Strings_Builder.Builder>)), ("Header:" : stdgo.GoString), (3 : stdgo.GoInt));
        _l.print();
        _l.println(stdgo.Go.toInterface(("non-empty" : stdgo.GoString)));
        var _output = ((_b.string() : stdgo.GoString)?.__copy__() : stdgo.GoString);
        {
            var _n = (stdgo._internal.strings.Strings_count.count(_output?.__copy__(), ("Header" : stdgo.GoString)) : stdgo.GoInt);
            if (_n != ((2 : stdgo.GoInt))) {
                _t.errorf(("expected 2 headers, got %d" : stdgo.GoString), stdgo.Go.toInterface(_n));
            };
        };
        {
            var _n = (stdgo._internal.strings.Strings_count.count(_output?.__copy__(), ("\n" : stdgo.GoString)) : stdgo.GoInt);
            if (_n != ((2 : stdgo.GoInt))) {
                _t.errorf(("expected 2 lines, got %d" : stdgo.GoString), stdgo.Go.toInterface(_n));
            };
        };
    }
