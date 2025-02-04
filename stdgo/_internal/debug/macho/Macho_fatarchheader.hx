package stdgo._internal.debug.macho;
@:structInit @:using(stdgo._internal.debug.macho.Macho_fatarchheader_static_extension.FatArchHeader_static_extension) class FatArchHeader {
    public var cpu : stdgo._internal.debug.macho.Macho_cpu.Cpu = ((0 : stdgo.GoUInt32) : stdgo._internal.debug.macho.Macho_cpu.Cpu);
    public var subCpu : stdgo.GoUInt32 = 0;
    public var offset : stdgo.GoUInt32 = 0;
    public var size : stdgo.GoUInt32 = 0;
    public var align : stdgo.GoUInt32 = 0;
    public function new(?cpu:stdgo._internal.debug.macho.Macho_cpu.Cpu, ?subCpu:stdgo.GoUInt32, ?offset:stdgo.GoUInt32, ?size:stdgo.GoUInt32, ?align:stdgo.GoUInt32) {
        if (cpu != null) this.cpu = cpu;
        if (subCpu != null) this.subCpu = subCpu;
        if (offset != null) this.offset = offset;
        if (size != null) this.size = size;
        if (align != null) this.align = align;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new FatArchHeader(cpu, subCpu, offset, size, align);
    }
}
