package stdgo._internal.go.ast;
@:keep @:allow(stdgo._internal.go.ast.Ast.Scope_asInterface) class Scope_static_extension {
    @:keep
    @:tdfield
    static public function string( _s:stdgo.Ref<stdgo._internal.go.ast.Ast_scope.Scope>):stdgo.GoString {
        @:recv var _s:stdgo.Ref<stdgo._internal.go.ast.Ast_scope.Scope> = _s;
        var _buf:stdgo._internal.strings.Strings_builder.Builder = ({} : stdgo._internal.strings.Strings_builder.Builder);
        //"file:///home/runner/.go/go1.21.3/src/go/ast/scope.go#L50"
        stdgo._internal.fmt.Fmt_fprintf.fprintf(stdgo.Go.asInterface((stdgo.Go.setRef(_buf) : stdgo.Ref<stdgo._internal.strings.Strings_builder.Builder>)), ("scope %p {" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_s)));
        //"file:///home/runner/.go/go1.21.3/src/go/ast/scope.go#L51"
        if ((({
            final value = _s;
            (value != null && ((value : Dynamic).__nil__ == null || !(value : Dynamic).__nil__));
        }) && (((@:checkr _s ?? throw "null pointer dereference").objects.length) > (0 : stdgo.GoInt) : Bool) : Bool)) {
            //"file:///home/runner/.go/go1.21.3/src/go/ast/scope.go#L52"
            stdgo._internal.fmt.Fmt_fprintln.fprintln(stdgo.Go.asInterface((stdgo.Go.setRef(_buf) : stdgo.Ref<stdgo._internal.strings.Strings_builder.Builder>)));
            //"file:///home/runner/.go/go1.21.3/src/go/ast/scope.go#L53"
            for (__0 => _obj in (@:checkr _s ?? throw "null pointer dereference").objects) {
                //"file:///home/runner/.go/go1.21.3/src/go/ast/scope.go#L54"
                stdgo._internal.fmt.Fmt_fprintf.fprintf(stdgo.Go.asInterface((stdgo.Go.setRef(_buf) : stdgo.Ref<stdgo._internal.strings.Strings_builder.Builder>)), ("\t%s %s\n" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface((@:checkr _obj ?? throw "null pointer dereference").kind)), stdgo.Go.toInterface((@:checkr _obj ?? throw "null pointer dereference").name));
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/go/ast/scope.go#L57"
        stdgo._internal.fmt.Fmt_fprintf.fprintf(stdgo.Go.asInterface((stdgo.Go.setRef(_buf) : stdgo.Ref<stdgo._internal.strings.Strings_builder.Builder>)), ("}\n" : stdgo.GoString));
        //"file:///home/runner/.go/go1.21.3/src/go/ast/scope.go#L58"
        return (_buf.string() : stdgo.GoString)?.__copy__();
    }
    @:keep
    @:tdfield
    static public function insert( _s:stdgo.Ref<stdgo._internal.go.ast.Ast_scope.Scope>, _obj:stdgo.Ref<stdgo._internal.go.ast.Ast_object.Object>):stdgo.Ref<stdgo._internal.go.ast.Ast_object.Object> {
        @:recv var _s:stdgo.Ref<stdgo._internal.go.ast.Ast_scope.Scope> = _s;
        var _alt = (null : stdgo.Ref<stdgo._internal.go.ast.Ast_object.Object>);
        //"file:///home/runner/.go/go1.21.3/src/go/ast/scope.go#L41"
        {
            _alt = ((@:checkr _s ?? throw "null pointer dereference").objects[(@:checkr _obj ?? throw "null pointer dereference").name] ?? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_object.Object>));
            if (({
                final value = _alt;
                (value == null || (value : Dynamic).__nil__);
            })) {
                (@:checkr _s ?? throw "null pointer dereference").objects[(@:checkr _obj ?? throw "null pointer dereference").name] = _obj;
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/go/ast/scope.go#L44"
        return _alt;
    }
    @:keep
    @:tdfield
    static public function lookup( _s:stdgo.Ref<stdgo._internal.go.ast.Ast_scope.Scope>, _name:stdgo.GoString):stdgo.Ref<stdgo._internal.go.ast.Ast_object.Object> {
        @:recv var _s:stdgo.Ref<stdgo._internal.go.ast.Ast_scope.Scope> = _s;
        //"file:///home/runner/.go/go1.21.3/src/go/ast/scope.go#L33"
        return ((@:checkr _s ?? throw "null pointer dereference").objects[_name] ?? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_object.Object>));
    }
}
