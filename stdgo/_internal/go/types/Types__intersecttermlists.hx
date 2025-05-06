package stdgo._internal.go.types;
function _intersectTermLists(_xterms:stdgo._internal.go.types.Types_t_termlist.T_termlist, _xcomp:Bool, _yterms:stdgo._internal.go.types.Types_t_termlist.T_termlist, _ycomp:Bool):{ var _0 : stdgo._internal.go.types.Types_t_termlist.T_termlist; var _1 : Bool; } {
        var _terms = (_xterms._intersect(_yterms) : stdgo._internal.go.types.Types_t_termlist.T_termlist);
        var _comp = (_xcomp || _ycomp : Bool);
        //"file:///home/runner/.go/go1.21.3/src/go/types/typeset.go#L328"
        if ((_comp && !_terms._isAll() : Bool)) {
            var _i = (0 : stdgo.GoInt);
            //"file:///home/runner/.go/go1.21.3/src/go/types/typeset.go#L331"
            for (__0 => _t in _terms) {
                //"file:///home/runner/.go/go1.21.3/src/go/types/typeset.go#L332"
                stdgo._internal.go.types.Types__assert._assert((@:checkr _t ?? throw "null pointer dereference")._typ != null);
                //"file:///home/runner/.go/go1.21.3/src/go/types/typeset.go#L333"
                if (stdgo._internal.go.types.Types__comparable._comparable((@:checkr _t ?? throw "null pointer dereference")._typ, false, (null : stdgo.GoMap<stdgo._internal.go.types.Types_type_.Type_, Bool>), null)) {
                    _terms[(_i : stdgo.GoInt)] = _t;
                    //"file:///home/runner/.go/go1.21.3/src/go/types/typeset.go#L335"
                    _i++;
                };
            };
            _terms = (_terms.__slice__(0, _i) : stdgo._internal.go.types.Types_t_termlist.T_termlist);
            //"file:///home/runner/.go/go1.21.3/src/go/types/typeset.go#L339"
            if (!_terms._isAll()) {
                _comp = false;
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/go/types/typeset.go#L343"
        stdgo._internal.go.types.Types__assert._assert((!_comp || _terms._isAll() : Bool));
        //"file:///home/runner/.go/go1.21.3/src/go/types/typeset.go#L344"
        return { _0 : _terms, _1 : _comp };
    }
