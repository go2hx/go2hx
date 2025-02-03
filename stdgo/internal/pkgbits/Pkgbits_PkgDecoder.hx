package stdgo.internal.pkgbits;
@:structInit @:using(stdgo.internal.pkgbits.Pkgbits.PkgDecoder_static_extension) abstract PkgDecoder(stdgo._internal.internal.pkgbits.Pkgbits_PkgDecoder.PkgDecoder) from stdgo._internal.internal.pkgbits.Pkgbits_PkgDecoder.PkgDecoder to stdgo._internal.internal.pkgbits.Pkgbits_PkgDecoder.PkgDecoder {
    public var _version(get, set) : std.UInt;
    function get__version():std.UInt return this._version;
    function set__version(v:std.UInt):std.UInt {
        this._version = (v : stdgo.GoUInt32);
        return v;
    }
    public var _sync(get, set) : Bool;
    function get__sync():Bool return this._sync;
    function set__sync(v:Bool):Bool {
        this._sync = v;
        return v;
    }
    public var _pkgPath(get, set) : String;
    function get__pkgPath():String return this._pkgPath;
    function set__pkgPath(v:String):String {
        this._pkgPath = (v : stdgo.GoString);
        return v;
    }
    public var _elemData(get, set) : String;
    function get__elemData():String return this._elemData;
    function set__elemData(v:String):String {
        this._elemData = (v : stdgo.GoString);
        return v;
    }
    public var _elemEnds(get, set) : Array<std.UInt>;
    function get__elemEnds():Array<std.UInt> return [for (i in this._elemEnds) i];
    function set__elemEnds(v:Array<std.UInt>):Array<std.UInt> {
        this._elemEnds = ([for (i in v) (i : stdgo.GoUInt32)] : stdgo.Slice<stdgo.GoUInt32>);
        return v;
    }
    public var _elemEndsEnds(get, set) : haxe.ds.Vector<std.UInt>;
    function get__elemEndsEnds():haxe.ds.Vector<std.UInt> return haxe.ds.Vector.fromArrayCopy([for (i in this._elemEndsEnds) i]);
    function set__elemEndsEnds(v:haxe.ds.Vector<std.UInt>):haxe.ds.Vector<std.UInt> {
        this._elemEndsEnds = ([for (i in v) (i : stdgo.GoUInt32)] : stdgo.GoArray<stdgo.GoUInt32>);
        return v;
    }
    public var _scratchRelocEnt(get, set) : Array<RelocEnt>;
    function get__scratchRelocEnt():Array<RelocEnt> return [for (i in this._scratchRelocEnt) i];
    function set__scratchRelocEnt(v:Array<RelocEnt>):Array<RelocEnt> {
        this._scratchRelocEnt = ([for (i in v) i] : stdgo.Slice<stdgo._internal.internal.pkgbits.Pkgbits_RelocEnt.RelocEnt>);
        return v;
    }
    public function new(?_version:std.UInt, ?_sync:Bool, ?_pkgPath:String, ?_elemData:String, ?_elemEnds:Array<std.UInt>, ?_elemEndsEnds:haxe.ds.Vector<std.UInt>, ?_scratchRelocEnt:Array<RelocEnt>) this = new stdgo._internal.internal.pkgbits.Pkgbits_PkgDecoder.PkgDecoder((_version : stdgo.GoUInt32), _sync, (_pkgPath : stdgo.GoString), (_elemData : stdgo.GoString), ([for (i in _elemEnds) (i : stdgo.GoUInt32)] : stdgo.Slice<stdgo.GoUInt32>), ([for (i in _elemEndsEnds) (i : stdgo.GoUInt32)] : stdgo.GoArray<stdgo.GoUInt32>), ([for (i in _scratchRelocEnt) i] : stdgo.Slice<stdgo._internal.internal.pkgbits.Pkgbits_RelocEnt.RelocEnt>));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
