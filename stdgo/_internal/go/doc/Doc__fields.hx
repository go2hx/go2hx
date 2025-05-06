package stdgo._internal.go.doc;
function _fields(_typ:stdgo._internal.go.ast.Ast_expr.Expr):{ var _0 : stdgo.Slice<stdgo.Ref<stdgo._internal.go.ast.Ast_field.Field>>; var _1 : Bool; } {
        var _list = (null : stdgo.Slice<stdgo.Ref<stdgo._internal.go.ast.Ast_field.Field>>), _isStruct = false;
        var _fields:stdgo.Ref<stdgo._internal.go.ast.Ast_fieldlist.FieldList> = (null : stdgo.Ref<stdgo._internal.go.ast.Ast_fieldlist.FieldList>);
        //"file:///home/runner/.go/go1.21.3/src/go/doc/reader.go#L348"
        {
            final __type__ = _typ;
            if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.go.ast.Ast_structtype.StructType>))) {
                var _t:stdgo.Ref<stdgo._internal.go.ast.Ast_structtype.StructType> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_structtype.StructType>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_structtype.StructType>) : stdgo.Go.fromAsInterfaceToValue(__type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_structtype.StructType>) : __type__.__underlying__().value);
                _fields = (@:checkr _t ?? throw "null pointer dereference").fields;
                _isStruct = true;
            } else if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.go.ast.Ast_interfacetype.InterfaceType>))) {
                var _t:stdgo.Ref<stdgo._internal.go.ast.Ast_interfacetype.InterfaceType> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_interfacetype.InterfaceType>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_interfacetype.InterfaceType>) : stdgo.Go.fromAsInterfaceToValue(__type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_interfacetype.InterfaceType>) : __type__.__underlying__().value);
                _fields = (@:checkr _t ?? throw "null pointer dereference").methods;
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/go/doc/reader.go#L355"
        if (({
            final value = _fields;
            (value != null && ((value : Dynamic).__nil__ == null || !(value : Dynamic).__nil__));
        })) {
            _list = (@:checkr _fields ?? throw "null pointer dereference").list;
        };
        //"file:///home/runner/.go/go1.21.3/src/go/doc/reader.go#L358"
        return { _0 : _list, _1 : _isStruct };
    }
