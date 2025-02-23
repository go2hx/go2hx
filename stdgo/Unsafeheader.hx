package stdgo;
@:structInit @:using(stdgo.internal.unsafeheader.Unsafeheader.Slice__static_extension) abstract Slice_(stdgo._internal.internal.unsafeheader.Unsafeheader_slice_.Slice_) from stdgo._internal.internal.unsafeheader.Unsafeheader_slice_.Slice_ to stdgo._internal.internal.unsafeheader.Unsafeheader_slice_.Slice_ {
    public var data(get, set) : stdgo._internal.unsafe.Unsafe.UnsafePointer;
    function get_data():stdgo._internal.unsafe.Unsafe.UnsafePointer return this.data;
    function set_data(v:stdgo._internal.unsafe.Unsafe.UnsafePointer):stdgo._internal.unsafe.Unsafe.UnsafePointer {
        this.data = v;
        return v;
    }
    public var len(get, set) : StdTypes.Int;
    function get_len():StdTypes.Int return this.len;
    function set_len(v:StdTypes.Int):StdTypes.Int {
        this.len = (v : stdgo.GoInt);
        return v;
    }
    public var cap(get, set) : StdTypes.Int;
    function get_cap():StdTypes.Int return this.cap;
    function set_cap(v:StdTypes.Int):StdTypes.Int {
        this.cap = (v : stdgo.GoInt);
        return v;
    }
    public function new(?data:stdgo._internal.unsafe.Unsafe.UnsafePointer, ?len:StdTypes.Int, ?cap:StdTypes.Int) this = new stdgo._internal.internal.unsafeheader.Unsafeheader_slice_.Slice_(data, (len : stdgo.GoInt), (cap : stdgo.GoInt));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.internal.unsafeheader.Unsafeheader.String__static_extension) abstract String_(stdgo._internal.internal.unsafeheader.Unsafeheader_string_.String_) from stdgo._internal.internal.unsafeheader.Unsafeheader_string_.String_ to stdgo._internal.internal.unsafeheader.Unsafeheader_string_.String_ {
    public var data(get, set) : stdgo._internal.unsafe.Unsafe.UnsafePointer;
    function get_data():stdgo._internal.unsafe.Unsafe.UnsafePointer return this.data;
    function set_data(v:stdgo._internal.unsafe.Unsafe.UnsafePointer):stdgo._internal.unsafe.Unsafe.UnsafePointer {
        this.data = v;
        return v;
    }
    public var len(get, set) : StdTypes.Int;
    function get_len():StdTypes.Int return this.len;
    function set_len(v:StdTypes.Int):StdTypes.Int {
        this.len = (v : stdgo.GoInt);
        return v;
    }
    public function new(?data:stdgo._internal.unsafe.Unsafe.UnsafePointer, ?len:StdTypes.Int) this = new stdgo._internal.internal.unsafeheader.Unsafeheader_string_.String_(data, (len : stdgo.GoInt));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
typedef Slice_Pointer = stdgo._internal.internal.unsafeheader.Unsafeheader_slice_pointer.Slice_Pointer;
class Slice__static_extension {

}
typedef String_Pointer = stdgo._internal.internal.unsafeheader.Unsafeheader_string_pointer.String_Pointer;
class String__static_extension {

}
/**
    * Package unsafeheader contains header declarations for the Go runtime's slice
    * and string implementations.
    * 
    * This package allows packages that cannot import "reflect" to use types that
    * are tested to be equivalent to reflect.SliceHeader and reflect.StringHeader.
**/
class Unsafeheader {

}
