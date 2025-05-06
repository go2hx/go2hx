package stdgo._internal.go.doc;
class Package_asInterface {
    @:keep
    @:tdfield
    public dynamic function synopsis(_text:stdgo.GoString):stdgo.GoString return @:_0 __self__.value.synopsis(_text);
    @:keep
    @:tdfield
    public dynamic function filter(_f:stdgo._internal.go.doc.Doc_filter.Filter):Void @:_0 __self__.value.filter(_f);
    @:keep
    @:tdfield
    public dynamic function text(_text:stdgo.GoString):stdgo.Slice<stdgo.GoUInt8> return @:_0 __self__.value.text(_text);
    @:keep
    @:tdfield
    public dynamic function markdown(_text:stdgo.GoString):stdgo.Slice<stdgo.GoUInt8> return @:_0 __self__.value.markdown(_text);
    @:keep
    @:tdfield
    public dynamic function hTML(_text:stdgo.GoString):stdgo.Slice<stdgo.GoUInt8> return @:_0 __self__.value.hTML(_text);
    @:keep
    @:tdfield
    public dynamic function printer():stdgo.Ref<stdgo._internal.go.doc.comment.Comment_printer.Printer> return @:_0 __self__.value.printer();
    @:keep
    @:tdfield
    public dynamic function parser():stdgo.Ref<stdgo._internal.go.doc.comment.Comment_parser.Parser> return @:_0 __self__.value.parser();
    @:keep
    @:tdfield
    public dynamic function _lookupPackage(_name:stdgo.GoString):{ var _0 : stdgo.GoString; var _1 : Bool; } return @:_0 __self__.value._lookupPackage(_name);
    @:keep
    @:tdfield
    public dynamic function _lookupSym(_recv:stdgo.GoString, _name:stdgo.GoString):Bool return @:_0 __self__.value._lookupSym(_recv, _name);
    @:keep
    @:tdfield
    public dynamic function _collectFuncs(_funcs:stdgo.Slice<stdgo.Ref<stdgo._internal.go.doc.Doc_func.Func>>):Void @:_0 __self__.value._collectFuncs(_funcs);
    @:keep
    @:tdfield
    public dynamic function _collectTypes(_types:stdgo.Slice<stdgo.Ref<stdgo._internal.go.doc.Doc_type_.Type_>>):Void @:_0 __self__.value._collectTypes(_types);
    @:keep
    @:tdfield
    public dynamic function _collectValues(_values:stdgo.Slice<stdgo.Ref<stdgo._internal.go.doc.Doc_value.Value>>):Void @:_0 __self__.value._collectValues(_values);
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo._internal.go.doc.Doc_packagepointer.PackagePointer;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
