package stdgo._internal.go.doc.comment;
class T_mdPrinter_asInterface {
    @:keep
    @:tdfield
    public dynamic function _escape(_out:stdgo.Ref<stdgo._internal.bytes.Bytes_buffer.Buffer>, _s:stdgo.GoString):Void @:_0 __self__.value._escape(_out, _s);
    @:keep
    @:tdfield
    public dynamic function _rawText(_out:stdgo.Ref<stdgo._internal.bytes.Bytes_buffer.Buffer>, _x:stdgo.Slice<stdgo._internal.go.doc.comment.Comment_text.Text>):Void @:_0 __self__.value._rawText(_out, _x);
    @:keep
    @:tdfield
    public dynamic function _text(_out:stdgo.Ref<stdgo._internal.bytes.Bytes_buffer.Buffer>, _x:stdgo.Slice<stdgo._internal.go.doc.comment.Comment_text.Text>):Void @:_0 __self__.value._text(_out, _x);
    @:keep
    @:tdfield
    public dynamic function _block(_out:stdgo.Ref<stdgo._internal.bytes.Bytes_buffer.Buffer>, _x:stdgo._internal.go.doc.comment.Comment_block.Block):Void @:_0 __self__.value._block(_out, _x);
    @:embedded
    @:embeddededffieldsffun
    public dynamic function _headingLevel():stdgo.GoInt return @:_0 __self__.value._headingLevel();
    @:embedded
    @:embeddededffieldsffun
    public dynamic function _headingID(_0:stdgo.Ref<stdgo._internal.go.doc.comment.Comment_heading.Heading>):stdgo.GoString return @:_0 __self__.value._headingID(_0);
    @:embedded
    @:embeddededffieldsffun
    public dynamic function _docLinkURL(_0:stdgo.Ref<stdgo._internal.go.doc.comment.Comment_doclink.DocLink>):stdgo.GoString return @:_0 __self__.value._docLinkURL(_0);
    @:embedded
    @:embeddededffieldsffun
    public dynamic function text(_0:stdgo.Ref<stdgo._internal.go.doc.comment.Comment_doc.Doc>):stdgo.Slice<stdgo.GoUInt8> return @:_0 __self__.value.text(_0);
    @:embedded
    @:embeddededffieldsffun
    public dynamic function markdown(_0:stdgo.Ref<stdgo._internal.go.doc.comment.Comment_doc.Doc>):stdgo.Slice<stdgo.GoUInt8> return @:_0 __self__.value.markdown(_0);
    @:embedded
    @:embeddededffieldsffun
    public dynamic function hTML(_0:stdgo.Ref<stdgo._internal.go.doc.comment.Comment_doc.Doc>):stdgo.Slice<stdgo.GoUInt8> return @:_0 __self__.value.hTML(_0);
    @:embedded
    @:embeddededffieldsffun
    public dynamic function comment(_0:stdgo.Ref<stdgo._internal.go.doc.comment.Comment_doc.Doc>):stdgo.Slice<stdgo.GoUInt8> return @:_0 __self__.value.comment(_0);
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo._internal.go.doc.comment.Comment_t_mdprinterpointer.T_mdPrinterPointer;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
