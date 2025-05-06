package stdgo._internal.go.types;
function testTermEqual(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void {
        //"file:///home/runner/.go/go1.21.3/src/go/types/typeterm_test.go#L54"
        for (__0 => _test in (new stdgo.Slice<stdgo.GoString>(14, 14, ...[
("∅ ∅ T" : stdgo.GoString),
("𝓤 𝓤 T" : stdgo.GoString),
("int int T" : stdgo.GoString),
("~int ~int T" : stdgo.GoString),
("myInt myInt T" : stdgo.GoString),
("∅ 𝓤 F" : stdgo.GoString),
("∅ int F" : stdgo.GoString),
("∅ ~int F" : stdgo.GoString),
("𝓤 int F" : stdgo.GoString),
("𝓤 ~int F" : stdgo.GoString),
("𝓤 myInt F" : stdgo.GoString),
("int ~int F" : stdgo.GoString),
("int myInt F" : stdgo.GoString),
("~int myInt F" : stdgo.GoString)]).__setString__() : stdgo.Slice<stdgo.GoString>)) {
            var _args = stdgo._internal.go.types.Types__split._split(_test?.__copy__(), (3 : stdgo.GoInt));
            var _x = stdgo._internal.go.types.Types__testterm._testTerm(_args[(0 : stdgo.GoInt)]?.__copy__());
            var _y = stdgo._internal.go.types.Types__testterm._testTerm(_args[(1 : stdgo.GoInt)]?.__copy__());
            var _want = (_args[(2 : stdgo.GoInt)] == (("T" : stdgo.GoString)) : Bool);
            //"file:///home/runner/.go/go1.21.3/src/go/types/typeterm_test.go#L74"
            {
                var _got = (_x._equal(_y) : Bool);
                if (_got != (_want)) {
                    //"file:///home/runner/.go/go1.21.3/src/go/types/typeterm_test.go#L75"
                    _t.errorf(("%v.equal(%v) = %v; want %v" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_x)), stdgo.Go.toInterface(stdgo.Go.asInterface(_y)), stdgo.Go.toInterface(_got), stdgo.Go.toInterface(_want));
                };
            };
            {
                final __tmp__0 = _y;
                final __tmp__1 = _x;
                _x = @:binopAssign __tmp__0;
                _y = @:binopAssign __tmp__1;
            };
            //"file:///home/runner/.go/go1.21.3/src/go/types/typeterm_test.go#L79"
            {
                var _got = (_x._equal(_y) : Bool);
                if (_got != (_want)) {
                    //"file:///home/runner/.go/go1.21.3/src/go/types/typeterm_test.go#L80"
                    _t.errorf(("%v.equal(%v) = %v; want %v" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_x)), stdgo.Go.toInterface(stdgo.Go.asInterface(_y)), stdgo.Go.toInterface(_got), stdgo.Go.toInterface(_want));
                };
            };
        };
    }
