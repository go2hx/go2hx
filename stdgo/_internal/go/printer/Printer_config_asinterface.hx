package stdgo._internal.go.printer;
class Config_asInterface {
    @:keep
    @:tdfield
    public dynamic function fprint(_output:stdgo._internal.io.Io_writer.Writer, _fset:stdgo.Ref<stdgo._internal.go.token.Token_fileset.FileSet>, _node:stdgo.AnyInterface):stdgo.Error return @:_0 __self__.value.fprint(_output, _fset, _node);
    @:keep
    @:tdfield
    public dynamic function _fprint(_output:stdgo._internal.io.Io_writer.Writer, _fset:stdgo.Ref<stdgo._internal.go.token.Token_fileset.FileSet>, _node:stdgo.AnyInterface, _nodeSizes:stdgo.GoMap<stdgo._internal.go.ast.Ast_node.Node, stdgo.GoInt>):stdgo.Error return @:_0 __self__.value._fprint(_output, _fset, _node, _nodeSizes);
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo._internal.go.printer.Printer_configpointer.ConfigPointer;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
