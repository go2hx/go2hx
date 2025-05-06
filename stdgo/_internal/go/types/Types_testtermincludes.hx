package stdgo._internal.go.types;
function testTermIncludes(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void {
        //"file:///home/runner/.go/go1.21.3/src/go/types/typeterm_test.go#L165"
        for (__0 => _test in (new stdgo.Slice<stdgo.GoString>(8, 8, ...[("∅ int F" : stdgo.GoString), ("𝓤 int T" : stdgo.GoString), ("int int T" : stdgo.GoString), ("~int int T" : stdgo.GoString), ("~int myInt T" : stdgo.GoString), ("string int F" : stdgo.GoString), ("~string int F" : stdgo.GoString), ("myInt int F" : stdgo.GoString)]).__setString__() : stdgo.Slice<stdgo.GoString>)) {
            var _args = stdgo._internal.go.types.Types__split._split(_test?.__copy__(), (3 : stdgo.GoInt));
            var _x = stdgo._internal.go.types.Types__testterm._testTerm(_args[(0 : stdgo.GoInt)]?.__copy__());
            var _y = (stdgo._internal.go.types.Types__testterm._testTerm(_args[(1 : stdgo.GoInt)]?.__copy__())._typ : stdgo._internal.go.types.Types_type_.Type_);
            var _want = (_args[(2 : stdgo.GoInt)] == (("T" : stdgo.GoString)) : Bool);
            //"file:///home/runner/.go/go1.21.3/src/go/types/typeterm_test.go#L179"
            {
                var _got = (_x._includes(_y) : Bool);
                if (_got != (_want)) {
                    //"file:///home/runner/.go/go1.21.3/src/go/types/typeterm_test.go#L180"
                    _t.errorf(("%v.includes(%v) = %v; want %v" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_x)), stdgo.Go.toInterface(_y), stdgo.Go.toInterface(_got), stdgo.Go.toInterface(_want));
                };
            };
        };
    }
