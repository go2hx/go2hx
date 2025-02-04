package stdgo._internal.debug.macho;
@:structInit @:using(stdgo._internal.debug.macho.Macho_nlist32_static_extension.Nlist32_static_extension) class Nlist32 {
    public var name : stdgo.GoUInt32 = 0;
    public var type : stdgo.GoUInt8 = 0;
    public var sect : stdgo.GoUInt8 = 0;
    public var desc : stdgo.GoUInt16 = 0;
    public var value : stdgo.GoUInt32 = 0;
    public function new(?name:stdgo.GoUInt32, ?type:stdgo.GoUInt8, ?sect:stdgo.GoUInt8, ?desc:stdgo.GoUInt16, ?value:stdgo.GoUInt32) {
        if (name != null) this.name = name;
        if (type != null) this.type = type;
        if (sect != null) this.sect = sect;
        if (desc != null) this.desc = desc;
        if (value != null) this.value = value;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new Nlist32(name, type, sect, desc, value);
    }
}
