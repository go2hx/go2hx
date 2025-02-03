package stdgo.internal.coverage.slicewriter;
@:structInit @:using(stdgo.internal.coverage.slicewriter.Slicewriter.WriteSeeker_static_extension) abstract WriteSeeker(stdgo._internal.internal.coverage.slicewriter.Slicewriter_WriteSeeker.WriteSeeker) from stdgo._internal.internal.coverage.slicewriter.Slicewriter_WriteSeeker.WriteSeeker to stdgo._internal.internal.coverage.slicewriter.Slicewriter_WriteSeeker.WriteSeeker {
    public var _payload(get, set) : Array<std.UInt>;
    function get__payload():Array<std.UInt> return [for (i in this._payload) i];
    function set__payload(v:Array<std.UInt>):Array<std.UInt> {
        this._payload = ([for (i in v) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return v;
    }
    public var _off(get, set) : haxe.Int64;
    function get__off():haxe.Int64 return this._off;
    function set__off(v:haxe.Int64):haxe.Int64 {
        this._off = (v : stdgo.GoInt64);
        return v;
    }
    public function new(?_payload:Array<std.UInt>, ?_off:haxe.Int64) this = new stdgo._internal.internal.coverage.slicewriter.Slicewriter_WriteSeeker.WriteSeeker(([for (i in _payload) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>), (_off : stdgo.GoInt64));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
