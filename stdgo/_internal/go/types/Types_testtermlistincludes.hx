package stdgo._internal.go.types;
function testTermlistIncludes(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void {
        //"file:///home/runner/.go/go1.21.3/src/go/types/termlist_test.go#L196"
        for (__0 => _test in (new stdgo.Slice<stdgo._internal.go.types.Types_t__struct_5.T__struct_5>(11, 11, ...[
({ _xl : ("∅" : stdgo.GoString), _typ : ("int" : stdgo.GoString), _want : false } : stdgo._internal.go.types.Types_t__struct_5.T__struct_5),
({ _xl : ("𝓤" : stdgo.GoString), _typ : ("int" : stdgo.GoString), _want : true } : stdgo._internal.go.types.Types_t__struct_5.T__struct_5),
({ _xl : ("~int" : stdgo.GoString), _typ : ("int" : stdgo.GoString), _want : true } : stdgo._internal.go.types.Types_t__struct_5.T__struct_5),
({ _xl : ("int" : stdgo.GoString), _typ : ("string" : stdgo.GoString), _want : false } : stdgo._internal.go.types.Types_t__struct_5.T__struct_5),
({ _xl : ("~int" : stdgo.GoString), _typ : ("string" : stdgo.GoString), _want : false } : stdgo._internal.go.types.Types_t__struct_5.T__struct_5),
({ _xl : ("~int" : stdgo.GoString), _typ : ("myInt" : stdgo.GoString), _want : true } : stdgo._internal.go.types.Types_t__struct_5.T__struct_5),
({ _xl : ("int | string" : stdgo.GoString), _typ : ("string" : stdgo.GoString), _want : true } : stdgo._internal.go.types.Types_t__struct_5.T__struct_5),
({ _xl : ("~int | string" : stdgo.GoString), _typ : ("int" : stdgo.GoString), _want : true } : stdgo._internal.go.types.Types_t__struct_5.T__struct_5),
({ _xl : ("~int | string" : stdgo.GoString), _typ : ("myInt" : stdgo.GoString), _want : true } : stdgo._internal.go.types.Types_t__struct_5.T__struct_5),
({ _xl : ("~int | myInt | ∅" : stdgo.GoString), _typ : ("myInt" : stdgo.GoString), _want : true } : stdgo._internal.go.types.Types_t__struct_5.T__struct_5),
({ _xl : ("myInt | ∅ | 𝓤" : stdgo.GoString), _typ : ("int" : stdgo.GoString), _want : true } : stdgo._internal.go.types.Types_t__struct_5.T__struct_5)].concat([for (i in 11 ... (11 > 11 ? 11 : 11 : stdgo.GoInt).toBasic()) ({ _xl : ("" : stdgo.GoString), _typ : ("" : stdgo.GoString), _want : false } : stdgo._internal.go.types.Types_t__struct_5.T__struct_5)])) : stdgo.Slice<stdgo._internal.go.types.Types_t__struct_5.T__struct_5>)) {
            var _xl = (stdgo._internal.go.types.Types__maketl._maketl(_test._xl?.__copy__()) : stdgo._internal.go.types.Types_t_termlist.T_termlist);
            var _yl = (stdgo._internal.go.types.Types__testterm._testTerm(_test._typ?.__copy__())._typ : stdgo._internal.go.types.Types_type_.Type_);
            var _got = (_xl._includes(_yl) : Bool);
            //"file:///home/runner/.go/go1.21.3/src/go/types/termlist_test.go#L215"
            if (_got != (_test._want)) {
                //"file:///home/runner/.go/go1.21.3/src/go/types/termlist_test.go#L216"
                _t.errorf(("(%v).includes(%v) = %v; want %v" : stdgo.GoString), stdgo.Go.toInterface(_test._xl), stdgo.Go.toInterface(_yl), stdgo.Go.toInterface(_got), stdgo.Go.toInterface(_test._want));
            };
        };
    }
