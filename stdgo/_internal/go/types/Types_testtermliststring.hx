package stdgo._internal.go.types;
function testTermlistString(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void {
        //"file:///home/runner/.go/go1.21.3/src/go/types/termlist_test.go#L32"
        for (__0 => _want in (new stdgo.Slice<stdgo.GoString>(9, 9, ...[("∅" : stdgo.GoString), ("𝓤" : stdgo.GoString), ("int" : stdgo.GoString), ("~int" : stdgo.GoString), ("myInt" : stdgo.GoString), ("∅ | ∅" : stdgo.GoString), ("𝓤 | 𝓤" : stdgo.GoString), ("∅ | 𝓤 | int" : stdgo.GoString), ("∅ | 𝓤 | int | myInt" : stdgo.GoString)]).__setString__() : stdgo.Slice<stdgo.GoString>)) {
            //"file:///home/runner/.go/go1.21.3/src/go/types/termlist_test.go#L43"
            {
                var _got = ((stdgo._internal.go.types.Types__maketl._maketl(_want?.__copy__()).string() : stdgo.GoString)?.__copy__() : stdgo.GoString);
                if (_got != (_want)) {
                    //"file:///home/runner/.go/go1.21.3/src/go/types/termlist_test.go#L44"
                    _t.errorf(("(%v).String() == %v" : stdgo.GoString), stdgo.Go.toInterface(_want), stdgo.Go.toInterface(_got));
                };
            };
        };
    }
