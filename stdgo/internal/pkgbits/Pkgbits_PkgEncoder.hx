package stdgo.internal.pkgbits;
@:structInit @:using(stdgo.internal.pkgbits.Pkgbits.PkgEncoder_static_extension) abstract PkgEncoder(stdgo._internal.internal.pkgbits.Pkgbits_PkgEncoder.PkgEncoder) from stdgo._internal.internal.pkgbits.Pkgbits_PkgEncoder.PkgEncoder to stdgo._internal.internal.pkgbits.Pkgbits_PkgEncoder.PkgEncoder {
    public var _elems(get, set) : haxe.ds.Vector<Array<String>>;
    function get__elems():haxe.ds.Vector<Array<String>> return haxe.ds.Vector.fromArrayCopy([for (i in this._elems) [for (i in i) i]]);
    function set__elems(v:haxe.ds.Vector<Array<String>>):haxe.ds.Vector<Array<String>> {
        this._elems = ([for (i in v) ([for (i in i) (i : stdgo.GoString)] : stdgo.Slice<stdgo.GoString>)] : stdgo.GoArray<stdgo.Slice<stdgo.GoString>>);
        return v;
    }
    public var _stringsIdx(get, set) : stdgo.GoMap<stdgo.GoString, stdgo._internal.internal.pkgbits.Pkgbits_Index.Index>;
    function get__stringsIdx():stdgo.GoMap<stdgo.GoString, stdgo._internal.internal.pkgbits.Pkgbits_Index.Index> return this._stringsIdx;
    function set__stringsIdx(v:stdgo.GoMap<stdgo.GoString, stdgo._internal.internal.pkgbits.Pkgbits_Index.Index>):stdgo.GoMap<stdgo.GoString, stdgo._internal.internal.pkgbits.Pkgbits_Index.Index> {
        this._stringsIdx = (v : stdgo.GoMap<stdgo.GoString, stdgo._internal.internal.pkgbits.Pkgbits_Index.Index>);
        return v;
    }
    public var _syncFrames(get, set) : StdTypes.Int;
    function get__syncFrames():StdTypes.Int return this._syncFrames;
    function set__syncFrames(v:StdTypes.Int):StdTypes.Int {
        this._syncFrames = (v : stdgo.GoInt);
        return v;
    }
    public function new(?_elems:haxe.ds.Vector<Array<String>>, ?_stringsIdx:stdgo.GoMap<stdgo.GoString, stdgo._internal.internal.pkgbits.Pkgbits_Index.Index>, ?_syncFrames:StdTypes.Int) this = new stdgo._internal.internal.pkgbits.Pkgbits_PkgEncoder.PkgEncoder(([for (i in _elems) ([for (i in i) (i : stdgo.GoString)] : stdgo.Slice<stdgo.GoString>)] : stdgo.GoArray<stdgo.Slice<stdgo.GoString>>), (_stringsIdx : stdgo.GoMap<stdgo.GoString, stdgo._internal.internal.pkgbits.Pkgbits_Index.Index>), (_syncFrames : stdgo.GoInt));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
