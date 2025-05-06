package stdgo._internal.go.printer;
function _keepTypeColumn(_specs:stdgo.Slice<stdgo._internal.go.ast.Ast_spec.Spec>):stdgo.Slice<Bool> {
        var _m = (new stdgo.Slice<Bool>((_specs.length : stdgo.GoInt).toBasic(), 0) : stdgo.Slice<Bool>);
        var _populate = (function(_i:stdgo.GoInt, _j:stdgo.GoInt, _keepType:Bool):Void {
            //"file:///home/runner/.go/go1.21.3/src/go/printer/nodes.go#L1581"
            if (_keepType) {
                //"file:///home/runner/.go/go1.21.3/src/go/printer/nodes.go#L1582"
                while ((_i < _j : Bool)) {
                    _m[(_i : stdgo.GoInt)] = true;
                    _i++;
                };
            };
        } : (stdgo.GoInt, stdgo.GoInt, Bool) -> Void);
        var _i0 = (-1 : stdgo.GoInt);
        var _keepType:Bool = false;
        //"file:///home/runner/.go/go1.21.3/src/go/printer/nodes.go#L1590"
        for (_i => _s in _specs) {
            var _t = (stdgo.Go.typeAssert((stdgo.Go.toInterface(_s) : stdgo.Ref<stdgo._internal.go.ast.Ast_valuespec.ValueSpec>)) : stdgo.Ref<stdgo._internal.go.ast.Ast_valuespec.ValueSpec>);
            //"file:///home/runner/.go/go1.21.3/src/go/printer/nodes.go#L1592"
            if ((@:checkr _t ?? throw "null pointer dereference").values != null) {
                //"file:///home/runner/.go/go1.21.3/src/go/printer/nodes.go#L1593"
                if ((_i0 < (0 : stdgo.GoInt) : Bool)) {
                    _i0 = _i;
                    _keepType = false;
                };
            } else {
                //"file:///home/runner/.go/go1.21.3/src/go/printer/nodes.go#L1599"
                if ((_i0 >= (0 : stdgo.GoInt) : Bool)) {
                    //"file:///home/runner/.go/go1.21.3/src/go/printer/nodes.go#L1601"
                    _populate(_i0, _i, _keepType);
                    _i0 = (-1 : stdgo.GoInt);
                };
            };
            //"file:///home/runner/.go/go1.21.3/src/go/printer/nodes.go#L1605"
            if ((@:checkr _t ?? throw "null pointer dereference").type != null) {
                _keepType = true;
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/go/printer/nodes.go#L1609"
        if ((_i0 >= (0 : stdgo.GoInt) : Bool)) {
            //"file:///home/runner/.go/go1.21.3/src/go/printer/nodes.go#L1611"
            _populate(_i0, (_specs.length), _keepType);
        };
        //"file:///home/runner/.go/go1.21.3/src/go/printer/nodes.go#L1614"
        return _m;
    }
