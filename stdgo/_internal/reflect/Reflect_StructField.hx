package stdgo._internal.reflect;
@:structInit @:using(stdgo._internal.reflect.Reflect_StructField_static_extension.StructField_static_extension) class StructField {
    public var name : stdgo.GoString = "";
    public var pkgPath : stdgo.GoString = "";
    public var type : stdgo._internal.reflect.Reflect_Type_.Type_ = (null : stdgo._internal.reflect.Reflect_Type_.Type_);
    public var tag : stdgo._internal.reflect.Reflect_StructTag.StructTag = (("" : stdgo.GoString) : stdgo._internal.reflect.Reflect_StructTag.StructTag);
    public var offset : stdgo.GoUIntptr = 0;
    public var index : stdgo.Slice<stdgo.GoInt> = (null : stdgo.Slice<stdgo.GoInt>);
    public var anonymous : Bool = false;
    public function new(?name:stdgo.GoString, ?pkgPath:stdgo.GoString, ?type:stdgo._internal.reflect.Reflect_Type_.Type_, ?tag:stdgo._internal.reflect.Reflect_StructTag.StructTag, ?offset:stdgo.GoUIntptr, ?index:stdgo.Slice<stdgo.GoInt>, ?anonymous:Bool) {
        if (name != null) this.name = name;
        if (pkgPath != null) this.pkgPath = pkgPath;
        if (type != null) this.type = type;
        if (tag != null) this.tag = tag;
        if (offset != null) this.offset = offset;
        if (index != null) this.index = index;
        if (anonymous != null) this.anonymous = anonymous;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new StructField(name, pkgPath, type, tag, offset, index, anonymous);
    }
}
