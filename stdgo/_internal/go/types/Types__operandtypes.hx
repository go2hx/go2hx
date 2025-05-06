package stdgo._internal.go.types;
function _operandTypes(_list:stdgo.Slice<stdgo.Ref<stdgo._internal.go.types.Types_t_operand.T_operand>>):stdgo.Slice<stdgo._internal.go.types.Types_type_.Type_> {
        var _res = (null : stdgo.Slice<stdgo._internal.go.types.Types_type_.Type_>);
        //"file:///home/runner/.go/go1.21.3/src/go/types/assignments.go#L259"
        for (__0 => _x in _list) {
            _res = (_res.__append__((@:checkr _x ?? throw "null pointer dereference")._typ) : stdgo.Slice<stdgo._internal.go.types.Types_type_.Type_>);
        };
        //"file:///home/runner/.go/go1.21.3/src/go/types/assignments.go#L262"
        return _res;
    }
