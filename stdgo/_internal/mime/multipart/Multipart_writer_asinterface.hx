package stdgo._internal.mime.multipart;
class Writer_asInterface {
    @:keep
    @:tdfield
    public dynamic function close():stdgo.Error return @:_0 __self__.value.close();
    @:keep
    @:tdfield
    public dynamic function writeField(_fieldname:stdgo.GoString, _value:stdgo.GoString):stdgo.Error return @:_0 __self__.value.writeField(_fieldname, _value);
    @:keep
    @:tdfield
    public dynamic function createFormField(_fieldname:stdgo.GoString):{ var _0 : stdgo._internal.io.Io_writer.Writer; var _1 : stdgo.Error; } return @:_0 __self__.value.createFormField(_fieldname);
    @:keep
    @:tdfield
    public dynamic function createFormFile(_fieldname:stdgo.GoString, _filename:stdgo.GoString):{ var _0 : stdgo._internal.io.Io_writer.Writer; var _1 : stdgo.Error; } return @:_0 __self__.value.createFormFile(_fieldname, _filename);
    @:keep
    @:tdfield
    public dynamic function createPart(_header:stdgo._internal.net.textproto.Textproto_mimeheader.MIMEHeader):{ var _0 : stdgo._internal.io.Io_writer.Writer; var _1 : stdgo.Error; } return @:_0 __self__.value.createPart(_header);
    @:keep
    @:tdfield
    public dynamic function formDataContentType():stdgo.GoString return @:_0 __self__.value.formDataContentType();
    @:keep
    @:tdfield
    public dynamic function setBoundary(_boundary:stdgo.GoString):stdgo.Error return @:_0 __self__.value.setBoundary(_boundary);
    @:keep
    @:tdfield
    public dynamic function boundary():stdgo.GoString return @:_0 __self__.value.boundary();
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo._internal.mime.multipart.Multipart_writerpointer.WriterPointer;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
