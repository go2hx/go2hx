package stdgo._internal.go.types;
function _testTerm(_name:stdgo.GoString):stdgo.Ref<stdgo._internal.go.types.Types_t_term.T_term> {
        var __tmp__ = (stdgo._internal.go.types.Types__testterms._testTerms != null && stdgo._internal.go.types.Types__testterms._testTerms.__exists__(_name?.__copy__()) ? { _0 : stdgo._internal.go.types.Types__testterms._testTerms[_name?.__copy__()], _1 : true } : { _0 : (null : stdgo.Ref<stdgo._internal.go.types.Types_t_term.T_term>), _1 : false }), _r:stdgo.Ref<stdgo._internal.go.types.Types_t_term.T_term> = __tmp__._0, _ok:Bool = __tmp__._1;
        //"file:///home/runner/.go/go1.21.3/src/go/types/typeterm_test.go#L47"
        if (!_ok) {
            //"file:///home/runner/.go/go1.21.3/src/go/types/typeterm_test.go#L48"
            throw stdgo.Go.toInterface((("invalid test argument: " : stdgo.GoString) + _name?.__copy__() : stdgo.GoString));
        };
        //"file:///home/runner/.go/go1.21.3/src/go/types/typeterm_test.go#L50"
        return _r;
    }
