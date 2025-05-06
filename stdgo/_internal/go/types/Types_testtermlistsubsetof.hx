package stdgo._internal.go.types;
function testTermlistSubsetOf(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void {
        //"file:///home/runner/.go/go1.21.3/src/go/types/termlist_test.go#L258"
        for (__0 => _test in (new stdgo.Slice<stdgo._internal.go.types.Types_t__struct_4.T__struct_4>(16, 16, ...[
({ _xl : ("∅" : stdgo.GoString), _yl : ("∅" : stdgo.GoString), _want : true } : stdgo._internal.go.types.Types_t__struct_4.T__struct_4),
({ _xl : ("∅" : stdgo.GoString), _yl : ("𝓤" : stdgo.GoString), _want : true } : stdgo._internal.go.types.Types_t__struct_4.T__struct_4),
({ _xl : ("𝓤" : stdgo.GoString), _yl : ("∅" : stdgo.GoString), _want : false } : stdgo._internal.go.types.Types_t__struct_4.T__struct_4),
({ _xl : ("𝓤" : stdgo.GoString), _yl : ("𝓤" : stdgo.GoString), _want : true } : stdgo._internal.go.types.Types_t__struct_4.T__struct_4),
({ _xl : ("int" : stdgo.GoString), _yl : ("int | string" : stdgo.GoString), _want : true } : stdgo._internal.go.types.Types_t__struct_4.T__struct_4),
({ _xl : ("~int" : stdgo.GoString), _yl : ("int | string" : stdgo.GoString), _want : false } : stdgo._internal.go.types.Types_t__struct_4.T__struct_4),
({ _xl : ("~int" : stdgo.GoString), _yl : ("myInt | string" : stdgo.GoString), _want : false } : stdgo._internal.go.types.Types_t__struct_4.T__struct_4),
({ _xl : ("myInt" : stdgo.GoString), _yl : ("~int | string" : stdgo.GoString), _want : true } : stdgo._internal.go.types.Types_t__struct_4.T__struct_4),
({ _xl : ("~int" : stdgo.GoString), _yl : ("string | string | int | ~int" : stdgo.GoString), _want : true } : stdgo._internal.go.types.Types_t__struct_4.T__struct_4),
({ _xl : ("myInt" : stdgo.GoString), _yl : ("string | string | ~int" : stdgo.GoString), _want : true } : stdgo._internal.go.types.Types_t__struct_4.T__struct_4),
({ _xl : ("int | string" : stdgo.GoString), _yl : ("string" : stdgo.GoString), _want : false } : stdgo._internal.go.types.Types_t__struct_4.T__struct_4),
({ _xl : ("int | string" : stdgo.GoString), _yl : ("string | int" : stdgo.GoString), _want : true } : stdgo._internal.go.types.Types_t__struct_4.T__struct_4),
({ _xl : ("int | ~string" : stdgo.GoString), _yl : ("string | int" : stdgo.GoString), _want : false } : stdgo._internal.go.types.Types_t__struct_4.T__struct_4),
({ _xl : ("myInt | ~string" : stdgo.GoString), _yl : ("string | int | 𝓤" : stdgo.GoString), _want : true } : stdgo._internal.go.types.Types_t__struct_4.T__struct_4),
({ _xl : ("int | ~string" : stdgo.GoString), _yl : ("string | int | ∅ | string" : stdgo.GoString), _want : false } : stdgo._internal.go.types.Types_t__struct_4.T__struct_4),
({ _xl : ("int | myInt" : stdgo.GoString), _yl : ("string | ~int | ∅ | string" : stdgo.GoString), _want : true } : stdgo._internal.go.types.Types_t__struct_4.T__struct_4)].concat([for (i in 16 ... (16 > 16 ? 16 : 16 : stdgo.GoInt).toBasic()) ({ _xl : ("" : stdgo.GoString), _yl : ("" : stdgo.GoString), _want : false } : stdgo._internal.go.types.Types_t__struct_4.T__struct_4)])) : stdgo.Slice<stdgo._internal.go.types.Types_t__struct_4.T__struct_4>)) {
            var _xl = (stdgo._internal.go.types.Types__maketl._maketl(_test._xl?.__copy__()) : stdgo._internal.go.types.Types_t_termlist.T_termlist);
            var _yl = (stdgo._internal.go.types.Types__maketl._maketl(_test._yl?.__copy__()) : stdgo._internal.go.types.Types_t_termlist.T_termlist);
            var _got = (_xl._subsetOf(_yl) : Bool);
            //"file:///home/runner/.go/go1.21.3/src/go/types/termlist_test.go#L282"
            if (_got != (_test._want)) {
                //"file:///home/runner/.go/go1.21.3/src/go/types/termlist_test.go#L283"
                _t.errorf(("(%v).subsetOf(%v) = %v; want %v" : stdgo.GoString), stdgo.Go.toInterface(_test._xl), stdgo.Go.toInterface(_test._yl), stdgo.Go.toInterface(_got), stdgo.Go.toInterface(_test._want));
            };
        };
    }
