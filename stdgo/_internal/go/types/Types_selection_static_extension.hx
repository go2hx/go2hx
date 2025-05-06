package stdgo._internal.go.types;
@:keep @:allow(stdgo._internal.go.types.Types.Selection_asInterface) class Selection_static_extension {
    @:keep
    @:tdfield
    static public function string( _s:stdgo.Ref<stdgo._internal.go.types.Types_selection.Selection>):stdgo.GoString {
        @:recv var _s:stdgo.Ref<stdgo._internal.go.types.Types_selection.Selection> = _s;
        //"file:///home/runner/.go/go1.21.3/src/go/types/selection.go#L109"
        return stdgo._internal.go.types.Types_selectionstring.selectionString(_s, null)?.__copy__();
    }
    @:keep
    @:tdfield
    static public function indirect( _s:stdgo.Ref<stdgo._internal.go.types.Types_selection.Selection>):Bool {
        @:recv var _s:stdgo.Ref<stdgo._internal.go.types.Types_selection.Selection> = _s;
        //"file:///home/runner/.go/go1.21.3/src/go/types/selection.go#L107"
        return (@:checkr _s ?? throw "null pointer dereference")._indirect;
    }
    @:keep
    @:tdfield
    static public function index( _s:stdgo.Ref<stdgo._internal.go.types.Types_selection.Selection>):stdgo.Slice<stdgo.GoInt> {
        @:recv var _s:stdgo.Ref<stdgo._internal.go.types.Types_selection.Selection> = _s;
        //"file:///home/runner/.go/go1.21.3/src/go/types/selection.go#L103"
        return (@:checkr _s ?? throw "null pointer dereference")._index;
    }
    @:keep
    @:tdfield
    static public function type( _s:stdgo.Ref<stdgo._internal.go.types.Types_selection.Selection>):stdgo._internal.go.types.Types_type_.Type_ {
        @:recv var _s:stdgo.Ref<stdgo._internal.go.types.Types_selection.Selection> = _s;
        //"file:///home/runner/.go/go1.21.3/src/go/types/selection.go#L62"
        {
            final __value__ = (@:checkr _s ?? throw "null pointer dereference")._kind;
            if (__value__ == ((1 : stdgo._internal.go.types.Types_selectionkind.SelectionKind))) {
                var _sig = (((stdgo.Go.typeAssert((stdgo.Go.toInterface((@:checkr (stdgo.Go.typeAssert((stdgo.Go.toInterface((@:checkr _s ?? throw "null pointer dereference")._obj) : stdgo.Ref<stdgo._internal.go.types.Types_func.Func>)) : stdgo.Ref<stdgo._internal.go.types.Types_func.Func>) ?? throw "null pointer dereference")._object._typ) : stdgo.Ref<stdgo._internal.go.types.Types_signature.Signature>)) : stdgo.Ref<stdgo._internal.go.types.Types_signature.Signature>) : stdgo._internal.go.types.Types_signature.Signature)?.__copy__() : stdgo._internal.go.types.Types_signature.Signature);
                var _recv = ((_sig._recv : stdgo._internal.go.types.Types_var.Var)?.__copy__() : stdgo._internal.go.types.Types_var.Var);
                _recv._object._typ = (@:checkr _s ?? throw "null pointer dereference")._recv;
                _sig._recv = (stdgo.Go.setRef(_recv) : stdgo.Ref<stdgo._internal.go.types.Types_var.Var>);
                //"file:///home/runner/.go/go1.21.3/src/go/types/selection.go#L70"
                return stdgo.Go.asInterface((stdgo.Go.setRef(_sig) : stdgo.Ref<stdgo._internal.go.types.Types_signature.Signature>));
            } else if (__value__ == ((2 : stdgo._internal.go.types.Types_selectionkind.SelectionKind))) {
                var _sig = (((stdgo.Go.typeAssert((stdgo.Go.toInterface((@:checkr (stdgo.Go.typeAssert((stdgo.Go.toInterface((@:checkr _s ?? throw "null pointer dereference")._obj) : stdgo.Ref<stdgo._internal.go.types.Types_func.Func>)) : stdgo.Ref<stdgo._internal.go.types.Types_func.Func>) ?? throw "null pointer dereference")._object._typ) : stdgo.Ref<stdgo._internal.go.types.Types_signature.Signature>)) : stdgo.Ref<stdgo._internal.go.types.Types_signature.Signature>) : stdgo._internal.go.types.Types_signature.Signature)?.__copy__() : stdgo._internal.go.types.Types_signature.Signature);
                var _arg0 = ((_sig._recv : stdgo._internal.go.types.Types_var.Var)?.__copy__() : stdgo._internal.go.types.Types_var.Var);
                _sig._recv = null;
                _arg0._object._typ = (@:checkr _s ?? throw "null pointer dereference")._recv;
                var _params:stdgo.Slice<stdgo.Ref<stdgo._internal.go.types.Types_var.Var>> = (null : stdgo.Slice<stdgo.Ref<stdgo._internal.go.types.Types_var.Var>>);
                //"file:///home/runner/.go/go1.21.3/src/go/types/selection.go#L82"
                if (({
                    final value = _sig._params;
                    (value != null && ((value : Dynamic).__nil__ == null || !(value : Dynamic).__nil__));
                })) {
                    _params = (@:checkr _sig._params ?? throw "null pointer dereference")._vars;
                };
                _sig._params = stdgo._internal.go.types.Types_newtuple.newTuple(...(((new stdgo.Slice<stdgo.Ref<stdgo._internal.go.types.Types_var.Var>>(1, 1, ...[(stdgo.Go.setRef(_arg0) : stdgo.Ref<stdgo._internal.go.types.Types_var.Var>)]) : stdgo.Slice<stdgo.Ref<stdgo._internal.go.types.Types_var.Var>>).__append__(...(_params : Array<stdgo.Ref<stdgo._internal.go.types.Types_var.Var>>)) : stdgo.Slice<stdgo.Ref<stdgo._internal.go.types.Types_var.Var>>) : Array<stdgo.Ref<stdgo._internal.go.types.Types_var.Var>>));
                //"file:///home/runner/.go/go1.21.3/src/go/types/selection.go#L86"
                return stdgo.Go.asInterface((stdgo.Go.setRef(_sig) : stdgo.Ref<stdgo._internal.go.types.Types_signature.Signature>));
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/go/types/selection.go#L90"
        return (@:checkr _s ?? throw "null pointer dereference")._obj.type();
    }
    @:keep
    @:tdfield
    static public function obj( _s:stdgo.Ref<stdgo._internal.go.types.Types_selection.Selection>):stdgo._internal.go.types.Types_object.Object {
        @:recv var _s:stdgo.Ref<stdgo._internal.go.types.Types_selection.Selection> = _s;
        //"file:///home/runner/.go/go1.21.3/src/go/types/selection.go#L57"
        return (@:checkr _s ?? throw "null pointer dereference")._obj;
    }
    @:keep
    @:tdfield
    static public function recv( _s:stdgo.Ref<stdgo._internal.go.types.Types_selection.Selection>):stdgo._internal.go.types.Types_type_.Type_ {
        @:recv var _s:stdgo.Ref<stdgo._internal.go.types.Types_selection.Selection> = _s;
        //"file:///home/runner/.go/go1.21.3/src/go/types/selection.go#L53"
        return (@:checkr _s ?? throw "null pointer dereference")._recv;
    }
    @:keep
    @:tdfield
    static public function kind( _s:stdgo.Ref<stdgo._internal.go.types.Types_selection.Selection>):stdgo._internal.go.types.Types_selectionkind.SelectionKind {
        @:recv var _s:stdgo.Ref<stdgo._internal.go.types.Types_selection.Selection> = _s;
        //"file:///home/runner/.go/go1.21.3/src/go/types/selection.go#L50"
        return (@:checkr _s ?? throw "null pointer dereference")._kind;
    }
}
