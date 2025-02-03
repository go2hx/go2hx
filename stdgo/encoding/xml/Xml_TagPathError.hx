package stdgo.encoding.xml;
@:structInit @:using(stdgo.encoding.xml.Xml.TagPathError_static_extension) abstract TagPathError(stdgo._internal.encoding.xml.Xml_TagPathError.TagPathError) from stdgo._internal.encoding.xml.Xml_TagPathError.TagPathError to stdgo._internal.encoding.xml.Xml_TagPathError.TagPathError {
    public var struct_(get, set) : stdgo._internal.reflect.Reflect_Type_.Type_;
    function get_struct_():stdgo._internal.reflect.Reflect_Type_.Type_ return this.struct_;
    function set_struct_(v:stdgo._internal.reflect.Reflect_Type_.Type_):stdgo._internal.reflect.Reflect_Type_.Type_ {
        this.struct_ = v;
        return v;
    }
    public var field1(get, set) : String;
    function get_field1():String return this.field1;
    function set_field1(v:String):String {
        this.field1 = (v : stdgo.GoString);
        return v;
    }
    public var tag1(get, set) : String;
    function get_tag1():String return this.tag1;
    function set_tag1(v:String):String {
        this.tag1 = (v : stdgo.GoString);
        return v;
    }
    public var field2(get, set) : String;
    function get_field2():String return this.field2;
    function set_field2(v:String):String {
        this.field2 = (v : stdgo.GoString);
        return v;
    }
    public var tag2(get, set) : String;
    function get_tag2():String return this.tag2;
    function set_tag2(v:String):String {
        this.tag2 = (v : stdgo.GoString);
        return v;
    }
    public function new(?struct_:stdgo._internal.reflect.Reflect_Type_.Type_, ?field1:String, ?tag1:String, ?field2:String, ?tag2:String) this = new stdgo._internal.encoding.xml.Xml_TagPathError.TagPathError(struct_, (field1 : stdgo.GoString), (tag1 : stdgo.GoString), (field2 : stdgo.GoString), (tag2 : stdgo.GoString));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
