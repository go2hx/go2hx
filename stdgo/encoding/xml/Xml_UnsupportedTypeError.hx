package stdgo.encoding.xml;
@:structInit @:using(stdgo.encoding.xml.Xml.UnsupportedTypeError_static_extension) abstract UnsupportedTypeError(stdgo._internal.encoding.xml.Xml_UnsupportedTypeError.UnsupportedTypeError) from stdgo._internal.encoding.xml.Xml_UnsupportedTypeError.UnsupportedTypeError to stdgo._internal.encoding.xml.Xml_UnsupportedTypeError.UnsupportedTypeError {
    public var type(get, set) : stdgo._internal.reflect.Reflect_Type_.Type_;
    function get_type():stdgo._internal.reflect.Reflect_Type_.Type_ return this.type;
    function set_type(v:stdgo._internal.reflect.Reflect_Type_.Type_):stdgo._internal.reflect.Reflect_Type_.Type_ {
        this.type = v;
        return v;
    }
    public function new(?type:stdgo._internal.reflect.Reflect_Type_.Type_) this = new stdgo._internal.encoding.xml.Xml_UnsupportedTypeError.UnsupportedTypeError(type);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
