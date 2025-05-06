package stdgo._internal.go.types;
@:keep @:allow(stdgo._internal.go.types.Types.T_block_asInterface) class T_block_static_extension {
    @:keep
    @:tdfield
    static public function _enclosingTarget( _b:stdgo.Ref<stdgo._internal.go.types.Types_t_block.T_block>, _name:stdgo.GoString):stdgo.Ref<stdgo._internal.go.ast.Ast_labeledstmt.LabeledStmt> {
        @:recv var _b:stdgo.Ref<stdgo._internal.go.types.Types_t_block.T_block> = _b;
        //"file:///home/runner/.go/go1.21.3/src/go/types/labels.go#L84"
        {
            var _s = _b;
            while (({
                final value = _s;
                (value != null && ((value : Dynamic).__nil__ == null || !(value : Dynamic).__nil__));
            })) {
                //"file:///home/runner/.go/go1.21.3/src/go/types/labels.go#L85"
                {
                    var _t = (@:checkr _s ?? throw "null pointer dereference")._lstmt;
                    if ((({
                        final value = _t;
                        (value != null && ((value : Dynamic).__nil__ == null || !(value : Dynamic).__nil__));
                    }) && ((@:checkr (@:checkr _t ?? throw "null pointer dereference").label ?? throw "null pointer dereference").name == _name) : Bool)) {
                        //"file:///home/runner/.go/go1.21.3/src/go/types/labels.go#L86"
                        return _t;
                    };
                };
                _s = (@:checkr _s ?? throw "null pointer dereference")._parent;
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/go/types/labels.go#L89"
        return null;
    }
    @:keep
    @:tdfield
    static public function _gotoTarget( _b:stdgo.Ref<stdgo._internal.go.types.Types_t_block.T_block>, _name:stdgo.GoString):stdgo.Ref<stdgo._internal.go.ast.Ast_labeledstmt.LabeledStmt> {
        @:recv var _b:stdgo.Ref<stdgo._internal.go.types.Types_t_block.T_block> = _b;
        //"file:///home/runner/.go/go1.21.3/src/go/types/labels.go#L73"
        {
            var _s = _b;
            while (({
                final value = _s;
                (value != null && ((value : Dynamic).__nil__ == null || !(value : Dynamic).__nil__));
            })) {
                //"file:///home/runner/.go/go1.21.3/src/go/types/labels.go#L74"
                {
                    var _t = ((@:checkr _s ?? throw "null pointer dereference")._labels[_name] ?? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_labeledstmt.LabeledStmt>));
                    if (({
                        final value = _t;
                        (value != null && ((value : Dynamic).__nil__ == null || !(value : Dynamic).__nil__));
                    })) {
                        //"file:///home/runner/.go/go1.21.3/src/go/types/labels.go#L75"
                        return _t;
                    };
                };
                _s = (@:checkr _s ?? throw "null pointer dereference")._parent;
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/go/types/labels.go#L78"
        return null;
    }
    @:keep
    @:tdfield
    static public function _insert( _b:stdgo.Ref<stdgo._internal.go.types.Types_t_block.T_block>, _s:stdgo.Ref<stdgo._internal.go.ast.Ast_labeledstmt.LabeledStmt>):Void {
        @:recv var _b:stdgo.Ref<stdgo._internal.go.types.Types_t_block.T_block> = _b;
        var _name = ((@:checkr (@:checkr _s ?? throw "null pointer dereference").label ?? throw "null pointer dereference").name?.__copy__() : stdgo.GoString);
        //"file:///home/runner/.go/go1.21.3/src/go/types/labels.go#L59"
        if (false) {
            //"file:///home/runner/.go/go1.21.3/src/go/types/labels.go#L60"
            stdgo._internal.go.types.Types__assert._assert(({
                final value = _b._gotoTarget(_name?.__copy__());
                (value == null || (value : Dynamic).__nil__);
            }));
        };
        var _labels = (@:checkr _b ?? throw "null pointer dereference")._labels;
        //"file:///home/runner/.go/go1.21.3/src/go/types/labels.go#L63"
        if (_labels == null) {
            _labels = (({
                final x = new stdgo.GoMap.GoStringMap<stdgo.Ref<stdgo._internal.go.ast.Ast_labeledstmt.LabeledStmt>>();
                x.__defaultValue__ = () -> (null : stdgo.Ref<stdgo._internal.go.ast.Ast_labeledstmt.LabeledStmt>);
                {};
                x;
            } : stdgo.GoMap<stdgo.GoString, stdgo.Ref<stdgo._internal.go.ast.Ast_labeledstmt.LabeledStmt>>) : stdgo.GoMap<stdgo.GoString, stdgo.Ref<stdgo._internal.go.ast.Ast_labeledstmt.LabeledStmt>>);
            (@:checkr _b ?? throw "null pointer dereference")._labels = _labels;
        };
        _labels[_name] = _s;
    }
}
