package stdgo.internal.coverage.slicereader;
@:structInit @:using(stdgo.internal.coverage.slicereader.Slicereader.Reader_static_extension) abstract Reader(stdgo._internal.internal.coverage.slicereader.Slicereader_reader.Reader) from stdgo._internal.internal.coverage.slicereader.Slicereader_reader.Reader to stdgo._internal.internal.coverage.slicereader.Slicereader_reader.Reader {
    public var _b(get, set) : Array<std.UInt>;
    function get__b():Array<std.UInt> return [for (i in this._b) i];
    function set__b(v:Array<std.UInt>):Array<std.UInt> {
        this._b = ([for (i in v) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return v;
    }
    public var _readonly(get, set) : Bool;
    function get__readonly():Bool return this._readonly;
    function set__readonly(v:Bool):Bool {
        this._readonly = v;
        return v;
    }
    public var _off(get, set) : haxe.Int64;
    function get__off():haxe.Int64 return this._off;
    function set__off(v:haxe.Int64):haxe.Int64 {
        this._off = (v : stdgo.GoInt64);
        return v;
    }
    public function new(?_b:Array<std.UInt>, ?_readonly:Bool, ?_off:haxe.Int64) this = new stdgo._internal.internal.coverage.slicereader.Slicereader_reader.Reader(([for (i in _b) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>), _readonly, (_off : stdgo.GoInt64));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
typedef ReaderPointer = stdgo._internal.internal.coverage.slicereader.Slicereader_readerpointer.ReaderPointer;
class Reader_static_extension {
    static public function readString(_r:Reader, _len:haxe.Int64):String {
        final _r = (_r : stdgo.Ref<stdgo._internal.internal.coverage.slicereader.Slicereader_reader.Reader>);
        final _len = (_len : stdgo.GoInt64);
        return stdgo._internal.internal.coverage.slicereader.Slicereader_reader_static_extension.Reader_static_extension.readString(_r, _len);
    }
    static public function readULEB128(_r:Reader):haxe.UInt64 {
        final _r = (_r : stdgo.Ref<stdgo._internal.internal.coverage.slicereader.Slicereader_reader.Reader>);
        return stdgo._internal.internal.coverage.slicereader.Slicereader_reader_static_extension.Reader_static_extension.readULEB128(_r);
    }
    static public function readUint64(_r:Reader):haxe.UInt64 {
        final _r = (_r : stdgo.Ref<stdgo._internal.internal.coverage.slicereader.Slicereader_reader.Reader>);
        return stdgo._internal.internal.coverage.slicereader.Slicereader_reader_static_extension.Reader_static_extension.readUint64(_r);
    }
    static public function readUint32(_r:Reader):std.UInt {
        final _r = (_r : stdgo.Ref<stdgo._internal.internal.coverage.slicereader.Slicereader_reader.Reader>);
        return stdgo._internal.internal.coverage.slicereader.Slicereader_reader_static_extension.Reader_static_extension.readUint32(_r);
    }
    static public function readUint8(_r:Reader):std.UInt {
        final _r = (_r : stdgo.Ref<stdgo._internal.internal.coverage.slicereader.Slicereader_reader.Reader>);
        return stdgo._internal.internal.coverage.slicereader.Slicereader_reader_static_extension.Reader_static_extension.readUint8(_r);
    }
    static public function offset(_r:Reader):haxe.Int64 {
        final _r = (_r : stdgo.Ref<stdgo._internal.internal.coverage.slicereader.Slicereader_reader.Reader>);
        return stdgo._internal.internal.coverage.slicereader.Slicereader_reader_static_extension.Reader_static_extension.offset(_r);
    }
    static public function seek(_r:Reader, _offset:haxe.Int64, _whence:StdTypes.Int):stdgo.Tuple<haxe.Int64, stdgo.Error> {
        final _r = (_r : stdgo.Ref<stdgo._internal.internal.coverage.slicereader.Slicereader_reader.Reader>);
        final _offset = (_offset : stdgo.GoInt64);
        final _whence = (_whence : stdgo.GoInt);
        return {
            final obj = stdgo._internal.internal.coverage.slicereader.Slicereader_reader_static_extension.Reader_static_extension.seek(_r, _offset, _whence);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function read(_r:Reader, _b:Array<std.UInt>):stdgo.Tuple<StdTypes.Int, stdgo.Error> {
        final _r = (_r : stdgo.Ref<stdgo._internal.internal.coverage.slicereader.Slicereader_reader.Reader>);
        final _b = ([for (i in _b) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return {
            final obj = stdgo._internal.internal.coverage.slicereader.Slicereader_reader_static_extension.Reader_static_extension.read(_r, _b);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
}
class Slicereader {
    static public inline function newReader(_b:Array<std.UInt>, _readonly:Bool):Reader {
        final _b = ([for (i in _b) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return stdgo._internal.internal.coverage.slicereader.Slicereader_newreader.newReader(_b, _readonly);
    }
}
