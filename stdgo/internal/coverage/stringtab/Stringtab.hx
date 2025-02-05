package stdgo.internal.coverage.stringtab;
@:structInit @:using(stdgo.internal.coverage.stringtab.Stringtab.Writer_static_extension) abstract Writer(stdgo._internal.internal.coverage.stringtab.Stringtab_Writer.Writer) from stdgo._internal.internal.coverage.stringtab.Stringtab_Writer.Writer to stdgo._internal.internal.coverage.stringtab.Stringtab_Writer.Writer {
    public var _stab(get, set) : stdgo.GoMap<stdgo.GoString, stdgo.GoUInt32>;
    function get__stab():stdgo.GoMap<stdgo.GoString, stdgo.GoUInt32> return this._stab;
    function set__stab(v:stdgo.GoMap<stdgo.GoString, stdgo.GoUInt32>):stdgo.GoMap<stdgo.GoString, stdgo.GoUInt32> {
        this._stab = (v : stdgo.GoMap<stdgo.GoString, stdgo.GoUInt32>);
        return v;
    }
    public var _strs(get, set) : Array<String>;
    function get__strs():Array<String> return [for (i in this._strs) i];
    function set__strs(v:Array<String>):Array<String> {
        this._strs = ([for (i in v) (i : stdgo.GoString)] : stdgo.Slice<stdgo.GoString>);
        return v;
    }
    public var _tmp(get, set) : Array<std.UInt>;
    function get__tmp():Array<std.UInt> return [for (i in this._tmp) i];
    function set__tmp(v:Array<std.UInt>):Array<std.UInt> {
        this._tmp = ([for (i in v) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return v;
    }
    public var _frozen(get, set) : Bool;
    function get__frozen():Bool return this._frozen;
    function set__frozen(v:Bool):Bool {
        this._frozen = v;
        return v;
    }
    public function new(?_stab:stdgo.GoMap<stdgo.GoString, stdgo.GoUInt32>, ?_strs:Array<String>, ?_tmp:Array<std.UInt>, ?_frozen:Bool) this = new stdgo._internal.internal.coverage.stringtab.Stringtab_Writer.Writer((_stab : stdgo.GoMap<stdgo.GoString, stdgo.GoUInt32>), ([for (i in _strs) (i : stdgo.GoString)] : stdgo.Slice<stdgo.GoString>), ([for (i in _tmp) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>), _frozen);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.internal.coverage.stringtab.Stringtab.Reader_static_extension) abstract Reader(stdgo._internal.internal.coverage.stringtab.Stringtab_Reader.Reader) from stdgo._internal.internal.coverage.stringtab.Stringtab_Reader.Reader to stdgo._internal.internal.coverage.stringtab.Stringtab_Reader.Reader {
    public var _r(get, set) : stdgo._internal.internal.coverage.slicereader.Slicereader_reader.Reader;
    function get__r():stdgo._internal.internal.coverage.slicereader.Slicereader_reader.Reader return this._r;
    function set__r(v:stdgo._internal.internal.coverage.slicereader.Slicereader_reader.Reader):stdgo._internal.internal.coverage.slicereader.Slicereader_reader.Reader {
        this._r = (v : stdgo.Ref<stdgo._internal.internal.coverage.slicereader.Slicereader_reader.Reader>);
        return v;
    }
    public var _strs(get, set) : Array<String>;
    function get__strs():Array<String> return [for (i in this._strs) i];
    function set__strs(v:Array<String>):Array<String> {
        this._strs = ([for (i in v) (i : stdgo.GoString)] : stdgo.Slice<stdgo.GoString>);
        return v;
    }
    public function new(?_r:stdgo._internal.internal.coverage.slicereader.Slicereader_reader.Reader, ?_strs:Array<String>) this = new stdgo._internal.internal.coverage.stringtab.Stringtab_Reader.Reader((_r : stdgo.Ref<stdgo._internal.internal.coverage.slicereader.Slicereader_reader.Reader>), ([for (i in _strs) (i : stdgo.GoString)] : stdgo.Slice<stdgo.GoString>));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
typedef WriterPointer = stdgo._internal.internal.coverage.stringtab.Stringtab_WriterPointer.WriterPointer;
class Writer_static_extension {
    static public function freeze(_stw:Writer):Void {
        final _stw = (_stw : stdgo.Ref<stdgo._internal.internal.coverage.stringtab.Stringtab_writer.Writer>);
        stdgo._internal.internal.coverage.stringtab.Stringtab_Writer_static_extension.Writer_static_extension.freeze(_stw);
    }
    static public function write(_stw:Writer, _w:stdgo._internal.io.Io_writer.Writer):stdgo.Error {
        final _stw = (_stw : stdgo.Ref<stdgo._internal.internal.coverage.stringtab.Stringtab_writer.Writer>);
        return stdgo._internal.internal.coverage.stringtab.Stringtab_Writer_static_extension.Writer_static_extension.write(_stw, _w);
    }
    static public function size(_stw:Writer):std.UInt {
        final _stw = (_stw : stdgo.Ref<stdgo._internal.internal.coverage.stringtab.Stringtab_writer.Writer>);
        return stdgo._internal.internal.coverage.stringtab.Stringtab_Writer_static_extension.Writer_static_extension.size(_stw);
    }
    static public function lookup(_stw:Writer, _s:String):std.UInt {
        final _stw = (_stw : stdgo.Ref<stdgo._internal.internal.coverage.stringtab.Stringtab_writer.Writer>);
        final _s = (_s : stdgo.GoString);
        return stdgo._internal.internal.coverage.stringtab.Stringtab_Writer_static_extension.Writer_static_extension.lookup(_stw, _s);
    }
    static public function nentries(_stw:Writer):std.UInt {
        final _stw = (_stw : stdgo.Ref<stdgo._internal.internal.coverage.stringtab.Stringtab_writer.Writer>);
        return stdgo._internal.internal.coverage.stringtab.Stringtab_Writer_static_extension.Writer_static_extension.nentries(_stw);
    }
    static public function initWriter(_stw:Writer):Void {
        final _stw = (_stw : stdgo.Ref<stdgo._internal.internal.coverage.stringtab.Stringtab_writer.Writer>);
        stdgo._internal.internal.coverage.stringtab.Stringtab_Writer_static_extension.Writer_static_extension.initWriter(_stw);
    }
}
typedef ReaderPointer = stdgo._internal.internal.coverage.stringtab.Stringtab_ReaderPointer.ReaderPointer;
class Reader_static_extension {
    static public function get(_str:Reader, _idx:std.UInt):String {
        final _str = (_str : stdgo.Ref<stdgo._internal.internal.coverage.stringtab.Stringtab_reader.Reader>);
        final _idx = (_idx : stdgo.GoUInt32);
        return stdgo._internal.internal.coverage.stringtab.Stringtab_Reader_static_extension.Reader_static_extension.get(_str, _idx);
    }
    static public function entries(_str:Reader):StdTypes.Int {
        final _str = (_str : stdgo.Ref<stdgo._internal.internal.coverage.stringtab.Stringtab_reader.Reader>);
        return stdgo._internal.internal.coverage.stringtab.Stringtab_Reader_static_extension.Reader_static_extension.entries(_str);
    }
    static public function read(_str:Reader):Void {
        final _str = (_str : stdgo.Ref<stdgo._internal.internal.coverage.stringtab.Stringtab_reader.Reader>);
        stdgo._internal.internal.coverage.stringtab.Stringtab_Reader_static_extension.Reader_static_extension.read(_str);
    }
}
class Stringtab {
    /**
        * NewReader creates a stringtab.Reader to read the contents
        * of a string table from 'r'.
    **/
    static public inline function newReader(_r:stdgo._internal.internal.coverage.slicereader.Slicereader_reader.Reader):Reader {
        final _r = (_r : stdgo.Ref<stdgo._internal.internal.coverage.slicereader.Slicereader_reader.Reader>);
        return stdgo._internal.internal.coverage.stringtab.Stringtab_newReader.newReader(_r);
    }
}
