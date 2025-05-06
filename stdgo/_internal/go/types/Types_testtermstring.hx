package stdgo._internal.go.types;
function testTermString(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void {
        //"file:///home/runner/.go/go1.21.3/src/go/types/typeterm_test.go#L30"
        for (_want => _x in stdgo._internal.go.types.Types__testterms._testTerms) {
            //"file:///home/runner/.go/go1.21.3/src/go/types/typeterm_test.go#L31"
            {
                var _got = ((_x.string() : stdgo.GoString)?.__copy__() : stdgo.GoString);
                if (_got != (_want)) {
                    //"file:///home/runner/.go/go1.21.3/src/go/types/typeterm_test.go#L32"
                    _t.errorf(("%v.String() == %v; want %v" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_x)), stdgo.Go.toInterface(_got), stdgo.Go.toInterface(_want));
                };
            };
        };
    }
