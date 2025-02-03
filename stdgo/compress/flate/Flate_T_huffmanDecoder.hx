package stdgo.compress.flate;
@:structInit @:using(stdgo.compress.flate.Flate.T_huffmanDecoder_static_extension) abstract T_huffmanDecoder(stdgo._internal.compress.flate.Flate_T_huffmanDecoder.T_huffmanDecoder) from stdgo._internal.compress.flate.Flate_T_huffmanDecoder.T_huffmanDecoder to stdgo._internal.compress.flate.Flate_T_huffmanDecoder.T_huffmanDecoder {
    public var _min(get, set) : StdTypes.Int;
    function get__min():StdTypes.Int return this._min;
    function set__min(v:StdTypes.Int):StdTypes.Int {
        this._min = (v : stdgo.GoInt);
        return v;
    }
    public var _chunks(get, set) : haxe.ds.Vector<std.UInt>;
    function get__chunks():haxe.ds.Vector<std.UInt> return haxe.ds.Vector.fromArrayCopy([for (i in this._chunks) i]);
    function set__chunks(v:haxe.ds.Vector<std.UInt>):haxe.ds.Vector<std.UInt> {
        this._chunks = ([for (i in v) (i : stdgo.GoUInt32)] : stdgo.GoArray<stdgo.GoUInt32>);
        return v;
    }
    public var _links(get, set) : Array<Array<std.UInt>>;
    function get__links():Array<Array<std.UInt>> return [for (i in this._links) [for (i in i) i]];
    function set__links(v:Array<Array<std.UInt>>):Array<Array<std.UInt>> {
        this._links = ([for (i in v) ([for (i in i) (i : stdgo.GoUInt32)] : stdgo.Slice<stdgo.GoUInt32>)] : stdgo.Slice<stdgo.Slice<stdgo.GoUInt32>>);
        return v;
    }
    public var _linkMask(get, set) : std.UInt;
    function get__linkMask():std.UInt return this._linkMask;
    function set__linkMask(v:std.UInt):std.UInt {
        this._linkMask = (v : stdgo.GoUInt32);
        return v;
    }
    public function new(?_min:StdTypes.Int, ?_chunks:haxe.ds.Vector<std.UInt>, ?_links:Array<Array<std.UInt>>, ?_linkMask:std.UInt) this = new stdgo._internal.compress.flate.Flate_T_huffmanDecoder.T_huffmanDecoder((_min : stdgo.GoInt), ([for (i in _chunks) (i : stdgo.GoUInt32)] : stdgo.GoArray<stdgo.GoUInt32>), ([for (i in _links) ([for (i in i) (i : stdgo.GoUInt32)] : stdgo.Slice<stdgo.GoUInt32>)] : stdgo.Slice<stdgo.Slice<stdgo.GoUInt32>>), (_linkMask : stdgo.GoUInt32));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
