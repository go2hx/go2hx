package stdgo.debug.elf;
@:structInit @:using(stdgo.debug.elf.Elf.T_intName_static_extension) abstract T_intName(stdgo._internal.debug.elf.Elf_T_intName.T_intName) from stdgo._internal.debug.elf.Elf_T_intName.T_intName to stdgo._internal.debug.elf.Elf_T_intName.T_intName {
    public var _i(get, set) : std.UInt;
    function get__i():std.UInt return this._i;
    function set__i(v:std.UInt):std.UInt {
        this._i = (v : stdgo.GoUInt32);
        return v;
    }
    public var _s(get, set) : String;
    function get__s():String return this._s;
    function set__s(v:String):String {
        this._s = (v : stdgo.GoString);
        return v;
    }
    public function new(?_i:std.UInt, ?_s:String) this = new stdgo._internal.debug.elf.Elf_T_intName.T_intName((_i : stdgo.GoUInt32), (_s : stdgo.GoString));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
