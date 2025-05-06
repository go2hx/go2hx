package stdgo._internal.go.types;
function testTermIntersection(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void {
        //"file:///home/runner/.go/go1.21.3/src/go/types/typeterm_test.go#L131"
        for (__0 => _test in (new stdgo.Slice<stdgo.GoString>(16, 16, ...[
("∅ ∅ ∅" : stdgo.GoString),
("∅ 𝓤 ∅" : stdgo.GoString),
("∅ int ∅" : stdgo.GoString),
("∅ ~int ∅" : stdgo.GoString),
("∅ myInt ∅" : stdgo.GoString),
("𝓤 𝓤 𝓤" : stdgo.GoString),
("𝓤 int int" : stdgo.GoString),
("𝓤 ~int ~int" : stdgo.GoString),
("𝓤 myInt myInt" : stdgo.GoString),
("int int int" : stdgo.GoString),
("int ~int int" : stdgo.GoString),
("int string ∅" : stdgo.GoString),
("int ~string ∅" : stdgo.GoString),
("int string ∅" : stdgo.GoString),
("~int ~string ∅" : stdgo.GoString),
("~int myInt myInt" : stdgo.GoString)]).__setString__() : stdgo.Slice<stdgo.GoString>)) {
            var _args = stdgo._internal.go.types.Types__split._split(_test?.__copy__(), (3 : stdgo.GoInt));
            var _x = stdgo._internal.go.types.Types__testterm._testTerm(_args[(0 : stdgo.GoInt)]?.__copy__());
            var _y = stdgo._internal.go.types.Types__testterm._testTerm(_args[(1 : stdgo.GoInt)]?.__copy__());
            var _want = stdgo._internal.go.types.Types__testterm._testTerm(_args[(2 : stdgo.GoInt)]?.__copy__());
            //"file:///home/runner/.go/go1.21.3/src/go/types/typeterm_test.go#L153"
            {
                var _got = _x._intersect(_y);
                if (!_got._equal(_want)) {
                    //"file:///home/runner/.go/go1.21.3/src/go/types/typeterm_test.go#L154"
                    _t.errorf(("%v.intersect(%v) = %v; want %v" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_x)), stdgo.Go.toInterface(stdgo.Go.asInterface(_y)), stdgo.Go.toInterface(stdgo.Go.asInterface(_got)), stdgo.Go.toInterface(stdgo.Go.asInterface(_want)));
                };
            };
            {
                final __tmp__0 = _y;
                final __tmp__1 = _x;
                _x = @:binopAssign __tmp__0;
                _y = @:binopAssign __tmp__1;
            };
            //"file:///home/runner/.go/go1.21.3/src/go/types/typeterm_test.go#L158"
            {
                var _got = _x._intersect(_y);
                if (!_got._equal(_want)) {
                    //"file:///home/runner/.go/go1.21.3/src/go/types/typeterm_test.go#L159"
                    _t.errorf(("%v.intersect(%v) = %v; want %v" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_x)), stdgo.Go.toInterface(stdgo.Go.asInterface(_y)), stdgo.Go.toInterface(stdgo.Go.asInterface(_got)), stdgo.Go.toInterface(stdgo.Go.asInterface(_want)));
                };
            };
        };
    }
