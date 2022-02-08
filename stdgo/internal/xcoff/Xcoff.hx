package stdgo.internal.xcoff;
import stdgo.StdGoTypes;
import stdgo.Error;
import stdgo.Go;
import stdgo.GoString;
import stdgo.Pointer;
import stdgo.Slice;
import stdgo.GoArray;
import stdgo.GoMap;
import stdgo.Chan;
@:structInit class T_bigarFileHeader {
    public var flmagic : GoArray<GoUInt8> = new GoArray<GoUInt8>(...[for (i in 0 ... 8) ((0 : GoUInt8))]);
    public var flmemoff : GoArray<GoUInt8> = new GoArray<GoUInt8>(...[for (i in 0 ... 20) ((0 : GoUInt8))]);
    public var flgstoff : GoArray<GoUInt8> = new GoArray<GoUInt8>(...[for (i in 0 ... 20) ((0 : GoUInt8))]);
    public var flgst64off : GoArray<GoUInt8> = new GoArray<GoUInt8>(...[for (i in 0 ... 20) ((0 : GoUInt8))]);
    public var flfstmoff : GoArray<GoUInt8> = new GoArray<GoUInt8>(...[for (i in 0 ... 20) ((0 : GoUInt8))]);
    public var fllstmoff : GoArray<GoUInt8> = new GoArray<GoUInt8>(...[for (i in 0 ... 20) ((0 : GoUInt8))]);
    public var flfreeoff : GoArray<GoUInt8> = new GoArray<GoUInt8>(...[for (i in 0 ... 20) ((0 : GoUInt8))]);
    public function new(?flmagic:GoArray<GoUInt8>, ?flmemoff:GoArray<GoUInt8>, ?flgstoff:GoArray<GoUInt8>, ?flgst64off:GoArray<GoUInt8>, ?flfstmoff:GoArray<GoUInt8>, ?fllstmoff:GoArray<GoUInt8>, ?flfreeoff:GoArray<GoUInt8>) {
        if (flmagic != null) this.flmagic = flmagic;
        if (flmemoff != null) this.flmemoff = flmemoff;
        if (flgstoff != null) this.flgstoff = flgstoff;
        if (flgst64off != null) this.flgst64off = flgst64off;
        if (flfstmoff != null) this.flfstmoff = flfstmoff;
        if (fllstmoff != null) this.fllstmoff = fllstmoff;
        if (flfreeoff != null) this.flfreeoff = flfreeoff;
    }
    public function toString() {
        return "{" + Go.string(flmagic) + " " + Go.string(flmemoff) + " " + Go.string(flgstoff) + " " + Go.string(flgst64off) + " " + Go.string(flfstmoff) + " " + Go.string(fllstmoff) + " " + Go.string(flfreeoff) + "}";
    }
    public function __underlying__():AnyInterface return Go.toInterface(this);
    public function __copy__() {
        return new T_bigarFileHeader(flmagic, flmemoff, flgstoff, flgst64off, flfstmoff, fllstmoff, flfreeoff);
    }
    public function __set__(__tmp__) {
        this.flmagic = __tmp__.flmagic;
        this.flmemoff = __tmp__.flmemoff;
        this.flgstoff = __tmp__.flgstoff;
        this.flgst64off = __tmp__.flgst64off;
        this.flfstmoff = __tmp__.flfstmoff;
        this.fllstmoff = __tmp__.fllstmoff;
        this.flfreeoff = __tmp__.flfreeoff;
        return this;
    }
}
@:structInit class T_bigarMemberHeader {
    public var arsize : GoArray<GoUInt8> = new GoArray<GoUInt8>(...[for (i in 0 ... 20) ((0 : GoUInt8))]);
    public var arnxtmem : GoArray<GoUInt8> = new GoArray<GoUInt8>(...[for (i in 0 ... 20) ((0 : GoUInt8))]);
    public var arprvmem : GoArray<GoUInt8> = new GoArray<GoUInt8>(...[for (i in 0 ... 20) ((0 : GoUInt8))]);
    public var ardate : GoArray<GoUInt8> = new GoArray<GoUInt8>(...[for (i in 0 ... 12) ((0 : GoUInt8))]);
    public var aruid : GoArray<GoUInt8> = new GoArray<GoUInt8>(...[for (i in 0 ... 12) ((0 : GoUInt8))]);
    public var argid : GoArray<GoUInt8> = new GoArray<GoUInt8>(...[for (i in 0 ... 12) ((0 : GoUInt8))]);
    public var armode : GoArray<GoUInt8> = new GoArray<GoUInt8>(...[for (i in 0 ... 12) ((0 : GoUInt8))]);
    public var arnamlen : GoArray<GoUInt8> = new GoArray<GoUInt8>(...[for (i in 0 ... 4) ((0 : GoUInt8))]);
    public function new(?arsize:GoArray<GoUInt8>, ?arnxtmem:GoArray<GoUInt8>, ?arprvmem:GoArray<GoUInt8>, ?ardate:GoArray<GoUInt8>, ?aruid:GoArray<GoUInt8>, ?argid:GoArray<GoUInt8>, ?armode:GoArray<GoUInt8>, ?arnamlen:GoArray<GoUInt8>) {
        if (arsize != null) this.arsize = arsize;
        if (arnxtmem != null) this.arnxtmem = arnxtmem;
        if (arprvmem != null) this.arprvmem = arprvmem;
        if (ardate != null) this.ardate = ardate;
        if (aruid != null) this.aruid = aruid;
        if (argid != null) this.argid = argid;
        if (armode != null) this.armode = armode;
        if (arnamlen != null) this.arnamlen = arnamlen;
    }
    public function toString() {
        return "{" + Go.string(arsize) + " " + Go.string(arnxtmem) + " " + Go.string(arprvmem) + " " + Go.string(ardate) + " " + Go.string(aruid) + " " + Go.string(argid) + " " + Go.string(armode) + " " + Go.string(arnamlen) + "}";
    }
    public function __underlying__():AnyInterface return Go.toInterface(this);
    public function __copy__() {
        return new T_bigarMemberHeader(arsize, arnxtmem, arprvmem, ardate, aruid, argid, armode, arnamlen);
    }
    public function __set__(__tmp__) {
        this.arsize = __tmp__.arsize;
        this.arnxtmem = __tmp__.arnxtmem;
        this.arprvmem = __tmp__.arprvmem;
        this.ardate = __tmp__.ardate;
        this.aruid = __tmp__.aruid;
        this.argid = __tmp__.argid;
        this.armode = __tmp__.armode;
        this.arnamlen = __tmp__.arnamlen;
        return this;
    }
}
@:structInit class Archive {
    public function getFile(_name:GoString):{ var _0 : Pointer<File>; var _1 : Error; } {
        var _arch = this.__copy__();
        for (_ => _mem in _arch.value.members) {
            if (_mem.value.memberHeader.name == _name) {
                return newFile(_mem.value._sr.value);
            };
        };
        return { _0 : null, _1 : stdgo.fmt.Fmt.errorf(((("unknown member %s in archive" : GoString))), Go.toInterface(_name)) };
    }
    public function close():Error {
        var _a = this.__copy__();
        var _err:Error = ((null : stdgo.Error));
        if (Go.toInterface(_a.value._closer) != Go.toInterface(null)) {
            _err = _a.value._closer.close();
            _a.value._closer = ((null : stdgo.io.Io.Closer));
        };
        return _err;
    }
    @:embedded
    public var archiveHeader : ArchiveHeader = new ArchiveHeader();
    public var members : Slice<Pointer<Member>> = new Slice<Pointer<Member>>().nil();
    public var _closer : stdgo.io.Io.Closer = ((null : stdgo.io.Io.Closer));
    public function new(?archiveHeader:ArchiveHeader, ?members:Slice<Pointer<Member>>, ?_closer:stdgo.io.Io.Closer) {
        if (archiveHeader != null) this.archiveHeader = archiveHeader;
        if (members != null) this.members = members;
        if (_closer != null) this._closer = _closer;
    }
    public function toString() {
        return "{" + Go.string(archiveHeader) + " " + Go.string(members) + " " + Go.string(_closer) + "}";
    }
    public function __underlying__():AnyInterface return Go.toInterface(this);
    public function __copy__() {
        return new Archive(archiveHeader, members, _closer);
    }
    public function __set__(__tmp__) {
        this.archiveHeader = __tmp__.archiveHeader;
        this.members = __tmp__.members;
        this._closer = __tmp__._closer;
        return this;
    }
}
@:structInit class ArchiveHeader {
    public var _magic : GoString = (("" : GoString));
    public function new(?_magic:GoString) {
        if (_magic != null) this._magic = _magic;
    }
    public function toString() {
        return "{" + Go.string(_magic) + "}";
    }
    public function __underlying__():AnyInterface return Go.toInterface(this);
    public function __copy__() {
        return new ArchiveHeader(_magic);
    }
    public function __set__(__tmp__) {
        this._magic = __tmp__._magic;
        return this;
    }
}
@:structInit class Member {
    @:embedded
    public var memberHeader : MemberHeader = new MemberHeader();
    public var _sr = null;
    public function new(?memberHeader:MemberHeader, ?_sr) {
        if (memberHeader != null) this.memberHeader = memberHeader;
        if (_sr != null) this._sr = _sr;
    }
    public function toString() {
        return "{" + Go.string(memberHeader) + " " + Go.string(_sr) + "}";
    }
    public function __underlying__():AnyInterface return Go.toInterface(this);
    public function __copy__() {
        return new Member(memberHeader, _sr);
    }
    public function __set__(__tmp__) {
        this.memberHeader = __tmp__.memberHeader;
        this._sr = __tmp__._sr;
        return this;
    }
}
@:structInit class MemberHeader {
    public var name : GoString = (("" : GoString));
    public var size : GoUInt64 = ((0 : GoUInt64));
    public function new(?name:GoString, ?size:GoUInt64) {
        if (name != null) this.name = name;
        if (size != null) this.size = size;
    }
    public function toString() {
        return "{" + Go.string(name) + " " + Go.string(size) + "}";
    }
    public function __underlying__():AnyInterface return Go.toInterface(this);
    public function __copy__() {
        return new MemberHeader(name, size);
    }
    public function __set__(__tmp__) {
        this.name = __tmp__.name;
        this.size = __tmp__.size;
        return this;
    }
}
@:structInit class SectionHeader {
    public var name : GoString = (("" : GoString));
    public var virtualAddress : GoUInt64 = ((0 : GoUInt64));
    public var size : GoUInt64 = ((0 : GoUInt64));
    public var type : GoUInt32 = ((0 : GoUInt32));
    public var relptr : GoUInt64 = ((0 : GoUInt64));
    public var nreloc : GoUInt32 = ((0 : GoUInt32));
    public function new(?name:GoString, ?virtualAddress:GoUInt64, ?size:GoUInt64, ?type:GoUInt32, ?relptr:GoUInt64, ?nreloc:GoUInt32) {
        if (name != null) this.name = name;
        if (virtualAddress != null) this.virtualAddress = virtualAddress;
        if (size != null) this.size = size;
        if (type != null) this.type = type;
        if (relptr != null) this.relptr = relptr;
        if (nreloc != null) this.nreloc = nreloc;
    }
    public function toString() {
        return "{" + Go.string(name) + " " + Go.string(virtualAddress) + " " + Go.string(size) + " " + Go.string(type) + " " + Go.string(relptr) + " " + Go.string(nreloc) + "}";
    }
    public function __underlying__():AnyInterface return Go.toInterface(this);
    public function __copy__() {
        return new SectionHeader(name, virtualAddress, size, type, relptr, nreloc);
    }
    public function __set__(__tmp__) {
        this.name = __tmp__.name;
        this.virtualAddress = __tmp__.virtualAddress;
        this.size = __tmp__.size;
        this.type = __tmp__.type;
        this.relptr = __tmp__.relptr;
        this.nreloc = __tmp__.nreloc;
        return this;
    }
}
@:structInit class Section {
    public function data():{ var _0 : Slice<GoByte>; var _1 : Error; } {
        var _s = this.__copy__();
        var _dat:Slice<GoUInt8> = new Slice<GoUInt8>(...[for (i in 0 ... ((_s.value._sr.value.size() : GoInt)).toBasic()) ((0 : GoUInt8))]);
        var __tmp__ = _s.value._sr.value.readAt(_dat, ((0 : GoInt64))), _n:GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_n == _dat.length) {
            _err = ((null : stdgo.Error));
        };
        return { _0 : _dat.__slice__(0, _n), _1 : _err };
    }
    @:embedded
    public var sectionHeader : SectionHeader = new SectionHeader();
    public var relocs : Slice<Reloc> = new Slice<Reloc>().nil();
    @:embedded
    public var readerAt : stdgo.io.Io.ReaderAt = ((null : stdgo.io.Io.ReaderAt));
    public var _sr = null;
    public function new(?sectionHeader:SectionHeader, ?relocs:Slice<Reloc>, ?readerAt:stdgo.io.Io.ReaderAt, ?_sr) {
        if (sectionHeader != null) this.sectionHeader = sectionHeader;
        if (relocs != null) this.relocs = relocs;
        if (readerAt != null) this.readerAt = readerAt;
        if (_sr != null) this._sr = _sr;
    }
    public function toString() {
        return "{" + Go.string(sectionHeader) + " " + Go.string(relocs) + " " + Go.string(readerAt) + " " + Go.string(_sr) + "}";
    }
    public function readAt(_p:Slice<GoUInt8>, _off:GoInt64):{ var _0 : GoInt; var _1 : stdgo.Error; } return readerAt.readAt(_p, _off);
    public function __underlying__():AnyInterface return Go.toInterface(this);
    public function __copy__() {
        return new Section(sectionHeader, relocs, readerAt, _sr);
    }
    public function __set__(__tmp__) {
        this.sectionHeader = __tmp__.sectionHeader;
        this.relocs = __tmp__.relocs;
        this.readerAt = __tmp__.readerAt;
        this._sr = __tmp__._sr;
        return this;
    }
}
@:structInit class AuxiliaryCSect {
    public var length : GoInt64 = ((0 : GoInt64));
    public var storageMappingClass : GoInt = ((0 : GoInt));
    public var symbolType : GoInt = ((0 : GoInt));
    public function new(?length:GoInt64, ?storageMappingClass:GoInt, ?symbolType:GoInt) {
        if (length != null) this.length = length;
        if (storageMappingClass != null) this.storageMappingClass = storageMappingClass;
        if (symbolType != null) this.symbolType = symbolType;
    }
    public function toString() {
        return "{" + Go.string(length) + " " + Go.string(storageMappingClass) + " " + Go.string(symbolType) + "}";
    }
    public function __underlying__():AnyInterface return Go.toInterface(this);
    public function __copy__() {
        return new AuxiliaryCSect(length, storageMappingClass, symbolType);
    }
    public function __set__(__tmp__) {
        this.length = __tmp__.length;
        this.storageMappingClass = __tmp__.storageMappingClass;
        this.symbolType = __tmp__.symbolType;
        return this;
    }
}
@:structInit class AuxiliaryFcn {
    public var size : GoInt64 = ((0 : GoInt64));
    public function new(?size:GoInt64) {
        if (size != null) this.size = size;
    }
    public function toString() {
        return "{" + Go.string(size) + "}";
    }
    public function __underlying__():AnyInterface return Go.toInterface(this);
    public function __copy__() {
        return new AuxiliaryFcn(size);
    }
    public function __set__(__tmp__) {
        this.size = __tmp__.size;
        return this;
    }
}
@:structInit class Symbol {
    public var name : GoString = (("" : GoString));
    public var value : GoUInt64 = ((0 : GoUInt64));
    public var sectionNumber : GoInt = ((0 : GoInt));
    public var storageClass : GoInt = ((0 : GoInt));
    public var auxFcn : AuxiliaryFcn = new AuxiliaryFcn();
    public var auxCSect : AuxiliaryCSect = new AuxiliaryCSect();
    public function new(?name:GoString, ?value:GoUInt64, ?sectionNumber:GoInt, ?storageClass:GoInt, ?auxFcn:AuxiliaryFcn, ?auxCSect:AuxiliaryCSect) {
        if (name != null) this.name = name;
        if (value != null) this.value = value;
        if (sectionNumber != null) this.sectionNumber = sectionNumber;
        if (storageClass != null) this.storageClass = storageClass;
        if (auxFcn != null) this.auxFcn = auxFcn;
        if (auxCSect != null) this.auxCSect = auxCSect;
    }
    public function toString() {
        return "{" + Go.string(name) + " " + Go.string(value) + " " + Go.string(sectionNumber) + " " + Go.string(storageClass) + " " + Go.string(auxFcn) + " " + Go.string(auxCSect) + "}";
    }
    public function __underlying__():AnyInterface return Go.toInterface(this);
    public function __copy__() {
        return new Symbol(name, value, sectionNumber, storageClass, auxFcn, auxCSect);
    }
    public function __set__(__tmp__) {
        this.name = __tmp__.name;
        this.value = __tmp__.value;
        this.sectionNumber = __tmp__.sectionNumber;
        this.storageClass = __tmp__.storageClass;
        this.auxFcn = __tmp__.auxFcn;
        this.auxCSect = __tmp__.auxCSect;
        return this;
    }
}
@:structInit class Reloc {
    public var virtualAddress : GoUInt64 = ((0 : GoUInt64));
    public var symbol = null;
    public var signed : Bool = false;
    public var instructionFixed : Bool = false;
    public var length : GoUInt8 = ((0 : GoUInt8));
    public var type : GoUInt8 = ((0 : GoUInt8));
    public function new(?virtualAddress:GoUInt64, ?symbol, ?signed:Bool, ?instructionFixed:Bool, ?length:GoUInt8, ?type:GoUInt8) {
        if (virtualAddress != null) this.virtualAddress = virtualAddress;
        if (symbol != null) this.symbol = symbol;
        if (signed != null) this.signed = signed;
        if (instructionFixed != null) this.instructionFixed = instructionFixed;
        if (length != null) this.length = length;
        if (type != null) this.type = type;
    }
    public function toString() {
        return "{" + Go.string(virtualAddress) + " " + Go.string(symbol) + " " + Go.string(signed) + " " + Go.string(instructionFixed) + " " + Go.string(length) + " " + Go.string(type) + "}";
    }
    public function __underlying__():AnyInterface return Go.toInterface(this);
    public function __copy__() {
        return new Reloc(virtualAddress, symbol, signed, instructionFixed, length, type);
    }
    public function __set__(__tmp__) {
        this.virtualAddress = __tmp__.virtualAddress;
        this.symbol = __tmp__.symbol;
        this.signed = __tmp__.signed;
        this.instructionFixed = __tmp__.instructionFixed;
        this.length = __tmp__.length;
        this.type = __tmp__.type;
        return this;
    }
}
@:structInit class ImportedSymbol {
    public var name : GoString = (("" : GoString));
    public var library : GoString = (("" : GoString));
    public function new(?name:GoString, ?library:GoString) {
        if (name != null) this.name = name;
        if (library != null) this.library = library;
    }
    public function toString() {
        return "{" + Go.string(name) + " " + Go.string(library) + "}";
    }
    public function __underlying__():AnyInterface return Go.toInterface(this);
    public function __copy__() {
        return new ImportedSymbol(name, library);
    }
    public function __set__(__tmp__) {
        this.name = __tmp__.name;
        this.library = __tmp__.library;
        return this;
    }
}
@:structInit class FileHeader {
    public var targetMachine : GoUInt16 = ((0 : GoUInt16));
    public function new(?targetMachine:GoUInt16) {
        if (targetMachine != null) this.targetMachine = targetMachine;
    }
    public function toString() {
        return "{" + Go.string(targetMachine) + "}";
    }
    public function __underlying__():AnyInterface return Go.toInterface(this);
    public function __copy__() {
        return new FileHeader(targetMachine);
    }
    public function __set__(__tmp__) {
        this.targetMachine = __tmp__.targetMachine;
        return this;
    }
}
@:structInit class File {
    public function importedLibraries():{ var _0 : Slice<GoString>; var _1 : Error; } {
        var _f = this.__copy__();
        var _s:Pointer<Section> = _f.value.sectionByType(((4096 : GoUInt32)));
        if (_s == null) {
            return { _0 : new Slice<GoString>().nil(), _1 : ((null : stdgo.Error)) };
        };
        var __tmp__ = _f.value._readImportIDs(_s), _all:Slice<GoString> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        return { _0 : _all, _1 : _err };
    }
    public function importedSymbols():{ var _0 : Slice<ImportedSymbol>; var _1 : Error; } {
        var _f = this.__copy__();
        var _s:Pointer<Section> = _f.value.sectionByType(((4096 : GoUInt32)));
        if (_s == null) {
            return { _0 : new Slice<ImportedSymbol>().nil(), _1 : ((null : stdgo.Error)) };
        };
        {
            var __tmp__ = _s.value._sr.value.seek(((0 : GoInt64)), ((0 : GoInt))), _:GoInt64 = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (Go.toInterface(_err) != Go.toInterface(null)) {
                return { _0 : new Slice<ImportedSymbol>().nil(), _1 : _err };
            };
        };
        var _stlen:GoUInt32 = ((0 : GoUInt32));
        var _stoff:GoUInt64 = ((0 : GoUInt64));
        var _nsyms:GoInt32 = ((0 : GoInt32));
        var _symoff:GoUInt64 = ((0 : GoUInt64));
        if (_f.value.fileHeader.targetMachine == ((479 : GoUInt16))) {
            var _lhdr:Pointer<LoaderHeader32> = Go.pointer(new LoaderHeader32());
            {
                var _err:stdgo.Error = stdgo.encoding.binary.Binary.read(_s.value._sr.value, stdgo.encoding.binary.Binary.bigEndian.__copy__(), Go.toInterface(_lhdr));
                if (Go.toInterface(_err) != Go.toInterface(null)) {
                    return { _0 : new Slice<ImportedSymbol>().nil(), _1 : _err };
                };
            };
            _stlen = _lhdr.value.lstlen;
            _stoff = ((_lhdr.value.lstoff : GoUInt64));
            _nsyms = _lhdr.value.lnsyms;
            _symoff = ((32 : GoUInt64));
        } else if (_f.value.fileHeader.targetMachine == ((503 : GoUInt16))) {
            var _lhdr:Pointer<LoaderHeader64> = Go.pointer(new LoaderHeader64());
            {
                var _err:stdgo.Error = stdgo.encoding.binary.Binary.read(_s.value._sr.value, stdgo.encoding.binary.Binary.bigEndian.__copy__(), Go.toInterface(_lhdr));
                if (Go.toInterface(_err) != Go.toInterface(null)) {
                    return { _0 : new Slice<ImportedSymbol>().nil(), _1 : _err };
                };
            };
            _stlen = _lhdr.value.lstlen;
            _stoff = _lhdr.value.lstoff;
            _nsyms = _lhdr.value.lnsyms;
            _symoff = _lhdr.value.lsymoff;
        };
        {
            var __tmp__ = _s.value._sr.value.seek(((_stoff : GoInt64)), ((0 : GoInt))), _:GoInt64 = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (Go.toInterface(_err) != Go.toInterface(null)) {
                return { _0 : new Slice<ImportedSymbol>().nil(), _1 : _err };
            };
        };
        var _st:Slice<GoUInt8> = new Slice<GoUInt8>(...[for (i in 0 ... ((_stlen : GoInt)).toBasic()) ((0 : GoUInt8))]);
        {
            var __tmp__ = stdgo.io.Io.readFull(_s.value._sr.value, _st), _:GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (Go.toInterface(_err) != Go.toInterface(null)) {
                return { _0 : new Slice<ImportedSymbol>().nil(), _1 : _err };
            };
        };
        var __tmp__ = _f.value._readImportIDs(_s), _libs:Slice<GoString> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (Go.toInterface(_err) != Go.toInterface(null)) {
            return { _0 : new Slice<ImportedSymbol>().nil(), _1 : _err };
        };
        {
            var __tmp__ = _s.value._sr.value.seek(((_symoff : GoInt64)), ((0 : GoInt))), _:GoInt64 = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (Go.toInterface(_err) != Go.toInterface(null)) {
                return { _0 : new Slice<ImportedSymbol>().nil(), _1 : _err };
            };
        };
        var _all:Slice<ImportedSymbol> = new Slice<ImportedSymbol>(...[for (i in 0 ... ((((0 : GoInt)) : GoInt)).toBasic()) new ImportedSymbol()]);
        {
            var _i:GoInt = ((0 : GoInt));
            Go.cfor(_i < ((_nsyms : GoInt)), _i++, {
                var _name:GoString = (("" : GoString));
                var _ifile:GoInt32 = ((0 : GoInt32));
                var _ok:Bool = false;
                if (_f.value.fileHeader.targetMachine == ((479 : GoUInt16))) {
                    var _ldsym:Pointer<LoaderSymbol32> = Go.pointer(new LoaderSymbol32());
                    {
                        var _err:stdgo.Error = stdgo.encoding.binary.Binary.read(_s.value._sr.value, stdgo.encoding.binary.Binary.bigEndian.__copy__(), Go.toInterface(_ldsym));
                        if (Go.toInterface(_err) != Go.toInterface(null)) {
                            return { _0 : new Slice<ImportedSymbol>().nil(), _1 : _err };
                        };
                    };
                    if ((_ldsym.value.lsmtype & ((64 : GoInt8))) == ((0 : GoInt8))) {
                        continue;
                    };
                    var _zeroes:GoUInt32 = stdgo.encoding.binary.Binary.bigEndian.uint32(_ldsym.value.lname.__slice__(0, ((4 : GoInt))));
                    if (_zeroes != ((0 : GoUInt32))) {
                        _name = _cstring(_ldsym.value.lname.__slice__(0));
                    } else {
                        var _offset:GoUInt32 = stdgo.encoding.binary.Binary.bigEndian.uint32(_ldsym.value.lname.__slice__(((4 : GoInt))));
                        {
                            var __tmp__ = _getString(_st, _offset);
                            _name = __tmp__._0;
                            _ok = __tmp__._1;
                        };
                        if (!_ok) {
                            continue;
                        };
                    };
                    _ifile = _ldsym.value.lifile;
                } else if (_f.value.fileHeader.targetMachine == ((503 : GoUInt16))) {
                    var _ldsym:Pointer<LoaderSymbol64> = Go.pointer(new LoaderSymbol64());
                    {
                        var _err:stdgo.Error = stdgo.encoding.binary.Binary.read(_s.value._sr.value, stdgo.encoding.binary.Binary.bigEndian.__copy__(), Go.toInterface(_ldsym));
                        if (Go.toInterface(_err) != Go.toInterface(null)) {
                            return { _0 : new Slice<ImportedSymbol>().nil(), _1 : _err };
                        };
                    };
                    if ((_ldsym.value.lsmtype & ((64 : GoInt8))) == ((0 : GoInt8))) {
                        continue;
                    };
                    {
                        var __tmp__ = _getString(_st, _ldsym.value.loffset);
                        _name = __tmp__._0;
                        _ok = __tmp__._1;
                    };
                    if (!_ok) {
                        continue;
                    };
                    _ifile = _ldsym.value.lifile;
                };
                var _sym:ImportedSymbol = new ImportedSymbol();
                _sym.name = _name;
                if ((_ifile >= ((1 : GoInt32))) && (((_ifile : GoInt)) <= _libs.length)) {
                    _sym.library = _libs[_ifile - ((1 : GoInt32))];
                };
                _all = _all.__append__(_sym.__copy__());
            });
        };
        return { _0 : _all, _1 : ((null : stdgo.Error)) };
    }
    public function _readImportIDs(_s:Pointer<Section>):{ var _0 : Slice<GoString>; var _1 : Error; } {
        var _f = this.__copy__();
        {
            var __tmp__ = _s.value._sr.value.seek(((0 : GoInt64)), ((0 : GoInt))), _:GoInt64 = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (Go.toInterface(_err) != Go.toInterface(null)) {
                return { _0 : new Slice<GoString>().nil(), _1 : _err };
            };
        };
        var _istlen:GoUInt32 = ((0 : GoUInt32));
        var _nimpid:GoInt32 = ((0 : GoInt32));
        var _impoff:GoUInt64 = ((0 : GoUInt64));
        if (_f.value.fileHeader.targetMachine == ((479 : GoUInt16))) {
            var _lhdr:Pointer<LoaderHeader32> = Go.pointer(new LoaderHeader32());
            {
                var _err:stdgo.Error = stdgo.encoding.binary.Binary.read(_s.value._sr.value, stdgo.encoding.binary.Binary.bigEndian.__copy__(), Go.toInterface(_lhdr));
                if (Go.toInterface(_err) != Go.toInterface(null)) {
                    return { _0 : new Slice<GoString>().nil(), _1 : _err };
                };
            };
            _istlen = _lhdr.value.listlen;
            _nimpid = _lhdr.value.lnimpid;
            _impoff = ((_lhdr.value.limpoff : GoUInt64));
        } else if (_f.value.fileHeader.targetMachine == ((503 : GoUInt16))) {
            var _lhdr:Pointer<LoaderHeader64> = Go.pointer(new LoaderHeader64());
            {
                var _err:stdgo.Error = stdgo.encoding.binary.Binary.read(_s.value._sr.value, stdgo.encoding.binary.Binary.bigEndian.__copy__(), Go.toInterface(_lhdr));
                if (Go.toInterface(_err) != Go.toInterface(null)) {
                    return { _0 : new Slice<GoString>().nil(), _1 : _err };
                };
            };
            _istlen = _lhdr.value.listlen;
            _nimpid = _lhdr.value.lnimpid;
            _impoff = _lhdr.value.limpoff;
        };
        {
            var __tmp__ = _s.value._sr.value.seek(((_impoff : GoInt64)), ((0 : GoInt))), _:GoInt64 = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (Go.toInterface(_err) != Go.toInterface(null)) {
                return { _0 : new Slice<GoString>().nil(), _1 : _err };
            };
        };
        var _table:Slice<GoUInt8> = new Slice<GoUInt8>(...[for (i in 0 ... ((_istlen : GoInt)).toBasic()) ((0 : GoUInt8))]);
        {
            var __tmp__ = stdgo.io.Io.readFull(_s.value._sr.value, _table), _:GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (Go.toInterface(_err) != Go.toInterface(null)) {
                return { _0 : new Slice<GoString>().nil(), _1 : _err };
            };
        };
        var _offset:GoInt = ((0 : GoInt));
        var _libpath:GoString = _cstring(_table.__slice__(_offset));
        _f.value.libraryPaths = stdgo.strings.Strings.split(_libpath, (((":" : GoString))));
        _offset = _offset + (_libpath.length + ((3 : GoInt)));
        var _all:Slice<GoString> = new Slice<GoString>(...[for (i in 0 ... ((((0 : GoInt)) : GoInt)).toBasic()) (("" : GoString))]);
        {
            var _i:GoInt = ((1 : GoInt));
            Go.cfor(_i < ((_nimpid : GoInt)), _i++, {
                var _impidpath:GoString = _cstring(_table.__slice__(_offset));
                _offset = _offset + (_impidpath.length + ((1 : GoInt)));
                var _impidbase:GoString = _cstring(_table.__slice__(_offset));
                _offset = _offset + (_impidbase.length + ((1 : GoInt)));
                var _impidmem:GoString = _cstring(_table.__slice__(_offset));
                _offset = _offset + (_impidmem.length + ((1 : GoInt)));
                var _path:GoString = (("" : GoString));
                if (_impidpath.length > ((0 : GoInt))) {
                    _path = (((_impidpath + ((("/" : GoString)))) + _impidbase) + ((("/" : GoString)))) + _impidmem;
                } else {
                    _path = (_impidbase + ((("/" : GoString)))) + _impidmem;
                };
                _all = _all.__append__(_path);
            });
        };
        return { _0 : _all, _1 : ((null : stdgo.Error)) };
    }
    public function dwarf():{ var _0 : Pointer<stdgo.debug.dwarf.Dwarf.Data>; var _1 : Error; } {
        var _f = this.__copy__();
        var _subtypes:GoArray<GoUInt32> = new GoArray<GoUInt32>(((393216 : GoUInt32)), ((65536 : GoUInt32)), ((131072 : GoUInt32)), ((524288 : GoUInt32)), ((458752 : GoUInt32))).copy();
        var _dat:GoArray<Slice<GoByte>> = new GoArray<Slice<GoUInt8>>(...[for (i in 0 ... 5) new Slice<GoUInt8>().nil()]);
        for (_i => _subtype in _subtypes) {
            var _s:Pointer<Section> = _f.value.sectionByType(((16 : GoUInt32)) | _subtype);
            if (_s != null) {
                var __tmp__ = _s.value.data(), _b:Slice<GoUInt8> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                if ((Go.toInterface(_err) != Go.toInterface(null)) && (((_b.length : GoUInt64)) < _s.value.sectionHeader.size)) {
                    return { _0 : null, _1 : _err };
                };
                _dat[_i] = _b;
            };
        };
        var _abbrev:Slice<GoUInt8> = _dat[((0 : GoInt))], _info:Slice<GoUInt8> = _dat[((1 : GoInt))], _line:Slice<GoUInt8> = _dat[((2 : GoInt))], _ranges:Slice<GoUInt8> = _dat[((3 : GoInt))], _str:Slice<GoUInt8> = _dat[((4 : GoInt))];
        return stdgo.debug.dwarf.Dwarf.new_(_abbrev, new Slice<GoUInt8>().nil(), new Slice<GoUInt8>().nil(), _info, _line, new Slice<GoUInt8>().nil(), _ranges, _str);
    }
    public function csect(_name:GoString):Slice<GoByte> {
        var _f = this.__copy__();
        for (_ => _sym in _f.value.symbols) {
            if ((_sym.value.name == _name) && (_sym.value.auxCSect.symbolType == ((1 : GoInt)))) {
                {
                    var _i:GoInt = _sym.value.sectionNumber - ((1 : GoInt));
                    if ((((0 : GoInt)) <= _i) && (_i < _f.value.sections.length)) {
                        var _s:Pointer<Section> = _f.value.sections[_i];
                        if ((_sym.value.value + ((_sym.value.auxCSect.length : GoUInt64))) <= _s.value.sectionHeader.size) {
                            var _dat:Slice<GoUInt8> = new Slice<GoUInt8>(...[for (i in 0 ... ((_sym.value.auxCSect.length : GoInt)).toBasic()) ((0 : GoUInt8))]);
                            var __tmp__ = _s.value._sr.value.readAt(_dat, ((_sym.value.value : GoInt64))), _:GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                            if (Go.toInterface(_err) != Go.toInterface(null)) {
                                return new Slice<GoUInt8>().nil();
                            };
                            return _dat;
                        };
                    };
                };
                break;
            };
        };
        return new Slice<GoUInt8>().nil();
    }
    public function sectionByType(_typ:GoUInt32):Pointer<Section> {
        var _f = this.__copy__();
        for (_ => _s in _f.value.sections) {
            if (_s.value.sectionHeader.type == _typ) {
                return _s;
            };
        };
        return null;
    }
    public function section(_name:GoString):Pointer<Section> {
        var _f = this.__copy__();
        for (_ => _s in _f.value.sections) {
            if ((_s.value.sectionHeader.name == _name) || ((_name.length > ((8 : GoInt))) && (_s.value.sectionHeader.name == _name.__slice__(0, ((8 : GoInt)))))) {
                return _s;
            };
        };
        return null;
    }
    public function close():Error {
        var _f = this.__copy__();
        var _err:Error = ((null : stdgo.Error));
        if (Go.toInterface(_f.value._closer) != Go.toInterface(null)) {
            _err = _f.value._closer.close();
            _f.value._closer = ((null : stdgo.io.Io.Closer));
        };
        return _err;
    }
    @:embedded
    public var fileHeader : FileHeader = new FileHeader();
    public var sections : Slice<Pointer<Section>> = new Slice<Pointer<Section>>().nil();
    public var symbols : Slice<Pointer<Symbol>> = new Slice<Pointer<Symbol>>().nil();
    public var stringTable : Slice<GoUInt8> = new Slice<GoUInt8>().nil();
    public var libraryPaths : Slice<GoString> = new Slice<GoString>().nil();
    public var _closer : stdgo.io.Io.Closer = ((null : stdgo.io.Io.Closer));
    public function new(?fileHeader:FileHeader, ?sections:Slice<Pointer<Section>>, ?symbols:Slice<Pointer<Symbol>>, ?stringTable:Slice<GoUInt8>, ?libraryPaths:Slice<GoString>, ?_closer:stdgo.io.Io.Closer) {
        if (fileHeader != null) this.fileHeader = fileHeader;
        if (sections != null) this.sections = sections;
        if (symbols != null) this.symbols = symbols;
        if (stringTable != null) this.stringTable = stringTable;
        if (libraryPaths != null) this.libraryPaths = libraryPaths;
        if (_closer != null) this._closer = _closer;
    }
    public function toString() {
        return "{" + Go.string(fileHeader) + " " + Go.string(sections) + " " + Go.string(symbols) + " " + Go.string(stringTable) + " " + Go.string(libraryPaths) + " " + Go.string(_closer) + "}";
    }
    public function __underlying__():AnyInterface return Go.toInterface(this);
    public function __copy__() {
        return new File(fileHeader, sections, symbols, stringTable, libraryPaths, _closer);
    }
    public function __set__(__tmp__) {
        this.fileHeader = __tmp__.fileHeader;
        this.sections = __tmp__.sections;
        this.symbols = __tmp__.symbols;
        this.stringTable = __tmp__.stringTable;
        this.libraryPaths = __tmp__.libraryPaths;
        this._closer = __tmp__._closer;
        return this;
    }
}
@:structInit class T_zeroReaderAt {
    public function readAt(_p:Slice<GoByte>, _off:GoInt64):{ var _0 : GoInt; var _1 : Error; } {
        var _w = this.__copy__();
        var _n:GoInt = ((0 : GoInt)), _err:Error = ((null : stdgo.Error));
        for (_i => _ in _p) {
            _p[_i] = ((0 : GoUInt8));
        };
        return { _0 : _p.length, _1 : ((null : stdgo.Error)) };
    }
    public function new() {}
    public function toString() {
        return "{}";
    }
    public function __underlying__():AnyInterface return Go.toInterface(this);
    public function __copy__() {
        return new T_zeroReaderAt();
    }
    public function __set__(__tmp__) {
        return this;
    }
}
@:structInit class FileHeader32 {
    public var fmagic : GoUInt16 = ((0 : GoUInt16));
    public var fnscns : GoUInt16 = ((0 : GoUInt16));
    public var ftimedat : GoInt32 = ((0 : GoInt32));
    public var fsymptr : GoUInt32 = ((0 : GoUInt32));
    public var fnsyms : GoInt32 = ((0 : GoInt32));
    public var fopthdr : GoUInt16 = ((0 : GoUInt16));
    public var fflags : GoUInt16 = ((0 : GoUInt16));
    public function new(?fmagic:GoUInt16, ?fnscns:GoUInt16, ?ftimedat:GoInt32, ?fsymptr:GoUInt32, ?fnsyms:GoInt32, ?fopthdr:GoUInt16, ?fflags:GoUInt16) {
        if (fmagic != null) this.fmagic = fmagic;
        if (fnscns != null) this.fnscns = fnscns;
        if (ftimedat != null) this.ftimedat = ftimedat;
        if (fsymptr != null) this.fsymptr = fsymptr;
        if (fnsyms != null) this.fnsyms = fnsyms;
        if (fopthdr != null) this.fopthdr = fopthdr;
        if (fflags != null) this.fflags = fflags;
    }
    public function toString() {
        return "{" + Go.string(fmagic) + " " + Go.string(fnscns) + " " + Go.string(ftimedat) + " " + Go.string(fsymptr) + " " + Go.string(fnsyms) + " " + Go.string(fopthdr) + " " + Go.string(fflags) + "}";
    }
    public function __underlying__():AnyInterface return Go.toInterface(this);
    public function __copy__() {
        return new FileHeader32(fmagic, fnscns, ftimedat, fsymptr, fnsyms, fopthdr, fflags);
    }
    public function __set__(__tmp__) {
        this.fmagic = __tmp__.fmagic;
        this.fnscns = __tmp__.fnscns;
        this.ftimedat = __tmp__.ftimedat;
        this.fsymptr = __tmp__.fsymptr;
        this.fnsyms = __tmp__.fnsyms;
        this.fopthdr = __tmp__.fopthdr;
        this.fflags = __tmp__.fflags;
        return this;
    }
}
@:structInit class FileHeader64 {
    public var fmagic : GoUInt16 = ((0 : GoUInt16));
    public var fnscns : GoUInt16 = ((0 : GoUInt16));
    public var ftimedat : GoInt32 = ((0 : GoInt32));
    public var fsymptr : GoUInt64 = ((0 : GoUInt64));
    public var fopthdr : GoUInt16 = ((0 : GoUInt16));
    public var fflags : GoUInt16 = ((0 : GoUInt16));
    public var fnsyms : GoInt32 = ((0 : GoInt32));
    public function new(?fmagic:GoUInt16, ?fnscns:GoUInt16, ?ftimedat:GoInt32, ?fsymptr:GoUInt64, ?fopthdr:GoUInt16, ?fflags:GoUInt16, ?fnsyms:GoInt32) {
        if (fmagic != null) this.fmagic = fmagic;
        if (fnscns != null) this.fnscns = fnscns;
        if (ftimedat != null) this.ftimedat = ftimedat;
        if (fsymptr != null) this.fsymptr = fsymptr;
        if (fopthdr != null) this.fopthdr = fopthdr;
        if (fflags != null) this.fflags = fflags;
        if (fnsyms != null) this.fnsyms = fnsyms;
    }
    public function toString() {
        return "{" + Go.string(fmagic) + " " + Go.string(fnscns) + " " + Go.string(ftimedat) + " " + Go.string(fsymptr) + " " + Go.string(fopthdr) + " " + Go.string(fflags) + " " + Go.string(fnsyms) + "}";
    }
    public function __underlying__():AnyInterface return Go.toInterface(this);
    public function __copy__() {
        return new FileHeader64(fmagic, fnscns, ftimedat, fsymptr, fopthdr, fflags, fnsyms);
    }
    public function __set__(__tmp__) {
        this.fmagic = __tmp__.fmagic;
        this.fnscns = __tmp__.fnscns;
        this.ftimedat = __tmp__.ftimedat;
        this.fsymptr = __tmp__.fsymptr;
        this.fopthdr = __tmp__.fopthdr;
        this.fflags = __tmp__.fflags;
        this.fnsyms = __tmp__.fnsyms;
        return this;
    }
}
@:structInit class SectionHeader32 {
    public var sname : GoArray<GoUInt8> = new GoArray<GoUInt8>(...[for (i in 0 ... 8) ((0 : GoUInt8))]);
    public var spaddr : GoUInt32 = ((0 : GoUInt32));
    public var svaddr : GoUInt32 = ((0 : GoUInt32));
    public var ssize : GoUInt32 = ((0 : GoUInt32));
    public var sscnptr : GoUInt32 = ((0 : GoUInt32));
    public var srelptr : GoUInt32 = ((0 : GoUInt32));
    public var slnnoptr : GoUInt32 = ((0 : GoUInt32));
    public var snreloc : GoUInt16 = ((0 : GoUInt16));
    public var snlnno : GoUInt16 = ((0 : GoUInt16));
    public var sflags : GoUInt32 = ((0 : GoUInt32));
    public function new(?sname:GoArray<GoUInt8>, ?spaddr:GoUInt32, ?svaddr:GoUInt32, ?ssize:GoUInt32, ?sscnptr:GoUInt32, ?srelptr:GoUInt32, ?slnnoptr:GoUInt32, ?snreloc:GoUInt16, ?snlnno:GoUInt16, ?sflags:GoUInt32) {
        if (sname != null) this.sname = sname;
        if (spaddr != null) this.spaddr = spaddr;
        if (svaddr != null) this.svaddr = svaddr;
        if (ssize != null) this.ssize = ssize;
        if (sscnptr != null) this.sscnptr = sscnptr;
        if (srelptr != null) this.srelptr = srelptr;
        if (slnnoptr != null) this.slnnoptr = slnnoptr;
        if (snreloc != null) this.snreloc = snreloc;
        if (snlnno != null) this.snlnno = snlnno;
        if (sflags != null) this.sflags = sflags;
    }
    public function toString() {
        return "{" + Go.string(sname) + " " + Go.string(spaddr) + " " + Go.string(svaddr) + " " + Go.string(ssize) + " " + Go.string(sscnptr) + " " + Go.string(srelptr) + " " + Go.string(slnnoptr) + " " + Go.string(snreloc) + " " + Go.string(snlnno) + " " + Go.string(sflags) + "}";
    }
    public function __underlying__():AnyInterface return Go.toInterface(this);
    public function __copy__() {
        return new SectionHeader32(sname, spaddr, svaddr, ssize, sscnptr, srelptr, slnnoptr, snreloc, snlnno, sflags);
    }
    public function __set__(__tmp__) {
        this.sname = __tmp__.sname;
        this.spaddr = __tmp__.spaddr;
        this.svaddr = __tmp__.svaddr;
        this.ssize = __tmp__.ssize;
        this.sscnptr = __tmp__.sscnptr;
        this.srelptr = __tmp__.srelptr;
        this.slnnoptr = __tmp__.slnnoptr;
        this.snreloc = __tmp__.snreloc;
        this.snlnno = __tmp__.snlnno;
        this.sflags = __tmp__.sflags;
        return this;
    }
}
@:structInit class SectionHeader64 {
    public var sname : GoArray<GoUInt8> = new GoArray<GoUInt8>(...[for (i in 0 ... 8) ((0 : GoUInt8))]);
    public var spaddr : GoUInt64 = ((0 : GoUInt64));
    public var svaddr : GoUInt64 = ((0 : GoUInt64));
    public var ssize : GoUInt64 = ((0 : GoUInt64));
    public var sscnptr : GoUInt64 = ((0 : GoUInt64));
    public var srelptr : GoUInt64 = ((0 : GoUInt64));
    public var slnnoptr : GoUInt64 = ((0 : GoUInt64));
    public var snreloc : GoUInt32 = ((0 : GoUInt32));
    public var snlnno : GoUInt32 = ((0 : GoUInt32));
    public var sflags : GoUInt32 = ((0 : GoUInt32));
    public var spad : GoUInt32 = ((0 : GoUInt32));
    public function new(?sname:GoArray<GoUInt8>, ?spaddr:GoUInt64, ?svaddr:GoUInt64, ?ssize:GoUInt64, ?sscnptr:GoUInt64, ?srelptr:GoUInt64, ?slnnoptr:GoUInt64, ?snreloc:GoUInt32, ?snlnno:GoUInt32, ?sflags:GoUInt32, ?spad:GoUInt32) {
        if (sname != null) this.sname = sname;
        if (spaddr != null) this.spaddr = spaddr;
        if (svaddr != null) this.svaddr = svaddr;
        if (ssize != null) this.ssize = ssize;
        if (sscnptr != null) this.sscnptr = sscnptr;
        if (srelptr != null) this.srelptr = srelptr;
        if (slnnoptr != null) this.slnnoptr = slnnoptr;
        if (snreloc != null) this.snreloc = snreloc;
        if (snlnno != null) this.snlnno = snlnno;
        if (sflags != null) this.sflags = sflags;
        if (spad != null) this.spad = spad;
    }
    public function toString() {
        return "{" + Go.string(sname) + " " + Go.string(spaddr) + " " + Go.string(svaddr) + " " + Go.string(ssize) + " " + Go.string(sscnptr) + " " + Go.string(srelptr) + " " + Go.string(slnnoptr) + " " + Go.string(snreloc) + " " + Go.string(snlnno) + " " + Go.string(sflags) + " " + Go.string(spad) + "}";
    }
    public function __underlying__():AnyInterface return Go.toInterface(this);
    public function __copy__() {
        return new SectionHeader64(
sname,
spaddr,
svaddr,
ssize,
sscnptr,
srelptr,
slnnoptr,
snreloc,
snlnno,
sflags,
spad);
    }
    public function __set__(__tmp__) {
        this.sname = __tmp__.sname;
        this.spaddr = __tmp__.spaddr;
        this.svaddr = __tmp__.svaddr;
        this.ssize = __tmp__.ssize;
        this.sscnptr = __tmp__.sscnptr;
        this.srelptr = __tmp__.srelptr;
        this.slnnoptr = __tmp__.slnnoptr;
        this.snreloc = __tmp__.snreloc;
        this.snlnno = __tmp__.snlnno;
        this.sflags = __tmp__.sflags;
        this.spad = __tmp__.spad;
        return this;
    }
}
@:structInit class SymEnt32 {
    public var nname : GoArray<GoUInt8> = new GoArray<GoUInt8>(...[for (i in 0 ... 8) ((0 : GoUInt8))]);
    public var nvalue : GoUInt32 = ((0 : GoUInt32));
    public var nscnum : GoInt16 = ((0 : GoInt16));
    public var ntype : GoUInt16 = ((0 : GoUInt16));
    public var nsclass : GoInt8 = ((0 : GoInt8));
    public var nnumaux : GoInt8 = ((0 : GoInt8));
    public function new(?nname:GoArray<GoUInt8>, ?nvalue:GoUInt32, ?nscnum:GoInt16, ?ntype:GoUInt16, ?nsclass:GoInt8, ?nnumaux:GoInt8) {
        if (nname != null) this.nname = nname;
        if (nvalue != null) this.nvalue = nvalue;
        if (nscnum != null) this.nscnum = nscnum;
        if (ntype != null) this.ntype = ntype;
        if (nsclass != null) this.nsclass = nsclass;
        if (nnumaux != null) this.nnumaux = nnumaux;
    }
    public function toString() {
        return "{" + Go.string(nname) + " " + Go.string(nvalue) + " " + Go.string(nscnum) + " " + Go.string(ntype) + " " + Go.string(nsclass) + " " + Go.string(nnumaux) + "}";
    }
    public function __underlying__():AnyInterface return Go.toInterface(this);
    public function __copy__() {
        return new SymEnt32(nname, nvalue, nscnum, ntype, nsclass, nnumaux);
    }
    public function __set__(__tmp__) {
        this.nname = __tmp__.nname;
        this.nvalue = __tmp__.nvalue;
        this.nscnum = __tmp__.nscnum;
        this.ntype = __tmp__.ntype;
        this.nsclass = __tmp__.nsclass;
        this.nnumaux = __tmp__.nnumaux;
        return this;
    }
}
@:structInit class SymEnt64 {
    public var nvalue : GoUInt64 = ((0 : GoUInt64));
    public var noffset : GoUInt32 = ((0 : GoUInt32));
    public var nscnum : GoInt16 = ((0 : GoInt16));
    public var ntype : GoUInt16 = ((0 : GoUInt16));
    public var nsclass : GoInt8 = ((0 : GoInt8));
    public var nnumaux : GoInt8 = ((0 : GoInt8));
    public function new(?nvalue:GoUInt64, ?noffset:GoUInt32, ?nscnum:GoInt16, ?ntype:GoUInt16, ?nsclass:GoInt8, ?nnumaux:GoInt8) {
        if (nvalue != null) this.nvalue = nvalue;
        if (noffset != null) this.noffset = noffset;
        if (nscnum != null) this.nscnum = nscnum;
        if (ntype != null) this.ntype = ntype;
        if (nsclass != null) this.nsclass = nsclass;
        if (nnumaux != null) this.nnumaux = nnumaux;
    }
    public function toString() {
        return "{" + Go.string(nvalue) + " " + Go.string(noffset) + " " + Go.string(nscnum) + " " + Go.string(ntype) + " " + Go.string(nsclass) + " " + Go.string(nnumaux) + "}";
    }
    public function __underlying__():AnyInterface return Go.toInterface(this);
    public function __copy__() {
        return new SymEnt64(nvalue, noffset, nscnum, ntype, nsclass, nnumaux);
    }
    public function __set__(__tmp__) {
        this.nvalue = __tmp__.nvalue;
        this.noffset = __tmp__.noffset;
        this.nscnum = __tmp__.nscnum;
        this.ntype = __tmp__.ntype;
        this.nsclass = __tmp__.nsclass;
        this.nnumaux = __tmp__.nnumaux;
        return this;
    }
}
@:structInit class AuxFile64 {
    public var xfname : GoArray<GoUInt8> = new GoArray<GoUInt8>(...[for (i in 0 ... 8) ((0 : GoUInt8))]);
    public var xftype : GoUInt8 = ((0 : GoUInt8));
    public var xauxtype : GoUInt8 = ((0 : GoUInt8));
    public function new(?xfname:GoArray<GoUInt8>, ?xftype:GoUInt8, ?xauxtype:GoUInt8) {
        if (xfname != null) this.xfname = xfname;
        if (xftype != null) this.xftype = xftype;
        if (xauxtype != null) this.xauxtype = xauxtype;
    }
    public function toString() {
        return "{" + Go.string(xfname) + " " + Go.string(xftype) + " " + Go.string(xauxtype) + "}";
    }
    public function __underlying__():AnyInterface return Go.toInterface(this);
    public function __copy__() {
        return new AuxFile64(xfname, xftype, xauxtype);
    }
    public function __set__(__tmp__) {
        this.xfname = __tmp__.xfname;
        this.xftype = __tmp__.xftype;
        this.xauxtype = __tmp__.xauxtype;
        return this;
    }
}
@:structInit class AuxFcn32 {
    public var xexptr : GoUInt32 = ((0 : GoUInt32));
    public var xfsize : GoUInt32 = ((0 : GoUInt32));
    public var xlnnoptr : GoUInt32 = ((0 : GoUInt32));
    public var xendndx : GoUInt32 = ((0 : GoUInt32));
    public var xpad : GoUInt16 = ((0 : GoUInt16));
    public function new(?xexptr:GoUInt32, ?xfsize:GoUInt32, ?xlnnoptr:GoUInt32, ?xendndx:GoUInt32, ?xpad:GoUInt16) {
        if (xexptr != null) this.xexptr = xexptr;
        if (xfsize != null) this.xfsize = xfsize;
        if (xlnnoptr != null) this.xlnnoptr = xlnnoptr;
        if (xendndx != null) this.xendndx = xendndx;
        if (xpad != null) this.xpad = xpad;
    }
    public function toString() {
        return "{" + Go.string(xexptr) + " " + Go.string(xfsize) + " " + Go.string(xlnnoptr) + " " + Go.string(xendndx) + " " + Go.string(xpad) + "}";
    }
    public function __underlying__():AnyInterface return Go.toInterface(this);
    public function __copy__() {
        return new AuxFcn32(xexptr, xfsize, xlnnoptr, xendndx, xpad);
    }
    public function __set__(__tmp__) {
        this.xexptr = __tmp__.xexptr;
        this.xfsize = __tmp__.xfsize;
        this.xlnnoptr = __tmp__.xlnnoptr;
        this.xendndx = __tmp__.xendndx;
        this.xpad = __tmp__.xpad;
        return this;
    }
}
@:structInit class AuxFcn64 {
    public var xlnnoptr : GoUInt64 = ((0 : GoUInt64));
    public var xfsize : GoUInt32 = ((0 : GoUInt32));
    public var xendndx : GoUInt32 = ((0 : GoUInt32));
    public var xpad : GoUInt8 = ((0 : GoUInt8));
    public var xauxtype : GoUInt8 = ((0 : GoUInt8));
    public function new(?xlnnoptr:GoUInt64, ?xfsize:GoUInt32, ?xendndx:GoUInt32, ?xpad:GoUInt8, ?xauxtype:GoUInt8) {
        if (xlnnoptr != null) this.xlnnoptr = xlnnoptr;
        if (xfsize != null) this.xfsize = xfsize;
        if (xendndx != null) this.xendndx = xendndx;
        if (xpad != null) this.xpad = xpad;
        if (xauxtype != null) this.xauxtype = xauxtype;
    }
    public function toString() {
        return "{" + Go.string(xlnnoptr) + " " + Go.string(xfsize) + " " + Go.string(xendndx) + " " + Go.string(xpad) + " " + Go.string(xauxtype) + "}";
    }
    public function __underlying__():AnyInterface return Go.toInterface(this);
    public function __copy__() {
        return new AuxFcn64(xlnnoptr, xfsize, xendndx, xpad, xauxtype);
    }
    public function __set__(__tmp__) {
        this.xlnnoptr = __tmp__.xlnnoptr;
        this.xfsize = __tmp__.xfsize;
        this.xendndx = __tmp__.xendndx;
        this.xpad = __tmp__.xpad;
        this.xauxtype = __tmp__.xauxtype;
        return this;
    }
}
@:structInit class AuxSect64 {
    public var xscnlen : GoUInt64 = ((0 : GoUInt64));
    public var xnreloc : GoUInt64 = ((0 : GoUInt64));
    public var _pad : GoUInt8 = ((0 : GoUInt8));
    public var xauxtype : GoUInt8 = ((0 : GoUInt8));
    public function new(?xscnlen:GoUInt64, ?xnreloc:GoUInt64, ?_pad:GoUInt8, ?xauxtype:GoUInt8) {
        if (xscnlen != null) this.xscnlen = xscnlen;
        if (xnreloc != null) this.xnreloc = xnreloc;
        if (_pad != null) this._pad = _pad;
        if (xauxtype != null) this.xauxtype = xauxtype;
    }
    public function toString() {
        return "{" + Go.string(xscnlen) + " " + Go.string(xnreloc) + " " + Go.string(_pad) + " " + Go.string(xauxtype) + "}";
    }
    public function __underlying__():AnyInterface return Go.toInterface(this);
    public function __copy__() {
        return new AuxSect64(xscnlen, xnreloc, _pad, xauxtype);
    }
    public function __set__(__tmp__) {
        this.xscnlen = __tmp__.xscnlen;
        this.xnreloc = __tmp__.xnreloc;
        this._pad = __tmp__._pad;
        this.xauxtype = __tmp__.xauxtype;
        return this;
    }
}
@:structInit class AuxCSect32 {
    public var xscnlen : GoInt32 = ((0 : GoInt32));
    public var xparmhash : GoUInt32 = ((0 : GoUInt32));
    public var xsnhash : GoUInt16 = ((0 : GoUInt16));
    public var xsmtyp : GoUInt8 = ((0 : GoUInt8));
    public var xsmclas : GoUInt8 = ((0 : GoUInt8));
    public var xstab : GoUInt32 = ((0 : GoUInt32));
    public var xsnstab : GoUInt16 = ((0 : GoUInt16));
    public function new(?xscnlen:GoInt32, ?xparmhash:GoUInt32, ?xsnhash:GoUInt16, ?xsmtyp:GoUInt8, ?xsmclas:GoUInt8, ?xstab:GoUInt32, ?xsnstab:GoUInt16) {
        if (xscnlen != null) this.xscnlen = xscnlen;
        if (xparmhash != null) this.xparmhash = xparmhash;
        if (xsnhash != null) this.xsnhash = xsnhash;
        if (xsmtyp != null) this.xsmtyp = xsmtyp;
        if (xsmclas != null) this.xsmclas = xsmclas;
        if (xstab != null) this.xstab = xstab;
        if (xsnstab != null) this.xsnstab = xsnstab;
    }
    public function toString() {
        return "{" + Go.string(xscnlen) + " " + Go.string(xparmhash) + " " + Go.string(xsnhash) + " " + Go.string(xsmtyp) + " " + Go.string(xsmclas) + " " + Go.string(xstab) + " " + Go.string(xsnstab) + "}";
    }
    public function __underlying__():AnyInterface return Go.toInterface(this);
    public function __copy__() {
        return new AuxCSect32(xscnlen, xparmhash, xsnhash, xsmtyp, xsmclas, xstab, xsnstab);
    }
    public function __set__(__tmp__) {
        this.xscnlen = __tmp__.xscnlen;
        this.xparmhash = __tmp__.xparmhash;
        this.xsnhash = __tmp__.xsnhash;
        this.xsmtyp = __tmp__.xsmtyp;
        this.xsmclas = __tmp__.xsmclas;
        this.xstab = __tmp__.xstab;
        this.xsnstab = __tmp__.xsnstab;
        return this;
    }
}
@:structInit class AuxCSect64 {
    public var xscnlenlo : GoUInt32 = ((0 : GoUInt32));
    public var xparmhash : GoUInt32 = ((0 : GoUInt32));
    public var xsnhash : GoUInt16 = ((0 : GoUInt16));
    public var xsmtyp : GoUInt8 = ((0 : GoUInt8));
    public var xsmclas : GoUInt8 = ((0 : GoUInt8));
    public var xscnlenhi : GoInt32 = ((0 : GoInt32));
    public var xpad : GoUInt8 = ((0 : GoUInt8));
    public var xauxtype : GoUInt8 = ((0 : GoUInt8));
    public function new(?xscnlenlo:GoUInt32, ?xparmhash:GoUInt32, ?xsnhash:GoUInt16, ?xsmtyp:GoUInt8, ?xsmclas:GoUInt8, ?xscnlenhi:GoInt32, ?xpad:GoUInt8, ?xauxtype:GoUInt8) {
        if (xscnlenlo != null) this.xscnlenlo = xscnlenlo;
        if (xparmhash != null) this.xparmhash = xparmhash;
        if (xsnhash != null) this.xsnhash = xsnhash;
        if (xsmtyp != null) this.xsmtyp = xsmtyp;
        if (xsmclas != null) this.xsmclas = xsmclas;
        if (xscnlenhi != null) this.xscnlenhi = xscnlenhi;
        if (xpad != null) this.xpad = xpad;
        if (xauxtype != null) this.xauxtype = xauxtype;
    }
    public function toString() {
        return "{" + Go.string(xscnlenlo) + " " + Go.string(xparmhash) + " " + Go.string(xsnhash) + " " + Go.string(xsmtyp) + " " + Go.string(xsmclas) + " " + Go.string(xscnlenhi) + " " + Go.string(xpad) + " " + Go.string(xauxtype) + "}";
    }
    public function __underlying__():AnyInterface return Go.toInterface(this);
    public function __copy__() {
        return new AuxCSect64(xscnlenlo, xparmhash, xsnhash, xsmtyp, xsmclas, xscnlenhi, xpad, xauxtype);
    }
    public function __set__(__tmp__) {
        this.xscnlenlo = __tmp__.xscnlenlo;
        this.xparmhash = __tmp__.xparmhash;
        this.xsnhash = __tmp__.xsnhash;
        this.xsmtyp = __tmp__.xsmtyp;
        this.xsmclas = __tmp__.xsmclas;
        this.xscnlenhi = __tmp__.xscnlenhi;
        this.xpad = __tmp__.xpad;
        this.xauxtype = __tmp__.xauxtype;
        return this;
    }
}
@:structInit class LoaderHeader32 {
    public var lversion : GoInt32 = ((0 : GoInt32));
    public var lnsyms : GoInt32 = ((0 : GoInt32));
    public var lnreloc : GoInt32 = ((0 : GoInt32));
    public var listlen : GoUInt32 = ((0 : GoUInt32));
    public var lnimpid : GoInt32 = ((0 : GoInt32));
    public var limpoff : GoUInt32 = ((0 : GoUInt32));
    public var lstlen : GoUInt32 = ((0 : GoUInt32));
    public var lstoff : GoUInt32 = ((0 : GoUInt32));
    public function new(?lversion:GoInt32, ?lnsyms:GoInt32, ?lnreloc:GoInt32, ?listlen:GoUInt32, ?lnimpid:GoInt32, ?limpoff:GoUInt32, ?lstlen:GoUInt32, ?lstoff:GoUInt32) {
        if (lversion != null) this.lversion = lversion;
        if (lnsyms != null) this.lnsyms = lnsyms;
        if (lnreloc != null) this.lnreloc = lnreloc;
        if (listlen != null) this.listlen = listlen;
        if (lnimpid != null) this.lnimpid = lnimpid;
        if (limpoff != null) this.limpoff = limpoff;
        if (lstlen != null) this.lstlen = lstlen;
        if (lstoff != null) this.lstoff = lstoff;
    }
    public function toString() {
        return "{" + Go.string(lversion) + " " + Go.string(lnsyms) + " " + Go.string(lnreloc) + " " + Go.string(listlen) + " " + Go.string(lnimpid) + " " + Go.string(limpoff) + " " + Go.string(lstlen) + " " + Go.string(lstoff) + "}";
    }
    public function __underlying__():AnyInterface return Go.toInterface(this);
    public function __copy__() {
        return new LoaderHeader32(lversion, lnsyms, lnreloc, listlen, lnimpid, limpoff, lstlen, lstoff);
    }
    public function __set__(__tmp__) {
        this.lversion = __tmp__.lversion;
        this.lnsyms = __tmp__.lnsyms;
        this.lnreloc = __tmp__.lnreloc;
        this.listlen = __tmp__.listlen;
        this.lnimpid = __tmp__.lnimpid;
        this.limpoff = __tmp__.limpoff;
        this.lstlen = __tmp__.lstlen;
        this.lstoff = __tmp__.lstoff;
        return this;
    }
}
@:structInit class LoaderHeader64 {
    public var lversion : GoInt32 = ((0 : GoInt32));
    public var lnsyms : GoInt32 = ((0 : GoInt32));
    public var lnreloc : GoInt32 = ((0 : GoInt32));
    public var listlen : GoUInt32 = ((0 : GoUInt32));
    public var lnimpid : GoInt32 = ((0 : GoInt32));
    public var lstlen : GoUInt32 = ((0 : GoUInt32));
    public var limpoff : GoUInt64 = ((0 : GoUInt64));
    public var lstoff : GoUInt64 = ((0 : GoUInt64));
    public var lsymoff : GoUInt64 = ((0 : GoUInt64));
    public var lrldoff : GoUInt64 = ((0 : GoUInt64));
    public function new(?lversion:GoInt32, ?lnsyms:GoInt32, ?lnreloc:GoInt32, ?listlen:GoUInt32, ?lnimpid:GoInt32, ?lstlen:GoUInt32, ?limpoff:GoUInt64, ?lstoff:GoUInt64, ?lsymoff:GoUInt64, ?lrldoff:GoUInt64) {
        if (lversion != null) this.lversion = lversion;
        if (lnsyms != null) this.lnsyms = lnsyms;
        if (lnreloc != null) this.lnreloc = lnreloc;
        if (listlen != null) this.listlen = listlen;
        if (lnimpid != null) this.lnimpid = lnimpid;
        if (lstlen != null) this.lstlen = lstlen;
        if (limpoff != null) this.limpoff = limpoff;
        if (lstoff != null) this.lstoff = lstoff;
        if (lsymoff != null) this.lsymoff = lsymoff;
        if (lrldoff != null) this.lrldoff = lrldoff;
    }
    public function toString() {
        return "{" + Go.string(lversion) + " " + Go.string(lnsyms) + " " + Go.string(lnreloc) + " " + Go.string(listlen) + " " + Go.string(lnimpid) + " " + Go.string(lstlen) + " " + Go.string(limpoff) + " " + Go.string(lstoff) + " " + Go.string(lsymoff) + " " + Go.string(lrldoff) + "}";
    }
    public function __underlying__():AnyInterface return Go.toInterface(this);
    public function __copy__() {
        return new LoaderHeader64(lversion, lnsyms, lnreloc, listlen, lnimpid, lstlen, limpoff, lstoff, lsymoff, lrldoff);
    }
    public function __set__(__tmp__) {
        this.lversion = __tmp__.lversion;
        this.lnsyms = __tmp__.lnsyms;
        this.lnreloc = __tmp__.lnreloc;
        this.listlen = __tmp__.listlen;
        this.lnimpid = __tmp__.lnimpid;
        this.lstlen = __tmp__.lstlen;
        this.limpoff = __tmp__.limpoff;
        this.lstoff = __tmp__.lstoff;
        this.lsymoff = __tmp__.lsymoff;
        this.lrldoff = __tmp__.lrldoff;
        return this;
    }
}
@:structInit class LoaderSymbol32 {
    public var lname : GoArray<GoUInt8> = new GoArray<GoUInt8>(...[for (i in 0 ... 8) ((0 : GoUInt8))]);
    public var lvalue : GoUInt32 = ((0 : GoUInt32));
    public var lscnum : GoInt16 = ((0 : GoInt16));
    public var lsmtype : GoInt8 = ((0 : GoInt8));
    public var lsmclas : GoInt8 = ((0 : GoInt8));
    public var lifile : GoInt32 = ((0 : GoInt32));
    public var lparm : GoUInt32 = ((0 : GoUInt32));
    public function new(?lname:GoArray<GoUInt8>, ?lvalue:GoUInt32, ?lscnum:GoInt16, ?lsmtype:GoInt8, ?lsmclas:GoInt8, ?lifile:GoInt32, ?lparm:GoUInt32) {
        if (lname != null) this.lname = lname;
        if (lvalue != null) this.lvalue = lvalue;
        if (lscnum != null) this.lscnum = lscnum;
        if (lsmtype != null) this.lsmtype = lsmtype;
        if (lsmclas != null) this.lsmclas = lsmclas;
        if (lifile != null) this.lifile = lifile;
        if (lparm != null) this.lparm = lparm;
    }
    public function toString() {
        return "{" + Go.string(lname) + " " + Go.string(lvalue) + " " + Go.string(lscnum) + " " + Go.string(lsmtype) + " " + Go.string(lsmclas) + " " + Go.string(lifile) + " " + Go.string(lparm) + "}";
    }
    public function __underlying__():AnyInterface return Go.toInterface(this);
    public function __copy__() {
        return new LoaderSymbol32(lname, lvalue, lscnum, lsmtype, lsmclas, lifile, lparm);
    }
    public function __set__(__tmp__) {
        this.lname = __tmp__.lname;
        this.lvalue = __tmp__.lvalue;
        this.lscnum = __tmp__.lscnum;
        this.lsmtype = __tmp__.lsmtype;
        this.lsmclas = __tmp__.lsmclas;
        this.lifile = __tmp__.lifile;
        this.lparm = __tmp__.lparm;
        return this;
    }
}
@:structInit class LoaderSymbol64 {
    public var lvalue : GoUInt64 = ((0 : GoUInt64));
    public var loffset : GoUInt32 = ((0 : GoUInt32));
    public var lscnum : GoInt16 = ((0 : GoInt16));
    public var lsmtype : GoInt8 = ((0 : GoInt8));
    public var lsmclas : GoInt8 = ((0 : GoInt8));
    public var lifile : GoInt32 = ((0 : GoInt32));
    public var lparm : GoUInt32 = ((0 : GoUInt32));
    public function new(?lvalue:GoUInt64, ?loffset:GoUInt32, ?lscnum:GoInt16, ?lsmtype:GoInt8, ?lsmclas:GoInt8, ?lifile:GoInt32, ?lparm:GoUInt32) {
        if (lvalue != null) this.lvalue = lvalue;
        if (loffset != null) this.loffset = loffset;
        if (lscnum != null) this.lscnum = lscnum;
        if (lsmtype != null) this.lsmtype = lsmtype;
        if (lsmclas != null) this.lsmclas = lsmclas;
        if (lifile != null) this.lifile = lifile;
        if (lparm != null) this.lparm = lparm;
    }
    public function toString() {
        return "{" + Go.string(lvalue) + " " + Go.string(loffset) + " " + Go.string(lscnum) + " " + Go.string(lsmtype) + " " + Go.string(lsmclas) + " " + Go.string(lifile) + " " + Go.string(lparm) + "}";
    }
    public function __underlying__():AnyInterface return Go.toInterface(this);
    public function __copy__() {
        return new LoaderSymbol64(lvalue, loffset, lscnum, lsmtype, lsmclas, lifile, lparm);
    }
    public function __set__(__tmp__) {
        this.lvalue = __tmp__.lvalue;
        this.loffset = __tmp__.loffset;
        this.lscnum = __tmp__.lscnum;
        this.lsmtype = __tmp__.lsmtype;
        this.lsmclas = __tmp__.lsmclas;
        this.lifile = __tmp__.lifile;
        this.lparm = __tmp__.lparm;
        return this;
    }
}
@:structInit class Reloc32 {
    public var rvaddr : GoUInt32 = ((0 : GoUInt32));
    public var rsymndx : GoUInt32 = ((0 : GoUInt32));
    public var rsize : GoUInt8 = ((0 : GoUInt8));
    public var rtype : GoUInt8 = ((0 : GoUInt8));
    public function new(?rvaddr:GoUInt32, ?rsymndx:GoUInt32, ?rsize:GoUInt8, ?rtype:GoUInt8) {
        if (rvaddr != null) this.rvaddr = rvaddr;
        if (rsymndx != null) this.rsymndx = rsymndx;
        if (rsize != null) this.rsize = rsize;
        if (rtype != null) this.rtype = rtype;
    }
    public function toString() {
        return "{" + Go.string(rvaddr) + " " + Go.string(rsymndx) + " " + Go.string(rsize) + " " + Go.string(rtype) + "}";
    }
    public function __underlying__():AnyInterface return Go.toInterface(this);
    public function __copy__() {
        return new Reloc32(rvaddr, rsymndx, rsize, rtype);
    }
    public function __set__(__tmp__) {
        this.rvaddr = __tmp__.rvaddr;
        this.rsymndx = __tmp__.rsymndx;
        this.rsize = __tmp__.rsize;
        this.rtype = __tmp__.rtype;
        return this;
    }
}
@:structInit class Reloc64 {
    public var rvaddr : GoUInt64 = ((0 : GoUInt64));
    public var rsymndx : GoUInt32 = ((0 : GoUInt32));
    public var rsize : GoUInt8 = ((0 : GoUInt8));
    public var rtype : GoUInt8 = ((0 : GoUInt8));
    public function new(?rvaddr:GoUInt64, ?rsymndx:GoUInt32, ?rsize:GoUInt8, ?rtype:GoUInt8) {
        if (rvaddr != null) this.rvaddr = rvaddr;
        if (rsymndx != null) this.rsymndx = rsymndx;
        if (rsize != null) this.rsize = rsize;
        if (rtype != null) this.rtype = rtype;
    }
    public function toString() {
        return "{" + Go.string(rvaddr) + " " + Go.string(rsymndx) + " " + Go.string(rsize) + " " + Go.string(rtype) + "}";
    }
    public function __underlying__():AnyInterface return Go.toInterface(this);
    public function __copy__() {
        return new Reloc64(rvaddr, rsymndx, rsize, rtype);
    }
    public function __set__(__tmp__) {
        this.rvaddr = __tmp__.rvaddr;
        this.rsymndx = __tmp__.rsymndx;
        this.rsize = __tmp__.rsize;
        this.rtype = __tmp__.rtype;
        return this;
    }
}
/**
    // OpenArchive opens the named archive using os.Open and prepares it for use
    // as an AIX big archive.
**/
function openArchive(_name:GoString):{ var _0 : Pointer<Archive>; var _1 : Error; } {
        var __tmp__ = stdgo.os.Os.open(_name), _f:Pointer<stdgo.os.Os.File> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (Go.toInterface(_err) != Go.toInterface(null)) {
            return { _0 : null, _1 : _err };
        };
        var __tmp__ = newArchive(_f.value), _arch:Pointer<Archive> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (Go.toInterface(_err) != Go.toInterface(null)) {
            _f.value.close();
            return { _0 : null, _1 : _err };
        };
        _arch.value._closer = _f.value;
        return { _0 : _arch, _1 : ((null : stdgo.Error)) };
    }
/**
    // NewArchive creates a new Archive for accessing an AIX big archive in an underlying reader.
**/
function newArchive(_r:stdgo.io.Io.ReaderAt):{ var _0 : Pointer<Archive>; var _1 : Error; } {
        var _parseDecimalBytes:Slice<GoUInt8> -> { var _0 : GoInt64; var _1 : stdgo.Error; } = function(_b:Slice<GoByte>):{ var _0 : GoInt64; var _1 : Error; } {
            return stdgo.strconv.Strconv.parseInt(stdgo.strings.Strings.trimSpace(((_b : GoString))), ((10 : GoInt)), ((64 : GoInt)));
        };
        var _sr:Pointer<stdgo.io.Io.SectionReader> = stdgo.io.Io.newSectionReader(_r, ((0 : GoInt64)), (("9223372036854775807" : GoInt64)));
        var _magic:GoArray<GoByte> = new GoArray<GoUInt8>(...[for (i in 0 ... 8) ((0 : GoUInt8))]);
        {
            var __tmp__ = _sr.value.readAt(_magic.__slice__(0), ((0 : GoInt64))), _:GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (Go.toInterface(_err) != Go.toInterface(null)) {
                return { _0 : null, _1 : _err };
            };
        };
        var _arch:Pointer<Archive> = Go.pointer(new Archive());
        if (((_magic.__slice__(0) : GoString)) == ((("<bigaf>\n" : GoString)))) {
            _arch.value.archiveHeader._magic = ((_magic.__slice__(0) : GoString));
        } else if (((_magic.__slice__(0) : GoString)) == ((("<aiaff>\n" : GoString)))) {
            return { _0 : null, _1 : stdgo.fmt.Fmt.errorf(((("small AIX archive not supported" : GoString)))) };
        } else {
            return { _0 : null, _1 : stdgo.fmt.Fmt.errorf(((("unrecognised archive magic: 0x%x" : GoString))), Go.toInterface(_magic.copy())) };
        };
        var _fhdr:T_bigarFileHeader = new T_bigarFileHeader();
        {
            var __tmp__ = _sr.value.seek(((0 : GoInt64)), ((0 : GoInt))), _:GoInt64 = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (Go.toInterface(_err) != Go.toInterface(null)) {
                return { _0 : null, _1 : _err };
            };
        };
        {
            var _err:stdgo.Error = stdgo.encoding.binary.Binary.read(_sr.value, stdgo.encoding.binary.Binary.bigEndian.__copy__(), Go.toInterface(Go.pointer(_fhdr)));
            if (Go.toInterface(_err) != Go.toInterface(null)) {
                return { _0 : null, _1 : _err };
            };
        };
        var __tmp__ = _parseDecimalBytes(_fhdr.flfstmoff.__slice__(0)), _off:GoInt64 = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (Go.toInterface(_err) != Go.toInterface(null)) {
            return { _0 : null, _1 : stdgo.fmt.Fmt.errorf(((("error parsing offset of first member in archive header(%q); %v" : GoString))), Go.toInterface(_fhdr.__copy__()), Go.toInterface(_err)) };
        };
        if (_off == ((0 : GoInt64))) {
            return { _0 : _arch, _1 : ((null : stdgo.Error)) };
        };
        var __tmp__ = _parseDecimalBytes(_fhdr.fllstmoff.__slice__(0)), _lastoff:GoInt64 = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (Go.toInterface(_err) != Go.toInterface(null)) {
            return { _0 : null, _1 : stdgo.fmt.Fmt.errorf(((("error parsing offset of first member in archive header(%q); %v" : GoString))), Go.toInterface(_fhdr.__copy__()), Go.toInterface(_err)) };
        };
        while (true) {
            {
                var __tmp__ = _sr.value.seek(_off, ((0 : GoInt))), _:GoInt64 = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                if (Go.toInterface(_err) != Go.toInterface(null)) {
                    return { _0 : null, _1 : _err };
                };
            };
            var _mhdr:T_bigarMemberHeader = new T_bigarMemberHeader();
            {
                var _err:stdgo.Error = stdgo.encoding.binary.Binary.read(_sr.value, stdgo.encoding.binary.Binary.bigEndian.__copy__(), Go.toInterface(Go.pointer(_mhdr)));
                if (Go.toInterface(_err) != Go.toInterface(null)) {
                    return { _0 : null, _1 : _err };
                };
            };
            var _member:Pointer<Member> = Go.pointer(new Member());
            _arch.value.members = _arch.value.members.__append__(_member);
            var __tmp__ = _parseDecimalBytes(_mhdr.arsize.__slice__(0)), _size:GoInt64 = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (Go.toInterface(_err) != Go.toInterface(null)) {
                return { _0 : null, _1 : stdgo.fmt.Fmt.errorf(((("error parsing size in member header(%q); %v" : GoString))), Go.toInterface(_mhdr.__copy__()), Go.toInterface(_err)) };
            };
            _member.value.memberHeader.size = ((_size : GoUInt64));
            var __tmp__ = _parseDecimalBytes(_mhdr.arnamlen.__slice__(0)), _namlen:GoInt64 = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (Go.toInterface(_err) != Go.toInterface(null)) {
                return { _0 : null, _1 : stdgo.fmt.Fmt.errorf(((("error parsing name length in member header(%q); %v" : GoString))), Go.toInterface(_mhdr.__copy__()), Go.toInterface(_err)) };
            };
            var _name:Slice<GoUInt8> = new Slice<GoUInt8>(...[for (i in 0 ... ((_namlen : GoInt)).toBasic()) ((0 : GoUInt8))]);
            {
                var _err:stdgo.Error = stdgo.encoding.binary.Binary.read(_sr.value, stdgo.encoding.binary.Binary.bigEndian.__copy__(), Go.toInterface(_name));
                if (Go.toInterface(_err) != Go.toInterface(null)) {
                    return { _0 : null, _1 : _err };
                };
            };
            _member.value.memberHeader.name = ((_name : GoString));
            var _fileoff:GoInt64 = (_off + ((112 : GoInt64))) + _namlen;
            if ((_fileoff & ((1 : GoInt64))) != ((0 : GoInt64))) {
                _fileoff++;
                {
                    var __tmp__ = _sr.value.seek(((1 : GoInt64)), ((1 : GoInt))), _:GoInt64 = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                    if (Go.toInterface(_err) != Go.toInterface(null)) {
                        return { _0 : null, _1 : _err };
                    };
                };
            };
            var _fmag:GoArray<GoByte> = new GoArray<GoUInt8>(...[for (i in 0 ... 2) ((0 : GoUInt8))]);
            {
                var _err:stdgo.Error = stdgo.encoding.binary.Binary.read(_sr.value, stdgo.encoding.binary.Binary.bigEndian.__copy__(), Go.toInterface(Go.pointer(_fmag)));
                if (Go.toInterface(_err) != Go.toInterface(null)) {
                    return { _0 : null, _1 : _err };
                };
            };
            if (((_fmag.__slice__(0) : GoString)) != ((("`\n" : GoString)))) {
                return { _0 : null, _1 : stdgo.fmt.Fmt.errorf(((("AIAFMAG not found after member header" : GoString)))) };
            };
            _fileoff = _fileoff + (((2 : GoInt64)));
            _member.value._sr = stdgo.io.Io.newSectionReader(_sr.value, _fileoff, _size);
            if (_off == _lastoff) {
                break;
            };
            {
                var __tmp__ = _parseDecimalBytes(_mhdr.arnxtmem.__slice__(0));
                _off = __tmp__._0;
                _err = __tmp__._1;
            };
            if (Go.toInterface(_err) != Go.toInterface(null)) {
                return { _0 : null, _1 : stdgo.fmt.Fmt.errorf(((("error parsing offset of first member in archive header(%q); %v" : GoString))), Go.toInterface(_fhdr.__copy__()), Go.toInterface(_err)) };
            };
        };
        return { _0 : _arch, _1 : ((null : stdgo.Error)) };
    }
/**
    // Open opens the named file using os.Open and prepares it for use as an XCOFF binary.
**/
function open(_name:GoString):{ var _0 : Pointer<File>; var _1 : Error; } {
        var __tmp__ = stdgo.os.Os.open(_name), _f:Pointer<stdgo.os.Os.File> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (Go.toInterface(_err) != Go.toInterface(null)) {
            return { _0 : null, _1 : _err };
        };
        var __tmp__ = newFile(_f.value), _ff:Pointer<File> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (Go.toInterface(_err) != Go.toInterface(null)) {
            _f.value.close();
            return { _0 : null, _1 : _err };
        };
        _ff.value._closer = _f.value;
        return { _0 : _ff, _1 : ((null : stdgo.Error)) };
    }
/**
    // cstring converts ASCII byte sequence b to string.
    // It stops once it finds 0 or reaches end of b.
**/
function _cstring(_b:Slice<GoByte>):GoString {
        var _i:GoInt = ((0 : GoInt));
        {
            _i = ((0 : GoInt));
            Go.cfor((_i < _b.length) && (_b[_i] != ((0 : GoUInt8))), _i++, {});
        };
        return ((_b.__slice__(0, _i) : GoString));
    }
/**
    // getString extracts a string from an XCOFF string table.
**/
function _getString(_st:Slice<GoByte>, _offset:GoUInt32):{ var _0 : GoString; var _1 : Bool; } {
        if ((_offset < ((4 : GoUInt32))) || (((_offset : GoInt)) >= _st.length)) {
            return { _0 : (""), _1 : false };
        };
        return { _0 : _cstring(_st.__slice__(_offset)), _1 : true };
    }
/**
    // NewFile creates a new File for accessing an XCOFF binary in an underlying reader.
**/
function newFile(_r:stdgo.io.Io.ReaderAt):{ var _0 : Pointer<File>; var _1 : Error; } {
        return stdgo.internal.Macro.controlFlow({
            var _sr:Pointer<stdgo.io.Io.SectionReader> = stdgo.io.Io.newSectionReader(_r, ((0 : GoInt64)), (("9223372036854775807" : GoInt64)));
            var _magic:GoUInt16 = ((0 : GoUInt16));
            {
                var _err:stdgo.Error = stdgo.encoding.binary.Binary.read(_sr.value, stdgo.encoding.binary.Binary.bigEndian.__copy__(), Go.toInterface(Go.pointer(_magic)));
                if (Go.toInterface(_err) != Go.toInterface(null)) {
                    return { _0 : null, _1 : _err };
                };
            };
            if ((_magic != ((479 : GoUInt16))) && (_magic != ((503 : GoUInt16)))) {
                return { _0 : null, _1 : stdgo.fmt.Fmt.errorf(((("unrecognised XCOFF magic: 0x%x" : GoString))), Go.toInterface(_magic)) };
            };
            var _f:Pointer<File> = Go.pointer(new File());
            _f.value.fileHeader.targetMachine = _magic;
            {
                var __tmp__ = _sr.value.seek(((0 : GoInt64)), ((0 : GoInt))), _:GoInt64 = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                if (Go.toInterface(_err) != Go.toInterface(null)) {
                    return { _0 : null, _1 : _err };
                };
            };
            var _nscns:GoUInt16 = ((0 : GoUInt16));
            var _symptr:GoUInt64 = ((0 : GoUInt64));
            var _nsyms:GoInt32 = ((0 : GoInt32));
            var _opthdr:GoUInt16 = ((0 : GoUInt16));
            var _hdrsz:GoInt = ((0 : GoInt));
            if (_f.value.fileHeader.targetMachine == ((479 : GoUInt16))) {
                var _fhdr:Pointer<FileHeader32> = Go.pointer(new FileHeader32());
                {
                    var _err:stdgo.Error = stdgo.encoding.binary.Binary.read(_sr.value, stdgo.encoding.binary.Binary.bigEndian.__copy__(), Go.toInterface(_fhdr));
                    if (Go.toInterface(_err) != Go.toInterface(null)) {
                        return { _0 : null, _1 : _err };
                    };
                };
                _nscns = _fhdr.value.fnscns;
                _symptr = ((_fhdr.value.fsymptr : GoUInt64));
                _nsyms = _fhdr.value.fnsyms;
                _opthdr = _fhdr.value.fopthdr;
                _hdrsz = ((20 : GoInt));
            } else if (_f.value.fileHeader.targetMachine == ((503 : GoUInt16))) {
                var _fhdr:Pointer<FileHeader64> = Go.pointer(new FileHeader64());
                {
                    var _err:stdgo.Error = stdgo.encoding.binary.Binary.read(_sr.value, stdgo.encoding.binary.Binary.bigEndian.__copy__(), Go.toInterface(_fhdr));
                    if (Go.toInterface(_err) != Go.toInterface(null)) {
                        return { _0 : null, _1 : _err };
                    };
                };
                _nscns = _fhdr.value.fnscns;
                _symptr = _fhdr.value.fsymptr;
                _nsyms = _fhdr.value.fnsyms;
                _opthdr = _fhdr.value.fopthdr;
                _hdrsz = ((24 : GoInt));
            };
            if ((_symptr == ((0 : GoUInt64))) || (_nsyms <= ((0 : GoInt32)))) {
                return { _0 : null, _1 : stdgo.fmt.Fmt.errorf(((("no symbol table" : GoString)))) };
            };
            var _offset:GoUInt64 = _symptr + (((_nsyms : GoUInt64)) * ((18 : GoUInt64)));
            {
                var __tmp__ = _sr.value.seek(((_offset : GoInt64)), ((0 : GoInt))), _:GoInt64 = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                if (Go.toInterface(_err) != Go.toInterface(null)) {
                    return { _0 : null, _1 : _err };
                };
            };
            var _l:GoUInt32 = ((0 : GoUInt32));
            {
                var _err:stdgo.Error = stdgo.encoding.binary.Binary.read(_sr.value, stdgo.encoding.binary.Binary.bigEndian.__copy__(), Go.toInterface(Go.pointer(_l)));
                if (Go.toInterface(_err) != Go.toInterface(null)) {
                    return { _0 : null, _1 : _err };
                };
            };
            if (_l > ((4 : GoUInt32))) {
                {
                    var __tmp__ = _sr.value.seek(((_offset : GoInt64)), ((0 : GoInt))), _:GoInt64 = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                    if (Go.toInterface(_err) != Go.toInterface(null)) {
                        return { _0 : null, _1 : _err };
                    };
                };
                _f.value.stringTable = new Slice<GoUInt8>(...[for (i in 0 ... ((_l : GoInt)).toBasic()) ((0 : GoUInt8))]);
                {
                    var __tmp__ = stdgo.io.Io.readFull(_sr.value, _f.value.stringTable), _:GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                    if (Go.toInterface(_err) != Go.toInterface(null)) {
                        return { _0 : null, _1 : _err };
                    };
                };
            };
            {
                var __tmp__ = _sr.value.seek(((_hdrsz : GoInt64)) + ((_opthdr : GoInt64)), ((0 : GoInt))), _:GoInt64 = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                if (Go.toInterface(_err) != Go.toInterface(null)) {
                    return { _0 : null, _1 : _err };
                };
            };
            _f.value.sections = new Slice<Pointer<Section>>(...[for (i in 0 ... ((_nscns : GoInt)).toBasic()) new Pointer<Section>().nil()]);
            {
                var _i:GoInt = ((0 : GoInt));
                Go.cfor(_i < ((_nscns : GoInt)), _i++, {
                    var _scnptr:GoUInt64 = ((0 : GoUInt64));
                    var _s:Pointer<Section> = Go.pointer(new Section());
                    if (_f.value.fileHeader.targetMachine == ((479 : GoUInt16))) {
                        var _shdr:Pointer<SectionHeader32> = Go.pointer(new SectionHeader32());
                        {
                            var _err:stdgo.Error = stdgo.encoding.binary.Binary.read(_sr.value, stdgo.encoding.binary.Binary.bigEndian.__copy__(), Go.toInterface(_shdr));
                            if (Go.toInterface(_err) != Go.toInterface(null)) {
                                return { _0 : null, _1 : _err };
                            };
                        };
                        _s.value.sectionHeader.name = _cstring(_shdr.value.sname.__slice__(0));
                        _s.value.sectionHeader.virtualAddress = ((_shdr.value.svaddr : GoUInt64));
                        _s.value.sectionHeader.size = ((_shdr.value.ssize : GoUInt64));
                        _scnptr = ((_shdr.value.sscnptr : GoUInt64));
                        _s.value.sectionHeader.type = _shdr.value.sflags;
                        _s.value.sectionHeader.relptr = ((_shdr.value.srelptr : GoUInt64));
                        _s.value.sectionHeader.nreloc = ((_shdr.value.snreloc : GoUInt32));
                    } else if (_f.value.fileHeader.targetMachine == ((503 : GoUInt16))) {
                        var _shdr:Pointer<SectionHeader64> = Go.pointer(new SectionHeader64());
                        {
                            var _err:stdgo.Error = stdgo.encoding.binary.Binary.read(_sr.value, stdgo.encoding.binary.Binary.bigEndian.__copy__(), Go.toInterface(_shdr));
                            if (Go.toInterface(_err) != Go.toInterface(null)) {
                                return { _0 : null, _1 : _err };
                            };
                        };
                        _s.value.sectionHeader.name = _cstring(_shdr.value.sname.__slice__(0));
                        _s.value.sectionHeader.virtualAddress = _shdr.value.svaddr;
                        _s.value.sectionHeader.size = _shdr.value.ssize;
                        _scnptr = _shdr.value.sscnptr;
                        _s.value.sectionHeader.type = _shdr.value.sflags;
                        _s.value.sectionHeader.relptr = _shdr.value.srelptr;
                        _s.value.sectionHeader.nreloc = _shdr.value.snreloc;
                    };
                    var _r2:stdgo.io.Io.ReaderAt = _r;
                    if (_scnptr == ((0 : GoUInt64))) {
                        _r2 = {};
                    };
                    _s.value._sr = stdgo.io.Io.newSectionReader(_r2, ((_scnptr : GoInt64)), ((_s.value.sectionHeader.size : GoInt64)));
                    _s.value.readerAt = _s.value._sr.value;
                    _f.value.sections[_i] = _s;
                });
            };
            var _idxToSym:GoMap<GoInt, Pointer<Symbol>> = new GoMap<GoInt, #NULL_TYPE>(new stdgo.reflect.Reflect._Type(stdgo.reflect.Reflect.GoType.mapType(stdgo.reflect.Reflect.GoType.basic(int_kind), stdgo.reflect.Reflect.GoType.invalidType)));
            {
                var __tmp__ = _sr.value.seek(((_symptr : GoInt64)), ((0 : GoInt))), _:GoInt64 = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                if (Go.toInterface(_err) != Go.toInterface(null)) {
                    return { _0 : null, _1 : _err };
                };
            };
            _f.value.symbols = new Slice<Pointer<Symbol>>(...[for (i in 0 ... ((((0 : GoInt)) : GoInt)).toBasic()) new Pointer<Symbol>().nil()]);
            {
                var _i:GoInt = ((0 : GoInt));
                Go.cfor(_i < ((_nsyms : GoInt)), _i++, {
                    var _numaux:GoInt = ((0 : GoInt));
                    var _ok:Bool = false, _needAuxFcn:Bool = false;
                    var _sym:Pointer<Symbol> = Go.pointer(new Symbol());
                    if (_f.value.fileHeader.targetMachine == ((479 : GoUInt16))) {
                        var _se:Pointer<SymEnt32> = Go.pointer(new SymEnt32());
                        {
                            var _err:stdgo.Error = stdgo.encoding.binary.Binary.read(_sr.value, stdgo.encoding.binary.Binary.bigEndian.__copy__(), Go.toInterface(_se));
                            if (Go.toInterface(_err) != Go.toInterface(null)) {
                                return { _0 : null, _1 : _err };
                            };
                        };
                        _numaux = ((_se.value.nnumaux : GoInt));
                        _sym.value.sectionNumber = ((_se.value.nscnum : GoInt));
                        _sym.value.storageClass = ((_se.value.nsclass : GoInt));
                        _sym.value.value = ((_se.value.nvalue : GoUInt64));
                        _needAuxFcn = ((_se.value.ntype & ((32 : GoUInt16))) != ((0 : GoUInt16))) && (_numaux > ((1 : GoInt)));
                        var _zeroes:GoUInt32 = stdgo.encoding.binary.Binary.bigEndian.uint32(_se.value.nname.__slice__(0, ((4 : GoInt))));
                        if (_zeroes != ((0 : GoUInt32))) {
                            _sym.value.name = _cstring(_se.value.nname.__slice__(0));
                        } else {
                            var _offset:GoUInt32 = stdgo.encoding.binary.Binary.bigEndian.uint32(_se.value.nname.__slice__(((4 : GoInt))));
                            {
                                var __tmp__ = _getString(_f.value.stringTable, _offset);
                                _sym.value.name = __tmp__._0;
                                _ok = __tmp__._1;
                            };
                            if (!_ok) {
                                @:goto "skip";
                            };
                        };
                    } else if (_f.value.fileHeader.targetMachine == ((503 : GoUInt16))) {
                        var _se:Pointer<SymEnt64> = Go.pointer(new SymEnt64());
                        {
                            var _err:stdgo.Error = stdgo.encoding.binary.Binary.read(_sr.value, stdgo.encoding.binary.Binary.bigEndian.__copy__(), Go.toInterface(_se));
                            if (Go.toInterface(_err) != Go.toInterface(null)) {
                                return { _0 : null, _1 : _err };
                            };
                        };
                        _numaux = ((_se.value.nnumaux : GoInt));
                        _sym.value.sectionNumber = ((_se.value.nscnum : GoInt));
                        _sym.value.storageClass = ((_se.value.nsclass : GoInt));
                        _sym.value.value = _se.value.nvalue;
                        _needAuxFcn = ((_se.value.ntype & ((32 : GoUInt16))) != ((0 : GoUInt16))) && (_numaux > ((1 : GoInt)));
                        {
                            var __tmp__ = _getString(_f.value.stringTable, _se.value.noffset);
                            _sym.value.name = __tmp__._0;
                            _ok = __tmp__._1;
                        };
                        if (!_ok) {
                            @:goto "skip";
                        };
                    };
                    if (((_sym.value.storageClass != ((2 : GoInt))) && (_sym.value.storageClass != ((111 : GoInt)))) && (_sym.value.storageClass != ((107 : GoInt)))) {
                        @:goto "skip";
                    };
                    if ((_numaux < ((1 : GoInt))) || ((_i + _numaux) >= ((_nsyms : GoInt)))) {
                        @:goto "skip";
                    };
                    if (_sym.value.sectionNumber > ((_nscns : GoInt))) {
                        @:goto "skip";
                    };
                    if (_sym.value.sectionNumber == ((0 : GoInt))) {
                        _sym.value.value = ((0 : GoUInt64));
                    } else {
                        _sym.value.value = _sym.value.value - (_f.value.sections[_sym.value.sectionNumber - ((1 : GoInt))].value.sectionHeader.virtualAddress);
                    };
                    _idxToSym[_i] = _sym;
                    if (_needAuxFcn) {
                        if (_f.value.fileHeader.targetMachine == ((479 : GoUInt16))) {
                            var _aux:Pointer<AuxFcn32> = Go.pointer(new AuxFcn32());
                            {
                                var _err:stdgo.Error = stdgo.encoding.binary.Binary.read(_sr.value, stdgo.encoding.binary.Binary.bigEndian.__copy__(), Go.toInterface(_aux));
                                if (Go.toInterface(_err) != Go.toInterface(null)) {
                                    return { _0 : null, _1 : _err };
                                };
                            };
                            _sym.value.auxFcn.size = ((_aux.value.xfsize : GoInt64));
                        } else if (_f.value.fileHeader.targetMachine == ((503 : GoUInt16))) {
                            var _aux:Pointer<AuxFcn64> = Go.pointer(new AuxFcn64());
                            {
                                var _err:stdgo.Error = stdgo.encoding.binary.Binary.read(_sr.value, stdgo.encoding.binary.Binary.bigEndian.__copy__(), Go.toInterface(_aux));
                                if (Go.toInterface(_err) != Go.toInterface(null)) {
                                    return { _0 : null, _1 : _err };
                                };
                            };
                            _sym.value.auxFcn.size = ((_aux.value.xfsize : GoInt64));
                        };
                    };
                    if (!_needAuxFcn) {
                        {
                            var __tmp__ = _sr.value.seek((((_numaux - ((1 : GoInt))) : GoInt64)) * ((18 : GoInt64)), ((1 : GoInt))), _:GoInt64 = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                            if (Go.toInterface(_err) != Go.toInterface(null)) {
                                return { _0 : null, _1 : _err };
                            };
                        };
                    };
                    _i = _i + (_numaux);
                    _numaux = ((0 : GoInt));
                    if (_f.value.fileHeader.targetMachine == ((479 : GoUInt16))) {
                        var _aux:Pointer<AuxCSect32> = Go.pointer(new AuxCSect32());
                        {
                            var _err:stdgo.Error = stdgo.encoding.binary.Binary.read(_sr.value, stdgo.encoding.binary.Binary.bigEndian.__copy__(), Go.toInterface(_aux));
                            if (Go.toInterface(_err) != Go.toInterface(null)) {
                                return { _0 : null, _1 : _err };
                            };
                        };
                        _sym.value.auxCSect.symbolType = (((_aux.value.xsmtyp & ((7 : GoUInt8))) : GoInt));
                        _sym.value.auxCSect.storageMappingClass = ((_aux.value.xsmclas : GoInt));
                        _sym.value.auxCSect.length = ((_aux.value.xscnlen : GoInt64));
                    } else if (_f.value.fileHeader.targetMachine == ((503 : GoUInt16))) {
                        var _aux:Pointer<AuxCSect64> = Go.pointer(new AuxCSect64());
                        {
                            var _err:stdgo.Error = stdgo.encoding.binary.Binary.read(_sr.value, stdgo.encoding.binary.Binary.bigEndian.__copy__(), Go.toInterface(_aux));
                            if (Go.toInterface(_err) != Go.toInterface(null)) {
                                return { _0 : null, _1 : _err };
                            };
                        };
                        _sym.value.auxCSect.symbolType = (((_aux.value.xsmtyp & ((7 : GoUInt8))) : GoInt));
                        _sym.value.auxCSect.storageMappingClass = ((_aux.value.xsmclas : GoInt));
                        _sym.value.auxCSect.length = (((_aux.value.xscnlenhi : GoInt64)) << ((32 : GoUnTypedInt))) | ((_aux.value.xscnlenlo : GoInt64));
                    };
                    _f.value.symbols = _f.value.symbols.__append__(_sym);
                    @:label("skip") _i = _i + (_numaux);
                    {
                        var __tmp__ = _sr.value.seek(((_numaux : GoInt64)) * ((18 : GoInt64)), ((1 : GoInt))), _:GoInt64 = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                        if (Go.toInterface(_err) != Go.toInterface(null)) {
                            return { _0 : null, _1 : _err };
                        };
                    };
                });
            };
            for (_ => _sect in _f.value.sections) {
                if ((_sect.value.sectionHeader.type != ((32 : GoUInt32))) && (_sect.value.sectionHeader.type != ((64 : GoUInt32)))) {
                    continue;
                };
                _sect.value.relocs = new Slice<Reloc>(...[for (i in 0 ... ((_sect.value.sectionHeader.nreloc : GoInt)).toBasic()) new Reloc()]);
                if (_sect.value.sectionHeader.relptr == ((0 : GoUInt64))) {
                    continue;
                };
                {
                    var __tmp__ = _sr.value.seek(((_sect.value.sectionHeader.relptr : GoInt64)), ((0 : GoInt))), _:GoInt64 = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                    if (Go.toInterface(_err) != Go.toInterface(null)) {
                        return { _0 : null, _1 : _err };
                    };
                };
                {
                    var _i:GoUInt32 = ((((0 : GoUInt32)) : GoUInt32));
                    Go.cfor(_i < _sect.value.sectionHeader.nreloc, _i++, {
                        if (_f.value.fileHeader.targetMachine == ((479 : GoUInt16))) {
                            var _rel:Pointer<Reloc32> = Go.pointer(new Reloc32());
                            {
                                var _err:stdgo.Error = stdgo.encoding.binary.Binary.read(_sr.value, stdgo.encoding.binary.Binary.bigEndian.__copy__(), Go.toInterface(_rel));
                                if (Go.toInterface(_err) != Go.toInterface(null)) {
                                    return { _0 : null, _1 : _err };
                                };
                            };
                            _sect.value.relocs[_i].virtualAddress = ((_rel.value.rvaddr : GoUInt64));
                            _sect.value.relocs[_i].symbol = _idxToSym[((_rel.value.rsymndx : GoInt))];
                            _sect.value.relocs[_i].type = _rel.value.rtype;
                            _sect.value.relocs[_i].length = (_rel.value.rsize & ((63 : GoUInt8))) + ((1 : GoUInt8));
                            if ((_rel.value.rsize & ((128 : GoUInt8))) != ((0 : GoUInt8))) {
                                _sect.value.relocs[_i].signed = true;
                            };
                            if ((_rel.value.rsize & ((64 : GoUInt8))) != ((0 : GoUInt8))) {
                                _sect.value.relocs[_i].instructionFixed = true;
                            };
                        } else if (_f.value.fileHeader.targetMachine == ((503 : GoUInt16))) {
                            var _rel:Pointer<Reloc64> = Go.pointer(new Reloc64());
                            {
                                var _err:stdgo.Error = stdgo.encoding.binary.Binary.read(_sr.value, stdgo.encoding.binary.Binary.bigEndian.__copy__(), Go.toInterface(_rel));
                                if (Go.toInterface(_err) != Go.toInterface(null)) {
                                    return { _0 : null, _1 : _err };
                                };
                            };
                            _sect.value.relocs[_i].virtualAddress = _rel.value.rvaddr;
                            _sect.value.relocs[_i].symbol = _idxToSym[((_rel.value.rsymndx : GoInt))];
                            _sect.value.relocs[_i].type = _rel.value.rtype;
                            _sect.value.relocs[_i].length = (_rel.value.rsize & ((63 : GoUInt8))) + ((1 : GoUInt8));
                            if ((_rel.value.rsize & ((128 : GoUInt8))) != ((0 : GoUInt8))) {
                                _sect.value.relocs[_i].signed = true;
                            };
                            if ((_rel.value.rsize & ((64 : GoUInt8))) != ((0 : GoUInt8))) {
                                _sect.value.relocs[_i].instructionFixed = true;
                            };
                        };
                    });
                };
            };
            return { _0 : _f, _1 : ((null : stdgo.Error)) };
        });
    }
class Archive_extension_fields {
    public function close(__tmp__):Error return __tmp__.close();
    public function getFile(__tmp__, _name:GoString):{ var _0 : Pointer<File>; var _1 : Error; } return __tmp__.getFile(_name);
}
class Section_extension_fields {
    public function data(__tmp__):{ var _0 : Slice<GoByte>; var _1 : Error; } return __tmp__.data();
}
class File_extension_fields {
    public function close(__tmp__):Error return __tmp__.close();
    public function section(__tmp__, _name:GoString):Pointer<Section> return __tmp__.section(_name);
    public function sectionByType(__tmp__, _typ:GoUInt32):Pointer<Section> return __tmp__.sectionByType(_typ);
    public function csect(__tmp__, _name:GoString):Slice<GoByte> return __tmp__.csect(_name);
    public function dwarf(__tmp__):{ var _0 : Pointer<stdgo.debug.dwarf.Dwarf.Data>; var _1 : Error; } return __tmp__.dwarf();
    public function _readImportIDs(__tmp__, _s:Pointer<Section>):{ var _0 : Slice<GoString>; var _1 : Error; } return __tmp__._readImportIDs(_s);
    public function importedSymbols(__tmp__):{ var _0 : Slice<ImportedSymbol>; var _1 : Error; } return __tmp__.importedSymbols();
    public function importedLibraries(__tmp__):{ var _0 : Slice<GoString>; var _1 : Error; } return __tmp__.importedLibraries();
}
class T_zeroReaderAt_extension_fields {
    public function readAt(__tmp__, _p:Slice<GoByte>, _off:GoInt64):{ var _0 : GoInt; var _1 : Error; } return __tmp__.readAt(_p, _off);
}
