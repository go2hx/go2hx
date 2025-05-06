package stdgo._internal.go.types;
function testTermlistNorm(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void {
        //"file:///home/runner/.go/go1.21.3/src/go/types/termlist_test.go#L87"
        for (__0 => _test in (new stdgo.Slice<stdgo._internal.go.types.Types_t__struct_2.T__struct_2>(12, 12, ...[
({ _xl : ("∅" : stdgo.GoString), _want : ("∅" : stdgo.GoString) } : stdgo._internal.go.types.Types_t__struct_2.T__struct_2),
({ _xl : ("∅ | ∅" : stdgo.GoString), _want : ("∅" : stdgo.GoString) } : stdgo._internal.go.types.Types_t__struct_2.T__struct_2),
({ _xl : ("∅ | int" : stdgo.GoString), _want : ("int" : stdgo.GoString) } : stdgo._internal.go.types.Types_t__struct_2.T__struct_2),
({ _xl : ("∅ | myInt" : stdgo.GoString), _want : ("myInt" : stdgo.GoString) } : stdgo._internal.go.types.Types_t__struct_2.T__struct_2),
({ _xl : ("𝓤 | int" : stdgo.GoString), _want : ("𝓤" : stdgo.GoString) } : stdgo._internal.go.types.Types_t__struct_2.T__struct_2),
({ _xl : ("𝓤 | myInt" : stdgo.GoString), _want : ("𝓤" : stdgo.GoString) } : stdgo._internal.go.types.Types_t__struct_2.T__struct_2),
({ _xl : ("int | myInt" : stdgo.GoString), _want : ("int | myInt" : stdgo.GoString) } : stdgo._internal.go.types.Types_t__struct_2.T__struct_2),
({ _xl : ("~int | int" : stdgo.GoString), _want : ("~int" : stdgo.GoString) } : stdgo._internal.go.types.Types_t__struct_2.T__struct_2),
({ _xl : ("~int | myInt" : stdgo.GoString), _want : ("~int" : stdgo.GoString) } : stdgo._internal.go.types.Types_t__struct_2.T__struct_2),
({ _xl : ("int | ~string | int" : stdgo.GoString), _want : ("int | ~string" : stdgo.GoString) } : stdgo._internal.go.types.Types_t__struct_2.T__struct_2),
({ _xl : ("~int | string | 𝓤 | ~string | int" : stdgo.GoString), _want : ("𝓤" : stdgo.GoString) } : stdgo._internal.go.types.Types_t__struct_2.T__struct_2),
({ _xl : ("~int | string | myInt | ~string | int" : stdgo.GoString), _want : ("~int | ~string" : stdgo.GoString) } : stdgo._internal.go.types.Types_t__struct_2.T__struct_2)].concat([for (i in 12 ... (12 > 12 ? 12 : 12 : stdgo.GoInt).toBasic()) ({ _xl : ("" : stdgo.GoString), _want : ("" : stdgo.GoString) } : stdgo._internal.go.types.Types_t__struct_2.T__struct_2)])) : stdgo.Slice<stdgo._internal.go.types.Types_t__struct_2.T__struct_2>)) {
            var _xl = (stdgo._internal.go.types.Types__maketl._maketl(_test._xl?.__copy__()) : stdgo._internal.go.types.Types_t_termlist.T_termlist);
            var _got = (stdgo._internal.go.types.Types__maketl._maketl(_test._xl?.__copy__())._norm() : stdgo._internal.go.types.Types_t_termlist.T_termlist);
            //"file:///home/runner/.go/go1.21.3/src/go/types/termlist_test.go#L105"
            if ((_got.string() : stdgo.GoString) != (_test._want)) {
                //"file:///home/runner/.go/go1.21.3/src/go/types/termlist_test.go#L106"
                _t.errorf(("(%v).norm() = %v; want %v" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_xl)), stdgo.Go.toInterface(stdgo.Go.asInterface(_got)), stdgo.Go.toInterface(_test._want));
            };
        };
    }
