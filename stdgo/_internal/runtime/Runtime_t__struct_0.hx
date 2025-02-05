package stdgo._internal.runtime;
@:local @:using(stdgo._internal.runtime.Runtime_t__struct_0_static_extension.T__struct_0_static_extension) typedef T__struct_0 = {
    /**
        * Size is the maximum byte size of an object in this
        * size class.
    **/
    public var size : stdgo.GoUInt32;
    /**
        * Mallocs is the cumulative count of heap objects
        * allocated in this size class. The cumulative bytes
        * of allocation is Size*Mallocs. The number of live
        * objects in this size class is Mallocs - Frees.
    **/
    public var mallocs : stdgo.GoUInt64;
    /**
        * Frees is the cumulative count of heap objects freed
        * in this size class.
    **/
    public var frees : stdgo.GoUInt64;
};
