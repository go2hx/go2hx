package stdgo.runtime;
@:structInit @:using(stdgo.runtime.Runtime.MemProfileRecord_static_extension) abstract MemProfileRecord(stdgo._internal.runtime.Runtime_MemProfileRecord.MemProfileRecord) from stdgo._internal.runtime.Runtime_MemProfileRecord.MemProfileRecord to stdgo._internal.runtime.Runtime_MemProfileRecord.MemProfileRecord {
    public var allocBytes(get, set) : haxe.Int64;
    function get_allocBytes():haxe.Int64 return this.allocBytes;
    function set_allocBytes(v:haxe.Int64):haxe.Int64 {
        this.allocBytes = (v : stdgo.GoInt64);
        return v;
    }
    public var freeBytes(get, set) : haxe.Int64;
    function get_freeBytes():haxe.Int64 return this.freeBytes;
    function set_freeBytes(v:haxe.Int64):haxe.Int64 {
        this.freeBytes = (v : stdgo.GoInt64);
        return v;
    }
    public var allocObjects(get, set) : haxe.Int64;
    function get_allocObjects():haxe.Int64 return this.allocObjects;
    function set_allocObjects(v:haxe.Int64):haxe.Int64 {
        this.allocObjects = (v : stdgo.GoInt64);
        return v;
    }
    public var freeObjects(get, set) : haxe.Int64;
    function get_freeObjects():haxe.Int64 return this.freeObjects;
    function set_freeObjects(v:haxe.Int64):haxe.Int64 {
        this.freeObjects = (v : stdgo.GoInt64);
        return v;
    }
    public var stack0(get, set) : haxe.ds.Vector<stdgo.GoUIntptr>;
    function get_stack0():haxe.ds.Vector<stdgo.GoUIntptr> return haxe.ds.Vector.fromArrayCopy([for (i in this.stack0) i]);
    function set_stack0(v:haxe.ds.Vector<stdgo.GoUIntptr>):haxe.ds.Vector<stdgo.GoUIntptr> {
        this.stack0 = ([for (i in v) (i : stdgo.GoUIntptr)] : stdgo.GoArray<stdgo.GoUIntptr>);
        return v;
    }
    public function new(?allocBytes:haxe.Int64, ?freeBytes:haxe.Int64, ?allocObjects:haxe.Int64, ?freeObjects:haxe.Int64, ?stack0:haxe.ds.Vector<stdgo.GoUIntptr>) this = new stdgo._internal.runtime.Runtime_MemProfileRecord.MemProfileRecord((allocBytes : stdgo.GoInt64), (freeBytes : stdgo.GoInt64), (allocObjects : stdgo.GoInt64), (freeObjects : stdgo.GoInt64), ([for (i in stack0) (i : stdgo.GoUIntptr)] : stdgo.GoArray<stdgo.GoUIntptr>));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
