package _internal.reflect.internal.example2;
@:structInit class MyStruct {
    public var myStructs : stdgo.Slice<_internal.reflect.internal.example2.Example2_MyStruct.MyStruct> = (null : stdgo.Slice<_internal.reflect.internal.example2.Example2_MyStruct.MyStruct>);
    public var myStruct : stdgo.Ref<_internal.reflect.internal.example2.Example2_MyStruct.MyStruct> = (null : stdgo.Ref<_internal.reflect.internal.example2.Example2_MyStruct.MyStruct>);
    public function new(?myStructs:stdgo.Slice<_internal.reflect.internal.example2.Example2_MyStruct.MyStruct>, ?myStruct:stdgo.Ref<_internal.reflect.internal.example2.Example2_MyStruct.MyStruct>) {
        if (myStructs != null) this.myStructs = myStructs;
        if (myStruct != null) this.myStruct = myStruct;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new MyStruct(myStructs, myStruct);
    }
}
