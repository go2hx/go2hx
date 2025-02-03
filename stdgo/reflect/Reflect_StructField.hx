package stdgo.reflect;
@:structInit @:using(stdgo.reflect.Reflect.StructField_static_extension) abstract StructField(stdgo._internal.reflect.Reflect_StructField.StructField) from stdgo._internal.reflect.Reflect_StructField.StructField to stdgo._internal.reflect.Reflect_StructField.StructField {
    public var name(get, set) : String;
    function get_name():String return this.name;
    function set_name(v:String):String {
        this.name = (v : stdgo.GoString);
        return v;
    }
    public var pkgPath(get, set) : String;
    function get_pkgPath():String return this.pkgPath;
    function set_pkgPath(v:String):String {
        this.pkgPath = (v : stdgo.GoString);
        return v;
    }
    public var type(get, set) : Type_;
    function get_type():Type_ return this.type;
    function set_type(v:Type_):Type_ {
        this.type = v;
        return v;
    }
    public var tag(get, set) : StructTag;
    function get_tag():StructTag return this.tag;
    function set_tag(v:StructTag):StructTag {
        this.tag = v;
        return v;
    }
    public var offset(get, set) : stdgo.GoUIntptr;
    function get_offset():stdgo.GoUIntptr return this.offset;
    function set_offset(v:stdgo.GoUIntptr):stdgo.GoUIntptr {
        this.offset = (v : stdgo.GoUIntptr);
        return v;
    }
    public var index(get, set) : Array<StdTypes.Int>;
    function get_index():Array<StdTypes.Int> return [for (i in this.index) i];
    function set_index(v:Array<StdTypes.Int>):Array<StdTypes.Int> {
        this.index = ([for (i in v) (i : stdgo.GoInt)] : stdgo.Slice<stdgo.GoInt>);
        return v;
    }
    public var anonymous(get, set) : Bool;
    function get_anonymous():Bool return this.anonymous;
    function set_anonymous(v:Bool):Bool {
        this.anonymous = v;
        return v;
    }
    public function new(?name:String, ?pkgPath:String, ?type:Type_, ?tag:StructTag, ?offset:stdgo.GoUIntptr, ?index:Array<StdTypes.Int>, ?anonymous:Bool) this = new stdgo._internal.reflect.Reflect_StructField.StructField((name : stdgo.GoString), (pkgPath : stdgo.GoString), type, tag, (offset : stdgo.GoUIntptr), ([for (i in index) (i : stdgo.GoInt)] : stdgo.Slice<stdgo.GoInt>), anonymous);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
