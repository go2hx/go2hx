package stdgo._internal.go.types;
function testTermlistIsAll(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void {
        //"file:///home/runner/.go/go1.21.3/src/go/types/termlist_test.go#L68"
        for (_test => _want in ({
            final x = new stdgo.GoMap.GoStringMap<Bool>();
            x.__defaultValue__ = () -> false;
            x.set(("∅" : stdgo.GoString), false);
x.set(("∅ | ∅" : stdgo.GoString), false);
x.set(("int | ~string" : stdgo.GoString), false);
x.set(("~int | myInt" : stdgo.GoString), false);
x.set(("∅ | ∅ | 𝓤" : stdgo.GoString), true);
x.set(("𝓤" : stdgo.GoString), true);
x.set(("𝓤 | int" : stdgo.GoString), true);
x.set(("myInt | 𝓤" : stdgo.GoString), true);
            x;
        } : stdgo.GoMap<stdgo.GoString, Bool>)) {
            var _xl = (stdgo._internal.go.types.Types__maketl._maketl(_test?.__copy__()) : stdgo._internal.go.types.Types_t_termlist.T_termlist);
            var _got = (_xl._isAll() : Bool);
            //"file:///home/runner/.go/go1.21.3/src/go/types/termlist_test.go#L80"
            if (_got != (_want)) {
                //"file:///home/runner/.go/go1.21.3/src/go/types/termlist_test.go#L81"
                _t.errorf(("(%v).isAll() == %v; want %v" : stdgo.GoString), stdgo.Go.toInterface(_test), stdgo.Go.toInterface(_got), stdgo.Go.toInterface(_want));
            };
        };
    }
