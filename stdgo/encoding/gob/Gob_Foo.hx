package stdgo.encoding.gob;
@:structInit @:using(stdgo.encoding.gob.Gob.Foo_static_extension) abstract Foo(stdgo._internal.encoding.gob.Gob_Foo.Foo) from stdgo._internal.encoding.gob.Gob_Foo.Foo to stdgo._internal.encoding.gob.Gob_Foo.Foo {
    public var a(get, set) : StdTypes.Int;
    function get_a():StdTypes.Int return this.a;
    function set_a(v:StdTypes.Int):StdTypes.Int {
        this.a = (v : stdgo.GoInt);
        return v;
    }
    public var b(get, set) : StdTypes.Int;
    function get_b():StdTypes.Int return this.b;
    function set_b(v:StdTypes.Int):StdTypes.Int {
        this.b = (v : stdgo.GoInt32);
        return v;
    }
    public var c(get, set) : String;
    function get_c():String return this.c;
    function set_c(v:String):String {
        this.c = (v : stdgo.GoString);
        return v;
    }
    public var d(get, set) : Array<std.UInt>;
    function get_d():Array<std.UInt> return [for (i in this.d) i];
    function set_d(v:Array<std.UInt>):Array<std.UInt> {
        this.d = ([for (i in v) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return v;
    }
    public var e(get, set) : stdgo.Pointer<StdTypes.Float>;
    function get_e():stdgo.Pointer<StdTypes.Float> return this.e;
    function set_e(v:stdgo.Pointer<StdTypes.Float>):stdgo.Pointer<StdTypes.Float> {
        this.e = v;
        return v;
    }
    public var f(get, set) : stdgo.Pointer<stdgo.Pointer<stdgo.Pointer<stdgo.Pointer<StdTypes.Float>>>>;
    function get_f():stdgo.Pointer<stdgo.Pointer<stdgo.Pointer<stdgo.Pointer<StdTypes.Float>>>> return this.f;
    function set_f(v:stdgo.Pointer<stdgo.Pointer<stdgo.Pointer<stdgo.Pointer<StdTypes.Float>>>>):stdgo.Pointer<stdgo.Pointer<stdgo.Pointer<stdgo.Pointer<StdTypes.Float>>>> {
        this.f = v;
        return v;
    }
    public var g(get, set) : Bar;
    function get_g():Bar return this.g;
    function set_g(v:Bar):Bar {
        this.g = (v : stdgo.Ref<stdgo._internal.encoding.gob.Gob_Bar.Bar>);
        return v;
    }
    public var h(get, set) : Bar;
    function get_h():Bar return this.h;
    function set_h(v:Bar):Bar {
        this.h = (v : stdgo.Ref<stdgo._internal.encoding.gob.Gob_Bar.Bar>);
        return v;
    }
    public var i(get, set) : Foo;
    function get_i():Foo return this.i;
    function set_i(v:Foo):Foo {
        this.i = (v : stdgo.Ref<stdgo._internal.encoding.gob.Gob_Foo.Foo>);
        return v;
    }
    public function new(?a:StdTypes.Int, ?b:StdTypes.Int, ?c:String, ?d:Array<std.UInt>, ?e:stdgo.Pointer<StdTypes.Float>, ?f:stdgo.Pointer<stdgo.Pointer<stdgo.Pointer<stdgo.Pointer<StdTypes.Float>>>>, ?g:Bar, ?h:Bar, ?i:Foo) this = new stdgo._internal.encoding.gob.Gob_Foo.Foo((a : stdgo.GoInt), (b : stdgo.GoInt32), (c : stdgo.GoString), ([for (i in d) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>), e, f, (g : stdgo.Ref<stdgo._internal.encoding.gob.Gob_Bar.Bar>), (h : stdgo.Ref<stdgo._internal.encoding.gob.Gob_Bar.Bar>), (i : stdgo.Ref<stdgo._internal.encoding.gob.Gob_Foo.Foo>));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
