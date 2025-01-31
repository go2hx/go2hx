package stdgo._internal.text.template.parse;
import stdgo._internal.strings.Strings;
import stdgo._internal.unicode.Unicode;
import stdgo._internal.bytes.Bytes;
import stdgo._internal.fmt.Fmt;
import stdgo._internal.unicode.utf8.Utf8;
import stdgo._internal.strconv.Strconv;
class ListNode_asInterface {
    @:keep
    @:tdfield
    public dynamic function copy():stdgo._internal.text.template.parse.Parse_Node.Node return @:_0 __self__.value.copy();
    @:keep
    @:tdfield
    public dynamic function copyList():stdgo.Ref<stdgo._internal.text.template.parse.Parse_ListNode.ListNode> return @:_0 __self__.value.copyList();
    @:keep
    @:tdfield
    public dynamic function _writeTo(_sb:stdgo.Ref<stdgo._internal.strings.Strings_Builder.Builder>):Void @:_0 __self__.value._writeTo(_sb);
    @:keep
    @:tdfield
    public dynamic function string():stdgo.GoString return @:_0 __self__.value.string();
    @:keep
    @:tdfield
    public dynamic function _tree():stdgo.Ref<stdgo._internal.text.template.parse.Parse_Tree.Tree> return @:_0 __self__.value._tree();
    @:keep
    @:tdfield
    public dynamic function _append(_n:stdgo._internal.text.template.parse.Parse_Node.Node):Void @:_0 __self__.value._append(_n);
    @:embedded
    @:embeddededffieldsffun
    public dynamic function type():stdgo._internal.text.template.parse.Parse_NodeType.NodeType return @:_0 __self__.value.type();
    @:embedded
    @:embeddededffieldsffun
    public dynamic function position():stdgo._internal.text.template.parse.Parse_Pos.Pos return @:_0 __self__.value.position();
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo._internal.text.template.parse.Parse_ListNodePointer.ListNodePointer;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
