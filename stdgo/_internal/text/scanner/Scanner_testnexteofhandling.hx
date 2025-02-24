package stdgo._internal.text.scanner;
function testNextEOFHandling(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void {
        var _r:stdgo._internal.text.scanner.Scanner_t_countreader.T_countReader = ((0 : stdgo.GoInt) : stdgo._internal.text.scanner.Scanner_t_countreader.T_countReader);
        var _r__pointer__ = stdgo.Go.pointer(_r);
        var _r__pointer__ = stdgo.Go.pointer(_r);
        var _r__pointer__ = stdgo.Go.pointer(_r);
        var _r__pointer__ = stdgo.Go.pointer(_r);
        var _s = @:check2r (stdgo.Go.setRef(({} : stdgo._internal.text.scanner.Scanner_scanner.Scanner)) : stdgo.Ref<stdgo._internal.text.scanner.Scanner_scanner.Scanner>).init(stdgo.Go.asInterface(_r__pointer__));
        var _tok = (@:check2r _s.next() : stdgo.GoInt32);
        if (_tok != ((-1 : stdgo.GoInt32))) {
            @:check2r _t.error(stdgo.Go.toInterface(("1) EOF not reported" : stdgo.GoString)));
        };
        _tok = @:check2r _s.peek();
        if (_tok != ((-1 : stdgo.GoInt32))) {
            @:check2r _t.error(stdgo.Go.toInterface(("2) EOF not reported" : stdgo.GoString)));
        };
        if (_r != ((1 : stdgo._internal.text.scanner.Scanner_t_countreader.T_countReader))) {
            @:check2r _t.errorf(("scanner called Read %d times, not once" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_r)));
        };
    }
