package stdgo._internal.go.types;
function _overlappingTerm(_terms:stdgo.Slice<stdgo.Ref<stdgo._internal.go.types.Types_term.Term>>, _y:stdgo.Ref<stdgo._internal.go.types.Types_term.Term>):stdgo.GoInt {
        //"file:///home/runner/.go/go1.21.3/src/go/types/union.go#L172"
        stdgo._internal.go.types.Types__assert._assert(!stdgo._internal.go.types.Types_isinterface.isInterface((@:checkr _y ?? throw "null pointer dereference")._typ));
        //"file:///home/runner/.go/go1.21.3/src/go/types/union.go#L173"
        for (_i => _x in _terms) {
            //"file:///home/runner/.go/go1.21.3/src/go/types/union.go#L174"
            if (stdgo._internal.go.types.Types_isinterface.isInterface((@:checkr _x ?? throw "null pointer dereference")._typ)) {
                //"file:///home/runner/.go/go1.21.3/src/go/types/union.go#L175"
                continue;
            };
            //"file:///home/runner/.go/go1.21.3/src/go/types/union.go#L179"
            if (false) {
                //"file:///home/runner/.go/go1.21.3/src/go/types/union.go#L180"
                if ((((({
                    final value = _x;
                    (value == null || (value : Dynamic).__nil__);
                }) || (@:checkr _x ?? throw "null pointer dereference")._typ == null : Bool) || ({
                    final value = _y;
                    (value == null || (value : Dynamic).__nil__);
                }) : Bool) || ((@:checkr _y ?? throw "null pointer dereference")._typ == null) : Bool)) {
                    //"file:///home/runner/.go/go1.21.3/src/go/types/union.go#L181"
                    throw stdgo.Go.toInterface(("empty or top union term" : stdgo.GoString));
                };
            };
            //"file:///home/runner/.go/go1.21.3/src/go/types/union.go#L184"
            if (!(({
                final e = _x;
                ({ _tilde : e._tilde, _typ : e._typ } : stdgo._internal.go.types.Types_t_term.T_term);
            }))._disjoint((({
                final e = _y;
                ({ _tilde : e._tilde, _typ : e._typ } : stdgo._internal.go.types.Types_t_term.T_term);
            })))) {
                //"file:///home/runner/.go/go1.21.3/src/go/types/union.go#L185"
                return _i;
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/go/types/union.go#L188"
        return (-1 : stdgo.GoInt);
    }
