package stdgo._internal.encoding.xml;
@:structInit @:using(stdgo._internal.encoding.xml.Xml_unsupportedtypeerror_static_extension.UnsupportedTypeError_static_extension) class UnsupportedTypeError {
    public var type : stdgo._internal.reflect.Reflect_type_.Type_ = (null : stdgo._internal.reflect.Reflect_type_.Type_);
    public function new(?type:stdgo._internal.reflect.Reflect_type_.Type_) {
        if (type != null) this.type = type;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new UnsupportedTypeError(type);
    }
}
