package stdgo.internal.coverage.slicewriter;
@:structInit @:using(stdgo.internal.coverage.slicewriter.Slicewriter.WriteSeeker_static_extension) abstract WriteSeeker(stdgo._internal.internal.coverage.slicewriter.Slicewriter_writeseeker.WriteSeeker) from stdgo._internal.internal.coverage.slicewriter.Slicewriter_writeseeker.WriteSeeker to stdgo._internal.internal.coverage.slicewriter.Slicewriter_writeseeker.WriteSeeker {
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
    public function new(?_payload:Array<std.UInt>, ?_off:haxe.Int64) this = new stdgo._internal.internal.coverage.slicewriter.Slicewriter_writeseeker.WriteSeeker(([for (i in _payload) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>), (_off : stdgo.GoInt64));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
typedef WriteSeekerPointer = stdgo._internal.internal.coverage.slicewriter.Slicewriter_writeseekerpointer.WriteSeekerPointer;
class WriteSeeker_static_extension {
    static public function read(_sws:WriteSeeker, _p:Array<std.UInt>):stdgo.Tuple<StdTypes.Int, stdgo.Error> {
        final _sws = (_sws : stdgo.Ref<stdgo._internal.internal.coverage.slicewriter.Slicewriter_writeseeker.WriteSeeker>);
        final _p = ([for (i in _p) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return {
            final obj = stdgo._internal.internal.coverage.slicewriter.Slicewriter_writeseeker_static_extension.WriteSeeker_static_extension.read(_sws, _p);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function bytesWritten(_sws:WriteSeeker):Array<std.UInt> {
        final _sws = (_sws : stdgo.Ref<stdgo._internal.internal.coverage.slicewriter.Slicewriter_writeseeker.WriteSeeker>);
        return [for (i in stdgo._internal.internal.coverage.slicewriter.Slicewriter_writeseeker_static_extension.WriteSeeker_static_extension.bytesWritten(_sws)) i];
    }
    static public function seek(_sws:WriteSeeker, _offset:haxe.Int64, _whence:StdTypes.Int):stdgo.Tuple<haxe.Int64, stdgo.Error> {
        final _sws = (_sws : stdgo.Ref<stdgo._internal.internal.coverage.slicewriter.Slicewriter_writeseeker.WriteSeeker>);
        final _offset = (_offset : stdgo.GoInt64);
        final _whence = (_whence : stdgo.GoInt);
        return {
            final obj = stdgo._internal.internal.coverage.slicewriter.Slicewriter_writeseeker_static_extension.WriteSeeker_static_extension.seek(_sws, _offset, _whence);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function write(_sws:WriteSeeker, _p:Array<std.UInt>):stdgo.Tuple<StdTypes.Int, stdgo.Error> {
        final _sws = (_sws : stdgo.Ref<stdgo._internal.internal.coverage.slicewriter.Slicewriter_writeseeker.WriteSeeker>);
        final _p = ([for (i in _p) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return {
            final obj = stdgo._internal.internal.coverage.slicewriter.Slicewriter_writeseeker_static_extension.WriteSeeker_static_extension.write(_sws, _p);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
}
class Slicewriter {

}
