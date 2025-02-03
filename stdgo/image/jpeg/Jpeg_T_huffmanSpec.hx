package stdgo.image.jpeg;
@:structInit @:using(stdgo.image.jpeg.Jpeg.T_huffmanSpec_static_extension) abstract T_huffmanSpec(stdgo._internal.image.jpeg.Jpeg_T_huffmanSpec.T_huffmanSpec) from stdgo._internal.image.jpeg.Jpeg_T_huffmanSpec.T_huffmanSpec to stdgo._internal.image.jpeg.Jpeg_T_huffmanSpec.T_huffmanSpec {
    public var _count(get, set) : haxe.ds.Vector<std.UInt>;
    function get__count():haxe.ds.Vector<std.UInt> return haxe.ds.Vector.fromArrayCopy([for (i in this._count) i]);
    function set__count(v:haxe.ds.Vector<std.UInt>):haxe.ds.Vector<std.UInt> {
        this._count = ([for (i in v) (i : stdgo.GoUInt8)] : stdgo.GoArray<stdgo.GoUInt8>);
        return v;
    }
    public var _value(get, set) : Array<std.UInt>;
    function get__value():Array<std.UInt> return [for (i in this._value) i];
    function set__value(v:Array<std.UInt>):Array<std.UInt> {
        this._value = ([for (i in v) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return v;
    }
    public function new(?_count:haxe.ds.Vector<std.UInt>, ?_value:Array<std.UInt>) this = new stdgo._internal.image.jpeg.Jpeg_T_huffmanSpec.T_huffmanSpec(([for (i in _count) (i : stdgo.GoUInt8)] : stdgo.GoArray<stdgo.GoUInt8>), ([for (i in _value) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
