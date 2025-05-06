package stdgo._internal.go.doc.comment;
class Printer_asInterface {
    @:keep
    @:tdfield
    public dynamic function text(_d:stdgo.Ref<stdgo._internal.go.doc.comment.Comment_doc.Doc>):stdgo.Slice<stdgo.GoUInt8> return @:_0 __self__.value.text(_d);
    @:keep
    @:tdfield
    public dynamic function comment(_d:stdgo.Ref<stdgo._internal.go.doc.comment.Comment_doc.Doc>):stdgo.Slice<stdgo.GoUInt8> return @:_0 __self__.value.comment(_d);
    @:keep
    @:tdfield
    public dynamic function _docLinkURL(_link:stdgo.Ref<stdgo._internal.go.doc.comment.Comment_doclink.DocLink>):stdgo.GoString return @:_0 __self__.value._docLinkURL(_link);
    @:keep
    @:tdfield
    public dynamic function _headingID(_h:stdgo.Ref<stdgo._internal.go.doc.comment.Comment_heading.Heading>):stdgo.GoString return @:_0 __self__.value._headingID(_h);
    @:keep
    @:tdfield
    public dynamic function _headingLevel():stdgo.GoInt return @:_0 __self__.value._headingLevel();
    @:keep
    @:tdfield
    public dynamic function markdown(_d:stdgo.Ref<stdgo._internal.go.doc.comment.Comment_doc.Doc>):stdgo.Slice<stdgo.GoUInt8> return @:_0 __self__.value.markdown(_d);
    @:keep
    @:tdfield
    public dynamic function hTML(_d:stdgo.Ref<stdgo._internal.go.doc.comment.Comment_doc.Doc>):stdgo.Slice<stdgo.GoUInt8> return @:_0 __self__.value.hTML(_d);
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo._internal.go.doc.comment.Comment_printerpointer.PrinterPointer;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
