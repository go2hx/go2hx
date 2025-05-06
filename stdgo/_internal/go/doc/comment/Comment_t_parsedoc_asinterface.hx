package stdgo._internal.go.doc.comment;
class T_parseDoc_asInterface {
    @:keep
    @:tdfield
    public dynamic function _parseText(_out:stdgo.Slice<stdgo._internal.go.doc.comment.Comment_text.Text>, _s:stdgo.GoString, _autoLink:Bool):stdgo.Slice<stdgo._internal.go.doc.comment.Comment_text.Text> return @:_0 __self__.value._parseText(_out, _s, _autoLink);
    @:keep
    @:tdfield
    public dynamic function _docLink(_text:stdgo.GoString, _before:stdgo.GoString, _after:stdgo.GoString):{ var _0 : stdgo.Ref<stdgo._internal.go.doc.comment.Comment_doclink.DocLink>; var _1 : Bool; } return @:_0 __self__.value._docLink(_text, _before, _after);
    @:keep
    @:tdfield
    public dynamic function _parseLinkedText(_text:stdgo.GoString):stdgo.Slice<stdgo._internal.go.doc.comment.Comment_text.Text> return @:_0 __self__.value._parseLinkedText(_text);
    @:keep
    @:tdfield
    public dynamic function _list(_lines:stdgo.Slice<stdgo.GoString>, _forceBlankBefore:Bool):stdgo.Ref<stdgo._internal.go.doc.comment.Comment_list.List> return @:_0 __self__.value._list(_lines, _forceBlankBefore);
    @:keep
    @:tdfield
    public dynamic function _paragraph(_lines:stdgo.Slice<stdgo.GoString>):stdgo._internal.go.doc.comment.Comment_block.Block return @:_0 __self__.value._paragraph(_lines);
    @:keep
    @:tdfield
    public dynamic function _code(_lines:stdgo.Slice<stdgo.GoString>):stdgo.Ref<stdgo._internal.go.doc.comment.Comment_code.Code> return @:_0 __self__.value._code(_lines);
    @:keep
    @:tdfield
    public dynamic function _heading(_line:stdgo.GoString):stdgo._internal.go.doc.comment.Comment_block.Block return @:_0 __self__.value._heading(_line);
    @:keep
    @:tdfield
    public dynamic function _oldHeading(_line:stdgo.GoString):stdgo._internal.go.doc.comment.Comment_block.Block return @:_0 __self__.value._oldHeading(_line);
    @:keep
    @:tdfield
    public dynamic function _lookupPkg(_pkg:stdgo.GoString):{ var _0 : stdgo.GoString; var _1 : Bool; } return @:_0 __self__.value._lookupPkg(_pkg);
    @:embedded
    @:embeddededffieldsffun
    public dynamic function parse(_0:stdgo.GoString):stdgo.Ref<stdgo._internal.go.doc.comment.Comment_doc.Doc> return @:_0 __self__.value.parse(_0);
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo._internal.go.doc.comment.Comment_t_parsedocpointer.T_parseDocPointer;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
