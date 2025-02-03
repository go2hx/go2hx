package stdgo.mime.multipart;
@:structInit @:using(stdgo.mime.multipart.Multipart.Reader_static_extension) abstract Reader(stdgo._internal.mime.multipart.Multipart_Reader.Reader) from stdgo._internal.mime.multipart.Multipart_Reader.Reader to stdgo._internal.mime.multipart.Multipart_Reader.Reader {
    public var _bufReader(get, set) : stdgo._internal.bufio.Bufio_Reader.Reader;
    function get__bufReader():stdgo._internal.bufio.Bufio_Reader.Reader return this._bufReader;
    function set__bufReader(v:stdgo._internal.bufio.Bufio_Reader.Reader):stdgo._internal.bufio.Bufio_Reader.Reader {
        this._bufReader = (v : stdgo.Ref<stdgo._internal.bufio.Bufio_Reader.Reader>);
        return v;
    }
    public var _tempDir(get, set) : String;
    function get__tempDir():String return this._tempDir;
    function set__tempDir(v:String):String {
        this._tempDir = (v : stdgo.GoString);
        return v;
    }
    public var _currentPart(get, set) : Part;
    function get__currentPart():Part return this._currentPart;
    function set__currentPart(v:Part):Part {
        this._currentPart = (v : stdgo.Ref<stdgo._internal.mime.multipart.Multipart_Part.Part>);
        return v;
    }
    public var _partsRead(get, set) : StdTypes.Int;
    function get__partsRead():StdTypes.Int return this._partsRead;
    function set__partsRead(v:StdTypes.Int):StdTypes.Int {
        this._partsRead = (v : stdgo.GoInt);
        return v;
    }
    public var _nl(get, set) : Array<std.UInt>;
    function get__nl():Array<std.UInt> return [for (i in this._nl) i];
    function set__nl(v:Array<std.UInt>):Array<std.UInt> {
        this._nl = ([for (i in v) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return v;
    }
    public var _nlDashBoundary(get, set) : Array<std.UInt>;
    function get__nlDashBoundary():Array<std.UInt> return [for (i in this._nlDashBoundary) i];
    function set__nlDashBoundary(v:Array<std.UInt>):Array<std.UInt> {
        this._nlDashBoundary = ([for (i in v) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return v;
    }
    public var _dashBoundaryDash(get, set) : Array<std.UInt>;
    function get__dashBoundaryDash():Array<std.UInt> return [for (i in this._dashBoundaryDash) i];
    function set__dashBoundaryDash(v:Array<std.UInt>):Array<std.UInt> {
        this._dashBoundaryDash = ([for (i in v) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return v;
    }
    public var _dashBoundary(get, set) : Array<std.UInt>;
    function get__dashBoundary():Array<std.UInt> return [for (i in this._dashBoundary) i];
    function set__dashBoundary(v:Array<std.UInt>):Array<std.UInt> {
        this._dashBoundary = ([for (i in v) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return v;
    }
    public function new(?_bufReader:stdgo._internal.bufio.Bufio_Reader.Reader, ?_tempDir:String, ?_currentPart:Part, ?_partsRead:StdTypes.Int, ?_nl:Array<std.UInt>, ?_nlDashBoundary:Array<std.UInt>, ?_dashBoundaryDash:Array<std.UInt>, ?_dashBoundary:Array<std.UInt>) this = new stdgo._internal.mime.multipart.Multipart_Reader.Reader((_bufReader : stdgo.Ref<stdgo._internal.bufio.Bufio_Reader.Reader>), (_tempDir : stdgo.GoString), (_currentPart : stdgo.Ref<stdgo._internal.mime.multipart.Multipart_Part.Part>), (_partsRead : stdgo.GoInt), ([for (i in _nl) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>), ([for (i in _nlDashBoundary) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>), ([for (i in _dashBoundaryDash) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>), ([for (i in _dashBoundary) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
