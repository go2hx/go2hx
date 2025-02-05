package stdgo.reflect.internal.example2;
@:structInit @:using(stdgo.reflect.internal.example2.Example2.MyStruct_static_extension) abstract MyStruct(stdgo._internal.reflect.internal.example2.Example2_mystruct.MyStruct) from stdgo._internal.reflect.internal.example2.Example2_mystruct.MyStruct to stdgo._internal.reflect.internal.example2.Example2_mystruct.MyStruct {
    public var myStructs(get, set) : Array<MyStruct>;
    function get_myStructs():Array<MyStruct> return [for (i in this.myStructs) i];
    function set_myStructs(v:Array<MyStruct>):Array<MyStruct> {
        this.myStructs = ([for (i in v) i] : stdgo.Slice<stdgo._internal.reflect.internal.example2.Example2_mystruct.MyStruct>);
        return v;
    }
    public var myStruct(get, set) : MyStruct;
    function get_myStruct():MyStruct return this.myStruct;
    function set_myStruct(v:MyStruct):MyStruct {
        this.myStruct = (v : stdgo.Ref<stdgo._internal.reflect.internal.example2.Example2_mystruct.MyStruct>);
        return v;
    }
    public function new(?myStructs:Array<MyStruct>, ?myStruct:MyStruct) this = new stdgo._internal.reflect.internal.example2.Example2_mystruct.MyStruct(([for (i in myStructs) i] : stdgo.Slice<stdgo._internal.reflect.internal.example2.Example2_mystruct.MyStruct>), (myStruct : stdgo.Ref<stdgo._internal.reflect.internal.example2.Example2_mystruct.MyStruct>));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
typedef MyStructPointer = stdgo._internal.reflect.internal.example2.Example2_mystructpointer.MyStructPointer;
class MyStruct_static_extension {

}
class Example2 {

}
