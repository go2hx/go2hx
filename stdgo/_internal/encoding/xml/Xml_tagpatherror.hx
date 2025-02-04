package stdgo._internal.encoding.xml;
@:structInit @:using(stdgo._internal.encoding.xml.Xml_tagpatherror_static_extension.TagPathError_static_extension) class TagPathError {
    public var struct_ : stdgo._internal.reflect.Reflect_type_.Type_ = (null : stdgo._internal.reflect.Reflect_type_.Type_);
    public var field1 : stdgo.GoString = "";
    public var tag1 : stdgo.GoString = "";
    public var field2 : stdgo.GoString = "";
    public var tag2 : stdgo.GoString = "";
    public function new(?struct_:stdgo._internal.reflect.Reflect_type_.Type_, ?field1:stdgo.GoString, ?tag1:stdgo.GoString, ?field2:stdgo.GoString, ?tag2:stdgo.GoString) {
        if (struct_ != null) this.struct_ = struct_;
        if (field1 != null) this.field1 = field1;
        if (tag1 != null) this.tag1 = tag1;
        if (field2 != null) this.field2 = field2;
        if (tag2 != null) this.tag2 = tag2;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new TagPathError(struct_, field1, tag1, field2, tag2);
    }
}
