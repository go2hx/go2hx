package stdgo._internal.reflect.internal.example1;
@:structInit @:using(stdgo._internal.reflect.internal.example1.Example1_mystruct_static_extension.MyStruct_static_extension) class MyStruct {
    public var myStructs : stdgo.Slice<stdgo._internal.reflect.internal.example1.Example1_mystruct.MyStruct> = (null : stdgo.Slice<stdgo._internal.reflect.internal.example1.Example1_mystruct.MyStruct>);
    public var myStruct : stdgo.Ref<stdgo._internal.reflect.internal.example1.Example1_mystruct.MyStruct> = (null : stdgo.Ref<stdgo._internal.reflect.internal.example1.Example1_mystruct.MyStruct>);
    public function new(?myStructs:stdgo.Slice<stdgo._internal.reflect.internal.example1.Example1_mystruct.MyStruct>, ?myStruct:stdgo.Ref<stdgo._internal.reflect.internal.example1.Example1_mystruct.MyStruct>) {
        if (myStructs != null) this.myStructs = myStructs;
        if (myStruct != null) this.myStruct = myStruct;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new MyStruct(myStructs, myStruct);
    }
}
