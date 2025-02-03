package stdgo.internal.xcoff;
@:structInit @:using(stdgo.internal.xcoff.Xcoff.FileHeader_static_extension) abstract FileHeader(stdgo._internal.internal.xcoff.Xcoff_FileHeader.FileHeader) from stdgo._internal.internal.xcoff.Xcoff_FileHeader.FileHeader to stdgo._internal.internal.xcoff.Xcoff_FileHeader.FileHeader {
    public var targetMachine(get, set) : std.UInt;
    function get_targetMachine():std.UInt return this.targetMachine;
    function set_targetMachine(v:std.UInt):std.UInt {
        this.targetMachine = (v : stdgo.GoUInt16);
        return v;
    }
    public function new(?targetMachine:std.UInt) this = new stdgo._internal.internal.xcoff.Xcoff_FileHeader.FileHeader((targetMachine : stdgo.GoUInt16));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
