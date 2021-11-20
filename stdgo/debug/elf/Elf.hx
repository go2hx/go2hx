package stdgo.debug.elf;
import stdgo.StdGoTypes;
import stdgo.Error;
import stdgo.Go;
import stdgo.GoString;
import stdgo.Pointer;
import stdgo.Slice;
import stdgo.GoArray;
import stdgo.GoMap;
import stdgo.Chan;
@:named class Version {
    public function goString():GoString {
        var _i = this.__copy__();
        return _stringName(_i.__t__, _versionStrings, true);
    }
    public function toString():GoString {
        var _i = this.__copy__();
        return _stringName(_i.__t__, _versionStrings, false);
    }
    public var __t__ : GoUInt8;
    public function new(?t:GoUInt8) {
        __t__ = t == null ? 0 : t;
    }
    public function __underlying__():AnyInterface return Go.toInterface(this);
    public function __copy__() return new Version(__t__);
}
@:named class Class_ {
    public function goString():GoString {
        var _i = this.__copy__();
        return _stringName(_i.__t__, _classStrings, true);
    }
    public function toString():GoString {
        var _i = this.__copy__();
        return _stringName(_i.__t__, _classStrings, false);
    }
    public var __t__ : GoUInt8;
    public function new(?t:GoUInt8) {
        __t__ = t == null ? 0 : t;
    }
    public function __underlying__():AnyInterface return Go.toInterface(this);
    public function __copy__() return new Class_(__t__);
}
@:named class Data {
    public function goString():GoString {
        var _i = this.__copy__();
        return _stringName(_i.__t__, _dataStrings, true);
    }
    public function toString():GoString {
        var _i = this.__copy__();
        return _stringName(_i.__t__, _dataStrings, false);
    }
    public var __t__ : GoUInt8;
    public function new(?t:GoUInt8) {
        __t__ = t == null ? 0 : t;
    }
    public function __underlying__():AnyInterface return Go.toInterface(this);
    public function __copy__() return new Data(__t__);
}
@:named class OSABI {
    public function goString():GoString {
        var _i = this.__copy__();
        return _stringName(_i.__t__, _osabiStrings, true);
    }
    public function toString():GoString {
        var _i = this.__copy__();
        return _stringName(_i.__t__, _osabiStrings, false);
    }
    public var __t__ : GoUInt8;
    public function new(?t:GoUInt8) {
        __t__ = t == null ? 0 : t;
    }
    public function __underlying__():AnyInterface return Go.toInterface(this);
    public function __copy__() return new OSABI(__t__);
}
@:named class Type {
    public function goString():GoString {
        var _i = this.__copy__();
        return _stringName(_i.__t__, _typeStrings, true);
    }
    public function toString():GoString {
        var _i = this.__copy__();
        return _stringName(_i.__t__, _typeStrings, false);
    }
    public var __t__ : GoUInt16;
    public function new(?t:GoUInt16) {
        __t__ = t == null ? 0 : t;
    }
    public function __underlying__():AnyInterface return Go.toInterface(this);
    public function __copy__() return new Type(__t__);
}
@:named class Machine {
    public function goString():GoString {
        var _i = this.__copy__();
        return _stringName(_i.__t__, _machineStrings, true);
    }
    public function toString():GoString {
        var _i = this.__copy__();
        return _stringName(_i.__t__, _machineStrings, false);
    }
    public var __t__ : GoUInt16;
    public function new(?t:GoUInt16) {
        __t__ = t == null ? 0 : t;
    }
    public function __underlying__():AnyInterface return Go.toInterface(this);
    public function __copy__() return new Machine(__t__);
}
@:named class SectionIndex {
    public function goString():GoString {
        var _i = this.__copy__();
        return _stringName(_i.__t__, _shnStrings, true);
    }
    public function toString():GoString {
        var _i = this.__copy__();
        return _stringName(_i.__t__, _shnStrings, false);
    }
    public var __t__ : GoInt;
    public function new(?t:GoInt) {
        __t__ = t == null ? 0 : t;
    }
    public function __underlying__():AnyInterface return Go.toInterface(this);
    public function __copy__() return new SectionIndex(__t__);
}
@:named class SectionType {
    public function goString():GoString {
        var _i = this.__copy__();
        return _stringName(_i.__t__, _shtStrings, true);
    }
    public function toString():GoString {
        var _i = this.__copy__();
        return _stringName(_i.__t__, _shtStrings, false);
    }
    public var __t__ : GoUInt32;
    public function new(?t:GoUInt32) {
        __t__ = t == null ? 0 : t;
    }
    public function __underlying__():AnyInterface return Go.toInterface(this);
    public function __copy__() return new SectionType(__t__);
}
@:named class SectionFlag {
    public function goString():GoString {
        var _i = this.__copy__();
        return _flagName(_i.__t__, _shfStrings, true);
    }
    public function toString():GoString {
        var _i = this.__copy__();
        return _flagName(_i.__t__, _shfStrings, false);
    }
    public var __t__ : GoUInt32;
    public function new(?t:GoUInt32) {
        __t__ = t == null ? 0 : t;
    }
    public function __underlying__():AnyInterface return Go.toInterface(this);
    public function __copy__() return new SectionFlag(__t__);
}
@:named class CompressionType {
    public function goString():GoString {
        var _i = this.__copy__();
        return _stringName(_i.__t__, _compressionStrings, true);
    }
    public function toString():GoString {
        var _i = this.__copy__();
        return _stringName(_i.__t__, _compressionStrings, false);
    }
    public var __t__ : GoInt;
    public function new(?t:GoInt) {
        __t__ = t == null ? 0 : t;
    }
    public function __underlying__():AnyInterface return Go.toInterface(this);
    public function __copy__() return new CompressionType(__t__);
}
@:named class ProgType {
    public function goString():GoString {
        var _i = this.__copy__();
        return _stringName(_i.__t__, _ptStrings, true);
    }
    public function toString():GoString {
        var _i = this.__copy__();
        return _stringName(_i.__t__, _ptStrings, false);
    }
    public var __t__ : GoInt;
    public function new(?t:GoInt) {
        __t__ = t == null ? 0 : t;
    }
    public function __underlying__():AnyInterface return Go.toInterface(this);
    public function __copy__() return new ProgType(__t__);
}
@:named class ProgFlag {
    public function goString():GoString {
        var _i = this.__copy__();
        return _flagName(_i.__t__, _pfStrings, true);
    }
    public function toString():GoString {
        var _i = this.__copy__();
        return _flagName(_i.__t__, _pfStrings, false);
    }
    public var __t__ : GoUInt32;
    public function new(?t:GoUInt32) {
        __t__ = t == null ? 0 : t;
    }
    public function __underlying__():AnyInterface return Go.toInterface(this);
    public function __copy__() return new ProgFlag(__t__);
}
@:named class DynTag {
    public function goString():GoString {
        var _i = this.__copy__();
        return _stringName(_i.__t__, _dtStrings, true);
    }
    public function toString():GoString {
        var _i = this.__copy__();
        return _stringName(_i.__t__, _dtStrings, false);
    }
    public var __t__ : GoInt;
    public function new(?t:GoInt) {
        __t__ = t == null ? 0 : t;
    }
    public function __underlying__():AnyInterface return Go.toInterface(this);
    public function __copy__() return new DynTag(__t__);
}
@:named class DynFlag {
    public function goString():GoString {
        var _i = this.__copy__();
        return _flagName(_i.__t__, _dflagStrings, true);
    }
    public function toString():GoString {
        var _i = this.__copy__();
        return _flagName(_i.__t__, _dflagStrings, false);
    }
    public var __t__ : GoInt;
    public function new(?t:GoInt) {
        __t__ = t == null ? 0 : t;
    }
    public function __underlying__():AnyInterface return Go.toInterface(this);
    public function __copy__() return new DynFlag(__t__);
}
@:named class NType {
    public function goString():GoString {
        var _i = this.__copy__();
        return _stringName(_i.__t__, _ntypeStrings, true);
    }
    public function toString():GoString {
        var _i = this.__copy__();
        return _stringName(_i.__t__, _ntypeStrings, false);
    }
    public var __t__ : GoInt;
    public function new(?t:GoInt) {
        __t__ = t == null ? 0 : t;
    }
    public function __underlying__():AnyInterface return Go.toInterface(this);
    public function __copy__() return new NType(__t__);
}
@:named class SymBind {
    public function goString():GoString {
        var _i = this.__copy__();
        return _stringName(_i.__t__, _stbStrings, true);
    }
    public function toString():GoString {
        var _i = this.__copy__();
        return _stringName(_i.__t__, _stbStrings, false);
    }
    public var __t__ : GoInt;
    public function new(?t:GoInt) {
        __t__ = t == null ? 0 : t;
    }
    public function __underlying__():AnyInterface return Go.toInterface(this);
    public function __copy__() return new SymBind(__t__);
}
@:named class SymType {
    public function goString():GoString {
        var _i = this.__copy__();
        return _stringName(_i.__t__, _sttStrings, true);
    }
    public function toString():GoString {
        var _i = this.__copy__();
        return _stringName(_i.__t__, _sttStrings, false);
    }
    public var __t__ : GoInt;
    public function new(?t:GoInt) {
        __t__ = t == null ? 0 : t;
    }
    public function __underlying__():AnyInterface return Go.toInterface(this);
    public function __copy__() return new SymType(__t__);
}
@:named class SymVis {
    public function goString():GoString {
        var _i = this.__copy__();
        return _stringName(_i.__t__, _stvStrings, true);
    }
    public function toString():GoString {
        var _i = this.__copy__();
        return _stringName(_i.__t__, _stvStrings, false);
    }
    public var __t__ : GoInt;
    public function new(?t:GoInt) {
        __t__ = t == null ? 0 : t;
    }
    public function __underlying__():AnyInterface return Go.toInterface(this);
    public function __copy__() return new SymVis(__t__);
}
@:named class R_X86_64 {
    public function goString():GoString {
        var _i = this.__copy__();
        return _stringName(_i.__t__, _rx86_64Strings, true);
    }
    public function toString():GoString {
        var _i = this.__copy__();
        return _stringName(_i.__t__, _rx86_64Strings, false);
    }
    public var __t__ : GoInt;
    public function new(?t:GoInt) {
        __t__ = t == null ? 0 : t;
    }
    public function __underlying__():AnyInterface return Go.toInterface(this);
    public function __copy__() return new R_X86_64(__t__);
}
@:named class R_AARCH64 {
    public function goString():GoString {
        var _i = this.__copy__();
        return _stringName(_i.__t__, _raarch64Strings, true);
    }
    public function toString():GoString {
        var _i = this.__copy__();
        return _stringName(_i.__t__, _raarch64Strings, false);
    }
    public var __t__ : GoInt;
    public function new(?t:GoInt) {
        __t__ = t == null ? 0 : t;
    }
    public function __underlying__():AnyInterface return Go.toInterface(this);
    public function __copy__() return new R_AARCH64(__t__);
}
@:named class R_ALPHA {
    public function goString():GoString {
        var _i = this.__copy__();
        return _stringName(_i.__t__, _ralphaStrings, true);
    }
    public function toString():GoString {
        var _i = this.__copy__();
        return _stringName(_i.__t__, _ralphaStrings, false);
    }
    public var __t__ : GoInt;
    public function new(?t:GoInt) {
        __t__ = t == null ? 0 : t;
    }
    public function __underlying__():AnyInterface return Go.toInterface(this);
    public function __copy__() return new R_ALPHA(__t__);
}
@:named class R_ARM {
    public function goString():GoString {
        var _i = this.__copy__();
        return _stringName(_i.__t__, _rarmStrings, true);
    }
    public function toString():GoString {
        var _i = this.__copy__();
        return _stringName(_i.__t__, _rarmStrings, false);
    }
    public var __t__ : GoInt;
    public function new(?t:GoInt) {
        __t__ = t == null ? 0 : t;
    }
    public function __underlying__():AnyInterface return Go.toInterface(this);
    public function __copy__() return new R_ARM(__t__);
}
@:named class R_386 {
    public function goString():GoString {
        var _i = this.__copy__();
        return _stringName(_i.__t__, _r386Strings, true);
    }
    public function toString():GoString {
        var _i = this.__copy__();
        return _stringName(_i.__t__, _r386Strings, false);
    }
    public var __t__ : GoInt;
    public function new(?t:GoInt) {
        __t__ = t == null ? 0 : t;
    }
    public function __underlying__():AnyInterface return Go.toInterface(this);
    public function __copy__() return new R_386(__t__);
}
@:named class R_MIPS {
    public function goString():GoString {
        var _i = this.__copy__();
        return _stringName(_i.__t__, _rmipsStrings, true);
    }
    public function toString():GoString {
        var _i = this.__copy__();
        return _stringName(_i.__t__, _rmipsStrings, false);
    }
    public var __t__ : GoInt;
    public function new(?t:GoInt) {
        __t__ = t == null ? 0 : t;
    }
    public function __underlying__():AnyInterface return Go.toInterface(this);
    public function __copy__() return new R_MIPS(__t__);
}
@:named class R_PPC {
    public function goString():GoString {
        var _i = this.__copy__();
        return _stringName(_i.__t__, _rppcStrings, true);
    }
    public function toString():GoString {
        var _i = this.__copy__();
        return _stringName(_i.__t__, _rppcStrings, false);
    }
    public var __t__ : GoInt;
    public function new(?t:GoInt) {
        __t__ = t == null ? 0 : t;
    }
    public function __underlying__():AnyInterface return Go.toInterface(this);
    public function __copy__() return new R_PPC(__t__);
}
@:named class R_PPC64 {
    public function goString():GoString {
        var _i = this.__copy__();
        return _stringName(_i.__t__, _rppc64Strings, true);
    }
    public function toString():GoString {
        var _i = this.__copy__();
        return _stringName(_i.__t__, _rppc64Strings, false);
    }
    public var __t__ : GoInt;
    public function new(?t:GoInt) {
        __t__ = t == null ? 0 : t;
    }
    public function __underlying__():AnyInterface return Go.toInterface(this);
    public function __copy__() return new R_PPC64(__t__);
}
@:named class R_RISCV {
    public function goString():GoString {
        var _i = this.__copy__();
        return _stringName(_i.__t__, _rriscvStrings, true);
    }
    public function toString():GoString {
        var _i = this.__copy__();
        return _stringName(_i.__t__, _rriscvStrings, false);
    }
    public var __t__ : GoInt;
    public function new(?t:GoInt) {
        __t__ = t == null ? 0 : t;
    }
    public function __underlying__():AnyInterface return Go.toInterface(this);
    public function __copy__() return new R_RISCV(__t__);
}
@:named class R_390 {
    public function goString():GoString {
        var _i = this.__copy__();
        return _stringName(_i.__t__, _r390Strings, true);
    }
    public function toString():GoString {
        var _i = this.__copy__();
        return _stringName(_i.__t__, _r390Strings, false);
    }
    public var __t__ : GoInt;
    public function new(?t:GoInt) {
        __t__ = t == null ? 0 : t;
    }
    public function __underlying__():AnyInterface return Go.toInterface(this);
    public function __copy__() return new R_390(__t__);
}
@:named class R_SPARC {
    public function goString():GoString {
        var _i = this.__copy__();
        return _stringName(_i.__t__, _rsparcStrings, true);
    }
    public function toString():GoString {
        var _i = this.__copy__();
        return _stringName(_i.__t__, _rsparcStrings, false);
    }
    public var __t__ : GoInt;
    public function new(?t:GoInt) {
        __t__ = t == null ? 0 : t;
    }
    public function __underlying__():AnyInterface return Go.toInterface(this);
    public function __copy__() return new R_SPARC(__t__);
}
@:structInit class Header32 {
    public var ident : GoArray<GoUInt8> = new GoArray<GoUInt8>(...[for (i in 0 ... 16) ((0 : GoUInt8))]);
    public var type : GoUInt16 = ((0 : GoUInt16));
    public var machine : GoUInt16 = ((0 : GoUInt16));
    public var version : GoUInt32 = ((0 : GoUInt32));
    public var entry : GoUInt32 = ((0 : GoUInt32));
    public var phoff : GoUInt32 = ((0 : GoUInt32));
    public var shoff : GoUInt32 = ((0 : GoUInt32));
    public var flags : GoUInt32 = ((0 : GoUInt32));
    public var ehsize : GoUInt16 = ((0 : GoUInt16));
    public var phentsize : GoUInt16 = ((0 : GoUInt16));
    public var phnum : GoUInt16 = ((0 : GoUInt16));
    public var shentsize : GoUInt16 = ((0 : GoUInt16));
    public var shnum : GoUInt16 = ((0 : GoUInt16));
    public var shstrndx : GoUInt16 = ((0 : GoUInt16));
    public function new(?ident:GoArray<GoUInt8>, ?type:GoUInt16, ?machine:GoUInt16, ?version:GoUInt32, ?entry:GoUInt32, ?phoff:GoUInt32, ?shoff:GoUInt32, ?flags:GoUInt32, ?ehsize:GoUInt16, ?phentsize:GoUInt16, ?phnum:GoUInt16, ?shentsize:GoUInt16, ?shnum:GoUInt16, ?shstrndx:GoUInt16) stdgo.internal.Macro.initLocals();
    public function toString() {
        return '{' + Go.string(ident) + " " + Go.string(type) + " " + Go.string(machine) + " " + Go.string(version) + " " + Go.string(entry) + " " + Go.string(phoff) + " " + Go.string(shoff) + " " + Go.string(flags) + " " + Go.string(ehsize) + " " + Go.string(phentsize) + " " + Go.string(phnum) + " " + Go.string(shentsize) + " " + Go.string(shnum) + " " + Go.string(shstrndx) + "}";
    }
    public function __underlying__():AnyInterface return Go.toInterface(this);
    public function __copy__() {
        return new Header32(
ident,
type,
machine,
version,
entry,
phoff,
shoff,
flags,
ehsize,
phentsize,
phnum,
shentsize,
shnum,
shstrndx);
    }
    public function __set__(__tmp__) {
        this.ident = __tmp__.ident;
        this.type = __tmp__.type;
        this.machine = __tmp__.machine;
        this.version = __tmp__.version;
        this.entry = __tmp__.entry;
        this.phoff = __tmp__.phoff;
        this.shoff = __tmp__.shoff;
        this.flags = __tmp__.flags;
        this.ehsize = __tmp__.ehsize;
        this.phentsize = __tmp__.phentsize;
        this.phnum = __tmp__.phnum;
        this.shentsize = __tmp__.shentsize;
        this.shnum = __tmp__.shnum;
        this.shstrndx = __tmp__.shstrndx;
        return this;
    }
}
@:structInit class Section32 {
    public var name : GoUInt32 = ((0 : GoUInt32));
    public var type : GoUInt32 = ((0 : GoUInt32));
    public var flags : GoUInt32 = ((0 : GoUInt32));
    public var addr : GoUInt32 = ((0 : GoUInt32));
    public var off : GoUInt32 = ((0 : GoUInt32));
    public var size : GoUInt32 = ((0 : GoUInt32));
    public var link : GoUInt32 = ((0 : GoUInt32));
    public var info : GoUInt32 = ((0 : GoUInt32));
    public var addralign : GoUInt32 = ((0 : GoUInt32));
    public var entsize : GoUInt32 = ((0 : GoUInt32));
    public function new(?name:GoUInt32, ?type:GoUInt32, ?flags:GoUInt32, ?addr:GoUInt32, ?off:GoUInt32, ?size:GoUInt32, ?link:GoUInt32, ?info:GoUInt32, ?addralign:GoUInt32, ?entsize:GoUInt32) stdgo.internal.Macro.initLocals();
    public function toString() {
        return '{' + Go.string(name) + " " + Go.string(type) + " " + Go.string(flags) + " " + Go.string(addr) + " " + Go.string(off) + " " + Go.string(size) + " " + Go.string(link) + " " + Go.string(info) + " " + Go.string(addralign) + " " + Go.string(entsize) + "}";
    }
    public function __underlying__():AnyInterface return Go.toInterface(this);
    public function __copy__() {
        return new Section32(name, type, flags, addr, off, size, link, info, addralign, entsize);
    }
    public function __set__(__tmp__) {
        this.name = __tmp__.name;
        this.type = __tmp__.type;
        this.flags = __tmp__.flags;
        this.addr = __tmp__.addr;
        this.off = __tmp__.off;
        this.size = __tmp__.size;
        this.link = __tmp__.link;
        this.info = __tmp__.info;
        this.addralign = __tmp__.addralign;
        this.entsize = __tmp__.entsize;
        return this;
    }
}
@:structInit class Prog32 {
    public var type : GoUInt32 = ((0 : GoUInt32));
    public var off : GoUInt32 = ((0 : GoUInt32));
    public var vaddr : GoUInt32 = ((0 : GoUInt32));
    public var paddr : GoUInt32 = ((0 : GoUInt32));
    public var filesz : GoUInt32 = ((0 : GoUInt32));
    public var memsz : GoUInt32 = ((0 : GoUInt32));
    public var flags : GoUInt32 = ((0 : GoUInt32));
    public var align : GoUInt32 = ((0 : GoUInt32));
    public function new(?type:GoUInt32, ?off:GoUInt32, ?vaddr:GoUInt32, ?paddr:GoUInt32, ?filesz:GoUInt32, ?memsz:GoUInt32, ?flags:GoUInt32, ?align:GoUInt32) stdgo.internal.Macro.initLocals();
    public function toString() {
        return '{' + Go.string(type) + " " + Go.string(off) + " " + Go.string(vaddr) + " " + Go.string(paddr) + " " + Go.string(filesz) + " " + Go.string(memsz) + " " + Go.string(flags) + " " + Go.string(align) + "}";
    }
    public function __underlying__():AnyInterface return Go.toInterface(this);
    public function __copy__() {
        return new Prog32(type, off, vaddr, paddr, filesz, memsz, flags, align);
    }
    public function __set__(__tmp__) {
        this.type = __tmp__.type;
        this.off = __tmp__.off;
        this.vaddr = __tmp__.vaddr;
        this.paddr = __tmp__.paddr;
        this.filesz = __tmp__.filesz;
        this.memsz = __tmp__.memsz;
        this.flags = __tmp__.flags;
        this.align = __tmp__.align;
        return this;
    }
}
@:structInit class Dyn32 {
    public var tag : GoInt32 = ((0 : GoInt32));
    public var val : GoUInt32 = ((0 : GoUInt32));
    public function new(?tag:GoInt32, ?val:GoUInt32) stdgo.internal.Macro.initLocals();
    public function toString() {
        return '{' + Go.string(tag) + " " + Go.string(val) + "}";
    }
    public function __underlying__():AnyInterface return Go.toInterface(this);
    public function __copy__() {
        return new Dyn32(tag, val);
    }
    public function __set__(__tmp__) {
        this.tag = __tmp__.tag;
        this.val = __tmp__.val;
        return this;
    }
}
@:structInit class Chdr32 {
    public var type : GoUInt32 = ((0 : GoUInt32));
    public var size : GoUInt32 = ((0 : GoUInt32));
    public var addralign : GoUInt32 = ((0 : GoUInt32));
    public function new(?type:GoUInt32, ?size:GoUInt32, ?addralign:GoUInt32) stdgo.internal.Macro.initLocals();
    public function toString() {
        return '{' + Go.string(type) + " " + Go.string(size) + " " + Go.string(addralign) + "}";
    }
    public function __underlying__():AnyInterface return Go.toInterface(this);
    public function __copy__() {
        return new Chdr32(type, size, addralign);
    }
    public function __set__(__tmp__) {
        this.type = __tmp__.type;
        this.size = __tmp__.size;
        this.addralign = __tmp__.addralign;
        return this;
    }
}
@:structInit class Rel32 {
    public var off : GoUInt32 = ((0 : GoUInt32));
    public var info : GoUInt32 = ((0 : GoUInt32));
    public function new(?off:GoUInt32, ?info:GoUInt32) stdgo.internal.Macro.initLocals();
    public function toString() {
        return '{' + Go.string(off) + " " + Go.string(info) + "}";
    }
    public function __underlying__():AnyInterface return Go.toInterface(this);
    public function __copy__() {
        return new Rel32(off, info);
    }
    public function __set__(__tmp__) {
        this.off = __tmp__.off;
        this.info = __tmp__.info;
        return this;
    }
}
@:structInit class Rela32 {
    public var off : GoUInt32 = ((0 : GoUInt32));
    public var info : GoUInt32 = ((0 : GoUInt32));
    public var addend : GoInt32 = ((0 : GoInt32));
    public function new(?off:GoUInt32, ?info:GoUInt32, ?addend:GoInt32) stdgo.internal.Macro.initLocals();
    public function toString() {
        return '{' + Go.string(off) + " " + Go.string(info) + " " + Go.string(addend) + "}";
    }
    public function __underlying__():AnyInterface return Go.toInterface(this);
    public function __copy__() {
        return new Rela32(off, info, addend);
    }
    public function __set__(__tmp__) {
        this.off = __tmp__.off;
        this.info = __tmp__.info;
        this.addend = __tmp__.addend;
        return this;
    }
}
@:structInit class Sym32 {
    public var name : GoUInt32 = ((0 : GoUInt32));
    public var value : GoUInt32 = ((0 : GoUInt32));
    public var size : GoUInt32 = ((0 : GoUInt32));
    public var info : GoUInt8 = ((0 : GoUInt8));
    public var other : GoUInt8 = ((0 : GoUInt8));
    public var shndx : GoUInt16 = ((0 : GoUInt16));
    public function new(?name:GoUInt32, ?value:GoUInt32, ?size:GoUInt32, ?info:GoUInt8, ?other:GoUInt8, ?shndx:GoUInt16) stdgo.internal.Macro.initLocals();
    public function toString() {
        return '{' + Go.string(name) + " " + Go.string(value) + " " + Go.string(size) + " " + Go.string(info) + " " + Go.string(other) + " " + Go.string(shndx) + "}";
    }
    public function __underlying__():AnyInterface return Go.toInterface(this);
    public function __copy__() {
        return new Sym32(name, value, size, info, other, shndx);
    }
    public function __set__(__tmp__) {
        this.name = __tmp__.name;
        this.value = __tmp__.value;
        this.size = __tmp__.size;
        this.info = __tmp__.info;
        this.other = __tmp__.other;
        this.shndx = __tmp__.shndx;
        return this;
    }
}
@:structInit class Header64 {
    public var ident : GoArray<GoUInt8> = new GoArray<GoUInt8>(...[for (i in 0 ... 16) ((0 : GoUInt8))]);
    public var type : GoUInt16 = ((0 : GoUInt16));
    public var machine : GoUInt16 = ((0 : GoUInt16));
    public var version : GoUInt32 = ((0 : GoUInt32));
    public var entry : GoUInt64 = ((0 : GoUInt64));
    public var phoff : GoUInt64 = ((0 : GoUInt64));
    public var shoff : GoUInt64 = ((0 : GoUInt64));
    public var flags : GoUInt32 = ((0 : GoUInt32));
    public var ehsize : GoUInt16 = ((0 : GoUInt16));
    public var phentsize : GoUInt16 = ((0 : GoUInt16));
    public var phnum : GoUInt16 = ((0 : GoUInt16));
    public var shentsize : GoUInt16 = ((0 : GoUInt16));
    public var shnum : GoUInt16 = ((0 : GoUInt16));
    public var shstrndx : GoUInt16 = ((0 : GoUInt16));
    public function new(?ident:GoArray<GoUInt8>, ?type:GoUInt16, ?machine:GoUInt16, ?version:GoUInt32, ?entry:GoUInt64, ?phoff:GoUInt64, ?shoff:GoUInt64, ?flags:GoUInt32, ?ehsize:GoUInt16, ?phentsize:GoUInt16, ?phnum:GoUInt16, ?shentsize:GoUInt16, ?shnum:GoUInt16, ?shstrndx:GoUInt16) stdgo.internal.Macro.initLocals();
    public function toString() {
        return '{' + Go.string(ident) + " " + Go.string(type) + " " + Go.string(machine) + " " + Go.string(version) + " " + Go.string(entry) + " " + Go.string(phoff) + " " + Go.string(shoff) + " " + Go.string(flags) + " " + Go.string(ehsize) + " " + Go.string(phentsize) + " " + Go.string(phnum) + " " + Go.string(shentsize) + " " + Go.string(shnum) + " " + Go.string(shstrndx) + "}";
    }
    public function __underlying__():AnyInterface return Go.toInterface(this);
    public function __copy__() {
        return new Header64(
ident,
type,
machine,
version,
entry,
phoff,
shoff,
flags,
ehsize,
phentsize,
phnum,
shentsize,
shnum,
shstrndx);
    }
    public function __set__(__tmp__) {
        this.ident = __tmp__.ident;
        this.type = __tmp__.type;
        this.machine = __tmp__.machine;
        this.version = __tmp__.version;
        this.entry = __tmp__.entry;
        this.phoff = __tmp__.phoff;
        this.shoff = __tmp__.shoff;
        this.flags = __tmp__.flags;
        this.ehsize = __tmp__.ehsize;
        this.phentsize = __tmp__.phentsize;
        this.phnum = __tmp__.phnum;
        this.shentsize = __tmp__.shentsize;
        this.shnum = __tmp__.shnum;
        this.shstrndx = __tmp__.shstrndx;
        return this;
    }
}
@:structInit class Section64 {
    public var name : GoUInt32 = ((0 : GoUInt32));
    public var type : GoUInt32 = ((0 : GoUInt32));
    public var flags : GoUInt64 = ((0 : GoUInt64));
    public var addr : GoUInt64 = ((0 : GoUInt64));
    public var off : GoUInt64 = ((0 : GoUInt64));
    public var size : GoUInt64 = ((0 : GoUInt64));
    public var link : GoUInt32 = ((0 : GoUInt32));
    public var info : GoUInt32 = ((0 : GoUInt32));
    public var addralign : GoUInt64 = ((0 : GoUInt64));
    public var entsize : GoUInt64 = ((0 : GoUInt64));
    public function new(?name:GoUInt32, ?type:GoUInt32, ?flags:GoUInt64, ?addr:GoUInt64, ?off:GoUInt64, ?size:GoUInt64, ?link:GoUInt32, ?info:GoUInt32, ?addralign:GoUInt64, ?entsize:GoUInt64) stdgo.internal.Macro.initLocals();
    public function toString() {
        return '{' + Go.string(name) + " " + Go.string(type) + " " + Go.string(flags) + " " + Go.string(addr) + " " + Go.string(off) + " " + Go.string(size) + " " + Go.string(link) + " " + Go.string(info) + " " + Go.string(addralign) + " " + Go.string(entsize) + "}";
    }
    public function __underlying__():AnyInterface return Go.toInterface(this);
    public function __copy__() {
        return new Section64(name, type, flags, addr, off, size, link, info, addralign, entsize);
    }
    public function __set__(__tmp__) {
        this.name = __tmp__.name;
        this.type = __tmp__.type;
        this.flags = __tmp__.flags;
        this.addr = __tmp__.addr;
        this.off = __tmp__.off;
        this.size = __tmp__.size;
        this.link = __tmp__.link;
        this.info = __tmp__.info;
        this.addralign = __tmp__.addralign;
        this.entsize = __tmp__.entsize;
        return this;
    }
}
@:structInit class Prog64 {
    public var type : GoUInt32 = ((0 : GoUInt32));
    public var flags : GoUInt32 = ((0 : GoUInt32));
    public var off : GoUInt64 = ((0 : GoUInt64));
    public var vaddr : GoUInt64 = ((0 : GoUInt64));
    public var paddr : GoUInt64 = ((0 : GoUInt64));
    public var filesz : GoUInt64 = ((0 : GoUInt64));
    public var memsz : GoUInt64 = ((0 : GoUInt64));
    public var align : GoUInt64 = ((0 : GoUInt64));
    public function new(?type:GoUInt32, ?flags:GoUInt32, ?off:GoUInt64, ?vaddr:GoUInt64, ?paddr:GoUInt64, ?filesz:GoUInt64, ?memsz:GoUInt64, ?align:GoUInt64) stdgo.internal.Macro.initLocals();
    public function toString() {
        return '{' + Go.string(type) + " " + Go.string(flags) + " " + Go.string(off) + " " + Go.string(vaddr) + " " + Go.string(paddr) + " " + Go.string(filesz) + " " + Go.string(memsz) + " " + Go.string(align) + "}";
    }
    public function __underlying__():AnyInterface return Go.toInterface(this);
    public function __copy__() {
        return new Prog64(type, flags, off, vaddr, paddr, filesz, memsz, align);
    }
    public function __set__(__tmp__) {
        this.type = __tmp__.type;
        this.flags = __tmp__.flags;
        this.off = __tmp__.off;
        this.vaddr = __tmp__.vaddr;
        this.paddr = __tmp__.paddr;
        this.filesz = __tmp__.filesz;
        this.memsz = __tmp__.memsz;
        this.align = __tmp__.align;
        return this;
    }
}
@:structInit class Dyn64 {
    public var tag : GoInt64 = ((0 : GoInt64));
    public var val : GoUInt64 = ((0 : GoUInt64));
    public function new(?tag:GoInt64, ?val:GoUInt64) stdgo.internal.Macro.initLocals();
    public function toString() {
        return '{' + Go.string(tag) + " " + Go.string(val) + "}";
    }
    public function __underlying__():AnyInterface return Go.toInterface(this);
    public function __copy__() {
        return new Dyn64(tag, val);
    }
    public function __set__(__tmp__) {
        this.tag = __tmp__.tag;
        this.val = __tmp__.val;
        return this;
    }
}
@:structInit class Chdr64 {
    public var type : GoUInt32 = ((0 : GoUInt32));
    public var ___blank__0 : GoUInt32 = ((0 : GoUInt32));
    public var size : GoUInt64 = ((0 : GoUInt64));
    public var addralign : GoUInt64 = ((0 : GoUInt64));
    public function new(?type:GoUInt32, ?___blank__0:GoUInt32, ?size:GoUInt64, ?addralign:GoUInt64) stdgo.internal.Macro.initLocals();
    public function toString() {
        return '{' + Go.string(type) + " " + Go.string(___blank__0) + " " + Go.string(size) + " " + Go.string(addralign) + "}";
    }
    public function __underlying__():AnyInterface return Go.toInterface(this);
    public function __copy__() {
        return new Chdr64(type, ___blank__0, size, addralign);
    }
    public function __set__(__tmp__) {
        this.type = __tmp__.type;
        this.___blank__0 = __tmp__.___blank__0;
        this.size = __tmp__.size;
        this.addralign = __tmp__.addralign;
        return this;
    }
}
@:structInit class Rel64 {
    public var off : GoUInt64 = ((0 : GoUInt64));
    public var info : GoUInt64 = ((0 : GoUInt64));
    public function new(?off:GoUInt64, ?info:GoUInt64) stdgo.internal.Macro.initLocals();
    public function toString() {
        return '{' + Go.string(off) + " " + Go.string(info) + "}";
    }
    public function __underlying__():AnyInterface return Go.toInterface(this);
    public function __copy__() {
        return new Rel64(off, info);
    }
    public function __set__(__tmp__) {
        this.off = __tmp__.off;
        this.info = __tmp__.info;
        return this;
    }
}
@:structInit class Rela64 {
    public var off : GoUInt64 = ((0 : GoUInt64));
    public var info : GoUInt64 = ((0 : GoUInt64));
    public var addend : GoInt64 = ((0 : GoInt64));
    public function new(?off:GoUInt64, ?info:GoUInt64, ?addend:GoInt64) stdgo.internal.Macro.initLocals();
    public function toString() {
        return '{' + Go.string(off) + " " + Go.string(info) + " " + Go.string(addend) + "}";
    }
    public function __underlying__():AnyInterface return Go.toInterface(this);
    public function __copy__() {
        return new Rela64(off, info, addend);
    }
    public function __set__(__tmp__) {
        this.off = __tmp__.off;
        this.info = __tmp__.info;
        this.addend = __tmp__.addend;
        return this;
    }
}
@:structInit class Sym64 {
    public var name : GoUInt32 = ((0 : GoUInt32));
    public var info : GoUInt8 = ((0 : GoUInt8));
    public var other : GoUInt8 = ((0 : GoUInt8));
    public var shndx : GoUInt16 = ((0 : GoUInt16));
    public var value : GoUInt64 = ((0 : GoUInt64));
    public var size : GoUInt64 = ((0 : GoUInt64));
    public function new(?name:GoUInt32, ?info:GoUInt8, ?other:GoUInt8, ?shndx:GoUInt16, ?value:GoUInt64, ?size:GoUInt64) stdgo.internal.Macro.initLocals();
    public function toString() {
        return '{' + Go.string(name) + " " + Go.string(info) + " " + Go.string(other) + " " + Go.string(shndx) + " " + Go.string(value) + " " + Go.string(size) + "}";
    }
    public function __underlying__():AnyInterface return Go.toInterface(this);
    public function __copy__() {
        return new Sym64(name, info, other, shndx, value, size);
    }
    public function __set__(__tmp__) {
        this.name = __tmp__.name;
        this.info = __tmp__.info;
        this.other = __tmp__.other;
        this.shndx = __tmp__.shndx;
        this.value = __tmp__.value;
        this.size = __tmp__.size;
        return this;
    }
}
@:structInit class T_intName {
    public var _i : GoUInt32 = ((0 : GoUInt32));
    public var _s : GoString = (("" : GoString));
    public function new(?_i:GoUInt32, ?_s:GoString) stdgo.internal.Macro.initLocals();
    public function toString() {
        return '{' + Go.string(_i) + " " + Go.string(_s) + "}";
    }
    public function __underlying__():AnyInterface return Go.toInterface(this);
    public function __copy__() {
        return new T_intName(_i, _s);
    }
    public function __set__(__tmp__) {
        this._i = __tmp__._i;
        this._s = __tmp__._s;
        return this;
    }
}
@:structInit class FileHeader {
    public var class_ : Class_ = new Class_();
    public var data : Data = new Data();
    public var version : Version = new Version();
    public var osabi : OSABI = new OSABI();
    public var abiversion : GoUInt8 = ((0 : GoUInt8));
    public var byteOrder : stdgo.encoding.binary.Binary.ByteOrder = ((null : stdgo.encoding.binary.Binary.ByteOrder));
    public var type : Type = new Type();
    public var machine : Machine = new Machine();
    public var entry : GoUInt64 = ((0 : GoUInt64));
    public function new(?class_:Class_, ?data:Data, ?version:Version, ?osabi:OSABI, ?abiversion:GoUInt8, ?byteOrder:stdgo.encoding.binary.Binary.ByteOrder, ?type:Type, ?machine:Machine, ?entry:GoUInt64) stdgo.internal.Macro.initLocals();
    public function toString() {
        return '{' + Go.string(class_) + " " + Go.string(data) + " " + Go.string(version) + " " + Go.string(osabi) + " " + Go.string(abiversion) + " " + Go.string(byteOrder) + " " + Go.string(type) + " " + Go.string(machine) + " " + Go.string(entry) + "}";
    }
    public function __underlying__():AnyInterface return Go.toInterface(this);
    public function __copy__() {
        return new FileHeader(class_, data, version, osabi, abiversion, byteOrder, type, machine, entry);
    }
    public function __set__(__tmp__) {
        this.class_ = __tmp__.class_;
        this.data = __tmp__.data;
        this.version = __tmp__.version;
        this.osabi = __tmp__.osabi;
        this.abiversion = __tmp__.abiversion;
        this.byteOrder = __tmp__.byteOrder;
        this.type = __tmp__.type;
        this.machine = __tmp__.machine;
        this.entry = __tmp__.entry;
        return this;
    }
}
@:structInit class File {
    public function dynString(_tag:DynTag):{ var _0 : Slice<GoString>; var _1 : Error; } {
        var _f = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        if (_tag.__t__ == dt_NEEDED.__t__ || _tag.__t__ == dt_SONAME.__t__ || _tag.__t__ == dt_RPATH.__t__ || _tag.__t__ == dt_RUNPATH.__t__) {} else {
            return { _0 : new Slice<GoString>().nil(), _1 : stdgo.fmt.Fmt.errorf("non-string-valued tag %v", Go.toInterface(_tag)) };
        };
        var _ds:Pointer<Section> = _f.value.sectionByType(sht_DYNAMIC);
        if (_ds == null || _ds.isNil()) {
            return { _0 : new Slice<GoString>().nil(), _1 : ((null : stdgo.Error)) };
        };
        var __tmp__ = _ds.value.data(), _d:Slice<GoUInt8> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            return { _0 : new Slice<GoString>().nil(), _1 : _err };
        };
        var __tmp__ = _f.value._stringTable(_ds.value.sectionHeader.link), _str:Slice<GoUInt8> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            return { _0 : new Slice<GoString>().nil(), _1 : _err };
        };
        var _all:Slice<GoString> = new Slice<GoString>().nil();
        while (_d.length > ((0 : GoInt))) {
            var _t:DynTag = new DynTag();
            var _v:GoUInt64 = ((0 : GoUInt64));
            if (_f.value.fileHeader.class_.__t__ == elfclass32.__t__) {
                _t = new DynTag(_f.value.fileHeader.byteOrder.uint32(_d.__slice__(((0 : GoInt)), ((4 : GoInt)))));
                _v = ((_f.value.fileHeader.byteOrder.uint32(_d.__slice__(((4 : GoInt)), ((8 : GoInt)))) : GoUInt64));
                _d = _d.__slice__(((8 : GoInt)));
            } else if (_f.value.fileHeader.class_.__t__ == elfclass64.__t__) {
                _t = new DynTag(_f.value.fileHeader.byteOrder.uint64(_d.__slice__(((0 : GoInt)), ((8 : GoInt)))));
                _v = _f.value.fileHeader.byteOrder.uint64(_d.__slice__(((8 : GoInt)), ((16 : GoInt))));
                _d = _d.__slice__(((16 : GoInt)));
            };
            if (_t.__t__ == _tag.__t__) {
                var __tmp__ = _getString(_str, ((_v : GoInt))), _s:GoString = __tmp__._0, _ok:Bool = __tmp__._1;
                if (_ok) {
                    _all = _all.__append__(_s);
                };
            };
        };
        return { _0 : _all, _1 : ((null : stdgo.Error)) };
    }
    public function importedLibraries():{ var _0 : Slice<GoString>; var _1 : Error; } {
        var _f = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        return _f.value.dynString(dt_NEEDED);
    }
    public function _gnuVersion(_i:GoInt):{ var _0 : GoString; var _1 : GoString; } {
        var _f = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        var _library:GoString = (("" : GoString)), _version:GoString = (("" : GoString));
        _i = (_i + ((1 : GoInt))) * ((2 : GoInt));
        if (_i >= _f.value._gnuVersym.length) {
            return { _0 : _library, _1 : _version };
        };
        var _j:GoInt = ((_f.value.fileHeader.byteOrder.uint16(_f.value._gnuVersym.__slice__(_i)) : GoInt));
        if (_j < ((2 : GoInt)) || _j >= _f.value._gnuNeed.length) {
            return { _0 : _library, _1 : _version };
        };
        var _n:Pointer<T_verneed> = Go.pointer(_f.value._gnuNeed[_j]);
        return { _0 : _n.value.file, _1 : _n.value.name };
    }
    public function _gnuVersionInit(_str:Slice<GoByte>):Bool {
        var _f = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        if (_f.value._gnuNeed != null && !_f.value._gnuNeed.isNil()) {
            return true;
        };
        var _vn:Pointer<Section> = _f.value.sectionByType(sht_GNU_VERNEED);
        if (_vn == null || _vn.isNil()) {
            return false;
        };
        var __tmp__ = _vn.value.data(), _d:Slice<GoUInt8> = __tmp__._0, _:stdgo.Error = __tmp__._1;
        var _need:Slice<T_verneed> = new Slice<T_verneed>().nil();
        var _i:GoInt = ((0 : GoInt));
        while (true) {
            if (_i + ((16 : GoInt)) > _d.length) {
                break;
            };
            var _vers:GoUInt16 = _f.value.fileHeader.byteOrder.uint16(_d.__slice__(_i, _i + ((2 : GoInt))));
            if (_vers != ((1 : GoUInt16))) {
                break;
            };
            var _cnt:GoUInt16 = _f.value.fileHeader.byteOrder.uint16(_d.__slice__(_i + ((2 : GoInt)), _i + ((4 : GoInt))));
            var _fileoff:GoUInt32 = _f.value.fileHeader.byteOrder.uint32(_d.__slice__(_i + ((4 : GoInt)), _i + ((8 : GoInt))));
            var _aux:GoUInt32 = _f.value.fileHeader.byteOrder.uint32(_d.__slice__(_i + ((8 : GoInt)), _i + ((12 : GoInt))));
            var _next:GoUInt32 = _f.value.fileHeader.byteOrder.uint32(_d.__slice__(_i + ((12 : GoInt)), _i + ((16 : GoInt))));
            var __tmp__ = _getString(_str, ((_fileoff : GoInt))), _file:GoString = __tmp__._0, _:Bool = __tmp__._1;
            var _name:GoString = (("" : GoString));
            var _j:GoInt = _i + ((_aux : GoInt));
            {
                var _c:GoInt = ((0 : GoInt));
                Go.cfor(_c < ((_cnt : GoInt)), _c++, {
                    if (_j + ((16 : GoInt)) > _d.length) {
                        break;
                    };
                    var _other:GoUInt16 = _f.value.fileHeader.byteOrder.uint16(_d.__slice__(_j + ((6 : GoInt)), _j + ((8 : GoInt))));
                    var _nameoff:GoUInt32 = _f.value.fileHeader.byteOrder.uint32(_d.__slice__(_j + ((8 : GoInt)), _j + ((12 : GoInt))));
                    var _next:GoUInt32 = _f.value.fileHeader.byteOrder.uint32(_d.__slice__(_j + ((12 : GoInt)), _j + ((16 : GoInt))));
                    {
                        var __tmp__ = _getString(_str, ((_nameoff : GoInt)));
                        _name = __tmp__._0;
                    };
                    var _ndx:GoInt = ((_other : GoInt));
                    if (_ndx >= _need.length) {
                        var _a:Slice<T_verneed> = new Slice<T_verneed>(...[for (i in 0 ... ((((2 : GoInt)) * (_ndx + ((1 : GoInt))) : GoInt)).toBasic()) new T_verneed()]);
                        Go.copy(_a, _need);
                        _need = _a;
                    };
                    _need[_ndx] = new T_verneed(_file, _name).__copy__();
                    if (_next == ((0 : GoUInt32))) {
                        break;
                    };
                    _j = _j + (((_next : GoInt)));
                });
            };
            if (_next == ((0 : GoUInt32))) {
                break;
            };
            _i = _i + (((_next : GoInt)));
        };
        var _vs:Pointer<Section> = _f.value.sectionByType(sht_GNU_VERSYM);
        if (_vs == null || _vs.isNil()) {
            return false;
        };
        {
            var __tmp__ = _vs.value.data();
            _d = __tmp__._0;
        };
        _f.value._gnuNeed = _need;
        _f.value._gnuVersym = _d;
        return true;
    }
    public function importedSymbols():{ var _0 : Slice<ImportedSymbol>; var _1 : Error; } {
        var _f = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        var __tmp__ = _f.value._getSymbols(sht_DYNSYM), _sym:Slice<Symbol> = __tmp__._0, _str:Slice<GoUInt8> = __tmp__._1, _err:stdgo.Error = __tmp__._2;
        if (_err != null) {
            return { _0 : new Slice<ImportedSymbol>().nil(), _1 : _err };
        };
        _f.value._gnuVersionInit(_str);
        var _all:Slice<ImportedSymbol> = new Slice<ImportedSymbol>().nil();
        {
            var _i;
            var _s;
            for (_obj in _sym.keyValueIterator()) {
                _i = _obj.key;
                _s = _obj.value;
                if (st_BIND(_s.info).__t__ == stb_GLOBAL.__t__ && _s.section.__t__ == shn_UNDEF.__t__) {
                    _all = _all.__append__((({ name : _s.name, version : "", library : "" } : ImportedSymbol)).__copy__());
                    var _sym:Pointer<ImportedSymbol> = Go.pointer(_all[_all.length - ((1 : GoInt))]);
                    {
                        var __tmp__ = _f.value._gnuVersion(_i);
                        _sym.value.library = __tmp__._0;
                        _sym.value.version = __tmp__._1;
                    };
                };
            };
        };
        return { _0 : _all, _1 : ((null : stdgo.Error)) };
    }
    public function dynamicSymbols():{ var _0 : Slice<Symbol>; var _1 : Error; } {
        var _f = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        var __tmp__ = _f.value._getSymbols(sht_DYNSYM), _sym:Slice<Symbol> = __tmp__._0, _str:Slice<GoUInt8> = __tmp__._1, _err:stdgo.Error = __tmp__._2;
        if (_err != null) {
            return { _0 : new Slice<Symbol>().nil(), _1 : _err };
        };
        if (_f.value._gnuVersionInit(_str)) {
            {
                var _i;
                for (_obj in _sym.keyValueIterator()) {
                    _i = _obj.key;
                    {
                        var __tmp__ = _f.value._gnuVersion(_i);
                        _sym[_i].library = __tmp__._0;
                        _sym[_i].version = __tmp__._1;
                    };
                };
            };
        };
        return { _0 : _sym, _1 : ((null : stdgo.Error)) };
    }
    public function symbols():{ var _0 : Slice<Symbol>; var _1 : Error; } {
        var _f = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        var __tmp__ = _f.value._getSymbols(sht_SYMTAB), _sym:Slice<Symbol> = __tmp__._0, _:Slice<GoUInt8> = __tmp__._1, _err:stdgo.Error = __tmp__._2;
        return { _0 : _sym, _1 : _err };
    }
    public function dwarf():{ var _0 : Pointer<stdgo.debug.dwarf.Dwarf.Data>; var _1 : Error; } {
        var _f = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        var _dwarfSuffix:Pointer<Section> -> GoString = function(_s:Pointer<Section>):GoString {
            if (stdgo.strings.Strings.hasPrefix(_s.value.sectionHeader.name, ".debug_")) {
                return _s.value.sectionHeader.name.__slice__(((7 : GoInt)));
            } else if (stdgo.strings.Strings.hasPrefix(_s.value.sectionHeader.name, ".zdebug_")) {
                return _s.value.sectionHeader.name.__slice__(((8 : GoInt)));
            } else {
                return "";
            };
        };
        var _sectionData:(GoInt, Pointer<Section>) -> { var _0 : Slice<GoUInt8>; var _1 : stdgo.Error; } = function(_i:GoInt, _s:Pointer<Section>):{ var _0 : Slice<GoByte>; var _1 : Error; } {
            var __tmp__ = _s.value.data(), _b:Slice<GoUInt8> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null && ((_b.length : GoUInt64)) < _s.value.sectionHeader.size) {
                return { _0 : new Slice<GoUInt8>().nil(), _1 : _err };
            };
            if (_b.length >= ((12 : GoInt)) && ((_b.__slice__(0, ((4 : GoInt))) : GoString)) == (("ZLIB" : GoString))) {
                var _dlen:GoUInt64 = stdgo.encoding.binary.Binary.bigEndian.uint64(_b.__slice__(((4 : GoInt)), ((12 : GoInt))));
                var _dbuf:Slice<GoUInt8> = new Slice<GoUInt8>(...[for (i in 0 ... ((_dlen : GoInt)).toBasic()) ((0 : GoUInt8))]);
                var __tmp__ = stdgo.compress.zlib.Zlib.newReader(stdgo.bytes.Bytes.newBuffer(_b.__slice__(((12 : GoInt)))).value), _r:stdgo.io.Io.ReadCloser = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                if (_err != null) {
                    return { _0 : new Slice<GoUInt8>().nil(), _1 : _err };
                };
                {
                    var __tmp__ = stdgo.io.Io.readFull(_r, _dbuf), _:GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                    if (_err != null) {
                        return { _0 : new Slice<GoUInt8>().nil(), _1 : _err };
                    };
                };
                {
                    var _err:stdgo.Error = _r.close();
                    if (_err != null) {
                        return { _0 : new Slice<GoUInt8>().nil(), _1 : _err };
                    };
                };
                _b = _dbuf;
            };
            if (_f.value.fileHeader.type.__t__ == et_EXEC.__t__) {
                return { _0 : _b, _1 : ((null : stdgo.Error)) };
            };
            for (_r in _f.value.sections) {
                if (_r.value.sectionHeader.type.__t__ != sht_RELA.__t__ && _r.value.sectionHeader.type.__t__ != sht_REL.__t__) {
                    continue;
                };
                if (((_r.value.sectionHeader.info : GoInt)) != _i) {
                    continue;
                };
                var __tmp__ = _r.value.data(), _rd:Slice<GoUInt8> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                if (_err != null) {
                    return { _0 : new Slice<GoUInt8>().nil(), _1 : _err };
                };
                _err = _f.value._applyRelocations(_b, _rd);
                if (_err != null) {
                    return { _0 : new Slice<GoUInt8>().nil(), _1 : _err };
                };
            };
            return { _0 : _b, _1 : ((null : stdgo.Error)) };
        };
        var _dat:GoMap<GoString, Slice<GoUInt8>> = new GoMap<GoString, Slice<GoUInt8>>(new stdgo.reflect.Reflect._Type(stdgo.reflect.Reflect.GoType.mapType(stdgo.reflect.Reflect.GoType.basic(string_kind), stdgo.reflect.Reflect.GoType.sliceType(stdgo.reflect.Reflect.GoType.basic(uint8_kind)))), { key : "abbrev", value : new Slice<GoUInt8>().nil() }, { key : "info", value : new Slice<GoUInt8>().nil() }, { key : "str", value : new Slice<GoUInt8>().nil() }, { key : "line", value : new Slice<GoUInt8>().nil() }, { key : "ranges", value : new Slice<GoUInt8>().nil() });
        {
            var _i;
            var _s;
            for (_obj in _f.value.sections.keyValueIterator()) {
                _i = _obj.key;
                _s = _obj.value;
                var _suffix:GoString = _dwarfSuffix(_s);
                if (_suffix == (("" : GoString))) {
                    continue;
                };
                {
                    var __tmp__ = _dat.exists(_suffix) ? { value : _dat[_suffix], ok : true } : { value : _dat.defaultValue(), ok : false }, _:Slice<GoUInt8> = __tmp__.value, _ok:Bool = __tmp__.ok;
                    if (!_ok) {
                        continue;
                    };
                };
                var __tmp__ = _sectionData(_i, _s), _b:Slice<GoUInt8> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                if (_err != null) {
                    return { _0 : new Pointer<stdgo.debug.dwarf.Dwarf.Data>().nil(), _1 : _err };
                };
                _dat[_suffix] = _b;
            };
        };
        var __tmp__ = stdgo.debug.dwarf.Dwarf.new_(_dat["abbrev"], new Slice<GoUInt8>().nil(), new Slice<GoUInt8>().nil(), _dat["info"], _dat["line"], new Slice<GoUInt8>().nil(), _dat["ranges"], _dat["str"]), _d:Pointer<stdgo.debug.dwarf.Dwarf.Data> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            return { _0 : new Pointer<stdgo.debug.dwarf.Dwarf.Data>().nil(), _1 : _err };
        };
        {
            var _i;
            var _s;
            for (_obj in _f.value.sections.keyValueIterator()) {
                _i = _obj.key;
                _s = _obj.value;
                var _suffix:GoString = _dwarfSuffix(_s);
                if (_suffix == (("" : GoString))) {
                    continue;
                };
                {
                    var __tmp__ = _dat.exists(_suffix) ? { value : _dat[_suffix], ok : true } : { value : _dat.defaultValue(), ok : false }, _:Slice<GoUInt8> = __tmp__.value, _ok:Bool = __tmp__.ok;
                    if (_ok) {
                        continue;
                    };
                };
                var __tmp__ = _sectionData(_i, _s), _b:Slice<GoUInt8> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                if (_err != null) {
                    return { _0 : new Pointer<stdgo.debug.dwarf.Dwarf.Data>().nil(), _1 : _err };
                };
                if (_suffix == (("types" : GoString))) {
                    {
                        var _err:stdgo.Error = _d.value.addTypes(stdgo.fmt.Fmt.sprintf("types-%d", Go.toInterface(_i)), _b);
                        if (_err != null) {
                            return { _0 : new Pointer<stdgo.debug.dwarf.Dwarf.Data>().nil(), _1 : _err };
                        };
                    };
                } else {
                    {
                        var _err:stdgo.Error = _d.value.addSection(((".debug_" : GoString)) + _suffix, _b);
                        if (_err != null) {
                            return { _0 : new Pointer<stdgo.debug.dwarf.Dwarf.Data>().nil(), _1 : _err };
                        };
                    };
                };
            };
        };
        return { _0 : _d, _1 : ((null : stdgo.Error)) };
    }
    public function _applyRelocationsSPARC64(_dst:Slice<GoByte>, _rels:Slice<GoByte>):Error {
        var _f = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        if (_rels.length % ((24 : GoInt)) != ((0 : GoInt))) {
            return stdgo.errors.Errors.new_("length of relocation section is not a multiple of 24");
        };
        var __tmp__ = _f.value._getSymbols(sht_SYMTAB), _symbols:Slice<Symbol> = __tmp__._0, _:Slice<GoUInt8> = __tmp__._1, _err:stdgo.Error = __tmp__._2;
        if (_err != null) {
            return _err;
        };
        var _b:Pointer<stdgo.bytes.Bytes.Reader> = stdgo.bytes.Bytes.newReader(_rels);
        var _rela:Rela64 = new Rela64();
        while (_b.value.len() > ((0 : GoInt))) {
            stdgo.encoding.binary.Binary.read(_b.value, _f.value.fileHeader.byteOrder, Go.toInterface(Go.pointer(_rela)));
            var _symNo:GoUInt64 = (_rela.info >> ((32 : GoUnTypedInt)));
            var _t:R_SPARC = new R_SPARC((_rela.info & ((255 : GoUInt64))));
            if (_symNo == ((0 : GoUInt64)) || _symNo > ((_symbols.length : GoUInt64))) {
                continue;
            };
            var _sym:Pointer<Symbol> = Go.pointer(_symbols[_symNo - ((1 : GoUInt64))]);
            if (!_canApplyRelocation(_sym)) {
                continue;
            };
            if (_t.__t__ == r_SPARC_64.__t__ || _t.__t__ == r_SPARC_UA64.__t__) {
                if (_rela.off + ((8 : GoUInt64)) >= ((_dst.length : GoUInt64)) || _rela.addend < ((0 : GoInt64))) {
                    continue;
                };
                var _val64:GoUInt64 = _sym.value.value + ((_rela.addend : GoUInt64));
                _f.value.fileHeader.byteOrder.putUint64(_dst.__slice__(_rela.off, _rela.off + ((8 : GoUInt64))), _val64);
            } else if (_t.__t__ == r_SPARC_32.__t__ || _t.__t__ == r_SPARC_UA32.__t__) {
                if (_rela.off + ((4 : GoUInt64)) >= ((_dst.length : GoUInt64)) || _rela.addend < ((0 : GoInt64))) {
                    continue;
                };
                var _val32:GoUInt32 = ((_sym.value.value : GoUInt32)) + ((_rela.addend : GoUInt32));
                _f.value.fileHeader.byteOrder.putUint32(_dst.__slice__(_rela.off, _rela.off + ((4 : GoUInt64))), _val32);
            };
        };
        return ((null : stdgo.Error));
    }
    public function _applyRelocationss390x(_dst:Slice<GoByte>, _rels:Slice<GoByte>):Error {
        var _f = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        if (_rels.length % ((24 : GoInt)) != ((0 : GoInt))) {
            return stdgo.errors.Errors.new_("length of relocation section is not a multiple of 24");
        };
        var __tmp__ = _f.value._getSymbols(sht_SYMTAB), _symbols:Slice<Symbol> = __tmp__._0, _:Slice<GoUInt8> = __tmp__._1, _err:stdgo.Error = __tmp__._2;
        if (_err != null) {
            return _err;
        };
        var _b:Pointer<stdgo.bytes.Bytes.Reader> = stdgo.bytes.Bytes.newReader(_rels);
        var _rela:Rela64 = new Rela64();
        while (_b.value.len() > ((0 : GoInt))) {
            stdgo.encoding.binary.Binary.read(_b.value, _f.value.fileHeader.byteOrder, Go.toInterface(Go.pointer(_rela)));
            var _symNo:GoUInt64 = (_rela.info >> ((32 : GoUnTypedInt)));
            var _t:R_390 = new R_390((_rela.info & ((65535 : GoUInt64))));
            if (_symNo == ((0 : GoUInt64)) || _symNo > ((_symbols.length : GoUInt64))) {
                continue;
            };
            var _sym:Pointer<Symbol> = Go.pointer(_symbols[_symNo - ((1 : GoUInt64))]);
            if (!_canApplyRelocation(_sym)) {
                continue;
            };
            if (_t.__t__ == r_390_64.__t__) {
                if (_rela.off + ((8 : GoUInt64)) >= ((_dst.length : GoUInt64)) || _rela.addend < ((0 : GoInt64))) {
                    continue;
                };
                var _val64:GoUInt64 = _sym.value.value + ((_rela.addend : GoUInt64));
                _f.value.fileHeader.byteOrder.putUint64(_dst.__slice__(_rela.off, _rela.off + ((8 : GoUInt64))), _val64);
            } else if (_t.__t__ == r_390_32.__t__) {
                if (_rela.off + ((4 : GoUInt64)) >= ((_dst.length : GoUInt64)) || _rela.addend < ((0 : GoInt64))) {
                    continue;
                };
                var _val32:GoUInt32 = ((_sym.value.value : GoUInt32)) + ((_rela.addend : GoUInt32));
                _f.value.fileHeader.byteOrder.putUint32(_dst.__slice__(_rela.off, _rela.off + ((4 : GoUInt64))), _val32);
            };
        };
        return ((null : stdgo.Error));
    }
    public function _applyRelocationsRISCV64(_dst:Slice<GoByte>, _rels:Slice<GoByte>):Error {
        var _f = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        if (_rels.length % ((24 : GoInt)) != ((0 : GoInt))) {
            return stdgo.errors.Errors.new_("length of relocation section is not a multiple of 24");
        };
        var __tmp__ = _f.value._getSymbols(sht_SYMTAB), _symbols:Slice<Symbol> = __tmp__._0, _:Slice<GoUInt8> = __tmp__._1, _err:stdgo.Error = __tmp__._2;
        if (_err != null) {
            return _err;
        };
        var _b:Pointer<stdgo.bytes.Bytes.Reader> = stdgo.bytes.Bytes.newReader(_rels);
        var _rela:Rela64 = new Rela64();
        while (_b.value.len() > ((0 : GoInt))) {
            stdgo.encoding.binary.Binary.read(_b.value, _f.value.fileHeader.byteOrder, Go.toInterface(Go.pointer(_rela)));
            var _symNo:GoUInt64 = (_rela.info >> ((32 : GoUnTypedInt)));
            var _t:R_RISCV = new R_RISCV((_rela.info & ((65535 : GoUInt64))));
            if (_symNo == ((0 : GoUInt64)) || _symNo > ((_symbols.length : GoUInt64))) {
                continue;
            };
            var _sym:Pointer<Symbol> = Go.pointer(_symbols[_symNo - ((1 : GoUInt64))]);
            if (!_canApplyRelocation(_sym)) {
                continue;
            };
            if (_t.__t__ == r_RISCV_64.__t__) {
                if (_rela.off + ((8 : GoUInt64)) >= ((_dst.length : GoUInt64)) || _rela.addend < ((0 : GoInt64))) {
                    continue;
                };
                var _val64:GoUInt64 = _sym.value.value + ((_rela.addend : GoUInt64));
                _f.value.fileHeader.byteOrder.putUint64(_dst.__slice__(_rela.off, _rela.off + ((8 : GoUInt64))), _val64);
            } else if (_t.__t__ == r_RISCV_32.__t__) {
                if (_rela.off + ((4 : GoUInt64)) >= ((_dst.length : GoUInt64)) || _rela.addend < ((0 : GoInt64))) {
                    continue;
                };
                var _val32:GoUInt32 = ((_sym.value.value : GoUInt32)) + ((_rela.addend : GoUInt32));
                _f.value.fileHeader.byteOrder.putUint32(_dst.__slice__(_rela.off, _rela.off + ((4 : GoUInt64))), _val32);
            };
        };
        return ((null : stdgo.Error));
    }
    public function _applyRelocationsMIPS64(_dst:Slice<GoByte>, _rels:Slice<GoByte>):Error {
        var _f = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        if (_rels.length % ((24 : GoInt)) != ((0 : GoInt))) {
            return stdgo.errors.Errors.new_("length of relocation section is not a multiple of 24");
        };
        var __tmp__ = _f.value._getSymbols(sht_SYMTAB), _symbols:Slice<Symbol> = __tmp__._0, _:Slice<GoUInt8> = __tmp__._1, _err:stdgo.Error = __tmp__._2;
        if (_err != null) {
            return _err;
        };
        var _b:Pointer<stdgo.bytes.Bytes.Reader> = stdgo.bytes.Bytes.newReader(_rels);
        var _rela:Rela64 = new Rela64();
        while (_b.value.len() > ((0 : GoInt))) {
            stdgo.encoding.binary.Binary.read(_b.value, _f.value.fileHeader.byteOrder, Go.toInterface(Go.pointer(_rela)));
            var _symNo:GoUInt64 = ((0 : GoUInt64));
            var _t:R_MIPS = new R_MIPS();
            if (Go.toInterface(_f.value.fileHeader.byteOrder) == Go.toInterface(stdgo.encoding.binary.Binary.bigEndian)) {
                _symNo = (_rela.info >> ((32 : GoUnTypedInt)));
                _t = new R_MIPS((_rela.info & ((255 : GoUInt64))));
            } else {
                _symNo = _rela.info & (("4294967295" : GoUInt64));
                _t = new R_MIPS((_rela.info >> ((56 : GoUnTypedInt))));
            };
            if (_symNo == ((0 : GoUInt64)) || _symNo > ((_symbols.length : GoUInt64))) {
                continue;
            };
            var _sym:Pointer<Symbol> = Go.pointer(_symbols[_symNo - ((1 : GoUInt64))]);
            if (!_canApplyRelocation(_sym)) {
                continue;
            };
            if (_t.__t__ == r_MIPS_64.__t__) {
                if (_rela.off + ((8 : GoUInt64)) >= ((_dst.length : GoUInt64)) || _rela.addend < ((0 : GoInt64))) {
                    continue;
                };
                var _val64:GoUInt64 = _sym.value.value + ((_rela.addend : GoUInt64));
                _f.value.fileHeader.byteOrder.putUint64(_dst.__slice__(_rela.off, _rela.off + ((8 : GoUInt64))), _val64);
            } else if (_t.__t__ == r_MIPS_32.__t__) {
                if (_rela.off + ((4 : GoUInt64)) >= ((_dst.length : GoUInt64)) || _rela.addend < ((0 : GoInt64))) {
                    continue;
                };
                var _val32:GoUInt32 = ((_sym.value.value : GoUInt32)) + ((_rela.addend : GoUInt32));
                _f.value.fileHeader.byteOrder.putUint32(_dst.__slice__(_rela.off, _rela.off + ((4 : GoUInt64))), _val32);
            };
        };
        return ((null : stdgo.Error));
    }
    public function _applyRelocationsMIPS(_dst:Slice<GoByte>, _rels:Slice<GoByte>):Error {
        var _f = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        if (_rels.length % ((8 : GoInt)) != ((0 : GoInt))) {
            return stdgo.errors.Errors.new_("length of relocation section is not a multiple of 8");
        };
        var __tmp__ = _f.value._getSymbols(sht_SYMTAB), _symbols:Slice<Symbol> = __tmp__._0, _:Slice<GoUInt8> = __tmp__._1, _err:stdgo.Error = __tmp__._2;
        if (_err != null) {
            return _err;
        };
        var _b:Pointer<stdgo.bytes.Bytes.Reader> = stdgo.bytes.Bytes.newReader(_rels);
        var _rel:Rel32 = new Rel32();
        while (_b.value.len() > ((0 : GoInt))) {
            stdgo.encoding.binary.Binary.read(_b.value, _f.value.fileHeader.byteOrder, Go.toInterface(Go.pointer(_rel)));
            var _symNo:GoUInt32 = (_rel.info >> ((8 : GoUnTypedInt)));
            var _t:R_MIPS = new R_MIPS((_rel.info & ((255 : GoUInt32))));
            if (_symNo == ((0 : GoUInt32)) || _symNo > ((_symbols.length : GoUInt32))) {
                continue;
            };
            var _sym:Pointer<Symbol> = Go.pointer(_symbols[_symNo - ((1 : GoUInt32))]);
            if (_t.__t__ == r_MIPS_32.__t__) {
                if (_rel.off + ((4 : GoUInt32)) >= ((_dst.length : GoUInt32))) {
                    continue;
                };
                var _val:GoUInt32 = _f.value.fileHeader.byteOrder.uint32(_dst.__slice__(_rel.off, _rel.off + ((4 : GoUInt32))));
                _val = _val + (((_sym.value.value : GoUInt32)));
                _f.value.fileHeader.byteOrder.putUint32(_dst.__slice__(_rel.off, _rel.off + ((4 : GoUInt32))), _val);
            };
        };
        return ((null : stdgo.Error));
    }
    public function _applyRelocationsPPC64(_dst:Slice<GoByte>, _rels:Slice<GoByte>):Error {
        var _f = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        if (_rels.length % ((24 : GoInt)) != ((0 : GoInt))) {
            return stdgo.errors.Errors.new_("length of relocation section is not a multiple of 24");
        };
        var __tmp__ = _f.value._getSymbols(sht_SYMTAB), _symbols:Slice<Symbol> = __tmp__._0, _:Slice<GoUInt8> = __tmp__._1, _err:stdgo.Error = __tmp__._2;
        if (_err != null) {
            return _err;
        };
        var _b:Pointer<stdgo.bytes.Bytes.Reader> = stdgo.bytes.Bytes.newReader(_rels);
        var _rela:Rela64 = new Rela64();
        while (_b.value.len() > ((0 : GoInt))) {
            stdgo.encoding.binary.Binary.read(_b.value, _f.value.fileHeader.byteOrder, Go.toInterface(Go.pointer(_rela)));
            var _symNo:GoUInt64 = (_rela.info >> ((32 : GoUnTypedInt)));
            var _t:R_PPC64 = new R_PPC64((_rela.info & ((65535 : GoUInt64))));
            if (_symNo == ((0 : GoUInt64)) || _symNo > ((_symbols.length : GoUInt64))) {
                continue;
            };
            var _sym:Pointer<Symbol> = Go.pointer(_symbols[_symNo - ((1 : GoUInt64))]);
            if (!_canApplyRelocation(_sym)) {
                continue;
            };
            if (_t.__t__ == r_PPC64_ADDR64.__t__) {
                if (_rela.off + ((8 : GoUInt64)) >= ((_dst.length : GoUInt64)) || _rela.addend < ((0 : GoInt64))) {
                    continue;
                };
                var _val64:GoUInt64 = _sym.value.value + ((_rela.addend : GoUInt64));
                _f.value.fileHeader.byteOrder.putUint64(_dst.__slice__(_rela.off, _rela.off + ((8 : GoUInt64))), _val64);
            } else if (_t.__t__ == r_PPC64_ADDR32.__t__) {
                if (_rela.off + ((4 : GoUInt64)) >= ((_dst.length : GoUInt64)) || _rela.addend < ((0 : GoInt64))) {
                    continue;
                };
                var _val32:GoUInt32 = ((_sym.value.value : GoUInt32)) + ((_rela.addend : GoUInt32));
                _f.value.fileHeader.byteOrder.putUint32(_dst.__slice__(_rela.off, _rela.off + ((4 : GoUInt64))), _val32);
            };
        };
        return ((null : stdgo.Error));
    }
    public function _applyRelocationsPPC(_dst:Slice<GoByte>, _rels:Slice<GoByte>):Error {
        var _f = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        if (_rels.length % ((12 : GoInt)) != ((0 : GoInt))) {
            return stdgo.errors.Errors.new_("length of relocation section is not a multiple of 12");
        };
        var __tmp__ = _f.value._getSymbols(sht_SYMTAB), _symbols:Slice<Symbol> = __tmp__._0, _:Slice<GoUInt8> = __tmp__._1, _err:stdgo.Error = __tmp__._2;
        if (_err != null) {
            return _err;
        };
        var _b:Pointer<stdgo.bytes.Bytes.Reader> = stdgo.bytes.Bytes.newReader(_rels);
        var _rela:Rela32 = new Rela32();
        while (_b.value.len() > ((0 : GoInt))) {
            stdgo.encoding.binary.Binary.read(_b.value, _f.value.fileHeader.byteOrder, Go.toInterface(Go.pointer(_rela)));
            var _symNo:GoUInt32 = (_rela.info >> ((8 : GoUnTypedInt)));
            var _t:R_PPC = new R_PPC((_rela.info & ((255 : GoUInt32))));
            if (_symNo == ((0 : GoUInt32)) || _symNo > ((_symbols.length : GoUInt32))) {
                continue;
            };
            var _sym:Pointer<Symbol> = Go.pointer(_symbols[_symNo - ((1 : GoUInt32))]);
            if (!_canApplyRelocation(_sym)) {
                continue;
            };
            if (_t.__t__ == r_PPC_ADDR32.__t__) {
                if (_rela.off + ((4 : GoUInt32)) >= ((_dst.length : GoUInt32)) || _rela.addend < ((0 : GoInt32))) {
                    continue;
                };
                var _val32:GoUInt32 = ((_sym.value.value : GoUInt32)) + ((_rela.addend : GoUInt32));
                _f.value.fileHeader.byteOrder.putUint32(_dst.__slice__(_rela.off, _rela.off + ((4 : GoUInt32))), _val32);
            };
        };
        return ((null : stdgo.Error));
    }
    public function _applyRelocationsARM64(_dst:Slice<GoByte>, _rels:Slice<GoByte>):Error {
        var _f = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        if (_rels.length % ((24 : GoInt)) != ((0 : GoInt))) {
            return stdgo.errors.Errors.new_("length of relocation section is not a multiple of 24");
        };
        var __tmp__ = _f.value._getSymbols(sht_SYMTAB), _symbols:Slice<Symbol> = __tmp__._0, _:Slice<GoUInt8> = __tmp__._1, _err:stdgo.Error = __tmp__._2;
        if (_err != null) {
            return _err;
        };
        var _b:Pointer<stdgo.bytes.Bytes.Reader> = stdgo.bytes.Bytes.newReader(_rels);
        var _rela:Rela64 = new Rela64();
        while (_b.value.len() > ((0 : GoInt))) {
            stdgo.encoding.binary.Binary.read(_b.value, _f.value.fileHeader.byteOrder, Go.toInterface(Go.pointer(_rela)));
            var _symNo:GoUInt64 = (_rela.info >> ((32 : GoUnTypedInt)));
            var _t:R_AARCH64 = new R_AARCH64((_rela.info & ((65535 : GoUInt64))));
            if (_symNo == ((0 : GoUInt64)) || _symNo > ((_symbols.length : GoUInt64))) {
                continue;
            };
            var _sym:Pointer<Symbol> = Go.pointer(_symbols[_symNo - ((1 : GoUInt64))]);
            if (!_canApplyRelocation(_sym)) {
                continue;
            };
            if (_t.__t__ == r_AARCH64_ABS64.__t__) {
                if (_rela.off + ((8 : GoUInt64)) >= ((_dst.length : GoUInt64)) || _rela.addend < ((0 : GoInt64))) {
                    continue;
                };
                var _val64:GoUInt64 = _sym.value.value + ((_rela.addend : GoUInt64));
                _f.value.fileHeader.byteOrder.putUint64(_dst.__slice__(_rela.off, _rela.off + ((8 : GoUInt64))), _val64);
            } else if (_t.__t__ == r_AARCH64_ABS32.__t__) {
                if (_rela.off + ((4 : GoUInt64)) >= ((_dst.length : GoUInt64)) || _rela.addend < ((0 : GoInt64))) {
                    continue;
                };
                var _val32:GoUInt32 = ((_sym.value.value : GoUInt32)) + ((_rela.addend : GoUInt32));
                _f.value.fileHeader.byteOrder.putUint32(_dst.__slice__(_rela.off, _rela.off + ((4 : GoUInt64))), _val32);
            };
        };
        return ((null : stdgo.Error));
    }
    public function _applyRelocationsARM(_dst:Slice<GoByte>, _rels:Slice<GoByte>):Error {
        var _f = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        if (_rels.length % ((8 : GoInt)) != ((0 : GoInt))) {
            return stdgo.errors.Errors.new_("length of relocation section is not a multiple of 8");
        };
        var __tmp__ = _f.value._getSymbols(sht_SYMTAB), _symbols:Slice<Symbol> = __tmp__._0, _:Slice<GoUInt8> = __tmp__._1, _err:stdgo.Error = __tmp__._2;
        if (_err != null) {
            return _err;
        };
        var _b:Pointer<stdgo.bytes.Bytes.Reader> = stdgo.bytes.Bytes.newReader(_rels);
        var _rel:Rel32 = new Rel32();
        while (_b.value.len() > ((0 : GoInt))) {
            stdgo.encoding.binary.Binary.read(_b.value, _f.value.fileHeader.byteOrder, Go.toInterface(Go.pointer(_rel)));
            var _symNo:GoUInt32 = (_rel.info >> ((8 : GoUnTypedInt)));
            var _t:R_ARM = new R_ARM((_rel.info & ((255 : GoUInt32))));
            if (_symNo == ((0 : GoUInt32)) || _symNo > ((_symbols.length : GoUInt32))) {
                continue;
            };
            var _sym:Pointer<Symbol> = Go.pointer(_symbols[_symNo - ((1 : GoUInt32))]);
            if (_t.__t__ == r_ARM_ABS32.__t__) {
                if (_rel.off + ((4 : GoUInt32)) >= ((_dst.length : GoUInt32))) {
                    continue;
                };
                var _val:GoUInt32 = _f.value.fileHeader.byteOrder.uint32(_dst.__slice__(_rel.off, _rel.off + ((4 : GoUInt32))));
                _val = _val + (((_sym.value.value : GoUInt32)));
                _f.value.fileHeader.byteOrder.putUint32(_dst.__slice__(_rel.off, _rel.off + ((4 : GoUInt32))), _val);
            };
        };
        return ((null : stdgo.Error));
    }
    public function _applyRelocations386(_dst:Slice<GoByte>, _rels:Slice<GoByte>):Error {
        var _f = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        if (_rels.length % ((8 : GoInt)) != ((0 : GoInt))) {
            return stdgo.errors.Errors.new_("length of relocation section is not a multiple of 8");
        };
        var __tmp__ = _f.value._getSymbols(sht_SYMTAB), _symbols:Slice<Symbol> = __tmp__._0, _:Slice<GoUInt8> = __tmp__._1, _err:stdgo.Error = __tmp__._2;
        if (_err != null) {
            return _err;
        };
        var _b:Pointer<stdgo.bytes.Bytes.Reader> = stdgo.bytes.Bytes.newReader(_rels);
        var _rel:Rel32 = new Rel32();
        while (_b.value.len() > ((0 : GoInt))) {
            stdgo.encoding.binary.Binary.read(_b.value, _f.value.fileHeader.byteOrder, Go.toInterface(Go.pointer(_rel)));
            var _symNo:GoUInt32 = (_rel.info >> ((8 : GoUnTypedInt)));
            var _t:R_386 = new R_386((_rel.info & ((255 : GoUInt32))));
            if (_symNo == ((0 : GoUInt32)) || _symNo > ((_symbols.length : GoUInt32))) {
                continue;
            };
            var _sym:Pointer<Symbol> = Go.pointer(_symbols[_symNo - ((1 : GoUInt32))]);
            if (_t.__t__ == r_386_32.__t__) {
                if (_rel.off + ((4 : GoUInt32)) >= ((_dst.length : GoUInt32))) {
                    continue;
                };
                var _val:GoUInt32 = _f.value.fileHeader.byteOrder.uint32(_dst.__slice__(_rel.off, _rel.off + ((4 : GoUInt32))));
                _val = _val + (((_sym.value.value : GoUInt32)));
                _f.value.fileHeader.byteOrder.putUint32(_dst.__slice__(_rel.off, _rel.off + ((4 : GoUInt32))), _val);
            };
        };
        return ((null : stdgo.Error));
    }
    public function _applyRelocationsAMD64(_dst:Slice<GoByte>, _rels:Slice<GoByte>):Error {
        var _f = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        if (_rels.length % ((24 : GoInt)) != ((0 : GoInt))) {
            return stdgo.errors.Errors.new_("length of relocation section is not a multiple of 24");
        };
        var __tmp__ = _f.value._getSymbols(sht_SYMTAB), _symbols:Slice<Symbol> = __tmp__._0, _:Slice<GoUInt8> = __tmp__._1, _err:stdgo.Error = __tmp__._2;
        if (_err != null) {
            return _err;
        };
        var _b:Pointer<stdgo.bytes.Bytes.Reader> = stdgo.bytes.Bytes.newReader(_rels);
        var _rela:Rela64 = new Rela64();
        while (_b.value.len() > ((0 : GoInt))) {
            stdgo.encoding.binary.Binary.read(_b.value, _f.value.fileHeader.byteOrder, Go.toInterface(Go.pointer(_rela)));
            var _symNo:GoUInt64 = (_rela.info >> ((32 : GoUnTypedInt)));
            var _t:R_X86_64 = new R_X86_64((_rela.info & ((65535 : GoUInt64))));
            if (_symNo == ((0 : GoUInt64)) || _symNo > ((_symbols.length : GoUInt64))) {
                continue;
            };
            var _sym:Pointer<Symbol> = Go.pointer(_symbols[_symNo - ((1 : GoUInt64))]);
            if (!_canApplyRelocation(_sym)) {
                continue;
            };
            if (_t.__t__ == r_X86_64_64.__t__) {
                if (_rela.off + ((8 : GoUInt64)) >= ((_dst.length : GoUInt64)) || _rela.addend < ((0 : GoInt64))) {
                    continue;
                };
                var _val64:GoUInt64 = _sym.value.value + ((_rela.addend : GoUInt64));
                _f.value.fileHeader.byteOrder.putUint64(_dst.__slice__(_rela.off, _rela.off + ((8 : GoUInt64))), _val64);
            } else if (_t.__t__ == r_X86_64_32.__t__) {
                if (_rela.off + ((4 : GoUInt64)) >= ((_dst.length : GoUInt64)) || _rela.addend < ((0 : GoInt64))) {
                    continue;
                };
                var _val32:GoUInt32 = ((_sym.value.value : GoUInt32)) + ((_rela.addend : GoUInt32));
                _f.value.fileHeader.byteOrder.putUint32(_dst.__slice__(_rela.off, _rela.off + ((4 : GoUInt64))), _val32);
            };
        };
        return ((null : stdgo.Error));
    }
    public function _applyRelocations(_dst:Slice<GoByte>, _rels:Slice<GoByte>):Error {
        var _f = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        if (_f.value.fileHeader.class_.__t__ == elfclass64.__t__ && _f.value.fileHeader.machine.__t__ == em_X86_64.__t__) {
            return _f.value._applyRelocationsAMD64(_dst, _rels);
        } else if (_f.value.fileHeader.class_.__t__ == elfclass32.__t__ && _f.value.fileHeader.machine.__t__ == em_386.__t__) {
            return _f.value._applyRelocations386(_dst, _rels);
        } else if (_f.value.fileHeader.class_.__t__ == elfclass32.__t__ && _f.value.fileHeader.machine.__t__ == em_ARM.__t__) {
            return _f.value._applyRelocationsARM(_dst, _rels);
        } else if (_f.value.fileHeader.class_.__t__ == elfclass64.__t__ && _f.value.fileHeader.machine.__t__ == em_AARCH64.__t__) {
            return _f.value._applyRelocationsARM64(_dst, _rels);
        } else if (_f.value.fileHeader.class_.__t__ == elfclass32.__t__ && _f.value.fileHeader.machine.__t__ == em_PPC.__t__) {
            return _f.value._applyRelocationsPPC(_dst, _rels);
        } else if (_f.value.fileHeader.class_.__t__ == elfclass64.__t__ && _f.value.fileHeader.machine.__t__ == em_PPC64.__t__) {
            return _f.value._applyRelocationsPPC64(_dst, _rels);
        } else if (_f.value.fileHeader.class_.__t__ == elfclass32.__t__ && _f.value.fileHeader.machine.__t__ == em_MIPS.__t__) {
            return _f.value._applyRelocationsMIPS(_dst, _rels);
        } else if (_f.value.fileHeader.class_.__t__ == elfclass64.__t__ && _f.value.fileHeader.machine.__t__ == em_MIPS.__t__) {
            return _f.value._applyRelocationsMIPS64(_dst, _rels);
        } else if (_f.value.fileHeader.class_.__t__ == elfclass64.__t__ && _f.value.fileHeader.machine.__t__ == em_RISCV.__t__) {
            return _f.value._applyRelocationsRISCV64(_dst, _rels);
        } else if (_f.value.fileHeader.class_.__t__ == elfclass64.__t__ && _f.value.fileHeader.machine.__t__ == em_S390.__t__) {
            return _f.value._applyRelocationss390x(_dst, _rels);
        } else if (_f.value.fileHeader.class_.__t__ == elfclass64.__t__ && _f.value.fileHeader.machine.__t__ == em_SPARCV9.__t__) {
            return _f.value._applyRelocationsSPARC64(_dst, _rels);
        } else {
            return stdgo.errors.Errors.new_("applyRelocations: not implemented");
        };
    }
    public function section(_name:GoString):Pointer<Section> {
        var _f = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        for (_s in _f.value.sections) {
            if (_s.value.sectionHeader.name == _name) {
                return _s;
            };
        };
        return new Pointer<Section>().nil();
    }
    public function _getSymbols64(_typ:SectionType):{ var _0 : Slice<Symbol>; var _1 : Slice<GoByte>; var _2 : Error; } {
        var _f = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        var _symtabSection:Pointer<Section> = _f.value.sectionByType(_typ);
        if (_symtabSection == null || _symtabSection.isNil()) {
            return { _0 : new Slice<Symbol>().nil(), _1 : new Slice<GoUInt8>().nil(), _2 : errNoSymbols };
        };
        var __tmp__ = _symtabSection.value.data(), _data:Slice<GoUInt8> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            return { _0 : new Slice<Symbol>().nil(), _1 : new Slice<GoUInt8>().nil(), _2 : stdgo.errors.Errors.new_("cannot load symbol section") };
        };
        var _symtab:Pointer<stdgo.bytes.Bytes.Reader> = stdgo.bytes.Bytes.newReader(_data);
        if (_symtab.value.len() % sym64Size != ((0 : GoInt))) {
            return { _0 : new Slice<Symbol>().nil(), _1 : new Slice<GoUInt8>().nil(), _2 : stdgo.errors.Errors.new_("length of symbol section is not a multiple of Sym64Size") };
        };
        var __tmp__ = _f.value._stringTable(_symtabSection.value.sectionHeader.link), _strdata:Slice<GoUInt8> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            return { _0 : new Slice<Symbol>().nil(), _1 : new Slice<GoUInt8>().nil(), _2 : stdgo.errors.Errors.new_("cannot load string table section") };
        };
        var _skip:GoArray<GoByte> = new GoArray<GoUInt8>(...[for (i in 0 ... 24) ((0 : GoUInt8))]);
        _symtab.value.read(_skip.__slice__(0));
        var _symbols:Slice<Symbol> = new Slice<Symbol>(...[for (i in 0 ... ((_symtab.value.len() / sym64Size : GoInt)).toBasic()) new Symbol()]);
        var _i:GoInt = ((0 : GoInt));
        var _sym:Sym64 = new Sym64();
        while (_symtab.value.len() > ((0 : GoInt))) {
            stdgo.encoding.binary.Binary.read(_symtab.value, _f.value.fileHeader.byteOrder, Go.toInterface(Go.pointer(_sym)));
            var __tmp__ = _getString(_strdata, ((_sym.name : GoInt))), _str:GoString = __tmp__._0, _:Bool = __tmp__._1;
            _symbols[_i].name = _str;
            _symbols[_i].info = _sym.info;
            _symbols[_i].other = _sym.other;
            _symbols[_i].section = new SectionIndex(_sym.shndx);
            _symbols[_i].value = _sym.value;
            _symbols[_i].size = _sym.size;
            _i++;
        };
        return { _0 : _symbols, _1 : _strdata, _2 : ((null : stdgo.Error)) };
    }
    public function _getSymbols32(_typ:SectionType):{ var _0 : Slice<Symbol>; var _1 : Slice<GoByte>; var _2 : Error; } {
        var _f = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        var _symtabSection:Pointer<Section> = _f.value.sectionByType(_typ);
        if (_symtabSection == null || _symtabSection.isNil()) {
            return { _0 : new Slice<Symbol>().nil(), _1 : new Slice<GoUInt8>().nil(), _2 : errNoSymbols };
        };
        var __tmp__ = _symtabSection.value.data(), _data:Slice<GoUInt8> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            return { _0 : new Slice<Symbol>().nil(), _1 : new Slice<GoUInt8>().nil(), _2 : stdgo.errors.Errors.new_("cannot load symbol section") };
        };
        var _symtab:Pointer<stdgo.bytes.Bytes.Reader> = stdgo.bytes.Bytes.newReader(_data);
        if (_symtab.value.len() % sym32Size != ((0 : GoInt))) {
            return { _0 : new Slice<Symbol>().nil(), _1 : new Slice<GoUInt8>().nil(), _2 : stdgo.errors.Errors.new_("length of symbol section is not a multiple of SymSize") };
        };
        var __tmp__ = _f.value._stringTable(_symtabSection.value.sectionHeader.link), _strdata:Slice<GoUInt8> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            return { _0 : new Slice<Symbol>().nil(), _1 : new Slice<GoUInt8>().nil(), _2 : stdgo.errors.Errors.new_("cannot load string table section") };
        };
        var _skip:GoArray<GoByte> = new GoArray<GoUInt8>(...[for (i in 0 ... 16) ((0 : GoUInt8))]);
        _symtab.value.read(_skip.__slice__(0));
        var _symbols:Slice<Symbol> = new Slice<Symbol>(...[for (i in 0 ... ((_symtab.value.len() / sym32Size : GoInt)).toBasic()) new Symbol()]);
        var _i:GoInt = ((0 : GoInt));
        var _sym:Sym32 = new Sym32();
        while (_symtab.value.len() > ((0 : GoInt))) {
            stdgo.encoding.binary.Binary.read(_symtab.value, _f.value.fileHeader.byteOrder, Go.toInterface(Go.pointer(_sym)));
            var __tmp__ = _getString(_strdata, ((_sym.name : GoInt))), _str:GoString = __tmp__._0, _:Bool = __tmp__._1;
            _symbols[_i].name = _str;
            _symbols[_i].info = _sym.info;
            _symbols[_i].other = _sym.other;
            _symbols[_i].section = new SectionIndex(_sym.shndx);
            _symbols[_i].value = ((_sym.value : GoUInt64));
            _symbols[_i].size = ((_sym.size : GoUInt64));
            _i++;
        };
        return { _0 : _symbols, _1 : _strdata, _2 : ((null : stdgo.Error)) };
    }
    public function _getSymbols(_typ:SectionType):{ var _0 : Slice<Symbol>; var _1 : Slice<GoByte>; var _2 : Error; } {
        var _f = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        if (_f.value.fileHeader.class_.__t__ == elfclass64.__t__) {
            return _f.value._getSymbols64(_typ);
        } else if (_f.value.fileHeader.class_.__t__ == elfclass32.__t__) {
            return _f.value._getSymbols32(_typ);
        };
        return { _0 : new Slice<Symbol>().nil(), _1 : new Slice<GoUInt8>().nil(), _2 : stdgo.errors.Errors.new_("not implemented") };
    }
    public function sectionByType(_typ:SectionType):Pointer<Section> {
        var _f = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        for (_s in _f.value.sections) {
            if (_s.value.sectionHeader.type.__t__ == _typ.__t__) {
                return _s;
            };
        };
        return new Pointer<Section>().nil();
    }
    public function close():Error {
        var _f = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        var _err:Error = ((null : stdgo.Error));
        if (_f.value._closer != null) {
            _err = _f.value._closer.close();
            _f.value._closer = ((null : stdgo.io.Io.Closer));
        };
        return _err;
    }
    public function _stringTable(_link:GoUInt32):{ var _0 : Slice<GoByte>; var _1 : Error; } {
        var _f = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        if (_link <= ((0 : GoUInt32)) || _link >= ((_f.value.sections.length : GoUInt32))) {
            return { _0 : new Slice<GoUInt8>().nil(), _1 : stdgo.errors.Errors.new_("section has invalid string table link") };
        };
        return _f.value.sections[_link].value.data();
    }
    @:embedded
    public var fileHeader : FileHeader = new FileHeader();
    public var sections : Slice<Pointer<Section>> = new Slice<Pointer<Section>>().nil();
    public var progs : Slice<Pointer<Prog>> = new Slice<Pointer<Prog>>().nil();
    public var _closer : stdgo.io.Io.Closer = ((null : stdgo.io.Io.Closer));
    public var _gnuNeed : Slice<T_verneed> = new Slice<T_verneed>().nil();
    public var _gnuVersym : Slice<GoUInt8> = new Slice<GoUInt8>().nil();
    public function new(?fileHeader:FileHeader, ?sections:Slice<Pointer<Section>>, ?progs:Slice<Pointer<Prog>>, ?_closer:stdgo.io.Io.Closer, ?_gnuNeed:Slice<T_verneed>, ?_gnuVersym:Slice<GoUInt8>) stdgo.internal.Macro.initLocals();
    public function toString() {
        return '{' + Go.string(fileHeader) + " " + Go.string(sections) + " " + Go.string(progs) + " " + Go.string(_closer) + " " + Go.string(_gnuNeed) + " " + Go.string(_gnuVersym) + "}";
    }
    public function __underlying__():AnyInterface return Go.toInterface(this);
    public function __copy__() {
        return new File(fileHeader, sections, progs, _closer, _gnuNeed, _gnuVersym);
    }
    public function __set__(__tmp__) {
        this.fileHeader = __tmp__.fileHeader;
        this.sections = __tmp__.sections;
        this.progs = __tmp__.progs;
        this._closer = __tmp__._closer;
        this._gnuNeed = __tmp__._gnuNeed;
        this._gnuVersym = __tmp__._gnuVersym;
        return this;
    }
}
@:structInit class SectionHeader {
    public var name : GoString = (("" : GoString));
    public var type : SectionType = new SectionType();
    public var flags : SectionFlag = new SectionFlag();
    public var addr : GoUInt64 = ((0 : GoUInt64));
    public var offset : GoUInt64 = ((0 : GoUInt64));
    public var size : GoUInt64 = ((0 : GoUInt64));
    public var link : GoUInt32 = ((0 : GoUInt32));
    public var info : GoUInt32 = ((0 : GoUInt32));
    public var addralign : GoUInt64 = ((0 : GoUInt64));
    public var entsize : GoUInt64 = ((0 : GoUInt64));
    public var fileSize : GoUInt64 = ((0 : GoUInt64));
    public function new(?name:GoString, ?type:SectionType, ?flags:SectionFlag, ?addr:GoUInt64, ?offset:GoUInt64, ?size:GoUInt64, ?link:GoUInt32, ?info:GoUInt32, ?addralign:GoUInt64, ?entsize:GoUInt64, ?fileSize:GoUInt64) stdgo.internal.Macro.initLocals();
    public function toString() {
        return '{' + Go.string(name) + " " + Go.string(type) + " " + Go.string(flags) + " " + Go.string(addr) + " " + Go.string(offset) + " " + Go.string(size) + " " + Go.string(link) + " " + Go.string(info) + " " + Go.string(addralign) + " " + Go.string(entsize) + " " + Go.string(fileSize) + "}";
    }
    public function __underlying__():AnyInterface return Go.toInterface(this);
    public function __copy__() {
        return new SectionHeader(
name,
type,
flags,
addr,
offset,
size,
link,
info,
addralign,
entsize,
fileSize);
    }
    public function __set__(__tmp__) {
        this.name = __tmp__.name;
        this.type = __tmp__.type;
        this.flags = __tmp__.flags;
        this.addr = __tmp__.addr;
        this.offset = __tmp__.offset;
        this.size = __tmp__.size;
        this.link = __tmp__.link;
        this.info = __tmp__.info;
        this.addralign = __tmp__.addralign;
        this.entsize = __tmp__.entsize;
        this.fileSize = __tmp__.fileSize;
        return this;
    }
}
@:structInit class Section {
    public function open():stdgo.io.Io.ReadSeeker {
        var _s = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        if (new SectionFlag(_s.value.sectionHeader.flags.__t__ & shf_COMPRESSED.__t__).__t__ == ((0 : GoUInt32))) {
            return stdgo.io.Io.newSectionReader(_s.value._sr.value, ((0 : GoInt64)), (((1 : GoUnTypedInt)) << ((63 : GoUnTypedInt))) - ((1 : GoUnTypedInt))).value;
        };
        if (_s.value._compressionType.__t__ == compress_ZLIB.__t__) {
            return Go.pointer((({ _reset : function():{ var _0 : stdgo.io.Io.Reader; var _1 : Error; } {
                var _fr:Pointer<stdgo.io.Io.SectionReader> = stdgo.io.Io.newSectionReader(_s.value._sr.value, _s.value._compressionOffset, ((_s.value.sectionHeader.fileSize : GoInt64)) - _s.value._compressionOffset);
                return stdgo.compress.zlib.Zlib.newReader(_fr.value);
            }, _size : ((_s.value.sectionHeader.size : GoInt64)), _r : ((null : stdgo.io.Io.Reader)), _offset : 0 } : T_readSeekerFromReader))).value;
        };
        var _err:Pointer<FormatError> = Go.pointer(new FormatError(((_s.value.sectionHeader.offset : GoInt64)), "unknown compression type", Go.toInterface(_s.value._compressionType)));
        return new T_errorReader(_err.value).__copy__();
    }
    public function data():{ var _0 : Slice<GoByte>; var _1 : Error; } {
        var _s = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        var _dat:Slice<GoUInt8> = new Slice<GoUInt8>(...[for (i in 0 ... ((_s.value.sectionHeader.size : GoInt)).toBasic()) ((0 : GoUInt8))]);
        var __tmp__ = stdgo.io.Io.readFull(_s.value.open(), _dat), _n:GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        return { _0 : _dat.__slice__(((0 : GoInt)), _n), _1 : _err };
    }
    @:embedded
    public var sectionHeader : SectionHeader = new SectionHeader();
    @:embedded
    public var readerAt : stdgo.io.Io.ReaderAt = ((null : stdgo.io.Io.ReaderAt));
    public var _sr : Pointer<stdgo.io.Io.SectionReader> = new Pointer<stdgo.io.Io.SectionReader>().nil();
    public var _compressionType : CompressionType = new CompressionType();
    public var _compressionOffset : GoInt64 = ((0 : GoInt64));
    public function new(?sectionHeader:SectionHeader, ?readerAt:stdgo.io.Io.ReaderAt, ?_sr:Pointer<stdgo.io.Io.SectionReader>, ?_compressionType:CompressionType, ?_compressionOffset:GoInt64) stdgo.internal.Macro.initLocals();
    public function toString() {
        return '{' + Go.string(sectionHeader) + " " + Go.string(readerAt) + " " + Go.string(_sr) + " " + Go.string(_compressionType) + " " + Go.string(_compressionOffset) + "}";
    }
    public function readAt(_p:Slice<GoUInt8>, _off:GoInt64):{ var _0 : GoInt; var _1 : stdgo.Error; } return readerAt.readAt(_0, _1);
    public function __underlying__():AnyInterface return Go.toInterface(this);
    public function __copy__() {
        return new Section(sectionHeader, readerAt, _sr, _compressionType, _compressionOffset);
    }
    public function __set__(__tmp__) {
        this.sectionHeader = __tmp__.sectionHeader;
        this.readerAt = __tmp__.readerAt;
        this._sr = __tmp__._sr;
        this._compressionType = __tmp__._compressionType;
        this._compressionOffset = __tmp__._compressionOffset;
        return this;
    }
}
@:structInit class ProgHeader {
    public var type : ProgType = new ProgType();
    public var flags : ProgFlag = new ProgFlag();
    public var off : GoUInt64 = ((0 : GoUInt64));
    public var vaddr : GoUInt64 = ((0 : GoUInt64));
    public var paddr : GoUInt64 = ((0 : GoUInt64));
    public var filesz : GoUInt64 = ((0 : GoUInt64));
    public var memsz : GoUInt64 = ((0 : GoUInt64));
    public var align : GoUInt64 = ((0 : GoUInt64));
    public function new(?type:ProgType, ?flags:ProgFlag, ?off:GoUInt64, ?vaddr:GoUInt64, ?paddr:GoUInt64, ?filesz:GoUInt64, ?memsz:GoUInt64, ?align:GoUInt64) stdgo.internal.Macro.initLocals();
    public function toString() {
        return '{' + Go.string(type) + " " + Go.string(flags) + " " + Go.string(off) + " " + Go.string(vaddr) + " " + Go.string(paddr) + " " + Go.string(filesz) + " " + Go.string(memsz) + " " + Go.string(align) + "}";
    }
    public function __underlying__():AnyInterface return Go.toInterface(this);
    public function __copy__() {
        return new ProgHeader(type, flags, off, vaddr, paddr, filesz, memsz, align);
    }
    public function __set__(__tmp__) {
        this.type = __tmp__.type;
        this.flags = __tmp__.flags;
        this.off = __tmp__.off;
        this.vaddr = __tmp__.vaddr;
        this.paddr = __tmp__.paddr;
        this.filesz = __tmp__.filesz;
        this.memsz = __tmp__.memsz;
        this.align = __tmp__.align;
        return this;
    }
}
@:structInit class Prog {
    public function open():stdgo.io.Io.ReadSeeker {
        var _p = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        return stdgo.io.Io.newSectionReader(_p.value._sr.value, ((0 : GoInt64)), (((1 : GoUnTypedInt)) << ((63 : GoUnTypedInt))) - ((1 : GoUnTypedInt))).value;
    }
    @:embedded
    public var progHeader : ProgHeader = new ProgHeader();
    @:embedded
    public var readerAt : stdgo.io.Io.ReaderAt = ((null : stdgo.io.Io.ReaderAt));
    public var _sr : Pointer<stdgo.io.Io.SectionReader> = new Pointer<stdgo.io.Io.SectionReader>().nil();
    public function new(?progHeader:ProgHeader, ?readerAt:stdgo.io.Io.ReaderAt, ?_sr:Pointer<stdgo.io.Io.SectionReader>) stdgo.internal.Macro.initLocals();
    public function toString() {
        return '{' + Go.string(progHeader) + " " + Go.string(readerAt) + " " + Go.string(_sr) + "}";
    }
    public function readAt(_p:Slice<GoUInt8>, _off:GoInt64):{ var _0 : GoInt; var _1 : stdgo.Error; } return readerAt.readAt(_0, _1);
    public function __underlying__():AnyInterface return Go.toInterface(this);
    public function __copy__() {
        return new Prog(progHeader, readerAt, _sr);
    }
    public function __set__(__tmp__) {
        this.progHeader = __tmp__.progHeader;
        this.readerAt = __tmp__.readerAt;
        this._sr = __tmp__._sr;
        return this;
    }
}
@:structInit class Symbol {
    public var name : GoString = (("" : GoString));
    public var info : GoUInt8 = ((0 : GoUInt8));
    public var other : GoUInt8 = ((0 : GoUInt8));
    public var section : SectionIndex = new SectionIndex();
    public var value : GoUInt64 = ((0 : GoUInt64));
    public var size : GoUInt64 = ((0 : GoUInt64));
    public var version : GoString = (("" : GoString));
    public var library : GoString = (("" : GoString));
    public function new(?name:GoString, ?info:GoUInt8, ?other:GoUInt8, ?section:SectionIndex, ?value:GoUInt64, ?size:GoUInt64, ?version:GoString, ?library:GoString) stdgo.internal.Macro.initLocals();
    public function toString() {
        return '{' + Go.string(name) + " " + Go.string(info) + " " + Go.string(other) + " " + Go.string(section) + " " + Go.string(value) + " " + Go.string(size) + " " + Go.string(version) + " " + Go.string(library) + "}";
    }
    public function __underlying__():AnyInterface return Go.toInterface(this);
    public function __copy__() {
        return new Symbol(name, info, other, section, value, size, version, library);
    }
    public function __set__(__tmp__) {
        this.name = __tmp__.name;
        this.info = __tmp__.info;
        this.other = __tmp__.other;
        this.section = __tmp__.section;
        this.value = __tmp__.value;
        this.size = __tmp__.size;
        this.version = __tmp__.version;
        this.library = __tmp__.library;
        return this;
    }
}
@:structInit class FormatError {
    public function error():GoString {
        var _e = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        var _msg:GoString = _e.value._msg;
        if (_e.value._val != null) {
            _msg = _msg + (stdgo.fmt.Fmt.sprintf(" \'%v\' ", Go.toInterface(_e.value._val)));
        };
        _msg = _msg + (stdgo.fmt.Fmt.sprintf("in record at byte %#x", Go.toInterface(_e.value._off)));
        return _msg;
    }
    public var _off : GoInt64 = ((0 : GoInt64));
    public var _msg : GoString = (("" : GoString));
    public var _val : AnyInterface = ((null : AnyInterface));
    public function new(?_off:GoInt64, ?_msg:GoString, ?_val:AnyInterface) stdgo.internal.Macro.initLocals();
    public function toString() {
        return '{' + Go.string(_off) + " " + Go.string(_msg) + " " + Go.string(_val) + "}";
    }
    public function __underlying__():AnyInterface return Go.toInterface(this);
    public function __copy__() {
        return new FormatError(_off, _msg, _val);
    }
    public function __set__(__tmp__) {
        this._off = __tmp__._off;
        this._msg = __tmp__._msg;
        this._val = __tmp__._val;
        return this;
    }
}
@:structInit class ImportedSymbol {
    public var name : GoString = (("" : GoString));
    public var version : GoString = (("" : GoString));
    public var library : GoString = (("" : GoString));
    public function new(?name:GoString, ?version:GoString, ?library:GoString) stdgo.internal.Macro.initLocals();
    public function toString() {
        return '{' + Go.string(name) + " " + Go.string(version) + " " + Go.string(library) + "}";
    }
    public function __underlying__():AnyInterface return Go.toInterface(this);
    public function __copy__() {
        return new ImportedSymbol(name, version, library);
    }
    public function __set__(__tmp__) {
        this.name = __tmp__.name;
        this.version = __tmp__.version;
        this.library = __tmp__.library;
        return this;
    }
}
@:structInit class T_verneed {
    public var file : GoString = (("" : GoString));
    public var name : GoString = (("" : GoString));
    public function new(?file:GoString, ?name:GoString) stdgo.internal.Macro.initLocals();
    public function toString() {
        return '{' + Go.string(file) + " " + Go.string(name) + "}";
    }
    public function __underlying__():AnyInterface return Go.toInterface(this);
    public function __copy__() {
        return new T_verneed(file, name);
    }
    public function __set__(__tmp__) {
        this.file = __tmp__.file;
        this.name = __tmp__.name;
        return this;
    }
}
@:structInit class T_errorReader {
    public function close():Error {
        var _r = this.__copy__();
        return _r._error;
    }
    public function seek(_offset:GoInt64, _whence:GoInt):{ var _0 : GoInt64; var _1 : Error; } {
        var _r = this.__copy__();
        return { _0 : ((0 : GoInt64)), _1 : _r._error };
    }
    public function readAt(_p:Slice<GoByte>, _off:GoInt64):{ var _0 : GoInt; var _1 : Error; } {
        var _r = this.__copy__();
        var _n:GoInt = ((0 : GoInt)), _err:Error = ((null : stdgo.Error));
        return { _0 : ((0 : GoInt)), _1 : _r._error };
    }
    public function read(_p:Slice<GoByte>):{ var _0 : GoInt; var _1 : Error; } {
        var _r = this.__copy__();
        var _n:GoInt = ((0 : GoInt)), _err:Error = ((null : stdgo.Error));
        return { _0 : ((0 : GoInt)), _1 : _r._error };
    }
    @:embedded
    public var _error : stdgo.Error = ((null : stdgo.Error));
    public function new(?_error:stdgo.Error) stdgo.internal.Macro.initLocals();
    public function toString() {
        return '{' + Go.string(_error) + "}";
    }
    public function error():GoString return _error.error();
    public function __underlying__():AnyInterface return Go.toInterface(this);
    public function __copy__() {
        return new T_errorReader(_error);
    }
    public function __set__(__tmp__) {
        this._error = __tmp__._error;
        return this;
    }
}
@:structInit class T_readSeekerFromReader {
    public function seek(_offset:GoInt64, _whence:GoInt):{ var _0 : GoInt64; var _1 : Error; } {
        var _r = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        var _newOffset:GoInt64 = ((0 : GoInt64));
        if (_whence == _seekStart) {
            _newOffset = _offset;
        } else if (_whence == _seekCurrent) {
            _newOffset = _r.value._offset + _offset;
        } else if (_whence == _seekEnd) {
            _newOffset = _r.value._size + _offset;
        } else {
            return { _0 : ((0 : GoInt64)), _1 : stdgo.os.Os.errInvalid };
        };
        if (_newOffset == _r.value._offset) {
            return { _0 : _newOffset, _1 : ((null : stdgo.Error)) };
        } else if (_newOffset < ((0 : GoInt64)) || _newOffset > _r.value._size) {
            return { _0 : ((0 : GoInt64)), _1 : stdgo.os.Os.errInvalid };
        } else if (_newOffset == ((0 : GoInt64))) {
            _r.value._r = ((null : stdgo.io.Io.Reader));
        } else if (_newOffset == _r.value._size) {
            _r.value._r = new T_errorReader(stdgo.io.Io.eof).__copy__();
        } else {
            if (_newOffset < _r.value._offset) {
                _r.value._start();
            };
            var _buf:GoArray<GoByte> = new GoArray<GoUInt8>(...[for (i in 0 ... 512) ((0 : GoUInt8))]);
            while (_r.value._offset < _newOffset) {
                var _b:Slice<GoUInt8> = _buf.__slice__(0);
                if (_newOffset - _r.value._offset < ((_buf.length : GoInt64))) {
                    _b = _buf.__slice__(0, _newOffset - _r.value._offset);
                };
                {
                    var __tmp__ = _r.value.read(_b), _:GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                    if (_err != null) {
                        return { _0 : ((0 : GoInt64)), _1 : _err };
                    };
                };
            };
        };
        _r.value._offset = _newOffset;
        return { _0 : _r.value._offset, _1 : ((null : stdgo.Error)) };
    }
    public function read(_p:Slice<GoByte>):{ var _0 : GoInt; var _1 : Error; } {
        var _r = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        var _n:GoInt = ((0 : GoInt)), _err:Error = ((null : stdgo.Error));
        if (_r.value._r == null) {
            _r.value._start();
        };
        {
            var __tmp__ = _r.value._r.read(_p);
            _n = __tmp__._0;
            _err = __tmp__._1;
        };
        _r.value._offset = _r.value._offset + (((_n : GoInt64)));
        return { _0 : _n, _1 : _err };
    }
    public function _start():Void {
        var _r = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        var __tmp__ = _r.value._reset(), _x:stdgo.io.Io.Reader = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            _r.value._r = new T_errorReader(_err).__copy__();
        } else {
            _r.value._r = _x;
        };
        _r.value._offset = ((0 : GoInt64));
    }
    public var _reset : () -> { var _0 : stdgo.io.Io.Reader; var _1 : stdgo.Error; } = null;
    public var _r : stdgo.io.Io.Reader = ((null : stdgo.io.Io.Reader));
    public var _size : GoInt64 = ((0 : GoInt64));
    public var _offset : GoInt64 = ((0 : GoInt64));
    public function new(?_reset:() -> { var _0 : stdgo.io.Io.Reader; var _1 : stdgo.Error; }, ?_r:stdgo.io.Io.Reader, ?_size:GoInt64, ?_offset:GoInt64) stdgo.internal.Macro.initLocals();
    public function toString() {
        return '{' + Go.string(_reset) + " " + Go.string(_r) + " " + Go.string(_size) + " " + Go.string(_offset) + "}";
    }
    public function __underlying__():AnyInterface return Go.toInterface(this);
    public function __copy__() {
        return new T_readSeekerFromReader(_reset, _r, _size, _offset);
    }
    public function __set__(__tmp__) {
        this._reset = __tmp__._reset;
        this._r = __tmp__._r;
        this._size = __tmp__._size;
        this._offset = __tmp__._offset;
        return this;
    }
}
final r_ARM_TLS_LDM32 : R_ARM = new R_ARM(((105 : GoInt)));
final r_SPARC_PLT64 : R_SPARC = new R_SPARC(((47 : GoInt)));
final r_MIPS_ADD_IMMEDIATE : R_MIPS = new R_MIPS(((34 : GoInt)));
final r_AARCH64_LD64_GOTPAGE_LO15 : R_AARCH64 = new R_AARCH64(((313 : GoInt)));
final r_SPARC_PLT32 : R_SPARC = new R_SPARC(((24 : GoInt)));
final r_ALPHA_IMMED_GP_16 : R_ALPHA = new R_ALPHA(((19 : GoInt)));
final r_ARM_GOTOFF12 : R_ARM = new R_ARM(((98 : GoInt)));
final r_MIPS_64 : R_MIPS = new R_MIPS(((18 : GoInt)));
final em_STXP7X : Machine = new Machine(((166 : GoUInt16)));
final r_ARM_LDC_SB_G0 : R_ARM = new R_ARM(((81 : GoInt)));
final r_AARCH64_TLSDESC_ADR_PREL21 : R_AARCH64 = new R_AARCH64(((561 : GoInt)));
final r_ARM_LDC_SB_G1 : R_ARM = new R_ARM(((82 : GoInt)));
final r_MIPS_32 : R_MIPS = new R_MIPS(((2 : GoInt)));
final r_ALPHA_REFQUAD : R_ALPHA = new R_ALPHA(((2 : GoInt)));
final r_PPC64_ADDR14_BRTAKEN : R_PPC64 = new R_PPC64(((8 : GoInt)));
final r_ARM_LDC_SB_G2 : R_ARM = new R_ARM(((83 : GoInt)));
final dt_MIPS_IVERSION : DynTag = new DynTag(((1879048196 : GoInt)));
final em_KMX16 : Machine = new Machine(((212 : GoUInt16)));
final r_390_GLOB_DAT : R_390 = new R_390(((10 : GoInt)));
final r_MIPS_RELGOT : R_MIPS = new R_MIPS(((36 : GoInt)));
final em_BLACKFIN : Machine = new Machine(((106 : GoUInt16)));
final em_VIDEOCORE : Machine = new Machine(((95 : GoUInt16)));
final r_SPARC_PC_HM10 : R_SPARC = new R_SPARC(((38 : GoInt)));
final r_PPC64_GOT_TLSLD16_HA : R_PPC64 = new R_PPC64(((86 : GoInt)));
final dt_MIPS_DELTA_RELOC : DynTag = new DynTag(((1879048219 : GoInt)));
final r_AARCH64_PREL16 : R_AARCH64 = new R_AARCH64(((262 : GoInt)));
final r_PPC_EMB_SDA21 : R_PPC = new R_PPC(((109 : GoInt)));
final r_AARCH64_ADR_PREL_LO21 : R_AARCH64 = new R_AARCH64(((274 : GoInt)));
final pt_OPENBSD_BOOTDATA : ProgType = new ProgType(((1705253862 : GoInt)));
final r_386_GOT32X : R_386 = new R_386(((43 : GoInt)));
final em_ALPHA_STD : Machine = new Machine(((41 : GoUInt16)));
var _sttStrings : Slice<T_intName> = new Slice<T_intName>(
new T_intName(((0 : GoUInt32)), "STT_NOTYPE").__copy__(),
new T_intName(((1 : GoUInt32)), "STT_OBJECT").__copy__(),
new T_intName(((2 : GoUInt32)), "STT_FUNC").__copy__(),
new T_intName(((3 : GoUInt32)), "STT_SECTION").__copy__(),
new T_intName(((4 : GoUInt32)), "STT_FILE").__copy__(),
new T_intName(((5 : GoUInt32)), "STT_COMMON").__copy__(),
new T_intName(((6 : GoUInt32)), "STT_TLS").__copy__(),
new T_intName(((10 : GoUInt32)), "STT_LOOS").__copy__(),
new T_intName(((12 : GoUInt32)), "STT_HIOS").__copy__(),
new T_intName(((13 : GoUInt32)), "STT_LOPROC").__copy__(),
new T_intName(((15 : GoUInt32)), "STT_HIPROC").__copy__());
final r_PPC_SDAREL16 : R_PPC = new R_PPC(((32 : GoInt)));
final r_MIPS_NONE : R_MIPS = new R_MIPS(((0 : GoInt)));
final r_PPC64_TOC : R_PPC64 = new R_PPC64(((51 : GoInt)));
final r_PPC64_DTPREL16_HIGH : R_PPC64 = new R_PPC64(((114 : GoInt)));
final r_PPC64_TPREL16_LO : R_PPC64 = new R_PPC64(((70 : GoInt)));
final r_PPC64_TOC16_LO_DS : R_PPC64 = new R_PPC64(((64 : GoInt)));
final r_PPC64_ENTRY : R_PPC64 = new R_PPC64(((118 : GoInt)));
final em_FT32 : Machine = new Machine(((222 : GoUInt16)));
final r_PPC64_GOT_TLSLD16_HI : R_PPC64 = new R_PPC64(((85 : GoInt)));
final r_PPC_GOT_TPREL16_LO : R_PPC = new R_PPC(((88 : GoInt)));
final r_AARCH64_TLS_DTPMOD64 : R_AARCH64 = new R_AARCH64(((1028 : GoInt)));
final sht_RELA : SectionType = new SectionType(((4 : GoUInt32)));
final r_ALPHA_OP_PSUB : R_ALPHA = new R_ALPHA(((14 : GoInt)));
final em_SEP : Machine = new Machine(((108 : GoUInt16)));
final r_390_8 : R_390 = new R_390(((1 : GoInt)));
final r_ARM_SBREL31 : R_ARM = new R_ARM(((39 : GoInt)));
var _rppc64Strings : Slice<T_intName> = new Slice<T_intName>(
new T_intName(((0 : GoUInt32)), "R_PPC64_NONE").__copy__(),
new T_intName(((1 : GoUInt32)), "R_PPC64_ADDR32").__copy__(),
new T_intName(((2 : GoUInt32)), "R_PPC64_ADDR24").__copy__(),
new T_intName(((3 : GoUInt32)), "R_PPC64_ADDR16").__copy__(),
new T_intName(((4 : GoUInt32)), "R_PPC64_ADDR16_LO").__copy__(),
new T_intName(((5 : GoUInt32)), "R_PPC64_ADDR16_HI").__copy__(),
new T_intName(((6 : GoUInt32)), "R_PPC64_ADDR16_HA").__copy__(),
new T_intName(((7 : GoUInt32)), "R_PPC64_ADDR14").__copy__(),
new T_intName(((8 : GoUInt32)), "R_PPC64_ADDR14_BRTAKEN").__copy__(),
new T_intName(((9 : GoUInt32)), "R_PPC64_ADDR14_BRNTAKEN").__copy__(),
new T_intName(((10 : GoUInt32)), "R_PPC64_REL24").__copy__(),
new T_intName(((11 : GoUInt32)), "R_PPC64_REL14").__copy__(),
new T_intName(((12 : GoUInt32)), "R_PPC64_REL14_BRTAKEN").__copy__(),
new T_intName(((13 : GoUInt32)), "R_PPC64_REL14_BRNTAKEN").__copy__(),
new T_intName(((14 : GoUInt32)), "R_PPC64_GOT16").__copy__(),
new T_intName(((15 : GoUInt32)), "R_PPC64_GOT16_LO").__copy__(),
new T_intName(((16 : GoUInt32)), "R_PPC64_GOT16_HI").__copy__(),
new T_intName(((17 : GoUInt32)), "R_PPC64_GOT16_HA").__copy__(),
new T_intName(((21 : GoUInt32)), "R_PPC64_JMP_SLOT").__copy__(),
new T_intName(((26 : GoUInt32)), "R_PPC64_REL32").__copy__(),
new T_intName(((38 : GoUInt32)), "R_PPC64_ADDR64").__copy__(),
new T_intName(((39 : GoUInt32)), "R_PPC64_ADDR16_HIGHER").__copy__(),
new T_intName(((40 : GoUInt32)), "R_PPC64_ADDR16_HIGHERA").__copy__(),
new T_intName(((41 : GoUInt32)), "R_PPC64_ADDR16_HIGHEST").__copy__(),
new T_intName(((42 : GoUInt32)), "R_PPC64_ADDR16_HIGHESTA").__copy__(),
new T_intName(((44 : GoUInt32)), "R_PPC64_REL64").__copy__(),
new T_intName(((47 : GoUInt32)), "R_PPC64_TOC16").__copy__(),
new T_intName(((48 : GoUInt32)), "R_PPC64_TOC16_LO").__copy__(),
new T_intName(((49 : GoUInt32)), "R_PPC64_TOC16_HI").__copy__(),
new T_intName(((50 : GoUInt32)), "R_PPC64_TOC16_HA").__copy__(),
new T_intName(((51 : GoUInt32)), "R_PPC64_TOC").__copy__(),
new T_intName(((52 : GoUInt32)), "R_PPC64_PLTGOT16").__copy__(),
new T_intName(((53 : GoUInt32)), "R_PPC64_PLTGOT16_LO").__copy__(),
new T_intName(((54 : GoUInt32)), "R_PPC64_PLTGOT16_HI").__copy__(),
new T_intName(((55 : GoUInt32)), "R_PPC64_PLTGOT16_HA").__copy__(),
new T_intName(((56 : GoUInt32)), "R_PPC64_ADDR16_DS").__copy__(),
new T_intName(((57 : GoUInt32)), "R_PPC64_ADDR16_LO_DS").__copy__(),
new T_intName(((58 : GoUInt32)), "R_PPC64_GOT16_DS").__copy__(),
new T_intName(((59 : GoUInt32)), "R_PPC64_GOT16_LO_DS").__copy__(),
new T_intName(((60 : GoUInt32)), "R_PPC64_PLT16_LO_DS").__copy__(),
new T_intName(((61 : GoUInt32)), "R_PPC64_SECTOFF_DS").__copy__(),
new T_intName(((61 : GoUInt32)), "R_PPC64_SECTOFF_LO_DS").__copy__(),
new T_intName(((63 : GoUInt32)), "R_PPC64_TOC16_DS").__copy__(),
new T_intName(((64 : GoUInt32)), "R_PPC64_TOC16_LO_DS").__copy__(),
new T_intName(((65 : GoUInt32)), "R_PPC64_PLTGOT16_DS").__copy__(),
new T_intName(((66 : GoUInt32)), "R_PPC64_PLTGOT_LO_DS").__copy__(),
new T_intName(((67 : GoUInt32)), "R_PPC64_TLS").__copy__(),
new T_intName(((68 : GoUInt32)), "R_PPC64_DTPMOD64").__copy__(),
new T_intName(((69 : GoUInt32)), "R_PPC64_TPREL16").__copy__(),
new T_intName(((70 : GoUInt32)), "R_PPC64_TPREL16_LO").__copy__(),
new T_intName(((71 : GoUInt32)), "R_PPC64_TPREL16_HI").__copy__(),
new T_intName(((72 : GoUInt32)), "R_PPC64_TPREL16_HA").__copy__(),
new T_intName(((73 : GoUInt32)), "R_PPC64_TPREL64").__copy__(),
new T_intName(((74 : GoUInt32)), "R_PPC64_DTPREL16").__copy__(),
new T_intName(((75 : GoUInt32)), "R_PPC64_DTPREL16_LO").__copy__(),
new T_intName(((76 : GoUInt32)), "R_PPC64_DTPREL16_HI").__copy__(),
new T_intName(((77 : GoUInt32)), "R_PPC64_DTPREL16_HA").__copy__(),
new T_intName(((78 : GoUInt32)), "R_PPC64_DTPREL64").__copy__(),
new T_intName(((79 : GoUInt32)), "R_PPC64_GOT_TLSGD16").__copy__(),
new T_intName(((80 : GoUInt32)), "R_PPC64_GOT_TLSGD16_LO").__copy__(),
new T_intName(((81 : GoUInt32)), "R_PPC64_GOT_TLSGD16_HI").__copy__(),
new T_intName(((82 : GoUInt32)), "R_PPC64_GOT_TLSGD16_HA").__copy__(),
new T_intName(((83 : GoUInt32)), "R_PPC64_GOT_TLSLD16").__copy__(),
new T_intName(((84 : GoUInt32)), "R_PPC64_GOT_TLSLD16_LO").__copy__(),
new T_intName(((85 : GoUInt32)), "R_PPC64_GOT_TLSLD16_HI").__copy__(),
new T_intName(((86 : GoUInt32)), "R_PPC64_GOT_TLSLD16_HA").__copy__(),
new T_intName(((87 : GoUInt32)), "R_PPC64_GOT_TPREL16_DS").__copy__(),
new T_intName(((88 : GoUInt32)), "R_PPC64_GOT_TPREL16_LO_DS").__copy__(),
new T_intName(((89 : GoUInt32)), "R_PPC64_GOT_TPREL16_HI").__copy__(),
new T_intName(((90 : GoUInt32)), "R_PPC64_GOT_TPREL16_HA").__copy__(),
new T_intName(((91 : GoUInt32)), "R_PPC64_GOT_DTPREL16_DS").__copy__(),
new T_intName(((92 : GoUInt32)), "R_PPC64_GOT_DTPREL16_LO_DS").__copy__(),
new T_intName(((93 : GoUInt32)), "R_PPC64_GOT_DTPREL16_HI").__copy__(),
new T_intName(((94 : GoUInt32)), "R_PPC64_GOT_DTPREL16_HA").__copy__(),
new T_intName(((95 : GoUInt32)), "R_PPC64_TPREL16_DS").__copy__(),
new T_intName(((96 : GoUInt32)), "R_PPC64_TPREL16_LO_DS").__copy__(),
new T_intName(((97 : GoUInt32)), "R_PPC64_TPREL16_HIGHER").__copy__(),
new T_intName(((98 : GoUInt32)), "R_PPC64_TPREL16_HIGHERA").__copy__(),
new T_intName(((99 : GoUInt32)), "R_PPC64_TPREL16_HIGHEST").__copy__(),
new T_intName(((100 : GoUInt32)), "R_PPC64_TPREL16_HIGHESTA").__copy__(),
new T_intName(((101 : GoUInt32)), "R_PPC64_DTPREL16_DS").__copy__(),
new T_intName(((102 : GoUInt32)), "R_PPC64_DTPREL16_LO_DS").__copy__(),
new T_intName(((103 : GoUInt32)), "R_PPC64_DTPREL16_HIGHER").__copy__(),
new T_intName(((104 : GoUInt32)), "R_PPC64_DTPREL16_HIGHERA").__copy__(),
new T_intName(((105 : GoUInt32)), "R_PPC64_DTPREL16_HIGHEST").__copy__(),
new T_intName(((106 : GoUInt32)), "R_PPC64_DTPREL16_HIGHESTA").__copy__(),
new T_intName(((107 : GoUInt32)), "R_PPC64_TLSGD").__copy__(),
new T_intName(((108 : GoUInt32)), "R_PPC64_TLSLD").__copy__(),
new T_intName(((109 : GoUInt32)), "R_PPC64_TOCSAVE").__copy__(),
new T_intName(((110 : GoUInt32)), "R_PPC64_ADDR16_HIGH").__copy__(),
new T_intName(((111 : GoUInt32)), "R_PPC64_ADDR16_HIGHA").__copy__(),
new T_intName(((112 : GoUInt32)), "R_PPC64_TPREL16_HIGH").__copy__(),
new T_intName(((113 : GoUInt32)), "R_PPC64_TPREL16_HIGHA").__copy__(),
new T_intName(((114 : GoUInt32)), "R_PPC64_DTPREL16_HIGH").__copy__(),
new T_intName(((115 : GoUInt32)), "R_PPC64_DTPREL16_HIGHA").__copy__(),
new T_intName(((116 : GoUInt32)), "R_PPC64_REL24_NOTOC").__copy__(),
new T_intName(((117 : GoUInt32)), "R_PPC64_ADDR64_LOCAL").__copy__(),
new T_intName(((118 : GoUInt32)), "R_PPC64_ENTRY").__copy__(),
new T_intName(((246 : GoUInt32)), "R_PPC64_REL16DX_HA").__copy__(),
new T_intName(((247 : GoUInt32)), "R_PPC64_JMP_IREL").__copy__(),
new T_intName(((248 : GoUInt32)), "R_PPC64_IRELATIVE").__copy__(),
new T_intName(((249 : GoUInt32)), "R_PPC64_REL16").__copy__(),
new T_intName(((250 : GoUInt32)), "R_PPC64_REL16_LO").__copy__(),
new T_intName(((251 : GoUInt32)), "R_PPC64_REL16_HI").__copy__(),
new T_intName(((252 : GoUInt32)), "R_PPC64_REL16_HA").__copy__());
final r_AARCH64_TLSDESC_ADD_LO12_NC : R_AARCH64 = new R_AARCH64(((564 : GoInt)));
final r_ARM_SBREL32 : R_ARM = new R_ARM(((9 : GoInt)));
final r_PPC_GOT_TLSLD16_HA : R_PPC = new R_PPC(((86 : GoInt)));
final r_AARCH64_P32_TLSLE_ADD_TPREL_LO12 : R_AARCH64 = new R_AARCH64(((110 : GoInt)));
final dt_RELA : DynTag = new DynTag(((7 : GoInt)));
final r_ALPHA_GPRELHIGH : R_ALPHA = new R_ALPHA(((17 : GoInt)));
final r_ARM_LDC_PC_G0 : R_ARM = new R_ARM(((67 : GoInt)));
final r_ARM_LDC_PC_G1 : R_ARM = new R_ARM(((68 : GoInt)));
final dt_MIPS_RLD_MAP_REL : DynTag = new DynTag(((1879048245 : GoInt)));
final r_ARM_LDC_PC_G2 : R_ARM = new R_ARM(((69 : GoInt)));
final r_390_TLS_LDM64 : R_390 = new R_390(((46 : GoInt)));
final em_OPEN8 : Machine = new Machine(((196 : GoUInt16)));
final r_PPC64_GOT_TLSGD16_HA : R_PPC64 = new R_PPC64(((82 : GoInt)));
final em_D30V : Machine = new Machine(((86 : GoUInt16)));
final r_X86_64_PLTOFF64 : R_X86_64 = new R_X86_64(((31 : GoInt)));
final r_390_TLS_LDM32 : R_390 = new R_390(((45 : GoInt)));
final em_QDSP6 : Machine = new Machine(((164 : GoUInt16)));
final r_MIPS_GOT_PAGE : R_MIPS = new R_MIPS(((20 : GoInt)));
final dt_RELCOUNT : DynTag = new DynTag(((1879048186 : GoInt)));
final r_PPC_GOT_TLSLD16_HI : R_PPC = new R_PPC(((85 : GoInt)));
final sht_GROUP : SectionType = new SectionType(((17 : GoUInt32)));
final em_486 : Machine = new Machine(((6 : GoUInt16)));
final r_PPC_EMB_NADDR16 : R_PPC = new R_PPC(((102 : GoInt)));
final pt_HIPROC : ProgType = new ProgType(((2147483647 : GoInt)));
final dt_MIPS_TIME_STAMP : DynTag = new DynTag(((1879048194 : GoInt)));
final r_ARM_GOT_ABS : R_ARM = new R_ARM(((95 : GoInt)));
final r_SPARC_5 : R_SPARC = new R_SPARC(((44 : GoInt)));
final r_SPARC_WPLT30 : R_SPARC = new R_SPARC(((18 : GoInt)));
final r_ARM_PREL31 : R_ARM = new R_ARM(((42 : GoInt)));
final r_SPARC_6 : R_SPARC = new R_SPARC(((45 : GoInt)));
final r_RISCV_SET16 : R_RISCV = new R_RISCV(((55 : GoInt)));
final r_SPARC_7 : R_SPARC = new R_SPARC(((43 : GoInt)));
final dt_MIPS_LOCALPAGE_GOTIDX : DynTag = new DynTag(((1879048229 : GoInt)));
final r_386_RELATIVE : R_386 = new R_386(((8 : GoInt)));
final r_ARM_LDR_SBREL_11_10_NC : R_ARM = new R_ARM(((35 : GoInt)));
final r_SPARC_8 : R_SPARC = new R_SPARC(((1 : GoInt)));
final r_PPC64_TLS : R_PPC64 = new R_PPC64(((67 : GoInt)));
final compress_HIPROC : CompressionType = new CompressionType(((2147483647 : GoInt)));
final r_PPC64_GOT_TLSGD16_HI : R_PPC64 = new R_PPC64(((81 : GoInt)));
final r_AARCH64_P32_JUMP26 : R_AARCH64 = new R_AARCH64(((20 : GoInt)));
final nt_PRSTATUS : NType = new NType(((1 : GoInt)));
final r_390_TLS_GOTIE20 : R_390 = new R_390(((60 : GoInt)));
final em_MMIX : Machine = new Machine(((80 : GoUInt16)));
final r_390_PC16 : R_390 = new R_390(((16 : GoInt)));
final r_RISCV_TPREL_I : R_RISCV = new R_RISCV(((49 : GoInt)));
final r_PPC64_TOC16_LO : R_PPC64 = new R_PPC64(((48 : GoInt)));
final r_AARCH64_TLSIE_LD64_GOTTPREL_LO12_NC : R_AARCH64 = new R_AARCH64(((542 : GoInt)));
final dt_MIPS_CXX_FLAGS : DynTag = new DynTag(((1879048226 : GoInt)));
final r_PPC64_DTPREL16_HIGHA : R_PPC64 = new R_PPC64(((115 : GoInt)));
final r_AARCH64_MOVW_UABS_G0 : R_AARCH64 = new R_AARCH64(((263 : GoInt)));
final r_SPARC_DISP64 : R_SPARC = new R_SPARC(((46 : GoInt)));
final r_AARCH64_MOVW_UABS_G1 : R_AARCH64 = new R_AARCH64(((265 : GoInt)));
final r_SPARC_UA64 : R_SPARC = new R_SPARC(((54 : GoInt)));
final em_MOXIE : Machine = new Machine(((223 : GoUInt16)));
final dt_SYMTAB_SHNDX : DynTag = new DynTag(((34 : GoInt)));
final elfosabi_OPENBSD : OSABI = new OSABI(((12 : GoUInt8)));
final r_AARCH64_MOVW_UABS_G2 : R_AARCH64 = new R_AARCH64(((267 : GoInt)));
final dt_NULL : DynTag = new DynTag(((0 : GoInt)));
final r_SPARC_DISP32 : R_SPARC = new R_SPARC(((6 : GoInt)));
final dt_MIPS_COMPACT_SIZE : DynTag = new DynTag(((1879048239 : GoInt)));
final r_AARCH64_MOVW_UABS_G3 : R_AARCH64 = new R_AARCH64(((269 : GoInt)));
final r_SPARC_UA32 : R_SPARC = new R_SPARC(((23 : GoInt)));
final r_AARCH64_TLSGD_MOVW_G1 : R_AARCH64 = new R_AARCH64(((515 : GoInt)));
final elfosabi_AROS : OSABI = new OSABI(((15 : GoUInt8)));
final r_RISCV_TPREL_S : R_RISCV = new R_RISCV(((50 : GoInt)));
final r_PPC64_DTPREL64 : R_PPC64 = new R_PPC64(((78 : GoInt)));
final r_PPC_SECTOFF_LO : R_PPC = new R_PPC(((34 : GoInt)));
final r_AARCH64_TLSDESC_LD_PREL19 : R_AARCH64 = new R_AARCH64(((560 : GoInt)));
final r_ARM_TLS_IE12GP : R_ARM = new R_ARM(((111 : GoInt)));
final dt_MIPS_PERF_SUFFIX : DynTag = new DynTag(((1879048238 : GoInt)));
final r_ARM_RXPC25 : R_ARM = new R_ARM(((249 : GoInt)));
final pt_SUNWSTACK : ProgType = new ProgType(((1879048187 : GoInt)));
final r_ARM_ALU_SB_G1_NC : R_ARM = new R_ARM(((72 : GoInt)));
final elfosabi_FREEBSD : OSABI = new OSABI(((9 : GoUInt8)));
final et_REL : Type = new Type(((1 : GoUInt16)));
final r_PPC64_ADDR64 : R_PPC64 = new R_PPC64(((38 : GoInt)));
final shf_TLS : SectionFlag = new SectionFlag(((1024 : GoUInt32)));
final dt_FINI_ARRAY : DynTag = new DynTag(((26 : GoInt)));
final r_SPARC_WDISP30 : R_SPARC = new R_SPARC(((7 : GoInt)));
final em_CRX : Machine = new Machine(((114 : GoUInt16)));
final r_PPC64_ADDR32 : R_PPC64 = new R_PPC64(((1 : GoInt)));
final em_CSR_KALIMBA : Machine = new Machine(((219 : GoUInt16)));
final r_390_20 : R_390 = new R_390(((57 : GoInt)));
final r_RISCV_RELAX : R_RISCV = new R_RISCV(((51 : GoInt)));
final r_ARM_GOT_PREL : R_ARM = new R_ARM(((96 : GoInt)));
final em_KM32 : Machine = new Machine(((210 : GoUInt16)));
final dt_MIPS_DELTA_SYM : DynTag = new DynTag(((1879048221 : GoInt)));
final r_MIPS_SCN_DISP : R_MIPS = new R_MIPS(((32 : GoInt)));
final r_PPC_GOT_TPREL16 : R_PPC = new R_PPC(((87 : GoInt)));
final dt_LOOS : DynTag = new DynTag(((1610612749 : GoInt)));
final dt_PLTPAD : DynTag = new DynTag(((1879047933 : GoInt)));
final r_ARM_THM_JUMP11 : R_ARM = new R_ARM(((102 : GoInt)));
final sht_NOBITS : SectionType = new SectionType(((8 : GoUInt32)));
final r_AARCH64_LDST128_ABS_LO12_NC : R_AARCH64 = new R_AARCH64(((299 : GoInt)));
final r_RISCV_64 : R_RISCV = new R_RISCV(((2 : GoInt)));
final r_RISCV_32 : R_RISCV = new R_RISCV(((1 : GoInt)));
final sht_NOTE : SectionType = new SectionType(((7 : GoUInt32)));
var _typeStrings : Slice<T_intName> = new Slice<T_intName>(new T_intName(((0 : GoUInt32)), "ET_NONE").__copy__(), new T_intName(((1 : GoUInt32)), "ET_REL").__copy__(), new T_intName(((2 : GoUInt32)), "ET_EXEC").__copy__(), new T_intName(((3 : GoUInt32)), "ET_DYN").__copy__(), new T_intName(((4 : GoUInt32)), "ET_CORE").__copy__(), new T_intName(((65024 : GoUInt32)), "ET_LOOS").__copy__(), new T_intName(((65279 : GoUInt32)), "ET_HIOS").__copy__(), new T_intName(((65280 : GoUInt32)), "ET_LOPROC").__copy__(), new T_intName(((65535 : GoUInt32)), "ET_HIPROC").__copy__());
final pt_NULL : ProgType = new ProgType(((0 : GoInt)));
final sht_REL : SectionType = new SectionType(((9 : GoUInt32)));
final r_ARM_THM_JUMP19 : R_ARM = new R_ARM(((51 : GoInt)));
final r_ARM_TLS_LDO12 : R_ARM = new R_ARM(((109 : GoInt)));
final r_386_TLS_LDM_POP : R_386 = new R_386(((31 : GoInt)));
final r_X86_64_GOTPCREL : R_X86_64 = new R_X86_64(((9 : GoInt)));
final r_PPC64_GOT_TPREL16_DS : R_PPC64 = new R_PPC64(((87 : GoInt)));
final r_ARM_BASE_ABS : R_ARM = new R_ARM(((31 : GoInt)));
final em_SPARC : Machine = new Machine(((2 : GoUInt16)));
final r_PPC64_REL64 : R_PPC64 = new R_PPC64(((44 : GoInt)));
var _versionStrings : Slice<T_intName> = new Slice<T_intName>(new T_intName(((0 : GoUInt32)), "EV_NONE").__copy__(), new T_intName(((1 : GoUInt32)), "EV_CURRENT").__copy__());
final sht_HIUSER : SectionType = new SectionType((("4294967295" : GoUInt32)));
final r_RISCV_TPREL_HI20 : R_RISCV = new R_RISCV(((29 : GoInt)));
final r_PPC64_REL32 : R_PPC64 = new R_PPC64(((26 : GoInt)));
final r_SPARC_GLOB_JMP : R_SPARC = new R_SPARC(((42 : GoInt)));
final df_STATIC_TLS : DynFlag = new DynFlag(((16 : GoInt)));
final r_X86_64_RELATIVE : R_X86_64 = new R_X86_64(((8 : GoInt)));
final em_RS08 : Machine = new Machine(((132 : GoUInt16)));
final elfosabi_TRU64 : OSABI = new OSABI(((10 : GoUInt8)));
final r_MIPS_HIGHEST : R_MIPS = new R_MIPS(((29 : GoInt)));
final r_SPARC_PC10 : R_SPARC = new R_SPARC(((16 : GoInt)));
final r_PPC_PLT16_HA : R_PPC = new R_PPC(((31 : GoInt)));
final r_AARCH64_CONDBR19 : R_AARCH64 = new R_AARCH64(((280 : GoInt)));
var _ptStrings : Slice<T_intName> = new Slice<T_intName>(
new T_intName(((0 : GoUInt32)), "PT_NULL").__copy__(),
new T_intName(((1 : GoUInt32)), "PT_LOAD").__copy__(),
new T_intName(((2 : GoUInt32)), "PT_DYNAMIC").__copy__(),
new T_intName(((3 : GoUInt32)), "PT_INTERP").__copy__(),
new T_intName(((4 : GoUInt32)), "PT_NOTE").__copy__(),
new T_intName(((5 : GoUInt32)), "PT_SHLIB").__copy__(),
new T_intName(((6 : GoUInt32)), "PT_PHDR").__copy__(),
new T_intName(((7 : GoUInt32)), "PT_TLS").__copy__(),
new T_intName(((1610612736 : GoUInt32)), "PT_LOOS").__copy__(),
new T_intName(((1685382480 : GoUInt32)), "PT_GNU_EH_FRAME").__copy__(),
new T_intName(((1685382481 : GoUInt32)), "PT_GNU_STACK").__copy__(),
new T_intName(((1685382482 : GoUInt32)), "PT_GNU_RELRO").__copy__(),
new T_intName(((1685382483 : GoUInt32)), "PT_GNU_PROPERTY").__copy__(),
new T_intName(((1694766464 : GoUInt32)), "PT_PAX_FLAGS").__copy__(),
new T_intName(((1705237478 : GoUInt32)), "PT_OPENBSD_RANDOMIZE").__copy__(),
new T_intName(((1705237479 : GoUInt32)), "PT_OPENBSD_WXNEEDED").__copy__(),
new T_intName(((1705253862 : GoUInt32)), "PT_OPENBSD_BOOTDATA").__copy__(),
new T_intName(((1879048187 : GoUInt32)), "PT_SUNWSTACK").__copy__(),
new T_intName(((1879048191 : GoUInt32)), "PT_HIOS").__copy__(),
new T_intName(((1879048192 : GoUInt32)), "PT_LOPROC").__copy__(),
new T_intName(((2147483647 : GoUInt32)), "PT_HIPROC").__copy__());
final r_X86_64_32S : R_X86_64 = new R_X86_64(((11 : GoInt)));
final shf_EXECINSTR : SectionFlag = new SectionFlag(((4 : GoUInt32)));
final r_SPARC_LM22 : R_SPARC = new R_SPARC(((36 : GoInt)));
final em_CUDA : Machine = new Machine(((190 : GoUInt16)));
final em_ST9PLUS : Machine = new Machine(((67 : GoUInt16)));
final r_PPC_TLS : R_PPC = new R_PPC(((67 : GoInt)));
final r_386_TLS_IE_32 : R_386 = new R_386(((33 : GoInt)));
final em_CYPRESS_M8C : Machine = new Machine(((161 : GoUInt16)));
final sht_STRTAB : SectionType = new SectionType(((3 : GoUInt32)));
final r_X86_64_PC64 : R_X86_64 = new R_X86_64(((24 : GoInt)));
final r_PPC_PLT16_HI : R_PPC = new R_PPC(((30 : GoInt)));
final pt_LOOS : ProgType = new ProgType(((1610612736 : GoInt)));
final r_AARCH64_TSTBR14 : R_AARCH64 = new R_AARCH64(((279 : GoInt)));
final dt_HIPROC : DynTag = new DynTag(((2147483647 : GoInt)));
final r_AARCH64_TLSDESC_CALL : R_AARCH64 = new R_AARCH64(((569 : GoInt)));
final r_X86_64_PC32 : R_X86_64 = new R_X86_64(((2 : GoInt)));
final em_CRIS : Machine = new Machine(((76 : GoUInt16)));
final r_PPC64_ADDR16_LO_DS : R_PPC64 = new R_PPC64(((57 : GoInt)));
final r_390_RELATIVE : R_390 = new R_390(((12 : GoInt)));
final pf_MASKPROC : ProgFlag = new ProgFlag((("4026531840" : GoUInt32)));
final dt_MIPS_PIXIE_INIT : DynTag = new DynTag(((1879048227 : GoInt)));
final r_ARM_V4BX : R_ARM = new R_ARM(((40 : GoInt)));
var _r386Strings : Slice<T_intName> = new Slice<T_intName>(
new T_intName(((0 : GoUInt32)), "R_386_NONE").__copy__(),
new T_intName(((1 : GoUInt32)), "R_386_32").__copy__(),
new T_intName(((2 : GoUInt32)), "R_386_PC32").__copy__(),
new T_intName(((3 : GoUInt32)), "R_386_GOT32").__copy__(),
new T_intName(((4 : GoUInt32)), "R_386_PLT32").__copy__(),
new T_intName(((5 : GoUInt32)), "R_386_COPY").__copy__(),
new T_intName(((6 : GoUInt32)), "R_386_GLOB_DAT").__copy__(),
new T_intName(((7 : GoUInt32)), "R_386_JMP_SLOT").__copy__(),
new T_intName(((8 : GoUInt32)), "R_386_RELATIVE").__copy__(),
new T_intName(((9 : GoUInt32)), "R_386_GOTOFF").__copy__(),
new T_intName(((10 : GoUInt32)), "R_386_GOTPC").__copy__(),
new T_intName(((11 : GoUInt32)), "R_386_32PLT").__copy__(),
new T_intName(((14 : GoUInt32)), "R_386_TLS_TPOFF").__copy__(),
new T_intName(((15 : GoUInt32)), "R_386_TLS_IE").__copy__(),
new T_intName(((16 : GoUInt32)), "R_386_TLS_GOTIE").__copy__(),
new T_intName(((17 : GoUInt32)), "R_386_TLS_LE").__copy__(),
new T_intName(((18 : GoUInt32)), "R_386_TLS_GD").__copy__(),
new T_intName(((19 : GoUInt32)), "R_386_TLS_LDM").__copy__(),
new T_intName(((20 : GoUInt32)), "R_386_16").__copy__(),
new T_intName(((21 : GoUInt32)), "R_386_PC16").__copy__(),
new T_intName(((22 : GoUInt32)), "R_386_8").__copy__(),
new T_intName(((23 : GoUInt32)), "R_386_PC8").__copy__(),
new T_intName(((24 : GoUInt32)), "R_386_TLS_GD_32").__copy__(),
new T_intName(((25 : GoUInt32)), "R_386_TLS_GD_PUSH").__copy__(),
new T_intName(((26 : GoUInt32)), "R_386_TLS_GD_CALL").__copy__(),
new T_intName(((27 : GoUInt32)), "R_386_TLS_GD_POP").__copy__(),
new T_intName(((28 : GoUInt32)), "R_386_TLS_LDM_32").__copy__(),
new T_intName(((29 : GoUInt32)), "R_386_TLS_LDM_PUSH").__copy__(),
new T_intName(((30 : GoUInt32)), "R_386_TLS_LDM_CALL").__copy__(),
new T_intName(((31 : GoUInt32)), "R_386_TLS_LDM_POP").__copy__(),
new T_intName(((32 : GoUInt32)), "R_386_TLS_LDO_32").__copy__(),
new T_intName(((33 : GoUInt32)), "R_386_TLS_IE_32").__copy__(),
new T_intName(((34 : GoUInt32)), "R_386_TLS_LE_32").__copy__(),
new T_intName(((35 : GoUInt32)), "R_386_TLS_DTPMOD32").__copy__(),
new T_intName(((36 : GoUInt32)), "R_386_TLS_DTPOFF32").__copy__(),
new T_intName(((37 : GoUInt32)), "R_386_TLS_TPOFF32").__copy__(),
new T_intName(((38 : GoUInt32)), "R_386_SIZE32").__copy__(),
new T_intName(((39 : GoUInt32)), "R_386_TLS_GOTDESC").__copy__(),
new T_intName(((40 : GoUInt32)), "R_386_TLS_DESC_CALL").__copy__(),
new T_intName(((41 : GoUInt32)), "R_386_TLS_DESC").__copy__(),
new T_intName(((42 : GoUInt32)), "R_386_IRELATIVE").__copy__(),
new T_intName(((43 : GoUInt32)), "R_386_GOT32X").__copy__());
final r_ARM_THM_ALU_ABS_G1_NC : R_ARM = new R_ARM(((133 : GoInt)));
final em_CR16 : Machine = new Machine(((177 : GoUInt16)));
final em_386 : Machine = new Machine(((3 : GoUInt16)));
final r_AARCH64_P32_TLS_DTPMOD : R_AARCH64 = new R_AARCH64(((184 : GoInt)));
final r_RISCV_CALL_PLT : R_RISCV = new R_RISCV(((19 : GoInt)));
final r_PPC64_TOC16 : R_PPC64 = new R_PPC64(((47 : GoInt)));
final elfosabi_LINUX : OSABI = new OSABI(((3 : GoUInt8)));
final r_PPC64_DTPREL16_HIGHESTA : R_PPC64 = new R_PPC64(((106 : GoInt)));
final r_ALPHA_OP_PUSH : R_ALPHA = new R_ALPHA(((12 : GoInt)));
final dt_GNU_LIBLISTSZ : DynTag = new DynTag(((1879047671 : GoInt)));
final r_PPC64_ADDR16_HIGHESTA : R_PPC64 = new R_PPC64(((42 : GoInt)));
final em_TILE64 : Machine = new Machine(((187 : GoUInt16)));
final em_VPP500 : Machine = new Machine(((17 : GoUInt16)));
final dt_GNU_LIBLIST : DynTag = new DynTag(((1879047929 : GoInt)));
final r_390_GOTPLTOFF16 : R_390 = new R_390(((34 : GoInt)));
final r_ARM_THM_ABS5 : R_ARM = new R_ARM(((7 : GoInt)));
final em_68HC11 : Machine = new Machine(((70 : GoUInt16)));
final r_AARCH64_TLSDESC_OFF_G0_NC : R_AARCH64 = new R_AARCH64(((566 : GoInt)));
final r_ARM_THM_XPC22 : R_ARM = new R_ARM(((16 : GoInt)));
final ei_NIDENT : GoInt64 = ((16 : GoUnTypedInt));
final em_68HC12 : Machine = new Machine(((53 : GoUInt16)));
final em_ST19 : Machine = new Machine(((74 : GoUInt16)));
final dt_PPC64_OPD : DynTag = new DynTag(((1879048193 : GoInt)));
final r_PPC64_NONE : R_PPC64 = new R_PPC64(((0 : GoInt)));
final r_AARCH64_TLSDESC_LDR : R_AARCH64 = new R_AARCH64(((567 : GoInt)));
final r_386_TLS_LE_32 : R_386 = new R_386(((34 : GoInt)));
final em_K10M : Machine = new Machine(((181 : GoUInt16)));
final r_386_TLS_LDM_32 : R_386 = new R_386(((28 : GoInt)));
final em_68HC16 : Machine = new Machine(((69 : GoUInt16)));
final elfosabi_CLOUDABI : OSABI = new OSABI(((17 : GoUInt8)));
final r_RISCV_RVC_LUI : R_RISCV = new R_RISCV(((46 : GoInt)));
final r_MIPS_HI16 : R_MIPS = new R_MIPS(((5 : GoInt)));
final r_PPC_REL32 : R_PPC = new R_PPC(((26 : GoInt)));
final r_PPC_EMB_RELSEC16 : R_PPC = new R_PPC(((111 : GoInt)));
final r_X86_64_16 : R_X86_64 = new R_X86_64(((12 : GoInt)));
final ei_OSABI : GoInt64 = ((7 : GoUnTypedInt));
final em_IA_64 : Machine = new Machine(((50 : GoUInt16)));
final r_X86_64_SIZE64 : R_X86_64 = new R_X86_64(((33 : GoInt)));
final r_390_PLT16DBL : R_390 = new R_390(((18 : GoInt)));
final dt_MOVEENT : DynTag = new DynTag(((1879047674 : GoInt)));
final r_X86_64_SIZE32 : R_X86_64 = new R_X86_64(((32 : GoInt)));
final r_ARM_THM_SWI8 : R_ARM = new R_ARM(((14 : GoInt)));
final r_ARM_REL32_NOI : R_ARM = new R_ARM(((56 : GoInt)));
final r_ARM_ABS8 : R_ARM = new R_ARM(((8 : GoInt)));
final r_AARCH64_P32_TLSDESC_LD32_LO12_NC : R_AARCH64 = new R_AARCH64(((125 : GoInt)));
var _classStrings : Slice<T_intName> = new Slice<T_intName>(new T_intName(((0 : GoUInt32)), "ELFCLASSNONE").__copy__(), new T_intName(((1 : GoUInt32)), "ELFCLASS32").__copy__(), new T_intName(((2 : GoUInt32)), "ELFCLASS64").__copy__());
final r_ARM_MOVT_PREL : R_ARM = new R_ARM(((46 : GoInt)));
final r_390_GOT64 : R_390 = new R_390(((24 : GoInt)));
final et_NONE : Type = new Type(((0 : GoUInt16)));
final r_390_GOT32 : R_390 = new R_390(((7 : GoInt)));
final r_MIPS_GOT_DISP : R_MIPS = new R_MIPS(((19 : GoInt)));
final r_PPC_DTPREL16_LO : R_PPC = new R_PPC(((75 : GoInt)));
final r_386_PC32 : R_386 = new R_386(((2 : GoInt)));
final r_AARCH64_TLSGD_ADR_PREL21 : R_AARCH64 = new R_AARCH64(((512 : GoInt)));
final r_SPARC_10 : R_SPARC = new R_SPARC(((30 : GoInt)));
final r_PPC64_GOT_DTPREL16_HA : R_PPC64 = new R_PPC64(((94 : GoInt)));
final compress_ZLIB : CompressionType = new CompressionType(((1 : GoInt)));
final em_ALTERA_NIOS2 : Machine = new Machine(((113 : GoUInt16)));
final dt_PPC64_OPT : DynTag = new DynTag(((1879048195 : GoInt)));
final r_SPARC_11 : R_SPARC = new R_SPARC(((31 : GoInt)));
final r_X86_64_PLT32_BND : R_X86_64 = new R_X86_64(((40 : GoInt)));
final r_AARCH64_ADR_PREL_PG_HI21 : R_AARCH64 = new R_AARCH64(((275 : GoInt)));
final stt_FILE : SymType = new SymType(((4 : GoInt)));
final pt_OPENBSD_WXNEEDED : ProgType = new ProgType(((1705237479 : GoInt)));
final r_SPARC_13 : R_SPARC = new R_SPARC(((11 : GoInt)));
final r_X86_64_NONE : R_X86_64 = new R_X86_64(((0 : GoInt)));
final elfdatanone : Data = new Data(((0 : GoUInt8)));
final r_X86_64_GOTPLT64 : R_X86_64 = new R_X86_64(((30 : GoInt)));
final r_SPARC_16 : R_SPARC = new R_SPARC(((2 : GoInt)));
final _seekCurrent : GoInt = ((1 : GoInt));
final r_PPC64_GOT_DTPREL16_HI : R_PPC64 = new R_PPC64(((93 : GoInt)));
final r_PPC_LOCAL24PC : R_PPC = new R_PPC(((23 : GoInt)));
final sht_DYNSYM : SectionType = new SectionType(((11 : GoUInt32)));
final dt_PREINIT_ARRAY : DynTag = new DynTag(((32 : GoInt)));
final r_PPC_DTPREL32 : R_PPC = new R_PPC(((78 : GoInt)));
final em_X86_64 : Machine = new Machine(((62 : GoUInt16)));
final shn_ABS : SectionIndex = new SectionIndex(((65521 : GoInt)));
var _osabiStrings : Slice<T_intName> = new Slice<T_intName>(
new T_intName(((0 : GoUInt32)), "ELFOSABI_NONE").__copy__(),
new T_intName(((1 : GoUInt32)), "ELFOSABI_HPUX").__copy__(),
new T_intName(((2 : GoUInt32)), "ELFOSABI_NETBSD").__copy__(),
new T_intName(((3 : GoUInt32)), "ELFOSABI_LINUX").__copy__(),
new T_intName(((4 : GoUInt32)), "ELFOSABI_HURD").__copy__(),
new T_intName(((5 : GoUInt32)), "ELFOSABI_86OPEN").__copy__(),
new T_intName(((6 : GoUInt32)), "ELFOSABI_SOLARIS").__copy__(),
new T_intName(((7 : GoUInt32)), "ELFOSABI_AIX").__copy__(),
new T_intName(((8 : GoUInt32)), "ELFOSABI_IRIX").__copy__(),
new T_intName(((9 : GoUInt32)), "ELFOSABI_FREEBSD").__copy__(),
new T_intName(((10 : GoUInt32)), "ELFOSABI_TRU64").__copy__(),
new T_intName(((11 : GoUInt32)), "ELFOSABI_MODESTO").__copy__(),
new T_intName(((12 : GoUInt32)), "ELFOSABI_OPENBSD").__copy__(),
new T_intName(((13 : GoUInt32)), "ELFOSABI_OPENVMS").__copy__(),
new T_intName(((14 : GoUInt32)), "ELFOSABI_NSK").__copy__(),
new T_intName(((15 : GoUInt32)), "ELFOSABI_AROS").__copy__(),
new T_intName(((16 : GoUInt32)), "ELFOSABI_FENIXOS").__copy__(),
new T_intName(((17 : GoUInt32)), "ELFOSABI_CLOUDABI").__copy__(),
new T_intName(((97 : GoUInt32)), "ELFOSABI_ARM").__copy__(),
new T_intName(((255 : GoUInt32)), "ELFOSABI_STANDALONE").__copy__());
final r_AARCH64_TLSLD_LDST128_DTPREL_LO12 : R_AARCH64 = new R_AARCH64(((572 : GoInt)));
final pt_GNU_RELRO : ProgType = new ProgType(((1685382482 : GoInt)));
final em_RL78 : Machine = new Machine(((197 : GoUInt16)));
final r_ARM_THM_MOVW_BREL : R_ARM = new R_ARM(((89 : GoInt)));
final r_AARCH64_P32_PREL16 : R_AARCH64 = new R_AARCH64(((4 : GoInt)));
final r_386_GOT32 : R_386 = new R_386(((3 : GoInt)));
final dt_DEPAUDIT : DynTag = new DynTag(((1879047931 : GoInt)));
final r_ALPHA_OP_PRSHIFT : R_ALPHA = new R_ALPHA(((15 : GoInt)));
final r_X86_64_REX_GOTPCRELX : R_X86_64 = new R_X86_64(((42 : GoInt)));
final dt_TEXTREL : DynTag = new DynTag(((22 : GoInt)));
final r_ARM_THM_MOVW_PREL_NC : R_ARM = new R_ARM(((49 : GoInt)));
final r_MIPS_GOT16 : R_MIPS = new R_MIPS(((9 : GoInt)));
final r_ARM_ABS32_NOI : R_ARM = new R_ARM(((55 : GoInt)));
final dt_MOVETAB : DynTag = new DynTag(((1879047934 : GoInt)));
final stt_TLS : SymType = new SymType(((6 : GoInt)));
final r_SPARC_H44 : R_SPARC = new R_SPARC(((50 : GoInt)));
final r_PPC64_PLTGOT16_DS : R_PPC64 = new R_PPC64(((65 : GoInt)));
final r_390_TLS_IEENT : R_390 = new R_390(((49 : GoInt)));
final r_RISCV_TPREL_LO12_I : R_RISCV = new R_RISCV(((30 : GoInt)));
final r_ARM_RELATIVE : R_ARM = new R_ARM(((23 : GoInt)));
final dt_PLTREL : DynTag = new DynTag(((20 : GoInt)));
final em_M32C : Machine = new Machine(((120 : GoUInt16)));
final r_RISCV_SUB16 : R_RISCV = new R_RISCV(((38 : GoInt)));
final dt_VERDEFNUM : DynTag = new DynTag(((1879048189 : GoInt)));
final et_DYN : Type = new Type(((3 : GoUInt16)));
final r_AARCH64_P32_GLOB_DAT : R_AARCH64 = new R_AARCH64(((181 : GoInt)));
final r_MIPS_SUB : R_MIPS = new R_MIPS(((24 : GoInt)));
final em_CLOUDSHIELD : Machine = new Machine(((192 : GoUInt16)));
final r_PPC_EMB_NADDR16_HA : R_PPC = new R_PPC(((105 : GoInt)));
final r_RISCV_TLS_GOT_HI20 : R_RISCV = new R_RISCV(((21 : GoInt)));
final r_AARCH64_TLSIE_ADR_GOTTPREL_PAGE21 : R_AARCH64 = new R_AARCH64(((541 : GoInt)));
final r_AARCH64_P32_ADR_PREL_LO21 : R_AARCH64 = new R_AARCH64(((10 : GoInt)));
final r_MIPS_INSERT_A : R_MIPS = new R_MIPS(((25 : GoInt)));
var _dtStrings : Slice<T_intName> = new Slice<T_intName>(
new T_intName(((0 : GoUInt32)), "DT_NULL").__copy__(),
new T_intName(((1 : GoUInt32)), "DT_NEEDED").__copy__(),
new T_intName(((2 : GoUInt32)), "DT_PLTRELSZ").__copy__(),
new T_intName(((3 : GoUInt32)), "DT_PLTGOT").__copy__(),
new T_intName(((4 : GoUInt32)), "DT_HASH").__copy__(),
new T_intName(((5 : GoUInt32)), "DT_STRTAB").__copy__(),
new T_intName(((6 : GoUInt32)), "DT_SYMTAB").__copy__(),
new T_intName(((7 : GoUInt32)), "DT_RELA").__copy__(),
new T_intName(((8 : GoUInt32)), "DT_RELASZ").__copy__(),
new T_intName(((9 : GoUInt32)), "DT_RELAENT").__copy__(),
new T_intName(((10 : GoUInt32)), "DT_STRSZ").__copy__(),
new T_intName(((11 : GoUInt32)), "DT_SYMENT").__copy__(),
new T_intName(((12 : GoUInt32)), "DT_INIT").__copy__(),
new T_intName(((13 : GoUInt32)), "DT_FINI").__copy__(),
new T_intName(((14 : GoUInt32)), "DT_SONAME").__copy__(),
new T_intName(((15 : GoUInt32)), "DT_RPATH").__copy__(),
new T_intName(((16 : GoUInt32)), "DT_SYMBOLIC").__copy__(),
new T_intName(((17 : GoUInt32)), "DT_REL").__copy__(),
new T_intName(((18 : GoUInt32)), "DT_RELSZ").__copy__(),
new T_intName(((19 : GoUInt32)), "DT_RELENT").__copy__(),
new T_intName(((20 : GoUInt32)), "DT_PLTREL").__copy__(),
new T_intName(((21 : GoUInt32)), "DT_DEBUG").__copy__(),
new T_intName(((22 : GoUInt32)), "DT_TEXTREL").__copy__(),
new T_intName(((23 : GoUInt32)), "DT_JMPREL").__copy__(),
new T_intName(((24 : GoUInt32)), "DT_BIND_NOW").__copy__(),
new T_intName(((25 : GoUInt32)), "DT_INIT_ARRAY").__copy__(),
new T_intName(((26 : GoUInt32)), "DT_FINI_ARRAY").__copy__(),
new T_intName(((27 : GoUInt32)), "DT_INIT_ARRAYSZ").__copy__(),
new T_intName(((28 : GoUInt32)), "DT_FINI_ARRAYSZ").__copy__(),
new T_intName(((29 : GoUInt32)), "DT_RUNPATH").__copy__(),
new T_intName(((30 : GoUInt32)), "DT_FLAGS").__copy__(),
new T_intName(((32 : GoUInt32)), "DT_ENCODING").__copy__(),
new T_intName(((32 : GoUInt32)), "DT_PREINIT_ARRAY").__copy__(),
new T_intName(((33 : GoUInt32)), "DT_PREINIT_ARRAYSZ").__copy__(),
new T_intName(((34 : GoUInt32)), "DT_SYMTAB_SHNDX").__copy__(),
new T_intName(((1610612749 : GoUInt32)), "DT_LOOS").__copy__(),
new T_intName(((1879044096 : GoUInt32)), "DT_HIOS").__copy__(),
new T_intName(((1879047424 : GoUInt32)), "DT_VALRNGLO").__copy__(),
new T_intName(((1879047669 : GoUInt32)), "DT_GNU_PRELINKED").__copy__(),
new T_intName(((1879047670 : GoUInt32)), "DT_GNU_CONFLICTSZ").__copy__(),
new T_intName(((1879047671 : GoUInt32)), "DT_GNU_LIBLISTSZ").__copy__(),
new T_intName(((1879047672 : GoUInt32)), "DT_CHECKSUM").__copy__(),
new T_intName(((1879047673 : GoUInt32)), "DT_PLTPADSZ").__copy__(),
new T_intName(((1879047674 : GoUInt32)), "DT_MOVEENT").__copy__(),
new T_intName(((1879047675 : GoUInt32)), "DT_MOVESZ").__copy__(),
new T_intName(((1879047676 : GoUInt32)), "DT_FEATURE").__copy__(),
new T_intName(((1879047677 : GoUInt32)), "DT_POSFLAG_1").__copy__(),
new T_intName(((1879047678 : GoUInt32)), "DT_SYMINSZ").__copy__(),
new T_intName(((1879047679 : GoUInt32)), "DT_SYMINENT").__copy__(),
new T_intName(((1879047679 : GoUInt32)), "DT_VALRNGHI").__copy__(),
new T_intName(((1879047680 : GoUInt32)), "DT_ADDRRNGLO").__copy__(),
new T_intName(((1879047925 : GoUInt32)), "DT_GNU_HASH").__copy__(),
new T_intName(((1879047926 : GoUInt32)), "DT_TLSDESC_PLT").__copy__(),
new T_intName(((1879047927 : GoUInt32)), "DT_TLSDESC_GOT").__copy__(),
new T_intName(((1879047928 : GoUInt32)), "DT_GNU_CONFLICT").__copy__(),
new T_intName(((1879047929 : GoUInt32)), "DT_GNU_LIBLIST").__copy__(),
new T_intName(((1879047930 : GoUInt32)), "DT_CONFIG").__copy__(),
new T_intName(((1879047931 : GoUInt32)), "DT_DEPAUDIT").__copy__(),
new T_intName(((1879047932 : GoUInt32)), "DT_AUDIT").__copy__(),
new T_intName(((1879047933 : GoUInt32)), "DT_PLTPAD").__copy__(),
new T_intName(((1879047934 : GoUInt32)), "DT_MOVETAB").__copy__(),
new T_intName(((1879047935 : GoUInt32)), "DT_SYMINFO").__copy__(),
new T_intName(((1879047935 : GoUInt32)), "DT_ADDRRNGHI").__copy__(),
new T_intName(((1879048176 : GoUInt32)), "DT_VERSYM").__copy__(),
new T_intName(((1879048185 : GoUInt32)), "DT_RELACOUNT").__copy__(),
new T_intName(((1879048186 : GoUInt32)), "DT_RELCOUNT").__copy__(),
new T_intName(((1879048187 : GoUInt32)), "DT_FLAGS_1").__copy__(),
new T_intName(((1879048188 : GoUInt32)), "DT_VERDEF").__copy__(),
new T_intName(((1879048189 : GoUInt32)), "DT_VERDEFNUM").__copy__(),
new T_intName(((1879048190 : GoUInt32)), "DT_VERNEED").__copy__(),
new T_intName(((1879048191 : GoUInt32)), "DT_VERNEEDNUM").__copy__(),
new T_intName(((1879048192 : GoUInt32)), "DT_LOPROC").__copy__(),
new T_intName(((2147483645 : GoUInt32)), "DT_AUXILIARY").__copy__(),
new T_intName(((2147483646 : GoUInt32)), "DT_USED").__copy__(),
new T_intName(((2147483647 : GoUInt32)), "DT_FILTER").__copy__());
final em_8051 : Machine = new Machine(((165 : GoUInt16)));
var _rarmStrings : Slice<T_intName> = new Slice<T_intName>(
new T_intName(((0 : GoUInt32)), "R_ARM_NONE").__copy__(),
new T_intName(((1 : GoUInt32)), "R_ARM_PC24").__copy__(),
new T_intName(((2 : GoUInt32)), "R_ARM_ABS32").__copy__(),
new T_intName(((3 : GoUInt32)), "R_ARM_REL32").__copy__(),
new T_intName(((4 : GoUInt32)), "R_ARM_PC13").__copy__(),
new T_intName(((5 : GoUInt32)), "R_ARM_ABS16").__copy__(),
new T_intName(((6 : GoUInt32)), "R_ARM_ABS12").__copy__(),
new T_intName(((7 : GoUInt32)), "R_ARM_THM_ABS5").__copy__(),
new T_intName(((8 : GoUInt32)), "R_ARM_ABS8").__copy__(),
new T_intName(((9 : GoUInt32)), "R_ARM_SBREL32").__copy__(),
new T_intName(((10 : GoUInt32)), "R_ARM_THM_PC22").__copy__(),
new T_intName(((11 : GoUInt32)), "R_ARM_THM_PC8").__copy__(),
new T_intName(((12 : GoUInt32)), "R_ARM_AMP_VCALL9").__copy__(),
new T_intName(((13 : GoUInt32)), "R_ARM_SWI24").__copy__(),
new T_intName(((14 : GoUInt32)), "R_ARM_THM_SWI8").__copy__(),
new T_intName(((15 : GoUInt32)), "R_ARM_XPC25").__copy__(),
new T_intName(((16 : GoUInt32)), "R_ARM_THM_XPC22").__copy__(),
new T_intName(((17 : GoUInt32)), "R_ARM_TLS_DTPMOD32").__copy__(),
new T_intName(((18 : GoUInt32)), "R_ARM_TLS_DTPOFF32").__copy__(),
new T_intName(((19 : GoUInt32)), "R_ARM_TLS_TPOFF32").__copy__(),
new T_intName(((20 : GoUInt32)), "R_ARM_COPY").__copy__(),
new T_intName(((21 : GoUInt32)), "R_ARM_GLOB_DAT").__copy__(),
new T_intName(((22 : GoUInt32)), "R_ARM_JUMP_SLOT").__copy__(),
new T_intName(((23 : GoUInt32)), "R_ARM_RELATIVE").__copy__(),
new T_intName(((24 : GoUInt32)), "R_ARM_GOTOFF").__copy__(),
new T_intName(((25 : GoUInt32)), "R_ARM_GOTPC").__copy__(),
new T_intName(((26 : GoUInt32)), "R_ARM_GOT32").__copy__(),
new T_intName(((27 : GoUInt32)), "R_ARM_PLT32").__copy__(),
new T_intName(((28 : GoUInt32)), "R_ARM_CALL").__copy__(),
new T_intName(((29 : GoUInt32)), "R_ARM_JUMP24").__copy__(),
new T_intName(((30 : GoUInt32)), "R_ARM_THM_JUMP24").__copy__(),
new T_intName(((31 : GoUInt32)), "R_ARM_BASE_ABS").__copy__(),
new T_intName(((32 : GoUInt32)), "R_ARM_ALU_PCREL_7_0").__copy__(),
new T_intName(((33 : GoUInt32)), "R_ARM_ALU_PCREL_15_8").__copy__(),
new T_intName(((34 : GoUInt32)), "R_ARM_ALU_PCREL_23_15").__copy__(),
new T_intName(((35 : GoUInt32)), "R_ARM_LDR_SBREL_11_10_NC").__copy__(),
new T_intName(((36 : GoUInt32)), "R_ARM_ALU_SBREL_19_12_NC").__copy__(),
new T_intName(((37 : GoUInt32)), "R_ARM_ALU_SBREL_27_20_CK").__copy__(),
new T_intName(((38 : GoUInt32)), "R_ARM_TARGET1").__copy__(),
new T_intName(((39 : GoUInt32)), "R_ARM_SBREL31").__copy__(),
new T_intName(((40 : GoUInt32)), "R_ARM_V4BX").__copy__(),
new T_intName(((41 : GoUInt32)), "R_ARM_TARGET2").__copy__(),
new T_intName(((42 : GoUInt32)), "R_ARM_PREL31").__copy__(),
new T_intName(((43 : GoUInt32)), "R_ARM_MOVW_ABS_NC").__copy__(),
new T_intName(((44 : GoUInt32)), "R_ARM_MOVT_ABS").__copy__(),
new T_intName(((45 : GoUInt32)), "R_ARM_MOVW_PREL_NC").__copy__(),
new T_intName(((46 : GoUInt32)), "R_ARM_MOVT_PREL").__copy__(),
new T_intName(((47 : GoUInt32)), "R_ARM_THM_MOVW_ABS_NC").__copy__(),
new T_intName(((48 : GoUInt32)), "R_ARM_THM_MOVT_ABS").__copy__(),
new T_intName(((49 : GoUInt32)), "R_ARM_THM_MOVW_PREL_NC").__copy__(),
new T_intName(((50 : GoUInt32)), "R_ARM_THM_MOVT_PREL").__copy__(),
new T_intName(((51 : GoUInt32)), "R_ARM_THM_JUMP19").__copy__(),
new T_intName(((52 : GoUInt32)), "R_ARM_THM_JUMP6").__copy__(),
new T_intName(((53 : GoUInt32)), "R_ARM_THM_ALU_PREL_11_0").__copy__(),
new T_intName(((54 : GoUInt32)), "R_ARM_THM_PC12").__copy__(),
new T_intName(((55 : GoUInt32)), "R_ARM_ABS32_NOI").__copy__(),
new T_intName(((56 : GoUInt32)), "R_ARM_REL32_NOI").__copy__(),
new T_intName(((57 : GoUInt32)), "R_ARM_ALU_PC_G0_NC").__copy__(),
new T_intName(((58 : GoUInt32)), "R_ARM_ALU_PC_G0").__copy__(),
new T_intName(((59 : GoUInt32)), "R_ARM_ALU_PC_G1_NC").__copy__(),
new T_intName(((60 : GoUInt32)), "R_ARM_ALU_PC_G1").__copy__(),
new T_intName(((61 : GoUInt32)), "R_ARM_ALU_PC_G2").__copy__(),
new T_intName(((62 : GoUInt32)), "R_ARM_LDR_PC_G1").__copy__(),
new T_intName(((63 : GoUInt32)), "R_ARM_LDR_PC_G2").__copy__(),
new T_intName(((64 : GoUInt32)), "R_ARM_LDRS_PC_G0").__copy__(),
new T_intName(((65 : GoUInt32)), "R_ARM_LDRS_PC_G1").__copy__(),
new T_intName(((66 : GoUInt32)), "R_ARM_LDRS_PC_G2").__copy__(),
new T_intName(((67 : GoUInt32)), "R_ARM_LDC_PC_G0").__copy__(),
new T_intName(((68 : GoUInt32)), "R_ARM_LDC_PC_G1").__copy__(),
new T_intName(((69 : GoUInt32)), "R_ARM_LDC_PC_G2").__copy__(),
new T_intName(((70 : GoUInt32)), "R_ARM_ALU_SB_G0_NC").__copy__(),
new T_intName(((71 : GoUInt32)), "R_ARM_ALU_SB_G0").__copy__(),
new T_intName(((72 : GoUInt32)), "R_ARM_ALU_SB_G1_NC").__copy__(),
new T_intName(((73 : GoUInt32)), "R_ARM_ALU_SB_G1").__copy__(),
new T_intName(((74 : GoUInt32)), "R_ARM_ALU_SB_G2").__copy__(),
new T_intName(((75 : GoUInt32)), "R_ARM_LDR_SB_G0").__copy__(),
new T_intName(((76 : GoUInt32)), "R_ARM_LDR_SB_G1").__copy__(),
new T_intName(((77 : GoUInt32)), "R_ARM_LDR_SB_G2").__copy__(),
new T_intName(((78 : GoUInt32)), "R_ARM_LDRS_SB_G0").__copy__(),
new T_intName(((79 : GoUInt32)), "R_ARM_LDRS_SB_G1").__copy__(),
new T_intName(((80 : GoUInt32)), "R_ARM_LDRS_SB_G2").__copy__(),
new T_intName(((81 : GoUInt32)), "R_ARM_LDC_SB_G0").__copy__(),
new T_intName(((82 : GoUInt32)), "R_ARM_LDC_SB_G1").__copy__(),
new T_intName(((83 : GoUInt32)), "R_ARM_LDC_SB_G2").__copy__(),
new T_intName(((84 : GoUInt32)), "R_ARM_MOVW_BREL_NC").__copy__(),
new T_intName(((85 : GoUInt32)), "R_ARM_MOVT_BREL").__copy__(),
new T_intName(((86 : GoUInt32)), "R_ARM_MOVW_BREL").__copy__(),
new T_intName(((87 : GoUInt32)), "R_ARM_THM_MOVW_BREL_NC").__copy__(),
new T_intName(((88 : GoUInt32)), "R_ARM_THM_MOVT_BREL").__copy__(),
new T_intName(((89 : GoUInt32)), "R_ARM_THM_MOVW_BREL").__copy__(),
new T_intName(((90 : GoUInt32)), "R_ARM_TLS_GOTDESC").__copy__(),
new T_intName(((91 : GoUInt32)), "R_ARM_TLS_CALL").__copy__(),
new T_intName(((92 : GoUInt32)), "R_ARM_TLS_DESCSEQ").__copy__(),
new T_intName(((93 : GoUInt32)), "R_ARM_THM_TLS_CALL").__copy__(),
new T_intName(((94 : GoUInt32)), "R_ARM_PLT32_ABS").__copy__(),
new T_intName(((95 : GoUInt32)), "R_ARM_GOT_ABS").__copy__(),
new T_intName(((96 : GoUInt32)), "R_ARM_GOT_PREL").__copy__(),
new T_intName(((97 : GoUInt32)), "R_ARM_GOT_BREL12").__copy__(),
new T_intName(((98 : GoUInt32)), "R_ARM_GOTOFF12").__copy__(),
new T_intName(((99 : GoUInt32)), "R_ARM_GOTRELAX").__copy__(),
new T_intName(((100 : GoUInt32)), "R_ARM_GNU_VTENTRY").__copy__(),
new T_intName(((101 : GoUInt32)), "R_ARM_GNU_VTINHERIT").__copy__(),
new T_intName(((102 : GoUInt32)), "R_ARM_THM_JUMP11").__copy__(),
new T_intName(((103 : GoUInt32)), "R_ARM_THM_JUMP8").__copy__(),
new T_intName(((104 : GoUInt32)), "R_ARM_TLS_GD32").__copy__(),
new T_intName(((105 : GoUInt32)), "R_ARM_TLS_LDM32").__copy__(),
new T_intName(((106 : GoUInt32)), "R_ARM_TLS_LDO32").__copy__(),
new T_intName(((107 : GoUInt32)), "R_ARM_TLS_IE32").__copy__(),
new T_intName(((108 : GoUInt32)), "R_ARM_TLS_LE32").__copy__(),
new T_intName(((109 : GoUInt32)), "R_ARM_TLS_LDO12").__copy__(),
new T_intName(((110 : GoUInt32)), "R_ARM_TLS_LE12").__copy__(),
new T_intName(((111 : GoUInt32)), "R_ARM_TLS_IE12GP").__copy__(),
new T_intName(((112 : GoUInt32)), "R_ARM_PRIVATE_0").__copy__(),
new T_intName(((113 : GoUInt32)), "R_ARM_PRIVATE_1").__copy__(),
new T_intName(((114 : GoUInt32)), "R_ARM_PRIVATE_2").__copy__(),
new T_intName(((115 : GoUInt32)), "R_ARM_PRIVATE_3").__copy__(),
new T_intName(((116 : GoUInt32)), "R_ARM_PRIVATE_4").__copy__(),
new T_intName(((117 : GoUInt32)), "R_ARM_PRIVATE_5").__copy__(),
new T_intName(((118 : GoUInt32)), "R_ARM_PRIVATE_6").__copy__(),
new T_intName(((119 : GoUInt32)), "R_ARM_PRIVATE_7").__copy__(),
new T_intName(((120 : GoUInt32)), "R_ARM_PRIVATE_8").__copy__(),
new T_intName(((121 : GoUInt32)), "R_ARM_PRIVATE_9").__copy__(),
new T_intName(((122 : GoUInt32)), "R_ARM_PRIVATE_10").__copy__(),
new T_intName(((123 : GoUInt32)), "R_ARM_PRIVATE_11").__copy__(),
new T_intName(((124 : GoUInt32)), "R_ARM_PRIVATE_12").__copy__(),
new T_intName(((125 : GoUInt32)), "R_ARM_PRIVATE_13").__copy__(),
new T_intName(((126 : GoUInt32)), "R_ARM_PRIVATE_14").__copy__(),
new T_intName(((127 : GoUInt32)), "R_ARM_PRIVATE_15").__copy__(),
new T_intName(((128 : GoUInt32)), "R_ARM_ME_TOO").__copy__(),
new T_intName(((129 : GoUInt32)), "R_ARM_THM_TLS_DESCSEQ16").__copy__(),
new T_intName(((130 : GoUInt32)), "R_ARM_THM_TLS_DESCSEQ32").__copy__(),
new T_intName(((131 : GoUInt32)), "R_ARM_THM_GOT_BREL12").__copy__(),
new T_intName(((132 : GoUInt32)), "R_ARM_THM_ALU_ABS_G0_NC").__copy__(),
new T_intName(((133 : GoUInt32)), "R_ARM_THM_ALU_ABS_G1_NC").__copy__(),
new T_intName(((134 : GoUInt32)), "R_ARM_THM_ALU_ABS_G2_NC").__copy__(),
new T_intName(((135 : GoUInt32)), "R_ARM_THM_ALU_ABS_G3").__copy__(),
new T_intName(((160 : GoUInt32)), "R_ARM_IRELATIVE").__copy__(),
new T_intName(((249 : GoUInt32)), "R_ARM_RXPC25").__copy__(),
new T_intName(((250 : GoUInt32)), "R_ARM_RSBREL32").__copy__(),
new T_intName(((251 : GoUInt32)), "R_ARM_THM_RPC22").__copy__(),
new T_intName(((252 : GoUInt32)), "R_ARM_RREL32").__copy__(),
new T_intName(((253 : GoUInt32)), "R_ARM_RABS32").__copy__(),
new T_intName(((254 : GoUInt32)), "R_ARM_RPC24").__copy__(),
new T_intName(((255 : GoUInt32)), "R_ARM_RBASE").__copy__());
final r_MIPS_INSERT_B : R_MIPS = new R_MIPS(((26 : GoInt)));
final r_AARCH64_TLSLD_ADR_PREL21 : R_AARCH64 = new R_AARCH64(((517 : GoInt)));
final r_X86_64_GLOB_DAT : R_X86_64 = new R_X86_64(((6 : GoInt)));
final dt_MIPS_LIBLISTNO : DynTag = new DynTag(((1879048208 : GoInt)));
final r_RISCV_TPREL_LO12_S : R_RISCV = new R_RISCV(((31 : GoInt)));
final r_PPC64_DTPREL16_LO : R_PPC64 = new R_PPC64(((75 : GoInt)));
final r_386_NONE : R_386 = new R_386(((0 : GoInt)));
final r_AARCH64_P32_LD32_GOT_LO12_NC : R_AARCH64 = new R_AARCH64(((27 : GoInt)));
final r_PPC64_DTPREL16_HIGHER : R_PPC64 = new R_PPC64(((103 : GoInt)));
final r_ARM_PRIVATE_0 : R_ARM = new R_ARM(((112 : GoInt)));
final em_ECOG1 : Machine = new Machine(((168 : GoUInt16)));
final stv_DEFAULT : SymVis = new SymVis(((0 : GoInt)));
final em_FR30 : Machine = new Machine(((84 : GoUInt16)));
final r_ARM_PRIVATE_1 : R_ARM = new R_ARM(((113 : GoInt)));
final em_ECOG2 : Machine = new Machine(((134 : GoUInt16)));
final r_ARM_PRIVATE_2 : R_ARM = new R_ARM(((114 : GoInt)));
final em_COREA_1ST : Machine = new Machine(((193 : GoUInt16)));
final r_PPC_EMB_NADDR16_HI : R_PPC = new R_PPC(((104 : GoInt)));
final r_ARM_PRIVATE_3 : R_ARM = new R_ARM(((115 : GoInt)));
final r_PPC64_ADDR16_HIGHEST : R_PPC64 = new R_PPC64(((41 : GoInt)));
final r_AARCH64_LDST64_ABS_LO12_NC : R_AARCH64 = new R_AARCH64(((286 : GoInt)));
final sht_SYMTAB_SHNDX : SectionType = new SectionType(((18 : GoUInt32)));
final r_ARM_PRIVATE_4 : R_ARM = new R_ARM(((116 : GoInt)));
final em_M32R : Machine = new Machine(((88 : GoUInt16)));
final r_PPC64_GOT16_HA : R_PPC64 = new R_PPC64(((17 : GoInt)));
final r_RISCV_COPY : R_RISCV = new R_RISCV(((4 : GoInt)));
final r_ARM_PRIVATE_5 : R_ARM = new R_ARM(((117 : GoInt)));
final shn_LOPROC : SectionIndex = new SectionIndex(((65280 : GoInt)));
final dt_SYMINENT : DynTag = new DynTag(((1879047679 : GoInt)));
final r_ARM_PRIVATE_6 : R_ARM = new R_ARM(((118 : GoInt)));
final r_PPC_ADDR32 : R_PPC = new R_PPC(((1 : GoInt)));
final r_ARM_PRIVATE_7 : R_ARM = new R_ARM(((119 : GoInt)));
final stb_LOPROC : SymBind = new SymBind(((13 : GoInt)));
final r_ARM_PRIVATE_8 : R_ARM = new R_ARM(((120 : GoInt)));
final r_MIPS_GPREL32 : R_MIPS = new R_MIPS(((12 : GoInt)));
final r_PPC_GOT16_LO : R_PPC = new R_PPC(((15 : GoInt)));
final r_ARM_THM_TLS_CALL : R_ARM = new R_ARM(((93 : GoInt)));
var _rmipsStrings : Slice<T_intName> = new Slice<T_intName>(
new T_intName(((0 : GoUInt32)), "R_MIPS_NONE").__copy__(),
new T_intName(((1 : GoUInt32)), "R_MIPS_16").__copy__(),
new T_intName(((2 : GoUInt32)), "R_MIPS_32").__copy__(),
new T_intName(((3 : GoUInt32)), "R_MIPS_REL32").__copy__(),
new T_intName(((4 : GoUInt32)), "R_MIPS_26").__copy__(),
new T_intName(((5 : GoUInt32)), "R_MIPS_HI16").__copy__(),
new T_intName(((6 : GoUInt32)), "R_MIPS_LO16").__copy__(),
new T_intName(((7 : GoUInt32)), "R_MIPS_GPREL16").__copy__(),
new T_intName(((8 : GoUInt32)), "R_MIPS_LITERAL").__copy__(),
new T_intName(((9 : GoUInt32)), "R_MIPS_GOT16").__copy__(),
new T_intName(((10 : GoUInt32)), "R_MIPS_PC16").__copy__(),
new T_intName(((11 : GoUInt32)), "R_MIPS_CALL16").__copy__(),
new T_intName(((12 : GoUInt32)), "R_MIPS_GPREL32").__copy__(),
new T_intName(((16 : GoUInt32)), "R_MIPS_SHIFT5").__copy__(),
new T_intName(((17 : GoUInt32)), "R_MIPS_SHIFT6").__copy__(),
new T_intName(((18 : GoUInt32)), "R_MIPS_64").__copy__(),
new T_intName(((19 : GoUInt32)), "R_MIPS_GOT_DISP").__copy__(),
new T_intName(((20 : GoUInt32)), "R_MIPS_GOT_PAGE").__copy__(),
new T_intName(((21 : GoUInt32)), "R_MIPS_GOT_OFST").__copy__(),
new T_intName(((22 : GoUInt32)), "R_MIPS_GOT_HI16").__copy__(),
new T_intName(((23 : GoUInt32)), "R_MIPS_GOT_LO16").__copy__(),
new T_intName(((24 : GoUInt32)), "R_MIPS_SUB").__copy__(),
new T_intName(((25 : GoUInt32)), "R_MIPS_INSERT_A").__copy__(),
new T_intName(((26 : GoUInt32)), "R_MIPS_INSERT_B").__copy__(),
new T_intName(((27 : GoUInt32)), "R_MIPS_DELETE").__copy__(),
new T_intName(((28 : GoUInt32)), "R_MIPS_HIGHER").__copy__(),
new T_intName(((29 : GoUInt32)), "R_MIPS_HIGHEST").__copy__(),
new T_intName(((30 : GoUInt32)), "R_MIPS_CALL_HI16").__copy__(),
new T_intName(((31 : GoUInt32)), "R_MIPS_CALL_LO16").__copy__(),
new T_intName(((32 : GoUInt32)), "R_MIPS_SCN_DISP").__copy__(),
new T_intName(((33 : GoUInt32)), "R_MIPS_REL16").__copy__(),
new T_intName(((34 : GoUInt32)), "R_MIPS_ADD_IMMEDIATE").__copy__(),
new T_intName(((35 : GoUInt32)), "R_MIPS_PJUMP").__copy__(),
new T_intName(((36 : GoUInt32)), "R_MIPS_RELGOT").__copy__(),
new T_intName(((37 : GoUInt32)), "R_MIPS_JALR").__copy__(),
new T_intName(((38 : GoUInt32)), "R_MIPS_TLS_DTPMOD32").__copy__(),
new T_intName(((39 : GoUInt32)), "R_MIPS_TLS_DTPREL32").__copy__(),
new T_intName(((40 : GoUInt32)), "R_MIPS_TLS_DTPMOD64").__copy__(),
new T_intName(((41 : GoUInt32)), "R_MIPS_TLS_DTPREL64").__copy__(),
new T_intName(((42 : GoUInt32)), "R_MIPS_TLS_GD").__copy__(),
new T_intName(((43 : GoUInt32)), "R_MIPS_TLS_LDM").__copy__(),
new T_intName(((44 : GoUInt32)), "R_MIPS_TLS_DTPREL_HI16").__copy__(),
new T_intName(((45 : GoUInt32)), "R_MIPS_TLS_DTPREL_LO16").__copy__(),
new T_intName(((46 : GoUInt32)), "R_MIPS_TLS_GOTTPREL").__copy__(),
new T_intName(((47 : GoUInt32)), "R_MIPS_TLS_TPREL32").__copy__(),
new T_intName(((48 : GoUInt32)), "R_MIPS_TLS_TPREL64").__copy__(),
new T_intName(((49 : GoUInt32)), "R_MIPS_TLS_TPREL_HI16").__copy__(),
new T_intName(((50 : GoUInt32)), "R_MIPS_TLS_TPREL_LO16").__copy__());
final r_386_PC8 : R_386 = new R_386(((23 : GoInt)));
final r_ARM_PRIVATE_9 : R_ARM = new R_ARM(((121 : GoInt)));
final r_AARCH64_P32_COPY : R_AARCH64 = new R_AARCH64(((180 : GoInt)));
final r_MIPS_CALL_HI16 : R_MIPS = new R_MIPS(((30 : GoInt)));
final em_MCHP_PIC : Machine = new Machine(((204 : GoUInt16)));
final r_386_32 : R_386 = new R_386(((1 : GoInt)));
final r_X86_64_TPOFF64 : R_X86_64 = new R_X86_64(((18 : GoInt)));
final r_PPC64_ADDR16_HIGHA : R_PPC64 = new R_PPC64(((111 : GoInt)));
final sht_HIOS : SectionType = new SectionType(((1879048191 : GoUInt32)));
final r_PPC64_GOT16_HI : R_PPC64 = new R_PPC64(((16 : GoInt)));
final r_X86_64_TPOFF32 : R_X86_64 = new R_X86_64(((23 : GoInt)));
final r_386_TLS_GD_CALL : R_386 = new R_386(((26 : GoInt)));
final em_D10V : Machine = new Machine(((85 : GoUInt16)));
final em_STARCORE : Machine = new Machine(((58 : GoUInt16)));
final r_PPC_GOT_TLSGD16 : R_PPC = new R_PPC(((79 : GoInt)));
final r_386_TLS_DESC_CALL : R_386 = new R_386(((40 : GoInt)));
final r_ARM_JUMP_SLOT : R_ARM = new R_ARM(((22 : GoInt)));
final r_ARM_ALU_SB_G0_NC : R_ARM = new R_ARM(((70 : GoInt)));
final em_NCPU : Machine = new Machine(((56 : GoUInt16)));
final em_RISCV : Machine = new Machine(((243 : GoUInt16)));
final dt_FINI_ARRAYSZ : DynTag = new DynTag(((28 : GoInt)));
final sht_LOPROC : SectionType = new SectionType(((1879048192 : GoUInt32)));
final r_386_JMP_SLOT : R_386 = new R_386(((7 : GoInt)));
final r_PPC_ADDR14_BRTAKEN : R_PPC = new R_PPC(((8 : GoInt)));
final em_ARC : Machine = new Machine(((45 : GoUInt16)));
final r_AARCH64_P32_RELATIVE : R_AARCH64 = new R_AARCH64(((183 : GoInt)));
final r_ALPHA_GPVALUE : R_ALPHA = new R_ALPHA(((16 : GoInt)));
final r_ARM_THM_GOT_BREL12 : R_ARM = new R_ARM(((131 : GoInt)));
final pt_OPENBSD_RANDOMIZE : ProgType = new ProgType(((1705237478 : GoInt)));
final r_RISCV_ADD64 : R_RISCV = new R_RISCV(((36 : GoInt)));
final r_ALPHA_SREL16 : R_ALPHA = new R_ALPHA(((9 : GoInt)));
final em_SH : Machine = new Machine(((42 : GoUInt16)));
final r_AARCH64_P32_ADR_GOT_PAGE : R_AARCH64 = new R_AARCH64(((26 : GoInt)));
final r_RISCV_ADD32 : R_RISCV = new R_RISCV(((35 : GoInt)));
final em_NONE : Machine = new Machine(((0 : GoUInt16)));
final dt_CONFIG : DynTag = new DynTag(((1879047930 : GoInt)));
final r_390_TLS_LE64 : R_390 = new R_390(((51 : GoInt)));
final em_R32C : Machine = new Machine(((162 : GoUInt16)));
final r_ARM_ALU_PCREL_15_8 : R_ARM = new R_ARM(((33 : GoInt)));
final shn_LOOS : SectionIndex = new SectionIndex(((65312 : GoInt)));
final r_PPC64_ADDR16_HA : R_PPC64 = new R_PPC64(((6 : GoInt)));
final r_AARCH64_TLSDESC : R_AARCH64 = new R_AARCH64(((1031 : GoInt)));
final r_390_TLS_LE32 : R_390 = new R_390(((50 : GoInt)));
final em_FIREPATH : Machine = new Machine(((78 : GoUInt16)));
final r_ARM_ALU_SBREL_27_20_CK : R_ARM = new R_ARM(((37 : GoInt)));
final em_PJ : Machine = new Machine(((91 : GoUInt16)));
final em_ARM : Machine = new Machine(((40 : GoUInt16)));
final r_MIPS_HIGHER : R_MIPS = new R_MIPS(((28 : GoInt)));
final r_ARM_THM_PC22 : R_ARM = new R_ARM(((10 : GoInt)));
final r_AARCH64_JUMP_SLOT : R_AARCH64 = new R_AARCH64(((1026 : GoInt)));
final pt_MIPS_OPTIONS : ProgType = new ProgType(((1879048194 : GoInt)));
final r_PPC_EMB_RELST_LO : R_PPC = new R_PPC(((112 : GoInt)));
final em_V800 : Machine = new Machine(((36 : GoUInt16)));
final em_MICROBLAZE : Machine = new Machine(((189 : GoUInt16)));
final ei_ABIVERSION : GoInt64 = ((8 : GoUnTypedInt));
final stv_INTERNAL : SymVis = new SymVis(((1 : GoInt)));
final r_PPC64_ADDR16_HI : R_PPC64 = new R_PPC64(((5 : GoInt)));
final r_AARCH64_P32_TLS_TPREL : R_AARCH64 = new R_AARCH64(((186 : GoInt)));
final r_PPC_TPREL16_LO : R_PPC = new R_PPC(((70 : GoInt)));
final r_PPC64_TLSGD : R_PPC64 = new R_PPC64(((107 : GoInt)));
final r_ARM_RSBREL32 : R_ARM = new R_ARM(((250 : GoInt)));
final dt_FEATURE : DynTag = new DynTag(((1879047676 : GoInt)));
final pt_GNU_EH_FRAME : ProgType = new ProgType(((1685382480 : GoInt)));
final em_XCORE : Machine = new Machine(((203 : GoUInt16)));
final r_ARM_PC24 : R_ARM = new R_ARM(((1 : GoInt)));
final r_PPC64_TPREL16 : R_PPC64 = new R_PPC64(((69 : GoInt)));
final r_ARM_THM_MOVT_PREL : R_ARM = new R_ARM(((50 : GoInt)));
final r_PPC_GOT_TLSGD16_HA : R_PPC = new R_PPC(((82 : GoInt)));
final r_386_TLS_GOTIE : R_386 = new R_386(((16 : GoInt)));
final em_78KOR : Machine = new Machine(((199 : GoUInt16)));
final stb_LOCAL : SymBind = new SymBind(((0 : GoInt)));
final dt_PPC_GOT : DynTag = new DynTag(((1879048192 : GoInt)));
final r_AARCH64_MOVW_SABS_G0 : R_AARCH64 = new R_AARCH64(((270 : GoInt)));
final stb_HIOS : SymBind = new SymBind(((12 : GoInt)));
final r_PPC_EMB_SDAI16 : R_PPC = new R_PPC(((106 : GoInt)));
final r_AARCH64_MOVW_SABS_G1 : R_AARCH64 = new R_AARCH64(((271 : GoInt)));
final r_PPC64_IRELATIVE : R_PPC64 = new R_PPC64(((248 : GoInt)));
final em_MMA : Machine = new Machine(((54 : GoUInt16)));
final em_RH32 : Machine = new Machine(((38 : GoUInt16)));
final r_AARCH64_MOVW_SABS_G2 : R_AARCH64 = new R_AARCH64(((272 : GoInt)));
final r_AARCH64_P32_TLS_DTPREL : R_AARCH64 = new R_AARCH64(((185 : GoInt)));
final em_MAXQ30 : Machine = new Machine(((169 : GoUInt16)));
var _ntypeStrings : Slice<T_intName> = new Slice<T_intName>(new T_intName(((1 : GoUInt32)), "NT_PRSTATUS").__copy__(), new T_intName(((2 : GoUInt32)), "NT_FPREGSET").__copy__(), new T_intName(((3 : GoUInt32)), "NT_PRPSINFO").__copy__());
final r_X86_64_GOTPC64 : R_X86_64 = new R_X86_64(((29 : GoInt)));
final r_ARM_RBASE : R_ARM = new R_ARM(((255 : GoInt)));
final r_390_GOTPLT12 : R_390 = new R_390(((29 : GoInt)));
final r_RISCV_GNU_VTINHERIT : R_RISCV = new R_RISCV(((41 : GoInt)));
final sht_FINI_ARRAY : SectionType = new SectionType(((15 : GoUInt32)));
final r_PPC64_GOT_TLSGD16 : R_PPC64 = new R_PPC64(((79 : GoInt)));
final r_X86_64_GOTPC32 : R_X86_64 = new R_X86_64(((26 : GoInt)));
final r_MIPS_PC16 : R_MIPS = new R_MIPS(((10 : GoInt)));
final r_PPC_TPREL32 : R_PPC = new R_PPC(((73 : GoInt)));
final r_PPC_GOT_TLSGD16_HI : R_PPC = new R_PPC(((81 : GoInt)));
final pt_LOPROC : ProgType = new ProgType(((1879048192 : GoInt)));
final em_MSP430 : Machine = new Machine(((105 : GoUInt16)));
final r_390_GOTPLT16 : R_390 = new R_390(((30 : GoInt)));
final r_PPC_GOT_TLSLD16 : R_PPC = new R_PPC(((83 : GoInt)));
final et_HIOS : Type = new Type(((65279 : GoUInt16)));
final stt_COMMON : SymType = new SymType(((5 : GoInt)));
final r_SPARC_PCPLT10 : R_SPARC = new R_SPARC(((29 : GoInt)));
final r_386_TLS_DESC : R_386 = new R_386(((41 : GoInt)));
final compress_LOPROC : CompressionType = new CompressionType(((1879048192 : GoInt)));
final r_SPARC_HI22 : R_SPARC = new R_SPARC(((9 : GoInt)));
final r_RISCV_JUMP_SLOT : R_RISCV = new R_RISCV(((5 : GoInt)));
final r_MIPS_TLS_LDM : R_MIPS = new R_MIPS(((43 : GoInt)));
final r_PPC64_REL16_HA : R_PPC64 = new R_PPC64(((252 : GoInt)));
final dt_FILTER : DynTag = new DynTag(((2147483647 : GoInt)));
final dt_PLTRELSZ : DynTag = new DynTag(((2 : GoInt)));
final r_ARM_GLOB_DAT : R_ARM = new R_ARM(((21 : GoInt)));
final arm_MAGIC_TRAMP_NUMBER : GoInt64 = ((1543503875 : GoUnTypedInt));
final r_390_TLS_GD64 : R_390 = new R_390(((41 : GoInt)));
final shn_XINDEX : SectionIndex = new SectionIndex(((65535 : GoInt)));
final r_ARM_LDR_PC_G1 : R_ARM = new R_ARM(((62 : GoInt)));
final r_PPC64_DTPREL16_HIGHEST : R_PPC64 = new R_PPC64(((105 : GoInt)));
final r_ARM_LDR_PC_G2 : R_ARM = new R_ARM(((63 : GoInt)));
final r_390_TLS_GD32 : R_390 = new R_390(((40 : GoInt)));
final r_PPC64_DTPREL16_LO_DS : R_PPC64 = new R_PPC64(((102 : GoInt)));
final r_X86_64_DTPOFF64 : R_X86_64 = new R_X86_64(((17 : GoInt)));
final dt_SYMINFO : DynTag = new DynTag(((1879047935 : GoInt)));
final r_PPC64_REL16_HI : R_PPC64 = new R_PPC64(((251 : GoInt)));
final r_X86_64_DTPOFF32 : R_X86_64 = new R_X86_64(((21 : GoInt)));
final r_PPC_COPY : R_PPC = new R_PPC(((19 : GoInt)));
final r_AARCH64_TLSDESC_ADD : R_AARCH64 = new R_AARCH64(((568 : GoInt)));
final r_ARM_THM_ALU_ABS_G0_NC : R_ARM = new R_ARM(((132 : GoInt)));
final dt_ENCODING : DynTag = new DynTag(((32 : GoInt)));
final r_AARCH64_ADD_ABS_LO12_NC : R_AARCH64 = new R_AARCH64(((277 : GoInt)));
final r_RISCV_TLS_DTPMOD64 : R_RISCV = new R_RISCV(((7 : GoInt)));
final r_X86_64_JMP_SLOT : R_X86_64 = new R_X86_64(((7 : GoInt)));
final dt_MIPS_FLAGS : DynTag = new DynTag(((1879048197 : GoInt)));
final dt_VERNEEDNUM : DynTag = new DynTag(((1879048191 : GoInt)));
final dt_RPATH : DynTag = new DynTag(((15 : GoInt)));
final r_RISCV_TLS_DTPMOD32 : R_RISCV = new R_RISCV(((6 : GoInt)));
final r_MIPS_16 : R_MIPS = new R_MIPS(((1 : GoInt)));
final r_PPC_EMB_SDA2REL : R_PPC = new R_PPC(((108 : GoInt)));
final pt_PAX_FLAGS : ProgType = new ProgType(((1694766464 : GoInt)));
final dt_MIPS_INTERFACE : DynTag = new DynTag(((1879048234 : GoInt)));
final em_KMX8 : Machine = new Machine(((213 : GoUInt16)));
final dt_PPC64_OPDSZ : DynTag = new DynTag(((1879048194 : GoInt)));
final r_ARM_GOTOFF : R_ARM = new R_ARM(((24 : GoInt)));
final r_ARM_TLS_LE32 : R_ARM = new R_ARM(((108 : GoInt)));
final _seekStart : GoInt = ((0 : GoInt));
final r_SPARC_GOT10 : R_SPARC = new R_SPARC(((13 : GoInt)));
var _r390Strings : Slice<T_intName> = new Slice<T_intName>(
new T_intName(((0 : GoUInt32)), "R_390_NONE").__copy__(),
new T_intName(((1 : GoUInt32)), "R_390_8").__copy__(),
new T_intName(((2 : GoUInt32)), "R_390_12").__copy__(),
new T_intName(((3 : GoUInt32)), "R_390_16").__copy__(),
new T_intName(((4 : GoUInt32)), "R_390_32").__copy__(),
new T_intName(((5 : GoUInt32)), "R_390_PC32").__copy__(),
new T_intName(((6 : GoUInt32)), "R_390_GOT12").__copy__(),
new T_intName(((7 : GoUInt32)), "R_390_GOT32").__copy__(),
new T_intName(((8 : GoUInt32)), "R_390_PLT32").__copy__(),
new T_intName(((9 : GoUInt32)), "R_390_COPY").__copy__(),
new T_intName(((10 : GoUInt32)), "R_390_GLOB_DAT").__copy__(),
new T_intName(((11 : GoUInt32)), "R_390_JMP_SLOT").__copy__(),
new T_intName(((12 : GoUInt32)), "R_390_RELATIVE").__copy__(),
new T_intName(((13 : GoUInt32)), "R_390_GOTOFF").__copy__(),
new T_intName(((14 : GoUInt32)), "R_390_GOTPC").__copy__(),
new T_intName(((15 : GoUInt32)), "R_390_GOT16").__copy__(),
new T_intName(((16 : GoUInt32)), "R_390_PC16").__copy__(),
new T_intName(((17 : GoUInt32)), "R_390_PC16DBL").__copy__(),
new T_intName(((18 : GoUInt32)), "R_390_PLT16DBL").__copy__(),
new T_intName(((19 : GoUInt32)), "R_390_PC32DBL").__copy__(),
new T_intName(((20 : GoUInt32)), "R_390_PLT32DBL").__copy__(),
new T_intName(((21 : GoUInt32)), "R_390_GOTPCDBL").__copy__(),
new T_intName(((22 : GoUInt32)), "R_390_64").__copy__(),
new T_intName(((23 : GoUInt32)), "R_390_PC64").__copy__(),
new T_intName(((24 : GoUInt32)), "R_390_GOT64").__copy__(),
new T_intName(((25 : GoUInt32)), "R_390_PLT64").__copy__(),
new T_intName(((26 : GoUInt32)), "R_390_GOTENT").__copy__(),
new T_intName(((27 : GoUInt32)), "R_390_GOTOFF16").__copy__(),
new T_intName(((28 : GoUInt32)), "R_390_GOTOFF64").__copy__(),
new T_intName(((29 : GoUInt32)), "R_390_GOTPLT12").__copy__(),
new T_intName(((30 : GoUInt32)), "R_390_GOTPLT16").__copy__(),
new T_intName(((31 : GoUInt32)), "R_390_GOTPLT32").__copy__(),
new T_intName(((32 : GoUInt32)), "R_390_GOTPLT64").__copy__(),
new T_intName(((33 : GoUInt32)), "R_390_GOTPLTENT").__copy__(),
new T_intName(((34 : GoUInt32)), "R_390_GOTPLTOFF16").__copy__(),
new T_intName(((35 : GoUInt32)), "R_390_GOTPLTOFF32").__copy__(),
new T_intName(((36 : GoUInt32)), "R_390_GOTPLTOFF64").__copy__(),
new T_intName(((37 : GoUInt32)), "R_390_TLS_LOAD").__copy__(),
new T_intName(((38 : GoUInt32)), "R_390_TLS_GDCALL").__copy__(),
new T_intName(((39 : GoUInt32)), "R_390_TLS_LDCALL").__copy__(),
new T_intName(((40 : GoUInt32)), "R_390_TLS_GD32").__copy__(),
new T_intName(((41 : GoUInt32)), "R_390_TLS_GD64").__copy__(),
new T_intName(((42 : GoUInt32)), "R_390_TLS_GOTIE12").__copy__(),
new T_intName(((43 : GoUInt32)), "R_390_TLS_GOTIE32").__copy__(),
new T_intName(((44 : GoUInt32)), "R_390_TLS_GOTIE64").__copy__(),
new T_intName(((45 : GoUInt32)), "R_390_TLS_LDM32").__copy__(),
new T_intName(((46 : GoUInt32)), "R_390_TLS_LDM64").__copy__(),
new T_intName(((47 : GoUInt32)), "R_390_TLS_IE32").__copy__(),
new T_intName(((48 : GoUInt32)), "R_390_TLS_IE64").__copy__(),
new T_intName(((49 : GoUInt32)), "R_390_TLS_IEENT").__copy__(),
new T_intName(((50 : GoUInt32)), "R_390_TLS_LE32").__copy__(),
new T_intName(((51 : GoUInt32)), "R_390_TLS_LE64").__copy__(),
new T_intName(((52 : GoUInt32)), "R_390_TLS_LDO32").__copy__(),
new T_intName(((53 : GoUInt32)), "R_390_TLS_LDO64").__copy__(),
new T_intName(((54 : GoUInt32)), "R_390_TLS_DTPMOD").__copy__(),
new T_intName(((55 : GoUInt32)), "R_390_TLS_DTPOFF").__copy__(),
new T_intName(((56 : GoUInt32)), "R_390_TLS_TPOFF").__copy__(),
new T_intName(((57 : GoUInt32)), "R_390_20").__copy__(),
new T_intName(((58 : GoUInt32)), "R_390_GOT20").__copy__(),
new T_intName(((59 : GoUInt32)), "R_390_GOTPLT20").__copy__(),
new T_intName(((60 : GoUInt32)), "R_390_TLS_GOTIE20").__copy__());
final r_PPC_GOT16 : R_PPC = new R_PPC(((14 : GoInt)));
final r_386_TLS_LDM_PUSH : R_386 = new R_386(((29 : GoInt)));
final r_PPC64_REL24_NOTOC : R_PPC64 = new R_PPC64(((116 : GoInt)));
final r_PPC64_GOT_TLSLD16_LO : R_PPC64 = new R_PPC64(((84 : GoInt)));
final dt_GNU_PRELINKED : DynTag = new DynTag(((1879047669 : GoInt)));
final r_SPARC_GOT13 : R_SPARC = new R_SPARC(((14 : GoInt)));
final r_RISCV_JAL : R_RISCV = new R_RISCV(((17 : GoInt)));
final r_RISCV_GNU_VTENTRY : R_RISCV = new R_RISCV(((42 : GoInt)));
final elfosabi_NETBSD : OSABI = new OSABI(((2 : GoUInt8)));
final em_MAX : Machine = new Machine(((102 : GoUInt16)));
final r_390_JMP_SLOT : R_390 = new R_390(((11 : GoInt)));
final r_RISCV_RVC_BRANCH : R_RISCV = new R_RISCV(((44 : GoInt)));
final r_MIPS_TLS_DTPREL_HI16 : R_MIPS = new R_MIPS(((44 : GoInt)));
final r_AARCH64_P32_IRELATIVE : R_AARCH64 = new R_AARCH64(((188 : GoInt)));
final stt_HIPROC : SymType = new SymType(((15 : GoInt)));
final r_AARCH64_TLSGD_ADD_LO12_NC : R_AARCH64 = new R_AARCH64(((514 : GoInt)));
final r_PPC64_GOT_TLSLD16 : R_PPC64 = new R_PPC64(((83 : GoInt)));
final shf_MASKOS : SectionFlag = new SectionFlag(((267386880 : GoUInt32)));
final r_ALPHA_IMMED_GP_HI32 : R_ALPHA = new R_ALPHA(((20 : GoInt)));
final r_X86_64_GOTPC32_TLSDESC : R_X86_64 = new R_X86_64(((34 : GoInt)));
final r_ARM_ALU_SBREL_19_12_NC : R_ARM = new R_ARM(((36 : GoInt)));
final r_ARM_LDRS_PC_G0 : R_ARM = new R_ARM(((64 : GoInt)));
final r_SPARC_COPY : R_SPARC = new R_SPARC(((19 : GoInt)));
final r_AARCH64_TLSGD_MOVW_G0_NC : R_AARCH64 = new R_AARCH64(((516 : GoInt)));
final r_ARM_LDRS_PC_G1 : R_ARM = new R_ARM(((65 : GoInt)));
final r_AARCH64_ABS64 : R_AARCH64 = new R_AARCH64(((257 : GoInt)));
final r_ARM_LDRS_PC_G2 : R_ARM = new R_ARM(((66 : GoInt)));
final r_MIPS_GOT_HI16 : R_MIPS = new R_MIPS(((22 : GoInt)));
final r_SPARC_REGISTER : R_SPARC = new R_SPARC(((53 : GoInt)));
final pt_AARCH64_UNWIND : ProgType = new ProgType(((1879048193 : GoInt)));
final r_AARCH64_LDST16_ABS_LO12_NC : R_AARCH64 = new R_AARCH64(((284 : GoInt)));
final dt_FLAGS : DynTag = new DynTag(((30 : GoInt)));
final r_AARCH64_ABS32 : R_AARCH64 = new R_AARCH64(((258 : GoInt)));
final r_PPC_GOT_TLSLD16_LO : R_PPC = new R_PPC(((84 : GoInt)));
final dt_ADDRRNGHI : DynTag = new DynTag(((1879047935 : GoInt)));
final r_PPC64_TPREL16_DS : R_PPC64 = new R_PPC64(((95 : GoInt)));
final r_MIPS_TLS_GOTTPREL : R_MIPS = new R_MIPS(((46 : GoInt)));
final r_ARM_TLS_TPOFF32 : R_ARM = new R_ARM(((19 : GoInt)));
final em_S390 : Machine = new Machine(((22 : GoUInt16)));
final shf_ALLOC : SectionFlag = new SectionFlag(((2 : GoUInt32)));
final em_SHARC : Machine = new Machine(((133 : GoUInt16)));
final pt_MIPS_RTPROC : ProgType = new ProgType(((1879048193 : GoInt)));
final r_390_TLS_GOTIE64 : R_390 = new R_390(((44 : GoInt)));
final em_SE_C33 : Machine = new Machine(((107 : GoUInt16)));
final r_PPC64_GOT_TLSGD16_LO : R_PPC64 = new R_PPC64(((80 : GoInt)));
final r_MIPS_TLS_TPREL64 : R_MIPS = new R_MIPS(((48 : GoInt)));
final em_C166 : Machine = new Machine(((116 : GoUInt16)));
final r_390_TLS_GOTIE32 : R_390 = new R_390(((43 : GoInt)));
final em_VAX : Machine = new Machine(((75 : GoUInt16)));
final r_MIPS_TLS_TPREL32 : R_MIPS = new R_MIPS(((47 : GoInt)));
final dt_MOVESZ : DynTag = new DynTag(((1879047675 : GoInt)));
final dt_RUNPATH : DynTag = new DynTag(((29 : GoInt)));
final r_X86_64_DTPMOD64 : R_X86_64 = new R_X86_64(((16 : GoInt)));
final r_RISCV_LO12_I : R_RISCV = new R_RISCV(((27 : GoInt)));
final r_ARM_THM_RPC22 : R_ARM = new R_ARM(((251 : GoInt)));
final r_ARM_GOTPC : R_ARM = new R_ARM(((25 : GoInt)));
final elfosabi_HURD : OSABI = new OSABI(((4 : GoUInt8)));
final shn_LORESERVE : SectionIndex = new SectionIndex(((65280 : GoInt)));
final sht_DYNAMIC : SectionType = new SectionType(((6 : GoUInt32)));
final r_SPARC_LOPLT10 : R_SPARC = new R_SPARC(((26 : GoInt)));
final em_COLDFIRE : Machine = new Machine(((52 : GoUInt16)));
final dt_RELACOUNT : DynTag = new DynTag(((1879048185 : GoInt)));
final r_PPC_EMB_RELSDA : R_PPC = new R_PPC(((116 : GoInt)));
final pt_INTERP : ProgType = new ProgType(((3 : GoInt)));
final pt_NOTE : ProgType = new ProgType(((4 : GoInt)));
final em_NDS32 : Machine = new Machine(((167 : GoUInt16)));
final r_AARCH64_P32_ABS32 : R_AARCH64 = new R_AARCH64(((1 : GoInt)));
final r_PPC64_SECTOFF_LO_DS : R_PPC64 = new R_PPC64(((61 : GoInt)));
final dt_MIPS_HIDDEN_GOTIDX : DynTag = new DynTag(((1879048231 : GoInt)));
final r_X86_64_TLSLD : R_X86_64 = new R_X86_64(((20 : GoInt)));
var _shtStrings : Slice<T_intName> = new Slice<T_intName>(
new T_intName(((0 : GoUInt32)), "SHT_NULL").__copy__(),
new T_intName(((1 : GoUInt32)), "SHT_PROGBITS").__copy__(),
new T_intName(((2 : GoUInt32)), "SHT_SYMTAB").__copy__(),
new T_intName(((3 : GoUInt32)), "SHT_STRTAB").__copy__(),
new T_intName(((4 : GoUInt32)), "SHT_RELA").__copy__(),
new T_intName(((5 : GoUInt32)), "SHT_HASH").__copy__(),
new T_intName(((6 : GoUInt32)), "SHT_DYNAMIC").__copy__(),
new T_intName(((7 : GoUInt32)), "SHT_NOTE").__copy__(),
new T_intName(((8 : GoUInt32)), "SHT_NOBITS").__copy__(),
new T_intName(((9 : GoUInt32)), "SHT_REL").__copy__(),
new T_intName(((10 : GoUInt32)), "SHT_SHLIB").__copy__(),
new T_intName(((11 : GoUInt32)), "SHT_DYNSYM").__copy__(),
new T_intName(((14 : GoUInt32)), "SHT_INIT_ARRAY").__copy__(),
new T_intName(((15 : GoUInt32)), "SHT_FINI_ARRAY").__copy__(),
new T_intName(((16 : GoUInt32)), "SHT_PREINIT_ARRAY").__copy__(),
new T_intName(((17 : GoUInt32)), "SHT_GROUP").__copy__(),
new T_intName(((18 : GoUInt32)), "SHT_SYMTAB_SHNDX").__copy__(),
new T_intName(((1610612736 : GoUInt32)), "SHT_LOOS").__copy__(),
new T_intName(((1879048181 : GoUInt32)), "SHT_GNU_ATTRIBUTES").__copy__(),
new T_intName(((1879048182 : GoUInt32)), "SHT_GNU_HASH").__copy__(),
new T_intName(((1879048183 : GoUInt32)), "SHT_GNU_LIBLIST").__copy__(),
new T_intName(((1879048189 : GoUInt32)), "SHT_GNU_VERDEF").__copy__(),
new T_intName(((1879048190 : GoUInt32)), "SHT_GNU_VERNEED").__copy__(),
new T_intName(((1879048191 : GoUInt32)), "SHT_GNU_VERSYM").__copy__(),
new T_intName(((1879048192 : GoUInt32)), "SHT_LOPROC").__copy__(),
new T_intName(((1879048234 : GoUInt32)), "SHT_MIPS_ABIFLAGS").__copy__(),
new T_intName(((2147483647 : GoUInt32)), "SHT_HIPROC").__copy__(),
new T_intName((("2147483648" : GoUInt32)), "SHT_LOUSER").__copy__(),
new T_intName((("4294967295" : GoUInt32)), "SHT_HIUSER").__copy__());
final dt_MIPS_RLD_MAP : DynTag = new DynTag(((1879048214 : GoInt)));
final r_RISCV_LO12_S : R_RISCV = new R_RISCV(((28 : GoInt)));
final r_ARM_TLS_GD32 : R_ARM = new R_ARM(((104 : GoInt)));
final r_390_GOTPLTENT : R_390 = new R_390(((33 : GoInt)));
final r_SPARC_LOX10 : R_SPARC = new R_SPARC(((49 : GoInt)));
final r_SPARC_DISP16 : R_SPARC = new R_SPARC(((5 : GoInt)));
final dt_INIT_ARRAY : DynTag = new DynTag(((25 : GoInt)));
final dt_MIPS_RLD_VERSION : DynTag = new DynTag(((1879048193 : GoInt)));
final dt_POSFLAG_1 : DynTag = new DynTag(((1879047677 : GoInt)));
final r_SPARC_UA16 : R_SPARC = new R_SPARC(((55 : GoInt)));
final r_PPC64_TOC16_DS : R_PPC64 = new R_PPC64(((63 : GoInt)));
final dt_BIND_NOW : DynTag = new DynTag(((24 : GoInt)));
final r_PPC64_TPREL16_HIGHER : R_PPC64 = new R_PPC64(((97 : GoInt)));
final r_390_64 : R_390 = new R_390(((22 : GoInt)));
final r_390_GOTPCDBL : R_390 = new R_390(((21 : GoInt)));
final dt_LOPROC : DynTag = new DynTag(((1879048192 : GoInt)));
final r_PPC64_GOT_TPREL16_HA : R_PPC64 = new R_PPC64(((90 : GoInt)));
final r_PPC64_DTPREL16 : R_PPC64 = new R_PPC64(((74 : GoInt)));
final r_390_32 : R_390 = new R_390(((4 : GoInt)));
final r_RISCV_CALL : R_RISCV = new R_RISCV(((18 : GoInt)));
final r_AARCH64_LDST8_ABS_LO12_NC : R_AARCH64 = new R_AARCH64(((278 : GoInt)));
final dt_SYMBOLIC : DynTag = new DynTag(((16 : GoInt)));
final r_RISCV_ALIGN : R_RISCV = new R_RISCV(((43 : GoInt)));
final r_AARCH64_LD64_GOT_LO12_NC : R_AARCH64 = new R_AARCH64(((312 : GoInt)));
final dt_MIPS_CONFLICT : DynTag = new DynTag(((1879048200 : GoInt)));
final r_PPC64_ADDR14 : R_PPC64 = new R_PPC64(((7 : GoInt)));
final stt_LOOS : SymType = new SymType(((10 : GoInt)));
final r_RISCV_TPREL_ADD : R_RISCV = new R_RISCV(((32 : GoInt)));
final em_MIPS_RS4_BE : Machine = new Machine(((10 : GoUInt16)));
final em_ARC_COMPACT2 : Machine = new Machine(((195 : GoUInt16)));
final em_ARC_COMPACT : Machine = new Machine(((93 : GoUInt16)));
final r_PPC64_ADDR16 : R_PPC64 = new R_PPC64(((3 : GoInt)));
final r_AARCH64_TLS_TPREL64 : R_AARCH64 = new R_AARCH64(((1030 : GoInt)));
final r_SPARC_WDISP16 : R_SPARC = new R_SPARC(((40 : GoInt)));
final r_MIPS_TLS_GD : R_MIPS = new R_MIPS(((42 : GoInt)));
final r_PPC64_GOT_TPREL16_HI : R_PPC64 = new R_PPC64(((89 : GoInt)));
final em_CDP : Machine = new Machine(((215 : GoUInt16)));
final em_EXCESS : Machine = new Machine(((111 : GoUInt16)));
var _rppcStrings : Slice<T_intName> = new Slice<T_intName>(
new T_intName(((0 : GoUInt32)), "R_PPC_NONE").__copy__(),
new T_intName(((1 : GoUInt32)), "R_PPC_ADDR32").__copy__(),
new T_intName(((2 : GoUInt32)), "R_PPC_ADDR24").__copy__(),
new T_intName(((3 : GoUInt32)), "R_PPC_ADDR16").__copy__(),
new T_intName(((4 : GoUInt32)), "R_PPC_ADDR16_LO").__copy__(),
new T_intName(((5 : GoUInt32)), "R_PPC_ADDR16_HI").__copy__(),
new T_intName(((6 : GoUInt32)), "R_PPC_ADDR16_HA").__copy__(),
new T_intName(((7 : GoUInt32)), "R_PPC_ADDR14").__copy__(),
new T_intName(((8 : GoUInt32)), "R_PPC_ADDR14_BRTAKEN").__copy__(),
new T_intName(((9 : GoUInt32)), "R_PPC_ADDR14_BRNTAKEN").__copy__(),
new T_intName(((10 : GoUInt32)), "R_PPC_REL24").__copy__(),
new T_intName(((11 : GoUInt32)), "R_PPC_REL14").__copy__(),
new T_intName(((12 : GoUInt32)), "R_PPC_REL14_BRTAKEN").__copy__(),
new T_intName(((13 : GoUInt32)), "R_PPC_REL14_BRNTAKEN").__copy__(),
new T_intName(((14 : GoUInt32)), "R_PPC_GOT16").__copy__(),
new T_intName(((15 : GoUInt32)), "R_PPC_GOT16_LO").__copy__(),
new T_intName(((16 : GoUInt32)), "R_PPC_GOT16_HI").__copy__(),
new T_intName(((17 : GoUInt32)), "R_PPC_GOT16_HA").__copy__(),
new T_intName(((18 : GoUInt32)), "R_PPC_PLTREL24").__copy__(),
new T_intName(((19 : GoUInt32)), "R_PPC_COPY").__copy__(),
new T_intName(((20 : GoUInt32)), "R_PPC_GLOB_DAT").__copy__(),
new T_intName(((21 : GoUInt32)), "R_PPC_JMP_SLOT").__copy__(),
new T_intName(((22 : GoUInt32)), "R_PPC_RELATIVE").__copy__(),
new T_intName(((23 : GoUInt32)), "R_PPC_LOCAL24PC").__copy__(),
new T_intName(((24 : GoUInt32)), "R_PPC_UADDR32").__copy__(),
new T_intName(((25 : GoUInt32)), "R_PPC_UADDR16").__copy__(),
new T_intName(((26 : GoUInt32)), "R_PPC_REL32").__copy__(),
new T_intName(((27 : GoUInt32)), "R_PPC_PLT32").__copy__(),
new T_intName(((28 : GoUInt32)), "R_PPC_PLTREL32").__copy__(),
new T_intName(((29 : GoUInt32)), "R_PPC_PLT16_LO").__copy__(),
new T_intName(((30 : GoUInt32)), "R_PPC_PLT16_HI").__copy__(),
new T_intName(((31 : GoUInt32)), "R_PPC_PLT16_HA").__copy__(),
new T_intName(((32 : GoUInt32)), "R_PPC_SDAREL16").__copy__(),
new T_intName(((33 : GoUInt32)), "R_PPC_SECTOFF").__copy__(),
new T_intName(((34 : GoUInt32)), "R_PPC_SECTOFF_LO").__copy__(),
new T_intName(((35 : GoUInt32)), "R_PPC_SECTOFF_HI").__copy__(),
new T_intName(((36 : GoUInt32)), "R_PPC_SECTOFF_HA").__copy__(),
new T_intName(((67 : GoUInt32)), "R_PPC_TLS").__copy__(),
new T_intName(((68 : GoUInt32)), "R_PPC_DTPMOD32").__copy__(),
new T_intName(((69 : GoUInt32)), "R_PPC_TPREL16").__copy__(),
new T_intName(((70 : GoUInt32)), "R_PPC_TPREL16_LO").__copy__(),
new T_intName(((71 : GoUInt32)), "R_PPC_TPREL16_HI").__copy__(),
new T_intName(((72 : GoUInt32)), "R_PPC_TPREL16_HA").__copy__(),
new T_intName(((73 : GoUInt32)), "R_PPC_TPREL32").__copy__(),
new T_intName(((74 : GoUInt32)), "R_PPC_DTPREL16").__copy__(),
new T_intName(((75 : GoUInt32)), "R_PPC_DTPREL16_LO").__copy__(),
new T_intName(((76 : GoUInt32)), "R_PPC_DTPREL16_HI").__copy__(),
new T_intName(((77 : GoUInt32)), "R_PPC_DTPREL16_HA").__copy__(),
new T_intName(((78 : GoUInt32)), "R_PPC_DTPREL32").__copy__(),
new T_intName(((79 : GoUInt32)), "R_PPC_GOT_TLSGD16").__copy__(),
new T_intName(((80 : GoUInt32)), "R_PPC_GOT_TLSGD16_LO").__copy__(),
new T_intName(((81 : GoUInt32)), "R_PPC_GOT_TLSGD16_HI").__copy__(),
new T_intName(((82 : GoUInt32)), "R_PPC_GOT_TLSGD16_HA").__copy__(),
new T_intName(((83 : GoUInt32)), "R_PPC_GOT_TLSLD16").__copy__(),
new T_intName(((84 : GoUInt32)), "R_PPC_GOT_TLSLD16_LO").__copy__(),
new T_intName(((85 : GoUInt32)), "R_PPC_GOT_TLSLD16_HI").__copy__(),
new T_intName(((86 : GoUInt32)), "R_PPC_GOT_TLSLD16_HA").__copy__(),
new T_intName(((87 : GoUInt32)), "R_PPC_GOT_TPREL16").__copy__(),
new T_intName(((88 : GoUInt32)), "R_PPC_GOT_TPREL16_LO").__copy__(),
new T_intName(((89 : GoUInt32)), "R_PPC_GOT_TPREL16_HI").__copy__(),
new T_intName(((90 : GoUInt32)), "R_PPC_GOT_TPREL16_HA").__copy__(),
new T_intName(((101 : GoUInt32)), "R_PPC_EMB_NADDR32").__copy__(),
new T_intName(((102 : GoUInt32)), "R_PPC_EMB_NADDR16").__copy__(),
new T_intName(((103 : GoUInt32)), "R_PPC_EMB_NADDR16_LO").__copy__(),
new T_intName(((104 : GoUInt32)), "R_PPC_EMB_NADDR16_HI").__copy__(),
new T_intName(((105 : GoUInt32)), "R_PPC_EMB_NADDR16_HA").__copy__(),
new T_intName(((106 : GoUInt32)), "R_PPC_EMB_SDAI16").__copy__(),
new T_intName(((107 : GoUInt32)), "R_PPC_EMB_SDA2I16").__copy__(),
new T_intName(((108 : GoUInt32)), "R_PPC_EMB_SDA2REL").__copy__(),
new T_intName(((109 : GoUInt32)), "R_PPC_EMB_SDA21").__copy__(),
new T_intName(((110 : GoUInt32)), "R_PPC_EMB_MRKREF").__copy__(),
new T_intName(((111 : GoUInt32)), "R_PPC_EMB_RELSEC16").__copy__(),
new T_intName(((112 : GoUInt32)), "R_PPC_EMB_RELST_LO").__copy__(),
new T_intName(((113 : GoUInt32)), "R_PPC_EMB_RELST_HI").__copy__(),
new T_intName(((114 : GoUInt32)), "R_PPC_EMB_RELST_HA").__copy__(),
new T_intName(((115 : GoUInt32)), "R_PPC_EMB_BIT_FLD").__copy__(),
new T_intName(((116 : GoUInt32)), "R_PPC_EMB_RELSDA").__copy__());
final r_SPARC_WDISP19 : R_SPARC = new R_SPARC(((41 : GoInt)));
final r_SPARC_HH22 : R_SPARC = new R_SPARC(((34 : GoInt)));
final dt_MIPS_PLTGOT : DynTag = new DynTag(((1879048242 : GoInt)));
final sht_HASH : SectionType = new SectionType(((5 : GoUInt32)));
final r_PPC_REL14_BRTAKEN : R_PPC = new R_PPC(((12 : GoInt)));
final r_386_PLT32 : R_386 = new R_386(((4 : GoInt)));
final df_BIND_NOW : DynFlag = new DynFlag(((8 : GoInt)));
final r_AARCH64_P32_TLSLE_ADD_TPREL_HI12 : R_AARCH64 = new R_AARCH64(((109 : GoInt)));
final r_ARM_THM_JUMP24 : R_ARM = new R_ARM(((30 : GoInt)));
final r_386_TLS_GOTDESC : R_386 = new R_386(((39 : GoInt)));
final r_ALPHA_BRADDR : R_ALPHA = new R_ALPHA(((7 : GoInt)));
final dt_MIPS_DELTA_SYM_NO : DynTag = new DynTag(((1879048222 : GoInt)));
final em_STM8 : Machine = new Machine(((186 : GoUInt16)));
final r_AARCH64_MOVW_UABS_G2_NC : R_AARCH64 = new R_AARCH64(((268 : GoInt)));
final r_AARCH64_P32_TSTBR14 : R_AARCH64 = new R_AARCH64(((18 : GoInt)));
final df_SYMBOLIC : DynFlag = new DynFlag(((2 : GoInt)));
final r_ARM_COPY : R_ARM = new R_ARM(((20 : GoInt)));
final em_COOL : Machine = new Machine(((217 : GoUInt16)));
final r_PPC_ADDR16_HA : R_PPC = new R_PPC(((6 : GoInt)));
final r_PPC64_REL14_BRTAKEN : R_PPC64 = new R_PPC64(((12 : GoInt)));
final dt_CHECKSUM : DynTag = new DynTag(((1879047672 : GoInt)));
final pt_DYNAMIC : ProgType = new ProgType(((2 : GoInt)));
final em_COREA_2ND : Machine = new Machine(((194 : GoUInt16)));
final r_AARCH64_P32_TLSDESC_CALL : R_AARCH64 = new R_AARCH64(((127 : GoInt)));
final r_PPC64_PLT16_LO_DS : R_PPC64 = new R_PPC64(((60 : GoInt)));
final r_AARCH64_P32_TLSDESC_LD_PREL19 : R_AARCH64 = new R_AARCH64(((122 : GoInt)));
final sht_GNU_LIBLIST : SectionType = new SectionType(((1879048183 : GoUInt32)));
final em_RCE : Machine = new Machine(((39 : GoUInt16)));
final r_ALPHA_IMMED_BR_HI32 : R_ALPHA = new R_ALPHA(((22 : GoInt)));
final r_AARCH64_TLSDESC_ADR_PAGE21 : R_AARCH64 = new R_AARCH64(((562 : GoInt)));
final r_PPC_ADDR16_HI : R_PPC = new R_PPC(((5 : GoInt)));
final r_AARCH64_P32_ADR_PREL_PG_HI21 : R_AARCH64 = new R_AARCH64(((11 : GoInt)));
final r_SPARC_PC22 : R_SPARC = new R_SPARC(((17 : GoInt)));
final dt_TLSDESC_GOT : DynTag = new DynTag(((1879047927 : GoInt)));
final r_PPC64_REL14 : R_PPC64 = new R_PPC64(((11 : GoInt)));
final r_390_TLS_DTPOFF : R_390 = new R_390(((55 : GoInt)));
final sht_HIPROC : SectionType = new SectionType(((2147483647 : GoUInt32)));
final r_PPC64_REL16 : R_PPC64 = new R_PPC64(((249 : GoInt)));
final em_CRAYNV2 : Machine = new Machine(((172 : GoUInt16)));
final r_ALPHA_IMMED_LO32 : R_ALPHA = new R_ALPHA(((23 : GoInt)));
final r_PPC64_REL14_BRNTAKEN : R_PPC64 = new R_PPC64(((13 : GoInt)));
final em_DSPIC30F : Machine = new Machine(((118 : GoUInt16)));
final r_PPC64_TOCSAVE : R_PPC64 = new R_PPC64(((109 : GoInt)));
final r_386_TLS_LE : R_386 = new R_386(((17 : GoInt)));
final em_TILEPRO : Machine = new Machine(((188 : GoUInt16)));
final r_RISCV_NONE : R_RISCV = new R_RISCV(((0 : GoInt)));
final r_PPC_PLT16_LO : R_PPC = new R_PPC(((29 : GoInt)));
final r_386_TLS_IE : R_386 = new R_386(((15 : GoInt)));
final em_PRISM : Machine = new Machine(((82 : GoUInt16)));
final pt_LOAD : ProgType = new ProgType(((1 : GoInt)));
final r_ARM_PRIVATE_10 : R_ARM = new R_ARM(((122 : GoInt)));
final r_AARCH64_ADR_PREL_PG_HI21_NC : R_AARCH64 = new R_AARCH64(((276 : GoInt)));
final r_ARM_PRIVATE_11 : R_ARM = new R_ARM(((123 : GoInt)));
final dt_MIPS_GOTSYM : DynTag = new DynTag(((1879048211 : GoInt)));
final r_ARM_PRIVATE_12 : R_ARM = new R_ARM(((124 : GoInt)));
final dt_PLTPADSZ : DynTag = new DynTag(((1879047673 : GoInt)));
final r_390_PC32DBL : R_390 = new R_390(((19 : GoInt)));
final em_PARISC : Machine = new Machine(((15 : GoUInt16)));
final r_X86_64_PC16 : R_X86_64 = new R_X86_64(((13 : GoInt)));
final r_ARM_PRIVATE_13 : R_ARM = new R_ARM(((125 : GoInt)));
final r_AARCH64_P32_TLSLE_MOVW_TPREL_G0_NC : R_AARCH64 = new R_AARCH64(((108 : GoInt)));
final r_ARM_RPC24 : R_ARM = new R_ARM(((254 : GoInt)));
final r_ARM_PRIVATE_14 : R_ARM = new R_ARM(((126 : GoInt)));
final r_ARM_PRIVATE_15 : R_ARM = new R_ARM(((127 : GoInt)));
final r_ARM_ALU_PCREL_23_15 : R_ARM = new R_ARM(((34 : GoInt)));
final r_ARM_IRELATIVE : R_ARM = new R_ARM(((160 : GoInt)));
final r_X86_64_RELATIVE64 : R_X86_64 = new R_X86_64(((38 : GoInt)));
final dt_TLSDESC_PLT : DynTag = new DynTag(((1879047926 : GoInt)));
final et_LOPROC : Type = new Type(((65280 : GoUInt16)));
final dt_GNU_CONFLICT : DynTag = new DynTag(((1879047928 : GoInt)));
final r_MIPS_REL32 : R_MIPS = new R_MIPS(((3 : GoInt)));
final r_AARCH64_TLSLE_ADD_TPREL_LO12 : R_AARCH64 = new R_AARCH64(((550 : GoInt)));
final r_ALPHA_NONE : R_ALPHA = new R_ALPHA(((0 : GoInt)));
final em_BA1 : Machine = new Machine(((201 : GoUInt16)));
final r_PPC64_PLTGOT_LO_DS : R_PPC64 = new R_PPC64(((66 : GoInt)));
final stb_WEAK : SymBind = new SymBind(((2 : GoInt)));
final pt_PHDR : ProgType = new ProgType(((6 : GoInt)));
final dt_MIPS_DYNSTR_ALIGN : DynTag = new DynTag(((1879048235 : GoInt)));
final em_BPF : Machine = new Machine(((247 : GoUInt16)));
final em_BA2 : Machine = new Machine(((202 : GoUInt16)));
final pt_GNU_MBIND_HI : ProgType = new ProgType(((1685386580 : GoInt)));
final dt_HIOS : DynTag = new DynTag(((1879044096 : GoInt)));
final r_PPC_UADDR32 : R_PPC = new R_PPC(((24 : GoInt)));
final r_390_TLS_TPOFF : R_390 = new R_390(((56 : GoInt)));
final em_ARCA : Machine = new Machine(((109 : GoUInt16)));
final dt_VALRNGHI : DynTag = new DynTag(((1879047679 : GoInt)));
final em_AARCH64 : Machine = new Machine(((183 : GoUInt16)));
final shf_WRITE : SectionFlag = new SectionFlag(((1 : GoUInt32)));
final r_PPC_REL14 : R_PPC = new R_PPC(((11 : GoInt)));
final dt_PPC64_GLINK : DynTag = new DynTag(((1879048192 : GoInt)));
final r_PPC64_TPREL16_HIGH : R_PPC64 = new R_PPC64(((112 : GoInt)));
final r_AARCH64_IRELATIVE : R_AARCH64 = new R_AARCH64(((1032 : GoInt)));
final r_AARCH64_P32_JUMP_SLOT : R_AARCH64 = new R_AARCH64(((182 : GoInt)));
final dt_MIPS_SYMBOL_LIB : DynTag = new DynTag(((1879048228 : GoInt)));
final r_PPC64_PLTGOT16_HA : R_PPC64 = new R_PPC64(((55 : GoInt)));
final r_AARCH64_P32_TLSDESC_ADR_PREL21 : R_AARCH64 = new R_AARCH64(((123 : GoInt)));
final compress_LOOS : CompressionType = new CompressionType(((1610612736 : GoInt)));
final r_PPC_PLT32 : R_PPC = new R_PPC(((27 : GoInt)));
final r_SPARC_22 : R_SPARC = new R_SPARC(((10 : GoInt)));
final r_390_GOT12 : R_390 = new R_390(((6 : GoInt)));
final stt_NOTYPE : SymType = new SymType(((0 : GoInt)));
final r_MIPS_SHIFT5 : R_MIPS = new R_MIPS(((16 : GoInt)));
final em_PDP10 : Machine = new Machine(((64 : GoUInt16)));
final r_MIPS_SHIFT6 : R_MIPS = new R_MIPS(((17 : GoInt)));
final em_PDP11 : Machine = new Machine(((65 : GoUInt16)));
final pt_GNU_PROPERTY : ProgType = new ProgType(((1685382483 : GoInt)));
final r_PPC64_JMP_IREL : R_PPC64 = new R_PPC64(((247 : GoInt)));
final dt_AUDIT : DynTag = new DynTag(((1879047932 : GoInt)));
final r_390_GOT16 : R_390 = new R_390(((15 : GoInt)));
final r_386_PC16 : R_386 = new R_386(((21 : GoInt)));
final r_PPC64_PLTGOT16_HI : R_PPC64 = new R_PPC64(((54 : GoInt)));
final r_386_TLS_TPOFF : R_386 = new R_386(((14 : GoInt)));
final r_SPARC_HIPLT22 : R_SPARC = new R_SPARC(((25 : GoInt)));
final r_390_COPY : R_390 = new R_390(((9 : GoInt)));
final r_PPC64_ADDR64_LOCAL : R_PPC64 = new R_PPC64(((117 : GoInt)));
final r_PPC64_TPREL16_HIGHERA : R_PPC64 = new R_PPC64(((98 : GoInt)));
final em_H8_500 : Machine = new Machine(((49 : GoUInt16)));
final r_AARCH64_TLS_DTPREL64 : R_AARCH64 = new R_AARCH64(((1029 : GoInt)));
final dt_FINI : DynTag = new DynTag(((13 : GoInt)));
final r_AARCH64_P32_LDST128_ABS_LO12_NC : R_AARCH64 = new R_AARCH64(((17 : GoInt)));
final em_INTEL205 : Machine = new Machine(((205 : GoUInt16)));
final stv_PROTECTED : SymVis = new SymVis(((3 : GoInt)));
final em_INTEL206 : Machine = new Machine(((206 : GoUInt16)));
final r_MIPS_TLS_TPREL_LO16 : R_MIPS = new R_MIPS(((50 : GoInt)));
final r_AARCH64_LD_PREL_LO19 : R_AARCH64 = new R_AARCH64(((273 : GoInt)));
final em_INTEL207 : Machine = new Machine(((207 : GoUInt16)));
final ev_CURRENT : Version = new Version(((1 : GoUInt8)));
final em_TINYJ : Machine = new Machine(((61 : GoUInt16)));
final r_ARM_LDR_SB_G0 : R_ARM = new R_ARM(((75 : GoInt)));
final em_INTEL208 : Machine = new Machine(((208 : GoUInt16)));
final r_390_GOTENT : R_390 = new R_390(((26 : GoInt)));
final dt_NEEDED : DynTag = new DynTag(((1 : GoInt)));
final em_TPC : Machine = new Machine(((98 : GoUInt16)));
final r_X86_64_TLSDESC : R_X86_64 = new R_X86_64(((36 : GoInt)));
final r_ARM_LDR_SB_G1 : R_ARM = new R_ARM(((76 : GoInt)));
final em_INTEL209 : Machine = new Machine(((209 : GoUInt16)));
final r_ARM_LDR_SB_G2 : R_ARM = new R_ARM(((77 : GoInt)));
final pt_HIOS : ProgType = new ProgType(((1879048191 : GoInt)));
final stt_FUNC : SymType = new SymType(((2 : GoInt)));
final r_AARCH64_RELATIVE : R_AARCH64 = new R_AARCH64(((1027 : GoInt)));
final r_PPC_DTPREL16 : R_PPC = new R_PPC(((74 : GoInt)));
final shf_LINK_ORDER : SectionFlag = new SectionFlag(((128 : GoUInt32)));
final sym64Size : GoInt64 = ((24 : GoUnTypedInt));
var errNoSymbols : stdgo.Error = stdgo.errors.Errors.new_("no symbol section");
final dt_MIPS_MSYM : DynTag = new DynTag(((1879048199 : GoInt)));
final pt_ARM_EXIDX : ProgType = new ProgType(((1879048193 : GoInt)));
final sht_GNU_VERNEED : SectionType = new SectionType(((1879048190 : GoUInt32)));
final r_SPARC_HM10 : R_SPARC = new R_SPARC(((35 : GoInt)));
final r_ARM_ABS32 : R_ARM = new R_ARM(((2 : GoInt)));
final r_AARCH64_P32_LDST32_ABS_LO12_NC : R_AARCH64 = new R_AARCH64(((15 : GoInt)));
final dt_MIPS_DELTA_INSTANCE_NO : DynTag = new DynTag(((1879048218 : GoInt)));
final em_AMDGPU : Machine = new Machine(((224 : GoUInt16)));
final dt_AUXILIARY : DynTag = new DynTag(((2147483645 : GoInt)));
final r_386_IRELATIVE : R_386 = new R_386(((42 : GoInt)));
final r_PPC64_ADDR16_HIGHER : R_PPC64 = new R_PPC64(((39 : GoInt)));
final r_PPC64_DTPMOD64 : R_PPC64 = new R_PPC64(((68 : GoInt)));
final r_AARCH64_TLSLD_LDST128_DTPREL_LO12_NC : R_AARCH64 = new R_AARCH64(((573 : GoInt)));
final r_386_8 : R_386 = new R_386(((22 : GoInt)));
final r_386_TLS_DTPOFF32 : R_386 = new R_386(((36 : GoInt)));
final r_ARM_ALU_PC_G1_NC : R_ARM = new R_ARM(((59 : GoInt)));
final r_X86_64_GOTOFF64 : R_X86_64 = new R_X86_64(((25 : GoInt)));
final r_PPC_NONE : R_PPC = new R_PPC(((0 : GoInt)));
final r_SPARC_HIX22 : R_SPARC = new R_SPARC(((48 : GoInt)));
final dt_MIPS_LOCAL_GOTNO : DynTag = new DynTag(((1879048202 : GoInt)));
final r_ARM_ME_TOO : R_ARM = new R_ARM(((128 : GoInt)));
final sht_SYMTAB : SectionType = new SectionType(((2 : GoUInt32)));
final r_PPC_EMB_NADDR16_LO : R_PPC = new R_PPC(((103 : GoInt)));
final r_ALPHA_IMMED_SCN_HI32 : R_ALPHA = new R_ALPHA(((21 : GoInt)));
final r_AARCH64_P32_TLSDESC : R_AARCH64 = new R_AARCH64(((187 : GoInt)));
final r_X86_64_PC8 : R_X86_64 = new R_X86_64(((15 : GoInt)));
final elfosabi_IRIX : OSABI = new OSABI(((8 : GoUInt8)));
final r_386_GOTOFF : R_386 = new R_386(((9 : GoInt)));
final dt_VERDEF : DynTag = new DynTag(((1879048188 : GoInt)));
final r_AARCH64_TLSDESC_LD64_LO12_NC : R_AARCH64 = new R_AARCH64(((563 : GoInt)));
final r_PPC_PLTREL24 : R_PPC = new R_PPC(((18 : GoInt)));
final r_ARM_LDRS_SB_G0 : R_ARM = new R_ARM(((78 : GoInt)));
final sht_PREINIT_ARRAY : SectionType = new SectionType(((16 : GoUInt32)));
final r_SPARC_LO10 : R_SPARC = new R_SPARC(((12 : GoInt)));
final r_RISCV_SET6 : R_RISCV = new R_RISCV(((53 : GoInt)));
final et_CORE : Type = new Type(((4 : GoUInt16)));
final r_ARM_LDRS_SB_G1 : R_ARM = new R_ARM(((79 : GoInt)));
final r_X86_64_COPY : R_X86_64 = new R_X86_64(((5 : GoInt)));
final r_ARM_RREL32 : R_ARM = new R_ARM(((252 : GoInt)));
final r_ARM_LDRS_SB_G2 : R_ARM = new R_ARM(((80 : GoInt)));
final r_390_GOTOFF64 : R_390 = new R_390(((28 : GoInt)));
final r_RISCV_SET8 : R_RISCV = new R_RISCV(((54 : GoInt)));
final r_PPC_ADDR14 : R_PPC = new R_PPC(((7 : GoInt)));
var _rsparcStrings : Slice<T_intName> = new Slice<T_intName>(
new T_intName(((0 : GoUInt32)), "R_SPARC_NONE").__copy__(),
new T_intName(((1 : GoUInt32)), "R_SPARC_8").__copy__(),
new T_intName(((2 : GoUInt32)), "R_SPARC_16").__copy__(),
new T_intName(((3 : GoUInt32)), "R_SPARC_32").__copy__(),
new T_intName(((4 : GoUInt32)), "R_SPARC_DISP8").__copy__(),
new T_intName(((5 : GoUInt32)), "R_SPARC_DISP16").__copy__(),
new T_intName(((6 : GoUInt32)), "R_SPARC_DISP32").__copy__(),
new T_intName(((7 : GoUInt32)), "R_SPARC_WDISP30").__copy__(),
new T_intName(((8 : GoUInt32)), "R_SPARC_WDISP22").__copy__(),
new T_intName(((9 : GoUInt32)), "R_SPARC_HI22").__copy__(),
new T_intName(((10 : GoUInt32)), "R_SPARC_22").__copy__(),
new T_intName(((11 : GoUInt32)), "R_SPARC_13").__copy__(),
new T_intName(((12 : GoUInt32)), "R_SPARC_LO10").__copy__(),
new T_intName(((13 : GoUInt32)), "R_SPARC_GOT10").__copy__(),
new T_intName(((14 : GoUInt32)), "R_SPARC_GOT13").__copy__(),
new T_intName(((15 : GoUInt32)), "R_SPARC_GOT22").__copy__(),
new T_intName(((16 : GoUInt32)), "R_SPARC_PC10").__copy__(),
new T_intName(((17 : GoUInt32)), "R_SPARC_PC22").__copy__(),
new T_intName(((18 : GoUInt32)), "R_SPARC_WPLT30").__copy__(),
new T_intName(((19 : GoUInt32)), "R_SPARC_COPY").__copy__(),
new T_intName(((20 : GoUInt32)), "R_SPARC_GLOB_DAT").__copy__(),
new T_intName(((21 : GoUInt32)), "R_SPARC_JMP_SLOT").__copy__(),
new T_intName(((22 : GoUInt32)), "R_SPARC_RELATIVE").__copy__(),
new T_intName(((23 : GoUInt32)), "R_SPARC_UA32").__copy__(),
new T_intName(((24 : GoUInt32)), "R_SPARC_PLT32").__copy__(),
new T_intName(((25 : GoUInt32)), "R_SPARC_HIPLT22").__copy__(),
new T_intName(((26 : GoUInt32)), "R_SPARC_LOPLT10").__copy__(),
new T_intName(((27 : GoUInt32)), "R_SPARC_PCPLT32").__copy__(),
new T_intName(((28 : GoUInt32)), "R_SPARC_PCPLT22").__copy__(),
new T_intName(((29 : GoUInt32)), "R_SPARC_PCPLT10").__copy__(),
new T_intName(((30 : GoUInt32)), "R_SPARC_10").__copy__(),
new T_intName(((31 : GoUInt32)), "R_SPARC_11").__copy__(),
new T_intName(((32 : GoUInt32)), "R_SPARC_64").__copy__(),
new T_intName(((33 : GoUInt32)), "R_SPARC_OLO10").__copy__(),
new T_intName(((34 : GoUInt32)), "R_SPARC_HH22").__copy__(),
new T_intName(((35 : GoUInt32)), "R_SPARC_HM10").__copy__(),
new T_intName(((36 : GoUInt32)), "R_SPARC_LM22").__copy__(),
new T_intName(((37 : GoUInt32)), "R_SPARC_PC_HH22").__copy__(),
new T_intName(((38 : GoUInt32)), "R_SPARC_PC_HM10").__copy__(),
new T_intName(((39 : GoUInt32)), "R_SPARC_PC_LM22").__copy__(),
new T_intName(((40 : GoUInt32)), "R_SPARC_WDISP16").__copy__(),
new T_intName(((41 : GoUInt32)), "R_SPARC_WDISP19").__copy__(),
new T_intName(((42 : GoUInt32)), "R_SPARC_GLOB_JMP").__copy__(),
new T_intName(((43 : GoUInt32)), "R_SPARC_7").__copy__(),
new T_intName(((44 : GoUInt32)), "R_SPARC_5").__copy__(),
new T_intName(((45 : GoUInt32)), "R_SPARC_6").__copy__(),
new T_intName(((46 : GoUInt32)), "R_SPARC_DISP64").__copy__(),
new T_intName(((47 : GoUInt32)), "R_SPARC_PLT64").__copy__(),
new T_intName(((48 : GoUInt32)), "R_SPARC_HIX22").__copy__(),
new T_intName(((49 : GoUInt32)), "R_SPARC_LOX10").__copy__(),
new T_intName(((50 : GoUInt32)), "R_SPARC_H44").__copy__(),
new T_intName(((51 : GoUInt32)), "R_SPARC_M44").__copy__(),
new T_intName(((52 : GoUInt32)), "R_SPARC_L44").__copy__(),
new T_intName(((53 : GoUInt32)), "R_SPARC_REGISTER").__copy__(),
new T_intName(((54 : GoUInt32)), "R_SPARC_UA64").__copy__(),
new T_intName(((55 : GoUInt32)), "R_SPARC_UA16").__copy__());
final r_PPC64_GOT16_LO : R_PPC64 = new R_PPC64(((15 : GoInt)));
final em_FX66 : Machine = new Machine(((66 : GoUInt16)));
final r_PPC_ADDR16 : R_PPC = new R_PPC(((3 : GoInt)));
final elfosabi_NONE : OSABI = new OSABI(((0 : GoUInt8)));
final r_PPC_SECTOFF : R_PPC = new R_PPC(((33 : GoInt)));
final r_PPC64_DTPREL16_DS : R_PPC64 = new R_PPC64(((101 : GoInt)));
final dt_VERSYM : DynTag = new DynTag(((1879048176 : GoInt)));
final r_AARCH64_TLSIE_MOVW_GOTTPREL_G0_NC : R_AARCH64 = new R_AARCH64(((540 : GoInt)));
final r_SPARC_PC_LM22 : R_SPARC = new R_SPARC(((39 : GoInt)));
final r_MIPS_GPREL16 : R_MIPS = new R_MIPS(((7 : GoInt)));
final r_PPC64_GOT16 : R_PPC64 = new R_PPC64(((14 : GoInt)));
final r_386_16 : R_386 = new R_386(((20 : GoInt)));
final elfosabi_MODESTO : OSABI = new OSABI(((11 : GoUInt8)));
final r_X86_64_GOTPCREL64 : R_X86_64 = new R_X86_64(((28 : GoInt)));
final dt_MIPS_LIBLIST : DynTag = new DynTag(((1879048201 : GoInt)));
final em_NORC : Machine = new Machine(((218 : GoUInt16)));
final r_ALPHA_JMP_SLOT : R_ALPHA = new R_ALPHA(((26 : GoInt)));
final r_ARM_THM_TLS_DESCSEQ32 : R_ARM = new R_ARM(((130 : GoInt)));
final r_RISCV_PCREL_HI20 : R_RISCV = new R_RISCV(((23 : GoInt)));
final _seekEnd : GoInt = ((2 : GoInt));
final r_ARM_ALU_PCREL_7_0 : R_ARM = new R_ARM(((32 : GoInt)));
final dt_MIPS_DELTA_RELOC_NO : DynTag = new DynTag(((1879048220 : GoInt)));
final elfclass64 : Class_ = new Class_(((2 : GoUInt8)));
final r_AARCH64_P32_CONDBR19 : R_AARCH64 = new R_AARCH64(((19 : GoInt)));
final r_ALPHA_LITERAL : R_ALPHA = new R_ALPHA(((4 : GoInt)));
final r_RISCV_TLS_DTPREL64 : R_RISCV = new R_RISCV(((9 : GoInt)));
final r_PPC64_GOT16_LO_DS : R_PPC64 = new R_PPC64(((59 : GoInt)));
final elfclass32 : Class_ = new Class_(((1 : GoUInt8)));
final r_AARCH64_P32_MOVW_SABS_G0 : R_AARCH64 = new R_AARCH64(((8 : GoInt)));
final r_RISCV_TLS_DTPREL32 : R_RISCV = new R_RISCV(((8 : GoInt)));
final em_MN10300 : Machine = new Machine(((89 : GoUInt16)));
final elfdata2msb : Data = new Data(((2 : GoUInt8)));
final r_AARCH64_P32_MOVW_UABS_G0 : R_AARCH64 = new R_AARCH64(((5 : GoInt)));
final r_AARCH64_P32_TLSGD_ADD_LO12_NC : R_AARCH64 = new R_AARCH64(((82 : GoInt)));
final em_AVR : Machine = new Machine(((83 : GoUInt16)));
final r_AARCH64_P32_MOVW_UABS_G1 : R_AARCH64 = new R_AARCH64(((7 : GoInt)));
final r_PPC64_JMP_SLOT : R_PPC64 = new R_PPC64(((21 : GoInt)));
final r_AARCH64_TLSLE_MOVW_TPREL_G1_NC : R_AARCH64 = new R_AARCH64(((546 : GoInt)));
final em_TI_C5500 : Machine = new Machine(((142 : GoUInt16)));
final r_RISCV_ADD16 : R_RISCV = new R_RISCV(((34 : GoInt)));
final r_AARCH64_P32_LDST64_ABS_LO12_NC : R_AARCH64 = new R_AARCH64(((16 : GoInt)));
final r_ARM_CALL : R_ARM = new R_ARM(((28 : GoInt)));
final r_386_TLS_DTPMOD32 : R_386 = new R_386(((35 : GoInt)));
final r_ALPHA_GLOB_DAT : R_ALPHA = new R_ALPHA(((25 : GoInt)));
final r_RISCV_BRANCH : R_RISCV = new R_RISCV(((16 : GoInt)));
final r_PPC64_ADDR16_LO : R_PPC64 = new R_PPC64(((4 : GoInt)));
var _shnStrings : Slice<T_intName> = new Slice<T_intName>(new T_intName(((0 : GoUInt32)), "SHN_UNDEF").__copy__(), new T_intName(((65280 : GoUInt32)), "SHN_LOPROC").__copy__(), new T_intName(((65312 : GoUInt32)), "SHN_LOOS").__copy__(), new T_intName(((65521 : GoUInt32)), "SHN_ABS").__copy__(), new T_intName(((65522 : GoUInt32)), "SHN_COMMON").__copy__(), new T_intName(((65535 : GoUInt32)), "SHN_XINDEX").__copy__());
final pt_GNU_STACK : ProgType = new ProgType(((1685382481 : GoInt)));
final em_HUANY : Machine = new Machine(((81 : GoUInt16)));
var _stbStrings : Slice<T_intName> = new Slice<T_intName>(new T_intName(((0 : GoUInt32)), "STB_LOCAL").__copy__(), new T_intName(((1 : GoUInt32)), "STB_GLOBAL").__copy__(), new T_intName(((2 : GoUInt32)), "STB_WEAK").__copy__(), new T_intName(((10 : GoUInt32)), "STB_LOOS").__copy__(), new T_intName(((12 : GoUInt32)), "STB_HIOS").__copy__(), new T_intName(((13 : GoUInt32)), "STB_LOPROC").__copy__(), new T_intName(((15 : GoUInt32)), "STB_HIPROC").__copy__());
final r_AARCH64_MOVW_UABS_G1_NC : R_AARCH64 = new R_AARCH64(((266 : GoInt)));
final dt_USED : DynTag = new DynTag(((2147483646 : GoInt)));
final nt_PRPSINFO : NType = new NType(((3 : GoInt)));
final r_SPARC_JMP_SLOT : R_SPARC = new R_SPARC(((21 : GoInt)));
final r_386_TLS_GD_POP : R_386 = new R_386(((27 : GoInt)));
final r_ARM_GNU_VTENTRY : R_ARM = new R_ARM(((100 : GoInt)));
final r_390_GOTPLT20 : R_390 = new R_390(((59 : GoInt)));
final r_ARM_GOTRELAX : R_ARM = new R_ARM(((99 : GoInt)));
final em_88K : Machine = new Machine(((5 : GoUInt16)));
final sht_INIT_ARRAY : SectionType = new SectionType(((14 : GoUInt32)));
final em_AVR32 : Machine = new Machine(((185 : GoUInt16)));
final sht_GNU_HASH : SectionType = new SectionType(((1879048182 : GoUInt32)));
final r_AARCH64_NULL : R_AARCH64 = new R_AARCH64(((256 : GoInt)));
final r_AARCH64_TLSGD_ADR_PAGE21 : R_AARCH64 = new R_AARCH64(((513 : GoInt)));
final r_PPC64_TPREL16_HIGHESTA : R_PPC64 = new R_PPC64(((100 : GoInt)));
final r_PPC_GOT_TLSGD16_LO : R_PPC = new R_PPC(((80 : GoInt)));
final r_MIPS_JALR : R_MIPS = new R_MIPS(((37 : GoInt)));
final r_AARCH64_LDST32_ABS_LO12_NC : R_AARCH64 = new R_AARCH64(((285 : GoInt)));
final r_AARCH64_P32_TLSIE_LD32_GOTTPREL_LO12_NC : R_AARCH64 = new R_AARCH64(((104 : GoInt)));
final r_SPARC_PCPLT22 : R_SPARC = new R_SPARC(((28 : GoInt)));
final r_AARCH64_GLOB_DAT : R_AARCH64 = new R_AARCH64(((1025 : GoInt)));
final stv_HIDDEN : SymVis = new SymVis(((2 : GoInt)));
final r_PPC_TPREL16 : R_PPC = new R_PPC(((69 : GoInt)));
final em_SPARC32PLUS : Machine = new Machine(((18 : GoUInt16)));
final dt_SYMINSZ : DynTag = new DynTag(((1879047678 : GoInt)));
final em_SPARCV9 : Machine = new Machine(((43 : GoUInt16)));
final pf_MASKOS : ProgFlag = new ProgFlag(((267386880 : GoUInt32)));
final r_390_TLS_DTPMOD : R_390 = new R_390(((54 : GoInt)));
final r_AARCH64_CALL26 : R_AARCH64 = new R_AARCH64(((283 : GoInt)));
final em_KMX32 : Machine = new Machine(((211 : GoUInt16)));
final r_386_TLS_LDM_CALL : R_386 = new R_386(((30 : GoInt)));
final r_PPC_EMB_MRKREF : R_PPC = new R_PPC(((110 : GoInt)));
final r_ALPHA_RELATIVE : R_ALPHA = new R_ALPHA(((27 : GoInt)));
final r_PPC64_TPREL16_HIGHA : R_PPC64 = new R_PPC64(((113 : GoInt)));
final r_AARCH64_P32_LDST8_ABS_LO12_NC : R_AARCH64 = new R_AARCH64(((13 : GoInt)));
final r_ALPHA_REFLONG : R_ALPHA = new R_ALPHA(((1 : GoInt)));
final em_M32 : Machine = new Machine(((1 : GoUInt16)));
final r_PPC_EMB_SDA2I16 : R_PPC = new R_PPC(((107 : GoInt)));
final r_AARCH64_PREL64 : R_AARCH64 = new R_AARCH64(((260 : GoInt)));
final r_PPC64_ADDR16_HIGH : R_PPC64 = new R_PPC64(((110 : GoInt)));
final r_RISCV_GPREL_I : R_RISCV = new R_RISCV(((47 : GoInt)));
final r_PPC64_REL16_LO : R_PPC64 = new R_PPC64(((250 : GoInt)));
final elfosabi_86OPEN : OSABI = new OSABI(((5 : GoUInt8)));
final em_SVX : Machine = new Machine(((73 : GoUInt16)));
final r_AARCH64_TLSLE_LDST128_TPREL_LO12_NC : R_AARCH64 = new R_AARCH64(((571 : GoInt)));
final r_AARCH64_PREL32 : R_AARCH64 = new R_AARCH64(((261 : GoInt)));
final r_ARM_TARGET1 : R_ARM = new R_ARM(((38 : GoInt)));
final stt_SECTION : SymType = new SymType(((3 : GoInt)));
final r_ARM_TARGET2 : R_ARM = new R_ARM(((41 : GoInt)));
final r_SPARC_M44 : R_SPARC = new R_SPARC(((51 : GoInt)));
final r_PPC64_TPREL16_HA : R_PPC64 = new R_PPC64(((72 : GoInt)));
final r_PPC_GOT_TPREL16_HA : R_PPC = new R_PPC(((90 : GoInt)));
final r_ARM_NONE : R_ARM = new R_ARM(((0 : GoInt)));
final r_386_SIZE32 : R_386 = new R_386(((38 : GoInt)));
final r_X86_64_PLT32 : R_X86_64 = new R_X86_64(((4 : GoInt)));
final r_MIPS_26 : R_MIPS = new R_MIPS(((4 : GoInt)));
final df_TEXTREL : DynFlag = new DynFlag(((4 : GoInt)));
final dt_HASH : DynTag = new DynTag(((4 : GoInt)));
final shn_COMMON : SectionIndex = new SectionIndex(((65522 : GoInt)));
final shn_HIOS : SectionIndex = new SectionIndex(((65343 : GoInt)));
final r_RISCV_GPREL_S : R_RISCV = new R_RISCV(((48 : GoInt)));
final r_MIPS_GOT_OFST : R_MIPS = new R_MIPS(((21 : GoInt)));
final r_PPC64_TPREL16_HI : R_PPC64 = new R_PPC64(((71 : GoInt)));
final r_390_PLT64 : R_390 = new R_390(((25 : GoInt)));
final em_PCP : Machine = new Machine(((55 : GoUInt16)));
final r_ARM_MOVW_BREL_NC : R_ARM = new R_ARM(((84 : GoInt)));
final r_SPARC_GOT22 : R_SPARC = new R_SPARC(((15 : GoInt)));
final r_PPC_GOT_TPREL16_HI : R_PPC = new R_PPC(((89 : GoInt)));
final r_390_PLT32 : R_390 = new R_390(((8 : GoInt)));
final r_ARM_TLS_LE12 : R_ARM = new R_ARM(((110 : GoInt)));
final sht_SHLIB : SectionType = new SectionType(((10 : GoUInt32)));
final em_ST200 : Machine = new Machine(((100 : GoUInt16)));
final r_RISCV_32_PCREL : R_RISCV = new R_RISCV(((57 : GoInt)));
final r_PPC_DTPMOD32 : R_PPC = new R_PPC(((68 : GoInt)));
final r_SPARC_RELATIVE : R_SPARC = new R_SPARC(((22 : GoInt)));
final r_PPC_EMB_NADDR32 : R_PPC = new R_PPC(((101 : GoInt)));
final r_X86_64_GOT64 : R_X86_64 = new R_X86_64(((27 : GoInt)));
final em_SNP1K : Machine = new Machine(((99 : GoUInt16)));
final r_X86_64_GOT32 : R_X86_64 = new R_X86_64(((3 : GoInt)));
var _dataStrings : Slice<T_intName> = new Slice<T_intName>(new T_intName(((0 : GoUInt32)), "ELFDATANONE").__copy__(), new T_intName(((1 : GoUInt32)), "ELFDATA2LSB").__copy__(), new T_intName(((2 : GoUInt32)), "ELFDATA2MSB").__copy__());
final r_RISCV_SET32 : R_RISCV = new R_RISCV(((56 : GoInt)));
final r_PPC64_REL16DX_HA : R_PPC64 = new R_PPC64(((246 : GoInt)));
var _ralphaStrings : Slice<T_intName> = new Slice<T_intName>(
new T_intName(((0 : GoUInt32)), "R_ALPHA_NONE").__copy__(),
new T_intName(((1 : GoUInt32)), "R_ALPHA_REFLONG").__copy__(),
new T_intName(((2 : GoUInt32)), "R_ALPHA_REFQUAD").__copy__(),
new T_intName(((3 : GoUInt32)), "R_ALPHA_GPREL32").__copy__(),
new T_intName(((4 : GoUInt32)), "R_ALPHA_LITERAL").__copy__(),
new T_intName(((5 : GoUInt32)), "R_ALPHA_LITUSE").__copy__(),
new T_intName(((6 : GoUInt32)), "R_ALPHA_GPDISP").__copy__(),
new T_intName(((7 : GoUInt32)), "R_ALPHA_BRADDR").__copy__(),
new T_intName(((8 : GoUInt32)), "R_ALPHA_HINT").__copy__(),
new T_intName(((9 : GoUInt32)), "R_ALPHA_SREL16").__copy__(),
new T_intName(((10 : GoUInt32)), "R_ALPHA_SREL32").__copy__(),
new T_intName(((11 : GoUInt32)), "R_ALPHA_SREL64").__copy__(),
new T_intName(((12 : GoUInt32)), "R_ALPHA_OP_PUSH").__copy__(),
new T_intName(((13 : GoUInt32)), "R_ALPHA_OP_STORE").__copy__(),
new T_intName(((14 : GoUInt32)), "R_ALPHA_OP_PSUB").__copy__(),
new T_intName(((15 : GoUInt32)), "R_ALPHA_OP_PRSHIFT").__copy__(),
new T_intName(((16 : GoUInt32)), "R_ALPHA_GPVALUE").__copy__(),
new T_intName(((17 : GoUInt32)), "R_ALPHA_GPRELHIGH").__copy__(),
new T_intName(((18 : GoUInt32)), "R_ALPHA_GPRELLOW").__copy__(),
new T_intName(((19 : GoUInt32)), "R_ALPHA_IMMED_GP_16").__copy__(),
new T_intName(((20 : GoUInt32)), "R_ALPHA_IMMED_GP_HI32").__copy__(),
new T_intName(((21 : GoUInt32)), "R_ALPHA_IMMED_SCN_HI32").__copy__(),
new T_intName(((22 : GoUInt32)), "R_ALPHA_IMMED_BR_HI32").__copy__(),
new T_intName(((23 : GoUInt32)), "R_ALPHA_IMMED_LO32").__copy__(),
new T_intName(((24 : GoUInt32)), "R_ALPHA_COPY").__copy__(),
new T_intName(((25 : GoUInt32)), "R_ALPHA_GLOB_DAT").__copy__(),
new T_intName(((26 : GoUInt32)), "R_ALPHA_JMP_SLOT").__copy__(),
new T_intName(((27 : GoUInt32)), "R_ALPHA_RELATIVE").__copy__());
final em_TI_PRU : Machine = new Machine(((144 : GoUInt16)));
final r_386_TLS_TPOFF32 : R_386 = new R_386(((37 : GoInt)));
final r_PPC64_ADDR14_BRNTAKEN : R_PPC64 = new R_PPC64(((9 : GoInt)));
final r_RISCV_RVC_JUMP : R_RISCV = new R_RISCV(((45 : GoInt)));
final dt_MIPS_DELTA_CLASSSYM : DynTag = new DynTag(((1879048224 : GoInt)));
final ei_CLASS : GoInt64 = ((4 : GoUnTypedInt));
final dt_MIPS_DELTA_CLASSSYM_NO : DynTag = new DynTag(((1879048225 : GoInt)));
final r_390_PC64 : R_390 = new R_390(((23 : GoInt)));
final r_ARM_PLT32_ABS : R_ARM = new R_ARM(((94 : GoInt)));
final r_AARCH64_P32_MOVW_UABS_G0_NC : R_AARCH64 = new R_AARCH64(((6 : GoInt)));
final em_OPENRISC : Machine = new Machine(((92 : GoUInt16)));
final dt_ADDRRNGLO : DynTag = new DynTag(((1879047680 : GoInt)));
final r_ARM_THM_MOVT_ABS : R_ARM = new R_ARM(((48 : GoInt)));
final r_390_PC32 : R_390 = new R_390(((5 : GoInt)));
final r_PPC64_TOC16_HA : R_PPC64 = new R_PPC64(((50 : GoInt)));
final r_AARCH64_P32_LD_PREL_LO19 : R_AARCH64 = new R_AARCH64(((9 : GoInt)));
final r_AARCH64_COPY : R_AARCH64 = new R_AARCH64(((1024 : GoInt)));
final sht_MIPS_ABIFLAGS : SectionType = new SectionType(((1879048234 : GoUInt32)));
final r_AARCH64_TLSLE_ADD_TPREL_LO12_NC : R_AARCH64 = new R_AARCH64(((551 : GoInt)));
final r_AARCH64_ABS16 : R_AARCH64 = new R_AARCH64(((259 : GoInt)));
final em_S370 : Machine = new Machine(((9 : GoUInt16)));
final ev_NONE : Version = new Version(((0 : GoUInt8)));
final pt_ARM_ARCHEXT : ProgType = new ProgType(((1879048192 : GoInt)));
final em_LANAI : Machine = new Machine(((244 : GoUInt16)));
final r_ALPHA_LITUSE : R_ALPHA = new R_ALPHA(((5 : GoInt)));
final dt_RELENT : DynTag = new DynTag(((19 : GoInt)));
final em_MN10200 : Machine = new Machine(((90 : GoUInt16)));
final elfdata2lsb : Data = new Data(((1 : GoUInt8)));
final dt_STRSZ : DynTag = new DynTag(((10 : GoInt)));
final r_PPC64_TOC16_HI : R_PPC64 = new R_PPC64(((49 : GoInt)));
final r_390_TLS_GOTIE12 : R_390 = new R_390(((42 : GoInt)));
final r_PPC_SECTOFF_HA : R_PPC = new R_PPC(((36 : GoInt)));
final em_XGATE : Machine = new Machine(((115 : GoUInt16)));
final em_TI_C2000 : Machine = new Machine(((141 : GoUInt16)));
final em_ALPHA : Machine = new Machine(((36902 : GoUInt16)));
final em_SE_C17 : Machine = new Machine(((139 : GoUInt16)));
final shn_HIPROC : SectionIndex = new SectionIndex(((65311 : GoInt)));
final r_AARCH64_P32_TLSLE_ADD_TPREL_LO12_NC : R_AARCH64 = new R_AARCH64(((111 : GoInt)));
final r_ARM_AMP_VCALL9 : R_ARM = new R_ARM(((12 : GoInt)));
final r_PPC_REL14_BRNTAKEN : R_PPC = new R_PPC(((13 : GoInt)));
final dt_MIPS_BASE_ADDRESS : DynTag = new DynTag(((1879048198 : GoInt)));
final r_RISCV_GOT_HI20 : R_RISCV = new R_RISCV(((20 : GoInt)));
final shf_MASKPROC : SectionFlag = new SectionFlag((("4026531840" : GoUInt32)));
final r_X86_64_8 : R_X86_64 = new R_X86_64(((14 : GoInt)));
final r_PPC_SECTOFF_HI : R_PPC = new R_PPC(((35 : GoInt)));
final elfosabi_SOLARIS : OSABI = new OSABI(((6 : GoUInt8)));
final r_AARCH64_TLSDESC_OFF_G1 : R_AARCH64 = new R_AARCH64(((565 : GoInt)));
final em_METAG : Machine = new Machine(((174 : GoUInt16)));
final dt_PLTGOT : DynTag = new DynTag(((3 : GoInt)));
final r_AARCH64_P32_ABS16 : R_AARCH64 = new R_AARCH64(((2 : GoInt)));
final dt_MIPS_RLD_TEXT_RESOLVE_ADDR : DynTag = new DynTag(((1879048237 : GoInt)));
final dt_DEBUG : DynTag = new DynTag(((21 : GoInt)));
final r_X86_64_TLSGD : R_X86_64 = new R_X86_64(((19 : GoInt)));
final em_H8_300 : Machine = new Machine(((46 : GoUInt16)));
final r_ARM_RABS32 : R_ARM = new R_ARM(((253 : GoInt)));
final em_TI_ARP32 : Machine = new Machine(((143 : GoUInt16)));
final em_MIPS_X : Machine = new Machine(((51 : GoUInt16)));
final r_SPARC_WDISP22 : R_SPARC = new R_SPARC(((8 : GoInt)));
final r_PPC64_ADDR24 : R_PPC64 = new R_PPC64(((2 : GoInt)));
final dt_PREINIT_ARRAYSZ : DynTag = new DynTag(((33 : GoInt)));
final shf_COMPRESSED : SectionFlag = new SectionFlag(((2048 : GoUInt32)));
final r_390_12 : R_390 = new R_390(((2 : GoInt)));
final r_ARM_ALU_PC_G0_NC : R_ARM = new R_ARM(((57 : GoInt)));
final em_KVARC : Machine = new Machine(((214 : GoUInt16)));
final dt_RELAENT : DynTag = new DynTag(((9 : GoInt)));
final r_386_COPY : R_386 = new R_386(((5 : GoInt)));
final shf_INFO_LINK : SectionFlag = new SectionFlag(((64 : GoUInt32)));
final r_ARM_GOT32 : R_ARM = new R_ARM(((26 : GoInt)));
final r_390_16 : R_390 = new R_390(((3 : GoInt)));
final r_390_NONE : R_390 = new R_390(((0 : GoInt)));
final r_ARM_ALU_PC_G0 : R_ARM = new R_ARM(((58 : GoInt)));
final em_M16C : Machine = new Machine(((117 : GoUInt16)));
final dt_MIPS_DELTA_CLASS_NO : DynTag = new DynTag(((1879048216 : GoInt)));
final r_ARM_ALU_PC_G1 : R_ARM = new R_ARM(((60 : GoInt)));
final em_PDSP : Machine = new Machine(((63 : GoUInt16)));
final em_NDR1 : Machine = new Machine(((57 : GoUInt16)));
final r_X86_64_GOTTPOFF : R_X86_64 = new R_X86_64(((22 : GoInt)));
final r_ARM_ALU_PC_G2 : R_ARM = new R_ARM(((61 : GoInt)));
final r_MIPS_LO16 : R_MIPS = new R_MIPS(((6 : GoInt)));
final dt_PPC_OPT : DynTag = new DynTag(((1879048193 : GoInt)));
final r_AARCH64_P32_TLSIE_LD_GOTTPREL_PREL19 : R_AARCH64 = new R_AARCH64(((105 : GoInt)));
final r_AARCH64_P32_TLSGD_ADR_PAGE21 : R_AARCH64 = new R_AARCH64(((81 : GoInt)));
final dt_MIPS_DELTA_CLASS : DynTag = new DynTag(((1879048215 : GoInt)));
final r_MIPS_CALL16 : R_MIPS = new R_MIPS(((11 : GoInt)));
final r_390_PLT32DBL : R_390 = new R_390(((20 : GoInt)));
final em_TSK3000 : Machine = new Machine(((131 : GoUInt16)));
final r_RISCV_TLS_TPREL64 : R_RISCV = new R_RISCV(((11 : GoInt)));
final em_VISIUM : Machine = new Machine(((221 : GoUInt16)));
final r_MIPS_TLS_DTPREL64 : R_MIPS = new R_MIPS(((41 : GoInt)));
final r_ARM_TLS_LDO32 : R_ARM = new R_ARM(((106 : GoInt)));
final r_MIPS_PJUMP : R_MIPS = new R_MIPS(((35 : GoInt)));
final r_RISCV_TLS_TPREL32 : R_RISCV = new R_RISCV(((10 : GoInt)));
final r_PPC64_GOT_DTPREL16_LO_DS : R_PPC64 = new R_PPC64(((92 : GoInt)));
var _rx86_64Strings : Slice<T_intName> = new Slice<T_intName>(
new T_intName(((0 : GoUInt32)), "R_X86_64_NONE").__copy__(),
new T_intName(((1 : GoUInt32)), "R_X86_64_64").__copy__(),
new T_intName(((2 : GoUInt32)), "R_X86_64_PC32").__copy__(),
new T_intName(((3 : GoUInt32)), "R_X86_64_GOT32").__copy__(),
new T_intName(((4 : GoUInt32)), "R_X86_64_PLT32").__copy__(),
new T_intName(((5 : GoUInt32)), "R_X86_64_COPY").__copy__(),
new T_intName(((6 : GoUInt32)), "R_X86_64_GLOB_DAT").__copy__(),
new T_intName(((7 : GoUInt32)), "R_X86_64_JMP_SLOT").__copy__(),
new T_intName(((8 : GoUInt32)), "R_X86_64_RELATIVE").__copy__(),
new T_intName(((9 : GoUInt32)), "R_X86_64_GOTPCREL").__copy__(),
new T_intName(((10 : GoUInt32)), "R_X86_64_32").__copy__(),
new T_intName(((11 : GoUInt32)), "R_X86_64_32S").__copy__(),
new T_intName(((12 : GoUInt32)), "R_X86_64_16").__copy__(),
new T_intName(((13 : GoUInt32)), "R_X86_64_PC16").__copy__(),
new T_intName(((14 : GoUInt32)), "R_X86_64_8").__copy__(),
new T_intName(((15 : GoUInt32)), "R_X86_64_PC8").__copy__(),
new T_intName(((16 : GoUInt32)), "R_X86_64_DTPMOD64").__copy__(),
new T_intName(((17 : GoUInt32)), "R_X86_64_DTPOFF64").__copy__(),
new T_intName(((18 : GoUInt32)), "R_X86_64_TPOFF64").__copy__(),
new T_intName(((19 : GoUInt32)), "R_X86_64_TLSGD").__copy__(),
new T_intName(((20 : GoUInt32)), "R_X86_64_TLSLD").__copy__(),
new T_intName(((21 : GoUInt32)), "R_X86_64_DTPOFF32").__copy__(),
new T_intName(((22 : GoUInt32)), "R_X86_64_GOTTPOFF").__copy__(),
new T_intName(((23 : GoUInt32)), "R_X86_64_TPOFF32").__copy__(),
new T_intName(((24 : GoUInt32)), "R_X86_64_PC64").__copy__(),
new T_intName(((25 : GoUInt32)), "R_X86_64_GOTOFF64").__copy__(),
new T_intName(((26 : GoUInt32)), "R_X86_64_GOTPC32").__copy__(),
new T_intName(((27 : GoUInt32)), "R_X86_64_GOT64").__copy__(),
new T_intName(((28 : GoUInt32)), "R_X86_64_GOTPCREL64").__copy__(),
new T_intName(((29 : GoUInt32)), "R_X86_64_GOTPC64").__copy__(),
new T_intName(((30 : GoUInt32)), "R_X86_64_GOTPLT64").__copy__(),
new T_intName(((31 : GoUInt32)), "R_X86_64_PLTOFF64").__copy__(),
new T_intName(((32 : GoUInt32)), "R_X86_64_SIZE32").__copy__(),
new T_intName(((33 : GoUInt32)), "R_X86_64_SIZE64").__copy__(),
new T_intName(((34 : GoUInt32)), "R_X86_64_GOTPC32_TLSDESC").__copy__(),
new T_intName(((35 : GoUInt32)), "R_X86_64_TLSDESC_CALL").__copy__(),
new T_intName(((36 : GoUInt32)), "R_X86_64_TLSDESC").__copy__(),
new T_intName(((37 : GoUInt32)), "R_X86_64_IRELATIVE").__copy__(),
new T_intName(((38 : GoUInt32)), "R_X86_64_RELATIVE64").__copy__(),
new T_intName(((39 : GoUInt32)), "R_X86_64_PC32_BND").__copy__(),
new T_intName(((40 : GoUInt32)), "R_X86_64_PLT32_BND").__copy__(),
new T_intName(((41 : GoUInt32)), "R_X86_64_GOTPCRELX").__copy__(),
new T_intName(((42 : GoUInt32)), "R_X86_64_REX_GOTPCRELX").__copy__());
final r_MIPS_TLS_DTPREL32 : R_MIPS = new R_MIPS(((39 : GoInt)));
final em_VIDEOCORE3 : Machine = new Machine(((137 : GoUInt16)));
final r_SPARC_L44 : R_SPARC = new R_SPARC(((52 : GoInt)));
final em_VIDEOCORE5 : Machine = new Machine(((198 : GoUInt16)));
final r_386_32PLT : R_386 = new R_386(((11 : GoInt)));
final r_390_GOTOFF : R_390 = new R_390(((13 : GoInt)));
final em_COGE : Machine = new Machine(((216 : GoUInt16)));
final shn_UNDEF : SectionIndex = new SectionIndex(((0 : GoInt)));
final dt_INIT : DynTag = new DynTag(((12 : GoInt)));
final sht_GNU_ATTRIBUTES : SectionType = new SectionType(((1879048181 : GoUInt32)));
final r_RISCV_ADD8 : R_RISCV = new R_RISCV(((33 : GoInt)));
final r_386_TLS_LDO_32 : R_386 = new R_386(((32 : GoInt)));
final r_AARCH64_GOT_LD_PREL19 : R_AARCH64 = new R_AARCH64(((309 : GoInt)));
var _machineStrings : Slice<T_intName> = new Slice<T_intName>(
new T_intName(((0 : GoUInt32)), "EM_NONE").__copy__(),
new T_intName(((1 : GoUInt32)), "EM_M32").__copy__(),
new T_intName(((2 : GoUInt32)), "EM_SPARC").__copy__(),
new T_intName(((3 : GoUInt32)), "EM_386").__copy__(),
new T_intName(((4 : GoUInt32)), "EM_68K").__copy__(),
new T_intName(((5 : GoUInt32)), "EM_88K").__copy__(),
new T_intName(((7 : GoUInt32)), "EM_860").__copy__(),
new T_intName(((8 : GoUInt32)), "EM_MIPS").__copy__(),
new T_intName(((9 : GoUInt32)), "EM_S370").__copy__(),
new T_intName(((10 : GoUInt32)), "EM_MIPS_RS3_LE").__copy__(),
new T_intName(((15 : GoUInt32)), "EM_PARISC").__copy__(),
new T_intName(((17 : GoUInt32)), "EM_VPP500").__copy__(),
new T_intName(((18 : GoUInt32)), "EM_SPARC32PLUS").__copy__(),
new T_intName(((19 : GoUInt32)), "EM_960").__copy__(),
new T_intName(((20 : GoUInt32)), "EM_PPC").__copy__(),
new T_intName(((21 : GoUInt32)), "EM_PPC64").__copy__(),
new T_intName(((22 : GoUInt32)), "EM_S390").__copy__(),
new T_intName(((36 : GoUInt32)), "EM_V800").__copy__(),
new T_intName(((37 : GoUInt32)), "EM_FR20").__copy__(),
new T_intName(((38 : GoUInt32)), "EM_RH32").__copy__(),
new T_intName(((39 : GoUInt32)), "EM_RCE").__copy__(),
new T_intName(((40 : GoUInt32)), "EM_ARM").__copy__(),
new T_intName(((42 : GoUInt32)), "EM_SH").__copy__(),
new T_intName(((43 : GoUInt32)), "EM_SPARCV9").__copy__(),
new T_intName(((44 : GoUInt32)), "EM_TRICORE").__copy__(),
new T_intName(((45 : GoUInt32)), "EM_ARC").__copy__(),
new T_intName(((46 : GoUInt32)), "EM_H8_300").__copy__(),
new T_intName(((47 : GoUInt32)), "EM_H8_300H").__copy__(),
new T_intName(((48 : GoUInt32)), "EM_H8S").__copy__(),
new T_intName(((49 : GoUInt32)), "EM_H8_500").__copy__(),
new T_intName(((50 : GoUInt32)), "EM_IA_64").__copy__(),
new T_intName(((51 : GoUInt32)), "EM_MIPS_X").__copy__(),
new T_intName(((52 : GoUInt32)), "EM_COLDFIRE").__copy__(),
new T_intName(((53 : GoUInt32)), "EM_68HC12").__copy__(),
new T_intName(((54 : GoUInt32)), "EM_MMA").__copy__(),
new T_intName(((55 : GoUInt32)), "EM_PCP").__copy__(),
new T_intName(((56 : GoUInt32)), "EM_NCPU").__copy__(),
new T_intName(((57 : GoUInt32)), "EM_NDR1").__copy__(),
new T_intName(((58 : GoUInt32)), "EM_STARCORE").__copy__(),
new T_intName(((59 : GoUInt32)), "EM_ME16").__copy__(),
new T_intName(((60 : GoUInt32)), "EM_ST100").__copy__(),
new T_intName(((61 : GoUInt32)), "EM_TINYJ").__copy__(),
new T_intName(((62 : GoUInt32)), "EM_X86_64").__copy__(),
new T_intName(((63 : GoUInt32)), "EM_PDSP").__copy__(),
new T_intName(((64 : GoUInt32)), "EM_PDP10").__copy__(),
new T_intName(((65 : GoUInt32)), "EM_PDP11").__copy__(),
new T_intName(((66 : GoUInt32)), "EM_FX66").__copy__(),
new T_intName(((67 : GoUInt32)), "EM_ST9PLUS").__copy__(),
new T_intName(((68 : GoUInt32)), "EM_ST7").__copy__(),
new T_intName(((69 : GoUInt32)), "EM_68HC16").__copy__(),
new T_intName(((70 : GoUInt32)), "EM_68HC11").__copy__(),
new T_intName(((71 : GoUInt32)), "EM_68HC08").__copy__(),
new T_intName(((72 : GoUInt32)), "EM_68HC05").__copy__(),
new T_intName(((73 : GoUInt32)), "EM_SVX").__copy__(),
new T_intName(((74 : GoUInt32)), "EM_ST19").__copy__(),
new T_intName(((75 : GoUInt32)), "EM_VAX").__copy__(),
new T_intName(((76 : GoUInt32)), "EM_CRIS").__copy__(),
new T_intName(((77 : GoUInt32)), "EM_JAVELIN").__copy__(),
new T_intName(((78 : GoUInt32)), "EM_FIREPATH").__copy__(),
new T_intName(((79 : GoUInt32)), "EM_ZSP").__copy__(),
new T_intName(((80 : GoUInt32)), "EM_MMIX").__copy__(),
new T_intName(((81 : GoUInt32)), "EM_HUANY").__copy__(),
new T_intName(((82 : GoUInt32)), "EM_PRISM").__copy__(),
new T_intName(((83 : GoUInt32)), "EM_AVR").__copy__(),
new T_intName(((84 : GoUInt32)), "EM_FR30").__copy__(),
new T_intName(((85 : GoUInt32)), "EM_D10V").__copy__(),
new T_intName(((86 : GoUInt32)), "EM_D30V").__copy__(),
new T_intName(((87 : GoUInt32)), "EM_V850").__copy__(),
new T_intName(((88 : GoUInt32)), "EM_M32R").__copy__(),
new T_intName(((89 : GoUInt32)), "EM_MN10300").__copy__(),
new T_intName(((90 : GoUInt32)), "EM_MN10200").__copy__(),
new T_intName(((91 : GoUInt32)), "EM_PJ").__copy__(),
new T_intName(((92 : GoUInt32)), "EM_OPENRISC").__copy__(),
new T_intName(((93 : GoUInt32)), "EM_ARC_COMPACT").__copy__(),
new T_intName(((94 : GoUInt32)), "EM_XTENSA").__copy__(),
new T_intName(((95 : GoUInt32)), "EM_VIDEOCORE").__copy__(),
new T_intName(((96 : GoUInt32)), "EM_TMM_GPP").__copy__(),
new T_intName(((97 : GoUInt32)), "EM_NS32K").__copy__(),
new T_intName(((98 : GoUInt32)), "EM_TPC").__copy__(),
new T_intName(((99 : GoUInt32)), "EM_SNP1K").__copy__(),
new T_intName(((100 : GoUInt32)), "EM_ST200").__copy__(),
new T_intName(((101 : GoUInt32)), "EM_IP2K").__copy__(),
new T_intName(((102 : GoUInt32)), "EM_MAX").__copy__(),
new T_intName(((103 : GoUInt32)), "EM_CR").__copy__(),
new T_intName(((104 : GoUInt32)), "EM_F2MC16").__copy__(),
new T_intName(((105 : GoUInt32)), "EM_MSP430").__copy__(),
new T_intName(((106 : GoUInt32)), "EM_BLACKFIN").__copy__(),
new T_intName(((107 : GoUInt32)), "EM_SE_C33").__copy__(),
new T_intName(((108 : GoUInt32)), "EM_SEP").__copy__(),
new T_intName(((109 : GoUInt32)), "EM_ARCA").__copy__(),
new T_intName(((110 : GoUInt32)), "EM_UNICORE").__copy__(),
new T_intName(((111 : GoUInt32)), "EM_EXCESS").__copy__(),
new T_intName(((112 : GoUInt32)), "EM_DXP").__copy__(),
new T_intName(((113 : GoUInt32)), "EM_ALTERA_NIOS2").__copy__(),
new T_intName(((114 : GoUInt32)), "EM_CRX").__copy__(),
new T_intName(((115 : GoUInt32)), "EM_XGATE").__copy__(),
new T_intName(((116 : GoUInt32)), "EM_C166").__copy__(),
new T_intName(((117 : GoUInt32)), "EM_M16C").__copy__(),
new T_intName(((118 : GoUInt32)), "EM_DSPIC30F").__copy__(),
new T_intName(((119 : GoUInt32)), "EM_CE").__copy__(),
new T_intName(((120 : GoUInt32)), "EM_M32C").__copy__(),
new T_intName(((131 : GoUInt32)), "EM_TSK3000").__copy__(),
new T_intName(((132 : GoUInt32)), "EM_RS08").__copy__(),
new T_intName(((133 : GoUInt32)), "EM_SHARC").__copy__(),
new T_intName(((134 : GoUInt32)), "EM_ECOG2").__copy__(),
new T_intName(((135 : GoUInt32)), "EM_SCORE7").__copy__(),
new T_intName(((136 : GoUInt32)), "EM_DSP24").__copy__(),
new T_intName(((137 : GoUInt32)), "EM_VIDEOCORE3").__copy__(),
new T_intName(((138 : GoUInt32)), "EM_LATTICEMICO32").__copy__(),
new T_intName(((139 : GoUInt32)), "EM_SE_C17").__copy__(),
new T_intName(((140 : GoUInt32)), "EM_TI_C6000").__copy__(),
new T_intName(((141 : GoUInt32)), "EM_TI_C2000").__copy__(),
new T_intName(((142 : GoUInt32)), "EM_TI_C5500").__copy__(),
new T_intName(((143 : GoUInt32)), "EM_TI_ARP32").__copy__(),
new T_intName(((144 : GoUInt32)), "EM_TI_PRU").__copy__(),
new T_intName(((160 : GoUInt32)), "EM_MMDSP_PLUS").__copy__(),
new T_intName(((161 : GoUInt32)), "EM_CYPRESS_M8C").__copy__(),
new T_intName(((162 : GoUInt32)), "EM_R32C").__copy__(),
new T_intName(((163 : GoUInt32)), "EM_TRIMEDIA").__copy__(),
new T_intName(((164 : GoUInt32)), "EM_QDSP6").__copy__(),
new T_intName(((165 : GoUInt32)), "EM_8051").__copy__(),
new T_intName(((166 : GoUInt32)), "EM_STXP7X").__copy__(),
new T_intName(((167 : GoUInt32)), "EM_NDS32").__copy__(),
new T_intName(((168 : GoUInt32)), "EM_ECOG1").__copy__(),
new T_intName(((168 : GoUInt32)), "EM_ECOG1X").__copy__(),
new T_intName(((169 : GoUInt32)), "EM_MAXQ30").__copy__(),
new T_intName(((170 : GoUInt32)), "EM_XIMO16").__copy__(),
new T_intName(((171 : GoUInt32)), "EM_MANIK").__copy__(),
new T_intName(((172 : GoUInt32)), "EM_CRAYNV2").__copy__(),
new T_intName(((173 : GoUInt32)), "EM_RX").__copy__(),
new T_intName(((174 : GoUInt32)), "EM_METAG").__copy__(),
new T_intName(((175 : GoUInt32)), "EM_MCST_ELBRUS").__copy__(),
new T_intName(((176 : GoUInt32)), "EM_ECOG16").__copy__(),
new T_intName(((177 : GoUInt32)), "EM_CR16").__copy__(),
new T_intName(((178 : GoUInt32)), "EM_ETPU").__copy__(),
new T_intName(((179 : GoUInt32)), "EM_SLE9X").__copy__(),
new T_intName(((180 : GoUInt32)), "EM_L10M").__copy__(),
new T_intName(((181 : GoUInt32)), "EM_K10M").__copy__(),
new T_intName(((183 : GoUInt32)), "EM_AARCH64").__copy__(),
new T_intName(((185 : GoUInt32)), "EM_AVR32").__copy__(),
new T_intName(((186 : GoUInt32)), "EM_STM8").__copy__(),
new T_intName(((187 : GoUInt32)), "EM_TILE64").__copy__(),
new T_intName(((188 : GoUInt32)), "EM_TILEPRO").__copy__(),
new T_intName(((189 : GoUInt32)), "EM_MICROBLAZE").__copy__(),
new T_intName(((190 : GoUInt32)), "EM_CUDA").__copy__(),
new T_intName(((191 : GoUInt32)), "EM_TILEGX").__copy__(),
new T_intName(((192 : GoUInt32)), "EM_CLOUDSHIELD").__copy__(),
new T_intName(((193 : GoUInt32)), "EM_COREA_1ST").__copy__(),
new T_intName(((194 : GoUInt32)), "EM_COREA_2ND").__copy__(),
new T_intName(((195 : GoUInt32)), "EM_ARC_COMPACT2").__copy__(),
new T_intName(((196 : GoUInt32)), "EM_OPEN8").__copy__(),
new T_intName(((197 : GoUInt32)), "EM_RL78").__copy__(),
new T_intName(((198 : GoUInt32)), "EM_VIDEOCORE5").__copy__(),
new T_intName(((199 : GoUInt32)), "EM_78KOR").__copy__(),
new T_intName(((200 : GoUInt32)), "EM_56800EX").__copy__(),
new T_intName(((201 : GoUInt32)), "EM_BA1").__copy__(),
new T_intName(((202 : GoUInt32)), "EM_BA2").__copy__(),
new T_intName(((203 : GoUInt32)), "EM_XCORE").__copy__(),
new T_intName(((204 : GoUInt32)), "EM_MCHP_PIC").__copy__(),
new T_intName(((205 : GoUInt32)), "EM_INTEL205").__copy__(),
new T_intName(((206 : GoUInt32)), "EM_INTEL206").__copy__(),
new T_intName(((207 : GoUInt32)), "EM_INTEL207").__copy__(),
new T_intName(((208 : GoUInt32)), "EM_INTEL208").__copy__(),
new T_intName(((209 : GoUInt32)), "EM_INTEL209").__copy__(),
new T_intName(((210 : GoUInt32)), "EM_KM32").__copy__(),
new T_intName(((211 : GoUInt32)), "EM_KMX32").__copy__(),
new T_intName(((212 : GoUInt32)), "EM_KMX16").__copy__(),
new T_intName(((213 : GoUInt32)), "EM_KMX8").__copy__(),
new T_intName(((214 : GoUInt32)), "EM_KVARC").__copy__(),
new T_intName(((215 : GoUInt32)), "EM_CDP").__copy__(),
new T_intName(((216 : GoUInt32)), "EM_COGE").__copy__(),
new T_intName(((217 : GoUInt32)), "EM_COOL").__copy__(),
new T_intName(((218 : GoUInt32)), "EM_NORC").__copy__(),
new T_intName(((219 : GoUInt32)), "EM_CSR_KALIMBA ").__copy__(),
new T_intName(((220 : GoUInt32)), "EM_Z80 ").__copy__(),
new T_intName(((221 : GoUInt32)), "EM_VISIUM ").__copy__(),
new T_intName(((222 : GoUInt32)), "EM_FT32 ").__copy__(),
new T_intName(((223 : GoUInt32)), "EM_MOXIE").__copy__(),
new T_intName(((224 : GoUInt32)), "EM_AMDGPU").__copy__(),
new T_intName(((243 : GoUInt32)), "EM_RISCV").__copy__(),
new T_intName(((244 : GoUInt32)), "EM_LANAI").__copy__(),
new T_intName(((247 : GoUInt32)), "EM_BPF").__copy__(),
new T_intName(((6 : GoUInt32)), "EM_486").__copy__(),
new T_intName(((10 : GoUInt32)), "EM_MIPS_RS4_BE").__copy__(),
new T_intName(((41 : GoUInt32)), "EM_ALPHA_STD").__copy__(),
new T_intName(((36902 : GoUInt32)), "EM_ALPHA").__copy__());
final em_ECOG16 : Machine = new Machine(((176 : GoUInt16)));
final dt_MIPS_OPTIONS : DynTag = new DynTag(((1879048233 : GoInt)));
final r_PPC64_REL24 : R_PPC64 = new R_PPC64(((10 : GoInt)));
final r_PPC_ADDR16_LO : R_PPC = new R_PPC(((4 : GoInt)));
final r_AARCH64_TLSIE_LD_GOTTPREL_PREL19 : R_AARCH64 = new R_AARCH64(((543 : GoInt)));
final r_ARM_SWI24 : R_ARM = new R_ARM(((13 : GoInt)));
final r_MIPS_TLS_DTPMOD64 : R_MIPS = new R_MIPS(((40 : GoInt)));
final r_ARM_MOVT_ABS : R_ARM = new R_ARM(((44 : GoInt)));
final em_MIPS : Machine = new Machine(((8 : GoUInt16)));
final em_H8_300H : Machine = new Machine(((47 : GoUInt16)));
final r_MIPS_TLS_DTPMOD32 : R_MIPS = new R_MIPS(((38 : GoInt)));
final em_MANIK : Machine = new Machine(((171 : GoUInt16)));
final r_MIPS_LITERAL : R_MIPS = new R_MIPS(((8 : GoInt)));
final pt_SHLIB : ProgType = new ProgType(((5 : GoInt)));
final r_X86_64_TLSDESC_CALL : R_X86_64 = new R_X86_64(((35 : GoInt)));
final em_ST100 : Machine = new Machine(((60 : GoUInt16)));
final r_SPARC_GLOB_DAT : R_SPARC = new R_SPARC(((20 : GoInt)));
final r_AARCH64_TLSLE_MOVW_TPREL_G0_NC : R_AARCH64 = new R_AARCH64(((548 : GoInt)));
final dt_SPARC_REGISTER : DynTag = new DynTag(((1879048193 : GoInt)));
final r_AARCH64_LD64_GOTOFF_LO15 : R_AARCH64 = new R_AARCH64(((310 : GoInt)));
final r_ARM_TLS_CALL : R_ARM = new R_ARM(((91 : GoInt)));
final r_ALPHA_GPRELLOW : R_ALPHA = new R_ALPHA(((18 : GoInt)));
final r_390_GOTPLTOFF64 : R_390 = new R_390(((36 : GoInt)));
final r_386_TLS_GD : R_386 = new R_386(((18 : GoInt)));
final r_390_GOTPLTOFF32 : R_390 = new R_390(((35 : GoInt)));
final sht_NULL : SectionType = new SectionType(((0 : GoUInt32)));
final r_AARCH64_MOVW_UABS_G0_NC : R_AARCH64 = new R_AARCH64(((264 : GoInt)));
final r_390_GOTPC : R_390 = new R_390(((14 : GoInt)));
final elfosabi_NSK : OSABI = new OSABI(((14 : GoUInt8)));
final dt_STRTAB : DynTag = new DynTag(((5 : GoInt)));
final r_390_TLS_LDO64 : R_390 = new R_390(((53 : GoInt)));
final dt_RELASZ : DynTag = new DynTag(((8 : GoInt)));
final r_ARM_MOVT_BREL : R_ARM = new R_ARM(((85 : GoInt)));
final r_390_TLS_LDO32 : R_390 = new R_390(((52 : GoInt)));
var _stvStrings : Slice<T_intName> = new Slice<T_intName>(new T_intName(((0 : GoUInt32)), "STV_DEFAULT").__copy__(), new T_intName(((1 : GoUInt32)), "STV_INTERNAL").__copy__(), new T_intName(((2 : GoUInt32)), "STV_HIDDEN").__copy__(), new T_intName(((3 : GoUInt32)), "STV_PROTECTED").__copy__());
final r_RISCV_TLS_GD_HI20 : R_RISCV = new R_RISCV(((22 : GoInt)));
final stt_HIOS : SymType = new SymType(((12 : GoInt)));
final r_X86_64_64 : R_X86_64 = new R_X86_64(((1 : GoInt)));
final r_AARCH64_TLSLD_ADR_PAGE21 : R_AARCH64 = new R_AARCH64(((518 : GoInt)));
final dt_MIPS_GP_VALUE : DynTag = new DynTag(((1879048240 : GoInt)));
final em_960 : Machine = new Machine(((19 : GoUInt16)));
final dt_MIPS_LOCAL_GOTIDX : DynTag = new DynTag(((1879048230 : GoInt)));
final r_X86_64_32 : R_X86_64 = new R_X86_64(((10 : GoInt)));
final dt_MIPS_INTERFACE_SIZE : DynTag = new DynTag(((1879048236 : GoInt)));
final df_ORIGIN : DynFlag = new DynFlag(((1 : GoInt)));
final em_XIMO16 : Machine = new Machine(((170 : GoUInt16)));
final dt_JMPREL : DynTag = new DynTag(((23 : GoInt)));
final dt_MIPS_CONFLICTNO : DynTag = new DynTag(((1879048203 : GoInt)));
final dt_MIPS_DELTA_INSTANCE : DynTag = new DynTag(((1879048217 : GoInt)));
final r_PPC64_GOT_TPREL16_LO_DS : R_PPC64 = new R_PPC64(((88 : GoInt)));
final em_68HC05 : Machine = new Machine(((72 : GoUInt16)));
final r_AARCH64_P32_TLSLE_MOVW_TPREL_G0 : R_AARCH64 = new R_AARCH64(((107 : GoInt)));
final pt_GNU_MBIND_LO : ProgType = new ProgType(((1685382485 : GoInt)));
final shf_STRINGS : SectionFlag = new SectionFlag(((32 : GoUInt32)));
final r_AARCH64_P32_TLSLE_MOVW_TPREL_G1 : R_AARCH64 = new R_AARCH64(((106 : GoInt)));
final r_PPC_ADDR14_BRNTAKEN : R_PPC = new R_PPC(((9 : GoInt)));
final ei_PAD : GoInt64 = ((9 : GoUnTypedInt));
final r_PPC_DTPREL16_HA : R_PPC = new R_PPC(((77 : GoInt)));
final elfosabi_STANDALONE : OSABI = new OSABI(((255 : GoUInt8)));
final shf_MERGE : SectionFlag = new SectionFlag(((16 : GoUInt32)));
final r_ARM_ALU_SB_G0 : R_ARM = new R_ARM(((71 : GoInt)));
final em_68HC08 : Machine = new Machine(((71 : GoUInt16)));
final r_SPARC_OLO10 : R_SPARC = new R_SPARC(((33 : GoInt)));
final r_ARM_ALU_SB_G1 : R_ARM = new R_ARM(((73 : GoInt)));
final em_ECOG1X : Machine = new Machine(((168 : GoUInt16)));
final em_IP2K : Machine = new Machine(((101 : GoUInt16)));
final dt_VALRNGLO : DynTag = new DynTag(((1879047424 : GoInt)));
final r_MIPS_REL16 : R_MIPS = new R_MIPS(((33 : GoInt)));
final r_PPC_REL24 : R_PPC = new R_PPC(((10 : GoInt)));
final r_AARCH64_TLSIE_MOVW_GOTTPREL_G1 : R_AARCH64 = new R_AARCH64(((539 : GoInt)));
final r_390_TLS_IE64 : R_390 = new R_390(((48 : GoInt)));
final r_ARM_ALU_SB_G2 : R_ARM = new R_ARM(((74 : GoInt)));
final em_TILEGX : Machine = new Machine(((191 : GoUInt16)));
final em_TRIMEDIA : Machine = new Machine(((163 : GoUInt16)));
final r_386_TLS_LDM : R_386 = new R_386(((19 : GoInt)));
final r_ARM_MOVW_BREL : R_ARM = new R_ARM(((86 : GoInt)));
final dt_MIPS_PROTECTED_GOTIDX : DynTag = new DynTag(((1879048232 : GoInt)));
final em_JAVELIN : Machine = new Machine(((77 : GoUInt16)));
final r_386_GOTPC : R_386 = new R_386(((10 : GoInt)));
final shf_GROUP : SectionFlag = new SectionFlag(((512 : GoUInt32)));
final dt_INIT_ARRAYSZ : DynTag = new DynTag(((27 : GoInt)));
final r_MIPS_CALL_LO16 : R_MIPS = new R_MIPS(((31 : GoInt)));
final r_SPARC_NONE : R_SPARC = new R_SPARC(((0 : GoInt)));
final r_390_TLS_IE32 : R_390 = new R_390(((47 : GoInt)));
final dt_VERNEED : DynTag = new DynTag(((1879048190 : GoInt)));
var _raarch64Strings : Slice<T_intName> = new Slice<T_intName>(
new T_intName(((0 : GoUInt32)), "R_AARCH64_NONE").__copy__(),
new T_intName(((1 : GoUInt32)), "R_AARCH64_P32_ABS32").__copy__(),
new T_intName(((2 : GoUInt32)), "R_AARCH64_P32_ABS16").__copy__(),
new T_intName(((3 : GoUInt32)), "R_AARCH64_P32_PREL32").__copy__(),
new T_intName(((4 : GoUInt32)), "R_AARCH64_P32_PREL16").__copy__(),
new T_intName(((5 : GoUInt32)), "R_AARCH64_P32_MOVW_UABS_G0").__copy__(),
new T_intName(((6 : GoUInt32)), "R_AARCH64_P32_MOVW_UABS_G0_NC").__copy__(),
new T_intName(((7 : GoUInt32)), "R_AARCH64_P32_MOVW_UABS_G1").__copy__(),
new T_intName(((8 : GoUInt32)), "R_AARCH64_P32_MOVW_SABS_G0").__copy__(),
new T_intName(((9 : GoUInt32)), "R_AARCH64_P32_LD_PREL_LO19").__copy__(),
new T_intName(((10 : GoUInt32)), "R_AARCH64_P32_ADR_PREL_LO21").__copy__(),
new T_intName(((11 : GoUInt32)), "R_AARCH64_P32_ADR_PREL_PG_HI21").__copy__(),
new T_intName(((12 : GoUInt32)), "R_AARCH64_P32_ADD_ABS_LO12_NC").__copy__(),
new T_intName(((13 : GoUInt32)), "R_AARCH64_P32_LDST8_ABS_LO12_NC").__copy__(),
new T_intName(((14 : GoUInt32)), "R_AARCH64_P32_LDST16_ABS_LO12_NC").__copy__(),
new T_intName(((15 : GoUInt32)), "R_AARCH64_P32_LDST32_ABS_LO12_NC").__copy__(),
new T_intName(((16 : GoUInt32)), "R_AARCH64_P32_LDST64_ABS_LO12_NC").__copy__(),
new T_intName(((17 : GoUInt32)), "R_AARCH64_P32_LDST128_ABS_LO12_NC").__copy__(),
new T_intName(((18 : GoUInt32)), "R_AARCH64_P32_TSTBR14").__copy__(),
new T_intName(((19 : GoUInt32)), "R_AARCH64_P32_CONDBR19").__copy__(),
new T_intName(((20 : GoUInt32)), "R_AARCH64_P32_JUMP26").__copy__(),
new T_intName(((21 : GoUInt32)), "R_AARCH64_P32_CALL26").__copy__(),
new T_intName(((25 : GoUInt32)), "R_AARCH64_P32_GOT_LD_PREL19").__copy__(),
new T_intName(((26 : GoUInt32)), "R_AARCH64_P32_ADR_GOT_PAGE").__copy__(),
new T_intName(((27 : GoUInt32)), "R_AARCH64_P32_LD32_GOT_LO12_NC").__copy__(),
new T_intName(((81 : GoUInt32)), "R_AARCH64_P32_TLSGD_ADR_PAGE21").__copy__(),
new T_intName(((82 : GoUInt32)), "R_AARCH64_P32_TLSGD_ADD_LO12_NC").__copy__(),
new T_intName(((103 : GoUInt32)), "R_AARCH64_P32_TLSIE_ADR_GOTTPREL_PAGE21").__copy__(),
new T_intName(((104 : GoUInt32)), "R_AARCH64_P32_TLSIE_LD32_GOTTPREL_LO12_NC").__copy__(),
new T_intName(((105 : GoUInt32)), "R_AARCH64_P32_TLSIE_LD_GOTTPREL_PREL19").__copy__(),
new T_intName(((106 : GoUInt32)), "R_AARCH64_P32_TLSLE_MOVW_TPREL_G1").__copy__(),
new T_intName(((107 : GoUInt32)), "R_AARCH64_P32_TLSLE_MOVW_TPREL_G0").__copy__(),
new T_intName(((108 : GoUInt32)), "R_AARCH64_P32_TLSLE_MOVW_TPREL_G0_NC").__copy__(),
new T_intName(((109 : GoUInt32)), "R_AARCH64_P32_TLSLE_ADD_TPREL_HI12").__copy__(),
new T_intName(((110 : GoUInt32)), "R_AARCH64_P32_TLSLE_ADD_TPREL_LO12").__copy__(),
new T_intName(((111 : GoUInt32)), "R_AARCH64_P32_TLSLE_ADD_TPREL_LO12_NC").__copy__(),
new T_intName(((122 : GoUInt32)), "R_AARCH64_P32_TLSDESC_LD_PREL19").__copy__(),
new T_intName(((123 : GoUInt32)), "R_AARCH64_P32_TLSDESC_ADR_PREL21").__copy__(),
new T_intName(((124 : GoUInt32)), "R_AARCH64_P32_TLSDESC_ADR_PAGE21").__copy__(),
new T_intName(((125 : GoUInt32)), "R_AARCH64_P32_TLSDESC_LD32_LO12_NC").__copy__(),
new T_intName(((126 : GoUInt32)), "R_AARCH64_P32_TLSDESC_ADD_LO12_NC").__copy__(),
new T_intName(((127 : GoUInt32)), "R_AARCH64_P32_TLSDESC_CALL").__copy__(),
new T_intName(((180 : GoUInt32)), "R_AARCH64_P32_COPY").__copy__(),
new T_intName(((181 : GoUInt32)), "R_AARCH64_P32_GLOB_DAT").__copy__(),
new T_intName(((182 : GoUInt32)), "R_AARCH64_P32_JUMP_SLOT").__copy__(),
new T_intName(((183 : GoUInt32)), "R_AARCH64_P32_RELATIVE").__copy__(),
new T_intName(((184 : GoUInt32)), "R_AARCH64_P32_TLS_DTPMOD").__copy__(),
new T_intName(((185 : GoUInt32)), "R_AARCH64_P32_TLS_DTPREL").__copy__(),
new T_intName(((186 : GoUInt32)), "R_AARCH64_P32_TLS_TPREL").__copy__(),
new T_intName(((187 : GoUInt32)), "R_AARCH64_P32_TLSDESC").__copy__(),
new T_intName(((188 : GoUInt32)), "R_AARCH64_P32_IRELATIVE").__copy__(),
new T_intName(((256 : GoUInt32)), "R_AARCH64_NULL").__copy__(),
new T_intName(((257 : GoUInt32)), "R_AARCH64_ABS64").__copy__(),
new T_intName(((258 : GoUInt32)), "R_AARCH64_ABS32").__copy__(),
new T_intName(((259 : GoUInt32)), "R_AARCH64_ABS16").__copy__(),
new T_intName(((260 : GoUInt32)), "R_AARCH64_PREL64").__copy__(),
new T_intName(((261 : GoUInt32)), "R_AARCH64_PREL32").__copy__(),
new T_intName(((262 : GoUInt32)), "R_AARCH64_PREL16").__copy__(),
new T_intName(((263 : GoUInt32)), "R_AARCH64_MOVW_UABS_G0").__copy__(),
new T_intName(((264 : GoUInt32)), "R_AARCH64_MOVW_UABS_G0_NC").__copy__(),
new T_intName(((265 : GoUInt32)), "R_AARCH64_MOVW_UABS_G1").__copy__(),
new T_intName(((266 : GoUInt32)), "R_AARCH64_MOVW_UABS_G1_NC").__copy__(),
new T_intName(((267 : GoUInt32)), "R_AARCH64_MOVW_UABS_G2").__copy__(),
new T_intName(((268 : GoUInt32)), "R_AARCH64_MOVW_UABS_G2_NC").__copy__(),
new T_intName(((269 : GoUInt32)), "R_AARCH64_MOVW_UABS_G3").__copy__(),
new T_intName(((270 : GoUInt32)), "R_AARCH64_MOVW_SABS_G0").__copy__(),
new T_intName(((271 : GoUInt32)), "R_AARCH64_MOVW_SABS_G1").__copy__(),
new T_intName(((272 : GoUInt32)), "R_AARCH64_MOVW_SABS_G2").__copy__(),
new T_intName(((273 : GoUInt32)), "R_AARCH64_LD_PREL_LO19").__copy__(),
new T_intName(((274 : GoUInt32)), "R_AARCH64_ADR_PREL_LO21").__copy__(),
new T_intName(((275 : GoUInt32)), "R_AARCH64_ADR_PREL_PG_HI21").__copy__(),
new T_intName(((276 : GoUInt32)), "R_AARCH64_ADR_PREL_PG_HI21_NC").__copy__(),
new T_intName(((277 : GoUInt32)), "R_AARCH64_ADD_ABS_LO12_NC").__copy__(),
new T_intName(((278 : GoUInt32)), "R_AARCH64_LDST8_ABS_LO12_NC").__copy__(),
new T_intName(((279 : GoUInt32)), "R_AARCH64_TSTBR14").__copy__(),
new T_intName(((280 : GoUInt32)), "R_AARCH64_CONDBR19").__copy__(),
new T_intName(((282 : GoUInt32)), "R_AARCH64_JUMP26").__copy__(),
new T_intName(((283 : GoUInt32)), "R_AARCH64_CALL26").__copy__(),
new T_intName(((284 : GoUInt32)), "R_AARCH64_LDST16_ABS_LO12_NC").__copy__(),
new T_intName(((285 : GoUInt32)), "R_AARCH64_LDST32_ABS_LO12_NC").__copy__(),
new T_intName(((286 : GoUInt32)), "R_AARCH64_LDST64_ABS_LO12_NC").__copy__(),
new T_intName(((299 : GoUInt32)), "R_AARCH64_LDST128_ABS_LO12_NC").__copy__(),
new T_intName(((309 : GoUInt32)), "R_AARCH64_GOT_LD_PREL19").__copy__(),
new T_intName(((310 : GoUInt32)), "R_AARCH64_LD64_GOTOFF_LO15").__copy__(),
new T_intName(((311 : GoUInt32)), "R_AARCH64_ADR_GOT_PAGE").__copy__(),
new T_intName(((312 : GoUInt32)), "R_AARCH64_LD64_GOT_LO12_NC").__copy__(),
new T_intName(((313 : GoUInt32)), "R_AARCH64_LD64_GOTPAGE_LO15").__copy__(),
new T_intName(((512 : GoUInt32)), "R_AARCH64_TLSGD_ADR_PREL21").__copy__(),
new T_intName(((513 : GoUInt32)), "R_AARCH64_TLSGD_ADR_PAGE21").__copy__(),
new T_intName(((514 : GoUInt32)), "R_AARCH64_TLSGD_ADD_LO12_NC").__copy__(),
new T_intName(((515 : GoUInt32)), "R_AARCH64_TLSGD_MOVW_G1").__copy__(),
new T_intName(((516 : GoUInt32)), "R_AARCH64_TLSGD_MOVW_G0_NC").__copy__(),
new T_intName(((517 : GoUInt32)), "R_AARCH64_TLSLD_ADR_PREL21").__copy__(),
new T_intName(((518 : GoUInt32)), "R_AARCH64_TLSLD_ADR_PAGE21").__copy__(),
new T_intName(((539 : GoUInt32)), "R_AARCH64_TLSIE_MOVW_GOTTPREL_G1").__copy__(),
new T_intName(((540 : GoUInt32)), "R_AARCH64_TLSIE_MOVW_GOTTPREL_G0_NC").__copy__(),
new T_intName(((541 : GoUInt32)), "R_AARCH64_TLSIE_ADR_GOTTPREL_PAGE21").__copy__(),
new T_intName(((542 : GoUInt32)), "R_AARCH64_TLSIE_LD64_GOTTPREL_LO12_NC").__copy__(),
new T_intName(((543 : GoUInt32)), "R_AARCH64_TLSIE_LD_GOTTPREL_PREL19").__copy__(),
new T_intName(((544 : GoUInt32)), "R_AARCH64_TLSLE_MOVW_TPREL_G2").__copy__(),
new T_intName(((545 : GoUInt32)), "R_AARCH64_TLSLE_MOVW_TPREL_G1").__copy__(),
new T_intName(((546 : GoUInt32)), "R_AARCH64_TLSLE_MOVW_TPREL_G1_NC").__copy__(),
new T_intName(((547 : GoUInt32)), "R_AARCH64_TLSLE_MOVW_TPREL_G0").__copy__(),
new T_intName(((548 : GoUInt32)), "R_AARCH64_TLSLE_MOVW_TPREL_G0_NC").__copy__(),
new T_intName(((549 : GoUInt32)), "R_AARCH64_TLSLE_ADD_TPREL_HI12").__copy__(),
new T_intName(((550 : GoUInt32)), "R_AARCH64_TLSLE_ADD_TPREL_LO12").__copy__(),
new T_intName(((551 : GoUInt32)), "R_AARCH64_TLSLE_ADD_TPREL_LO12_NC").__copy__(),
new T_intName(((560 : GoUInt32)), "R_AARCH64_TLSDESC_LD_PREL19").__copy__(),
new T_intName(((561 : GoUInt32)), "R_AARCH64_TLSDESC_ADR_PREL21").__copy__(),
new T_intName(((562 : GoUInt32)), "R_AARCH64_TLSDESC_ADR_PAGE21").__copy__(),
new T_intName(((563 : GoUInt32)), "R_AARCH64_TLSDESC_LD64_LO12_NC").__copy__(),
new T_intName(((564 : GoUInt32)), "R_AARCH64_TLSDESC_ADD_LO12_NC").__copy__(),
new T_intName(((565 : GoUInt32)), "R_AARCH64_TLSDESC_OFF_G1").__copy__(),
new T_intName(((566 : GoUInt32)), "R_AARCH64_TLSDESC_OFF_G0_NC").__copy__(),
new T_intName(((567 : GoUInt32)), "R_AARCH64_TLSDESC_LDR").__copy__(),
new T_intName(((568 : GoUInt32)), "R_AARCH64_TLSDESC_ADD").__copy__(),
new T_intName(((569 : GoUInt32)), "R_AARCH64_TLSDESC_CALL").__copy__(),
new T_intName(((570 : GoUInt32)), "R_AARCH64_TLSLE_LDST128_TPREL_LO12").__copy__(),
new T_intName(((571 : GoUInt32)), "R_AARCH64_TLSLE_LDST128_TPREL_LO12_NC").__copy__(),
new T_intName(((572 : GoUInt32)), "R_AARCH64_TLSLD_LDST128_DTPREL_LO12").__copy__(),
new T_intName(((573 : GoUInt32)), "R_AARCH64_TLSLD_LDST128_DTPREL_LO12_NC").__copy__(),
new T_intName(((1024 : GoUInt32)), "R_AARCH64_COPY").__copy__(),
new T_intName(((1025 : GoUInt32)), "R_AARCH64_GLOB_DAT").__copy__(),
new T_intName(((1026 : GoUInt32)), "R_AARCH64_JUMP_SLOT").__copy__(),
new T_intName(((1027 : GoUInt32)), "R_AARCH64_RELATIVE").__copy__(),
new T_intName(((1028 : GoUInt32)), "R_AARCH64_TLS_DTPMOD64").__copy__(),
new T_intName(((1029 : GoUInt32)), "R_AARCH64_TLS_DTPREL64").__copy__(),
new T_intName(((1030 : GoUInt32)), "R_AARCH64_TLS_TPREL64").__copy__(),
new T_intName(((1031 : GoUInt32)), "R_AARCH64_TLSDESC").__copy__(),
new T_intName(((1032 : GoUInt32)), "R_AARCH64_IRELATIVE").__copy__());
final pt_TLS : ProgType = new ProgType(((7 : GoInt)));
var _dflagStrings : Slice<T_intName> = new Slice<T_intName>(new T_intName(((1 : GoUInt32)), "DF_ORIGIN").__copy__(), new T_intName(((2 : GoUInt32)), "DF_SYMBOLIC").__copy__(), new T_intName(((4 : GoUInt32)), "DF_TEXTREL").__copy__(), new T_intName(((8 : GoUInt32)), "DF_BIND_NOW").__copy__(), new T_intName(((16 : GoUInt32)), "DF_STATIC_TLS").__copy__());
final r_390_TLS_GDCALL : R_390 = new R_390(((38 : GoInt)));
final sht_LOOS : SectionType = new SectionType(((1610612736 : GoUInt32)));
final r_PPC_UADDR16 : R_PPC = new R_PPC(((25 : GoInt)));
final r_ARM_JUMP24 : R_ARM = new R_ARM(((29 : GoInt)));
final r_SPARC_64 : R_SPARC = new R_SPARC(((32 : GoInt)));
final r_390_GOT20 : R_390 = new R_390(((58 : GoInt)));
var _rriscvStrings : Slice<T_intName> = new Slice<T_intName>(
new T_intName(((0 : GoUInt32)), "R_RISCV_NONE").__copy__(),
new T_intName(((1 : GoUInt32)), "R_RISCV_32").__copy__(),
new T_intName(((2 : GoUInt32)), "R_RISCV_64").__copy__(),
new T_intName(((3 : GoUInt32)), "R_RISCV_RELATIVE").__copy__(),
new T_intName(((4 : GoUInt32)), "R_RISCV_COPY").__copy__(),
new T_intName(((5 : GoUInt32)), "R_RISCV_JUMP_SLOT").__copy__(),
new T_intName(((6 : GoUInt32)), "R_RISCV_TLS_DTPMOD32").__copy__(),
new T_intName(((7 : GoUInt32)), "R_RISCV_TLS_DTPMOD64").__copy__(),
new T_intName(((8 : GoUInt32)), "R_RISCV_TLS_DTPREL32").__copy__(),
new T_intName(((9 : GoUInt32)), "R_RISCV_TLS_DTPREL64").__copy__(),
new T_intName(((10 : GoUInt32)), "R_RISCV_TLS_TPREL32").__copy__(),
new T_intName(((11 : GoUInt32)), "R_RISCV_TLS_TPREL64").__copy__(),
new T_intName(((16 : GoUInt32)), "R_RISCV_BRANCH").__copy__(),
new T_intName(((17 : GoUInt32)), "R_RISCV_JAL").__copy__(),
new T_intName(((18 : GoUInt32)), "R_RISCV_CALL").__copy__(),
new T_intName(((19 : GoUInt32)), "R_RISCV_CALL_PLT").__copy__(),
new T_intName(((20 : GoUInt32)), "R_RISCV_GOT_HI20").__copy__(),
new T_intName(((21 : GoUInt32)), "R_RISCV_TLS_GOT_HI20").__copy__(),
new T_intName(((22 : GoUInt32)), "R_RISCV_TLS_GD_HI20").__copy__(),
new T_intName(((23 : GoUInt32)), "R_RISCV_PCREL_HI20").__copy__(),
new T_intName(((24 : GoUInt32)), "R_RISCV_PCREL_LO12_I").__copy__(),
new T_intName(((25 : GoUInt32)), "R_RISCV_PCREL_LO12_S").__copy__(),
new T_intName(((26 : GoUInt32)), "R_RISCV_HI20").__copy__(),
new T_intName(((27 : GoUInt32)), "R_RISCV_LO12_I").__copy__(),
new T_intName(((28 : GoUInt32)), "R_RISCV_LO12_S").__copy__(),
new T_intName(((29 : GoUInt32)), "R_RISCV_TPREL_HI20").__copy__(),
new T_intName(((30 : GoUInt32)), "R_RISCV_TPREL_LO12_I").__copy__(),
new T_intName(((31 : GoUInt32)), "R_RISCV_TPREL_LO12_S").__copy__(),
new T_intName(((32 : GoUInt32)), "R_RISCV_TPREL_ADD").__copy__(),
new T_intName(((33 : GoUInt32)), "R_RISCV_ADD8").__copy__(),
new T_intName(((34 : GoUInt32)), "R_RISCV_ADD16").__copy__(),
new T_intName(((35 : GoUInt32)), "R_RISCV_ADD32").__copy__(),
new T_intName(((36 : GoUInt32)), "R_RISCV_ADD64").__copy__(),
new T_intName(((37 : GoUInt32)), "R_RISCV_SUB8").__copy__(),
new T_intName(((38 : GoUInt32)), "R_RISCV_SUB16").__copy__(),
new T_intName(((39 : GoUInt32)), "R_RISCV_SUB32").__copy__(),
new T_intName(((40 : GoUInt32)), "R_RISCV_SUB64").__copy__(),
new T_intName(((41 : GoUInt32)), "R_RISCV_GNU_VTINHERIT").__copy__(),
new T_intName(((42 : GoUInt32)), "R_RISCV_GNU_VTENTRY").__copy__(),
new T_intName(((43 : GoUInt32)), "R_RISCV_ALIGN").__copy__(),
new T_intName(((44 : GoUInt32)), "R_RISCV_RVC_BRANCH").__copy__(),
new T_intName(((45 : GoUInt32)), "R_RISCV_RVC_JUMP").__copy__(),
new T_intName(((46 : GoUInt32)), "R_RISCV_RVC_LUI").__copy__(),
new T_intName(((47 : GoUInt32)), "R_RISCV_GPREL_I").__copy__(),
new T_intName(((48 : GoUInt32)), "R_RISCV_GPREL_S").__copy__(),
new T_intName(((49 : GoUInt32)), "R_RISCV_TPREL_I").__copy__(),
new T_intName(((50 : GoUInt32)), "R_RISCV_TPREL_S").__copy__(),
new T_intName(((51 : GoUInt32)), "R_RISCV_RELAX").__copy__(),
new T_intName(((52 : GoUInt32)), "R_RISCV_SUB6").__copy__(),
new T_intName(((53 : GoUInt32)), "R_RISCV_SET6").__copy__(),
new T_intName(((54 : GoUInt32)), "R_RISCV_SET8").__copy__(),
new T_intName(((55 : GoUInt32)), "R_RISCV_SET16").__copy__(),
new T_intName(((56 : GoUInt32)), "R_RISCV_SET32").__copy__(),
new T_intName(((57 : GoUInt32)), "R_RISCV_32_PCREL").__copy__());
final r_PPC_DTPREL16_HI : R_PPC = new R_PPC(((76 : GoInt)));
final elfosabi_FENIXOS : OSABI = new OSABI(((16 : GoUInt8)));
final em_MCST_ELBRUS : Machine = new Machine(((175 : GoUInt16)));
final r_SPARC_32 : R_SPARC = new R_SPARC(((3 : GoInt)));
final r_AARCH64_P32_ADD_ABS_LO12_NC : R_AARCH64 = new R_AARCH64(((12 : GoInt)));
final r_AARCH64_P32_TLSIE_ADR_GOTTPREL_PAGE21 : R_AARCH64 = new R_AARCH64(((103 : GoInt)));
final r_SPARC_DISP8 : R_SPARC = new R_SPARC(((4 : GoInt)));
final r_AARCH64_P32_GOT_LD_PREL19 : R_AARCH64 = new R_AARCH64(((25 : GoInt)));
final r_ARM_TLS_DESCSEQ : R_ARM = new R_ARM(((92 : GoInt)));
final r_AARCH64_JUMP26 : R_AARCH64 = new R_AARCH64(((282 : GoInt)));
final em_68K : Machine = new Machine(((4 : GoUInt16)));
final r_AARCH64_P32_CALL26 : R_AARCH64 = new R_AARCH64(((21 : GoInt)));
final em_PPC64 : Machine = new Machine(((21 : GoUInt16)));
final r_390_TLS_LOAD : R_390 = new R_390(((37 : GoInt)));
final r_PPC64_PLTGOT16_LO : R_PPC64 = new R_PPC64(((53 : GoInt)));
final r_ARM_THM_ALU_PREL_11_0 : R_ARM = new R_ARM(((53 : GoInt)));
final dt_FLAGS_1 : DynTag = new DynTag(((1879048187 : GoInt)));
final r_AARCH64_P32_PREL32 : R_AARCH64 = new R_AARCH64(((3 : GoInt)));
final sht_GNU_VERDEF : SectionType = new SectionType(((1879048189 : GoUInt32)));
final r_386_TLS_GD_32 : R_386 = new R_386(((24 : GoInt)));
final r_PPC64_SECTOFF_DS : R_PPC64 = new R_PPC64(((61 : GoInt)));
final pt_SUNW_EH_FRAME : ProgType = new ProgType(((1685382480 : GoInt)));
final r_RISCV_RELATIVE : R_RISCV = new R_RISCV(((3 : GoInt)));
final r_AARCH64_TLSLE_MOVW_TPREL_G0 : R_AARCH64 = new R_AARCH64(((547 : GoInt)));
final dt_MIPS_AUX_DYNAMIC : DynTag = new DynTag(((1879048241 : GoInt)));
final em_ETPU : Machine = new Machine(((178 : GoUInt16)));
final r_AARCH64_TLSLE_MOVW_TPREL_G1 : R_AARCH64 = new R_AARCH64(((545 : GoInt)));
final elfclassnone : Class_ = new Class_(((0 : GoUInt8)));
final r_AARCH64_TLSLE_MOVW_TPREL_G2 : R_AARCH64 = new R_AARCH64(((544 : GoInt)));
final em_DSP24 : Machine = new Machine(((136 : GoUInt16)));
final dt_REL : DynTag = new DynTag(((17 : GoInt)));
final r_ARM_XPC25 : R_ARM = new R_ARM(((15 : GoInt)));
final sht_GNU_VERSYM : SectionType = new SectionType(((1879048191 : GoUInt32)));
final r_RISCV_SUB64 : R_RISCV = new R_RISCV(((40 : GoInt)));
final r_ARM_THM_MOVW_BREL_NC : R_ARM = new R_ARM(((87 : GoInt)));
final r_RISCV_SUB32 : R_RISCV = new R_RISCV(((39 : GoInt)));
final r_PPC64_ADDR16_HIGHERA : R_PPC64 = new R_PPC64(((40 : GoInt)));
final stt_LOPROC : SymType = new SymType(((13 : GoInt)));
final r_RISCV_SUB6 : R_RISCV = new R_RISCV(((52 : GoInt)));
final dt_SONAME : DynTag = new DynTag(((14 : GoInt)));
final pf_R : ProgFlag = new ProgFlag(((4 : GoUInt32)));
final r_RISCV_SUB8 : R_RISCV = new R_RISCV(((37 : GoInt)));
final r_AARCH64_P32_LDST16_ABS_LO12_NC : R_AARCH64 = new R_AARCH64(((14 : GoInt)));
final r_ARM_MOVW_PREL_NC : R_ARM = new R_ARM(((45 : GoInt)));
final r_ARM_TLS_DTPOFF32 : R_ARM = new R_ARM(((18 : GoInt)));
final r_PPC_EMB_BIT_FLD : R_PPC = new R_PPC(((115 : GoInt)));
final r_ALPHA_COPY : R_ALPHA = new R_ALPHA(((24 : GoInt)));
final r_SPARC_PC_HH22 : R_SPARC = new R_SPARC(((37 : GoInt)));
final r_PPC64_GOT_DTPREL16_DS : R_PPC64 = new R_PPC64(((91 : GoInt)));
final r_PPC64_DTPREL16_HA : R_PPC64 = new R_PPC64(((77 : GoInt)));
final em_XTENSA : Machine = new Machine(((94 : GoUInt16)));
final r_390_PC16DBL : R_390 = new R_390(((17 : GoInt)));
final r_PPC64_TPREL16_HIGHEST : R_PPC64 = new R_PPC64(((99 : GoInt)));
final em_TRICORE : Machine = new Machine(((44 : GoUInt16)));
final pf_W : ProgFlag = new ProgFlag(((2 : GoUInt32)));
final r_ARM_ABS12 : R_ARM = new R_ARM(((6 : GoInt)));
final pf_X : ProgFlag = new ProgFlag(((1 : GoUInt32)));
final r_PPC_JMP_SLOT : R_PPC = new R_PPC(((21 : GoInt)));
final pt_MIPS_ABIFLAGS : ProgType = new ProgType(((1879048195 : GoInt)));
final stb_LOOS : SymBind = new SymBind(((10 : GoInt)));
final r_ARM_ABS16 : R_ARM = new R_ARM(((5 : GoInt)));
final r_PPC64_DTPREL16_HI : R_PPC64 = new R_PPC64(((76 : GoInt)));
final elfosabi_ARM : OSABI = new OSABI(((97 : GoUInt8)));
final r_RISCV_PCREL_LO12_I : R_RISCV = new R_RISCV(((24 : GoInt)));
final r_PPC_GOT16_HA : R_PPC = new R_PPC(((17 : GoInt)));
final em_SCORE7 : Machine = new Machine(((135 : GoUInt16)));
final r_AARCH64_TLSLE_ADD_TPREL_HI12 : R_AARCH64 = new R_AARCH64(((549 : GoInt)));
final em_FR20 : Machine = new Machine(((37 : GoUInt16)));
final em_ZSP : Machine = new Machine(((79 : GoUInt16)));
final r_386_GLOB_DAT : R_386 = new R_386(((6 : GoInt)));
final r_PPC_PLTREL32 : R_PPC = new R_PPC(((28 : GoInt)));
final em_TMM_GPP : Machine = new Machine(((96 : GoUInt16)));
final em_Z80 : Machine = new Machine(((220 : GoUInt16)));
final et_LOOS : Type = new Type(((65024 : GoUInt16)));
final em_56800EX : Machine = new Machine(((200 : GoUInt16)));
final ei_DATA : GoInt64 = ((5 : GoUnTypedInt));
final stt_OBJECT : SymType = new SymType(((1 : GoInt)));
final r_PPC_GOT16_HI : R_PPC = new R_PPC(((16 : GoInt)));
final r_ALPHA_GPREL32 : R_ALPHA = new R_ALPHA(((3 : GoInt)));
final em_H8S : Machine = new Machine(((48 : GoUInt16)));
final em_MMDSP_PLUS : Machine = new Machine(((160 : GoUInt16)));
final r_RISCV_PCREL_LO12_S : R_RISCV = new R_RISCV(((25 : GoInt)));
final r_PPC_ADDR24 : R_PPC = new R_PPC(((2 : GoInt)));
final em_ME16 : Machine = new Machine(((59 : GoUInt16)));
final em_F2MC16 : Machine = new Machine(((104 : GoUInt16)));
final elfmag : GoString = "\177ELF";
final r_ARM_REL32 : R_ARM = new R_ARM(((3 : GoInt)));
final r_PPC_GLOB_DAT : R_PPC = new R_PPC(((20 : GoInt)));
final et_EXEC : Type = new Type(((2 : GoUInt16)));
final sht_PROGBITS : SectionType = new SectionType(((1 : GoUInt32)));
final r_ARM_TLS_IE32 : R_ARM = new R_ARM(((107 : GoInt)));
final r_ALPHA_GPDISP : R_ALPHA = new R_ALPHA(((6 : GoInt)));
final sht_LOUSER : SectionType = new SectionType((("2147483648" : GoUInt32)));
final r_ALPHA_HINT : R_ALPHA = new R_ALPHA(((8 : GoInt)));
final compress_HIOS : CompressionType = new CompressionType(((1879048191 : GoInt)));
final r_X86_64_GOTPCRELX : R_X86_64 = new R_X86_64(((41 : GoInt)));
final dt_RELSZ : DynTag = new DynTag(((18 : GoInt)));
final em_MIPS_RS3_LE : Machine = new Machine(((10 : GoUInt16)));
final r_ARM_THM_ALU_ABS_G3 : R_ARM = new R_ARM(((135 : GoInt)));
final r_ALPHA_SREL64 : R_ALPHA = new R_ALPHA(((11 : GoInt)));
final dt_MIPS_ICHECKSUM : DynTag = new DynTag(((1879048195 : GoInt)));
final dt_SYMENT : DynTag = new DynTag(((11 : GoInt)));
final r_ARM_THM_MOVW_ABS_NC : R_ARM = new R_ARM(((47 : GoInt)));
final r_ALPHA_SREL32 : R_ALPHA = new R_ALPHA(((10 : GoInt)));
final sym32Size : GoInt64 = ((16 : GoUnTypedInt));
final elfosabi_OPENVMS : OSABI = new OSABI(((13 : GoUInt8)));
final r_390_GOTOFF16 : R_390 = new R_390(((27 : GoInt)));
final r_390_TLS_LDCALL : R_390 = new R_390(((39 : GoInt)));
final elfosabi_AIX : OSABI = new OSABI(((7 : GoUInt8)));
final r_ARM_THM_JUMP6 : R_ARM = new R_ARM(((52 : GoInt)));
final r_PPC64_TPREL16_LO_DS : R_PPC64 = new R_PPC64(((96 : GoInt)));
final em_860 : Machine = new Machine(((7 : GoUInt16)));
final pt_MIPS_REGINFO : ProgType = new ProgType(((1879048192 : GoInt)));
final dt_GNU_HASH : DynTag = new DynTag(((1879047925 : GoInt)));
final r_AARCH64_TLSLE_LDST128_TPREL_LO12 : R_AARCH64 = new R_AARCH64(((570 : GoInt)));
final r_ARM_THM_JUMP8 : R_ARM = new R_ARM(((103 : GoInt)));
final dt_MIPS_UNREFEXTNO : DynTag = new DynTag(((1879048210 : GoInt)));
final r_MIPS_DELETE : R_MIPS = new R_MIPS(((27 : GoInt)));
final em_SLE9X : Machine = new Machine(((179 : GoUInt16)));
final r_PPC_EMB_RELST_HA : R_PPC = new R_PPC(((114 : GoInt)));
final r_ARM_THM_MOVT_BREL : R_ARM = new R_ARM(((88 : GoInt)));
final r_ARM_TLS_DTPMOD32 : R_ARM = new R_ARM(((17 : GoInt)));
final r_ARM_THM_TLS_DESCSEQ16 : R_ARM = new R_ARM(((129 : GoInt)));
final r_PPC64_GOT16_DS : R_PPC64 = new R_PPC64(((58 : GoInt)));
final em_V850 : Machine = new Machine(((87 : GoUInt16)));
final pt_S390_PGSTE : ProgType = new ProgType(((1879048192 : GoInt)));
final r_MIPS_TLS_TPREL_HI16 : R_MIPS = new R_MIPS(((49 : GoInt)));
final r_386_TLS_GD_PUSH : R_386 = new R_386(((25 : GoInt)));
final r_AARCH64_NONE : R_AARCH64 = new R_AARCH64(((0 : GoInt)));
var _shfStrings : Slice<T_intName> = new Slice<T_intName>(
new T_intName(((1 : GoUInt32)), "SHF_WRITE").__copy__(),
new T_intName(((2 : GoUInt32)), "SHF_ALLOC").__copy__(),
new T_intName(((4 : GoUInt32)), "SHF_EXECINSTR").__copy__(),
new T_intName(((16 : GoUInt32)), "SHF_MERGE").__copy__(),
new T_intName(((32 : GoUInt32)), "SHF_STRINGS").__copy__(),
new T_intName(((64 : GoUInt32)), "SHF_INFO_LINK").__copy__(),
new T_intName(((128 : GoUInt32)), "SHF_LINK_ORDER").__copy__(),
new T_intName(((256 : GoUInt32)), "SHF_OS_NONCONFORMING").__copy__(),
new T_intName(((512 : GoUInt32)), "SHF_GROUP").__copy__(),
new T_intName(((1024 : GoUInt32)), "SHF_TLS").__copy__(),
new T_intName(((2048 : GoUInt32)), "SHF_COMPRESSED").__copy__());
final r_PPC_TPREL16_HA : R_PPC = new R_PPC(((72 : GoInt)));
final em_DXP : Machine = new Machine(((112 : GoUInt16)));
final r_RISCV_HI20 : R_RISCV = new R_RISCV(((26 : GoInt)));
final r_PPC64_TLSLD : R_PPC64 = new R_PPC64(((108 : GoInt)));
final r_ARM_THM_PC12 : R_ARM = new R_ARM(((54 : GoInt)));
final em_UNICORE : Machine = new Machine(((110 : GoUInt16)));
final r_PPC64_TPREL64 : R_PPC64 = new R_PPC64(((73 : GoInt)));
final r_PPC_EMB_RELST_HI : R_PPC = new R_PPC(((113 : GoInt)));
final nt_FPREGSET : NType = new NType(((2 : GoInt)));
var _pfStrings : Slice<T_intName> = new Slice<T_intName>(new T_intName(((1 : GoUInt32)), "PF_X").__copy__(), new T_intName(((2 : GoUInt32)), "PF_W").__copy__(), new T_intName(((4 : GoUInt32)), "PF_R").__copy__());
final r_ALPHA_OP_STORE : R_ALPHA = new R_ALPHA(((13 : GoInt)));
final r_PPC_TPREL16_HI : R_PPC = new R_PPC(((71 : GoInt)));
final r_MIPS_TLS_DTPREL_LO16 : R_MIPS = new R_MIPS(((45 : GoInt)));
final em_ST7 : Machine = new Machine(((68 : GoUInt16)));
final elfosabi_HPUX : OSABI = new OSABI(((1 : GoUInt8)));
final r_PPC_RELATIVE : R_PPC = new R_PPC(((22 : GoInt)));
final r_ARM_THM_ALU_ABS_G2_NC : R_ARM = new R_ARM(((134 : GoInt)));
final dt_MIPS_HIPAGENO : DynTag = new DynTag(((1879048212 : GoInt)));
final shn_HIRESERVE : SectionIndex = new SectionIndex(((65535 : GoInt)));
final stb_GLOBAL : SymBind = new SymBind(((1 : GoInt)));
final em_RX : Machine = new Machine(((173 : GoUInt16)));
final r_PPC64_PLTGOT16 : R_PPC64 = new R_PPC64(((52 : GoInt)));
final r_MIPS_GOT_LO16 : R_MIPS = new R_MIPS(((23 : GoInt)));
final dt_SYMTAB : DynTag = new DynTag(((6 : GoInt)));
final em_CE : Machine = new Machine(((119 : GoUInt16)));
final r_AARCH64_ADR_GOT_PAGE : R_AARCH64 = new R_AARCH64(((311 : GoInt)));
final r_ARM_PC13 : R_ARM = new R_ARM(((4 : GoInt)));
final r_390_GOTPLT64 : R_390 = new R_390(((32 : GoInt)));
final r_PPC64_DTPREL16_HIGHERA : R_PPC64 = new R_PPC64(((104 : GoInt)));
final r_ARM_GNU_VTINHERIT : R_ARM = new R_ARM(((101 : GoInt)));
final em_TI_C6000 : Machine = new Machine(((140 : GoUInt16)));
final r_390_GOTPLT32 : R_390 = new R_390(((31 : GoInt)));
var _compressionStrings : Slice<T_intName> = new Slice<T_intName>(new T_intName(((0 : GoUInt32)), "COMPRESS_ZLIB").__copy__(), new T_intName(((1610612736 : GoUInt32)), "COMPRESS_LOOS").__copy__(), new T_intName(((1879048191 : GoUInt32)), "COMPRESS_HIOS").__copy__(), new T_intName(((1879048192 : GoUInt32)), "COMPRESS_LOPROC").__copy__(), new T_intName(((2147483647 : GoUInt32)), "COMPRESS_HIPROC").__copy__());
final r_AARCH64_P32_TLSDESC_ADR_PAGE21 : R_AARCH64 = new R_AARCH64(((124 : GoInt)));
final ei_VERSION : GoInt64 = ((6 : GoUnTypedInt));
final stb_HIPROC : SymBind = new SymBind(((15 : GoInt)));
final r_ARM_TLS_GOTDESC : R_ARM = new R_ARM(((90 : GoInt)));
final em_PPC : Machine = new Machine(((20 : GoUInt16)));
final em_L10M : Machine = new Machine(((180 : GoUInt16)));
final et_HIPROC : Type = new Type(((65535 : GoUInt16)));
final r_PPC64_ADDR16_DS : R_PPC64 = new R_PPC64(((56 : GoInt)));
final shf_OS_NONCONFORMING : SectionFlag = new SectionFlag(((256 : GoUInt32)));
final dt_GNU_CONFLICTSZ : DynTag = new DynTag(((1879047670 : GoInt)));
final r_ARM_PLT32 : R_ARM = new R_ARM(((27 : GoInt)));
final r_X86_64_PC32_BND : R_X86_64 = new R_X86_64(((39 : GoInt)));
final em_LATTICEMICO32 : Machine = new Machine(((138 : GoUInt16)));
final r_ARM_MOVW_ABS_NC : R_ARM = new R_ARM(((43 : GoInt)));
final dt_MIPS_RWPLT : DynTag = new DynTag(((1879048244 : GoInt)));
final r_SPARC_PCPLT32 : R_SPARC = new R_SPARC(((27 : GoInt)));
final em_CR : Machine = new Machine(((103 : GoUInt16)));
final r_ARM_GOT_BREL12 : R_ARM = new R_ARM(((97 : GoInt)));
final pt_AARCH64_ARCHEXT : ProgType = new ProgType(((1879048192 : GoInt)));
final dt_MIPS_SYMTABNO : DynTag = new DynTag(((1879048209 : GoInt)));
final em_NS32K : Machine = new Machine(((97 : GoUInt16)));
final r_AARCH64_P32_TLSDESC_ADD_LO12_NC : R_AARCH64 = new R_AARCH64(((126 : GoInt)));
final r_X86_64_IRELATIVE : R_X86_64 = new R_X86_64(((37 : GoInt)));
final r_ARM_THM_PC8 : R_ARM = new R_ARM(((11 : GoInt)));
function r_SYM32(_info:GoUInt32):GoUInt32 {
        return (_info >> ((8 : GoUnTypedInt)));
    }
function r_TYPE32(_info:GoUInt32):GoUInt32 {
        return _info & ((255 : GoUInt32));
    }
function r_INFO32(_sym:GoUInt32, _typ:GoUInt32):GoUInt32 {
        return (_sym << ((8 : GoUnTypedInt))) | _typ;
    }
function st_BIND(_info:GoUInt8):SymBind {
        return new SymBind((_info >> ((4 : GoUnTypedInt))));
    }
function st_TYPE(_info:GoUInt8):SymType {
        return new SymType((_info & ((15 : GoUInt8))));
    }
function st_INFO(_bind:SymBind, _typ:SymType):GoUInt8 {
        return (_bind.__t__ << ((4 : GoUnTypedInt))) | _typ.__t__ & ((15 : GoUInt8));
    }
function st_VISIBILITY(_other:GoUInt8):SymVis {
        return new SymVis((_other & ((3 : GoUInt8))));
    }
function r_SYM64(_info:GoUInt64):GoUInt32 {
        return (((_info >> ((32 : GoUnTypedInt))) : GoUInt32));
    }
function r_TYPE64(_info:GoUInt64):GoUInt32 {
        return ((_info : GoUInt32));
    }
function r_INFO(_sym:GoUInt32, _typ:GoUInt32):GoUInt64 {
        return (((_sym : GoUInt64)) << ((32 : GoUnTypedInt))) | ((_typ : GoUInt64));
    }
function _stringName(_i:GoUInt32, _names:Slice<T_intName>, _goSyntax:Bool):GoString {
        for (_n in _names) {
            if (_n._i == _i) {
                if (_goSyntax) {
                    return (("elf." : GoString)) + _n._s;
                };
                return _n._s;
            };
        };
        {
            var _j:GoInt = _names.length - ((1 : GoInt));
            Go.cfor(_j >= ((0 : GoInt)), _j--, {
                var _n:T_intName = _names[_j].__copy__();
                if (_n._i < _i) {
                    var _s:GoString = _n._s;
                    if (_goSyntax) {
                        _s = (("elf." : GoString)) + _s;
                    };
                    return _s + (("+" : GoString)) + stdgo.strconv.Strconv.formatUint((((_i - _n._i) : GoUInt64)), ((10 : GoInt)));
                };
            });
        };
        return stdgo.strconv.Strconv.formatUint(((_i : GoUInt64)), ((10 : GoInt)));
    }
function _flagName(_i:GoUInt32, _names:Slice<T_intName>, _goSyntax:Bool):GoString {
        var _s:GoString = "";
        for (_n in _names) {
            if (_n._i & _i == _n._i) {
                if (_s.length > ((0 : GoInt))) {
                    _s = _s + ("+");
                };
                if (_goSyntax) {
                    _s = _s + ("elf.");
                };
                _s = _s + (_n._s);
                _i = _i - (_n._i);
            };
        };
        if (_s.length == ((0 : GoInt))) {
            return (("0x" : GoString)) + stdgo.strconv.Strconv.formatUint(((_i : GoUInt64)), ((16 : GoInt)));
        };
        if (_i != ((0 : GoUInt32))) {
            _s = _s + ((("+0x" : GoString)) + stdgo.strconv.Strconv.formatUint(((_i : GoUInt64)), ((16 : GoInt))));
        };
        return _s;
    }
/**
    // Open opens the named file using os.Open and prepares it for use as an ELF binary.
**/
function open(_name:GoString):{ var _0 : Pointer<File>; var _1 : Error; } {
        var __tmp__ = stdgo.os.Os.open(_name), _f:Pointer<stdgo.os.Os.File> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            return { _0 : new Pointer<File>().nil(), _1 : _err };
        };
        var __tmp__ = newFile(_f.value), _ff:Pointer<File> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            _f.value.close();
            return { _0 : new Pointer<File>().nil(), _1 : _err };
        };
        _ff.value._closer = _f.value;
        return { _0 : _ff, _1 : ((null : stdgo.Error)) };
    }
/**
    // NewFile creates a new File for accessing an ELF binary in an underlying reader.
    // The ELF binary is expected to start at position 0 in the ReaderAt.
**/
function newFile(_r:stdgo.io.Io.ReaderAt):{ var _0 : Pointer<File>; var _1 : Error; } {
        var _sr:Pointer<stdgo.io.Io.SectionReader> = stdgo.io.Io.newSectionReader(_r, ((0 : GoInt64)), (((1 : GoUnTypedInt)) << ((63 : GoUnTypedInt))) - ((1 : GoUnTypedInt)));
        var _ident:GoArray<GoUInt8> = new GoArray<GoUInt8>(...[for (i in 0 ... 16) ((0 : GoUInt8))]);
        {
            var __tmp__ = _r.readAt(_ident.__slice__(((0 : GoInt))), ((0 : GoInt64))), _:GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                return { _0 : new Pointer<File>().nil(), _1 : _err };
            };
        };
        if (_ident[((0 : GoInt))] != (("\u{007f}".code : GoRune)) || _ident[((1 : GoInt))] != (("E".code : GoRune)) || _ident[((2 : GoInt))] != (("L".code : GoRune)) || _ident[((3 : GoInt))] != (("F".code : GoRune))) {
            return { _0 : new Pointer<File>().nil(), _1 : Go.pointer(new FormatError(((0 : GoInt64)), "bad magic number", Go.toInterface(_ident.__slice__(((0 : GoInt)), ((4 : GoInt)))))).value };
        };
        var _f:Pointer<File> = Go.pointer(new File());
        _f.value.fileHeader.class_ = new Class_(_ident[ei_CLASS]);
        if (_f.value.fileHeader.class_.__t__ == elfclass32.__t__) {} else if (_f.value.fileHeader.class_.__t__ == elfclass64.__t__) {} else {
            return { _0 : new Pointer<File>().nil(), _1 : Go.pointer(new FormatError(((0 : GoInt64)), "unknown ELF class", Go.toInterface(_f.value.fileHeader.class_))).value };
        };
        _f.value.fileHeader.data = new Data(_ident[ei_DATA]);
        if (_f.value.fileHeader.data.__t__ == elfdata2lsb.__t__) {
            _f.value.fileHeader.byteOrder = stdgo.encoding.binary.Binary.littleEndian.__copy__();
        } else if (_f.value.fileHeader.data.__t__ == elfdata2msb.__t__) {
            _f.value.fileHeader.byteOrder = stdgo.encoding.binary.Binary.bigEndian.__copy__();
        } else {
            return { _0 : new Pointer<File>().nil(), _1 : Go.pointer(new FormatError(((0 : GoInt64)), "unknown ELF data encoding", Go.toInterface(_f.value.fileHeader.data))).value };
        };
        _f.value.fileHeader.version = new Version(_ident[ei_VERSION]);
        if (_f.value.fileHeader.version.__t__ != ev_CURRENT.__t__) {
            return { _0 : new Pointer<File>().nil(), _1 : Go.pointer(new FormatError(((0 : GoInt64)), "unknown ELF version", Go.toInterface(_f.value.fileHeader.version))).value };
        };
        _f.value.fileHeader.osabi = new OSABI(_ident[ei_OSABI]);
        _f.value.fileHeader.abiversion = _ident[ei_ABIVERSION];
        var _phoff:GoInt64 = ((0 : GoInt64));
        var _phentsize:GoInt = ((0 : GoInt)), _phnum:GoInt = ((0 : GoInt));
        var _shoff:GoInt64 = ((0 : GoInt64));
        var _shentsize:GoInt = ((0 : GoInt)), _shnum:GoInt = ((0 : GoInt)), _shstrndx:GoInt = ((0 : GoInt));
        if (_f.value.fileHeader.class_.__t__ == elfclass32.__t__) {
            var _hdr:Pointer<Header32> = Go.pointer(new Header32());
            _sr.value.seek(((0 : GoInt64)), _seekStart);
            {
                var _err:stdgo.Error = stdgo.encoding.binary.Binary.read(_sr.value, _f.value.fileHeader.byteOrder, Go.toInterface(_hdr));
                if (_err != null) {
                    return { _0 : new Pointer<File>().nil(), _1 : _err };
                };
            };
            _f.value.fileHeader.type = new Type(_hdr.value.type);
            _f.value.fileHeader.machine = new Machine(_hdr.value.machine);
            _f.value.fileHeader.entry = ((_hdr.value.entry : GoUInt64));
            {
                var _v:Version = new Version(_hdr.value.version);
                if (_v.__t__ != _f.value.fileHeader.version.__t__) {
                    return { _0 : new Pointer<File>().nil(), _1 : Go.pointer(new FormatError(((0 : GoInt64)), "mismatched ELF version", Go.toInterface(_v))).value };
                };
            };
            _phoff = ((_hdr.value.phoff : GoInt64));
            _phentsize = ((_hdr.value.phentsize : GoInt));
            _phnum = ((_hdr.value.phnum : GoInt));
            _shoff = ((_hdr.value.shoff : GoInt64));
            _shentsize = ((_hdr.value.shentsize : GoInt));
            _shnum = ((_hdr.value.shnum : GoInt));
            _shstrndx = ((_hdr.value.shstrndx : GoInt));
        } else if (_f.value.fileHeader.class_.__t__ == elfclass64.__t__) {
            var _hdr:Pointer<Header64> = Go.pointer(new Header64());
            _sr.value.seek(((0 : GoInt64)), _seekStart);
            {
                var _err:stdgo.Error = stdgo.encoding.binary.Binary.read(_sr.value, _f.value.fileHeader.byteOrder, Go.toInterface(_hdr));
                if (_err != null) {
                    return { _0 : new Pointer<File>().nil(), _1 : _err };
                };
            };
            _f.value.fileHeader.type = new Type(_hdr.value.type);
            _f.value.fileHeader.machine = new Machine(_hdr.value.machine);
            _f.value.fileHeader.entry = _hdr.value.entry;
            {
                var _v:Version = new Version(_hdr.value.version);
                if (_v.__t__ != _f.value.fileHeader.version.__t__) {
                    return { _0 : new Pointer<File>().nil(), _1 : Go.pointer(new FormatError(((0 : GoInt64)), "mismatched ELF version", Go.toInterface(_v))).value };
                };
            };
            _phoff = ((_hdr.value.phoff : GoInt64));
            _phentsize = ((_hdr.value.phentsize : GoInt));
            _phnum = ((_hdr.value.phnum : GoInt));
            _shoff = ((_hdr.value.shoff : GoInt64));
            _shentsize = ((_hdr.value.shentsize : GoInt));
            _shnum = ((_hdr.value.shnum : GoInt));
            _shstrndx = ((_hdr.value.shstrndx : GoInt));
        };
        if (_shoff == ((0 : GoInt64)) && _shnum != ((0 : GoInt))) {
            return { _0 : new Pointer<File>().nil(), _1 : Go.pointer(new FormatError(((0 : GoInt64)), "invalid ELF shnum for shoff=0", Go.toInterface(_shnum))).value };
        };
        if (_shnum > ((0 : GoInt)) && _shstrndx >= _shnum) {
            return { _0 : new Pointer<File>().nil(), _1 : Go.pointer(new FormatError(((0 : GoInt64)), "invalid ELF shstrndx", Go.toInterface(_shstrndx))).value };
        };
        _f.value.progs = new Slice<Pointer<Prog>>(...[for (i in 0 ... ((_phnum : GoInt)).toBasic()) new Pointer<Prog>().nil()]);
        {
            var _i:GoInt = ((0 : GoInt));
            Go.cfor(_i < _phnum, _i++, {
                var _off:GoInt64 = _phoff + ((_i : GoInt64)) * ((_phentsize : GoInt64));
                _sr.value.seek(_off, _seekStart);
                var _p:Pointer<Prog> = Go.pointer(new Prog());
                if (_f.value.fileHeader.class_.__t__ == elfclass32.__t__) {
                    var _ph:Pointer<Prog32> = Go.pointer(new Prog32());
                    {
                        var _err:stdgo.Error = stdgo.encoding.binary.Binary.read(_sr.value, _f.value.fileHeader.byteOrder, Go.toInterface(_ph));
                        if (_err != null) {
                            return { _0 : new Pointer<File>().nil(), _1 : _err };
                        };
                    };
                    _p.value.progHeader = (({ type : new ProgType(_ph.value.type), flags : new ProgFlag(_ph.value.flags), off : ((_ph.value.off : GoUInt64)), vaddr : ((_ph.value.vaddr : GoUInt64)), paddr : ((_ph.value.paddr : GoUInt64)), filesz : ((_ph.value.filesz : GoUInt64)), memsz : ((_ph.value.memsz : GoUInt64)), align : ((_ph.value.align : GoUInt64)) } : ProgHeader)).__copy__();
                } else if (_f.value.fileHeader.class_.__t__ == elfclass64.__t__) {
                    var _ph:Pointer<Prog64> = Go.pointer(new Prog64());
                    {
                        var _err:stdgo.Error = stdgo.encoding.binary.Binary.read(_sr.value, _f.value.fileHeader.byteOrder, Go.toInterface(_ph));
                        if (_err != null) {
                            return { _0 : new Pointer<File>().nil(), _1 : _err };
                        };
                    };
                    _p.value.progHeader = (({ type : new ProgType(_ph.value.type), flags : new ProgFlag(_ph.value.flags), off : _ph.value.off, vaddr : _ph.value.vaddr, paddr : _ph.value.paddr, filesz : _ph.value.filesz, memsz : _ph.value.memsz, align : _ph.value.align } : ProgHeader)).__copy__();
                };
                _p.value._sr = stdgo.io.Io.newSectionReader(_r, ((_p.value.progHeader.off : GoInt64)), ((_p.value.progHeader.filesz : GoInt64)));
                _p.value.readerAt = _p.value._sr.value;
                _f.value.progs[_i] = _p;
            });
        };
        _f.value.sections = new Slice<Pointer<Section>>(...[for (i in 0 ... ((_shnum : GoInt)).toBasic()) new Pointer<Section>().nil()]);
        var _names:Slice<GoUInt32> = new Slice<GoUInt32>(...[for (i in 0 ... ((_shnum : GoInt)).toBasic()) ((0 : GoUInt32))]);
        {
            var _i:GoInt = ((0 : GoInt));
            Go.cfor(_i < _shnum, _i++, {
                var _off:GoInt64 = _shoff + ((_i : GoInt64)) * ((_shentsize : GoInt64));
                _sr.value.seek(_off, _seekStart);
                var _s:Pointer<Section> = Go.pointer(new Section());
                if (_f.value.fileHeader.class_.__t__ == elfclass32.__t__) {
                    var _sh:Pointer<Section32> = Go.pointer(new Section32());
                    {
                        var _err:stdgo.Error = stdgo.encoding.binary.Binary.read(_sr.value, _f.value.fileHeader.byteOrder, Go.toInterface(_sh));
                        if (_err != null) {
                            return { _0 : new Pointer<File>().nil(), _1 : _err };
                        };
                    };
                    _names[_i] = _sh.value.name;
                    _s.value.sectionHeader = (({ type : new SectionType(_sh.value.type), flags : new SectionFlag(_sh.value.flags), addr : ((_sh.value.addr : GoUInt64)), offset : ((_sh.value.off : GoUInt64)), fileSize : ((_sh.value.size : GoUInt64)), link : _sh.value.link, info : _sh.value.info, addralign : ((_sh.value.addralign : GoUInt64)), entsize : ((_sh.value.entsize : GoUInt64)), name : "", size : 0 } : SectionHeader)).__copy__();
                } else if (_f.value.fileHeader.class_.__t__ == elfclass64.__t__) {
                    var _sh:Pointer<Section64> = Go.pointer(new Section64());
                    {
                        var _err:stdgo.Error = stdgo.encoding.binary.Binary.read(_sr.value, _f.value.fileHeader.byteOrder, Go.toInterface(_sh));
                        if (_err != null) {
                            return { _0 : new Pointer<File>().nil(), _1 : _err };
                        };
                    };
                    _names[_i] = _sh.value.name;
                    _s.value.sectionHeader = (({ type : new SectionType(_sh.value.type), flags : new SectionFlag(_sh.value.flags), offset : _sh.value.off, fileSize : _sh.value.size, addr : _sh.value.addr, link : _sh.value.link, info : _sh.value.info, addralign : _sh.value.addralign, entsize : _sh.value.entsize, name : "", size : 0 } : SectionHeader)).__copy__();
                };
                _s.value._sr = stdgo.io.Io.newSectionReader(_r, ((_s.value.sectionHeader.offset : GoInt64)), ((_s.value.sectionHeader.fileSize : GoInt64)));
                if (new SectionFlag(_s.value.sectionHeader.flags.__t__ & shf_COMPRESSED.__t__).__t__ == ((0 : GoUInt32))) {
                    _s.value.readerAt = _s.value._sr.value;
                    _s.value.sectionHeader.size = _s.value.sectionHeader.fileSize;
                } else {
                    if (_f.value.fileHeader.class_.__t__ == elfclass32.__t__) {
                        var _ch:Pointer<Chdr32> = Go.pointer(new Chdr32());
                        {
                            var _err:stdgo.Error = stdgo.encoding.binary.Binary.read(_s.value._sr.value, _f.value.fileHeader.byteOrder, Go.toInterface(_ch));
                            if (_err != null) {
                                return { _0 : new Pointer<File>().nil(), _1 : _err };
                            };
                        };
                        _s.value._compressionType = new CompressionType(_ch.value.type);
                        _s.value.sectionHeader.size = ((_ch.value.size : GoUInt64));
                        _s.value.sectionHeader.addralign = ((_ch.value.addralign : GoUInt64));
                        _s.value._compressionOffset = ((stdgo.encoding.binary.Binary.size(Go.toInterface(_ch)) : GoInt64));
                    } else if (_f.value.fileHeader.class_.__t__ == elfclass64.__t__) {
                        var _ch:Pointer<Chdr64> = Go.pointer(new Chdr64());
                        {
                            var _err:stdgo.Error = stdgo.encoding.binary.Binary.read(_s.value._sr.value, _f.value.fileHeader.byteOrder, Go.toInterface(_ch));
                            if (_err != null) {
                                return { _0 : new Pointer<File>().nil(), _1 : _err };
                            };
                        };
                        _s.value._compressionType = new CompressionType(_ch.value.type);
                        _s.value.sectionHeader.size = _ch.value.size;
                        _s.value.sectionHeader.addralign = _ch.value.addralign;
                        _s.value._compressionOffset = ((stdgo.encoding.binary.Binary.size(Go.toInterface(_ch)) : GoInt64));
                    };
                };
                _f.value.sections[_i] = _s;
            });
        };
        if (_f.value.sections.length == ((0 : GoInt))) {
            return { _0 : _f, _1 : ((null : stdgo.Error)) };
        };
        var __tmp__ = _f.value.sections[_shstrndx].value.data(), _shstrtab:Slice<GoUInt8> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            return { _0 : new Pointer<File>().nil(), _1 : _err };
        };
        {
            var _i;
            var _s;
            for (_obj in _f.value.sections.keyValueIterator()) {
                _i = _obj.key;
                _s = _obj.value;
                var _ok:Bool = false;
                {
                    var __tmp__ = _getString(_shstrtab, ((_names[_i] : GoInt)));
                    _s.value.sectionHeader.name = __tmp__._0;
                    _ok = __tmp__._1;
                };
                if (!_ok) {
                    return { _0 : new Pointer<File>().nil(), _1 : Go.pointer(new FormatError(_shoff + (((_i * _shentsize) : GoInt64)), "bad section name index", Go.toInterface(_names[_i]))).value };
                };
            };
        };
        return { _0 : _f, _1 : ((null : stdgo.Error)) };
    }
/**
    // getString extracts a string from an ELF string table.
**/
function _getString(_section:Slice<GoByte>, _start:GoInt):{ var _0 : GoString; var _1 : Bool; } {
        if (_start < ((0 : GoInt)) || _start >= _section.length) {
            return { _0 : "", _1 : false };
        };
        {
            var _end:GoInt = _start;
            Go.cfor(_end < _section.length, _end++, {
                if (_section[_end] == ((0 : GoUInt8))) {
                    return { _0 : ((_section.__slice__(_start, _end) : GoString)), _1 : true };
                };
            });
        };
        return { _0 : "", _1 : false };
    }
/**
    // canApplyRelocation reports whether we should try to apply a
    // relocation to a DWARF data section, given a pointer to the symbol
    // targeted by the relocation.
    // Most relocations in DWARF data tend to be section-relative, but
    // some target non-section symbols (for example, low_PC attrs on
    // subprogram or compilation unit DIEs that target function symbols).
**/
function _canApplyRelocation(_sym:Pointer<Symbol>):Bool {
        return _sym.value.section.__t__ != shn_UNDEF.__t__ && _sym.value.section.__t__ < shn_LORESERVE.__t__;
    }
class Version_extension_fields {
    public function toString(__tmp__):GoString return __tmp__.toString();
    public function goString(__tmp__):GoString return __tmp__.goString();
}
class Class__extension_fields {
    public function toString(__tmp__):GoString return __tmp__.toString();
    public function goString(__tmp__):GoString return __tmp__.goString();
}
class Data_extension_fields {
    public function toString(__tmp__):GoString return __tmp__.toString();
    public function goString(__tmp__):GoString return __tmp__.goString();
}
class OSABI_extension_fields {
    public function toString(__tmp__):GoString return __tmp__.toString();
    public function goString(__tmp__):GoString return __tmp__.goString();
}
class Type_extension_fields {
    public function toString(__tmp__):GoString return __tmp__.toString();
    public function goString(__tmp__):GoString return __tmp__.goString();
}
class Machine_extension_fields {
    public function toString(__tmp__):GoString return __tmp__.toString();
    public function goString(__tmp__):GoString return __tmp__.goString();
}
class SectionIndex_extension_fields {
    public function toString(__tmp__):GoString return __tmp__.toString();
    public function goString(__tmp__):GoString return __tmp__.goString();
}
class SectionType_extension_fields {
    public function toString(__tmp__):GoString return __tmp__.toString();
    public function goString(__tmp__):GoString return __tmp__.goString();
}
class SectionFlag_extension_fields {
    public function toString(__tmp__):GoString return __tmp__.toString();
    public function goString(__tmp__):GoString return __tmp__.goString();
}
class CompressionType_extension_fields {
    public function toString(__tmp__):GoString return __tmp__.toString();
    public function goString(__tmp__):GoString return __tmp__.goString();
}
class ProgType_extension_fields {
    public function toString(__tmp__):GoString return __tmp__.toString();
    public function goString(__tmp__):GoString return __tmp__.goString();
}
class ProgFlag_extension_fields {
    public function toString(__tmp__):GoString return __tmp__.toString();
    public function goString(__tmp__):GoString return __tmp__.goString();
}
class DynTag_extension_fields {
    public function toString(__tmp__):GoString return __tmp__.toString();
    public function goString(__tmp__):GoString return __tmp__.goString();
}
class DynFlag_extension_fields {
    public function toString(__tmp__):GoString return __tmp__.toString();
    public function goString(__tmp__):GoString return __tmp__.goString();
}
class NType_extension_fields {
    public function toString(__tmp__):GoString return __tmp__.toString();
    public function goString(__tmp__):GoString return __tmp__.goString();
}
class SymBind_extension_fields {
    public function toString(__tmp__):GoString return __tmp__.toString();
    public function goString(__tmp__):GoString return __tmp__.goString();
}
class SymType_extension_fields {
    public function toString(__tmp__):GoString return __tmp__.toString();
    public function goString(__tmp__):GoString return __tmp__.goString();
}
class SymVis_extension_fields {
    public function toString(__tmp__):GoString return __tmp__.toString();
    public function goString(__tmp__):GoString return __tmp__.goString();
}
class R_X86_64_extension_fields {
    public function toString(__tmp__):GoString return __tmp__.toString();
    public function goString(__tmp__):GoString return __tmp__.goString();
}
class R_AARCH64_extension_fields {
    public function toString(__tmp__):GoString return __tmp__.toString();
    public function goString(__tmp__):GoString return __tmp__.goString();
}
class R_ALPHA_extension_fields {
    public function toString(__tmp__):GoString return __tmp__.toString();
    public function goString(__tmp__):GoString return __tmp__.goString();
}
class R_ARM_extension_fields {
    public function toString(__tmp__):GoString return __tmp__.toString();
    public function goString(__tmp__):GoString return __tmp__.goString();
}
class R_386_extension_fields {
    public function toString(__tmp__):GoString return __tmp__.toString();
    public function goString(__tmp__):GoString return __tmp__.goString();
}
class R_MIPS_extension_fields {
    public function toString(__tmp__):GoString return __tmp__.toString();
    public function goString(__tmp__):GoString return __tmp__.goString();
}
class R_PPC_extension_fields {
    public function toString(__tmp__):GoString return __tmp__.toString();
    public function goString(__tmp__):GoString return __tmp__.goString();
}
class R_PPC64_extension_fields {
    public function toString(__tmp__):GoString return __tmp__.toString();
    public function goString(__tmp__):GoString return __tmp__.goString();
}
class R_RISCV_extension_fields {
    public function toString(__tmp__):GoString return __tmp__.toString();
    public function goString(__tmp__):GoString return __tmp__.goString();
}
class R_390_extension_fields {
    public function toString(__tmp__):GoString return __tmp__.toString();
    public function goString(__tmp__):GoString return __tmp__.goString();
}
class R_SPARC_extension_fields {
    public function toString(__tmp__):GoString return __tmp__.toString();
    public function goString(__tmp__):GoString return __tmp__.goString();
}
class File_extension_fields {
    public function _stringTable(__tmp__, _link:GoUInt32):{ var _0 : Slice<GoByte>; var _1 : Error; } return __tmp__._stringTable(_link);
    public function close(__tmp__):Error return __tmp__.close();
    public function sectionByType(__tmp__, _typ:SectionType):Pointer<Section> return __tmp__.sectionByType(_typ);
    public function _getSymbols(__tmp__, _typ:SectionType):{ var _0 : Slice<Symbol>; var _1 : Slice<GoByte>; var _2 : Error; } return __tmp__._getSymbols(_typ);
    public function _getSymbols32(__tmp__, _typ:SectionType):{ var _0 : Slice<Symbol>; var _1 : Slice<GoByte>; var _2 : Error; } return __tmp__._getSymbols32(_typ);
    public function _getSymbols64(__tmp__, _typ:SectionType):{ var _0 : Slice<Symbol>; var _1 : Slice<GoByte>; var _2 : Error; } return __tmp__._getSymbols64(_typ);
    public function section(__tmp__, _name:GoString):Pointer<Section> return __tmp__.section(_name);
    public function _applyRelocations(__tmp__, _dst:Slice<GoByte>, _rels:Slice<GoByte>):Error return __tmp__._applyRelocations(_dst, _rels);
    public function _applyRelocationsAMD64(__tmp__, _dst:Slice<GoByte>, _rels:Slice<GoByte>):Error return __tmp__._applyRelocationsAMD64(_dst, _rels);
    public function _applyRelocations386(__tmp__, _dst:Slice<GoByte>, _rels:Slice<GoByte>):Error return __tmp__._applyRelocations386(_dst, _rels);
    public function _applyRelocationsARM(__tmp__, _dst:Slice<GoByte>, _rels:Slice<GoByte>):Error return __tmp__._applyRelocationsARM(_dst, _rels);
    public function _applyRelocationsARM64(__tmp__, _dst:Slice<GoByte>, _rels:Slice<GoByte>):Error return __tmp__._applyRelocationsARM64(_dst, _rels);
    public function _applyRelocationsPPC(__tmp__, _dst:Slice<GoByte>, _rels:Slice<GoByte>):Error return __tmp__._applyRelocationsPPC(_dst, _rels);
    public function _applyRelocationsPPC64(__tmp__, _dst:Slice<GoByte>, _rels:Slice<GoByte>):Error return __tmp__._applyRelocationsPPC64(_dst, _rels);
    public function _applyRelocationsMIPS(__tmp__, _dst:Slice<GoByte>, _rels:Slice<GoByte>):Error return __tmp__._applyRelocationsMIPS(_dst, _rels);
    public function _applyRelocationsMIPS64(__tmp__, _dst:Slice<GoByte>, _rels:Slice<GoByte>):Error return __tmp__._applyRelocationsMIPS64(_dst, _rels);
    public function _applyRelocationsRISCV64(__tmp__, _dst:Slice<GoByte>, _rels:Slice<GoByte>):Error return __tmp__._applyRelocationsRISCV64(_dst, _rels);
    public function _applyRelocationss390x(__tmp__, _dst:Slice<GoByte>, _rels:Slice<GoByte>):Error return __tmp__._applyRelocationss390x(_dst, _rels);
    public function _applyRelocationsSPARC64(__tmp__, _dst:Slice<GoByte>, _rels:Slice<GoByte>):Error return __tmp__._applyRelocationsSPARC64(_dst, _rels);
    public function dwarf(__tmp__):{ var _0 : Pointer<stdgo.debug.dwarf.Dwarf.Data>; var _1 : Error; } return __tmp__.dwarf();
    public function symbols(__tmp__):{ var _0 : Slice<Symbol>; var _1 : Error; } return __tmp__.symbols();
    public function dynamicSymbols(__tmp__):{ var _0 : Slice<Symbol>; var _1 : Error; } return __tmp__.dynamicSymbols();
    public function importedSymbols(__tmp__):{ var _0 : Slice<ImportedSymbol>; var _1 : Error; } return __tmp__.importedSymbols();
    public function _gnuVersionInit(__tmp__, _str:Slice<GoByte>):Bool return __tmp__._gnuVersionInit(_str);
    public function _gnuVersion(__tmp__, _i:GoInt):{ var _0 : GoString; var _1 : GoString; } return __tmp__._gnuVersion(_i);
    public function importedLibraries(__tmp__):{ var _0 : Slice<GoString>; var _1 : Error; } return __tmp__.importedLibraries();
    public function dynString(__tmp__, _tag:DynTag):{ var _0 : Slice<GoString>; var _1 : Error; } return __tmp__.dynString(_tag);
}
class Section_extension_fields {
    public function data(__tmp__):{ var _0 : Slice<GoByte>; var _1 : Error; } return __tmp__.data();
    public function open(__tmp__):stdgo.io.Io.ReadSeeker return __tmp__.open();
}
class Prog_extension_fields {
    public function open(__tmp__):stdgo.io.Io.ReadSeeker return __tmp__.open();
}
class FormatError_extension_fields {
    public function error(__tmp__):GoString return __tmp__.error();
}
class T_errorReader_extension_fields {
    public function read(__tmp__, _p:Slice<GoByte>):{ var _0 : GoInt; var _1 : Error; } return __tmp__.read(_p);
    public function readAt(__tmp__, _p:Slice<GoByte>, _off:GoInt64):{ var _0 : GoInt; var _1 : Error; } return __tmp__.readAt(_p, _off);
    public function seek(__tmp__, _offset:GoInt64, _whence:GoInt):{ var _0 : GoInt64; var _1 : Error; } return __tmp__.seek(_offset, _whence);
    public function close(__tmp__):Error return __tmp__.close();
}
class T_readSeekerFromReader_extension_fields {
    public function _start(__tmp__):Void __tmp__._start();
    public function read(__tmp__, _p:Slice<GoByte>):{ var _0 : GoInt; var _1 : Error; } return __tmp__.read(_p);
    public function seek(__tmp__, _offset:GoInt64, _whence:GoInt):{ var _0 : GoInt64; var _1 : Error; } return __tmp__.seek(_offset, _whence);
}
