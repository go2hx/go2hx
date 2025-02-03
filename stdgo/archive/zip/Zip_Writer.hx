package stdgo.archive.zip;
@:structInit @:using(stdgo.archive.zip.Zip.Writer_static_extension) abstract Writer(stdgo._internal.archive.zip.Zip_Writer.Writer) from stdgo._internal.archive.zip.Zip_Writer.Writer to stdgo._internal.archive.zip.Zip_Writer.Writer {
    public var _cw(get, set) : T_countWriter;
    function get__cw():T_countWriter return this._cw;
    function set__cw(v:T_countWriter):T_countWriter {
        this._cw = (v : stdgo.Ref<stdgo._internal.archive.zip.Zip_T_countWriter.T_countWriter>);
        return v;
    }
    public var _dir(get, set) : Array<T_header>;
    function get__dir():Array<T_header> return [for (i in this._dir) i];
    function set__dir(v:Array<T_header>):Array<T_header> {
        this._dir = ([for (i in v) (i : stdgo.Ref<stdgo._internal.archive.zip.Zip_T_header.T_header>)] : stdgo.Slice<stdgo.Ref<stdgo._internal.archive.zip.Zip_T_header.T_header>>);
        return v;
    }
    public var _last(get, set) : T_fileWriter;
    function get__last():T_fileWriter return this._last;
    function set__last(v:T_fileWriter):T_fileWriter {
        this._last = (v : stdgo.Ref<stdgo._internal.archive.zip.Zip_T_fileWriter.T_fileWriter>);
        return v;
    }
    public var _closed(get, set) : Bool;
    function get__closed():Bool return this._closed;
    function set__closed(v:Bool):Bool {
        this._closed = v;
        return v;
    }
    public var _compressors(get, set) : stdgo.GoMap<stdgo.GoUInt16, stdgo._internal.archive.zip.Zip_Compressor.Compressor>;
    function get__compressors():stdgo.GoMap<stdgo.GoUInt16, stdgo._internal.archive.zip.Zip_Compressor.Compressor> return this._compressors;
    function set__compressors(v:stdgo.GoMap<stdgo.GoUInt16, stdgo._internal.archive.zip.Zip_Compressor.Compressor>):stdgo.GoMap<stdgo.GoUInt16, stdgo._internal.archive.zip.Zip_Compressor.Compressor> {
        this._compressors = (v : stdgo.GoMap<stdgo.GoUInt16, stdgo._internal.archive.zip.Zip_Compressor.Compressor>);
        return v;
    }
    public var _comment(get, set) : String;
    function get__comment():String return this._comment;
    function set__comment(v:String):String {
        this._comment = (v : stdgo.GoString);
        return v;
    }
    public var _testHookCloseSizeOffset(get, set) : (stdgo.GoUInt64, stdgo.GoUInt64) -> Void;
    function get__testHookCloseSizeOffset():(stdgo.GoUInt64, stdgo.GoUInt64) -> Void return (_0, _1) -> this._testHookCloseSizeOffset(_0, _1);
    function set__testHookCloseSizeOffset(v:(stdgo.GoUInt64, stdgo.GoUInt64) -> Void):(stdgo.GoUInt64, stdgo.GoUInt64) -> Void {
        this._testHookCloseSizeOffset = v;
        return v;
    }
    public function new(?_cw:T_countWriter, ?_dir:Array<T_header>, ?_last:T_fileWriter, ?_closed:Bool, ?_compressors:stdgo.GoMap<stdgo.GoUInt16, stdgo._internal.archive.zip.Zip_Compressor.Compressor>, ?_comment:String, ?_testHookCloseSizeOffset:(stdgo.GoUInt64, stdgo.GoUInt64) -> Void) this = new stdgo._internal.archive.zip.Zip_Writer.Writer((_cw : stdgo.Ref<stdgo._internal.archive.zip.Zip_T_countWriter.T_countWriter>), ([for (i in _dir) (i : stdgo.Ref<stdgo._internal.archive.zip.Zip_T_header.T_header>)] : stdgo.Slice<stdgo.Ref<stdgo._internal.archive.zip.Zip_T_header.T_header>>), (_last : stdgo.Ref<stdgo._internal.archive.zip.Zip_T_fileWriter.T_fileWriter>), _closed, (_compressors : stdgo.GoMap<stdgo.GoUInt16, stdgo._internal.archive.zip.Zip_Compressor.Compressor>), (_comment : stdgo.GoString), _testHookCloseSizeOffset);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
