package stdgo.strings;
@:structInit @:using(stdgo.strings.Strings.Builder_static_extension) abstract Builder(stdgo._internal.strings.Strings_Builder.Builder) from stdgo._internal.strings.Strings_Builder.Builder to stdgo._internal.strings.Strings_Builder.Builder {
    public var _addr(get, set) : Builder;
    function get__addr():Builder return this._addr;
    function set__addr(v:Builder):Builder {
        this._addr = (v : stdgo.Ref<stdgo._internal.strings.Strings_Builder.Builder>);
        return v;
    }
    public var _buf(get, set) : Array<std.UInt>;
    function get__buf():Array<std.UInt> return [for (i in this._buf) i];
    function set__buf(v:Array<std.UInt>):Array<std.UInt> {
        this._buf = ([for (i in v) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return v;
    }
    public function new(?_addr:Builder, ?_buf:Array<std.UInt>) this = new stdgo._internal.strings.Strings_Builder.Builder((_addr : stdgo.Ref<stdgo._internal.strings.Strings_Builder.Builder>), ([for (i in _buf) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
