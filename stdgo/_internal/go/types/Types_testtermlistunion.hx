package stdgo._internal.go.types;
function testTermlistUnion(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void {
        //"file:///home/runner/.go/go1.21.3/src/go/types/termlist_test.go#L112"
        for (__0 => _test in (new stdgo.Slice<stdgo._internal.go.types.Types_t__struct_3.T__struct_3>(14, 14, ...[
({ _xl : ("∅" : stdgo.GoString), _yl : ("∅" : stdgo.GoString), _want : ("∅" : stdgo.GoString) } : stdgo._internal.go.types.Types_t__struct_3.T__struct_3),
({ _xl : ("∅" : stdgo.GoString), _yl : ("𝓤" : stdgo.GoString), _want : ("𝓤" : stdgo.GoString) } : stdgo._internal.go.types.Types_t__struct_3.T__struct_3),
({ _xl : ("∅" : stdgo.GoString), _yl : ("int" : stdgo.GoString), _want : ("int" : stdgo.GoString) } : stdgo._internal.go.types.Types_t__struct_3.T__struct_3),
({ _xl : ("𝓤" : stdgo.GoString), _yl : ("~int" : stdgo.GoString), _want : ("𝓤" : stdgo.GoString) } : stdgo._internal.go.types.Types_t__struct_3.T__struct_3),
({ _xl : ("int" : stdgo.GoString), _yl : ("~int" : stdgo.GoString), _want : ("~int" : stdgo.GoString) } : stdgo._internal.go.types.Types_t__struct_3.T__struct_3),
({ _xl : ("int" : stdgo.GoString), _yl : ("string" : stdgo.GoString), _want : ("int | string" : stdgo.GoString) } : stdgo._internal.go.types.Types_t__struct_3.T__struct_3),
({ _xl : ("int" : stdgo.GoString), _yl : ("myInt" : stdgo.GoString), _want : ("int | myInt" : stdgo.GoString) } : stdgo._internal.go.types.Types_t__struct_3.T__struct_3),
({ _xl : ("~int" : stdgo.GoString), _yl : ("myInt" : stdgo.GoString), _want : ("~int" : stdgo.GoString) } : stdgo._internal.go.types.Types_t__struct_3.T__struct_3),
({ _xl : ("int | string" : stdgo.GoString), _yl : ("~string" : stdgo.GoString), _want : ("int | ~string" : stdgo.GoString) } : stdgo._internal.go.types.Types_t__struct_3.T__struct_3),
({ _xl : ("~int | string" : stdgo.GoString), _yl : ("~string | int" : stdgo.GoString), _want : ("~int | ~string" : stdgo.GoString) } : stdgo._internal.go.types.Types_t__struct_3.T__struct_3),
({ _xl : ("~int | string | ∅" : stdgo.GoString), _yl : ("~string | int" : stdgo.GoString), _want : ("~int | ~string" : stdgo.GoString) } : stdgo._internal.go.types.Types_t__struct_3.T__struct_3),
({ _xl : ("~int | myInt | ∅" : stdgo.GoString), _yl : ("~string | int" : stdgo.GoString), _want : ("~int | ~string" : stdgo.GoString) } : stdgo._internal.go.types.Types_t__struct_3.T__struct_3),
({ _xl : ("~int | string | 𝓤" : stdgo.GoString), _yl : ("~string | int" : stdgo.GoString), _want : ("𝓤" : stdgo.GoString) } : stdgo._internal.go.types.Types_t__struct_3.T__struct_3),
({ _xl : ("~int | string | myInt" : stdgo.GoString), _yl : ("~string | int" : stdgo.GoString), _want : ("~int | ~string" : stdgo.GoString) } : stdgo._internal.go.types.Types_t__struct_3.T__struct_3)].concat([for (i in 14 ... (14 > 14 ? 14 : 14 : stdgo.GoInt).toBasic()) ({ _xl : ("" : stdgo.GoString), _yl : ("" : stdgo.GoString), _want : ("" : stdgo.GoString) } : stdgo._internal.go.types.Types_t__struct_3.T__struct_3)])) : stdgo.Slice<stdgo._internal.go.types.Types_t__struct_3.T__struct_3>)) {
            var _xl = (stdgo._internal.go.types.Types__maketl._maketl(_test._xl?.__copy__()) : stdgo._internal.go.types.Types_t_termlist.T_termlist);
            var _yl = (stdgo._internal.go.types.Types__maketl._maketl(_test._yl?.__copy__()) : stdgo._internal.go.types.Types_t_termlist.T_termlist);
            var _got = ((_xl._union(_yl).string() : stdgo.GoString)?.__copy__() : stdgo.GoString);
            //"file:///home/runner/.go/go1.21.3/src/go/types/termlist_test.go#L134"
            if (_got != (_test._want)) {
                //"file:///home/runner/.go/go1.21.3/src/go/types/termlist_test.go#L135"
                _t.errorf(("(%v).union(%v) = %v; want %v" : stdgo.GoString), stdgo.Go.toInterface(_test._xl), stdgo.Go.toInterface(_test._yl), stdgo.Go.toInterface(_got), stdgo.Go.toInterface(_test._want));
            };
        };
    }
