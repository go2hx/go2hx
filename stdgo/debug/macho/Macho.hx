package stdgo.debug.macho;

import stdgo.StdGoTypes;
import stdgo.Error;
import stdgo.Go;
import stdgo.GoString;
import stdgo.Pointer;
import stdgo.Slice;
import stdgo.GoArray;
import stdgo.GoMap;
import stdgo.Chan;

typedef Load = StructType & {
	public function raw():Slice<GoByte>;
};

@:structInit class FatFile {
	public function close():Error {
		var _ff = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
		var _err:Error = ((null : stdgo.Error));
		if (_ff.value._closer != null) {
			_err = _ff.value._closer.close();
			_ff.value._closer = ((null : stdgo.io.Io.Closer));
		};
		return _err;
	}

	public var magic:GoUInt32 = ((0 : GoUInt32));
	public var arches:Slice<FatArch> = new Slice<FatArch>().nil();
	public var _closer:stdgo.io.Io.Closer = ((null : stdgo.io.Io.Closer));

	public function new(?magic:GoUInt32, ?arches:Slice<FatArch>, ?_closer:stdgo.io.Io.Closer)
		stdgo.internal.Macro.initLocals();

	public function toString() {
		return '{' + Go.string(magic) + " " + Go.string(arches) + " " + Go.string(_closer) + "}";
	}

	public function __underlying__():AnyInterface
		return Go.toInterface(this);

	public function __copy__() {
		return new FatFile(magic, arches, _closer);
	}

	public function __set__(__tmp__) {
		this.magic = __tmp__.magic;
		this.arches = __tmp__.arches;
		this._closer = __tmp__._closer;
		return this;
	}
}

@:structInit class FatArchHeader {
	public var cpu:Cpu = new Cpu();
	public var subCpu:GoUInt32 = ((0 : GoUInt32));
	public var offset:GoUInt32 = ((0 : GoUInt32));
	public var size:GoUInt32 = ((0 : GoUInt32));
	public var align:GoUInt32 = ((0 : GoUInt32));

	public function new(?cpu:Cpu, ?subCpu:GoUInt32, ?offset:GoUInt32, ?size:GoUInt32, ?align:GoUInt32)
		stdgo.internal.Macro.initLocals();

	public function toString() {
		return '{'
			+ Go.string(cpu)
			+ " "
			+ Go.string(subCpu)
			+ " "
			+ Go.string(offset)
			+ " "
			+ Go.string(size)
			+ " "
			+ Go.string(align)
			+ "}";
	}

	public function __underlying__():AnyInterface
		return Go.toInterface(this);

	public function __copy__() {
		return new FatArchHeader(cpu, subCpu, offset, size, align);
	}

	public function __set__(__tmp__) {
		this.cpu = __tmp__.cpu;
		this.subCpu = __tmp__.subCpu;
		this.offset = __tmp__.offset;
		this.size = __tmp__.size;
		this.align = __tmp__.align;
		return this;
	}
}

@:structInit class FatArch {
	@:embedded
	public var fatArchHeader:FatArchHeader = new FatArchHeader();
	@:embedded
	public var file:Pointer<File> = new Pointer<File>().nil();

	public function new(?fatArchHeader:FatArchHeader, ?file:Pointer<File>)
		stdgo.internal.Macro.initLocals();

	public function toString() {
		return '{' + Go.string(fatArchHeader) + " " + Go.string(file) + "}";
	}

	public function close():stdgo.Error
		return file.close();

	public function dwarf():{var _0:() -> {
		var _0:Pointer<stdgo.debug.dwarf.Dwarf.Data>;
		var _1:stdgo.Error;
	}; var _1:() -> {
		var _0:Pointer<stdgo.debug.dwarf.Dwarf.Data>;
		var _1:stdgo.Error;
		};}
		return file.dwarf();

	public function importedLibraries():{var _0:() -> {
		var _0:Slice<GoString>;
		var _1:stdgo.Error;
	}; var _1:() -> {
		var _0:Slice<GoString>;
		var _1:stdgo.Error;
		};}
		return file.importedLibraries();

	public function importedSymbols():{var _0:() -> {
		var _0:Slice<GoString>;
		var _1:stdgo.Error;
	}; var _1:() -> {
		var _0:Slice<GoString>;
		var _1:stdgo.Error;
		};}
		return file.importedSymbols();

	public function section(_name:GoString):Pointer<Section>
		return file.section(_0);

	public function segment(_name:GoString):Pointer<Segment>
		return file.segment(_0);

	public function _parseSymtab(_symdat:Slice<GoUInt8>, _strtab:Slice<GoUInt8>, _cmddat:Slice<GoUInt8>, _hdr:Pointer<SymtabCmd>,
			_offset:GoInt64):{var _0:(Slice<GoUInt8>, Slice<GoUInt8>, Slice<GoUInt8>, Pointer<SymtabCmd>, GoInt64) -> {
		var _0:Pointer<Symtab>;
		var _1:stdgo.Error;
	}; var _1:(Slice<GoUInt8>, Slice<GoUInt8>, Slice<GoUInt8>, Pointer<SymtabCmd>, GoInt64) -> {
		var _0:Pointer<Symtab>;
		var _1:stdgo.Error;
		};}
		return file._parseSymtab(_0, _1, _2, _3, _4);

	public function _pushSection(_sh:Pointer<Section>, _r:stdgo.io.Io.ReaderAt):stdgo.Error
		return file._pushSection(_0, _1);

	public function __underlying__():AnyInterface
		return Go.toInterface(this);

	public function __copy__() {
		return new FatArch(fatArchHeader, file);
	}

	public function __set__(__tmp__) {
		this.fatArchHeader = __tmp__.fatArchHeader;
		this.file = __tmp__.file;
		return this;
	}
}

@:structInit class File {
	public function importedLibraries():{var _0:Slice<GoString>; var _1:Error;} {
		var _f = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
		var _all:Slice<GoString> = new Slice<GoString>().nil();
		for (_l in _f.value.loads) {
			{
				var __tmp__ = try {
					{value: ((_l.__underlying__().value : Dylib)), ok: true};
				} catch (_) {
					{value: new Pointer<Dylib>().nil(), ok: false};
				}, _lib = __tmp__.value, _ok = __tmp__.ok;
				if (_ok) {
					_all = _all.__append__(_lib.value.name);
				};
			};
		};
		return {_0: _all, _1: ((null : stdgo.Error))};
	}

	public function importedSymbols():{var _0:Slice<GoString>; var _1:Error;} {
		var _f = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
		if (_f.value.dysymtab == null || _f.value.dysymtab.isNil() || _f.value.symtab == null || _f.value.symtab.isNil()) {
			return {_0: new Slice<GoString>().nil(), _1: Go.pointer(new FormatError(((0 : GoInt64)), "missing symbol table", ((null : AnyInterface)))).value};
		};
		var _st:Pointer<Symtab> = _f.value.symtab;
		var _dt:Pointer<Dysymtab> = _f.value.dysymtab;
		var _all:Slice<GoString> = new Slice<GoString>().nil();
		for (_s in _st.value.syms.__slice__(_dt.value.dysymtabCmd.iundefsym, _dt.value.dysymtabCmd.iundefsym + _dt.value.dysymtabCmd.nundefsym)) {
			_all = _all.__append__(_s.name);
		};
		return {_0: _all, _1: ((null : stdgo.Error))};
	}

	public function dwarf():{var _0:Pointer<stdgo.debug.dwarf.Dwarf.Data>; var _1:Error;} {
		var _f = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
		var _dwarfSuffix:Pointer<Section>->GoString = function(_s:Pointer<Section>):GoString {
			if (stdgo.strings.Strings.hasPrefix(_s.value.sectionHeader.name, "__debug_")) {
				return _s.value.sectionHeader.name.__slice__(((8 : GoInt)));
			} else if (stdgo.strings.Strings.hasPrefix(_s.value.sectionHeader.name, "__zdebug_")) {
				return _s.value.sectionHeader.name.__slice__(((9 : GoInt)));
			} else {
				return "";
			};
		};
		var _sectionData:Pointer<Section> -> {
			var _0:Slice<GoUInt8>;
			var _1:stdgo.Error;
		} = function(_s:Pointer<Section>):{var _0:Slice<GoByte>; var _1:Error;} {
			var __tmp__ = _s.value.data(), _b:Slice<GoUInt8> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
			if (_err != null && ((_b.length : GoUInt64)) < _s.value.sectionHeader.size) {
				return {_0: new Slice<GoUInt8>().nil(), _1: _err};
			};
			if (_b.length >= ((12 : GoInt)) && ((_b.__slice__(0, ((4 : GoInt))) : GoString)) == (("ZLIB" : GoString))) {
				var _dlen:GoUInt64 = stdgo.encoding.binary.Binary.bigEndian.uint64(_b.__slice__(((4 : GoInt)), ((12 : GoInt))));
				var _dbuf:Slice<GoUInt8> = new Slice<GoUInt8>(...[for (i in 0...((_dlen : GoInt)).toBasic()) ((0 : GoUInt8))]);
				var __tmp__ = stdgo.compress.zlib.Zlib.newReader(stdgo.bytes.Bytes.newBuffer(_b.__slice__(((12 : GoInt))))
					.value), _r:stdgo.io.Io.ReadCloser = __tmp__._0, _err:stdgo.Error = __tmp__._1;
				if (_err != null) {
					return {_0: new Slice<GoUInt8>().nil(), _1: _err};
				};
				{
					var __tmp__ = stdgo.io.Io.readFull(_r, _dbuf), _:GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
					if (_err != null) {
						return {_0: new Slice<GoUInt8>().nil(), _1: _err};
					};
				};
				{
					var _err:stdgo.Error = _r.close();
					if (_err != null) {
						return {_0: new Slice<GoUInt8>().nil(), _1: _err};
					};
				};
				_b = _dbuf;
			};
			return {_0: _b, _1: ((null : stdgo.Error))};
		};
		var _dat:GoMap<GoString, Slice<GoUInt8>> = new GoMap<GoString,
			Slice<GoUInt8>>(new stdgo.reflect.Reflect._Type(stdgo.reflect.Reflect.GoType.mapType(stdgo.reflect.Reflect.GoType.basic(string_kind),
				stdgo.reflect.Reflect.GoType.sliceType(stdgo.reflect.Reflect.GoType.basic(uint8_kind)))),
			{
				key: "abbrev",
				value: new Slice<GoUInt8>().nil()
			},
			{key: "info", value: new Slice<GoUInt8>().nil()}, {key: "str", value: new Slice<GoUInt8>().nil()},
			{key: "line", value: new Slice<GoUInt8>().nil()}, {key: "ranges", value: new Slice<GoUInt8>().nil()});
		for (_s in _f.value.sections) {
			var _suffix:GoString = _dwarfSuffix(_s);
			if (_suffix == (("" : GoString))) {
				continue;
			};
			{
				var __tmp__ = _dat.exists(_suffix) ? {value: _dat[_suffix], ok: true} : {value: _dat.defaultValue(), ok: false},
					_:Slice<GoUInt8> = __tmp__.value,
					_ok:Bool = __tmp__.ok;
				if (!_ok) {
					continue;
				};
			};
			var __tmp__ = _sectionData(_s),
				_b:Slice<GoUInt8> = __tmp__._0,
				_err:stdgo.Error = __tmp__._1;
			if (_err != null) {
				return {_0: new Pointer<stdgo.debug.dwarf.Dwarf.Data>().nil(), _1: _err};
			};
			_dat[_suffix] = _b;
		};
		var __tmp__ = stdgo.debug.dwarf.Dwarf.new_(_dat["abbrev"], new Slice<GoUInt8>().nil(), new Slice<GoUInt8>().nil(), _dat["info"], _dat["line"],
			new Slice<GoUInt8>().nil(), _dat["ranges"], _dat["str"]),
			_d:Pointer<stdgo.debug.dwarf.Dwarf.Data> = __tmp__._0,
			_err:stdgo.Error = __tmp__._1;
		if (_err != null) {
			return {_0: new Pointer<stdgo.debug.dwarf.Dwarf.Data>().nil(), _1: _err};
		};
		{
			var _i;
			var _s;
			for (_obj in _f.value.sections.keyValueIterator()) {
				_i = _obj.key;
				_s = _obj.value;
				var _suffix:GoString = _dwarfSuffix(_s);
				if (_suffix != (("types" : GoString))) {
					continue;
				};
				var __tmp__ = _sectionData(_s),
					_b:Slice<GoUInt8> = __tmp__._0,
					_err:stdgo.Error = __tmp__._1;
				if (_err != null) {
					return {_0: new Pointer<stdgo.debug.dwarf.Dwarf.Data>().nil(), _1: _err};
				};
				_err = _d.value.addTypes(stdgo.fmt.Fmt.sprintf("types-%d", Go.toInterface(_i)), _b);
				if (_err != null) {
					return {_0: new Pointer<stdgo.debug.dwarf.Dwarf.Data>().nil(), _1: _err};
				};
			};
		};
		return {_0: _d, _1: ((null : stdgo.Error))};
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

	public function segment(_name:GoString):Pointer<Segment> {
		var _f = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
		for (_l in _f.value.loads) {
			{
				var __tmp__ = try {
					{value: ((_l.__underlying__().value : Segment)), ok: true};
				} catch (_) {
					{value: new Pointer<Segment>().nil(), ok: false};
				}, _s = __tmp__.value, _ok = __tmp__.ok;
				if (_ok && _s.value.segmentHeader.name == _name) {
					return _s;
				};
			};
		};
		return new Pointer<Segment>().nil();
	}

	public function _pushSection(_sh:Pointer<Section>, _r:stdgo.io.Io.ReaderAt):Error {
		var _f = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
		_f.value.sections = _f.value.sections.__append__(_sh);
		_sh.value._sr = stdgo.io.Io.newSectionReader(_r, ((_sh.value.sectionHeader.offset : GoInt64)), ((_sh.value.sectionHeader.size : GoInt64)));
		_sh.value.readerAt = _sh.value._sr.value;
		if (_sh.value.sectionHeader.nreloc > ((0 : GoUInt32))) {
			var _reldat:Slice<GoUInt8> = new Slice<GoUInt8>(...[
				for (i in 0...((((_sh.value.sectionHeader.nreloc : GoInt)) * ((8 : GoInt)) : GoInt)).toBasic()) ((0 : GoUInt8))
			]);
			{
				var __tmp__ = _r.readAt(_reldat, ((_sh.value.sectionHeader.reloff : GoInt64))),
					_:GoInt = __tmp__._0,
					_err:stdgo.Error = __tmp__._1;
				if (_err != null) {
					return _err;
				};
			};
			var _b:Pointer<stdgo.bytes.Bytes.Reader> = stdgo.bytes.Bytes.newReader(_reldat);
			var _bo:stdgo.encoding.binary.Binary.ByteOrder = _f.value.byteOrder;
			_sh.value.relocs = new Slice<Reloc>(...[for (i in 0...((_sh.value.sectionHeader.nreloc : GoInt)).toBasic()) new Reloc()]);
			{
				var _i;
				for (_obj in _sh.value.relocs.keyValueIterator()) {
					_i = _obj.key;
					var _rel:Pointer<Reloc> = Go.pointer(_sh.value.relocs[_i]);
					var _ri:T_relocInfo = new T_relocInfo();
					{
						var _err:stdgo.Error = stdgo.encoding.binary.Binary.read(_b.value, _bo, Go.toInterface(Go.pointer(_ri)));
						if (_err != null) {
							return _err;
						};
					};
					if (_ri.addr & ((((1 : GoUnTypedInt)) << ((31 : GoUnTypedInt)))) != ((0 : GoUInt32))) {
						_rel.value.addr = _ri.addr & ((((1 : GoUnTypedInt)) << ((24 : GoUnTypedInt))) - ((1 : GoUnTypedInt)));
						_rel.value.type = (((((_ri.addr >> ((24 : GoUnTypedInt)))) & ((((1 : GoUnTypedInt)) << ((4 : GoUnTypedInt))) - ((1 : GoUnTypedInt)))) : GoUInt8));
						_rel.value.len = (((((_ri.addr >> ((28 : GoUnTypedInt)))) & ((((1 : GoUnTypedInt)) << ((2 : GoUnTypedInt))) - ((1 : GoUnTypedInt)))) : GoUInt8));
						_rel.value.pcrel = _ri.addr & ((((1 : GoUnTypedInt)) << ((30 : GoUnTypedInt)))) != ((0 : GoUInt32));
						_rel.value.value = _ri.symnum;
						_rel.value.scattered = true;
					} else {
						if (Go.toInterface(_bo) == Go.toInterface(stdgo.encoding.binary.Binary.littleEndian)) {
							_rel.value.addr = _ri.addr;
							_rel.value.value = _ri.symnum & ((((1 : GoUnTypedInt)) << ((24 : GoUnTypedInt))) - ((1 : GoUnTypedInt)));
							_rel.value.pcrel = _ri.symnum & ((((1 : GoUnTypedInt)) << ((24 : GoUnTypedInt)))) != ((0 : GoUInt32));
							_rel.value.len = (((((_ri.symnum >> ((25 : GoUnTypedInt)))) & ((((1 : GoUnTypedInt)) << ((2 : GoUnTypedInt)))
								- ((1 : GoUnTypedInt)))) : GoUInt8));
							_rel.value.extern_ = _ri.symnum & ((((1 : GoUnTypedInt)) << ((27 : GoUnTypedInt)))) != ((0 : GoUInt32));
							_rel.value.type = (((((_ri.symnum >> ((28 : GoUnTypedInt)))) & ((((1 : GoUnTypedInt)) << ((4 : GoUnTypedInt)))
								- ((1 : GoUnTypedInt)))) : GoUInt8));
						} else if (Go.toInterface(_bo) == Go.toInterface(stdgo.encoding.binary.Binary.bigEndian)) {
							_rel.value.addr = _ri.addr;
							_rel.value.value = (_ri.symnum >> ((8 : GoUnTypedInt)));
							_rel.value.pcrel = _ri.symnum & ((((1 : GoUnTypedInt)) << ((7 : GoUnTypedInt)))) != ((0 : GoUInt32));
							_rel.value.len = (((((_ri.symnum >> ((5 : GoUnTypedInt)))) & ((((1 : GoUnTypedInt)) << ((2 : GoUnTypedInt))) - ((1 : GoUnTypedInt)))) : GoUInt8));
							_rel.value.extern_ = _ri.symnum & ((((1 : GoUnTypedInt)) << ((4 : GoUnTypedInt)))) != ((0 : GoUInt32));
							_rel.value.type = (((_ri.symnum & ((((1 : GoUnTypedInt)) << ((4 : GoUnTypedInt))) - ((1 : GoUnTypedInt)))) : GoUInt8));
						} else {
							throw "unreachable";
						};
					};
				};
			};
		};
		return ((null : stdgo.Error));
	}

	public function _parseSymtab(_symdat:Slice<GoByte>, _strtab:Slice<GoByte>, _cmddat:Slice<GoByte>, _hdr:Pointer<SymtabCmd>,
			_offset:GoInt64):{var _0:Pointer<Symtab>; var _1:Error;} {
		var _f = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
		var _bo:stdgo.encoding.binary.Binary.ByteOrder = _f.value.byteOrder;
		var _symtab:Slice<Symbol> = new Slice<Symbol>(...[for (i in 0...((_hdr.value.nsyms : GoInt)).toBasic()) new Symbol()]);
		var _b:Pointer<stdgo.bytes.Bytes.Reader> = stdgo.bytes.Bytes.newReader(_symdat);
		{
			var _i;
			for (_obj in _symtab.keyValueIterator()) {
				_i = _obj.key;
				var _n:Nlist64 = new Nlist64();
				if (_f.value.fileHeader.magic == magic64) {
					{
						var _err:stdgo.Error = stdgo.encoding.binary.Binary.read(_b.value, _bo, Go.toInterface(Go.pointer(_n)));
						if (_err != null) {
							return {_0: new Pointer<Symtab>().nil(), _1: _err};
						};
					};
				} else {
					var _n32:Nlist32 = new Nlist32();
					{
						var _err:stdgo.Error = stdgo.encoding.binary.Binary.read(_b.value, _bo, Go.toInterface(Go.pointer(_n32)));
						if (_err != null) {
							return {_0: new Pointer<Symtab>().nil(), _1: _err};
						};
					};
					_n.name = _n32.name;
					_n.type = _n32.type;
					_n.sect = _n32.sect;
					_n.desc = _n32.desc;
					_n.value = ((_n32.value : GoUInt64));
				};
				var _sym:Pointer<Symbol> = Go.pointer(_symtab[_i]);
				if (_n.name >= ((_strtab.length : GoUInt32))) {
					return {_0: new Pointer<Symtab>().nil(), _1: Go.pointer(new FormatError(_offset, "invalid name in symbol table", Go.toInterface(_n.name)))
						.value};
				};
				var _name:GoString = _cstring(_strtab.__slice__(_n.name));
				if (stdgo.strings.Strings.contains(_name, ".") && _name[((0 : GoInt))] == (("_".code : GoRune))) {
					_name = _name.__slice__(((1 : GoInt)));
				};
				_sym.value.name = _name;
				_sym.value.type = _n.type;
				_sym.value.sect = _n.sect;
				_sym.value.desc = _n.desc;
				_sym.value.value = _n.value;
			};
		};
		var _st:Pointer<Symtab> = Go.pointer(new Symtab());
		_st.value.loadBytes = new LoadBytes(_cmddat).__copy__();
		_st.value.syms = _symtab;
		return {_0: _st, _1: ((null : stdgo.Error))};
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

	@:embedded
	public var fileHeader:FileHeader = new FileHeader();
	public var byteOrder:stdgo.encoding.binary.Binary.ByteOrder = ((null : stdgo.encoding.binary.Binary.ByteOrder));
	public var loads:Slice<Load> = new Slice<Load>().nil();
	public var sections:Slice<Pointer<Section>> = new Slice<Pointer<Section>>().nil();
	public var symtab:Pointer<Symtab> = new Pointer<Symtab>().nil();
	public var dysymtab:Pointer<Dysymtab> = new Pointer<Dysymtab>().nil();
	public var _closer:stdgo.io.Io.Closer = ((null : stdgo.io.Io.Closer));

	public function new(?fileHeader:FileHeader, ?byteOrder:stdgo.encoding.binary.Binary.ByteOrder, ?loads:Slice<Load>, ?sections:Slice<Pointer<Section>>,
			?symtab:Pointer<Symtab>, ?dysymtab:Pointer<Dysymtab>, ?_closer:stdgo.io.Io.Closer)
		stdgo.internal.Macro.initLocals();

	public function toString() {
		return '{' + Go.string(fileHeader) + " " + Go.string(byteOrder) + " " + Go.string(loads) + " " + Go.string(sections) + " " + Go.string(symtab) + " "
			+ Go.string(dysymtab) + " " + Go.string(_closer) + "}";
	}

	public function __underlying__():AnyInterface
		return Go.toInterface(this);

	public function __copy__() {
		return new File(fileHeader, byteOrder, loads, sections, symtab, dysymtab, _closer);
	}

	public function __set__(__tmp__) {
		this.fileHeader = __tmp__.fileHeader;
		this.byteOrder = __tmp__.byteOrder;
		this.loads = __tmp__.loads;
		this.sections = __tmp__.sections;
		this.symtab = __tmp__.symtab;
		this.dysymtab = __tmp__.dysymtab;
		this._closer = __tmp__._closer;
		return this;
	}
}

@:named class LoadBytes {
	public function raw():Slice<GoByte> {
		var _b = this.__copy__();
		return _b.__copy__().__t__;
	}

	public var __t__:Slice<GoUInt8>;

	public function new(?t:Slice<GoUInt8>) {
		__t__ = t == null ? new Slice<GoUInt8>().nil() : t;
	}

	public function __underlying__():AnyInterface
		return Go.toInterface(this);

	@:implicit
	public function toString():GoString
		return Go.string(__t__);

	public function __copy__()
		return new LoadBytes(__t__);

	public function __append__(args:haxe.Rest<GoUInt8>)
		return new LoadBytes(this.__t__.__append__(...args));

	public function __slice__(low:GoInt, high:GoInt = -1)
		return new LoadBytes(this.__t__.__slice__(low, high));
}

@:structInit class SegmentHeader {
	public var cmd:LoadCmd = new LoadCmd();
	public var len:GoUInt32 = ((0 : GoUInt32));
	public var name:GoString = (("" : GoString));
	public var addr:GoUInt64 = ((0 : GoUInt64));
	public var memsz:GoUInt64 = ((0 : GoUInt64));
	public var offset:GoUInt64 = ((0 : GoUInt64));
	public var filesz:GoUInt64 = ((0 : GoUInt64));
	public var maxprot:GoUInt32 = ((0 : GoUInt32));
	public var prot:GoUInt32 = ((0 : GoUInt32));
	public var nsect:GoUInt32 = ((0 : GoUInt32));
	public var flag:GoUInt32 = ((0 : GoUInt32));

	public function new(?cmd:LoadCmd, ?len:GoUInt32, ?name:GoString, ?addr:GoUInt64, ?memsz:GoUInt64, ?offset:GoUInt64, ?filesz:GoUInt64, ?maxprot:GoUInt32,
			?prot:GoUInt32, ?nsect:GoUInt32, ?flag:GoUInt32)
		stdgo.internal.Macro.initLocals();

	public function toString() {
		return '{' + Go.string(cmd) + " " + Go.string(len) + " " + Go.string(name) + " " + Go.string(addr) + " " + Go.string(memsz) + " "
			+ Go.string(offset) + " " + Go.string(filesz) + " " + Go.string(maxprot) + " " + Go.string(prot) + " " + Go.string(nsect) + " " + Go.string(flag)
			+ "}";
	}

	public function __underlying__():AnyInterface
		return Go.toInterface(this);

	public function __copy__() {
		return new SegmentHeader(cmd, len, name, addr, memsz, offset, filesz, maxprot, prot, nsect, flag);
	}

	public function __set__(__tmp__) {
		this.cmd = __tmp__.cmd;
		this.len = __tmp__.len;
		this.name = __tmp__.name;
		this.addr = __tmp__.addr;
		this.memsz = __tmp__.memsz;
		this.offset = __tmp__.offset;
		this.filesz = __tmp__.filesz;
		this.maxprot = __tmp__.maxprot;
		this.prot = __tmp__.prot;
		this.nsect = __tmp__.nsect;
		this.flag = __tmp__.flag;
		return this;
	}
}

@:structInit class Segment {
	public function open():stdgo.io.Io.ReadSeeker {
		var _s = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
		return stdgo.io.Io.newSectionReader(_s.value._sr.value, ((0 : GoInt64)), (((1 : GoUnTypedInt)) << ((63 : GoUnTypedInt))) - ((1 : GoUnTypedInt))).value;
	}

	public function data():{var _0:Slice<GoByte>; var _1:Error;} {
		var _s = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
		var _dat:Slice<GoUInt8> = new Slice<GoUInt8>(...[for (i in 0...((_s.value._sr.value.size() : GoInt)).toBasic()) ((0 : GoUInt8))]);
		var __tmp__ = _s.value._sr.value.readAt(_dat, ((0 : GoInt64))),
			_n:GoInt = __tmp__._0,
			_err:stdgo.Error = __tmp__._1;
		if (_n == _dat.length) {
			_err = ((null : stdgo.Error));
		};
		return {_0: _dat.__slice__(((0 : GoInt)), _n), _1: _err};
	}

	@:embedded
	public var loadBytes:LoadBytes = new LoadBytes();
	@:embedded
	public var segmentHeader:SegmentHeader = new SegmentHeader();
	@:embedded
	public var readerAt:stdgo.io.Io.ReaderAt = ((null : stdgo.io.Io.ReaderAt));
	public var _sr:Pointer<stdgo.io.Io.SectionReader> = new Pointer<stdgo.io.Io.SectionReader>().nil();

	public function new(?loadBytes:LoadBytes, ?segmentHeader:SegmentHeader, ?readerAt:stdgo.io.Io.ReaderAt, ?_sr:Pointer<stdgo.io.Io.SectionReader>)
		stdgo.internal.Macro.initLocals();

	public function toString() {
		return '{' + Go.string(loadBytes) + " " + Go.string(segmentHeader) + " " + Go.string(readerAt) + " " + Go.string(_sr) + "}";
	}

	public function raw():Slice<GoUInt8>
		return loadBytes.raw();

	public function readAt(_p:Slice<GoUInt8>, _off:GoInt64):{var _0:GoInt; var _1:stdgo.Error;}
		return readerAt.readAt(_0, _1);

	public function __underlying__():AnyInterface
		return Go.toInterface(this);

	public function __copy__() {
		return new Segment(loadBytes, segmentHeader, readerAt, _sr);
	}

	public function __set__(__tmp__) {
		this.loadBytes = __tmp__.loadBytes;
		this.segmentHeader = __tmp__.segmentHeader;
		this.readerAt = __tmp__.readerAt;
		this._sr = __tmp__._sr;
		return this;
	}
}

@:structInit class SectionHeader {
	public var name:GoString = (("" : GoString));
	public var seg:GoString = (("" : GoString));
	public var addr:GoUInt64 = ((0 : GoUInt64));
	public var size:GoUInt64 = ((0 : GoUInt64));
	public var offset:GoUInt32 = ((0 : GoUInt32));
	public var align:GoUInt32 = ((0 : GoUInt32));
	public var reloff:GoUInt32 = ((0 : GoUInt32));
	public var nreloc:GoUInt32 = ((0 : GoUInt32));
	public var flags:GoUInt32 = ((0 : GoUInt32));

	public function new(?name:GoString, ?seg:GoString, ?addr:GoUInt64, ?size:GoUInt64, ?offset:GoUInt32, ?align:GoUInt32, ?reloff:GoUInt32, ?nreloc:GoUInt32,
			?flags:GoUInt32)
		stdgo.internal.Macro.initLocals();

	public function toString() {
		return '{' + Go.string(name) + " " + Go.string(seg) + " " + Go.string(addr) + " " + Go.string(size) + " " + Go.string(offset) + " "
			+ Go.string(align) + " " + Go.string(reloff) + " " + Go.string(nreloc) + " " + Go.string(flags) + "}";
	}

	public function __underlying__():AnyInterface
		return Go.toInterface(this);

	public function __copy__() {
		return new SectionHeader(name, seg, addr, size, offset, align, reloff, nreloc, flags);
	}

	public function __set__(__tmp__) {
		this.name = __tmp__.name;
		this.seg = __tmp__.seg;
		this.addr = __tmp__.addr;
		this.size = __tmp__.size;
		this.offset = __tmp__.offset;
		this.align = __tmp__.align;
		this.reloff = __tmp__.reloff;
		this.nreloc = __tmp__.nreloc;
		this.flags = __tmp__.flags;
		return this;
	}
}

@:structInit class Reloc {
	public var addr:GoUInt32 = ((0 : GoUInt32));
	public var value:GoUInt32 = ((0 : GoUInt32));
	public var type:GoUInt8 = ((0 : GoUInt8));
	public var len:GoUInt8 = ((0 : GoUInt8));
	public var pcrel:Bool = false;
	public var extern_:Bool = false;
	public var scattered:Bool = false;

	public function new(?addr:GoUInt32, ?value:GoUInt32, ?type:GoUInt8, ?len:GoUInt8, ?pcrel:Bool, ?extern_:Bool, ?scattered:Bool)
		stdgo.internal.Macro.initLocals();

	public function toString() {
		return '{' + Go.string(addr) + " " + Go.string(value) + " " + Go.string(type) + " " + Go.string(len) + " " + Go.string(pcrel) + " "
			+ Go.string(extern_) + " " + Go.string(scattered) + "}";
	}

	public function __underlying__():AnyInterface
		return Go.toInterface(this);

	public function __copy__() {
		return new Reloc(addr, value, type, len, pcrel, extern_, scattered);
	}

	public function __set__(__tmp__) {
		this.addr = __tmp__.addr;
		this.value = __tmp__.value;
		this.type = __tmp__.type;
		this.len = __tmp__.len;
		this.pcrel = __tmp__.pcrel;
		this.extern_ = __tmp__.extern_;
		this.scattered = __tmp__.scattered;
		return this;
	}
}

@:structInit class Section {
	public function open():stdgo.io.Io.ReadSeeker {
		var _s = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
		return stdgo.io.Io.newSectionReader(_s.value._sr.value, ((0 : GoInt64)), (((1 : GoUnTypedInt)) << ((63 : GoUnTypedInt))) - ((1 : GoUnTypedInt))).value;
	}

	public function data():{var _0:Slice<GoByte>; var _1:Error;} {
		var _s = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
		var _dat:Slice<GoUInt8> = new Slice<GoUInt8>(...[for (i in 0...((_s.value._sr.value.size() : GoInt)).toBasic()) ((0 : GoUInt8))]);
		var __tmp__ = _s.value._sr.value.readAt(_dat, ((0 : GoInt64))),
			_n:GoInt = __tmp__._0,
			_err:stdgo.Error = __tmp__._1;
		if (_n == _dat.length) {
			_err = ((null : stdgo.Error));
		};
		return {_0: _dat.__slice__(((0 : GoInt)), _n), _1: _err};
	}

	@:embedded
	public var sectionHeader:SectionHeader = new SectionHeader();
	public var relocs:Slice<Reloc> = new Slice<Reloc>().nil();
	@:embedded
	public var readerAt:stdgo.io.Io.ReaderAt = ((null : stdgo.io.Io.ReaderAt));
	public var _sr:Pointer<stdgo.io.Io.SectionReader> = new Pointer<stdgo.io.Io.SectionReader>().nil();

	public function new(?sectionHeader:SectionHeader, ?relocs:Slice<Reloc>, ?readerAt:stdgo.io.Io.ReaderAt, ?_sr:Pointer<stdgo.io.Io.SectionReader>)
		stdgo.internal.Macro.initLocals();

	public function toString() {
		return '{' + Go.string(sectionHeader) + " " + Go.string(relocs) + " " + Go.string(readerAt) + " " + Go.string(_sr) + "}";
	}

	public function readAt(_p:Slice<GoUInt8>, _off:GoInt64):{var _0:GoInt; var _1:stdgo.Error;}
		return readerAt.readAt(_0, _1);

	public function __underlying__():AnyInterface
		return Go.toInterface(this);

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

@:structInit class Dylib {
	@:embedded
	public var loadBytes:LoadBytes = new LoadBytes();
	public var name:GoString = (("" : GoString));
	public var time:GoUInt32 = ((0 : GoUInt32));
	public var currentVersion:GoUInt32 = ((0 : GoUInt32));
	public var compatVersion:GoUInt32 = ((0 : GoUInt32));

	public function new(?loadBytes:LoadBytes, ?name:GoString, ?time:GoUInt32, ?currentVersion:GoUInt32, ?compatVersion:GoUInt32)
		stdgo.internal.Macro.initLocals();

	public function toString() {
		return '{' + Go.string(loadBytes) + " " + Go.string(name) + " " + Go.string(time) + " " + Go.string(currentVersion) + " " + Go.string(compatVersion)
			+ "}";
	}

	public function raw():Slice<GoUInt8>
		return loadBytes.raw();

	public function __underlying__():AnyInterface
		return Go.toInterface(this);

	public function __copy__() {
		return new Dylib(loadBytes, name, time, currentVersion, compatVersion);
	}

	public function __set__(__tmp__) {
		this.loadBytes = __tmp__.loadBytes;
		this.name = __tmp__.name;
		this.time = __tmp__.time;
		this.currentVersion = __tmp__.currentVersion;
		this.compatVersion = __tmp__.compatVersion;
		return this;
	}
}

@:structInit class Symtab {
	@:embedded
	public var loadBytes:LoadBytes = new LoadBytes();
	@:embedded
	public var symtabCmd:SymtabCmd = new SymtabCmd();
	public var syms:Slice<Symbol> = new Slice<Symbol>().nil();

	public function new(?loadBytes:LoadBytes, ?symtabCmd:SymtabCmd, ?syms:Slice<Symbol>)
		stdgo.internal.Macro.initLocals();

	public function toString() {
		return '{' + Go.string(loadBytes) + " " + Go.string(symtabCmd) + " " + Go.string(syms) + "}";
	}

	public function raw():Slice<GoUInt8>
		return loadBytes.raw();

	public function __underlying__():AnyInterface
		return Go.toInterface(this);

	public function __copy__() {
		return new Symtab(loadBytes, symtabCmd, syms);
	}

	public function __set__(__tmp__) {
		this.loadBytes = __tmp__.loadBytes;
		this.symtabCmd = __tmp__.symtabCmd;
		this.syms = __tmp__.syms;
		return this;
	}
}

@:structInit class Dysymtab {
	@:embedded
	public var loadBytes:LoadBytes = new LoadBytes();
	@:embedded
	public var dysymtabCmd:DysymtabCmd = new DysymtabCmd();
	public var indirectSyms:Slice<GoUInt32> = new Slice<GoUInt32>().nil();

	public function new(?loadBytes:LoadBytes, ?dysymtabCmd:DysymtabCmd, ?indirectSyms:Slice<GoUInt32>)
		stdgo.internal.Macro.initLocals();

	public function toString() {
		return '{' + Go.string(loadBytes) + " " + Go.string(dysymtabCmd) + " " + Go.string(indirectSyms) + "}";
	}

	public function raw():Slice<GoUInt8>
		return loadBytes.raw();

	public function __underlying__():AnyInterface
		return Go.toInterface(this);

	public function __copy__() {
		return new Dysymtab(loadBytes, dysymtabCmd, indirectSyms);
	}

	public function __set__(__tmp__) {
		this.loadBytes = __tmp__.loadBytes;
		this.dysymtabCmd = __tmp__.dysymtabCmd;
		this.indirectSyms = __tmp__.indirectSyms;
		return this;
	}
}

@:structInit class Rpath {
	@:embedded
	public var loadBytes:LoadBytes = new LoadBytes();
	public var path:GoString = (("" : GoString));

	public function new(?loadBytes:LoadBytes, ?path:GoString)
		stdgo.internal.Macro.initLocals();

	public function toString() {
		return '{' + Go.string(loadBytes) + " " + Go.string(path) + "}";
	}

	public function raw():Slice<GoUInt8>
		return loadBytes.raw();

	public function __underlying__():AnyInterface
		return Go.toInterface(this);

	public function __copy__() {
		return new Rpath(loadBytes, path);
	}

	public function __set__(__tmp__) {
		this.loadBytes = __tmp__.loadBytes;
		this.path = __tmp__.path;
		return this;
	}
}

@:structInit class Symbol {
	public var name:GoString = (("" : GoString));
	public var type:GoUInt8 = ((0 : GoUInt8));
	public var sect:GoUInt8 = ((0 : GoUInt8));
	public var desc:GoUInt16 = ((0 : GoUInt16));
	public var value:GoUInt64 = ((0 : GoUInt64));

	public function new(?name:GoString, ?type:GoUInt8, ?sect:GoUInt8, ?desc:GoUInt16, ?value:GoUInt64)
		stdgo.internal.Macro.initLocals();

	public function toString() {
		return '{'
			+ Go.string(name)
			+ " "
			+ Go.string(type)
			+ " "
			+ Go.string(sect)
			+ " "
			+ Go.string(desc)
			+ " "
			+ Go.string(value)
			+ "}";
	}

	public function __underlying__():AnyInterface
		return Go.toInterface(this);

	public function __copy__() {
		return new Symbol(name, type, sect, desc, value);
	}

	public function __set__(__tmp__) {
		this.name = __tmp__.name;
		this.type = __tmp__.type;
		this.sect = __tmp__.sect;
		this.desc = __tmp__.desc;
		this.value = __tmp__.value;
		return this;
	}
}

@:structInit class FormatError {
	public function error():GoString {
		var _e = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
		var _msg:GoString = _e.value._msg;
		if (_e.value._val != null) {
			_msg = _msg + (stdgo.fmt.Fmt.sprintf(" \'%v\'", Go.toInterface(_e.value._val)));
		};
		_msg = _msg + (stdgo.fmt.Fmt.sprintf(" in record at byte %#x", Go.toInterface(_e.value._off)));
		return _msg;
	}

	public var _off:GoInt64 = ((0 : GoInt64));
	public var _msg:GoString = (("" : GoString));
	public var _val:AnyInterface = ((null : AnyInterface));

	public function new(?_off:GoInt64, ?_msg:GoString, ?_val:AnyInterface)
		stdgo.internal.Macro.initLocals();

	public function toString() {
		return '{' + Go.string(_off) + " " + Go.string(_msg) + " " + Go.string(_val) + "}";
	}

	public function __underlying__():AnyInterface
		return Go.toInterface(this);

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

@:structInit class T_relocInfo {
	public var addr:GoUInt32 = ((0 : GoUInt32));
	public var symnum:GoUInt32 = ((0 : GoUInt32));

	public function new(?addr:GoUInt32, ?symnum:GoUInt32)
		stdgo.internal.Macro.initLocals();

	public function toString() {
		return '{' + Go.string(addr) + " " + Go.string(symnum) + "}";
	}

	public function __underlying__():AnyInterface
		return Go.toInterface(this);

	public function __copy__() {
		return new T_relocInfo(addr, symnum);
	}

	public function __set__(__tmp__) {
		this.addr = __tmp__.addr;
		this.symnum = __tmp__.symnum;
		return this;
	}
}

@:structInit class FileHeader {
	public var magic:GoUInt32 = ((0 : GoUInt32));
	public var cpu:Cpu = new Cpu();
	public var subCpu:GoUInt32 = ((0 : GoUInt32));
	public var type:Type = new Type();
	public var ncmd:GoUInt32 = ((0 : GoUInt32));
	public var cmdsz:GoUInt32 = ((0 : GoUInt32));
	public var flags:GoUInt32 = ((0 : GoUInt32));

	public function new(?magic:GoUInt32, ?cpu:Cpu, ?subCpu:GoUInt32, ?type:Type, ?ncmd:GoUInt32, ?cmdsz:GoUInt32, ?flags:GoUInt32)
		stdgo.internal.Macro.initLocals();

	public function toString() {
		return '{' + Go.string(magic) + " " + Go.string(cpu) + " " + Go.string(subCpu) + " " + Go.string(type) + " " + Go.string(ncmd) + " "
			+ Go.string(cmdsz) + " " + Go.string(flags) + "}";
	}

	public function __underlying__():AnyInterface
		return Go.toInterface(this);

	public function __copy__() {
		return new FileHeader(magic, cpu, subCpu, type, ncmd, cmdsz, flags);
	}

	public function __set__(__tmp__) {
		this.magic = __tmp__.magic;
		this.cpu = __tmp__.cpu;
		this.subCpu = __tmp__.subCpu;
		this.type = __tmp__.type;
		this.ncmd = __tmp__.ncmd;
		this.cmdsz = __tmp__.cmdsz;
		this.flags = __tmp__.flags;
		return this;
	}
}

@:named class Type {
	public function goString():GoString {
		var _t = this.__copy__();
		return _stringName(_t.__t__, _typeStrings, true);
	}

	public function toString():GoString {
		var _t = this.__copy__();
		return _stringName(_t.__t__, _typeStrings, false);
	}

	public var __t__:GoUInt32;

	public function new(?t:GoUInt32) {
		__t__ = t == null ? 0 : t;
	}

	public function __underlying__():AnyInterface
		return Go.toInterface(this);

	public function __copy__()
		return new Type(__t__);
}

@:named class Cpu {
	public function goString():GoString {
		var _i = this.__copy__();
		return _stringName(_i.__t__, _cpuStrings, true);
	}

	public function toString():GoString {
		var _i = this.__copy__();
		return _stringName(_i.__t__, _cpuStrings, false);
	}

	public var __t__:GoUInt32;

	public function new(?t:GoUInt32) {
		__t__ = t == null ? 0 : t;
	}

	public function __underlying__():AnyInterface
		return Go.toInterface(this);

	public function __copy__()
		return new Cpu(__t__);
}

@:named class LoadCmd {
	public function goString():GoString {
		var _i = this.__copy__();
		return _stringName(_i.__t__, _cmdStrings, true);
	}

	public function toString():GoString {
		var _i = this.__copy__();
		return _stringName(_i.__t__, _cmdStrings, false);
	}

	public var __t__:GoUInt32;

	public function new(?t:GoUInt32) {
		__t__ = t == null ? 0 : t;
	}

	public function __underlying__():AnyInterface
		return Go.toInterface(this);

	public function __copy__()
		return new LoadCmd(__t__);
}

@:structInit class Segment32 {
	public var cmd:LoadCmd = new LoadCmd();
	public var len:GoUInt32 = ((0 : GoUInt32));
	public var name:GoArray<GoUInt8> = new GoArray<GoUInt8>(...[for (i in 0...16) ((0 : GoUInt8))]);
	public var addr:GoUInt32 = ((0 : GoUInt32));
	public var memsz:GoUInt32 = ((0 : GoUInt32));
	public var offset:GoUInt32 = ((0 : GoUInt32));
	public var filesz:GoUInt32 = ((0 : GoUInt32));
	public var maxprot:GoUInt32 = ((0 : GoUInt32));
	public var prot:GoUInt32 = ((0 : GoUInt32));
	public var nsect:GoUInt32 = ((0 : GoUInt32));
	public var flag:GoUInt32 = ((0 : GoUInt32));

	public function new(?cmd:LoadCmd, ?len:GoUInt32, ?name:GoArray<GoUInt8>, ?addr:GoUInt32, ?memsz:GoUInt32, ?offset:GoUInt32, ?filesz:GoUInt32,
			?maxprot:GoUInt32, ?prot:GoUInt32, ?nsect:GoUInt32, ?flag:GoUInt32)
		stdgo.internal.Macro.initLocals();

	public function toString() {
		return '{' + Go.string(cmd) + " " + Go.string(len) + " " + Go.string(name) + " " + Go.string(addr) + " " + Go.string(memsz) + " "
			+ Go.string(offset) + " " + Go.string(filesz) + " " + Go.string(maxprot) + " " + Go.string(prot) + " " + Go.string(nsect) + " " + Go.string(flag)
			+ "}";
	}

	public function __underlying__():AnyInterface
		return Go.toInterface(this);

	public function __copy__() {
		return new Segment32(cmd, len, name, addr, memsz, offset, filesz, maxprot, prot, nsect, flag);
	}

	public function __set__(__tmp__) {
		this.cmd = __tmp__.cmd;
		this.len = __tmp__.len;
		this.name = __tmp__.name;
		this.addr = __tmp__.addr;
		this.memsz = __tmp__.memsz;
		this.offset = __tmp__.offset;
		this.filesz = __tmp__.filesz;
		this.maxprot = __tmp__.maxprot;
		this.prot = __tmp__.prot;
		this.nsect = __tmp__.nsect;
		this.flag = __tmp__.flag;
		return this;
	}
}

@:structInit class Segment64 {
	public var cmd:LoadCmd = new LoadCmd();
	public var len:GoUInt32 = ((0 : GoUInt32));
	public var name:GoArray<GoUInt8> = new GoArray<GoUInt8>(...[for (i in 0...16) ((0 : GoUInt8))]);
	public var addr:GoUInt64 = ((0 : GoUInt64));
	public var memsz:GoUInt64 = ((0 : GoUInt64));
	public var offset:GoUInt64 = ((0 : GoUInt64));
	public var filesz:GoUInt64 = ((0 : GoUInt64));
	public var maxprot:GoUInt32 = ((0 : GoUInt32));
	public var prot:GoUInt32 = ((0 : GoUInt32));
	public var nsect:GoUInt32 = ((0 : GoUInt32));
	public var flag:GoUInt32 = ((0 : GoUInt32));

	public function new(?cmd:LoadCmd, ?len:GoUInt32, ?name:GoArray<GoUInt8>, ?addr:GoUInt64, ?memsz:GoUInt64, ?offset:GoUInt64, ?filesz:GoUInt64,
			?maxprot:GoUInt32, ?prot:GoUInt32, ?nsect:GoUInt32, ?flag:GoUInt32)
		stdgo.internal.Macro.initLocals();

	public function toString() {
		return '{' + Go.string(cmd) + " " + Go.string(len) + " " + Go.string(name) + " " + Go.string(addr) + " " + Go.string(memsz) + " "
			+ Go.string(offset) + " " + Go.string(filesz) + " " + Go.string(maxprot) + " " + Go.string(prot) + " " + Go.string(nsect) + " " + Go.string(flag)
			+ "}";
	}

	public function __underlying__():AnyInterface
		return Go.toInterface(this);

	public function __copy__() {
		return new Segment64(cmd, len, name, addr, memsz, offset, filesz, maxprot, prot, nsect, flag);
	}

	public function __set__(__tmp__) {
		this.cmd = __tmp__.cmd;
		this.len = __tmp__.len;
		this.name = __tmp__.name;
		this.addr = __tmp__.addr;
		this.memsz = __tmp__.memsz;
		this.offset = __tmp__.offset;
		this.filesz = __tmp__.filesz;
		this.maxprot = __tmp__.maxprot;
		this.prot = __tmp__.prot;
		this.nsect = __tmp__.nsect;
		this.flag = __tmp__.flag;
		return this;
	}
}

@:structInit class SymtabCmd {
	public var cmd:LoadCmd = new LoadCmd();
	public var len:GoUInt32 = ((0 : GoUInt32));
	public var symoff:GoUInt32 = ((0 : GoUInt32));
	public var nsyms:GoUInt32 = ((0 : GoUInt32));
	public var stroff:GoUInt32 = ((0 : GoUInt32));
	public var strsize:GoUInt32 = ((0 : GoUInt32));

	public function new(?cmd:LoadCmd, ?len:GoUInt32, ?symoff:GoUInt32, ?nsyms:GoUInt32, ?stroff:GoUInt32, ?strsize:GoUInt32)
		stdgo.internal.Macro.initLocals();

	public function toString() {
		return '{' + Go.string(cmd) + " " + Go.string(len) + " " + Go.string(symoff) + " " + Go.string(nsyms) + " " + Go.string(stroff) + " "
			+ Go.string(strsize) + "}";
	}

	public function __underlying__():AnyInterface
		return Go.toInterface(this);

	public function __copy__() {
		return new SymtabCmd(cmd, len, symoff, nsyms, stroff, strsize);
	}

	public function __set__(__tmp__) {
		this.cmd = __tmp__.cmd;
		this.len = __tmp__.len;
		this.symoff = __tmp__.symoff;
		this.nsyms = __tmp__.nsyms;
		this.stroff = __tmp__.stroff;
		this.strsize = __tmp__.strsize;
		return this;
	}
}

@:structInit class DysymtabCmd {
	public var cmd:LoadCmd = new LoadCmd();
	public var len:GoUInt32 = ((0 : GoUInt32));
	public var ilocalsym:GoUInt32 = ((0 : GoUInt32));
	public var nlocalsym:GoUInt32 = ((0 : GoUInt32));
	public var iextdefsym:GoUInt32 = ((0 : GoUInt32));
	public var nextdefsym:GoUInt32 = ((0 : GoUInt32));
	public var iundefsym:GoUInt32 = ((0 : GoUInt32));
	public var nundefsym:GoUInt32 = ((0 : GoUInt32));
	public var tocoffset:GoUInt32 = ((0 : GoUInt32));
	public var ntoc:GoUInt32 = ((0 : GoUInt32));
	public var modtaboff:GoUInt32 = ((0 : GoUInt32));
	public var nmodtab:GoUInt32 = ((0 : GoUInt32));
	public var extrefsymoff:GoUInt32 = ((0 : GoUInt32));
	public var nextrefsyms:GoUInt32 = ((0 : GoUInt32));
	public var indirectsymoff:GoUInt32 = ((0 : GoUInt32));
	public var nindirectsyms:GoUInt32 = ((0 : GoUInt32));
	public var extreloff:GoUInt32 = ((0 : GoUInt32));
	public var nextrel:GoUInt32 = ((0 : GoUInt32));
	public var locreloff:GoUInt32 = ((0 : GoUInt32));
	public var nlocrel:GoUInt32 = ((0 : GoUInt32));

	public function new(?cmd:LoadCmd, ?len:GoUInt32, ?ilocalsym:GoUInt32, ?nlocalsym:GoUInt32, ?iextdefsym:GoUInt32, ?nextdefsym:GoUInt32,
			?iundefsym:GoUInt32, ?nundefsym:GoUInt32, ?tocoffset:GoUInt32, ?ntoc:GoUInt32, ?modtaboff:GoUInt32, ?nmodtab:GoUInt32, ?extrefsymoff:GoUInt32,
			?nextrefsyms:GoUInt32, ?indirectsymoff:GoUInt32, ?nindirectsyms:GoUInt32, ?extreloff:GoUInt32, ?nextrel:GoUInt32, ?locreloff:GoUInt32,
			?nlocrel:GoUInt32)
		stdgo.internal.Macro.initLocals();

	public function toString() {
		return '{' + Go.string(cmd) + " " + Go.string(len) + " " + Go.string(ilocalsym) + " " + Go.string(nlocalsym) + " " + Go.string(iextdefsym) + " "
			+ Go.string(nextdefsym) + " " + Go.string(iundefsym) + " " + Go.string(nundefsym) + " " + Go.string(tocoffset) + " " + Go.string(ntoc) + " "
			+ Go.string(modtaboff) + " " + Go.string(nmodtab) + " " + Go.string(extrefsymoff) + " " + Go.string(nextrefsyms) + " "
			+ Go.string(indirectsymoff) + " " + Go.string(nindirectsyms) + " " + Go.string(extreloff) + " " + Go.string(nextrel) + " " + Go.string(locreloff)
			+ " " + Go.string(nlocrel) + "}";
	}

	public function __underlying__():AnyInterface
		return Go.toInterface(this);

	public function __copy__() {
		return new DysymtabCmd(cmd, len, ilocalsym, nlocalsym, iextdefsym, nextdefsym, iundefsym, nundefsym, tocoffset, ntoc, modtaboff, nmodtab,
			extrefsymoff, nextrefsyms, indirectsymoff, nindirectsyms, extreloff, nextrel, locreloff, nlocrel);
	}

	public function __set__(__tmp__) {
		this.cmd = __tmp__.cmd;
		this.len = __tmp__.len;
		this.ilocalsym = __tmp__.ilocalsym;
		this.nlocalsym = __tmp__.nlocalsym;
		this.iextdefsym = __tmp__.iextdefsym;
		this.nextdefsym = __tmp__.nextdefsym;
		this.iundefsym = __tmp__.iundefsym;
		this.nundefsym = __tmp__.nundefsym;
		this.tocoffset = __tmp__.tocoffset;
		this.ntoc = __tmp__.ntoc;
		this.modtaboff = __tmp__.modtaboff;
		this.nmodtab = __tmp__.nmodtab;
		this.extrefsymoff = __tmp__.extrefsymoff;
		this.nextrefsyms = __tmp__.nextrefsyms;
		this.indirectsymoff = __tmp__.indirectsymoff;
		this.nindirectsyms = __tmp__.nindirectsyms;
		this.extreloff = __tmp__.extreloff;
		this.nextrel = __tmp__.nextrel;
		this.locreloff = __tmp__.locreloff;
		this.nlocrel = __tmp__.nlocrel;
		return this;
	}
}

@:structInit class DylibCmd {
	public var cmd:LoadCmd = new LoadCmd();
	public var len:GoUInt32 = ((0 : GoUInt32));
	public var name:GoUInt32 = ((0 : GoUInt32));
	public var time:GoUInt32 = ((0 : GoUInt32));
	public var currentVersion:GoUInt32 = ((0 : GoUInt32));
	public var compatVersion:GoUInt32 = ((0 : GoUInt32));

	public function new(?cmd:LoadCmd, ?len:GoUInt32, ?name:GoUInt32, ?time:GoUInt32, ?currentVersion:GoUInt32, ?compatVersion:GoUInt32)
		stdgo.internal.Macro.initLocals();

	public function toString() {
		return '{' + Go.string(cmd) + " " + Go.string(len) + " " + Go.string(name) + " " + Go.string(time) + " " + Go.string(currentVersion) + " "
			+ Go.string(compatVersion) + "}";
	}

	public function __underlying__():AnyInterface
		return Go.toInterface(this);

	public function __copy__() {
		return new DylibCmd(cmd, len, name, time, currentVersion, compatVersion);
	}

	public function __set__(__tmp__) {
		this.cmd = __tmp__.cmd;
		this.len = __tmp__.len;
		this.name = __tmp__.name;
		this.time = __tmp__.time;
		this.currentVersion = __tmp__.currentVersion;
		this.compatVersion = __tmp__.compatVersion;
		return this;
	}
}

@:structInit class RpathCmd {
	public var cmd:LoadCmd = new LoadCmd();
	public var len:GoUInt32 = ((0 : GoUInt32));
	public var path:GoUInt32 = ((0 : GoUInt32));

	public function new(?cmd:LoadCmd, ?len:GoUInt32, ?path:GoUInt32)
		stdgo.internal.Macro.initLocals();

	public function toString() {
		return '{' + Go.string(cmd) + " " + Go.string(len) + " " + Go.string(path) + "}";
	}

	public function __underlying__():AnyInterface
		return Go.toInterface(this);

	public function __copy__() {
		return new RpathCmd(cmd, len, path);
	}

	public function __set__(__tmp__) {
		this.cmd = __tmp__.cmd;
		this.len = __tmp__.len;
		this.path = __tmp__.path;
		return this;
	}
}

@:structInit class Thread {
	public var cmd:LoadCmd = new LoadCmd();
	public var len:GoUInt32 = ((0 : GoUInt32));
	public var type:GoUInt32 = ((0 : GoUInt32));
	public var data:Slice<GoUInt32> = new Slice<GoUInt32>().nil();

	public function new(?cmd:LoadCmd, ?len:GoUInt32, ?type:GoUInt32, ?data:Slice<GoUInt32>)
		stdgo.internal.Macro.initLocals();

	public function toString() {
		return '{' + Go.string(cmd) + " " + Go.string(len) + " " + Go.string(type) + " " + Go.string(data) + "}";
	}

	public function __underlying__():AnyInterface
		return Go.toInterface(this);

	public function __copy__() {
		return new Thread(cmd, len, type, data);
	}

	public function __set__(__tmp__) {
		this.cmd = __tmp__.cmd;
		this.len = __tmp__.len;
		this.type = __tmp__.type;
		this.data = __tmp__.data;
		return this;
	}
}

@:structInit class Section32 {
	public var name:GoArray<GoUInt8> = new GoArray<GoUInt8>(...[for (i in 0...16) ((0 : GoUInt8))]);
	public var seg:GoArray<GoUInt8> = new GoArray<GoUInt8>(...[for (i in 0...16) ((0 : GoUInt8))]);
	public var addr:GoUInt32 = ((0 : GoUInt32));
	public var size:GoUInt32 = ((0 : GoUInt32));
	public var offset:GoUInt32 = ((0 : GoUInt32));
	public var align:GoUInt32 = ((0 : GoUInt32));
	public var reloff:GoUInt32 = ((0 : GoUInt32));
	public var nreloc:GoUInt32 = ((0 : GoUInt32));
	public var flags:GoUInt32 = ((0 : GoUInt32));
	public var reserve1:GoUInt32 = ((0 : GoUInt32));
	public var reserve2:GoUInt32 = ((0 : GoUInt32));

	public function new(?name:GoArray<GoUInt8>, ?seg:GoArray<GoUInt8>, ?addr:GoUInt32, ?size:GoUInt32, ?offset:GoUInt32, ?align:GoUInt32, ?reloff:GoUInt32,
			?nreloc:GoUInt32, ?flags:GoUInt32, ?reserve1:GoUInt32, ?reserve2:GoUInt32)
		stdgo.internal.Macro.initLocals();

	public function toString() {
		return '{' + Go.string(name) + " " + Go.string(seg) + " " + Go.string(addr) + " " + Go.string(size) + " " + Go.string(offset) + " "
			+ Go.string(align) + " " + Go.string(reloff) + " " + Go.string(nreloc) + " " + Go.string(flags) + " " + Go.string(reserve1) + " "
			+ Go.string(reserve2) + "}";
	}

	public function __underlying__():AnyInterface
		return Go.toInterface(this);

	public function __copy__() {
		return new Section32(name, seg, addr, size, offset, align, reloff, nreloc, flags, reserve1, reserve2);
	}

	public function __set__(__tmp__) {
		this.name = __tmp__.name;
		this.seg = __tmp__.seg;
		this.addr = __tmp__.addr;
		this.size = __tmp__.size;
		this.offset = __tmp__.offset;
		this.align = __tmp__.align;
		this.reloff = __tmp__.reloff;
		this.nreloc = __tmp__.nreloc;
		this.flags = __tmp__.flags;
		this.reserve1 = __tmp__.reserve1;
		this.reserve2 = __tmp__.reserve2;
		return this;
	}
}

@:structInit class Section64 {
	public var name:GoArray<GoUInt8> = new GoArray<GoUInt8>(...[for (i in 0...16) ((0 : GoUInt8))]);
	public var seg:GoArray<GoUInt8> = new GoArray<GoUInt8>(...[for (i in 0...16) ((0 : GoUInt8))]);
	public var addr:GoUInt64 = ((0 : GoUInt64));
	public var size:GoUInt64 = ((0 : GoUInt64));
	public var offset:GoUInt32 = ((0 : GoUInt32));
	public var align:GoUInt32 = ((0 : GoUInt32));
	public var reloff:GoUInt32 = ((0 : GoUInt32));
	public var nreloc:GoUInt32 = ((0 : GoUInt32));
	public var flags:GoUInt32 = ((0 : GoUInt32));
	public var reserve1:GoUInt32 = ((0 : GoUInt32));
	public var reserve2:GoUInt32 = ((0 : GoUInt32));
	public var reserve3:GoUInt32 = ((0 : GoUInt32));

	public function new(?name:GoArray<GoUInt8>, ?seg:GoArray<GoUInt8>, ?addr:GoUInt64, ?size:GoUInt64, ?offset:GoUInt32, ?align:GoUInt32, ?reloff:GoUInt32,
			?nreloc:GoUInt32, ?flags:GoUInt32, ?reserve1:GoUInt32, ?reserve2:GoUInt32, ?reserve3:GoUInt32)
		stdgo.internal.Macro.initLocals();

	public function toString() {
		return '{' + Go.string(name) + " " + Go.string(seg) + " " + Go.string(addr) + " " + Go.string(size) + " " + Go.string(offset) + " "
			+ Go.string(align) + " " + Go.string(reloff) + " " + Go.string(nreloc) + " " + Go.string(flags) + " " + Go.string(reserve1) + " "
			+ Go.string(reserve2) + " " + Go.string(reserve3) + "}";
	}

	public function __underlying__():AnyInterface
		return Go.toInterface(this);

	public function __copy__() {
		return new Section64(name, seg, addr, size, offset, align, reloff, nreloc, flags, reserve1, reserve2, reserve3);
	}

	public function __set__(__tmp__) {
		this.name = __tmp__.name;
		this.seg = __tmp__.seg;
		this.addr = __tmp__.addr;
		this.size = __tmp__.size;
		this.offset = __tmp__.offset;
		this.align = __tmp__.align;
		this.reloff = __tmp__.reloff;
		this.nreloc = __tmp__.nreloc;
		this.flags = __tmp__.flags;
		this.reserve1 = __tmp__.reserve1;
		this.reserve2 = __tmp__.reserve2;
		this.reserve3 = __tmp__.reserve3;
		return this;
	}
}

@:structInit class Nlist32 {
	public var name:GoUInt32 = ((0 : GoUInt32));
	public var type:GoUInt8 = ((0 : GoUInt8));
	public var sect:GoUInt8 = ((0 : GoUInt8));
	public var desc:GoUInt16 = ((0 : GoUInt16));
	public var value:GoUInt32 = ((0 : GoUInt32));

	public function new(?name:GoUInt32, ?type:GoUInt8, ?sect:GoUInt8, ?desc:GoUInt16, ?value:GoUInt32)
		stdgo.internal.Macro.initLocals();

	public function toString() {
		return '{'
			+ Go.string(name)
			+ " "
			+ Go.string(type)
			+ " "
			+ Go.string(sect)
			+ " "
			+ Go.string(desc)
			+ " "
			+ Go.string(value)
			+ "}";
	}

	public function __underlying__():AnyInterface
		return Go.toInterface(this);

	public function __copy__() {
		return new Nlist32(name, type, sect, desc, value);
	}

	public function __set__(__tmp__) {
		this.name = __tmp__.name;
		this.type = __tmp__.type;
		this.sect = __tmp__.sect;
		this.desc = __tmp__.desc;
		this.value = __tmp__.value;
		return this;
	}
}

@:structInit class Nlist64 {
	public var name:GoUInt32 = ((0 : GoUInt32));
	public var type:GoUInt8 = ((0 : GoUInt8));
	public var sect:GoUInt8 = ((0 : GoUInt8));
	public var desc:GoUInt16 = ((0 : GoUInt16));
	public var value:GoUInt64 = ((0 : GoUInt64));

	public function new(?name:GoUInt32, ?type:GoUInt8, ?sect:GoUInt8, ?desc:GoUInt16, ?value:GoUInt64)
		stdgo.internal.Macro.initLocals();

	public function toString() {
		return '{'
			+ Go.string(name)
			+ " "
			+ Go.string(type)
			+ " "
			+ Go.string(sect)
			+ " "
			+ Go.string(desc)
			+ " "
			+ Go.string(value)
			+ "}";
	}

	public function __underlying__():AnyInterface
		return Go.toInterface(this);

	public function __copy__() {
		return new Nlist64(name, type, sect, desc, value);
	}

	public function __set__(__tmp__) {
		this.name = __tmp__.name;
		this.type = __tmp__.type;
		this.sect = __tmp__.sect;
		this.desc = __tmp__.desc;
		this.value = __tmp__.value;
		return this;
	}
}

@:structInit class Regs386 {
	public var ax:GoUInt32 = ((0 : GoUInt32));
	public var bx:GoUInt32 = ((0 : GoUInt32));
	public var cx:GoUInt32 = ((0 : GoUInt32));
	public var dx:GoUInt32 = ((0 : GoUInt32));
	public var di:GoUInt32 = ((0 : GoUInt32));
	public var si:GoUInt32 = ((0 : GoUInt32));
	public var bp:GoUInt32 = ((0 : GoUInt32));
	public var sp:GoUInt32 = ((0 : GoUInt32));
	public var ss:GoUInt32 = ((0 : GoUInt32));
	public var flags:GoUInt32 = ((0 : GoUInt32));
	public var ip:GoUInt32 = ((0 : GoUInt32));
	public var cs:GoUInt32 = ((0 : GoUInt32));
	public var ds:GoUInt32 = ((0 : GoUInt32));
	public var es:GoUInt32 = ((0 : GoUInt32));
	public var fs:GoUInt32 = ((0 : GoUInt32));
	public var gs:GoUInt32 = ((0 : GoUInt32));

	public function new(?ax:GoUInt32, ?bx:GoUInt32, ?cx:GoUInt32, ?dx:GoUInt32, ?di:GoUInt32, ?si:GoUInt32, ?bp:GoUInt32, ?sp:GoUInt32, ?ss:GoUInt32,
			?flags:GoUInt32, ?ip:GoUInt32, ?cs:GoUInt32, ?ds:GoUInt32, ?es:GoUInt32, ?fs:GoUInt32, ?gs:GoUInt32)
		stdgo.internal.Macro.initLocals();

	public function toString() {
		return '{' + Go.string(ax) + " " + Go.string(bx) + " " + Go.string(cx) + " " + Go.string(dx) + " " + Go.string(di) + " " + Go.string(si) + " "
			+ Go.string(bp) + " " + Go.string(sp) + " " + Go.string(ss) + " " + Go.string(flags) + " " + Go.string(ip) + " " + Go.string(cs) + " "
			+ Go.string(ds) + " " + Go.string(es) + " " + Go.string(fs) + " " + Go.string(gs) + "}";
	}

	public function __underlying__():AnyInterface
		return Go.toInterface(this);

	public function __copy__() {
		return new Regs386(ax, bx, cx, dx, di, si, bp, sp, ss, flags, ip, cs, ds, es, fs, gs);
	}

	public function __set__(__tmp__) {
		this.ax = __tmp__.ax;
		this.bx = __tmp__.bx;
		this.cx = __tmp__.cx;
		this.dx = __tmp__.dx;
		this.di = __tmp__.di;
		this.si = __tmp__.si;
		this.bp = __tmp__.bp;
		this.sp = __tmp__.sp;
		this.ss = __tmp__.ss;
		this.flags = __tmp__.flags;
		this.ip = __tmp__.ip;
		this.cs = __tmp__.cs;
		this.ds = __tmp__.ds;
		this.es = __tmp__.es;
		this.fs = __tmp__.fs;
		this.gs = __tmp__.gs;
		return this;
	}
}

@:structInit class RegsAMD64 {
	public var ax:GoUInt64 = ((0 : GoUInt64));
	public var bx:GoUInt64 = ((0 : GoUInt64));
	public var cx:GoUInt64 = ((0 : GoUInt64));
	public var dx:GoUInt64 = ((0 : GoUInt64));
	public var di:GoUInt64 = ((0 : GoUInt64));
	public var si:GoUInt64 = ((0 : GoUInt64));
	public var bp:GoUInt64 = ((0 : GoUInt64));
	public var sp:GoUInt64 = ((0 : GoUInt64));
	public var r8:GoUInt64 = ((0 : GoUInt64));
	public var r9:GoUInt64 = ((0 : GoUInt64));
	public var r10:GoUInt64 = ((0 : GoUInt64));
	public var r11:GoUInt64 = ((0 : GoUInt64));
	public var r12:GoUInt64 = ((0 : GoUInt64));
	public var r13:GoUInt64 = ((0 : GoUInt64));
	public var r14:GoUInt64 = ((0 : GoUInt64));
	public var r15:GoUInt64 = ((0 : GoUInt64));
	public var ip:GoUInt64 = ((0 : GoUInt64));
	public var flags:GoUInt64 = ((0 : GoUInt64));
	public var cs:GoUInt64 = ((0 : GoUInt64));
	public var fs:GoUInt64 = ((0 : GoUInt64));
	public var gs:GoUInt64 = ((0 : GoUInt64));

	public function new(?ax:GoUInt64, ?bx:GoUInt64, ?cx:GoUInt64, ?dx:GoUInt64, ?di:GoUInt64, ?si:GoUInt64, ?bp:GoUInt64, ?sp:GoUInt64, ?r8:GoUInt64,
			?r9:GoUInt64, ?r10:GoUInt64, ?r11:GoUInt64, ?r12:GoUInt64, ?r13:GoUInt64, ?r14:GoUInt64, ?r15:GoUInt64, ?ip:GoUInt64, ?flags:GoUInt64,
			?cs:GoUInt64, ?fs:GoUInt64, ?gs:GoUInt64)
		stdgo.internal.Macro.initLocals();

	public function toString() {
		return '{' + Go.string(ax) + " " + Go.string(bx) + " " + Go.string(cx) + " " + Go.string(dx) + " " + Go.string(di) + " " + Go.string(si) + " "
			+ Go.string(bp) + " " + Go.string(sp) + " " + Go.string(r8) + " " + Go.string(r9) + " " + Go.string(r10) + " " + Go.string(r11) + " "
			+ Go.string(r12) + " " + Go.string(r13) + " " + Go.string(r14) + " " + Go.string(r15) + " " + Go.string(ip) + " " + Go.string(flags) + " "
			+ Go.string(cs) + " " + Go.string(fs) + " " + Go.string(gs) + "}";
	}

	public function __underlying__():AnyInterface
		return Go.toInterface(this);

	public function __copy__() {
		return new RegsAMD64(ax, bx, cx, dx, di, si, bp, sp, r8, r9, r10, r11, r12, r13, r14, r15, ip, flags, cs, fs, gs);
	}

	public function __set__(__tmp__) {
		this.ax = __tmp__.ax;
		this.bx = __tmp__.bx;
		this.cx = __tmp__.cx;
		this.dx = __tmp__.dx;
		this.di = __tmp__.di;
		this.si = __tmp__.si;
		this.bp = __tmp__.bp;
		this.sp = __tmp__.sp;
		this.r8 = __tmp__.r8;
		this.r9 = __tmp__.r9;
		this.r10 = __tmp__.r10;
		this.r11 = __tmp__.r11;
		this.r12 = __tmp__.r12;
		this.r13 = __tmp__.r13;
		this.r14 = __tmp__.r14;
		this.r15 = __tmp__.r15;
		this.ip = __tmp__.ip;
		this.flags = __tmp__.flags;
		this.cs = __tmp__.cs;
		this.fs = __tmp__.fs;
		this.gs = __tmp__.gs;
		return this;
	}
}

@:structInit class T_intName {
	public var _i:GoUInt32 = ((0 : GoUInt32));
	public var _s:GoString = (("" : GoString));

	public function new(?_i:GoUInt32, ?_s:GoString)
		stdgo.internal.Macro.initLocals();

	public function toString() {
		return '{' + Go.string(_i) + " " + Go.string(_s) + "}";
	}

	public function __underlying__():AnyInterface
		return Go.toInterface(this);

	public function __copy__() {
		return new T_intName(_i, _s);
	}

	public function __set__(__tmp__) {
		this._i = __tmp__._i;
		this._s = __tmp__._s;
		return this;
	}
}

@:named class RelocTypeGeneric {
	public function toString():GoString {
		var _i = this.__copy__();
		if (_i.__t__ < ((0 : GoInt)) || _i.__t__ >= new RelocTypeGeneric((__RelocTypeGeneric_index.length - ((1 : GoInt)))).__t__) {
			return (("RelocTypeGeneric(" : GoString)) + stdgo.strconv.Strconv.formatInt(_i.__t__, ((10 : GoInt))) + ((")" : GoString));
		};
		return __RelocTypeGeneric_name.__slice__(__RelocTypeGeneric_index[_i.__t__],
			__RelocTypeGeneric_index[new RelocTypeGeneric(_i.__t__ + ((1 : GoInt))).__t__]);
	}

	public function goString():GoString {
		var _r = this.__copy__();
		return (("macho." : GoString)) + _r.toString();
	}

	public var __t__:GoInt;

	public function new(?t:GoInt) {
		__t__ = t == null ? 0 : t;
	}

	public function __underlying__():AnyInterface
		return Go.toInterface(this);

	public function __copy__()
		return new RelocTypeGeneric(__t__);
}

@:named class RelocTypeX86_64 {
	public function toString():GoString {
		var _i = this.__copy__();
		if (_i.__t__ < ((0 : GoInt)) || _i.__t__ >= new RelocTypeX86_64((__RelocTypeX86_64_index.length - ((1 : GoInt)))).__t__) {
			return (("RelocTypeX86_64(" : GoString)) + stdgo.strconv.Strconv.formatInt(_i.__t__, ((10 : GoInt))) + ((")" : GoString));
		};
		return __RelocTypeX86_64_name.__slice__(__RelocTypeX86_64_index[_i.__t__],
			__RelocTypeX86_64_index[new RelocTypeX86_64(_i.__t__ + ((1 : GoInt))).__t__]);
	}

	public function goString():GoString {
		var _r = this.__copy__();
		return (("macho." : GoString)) + _r.toString();
	}

	public var __t__:GoInt;

	public function new(?t:GoInt) {
		__t__ = t == null ? 0 : t;
	}

	public function __underlying__():AnyInterface
		return Go.toInterface(this);

	public function __copy__()
		return new RelocTypeX86_64(__t__);
}

@:named class RelocTypeARM {
	public function toString():GoString {
		var _i = this.__copy__();
		if (_i.__t__ < ((0 : GoInt)) || _i.__t__ >= new RelocTypeARM((__RelocTypeARM_index.length - ((1 : GoInt)))).__t__) {
			return (("RelocTypeARM(" : GoString)) + stdgo.strconv.Strconv.formatInt(_i.__t__, ((10 : GoInt))) + ((")" : GoString));
		};
		return __RelocTypeARM_name.__slice__(__RelocTypeARM_index[_i.__t__], __RelocTypeARM_index[new RelocTypeARM(_i.__t__ + ((1 : GoInt))).__t__]);
	}

	public function goString():GoString {
		var _r = this.__copy__();
		return (("macho." : GoString)) + _r.toString();
	}

	public var __t__:GoInt;

	public function new(?t:GoInt) {
		__t__ = t == null ? 0 : t;
	}

	public function __underlying__():AnyInterface
		return Go.toInterface(this);

	public function __copy__()
		return new RelocTypeARM(__t__);
}

@:named class RelocTypeARM64 {
	public function toString():GoString {
		var _i = this.__copy__();
		if (_i.__t__ < ((0 : GoInt)) || _i.__t__ >= new RelocTypeARM64((__RelocTypeARM64_index.length - ((1 : GoInt)))).__t__) {
			return (("RelocTypeARM64(" : GoString)) + stdgo.strconv.Strconv.formatInt(_i.__t__, ((10 : GoInt))) + ((")" : GoString));
		};
		return __RelocTypeARM64_name.__slice__(__RelocTypeARM64_index[_i.__t__], __RelocTypeARM64_index[new RelocTypeARM64(_i.__t__ + ((1 : GoInt))).__t__]);
	}

	public function goString():GoString {
		var _r = this.__copy__();
		return (("macho." : GoString)) + _r.toString();
	}

	public var __t__:GoInt;

	public function new(?t:GoInt) {
		__t__ = t == null ? 0 : t;
	}

	public function __underlying__():AnyInterface
		return Go.toInterface(this);

	public function __copy__()
		return new RelocTypeARM64(__t__);
}

final arm64_RELOC_GOT_LOAD_PAGEOFF12:RelocTypeARM64 = new RelocTypeARM64(((6 : GoInt)));
final generic_RELOC_PAIR:RelocTypeGeneric = new RelocTypeGeneric(((1 : GoInt)));
final cpu386:Cpu = new Cpu(((7 : GoUInt32)));
final _cpuArch64:GoInt64 = ((16777216 : GoUnTypedInt));
final cpuAmd64:Cpu = new Cpu(cpu386.__t__ | _cpuArch64);
final cpuArm:Cpu = new Cpu(((12 : GoUInt32)));
final cpuArm64:Cpu = new Cpu(cpuArm.__t__ | _cpuArch64);
final cpuPpc:Cpu = new Cpu(((18 : GoUInt32)));
final cpuPpc64:Cpu = new Cpu(cpuPpc.__t__ | _cpuArch64);

var _cpuStrings:Slice<T_intName> = new Slice<T_intName>(new T_intName(cpu386.__t__, "Cpu386").__copy__(),
	new T_intName(cpuAmd64.__t__, "CpuAmd64").__copy__(), new T_intName(cpuArm.__t__, "CpuArm").__copy__(),
	new T_intName(cpuArm64.__t__, "CpuArm64").__copy__(), new T_intName(cpuPpc.__t__, "CpuPpc").__copy__(),
	new T_intName(cpuPpc64.__t__, "CpuPpc64").__copy__());

final flagLazyInit:GoUInt32 = ((64 : GoUInt32));
final __RelocTypeARM_name:GoString = "ARM_RELOC_VANILLAARM_RELOC_PAIRARM_RELOC_SECTDIFFARM_RELOC_LOCAL_SECTDIFFARM_RELOC_PB_LA_PTRARM_RELOC_BR24ARM_THUMB_RELOC_BR22ARM_THUMB_32BIT_BRANCHARM_RELOC_HALFARM_RELOC_HALF_SECTDIFF";
final loadCmdSegment:LoadCmd = new LoadCmd(((1 : GoUInt32)));
final arm_RELOC_VANILLA:RelocTypeARM = new RelocTypeARM(((0 : GoInt)));
final flagNoMultiDefs:GoUInt32 = ((512 : GoUInt32));
final x86_64_RELOC_GOT_LOAD:RelocTypeX86_64 = new RelocTypeX86_64(((3 : GoInt)));
final arm64_RELOC_TLVP_LOAD_PAGEOFF12:RelocTypeARM64 = new RelocTypeARM64(((9 : GoInt)));
final flagNoReexportedDylibs:GoUInt32 = ((1048576 : GoUInt32));
final _fatArchHeaderSize:GoUnTypedInt = ((5 : GoUnTypedInt)) * ((4 : GoUnTypedInt));
final arm64_RELOC_UNSIGNED:RelocTypeARM64 = new RelocTypeARM64(((0 : GoInt)));
final arm_RELOC_SECTDIFF:RelocTypeARM = new RelocTypeARM(((2 : GoInt)));
final x86_64_RELOC_TLV:RelocTypeX86_64 = new RelocTypeX86_64(((9 : GoInt)));
final flagSetuidSafe:GoUInt32 = ((524288 : GoUInt32));
final x86_64_RELOC_SUBTRACTOR:RelocTypeX86_64 = new RelocTypeX86_64(((5 : GoInt)));
final flagNoUndefs:GoUInt32 = ((1 : GoUInt32));
final flagWeakDefines:GoUInt32 = ((32768 : GoUInt32));
final loadCmdDylib:LoadCmd = new LoadCmd(((12 : GoUInt32)));
final flagSplitSegs:GoUInt32 = ((32 : GoUInt32));
final arm64_RELOC_POINTER_TO_GOT:RelocTypeARM64 = new RelocTypeARM64(((7 : GoInt)));
final arm_THUMB_RELOC_BR22:RelocTypeARM = new RelocTypeARM(((6 : GoInt)));
final loadCmdSymtab:LoadCmd = new LoadCmd(((2 : GoUInt32)));
final _fileHeaderSize32:GoUnTypedInt = ((7 : GoUnTypedInt)) * ((4 : GoUnTypedInt));
final __RelocTypeARM64_name:GoString = "ARM64_RELOC_UNSIGNEDARM64_RELOC_SUBTRACTORARM64_RELOC_BRANCH26ARM64_RELOC_PAGE21ARM64_RELOC_PAGEOFF12ARM64_RELOC_GOT_LOAD_PAGE21ARM64_RELOC_GOT_LOAD_PAGEOFF12ARM64_RELOC_POINTER_TO_GOTARM64_RELOC_TLVP_LOAD_PAGE21ARM64_RELOC_TLVP_LOAD_PAGEOFF12ARM64_RELOC_ADDEND";
final flagHasTLVDescriptors:GoUInt32 = ((8388608 : GoUInt32));

var __RelocTypeARM_index:GoArray<GoUInt8> = new GoArray<GoUInt8>(((0 : GoUInt8)), ((17 : GoUInt8)), ((31 : GoUInt8)), ((49 : GoUInt8)), ((73 : GoUInt8)),
	((92 : GoUInt8)), ((106 : GoUInt8)), ((126 : GoUInt8)), ((148 : GoUInt8)), ((162 : GoUInt8)), ((185 : GoUInt8))).copy();

final flagIncrLink:GoUInt32 = ((2 : GoUInt32));
final flagCanonical:GoUInt32 = ((16384 : GoUInt32));
final x86_64_RELOC_SIGNED:RelocTypeX86_64 = new RelocTypeX86_64(((1 : GoInt)));
final _fileHeaderSize64:GoUnTypedInt = ((8 : GoUnTypedInt)) * ((4 : GoUnTypedInt));
final __RelocTypeX86_64_name:GoString = "X86_64_RELOC_UNSIGNEDX86_64_RELOC_SIGNEDX86_64_RELOC_BRANCHX86_64_RELOC_GOT_LOADX86_64_RELOC_GOTX86_64_RELOC_SUBTRACTORX86_64_RELOC_SIGNED_1X86_64_RELOC_SIGNED_2X86_64_RELOC_SIGNED_4X86_64_RELOC_TLV";
final arm_RELOC_HALF:RelocTypeARM = new RelocTypeARM(((8 : GoInt)));
final generic_RELOC_LOCAL_SECTDIFF:RelocTypeGeneric = new RelocTypeGeneric(((4 : GoInt)));
final flagRootSafe:GoUInt32 = ((262144 : GoUInt32));
final arm64_RELOC_GOT_LOAD_PAGE21:RelocTypeARM64 = new RelocTypeARM64(((5 : GoInt)));
final arm64_RELOC_PAGEOFF12:RelocTypeARM64 = new RelocTypeARM64(((4 : GoInt)));
final arm_THUMB_32BIT_BRANCH:RelocTypeARM = new RelocTypeARM(((7 : GoInt)));
final loadCmdDysymtab:LoadCmd = new LoadCmd(((11 : GoUInt32)));
final arm64_RELOC_ADDEND:RelocTypeARM64 = new RelocTypeARM64(((10 : GoInt)));
final flagPIE:GoUInt32 = ((2097152 : GoUInt32));
final arm64_RELOC_PAGE21:RelocTypeARM64 = new RelocTypeARM64(((3 : GoInt)));
final arm_RELOC_BR24:RelocTypeARM = new RelocTypeARM(((5 : GoInt)));
final flagBindsToWeak:GoUInt32 = ((65536 : GoUInt32));
final flagSubsectionsViaSymbols:GoUInt32 = ((8192 : GoUInt32));
final typeObj:Type = new Type(((1 : GoUInt32)));
final flagPrebindable:GoUInt32 = ((2048 : GoUInt32));
final __RelocTypeGeneric_name:GoString = "GENERIC_RELOC_VANILLAGENERIC_RELOC_PAIRGENERIC_RELOC_SECTDIFFGENERIC_RELOC_PB_LA_PTRGENERIC_RELOC_LOCAL_SECTDIFFGENERIC_RELOC_TLV";
final generic_RELOC_SECTDIFF:RelocTypeGeneric = new RelocTypeGeneric(((2 : GoInt)));
final loadCmdUnixThread:LoadCmd = new LoadCmd(((5 : GoUInt32)));

var __RelocTypeARM64_index:GoArray<GoUInt16> = new GoArray<GoUInt16>(((0 : GoUInt16)), ((20 : GoUInt16)), ((42 : GoUInt16)), ((62 : GoUInt16)),
	((80 : GoUInt16)), ((101 : GoUInt16)), ((128 : GoUInt16)), ((158 : GoUInt16)), ((184 : GoUInt16)), ((212 : GoUInt16)), ((243 : GoUInt16)),
	((261 : GoUInt16))).copy();

final flagDeadStrippableDylib:GoUInt32 = ((4194304 : GoUInt32));
final typeBundle:Type = new Type(((8 : GoUInt32)));
var errNotFat:Pointer<FormatError> = Go.pointer(new FormatError(((0 : GoInt64)), "not a fat Mach-O file", ((null : AnyInterface))));
final flagNoHeapExecution:GoUInt32 = ((16777216 : GoUInt32));
final typeExec:Type = new Type(((2 : GoUInt32)));
final flagAllModsBound:GoUInt32 = ((4096 : GoUInt32));
final generic_RELOC_VANILLA:RelocTypeGeneric = new RelocTypeGeneric(((0 : GoInt)));
final flagDyldLink:GoUInt32 = ((4 : GoUInt32));
final arm64_RELOC_TLVP_LOAD_PAGE21:RelocTypeARM64 = new RelocTypeARM64(((8 : GoInt)));
final arm_RELOC_HALF_SECTDIFF:RelocTypeARM = new RelocTypeARM(((9 : GoInt)));
final generic_RELOC_PB_LA_PTR:RelocTypeGeneric = new RelocTypeGeneric(((3 : GoInt)));
final typeDylib:Type = new Type(((6 : GoUInt32)));

var _typeStrings:Slice<T_intName> = new Slice<T_intName>(new T_intName(typeObj.__t__, "Obj").__copy__(), new T_intName(typeExec.__t__, "Exec").__copy__(),
	new T_intName(typeDylib.__t__, "Dylib").__copy__(), new T_intName(typeBundle.__t__, "Bundle").__copy__());

final flagForceFlat:GoUInt32 = ((256 : GoUInt32));
final x86_64_RELOC_SIGNED_1:RelocTypeX86_64 = new RelocTypeX86_64(((6 : GoInt)));
final flagBindAtLoad:GoUInt32 = ((8 : GoUInt32));
final flagAppExtensionSafe:GoUInt32 = ((33554432 : GoUInt32));
final x86_64_RELOC_SIGNED_2:RelocTypeX86_64 = new RelocTypeX86_64(((7 : GoInt)));
final magic32:GoUInt32 = (("4277009102" : GoUInt32));
final arm64_RELOC_BRANCH26:RelocTypeARM64 = new RelocTypeARM64(((2 : GoInt)));
final arm64_RELOC_SUBTRACTOR:RelocTypeARM64 = new RelocTypeARM64(((1 : GoInt)));
final arm_RELOC_LOCAL_SECTDIFF:RelocTypeARM = new RelocTypeARM(((3 : GoInt)));
final generic_RELOC_TLV:RelocTypeGeneric = new RelocTypeGeneric(((5 : GoInt)));
final flagPrebound:GoUInt32 = ((16 : GoUInt32));
final x86_64_RELOC_SIGNED_4:RelocTypeX86_64 = new RelocTypeX86_64(((8 : GoInt)));
final loadCmdRpath:LoadCmd = new LoadCmd((("2147483676" : GoUInt32)));

var __RelocTypeX86_64_index:GoArray<GoUInt8> = new GoArray<GoUInt8>(((0 : GoUInt8)), ((21 : GoUInt8)), ((40 : GoUInt8)), ((59 : GoUInt8)), ((80 : GoUInt8)),
	((96 : GoUInt8)), ((119 : GoUInt8)), ((140 : GoUInt8)), ((161 : GoUInt8)), ((182 : GoUInt8)), ((198 : GoUInt8))).copy();

final x86_64_RELOC_GOT:RelocTypeX86_64 = new RelocTypeX86_64(((4 : GoInt)));
final x86_64_RELOC_UNSIGNED:RelocTypeX86_64 = new RelocTypeX86_64(((0 : GoInt)));
final loadCmdThread:LoadCmd = new LoadCmd(((4 : GoUInt32)));
final loadCmdSegment64:LoadCmd = new LoadCmd(((25 : GoUInt32)));

var _cmdStrings:Slice<T_intName> = new Slice<T_intName>(new T_intName(loadCmdSegment.__t__, "LoadCmdSegment").__copy__(),
	new T_intName(loadCmdThread.__t__, "LoadCmdThread").__copy__(), new T_intName(loadCmdUnixThread.__t__, "LoadCmdUnixThread").__copy__(),
	new T_intName(loadCmdDylib.__t__, "LoadCmdDylib").__copy__(), new T_intName(loadCmdSegment64.__t__, "LoadCmdSegment64").__copy__(),
	new T_intName(loadCmdRpath.__t__, "LoadCmdRpath").__copy__());

final magicFat:GoUInt32 = (("3405691582" : GoUInt32));
final arm_RELOC_PAIR:RelocTypeARM = new RelocTypeARM(((1 : GoInt)));
final flagTwoLevel:GoUInt32 = ((128 : GoUInt32));
final arm_RELOC_PB_LA_PTR:RelocTypeARM = new RelocTypeARM(((4 : GoInt)));
final x86_64_RELOC_BRANCH:RelocTypeX86_64 = new RelocTypeX86_64(((2 : GoInt)));
final flagAllowStackExecution:GoUInt32 = ((131072 : GoUInt32));
final magic64:GoUInt32 = (("4277009103" : GoUInt32));

var __RelocTypeGeneric_index:GoArray<GoUInt8> = new GoArray<GoUInt8>(((0 : GoUInt8)), ((21 : GoUInt8)), ((39 : GoUInt8)), ((61 : GoUInt8)), ((84 : GoUInt8)),
	((112 : GoUInt8)), ((129 : GoUInt8))).copy();

final flagNoFixPrebinding:GoUInt32 = ((1024 : GoUInt32));
final loadCmdDylinker:LoadCmd = new LoadCmd(((15 : GoUInt32)));

/**
	// NewFatFile creates a new FatFile for accessing all the Mach-O images in a
	// universal binary. The Mach-O binary is expected to start at position 0 in
	// the ReaderAt.
**/
function newFatFile(_r:stdgo.io.Io.ReaderAt):{var _0:Pointer<FatFile>; var _1:Error;} {
	var _ff:FatFile = new FatFile();
	var _sr:Pointer<stdgo.io.Io.SectionReader> = stdgo.io.Io.newSectionReader(_r, ((0 : GoInt64)),
		(((1 : GoUnTypedInt)) << ((63 : GoUnTypedInt))) - ((1 : GoUnTypedInt)));
	var _err:stdgo.Error = stdgo.encoding.binary.Binary.read(_sr.value, stdgo.encoding.binary.Binary.bigEndian.__copy__(),
		Go.toInterface(Go.pointer(_ff.magic)));
	if (_err != null) {
		return {_0: new Pointer<FatFile>().nil(), _1: Go.pointer(new FormatError(((0 : GoInt64)), "error reading magic number", ((null : AnyInterface))))
			.value};
	} else if (_ff.magic != magicFat) {
		var _buf:GoArray<GoByte> = new GoArray<GoUInt8>(...[for (i in 0...4) ((0 : GoUInt8))]);
		stdgo.encoding.binary.Binary.bigEndian.putUint32(_buf.__slice__(0), _ff.magic);
		var _leMagic:GoUInt32 = stdgo.encoding.binary.Binary.littleEndian.uint32(_buf.__slice__(0));
		if (_leMagic == magic32 || _leMagic == magic64) {
			return {_0: new Pointer<FatFile>().nil(), _1: errNotFat.value};
		} else {
			return {_0: new Pointer<FatFile>().nil(), _1: Go.pointer(new FormatError(((0 : GoInt64)), "invalid magic number", ((null : AnyInterface)))).value};
		};
	};
	var _offset:GoInt64 = ((((4 : GoInt64)) : GoInt64));
	var _narch:GoUInt32 = ((0 : GoUInt32));
	_err = stdgo.encoding.binary.Binary.read(_sr.value, stdgo.encoding.binary.Binary.bigEndian.__copy__(), Go.toInterface(Go.pointer(_narch)));
	if (_err != null) {
		return {_0: new Pointer<FatFile>().nil(), _1: Go.pointer(new FormatError(_offset, "invalid fat_header", ((null : AnyInterface)))).value};
	};
	_offset = _offset + (((4 : GoInt64)));
	if (_narch < ((1 : GoUInt32))) {
		return {_0: new Pointer<FatFile>().nil(), _1: Go.pointer(new FormatError(_offset, "file contains no images", ((null : AnyInterface)))).value};
	};
	var _seenArches:GoMap<GoUInt64, Bool> = new GoMap<GoUInt64,
		Bool>(new stdgo.reflect.Reflect._Type(stdgo.reflect.Reflect.GoType.mapType(stdgo.reflect.Reflect.GoType.basic(uint64_kind),
			stdgo.reflect.Reflect.GoType.basic(bool_kind))));
	var _machoType:Type = new Type();
	_ff.arches = new Slice<FatArch>(...[for (i in 0...((_narch : GoInt)).toBasic()) new FatArch()]);
	{
		var _i:GoUInt32 = ((((0 : GoUInt32)) : GoUInt32));
		Go.cfor(_i < _narch, _i++, {
			var _fa:Pointer<FatArch> = Go.pointer(_ff.arches[_i]);
			_err = stdgo.encoding.binary.Binary.read(_sr.value, stdgo.encoding.binary.Binary.bigEndian.__copy__(),
				Go.toInterface(Go.pointer(_fa.value.fatArchHeader)));
			if (_err != null) {
				return {_0: new Pointer<FatFile>().nil(), _1: Go.pointer(new FormatError(_offset, "invalid fat_arch header", ((null : AnyInterface)))).value};
			};
			_offset = _offset + (_fatArchHeaderSize);
			var _fr:Pointer<stdgo.io.Io.SectionReader> = stdgo.io.Io.newSectionReader(_r, ((_fa.value.fatArchHeader.offset : GoInt64)),
				((_fa.value.fatArchHeader.size : GoInt64)));
			{
				var __tmp__ = newFile(_fr.value);
				_fa.value.file = __tmp__._0;
				_err = __tmp__._1;
			};
			if (_err != null) {
				return {_0: new Pointer<FatFile>().nil(), _1: _err};
			};
			var _seenArch:GoUInt64 = ((_fa.value.fatArchHeader.cpu.__t__ << ((32 : GoUnTypedInt)))) | ((_fa.value.fatArchHeader.subCpu : GoUInt64));
			{
				var __tmp__ = _seenArches.exists(_seenArch) ? {value: _seenArches[_seenArch], ok: true} : {value: _seenArches.defaultValue(), ok: false},
					_o:Bool = __tmp__.value,
					_k:Bool = __tmp__.ok;
				if (_o || _k) {
					return {_0: new Pointer<FatFile>().nil(), _1: Go.pointer(new FormatError(_offset,
						stdgo.fmt.Fmt.sprintf("duplicate architecture cpu=%v, subcpu=%#x", Go.toInterface(_fa.value.fatArchHeader.cpu),
							Go.toInterface(_fa.value.fatArchHeader.subCpu)),
						((null : AnyInterface))))
						.value};
				};
			};
			_seenArches[_seenArch] = true;
			if (_i == ((0 : GoUInt32))) {
				_machoType = _fa.value.file.value.fileHeader.type;
			} else {
				if (_fa.value.file.value.fileHeader.type.__t__ != _machoType.__t__) {
					return {_0: new Pointer<FatFile>().nil(), _1: Go.pointer(new FormatError(_offset,
						stdgo.fmt.Fmt.sprintf("Mach-O type for architecture #%d (type=%#x) does not match first (type=%#x)", Go.toInterface(_i),
							Go.toInterface(_fa.value.file.value.fileHeader.type), Go.toInterface(_machoType)),
						((null : AnyInterface))))
						.value};
				};
			};
		});
	};
	return {_0: Go.pointer(_ff), _1: ((null : stdgo.Error))};
}

/**
	// OpenFat opens the named file using os.Open and prepares it for use as a Mach-O
	// universal binary.
**/
function openFat(_name:GoString):{var _0:Pointer<FatFile>; var _1:Error;} {
	var __tmp__ = stdgo.os.Os.open(_name),
		_f:Pointer<stdgo.os.Os.File> = __tmp__._0,
		_err:stdgo.Error = __tmp__._1;
	if (_err != null) {
		return {_0: new Pointer<FatFile>().nil(), _1: _err};
	};
	var __tmp__ = newFatFile(_f.value),
		_ff:Pointer<FatFile> = __tmp__._0,
		_err:stdgo.Error = __tmp__._1;
	if (_err != null) {
		_f.value.close();
		return {_0: new Pointer<FatFile>().nil(), _1: _err};
	};
	_ff.value._closer = _f.value;
	return {_0: _ff, _1: ((null : stdgo.Error))};
}

/**
	// Open opens the named file using os.Open and prepares it for use as a Mach-O binary.
**/
function open(_name:GoString):{var _0:Pointer<File>; var _1:Error;} {
	var __tmp__ = stdgo.os.Os.open(_name),
		_f:Pointer<stdgo.os.Os.File> = __tmp__._0,
		_err:stdgo.Error = __tmp__._1;
	if (_err != null) {
		return {_0: new Pointer<File>().nil(), _1: _err};
	};
	var __tmp__ = newFile(_f.value),
		_ff:Pointer<File> = __tmp__._0,
		_err:stdgo.Error = __tmp__._1;
	if (_err != null) {
		_f.value.close();
		return {_0: new Pointer<File>().nil(), _1: _err};
	};
	_ff.value._closer = _f.value;
	return {_0: _ff, _1: ((null : stdgo.Error))};
}

/**
	// NewFile creates a new File for accessing a Mach-O binary in an underlying reader.
	// The Mach-O binary is expected to start at position 0 in the ReaderAt.
**/
function newFile(_r:stdgo.io.Io.ReaderAt):{var _0:Pointer<File>; var _1:Error;} {
	var _f:Pointer<File> = Go.pointer(new File());
	var _sr:Pointer<stdgo.io.Io.SectionReader> = stdgo.io.Io.newSectionReader(_r, ((0 : GoInt64)),
		(((1 : GoUnTypedInt)) << ((63 : GoUnTypedInt))) - ((1 : GoUnTypedInt)));
	var _ident:GoArray<GoByte> = new GoArray<GoUInt8>(...[for (i in 0...4) ((0 : GoUInt8))]);
	{
		var __tmp__ = _r.readAt(_ident.__slice__(((0 : GoInt))), ((0 : GoInt64))),
			_:GoInt = __tmp__._0,
			_err:stdgo.Error = __tmp__._1;
		if (_err != null) {
			return {_0: new Pointer<File>().nil(), _1: _err};
		};
	};
	var _be:GoUInt32 = stdgo.encoding.binary.Binary.bigEndian.uint32(_ident.__slice__(((0 : GoInt))));
	var _le:GoUInt32 = stdgo.encoding.binary.Binary.littleEndian.uint32(_ident.__slice__(((0 : GoInt))));
	if ((magic32 & ((1 : GoUInt32))) ^ ((-1 : GoUnTypedInt)) == (_be & ((1 : GoUInt32))) ^ ((-1 : GoUnTypedInt))) {
		_f.value.byteOrder = stdgo.encoding.binary.Binary.bigEndian.__copy__();
		_f.value.fileHeader.magic = _be;
	} else if ((magic32 & ((1 : GoUInt32))) ^ ((-1 : GoUnTypedInt)) == (_le & ((1 : GoUInt32))) ^ ((-1 : GoUnTypedInt))) {
		_f.value.byteOrder = stdgo.encoding.binary.Binary.littleEndian.__copy__();
		_f.value.fileHeader.magic = _le;
	} else {
		return {_0: new Pointer<File>().nil(), _1: Go.pointer(new FormatError(((0 : GoInt64)), "invalid magic number", ((null : AnyInterface)))).value};
	};
	{
		var _err:stdgo.Error = stdgo.encoding.binary.Binary.read(_sr.value, _f.value.byteOrder, Go.toInterface(Go.pointer(_f.value.fileHeader)));
		if (_err != null) {
			return {_0: new Pointer<File>().nil(), _1: _err};
		};
	};
	var _offset:GoInt64 = ((_fileHeaderSize32 : GoInt64));
	if (_f.value.fileHeader.magic == magic64) {
		_offset = _fileHeaderSize64;
	};
	var _dat:Slice<GoUInt8> = new Slice<GoUInt8>(...[for (i in 0...((_f.value.fileHeader.cmdsz : GoInt)).toBasic()) ((0 : GoUInt8))]);
	{
		var __tmp__ = _r.readAt(_dat, _offset),
			_:GoInt = __tmp__._0,
			_err:stdgo.Error = __tmp__._1;
		if (_err != null) {
			return {_0: new Pointer<File>().nil(), _1: _err};
		};
	};
	_f.value.loads = new Slice<Load>(...[for (i in 0...((_f.value.fileHeader.ncmd : GoInt)).toBasic()) ((null : Load))]);
	var _bo:stdgo.encoding.binary.Binary.ByteOrder = _f.value.byteOrder;
	{
		var _i;
		for (_obj in _f.value.loads.keyValueIterator()) {
			_i = _obj.key;
			if (_dat.length < ((8 : GoInt))) {
				return {_0: new Pointer<File>().nil(), _1: Go.pointer(new FormatError(_offset, "command block too small", ((null : AnyInterface)))).value};
			};
			var _cmd:LoadCmd = new LoadCmd(_bo.uint32(_dat.__slice__(((0 : GoInt)), ((4 : GoInt))))),
				_siz:GoUInt32 = _bo.uint32(_dat.__slice__(((4 : GoInt)), ((8 : GoInt))));
			if (_siz < ((8 : GoUInt32)) || _siz > ((_dat.length : GoUInt32))) {
				return {_0: new Pointer<File>().nil(), _1: Go.pointer(new FormatError(_offset, "invalid command block size", ((null : AnyInterface)))).value};
			};
			var _cmddat:Slice<GoByte> = new Slice<GoUInt8>().nil();
			{
				final __tmp__0 = _dat.__slice__(((0 : GoInt)), _siz);
				final __tmp__1 = _dat.__slice__(_siz);
				_cmddat = __tmp__0;
				_dat = __tmp__1;
			};
			_offset = _offset + (((_siz : GoInt64)));
			var _s:Pointer<Segment> = new Pointer<Segment>().nil();
			if (_cmd.__t__ == loadCmdRpath.__t__) {
				var _hdr:RpathCmd = new RpathCmd();
				var _b:Pointer<stdgo.bytes.Bytes.Reader> = stdgo.bytes.Bytes.newReader(_cmddat);
				{
					var _err:stdgo.Error = stdgo.encoding.binary.Binary.read(_b.value, _bo, Go.toInterface(Go.pointer(_hdr)));
					if (_err != null) {
						return {_0: new Pointer<File>().nil(), _1: _err};
					};
				};
				var _l:Pointer<Rpath> = Go.pointer(new Rpath());
				if (_hdr.path >= ((_cmddat.length : GoUInt32))) {
					return {_0: new Pointer<File>().nil(), _1: Go.pointer(new FormatError(_offset, "invalid path in rpath command", Go.toInterface(_hdr.path)))
						.value};
				};
				_l.value.path = _cstring(_cmddat.__slice__(_hdr.path));
				_l.value.loadBytes = new LoadBytes(_cmddat).__copy__();
				_f.value.loads[_i] = _l.value;
			} else if (_cmd.__t__ == loadCmdDylib.__t__) {
				var _hdr:DylibCmd = new DylibCmd();
				var _b:Pointer<stdgo.bytes.Bytes.Reader> = stdgo.bytes.Bytes.newReader(_cmddat);
				{
					var _err:stdgo.Error = stdgo.encoding.binary.Binary.read(_b.value, _bo, Go.toInterface(Go.pointer(_hdr)));
					if (_err != null) {
						return {_0: new Pointer<File>().nil(), _1: _err};
					};
				};
				var _l:Pointer<Dylib> = Go.pointer(new Dylib());
				if (_hdr.name >= ((_cmddat.length : GoUInt32))) {
					return {_0: new Pointer<File>().nil(), _1: Go.pointer(new FormatError(_offset, "invalid name in dynamic library command",
						Go.toInterface(_hdr.name)))
						.value};
				};
				_l.value.name = _cstring(_cmddat.__slice__(_hdr.name));
				_l.value.time = _hdr.time;
				_l.value.currentVersion = _hdr.currentVersion;
				_l.value.compatVersion = _hdr.compatVersion;
				_l.value.loadBytes = new LoadBytes(_cmddat).__copy__();
				_f.value.loads[_i] = _l.value;
			} else if (_cmd.__t__ == loadCmdSymtab.__t__) {
				var _hdr:SymtabCmd = new SymtabCmd();
				var _b:Pointer<stdgo.bytes.Bytes.Reader> = stdgo.bytes.Bytes.newReader(_cmddat);
				{
					var _err:stdgo.Error = stdgo.encoding.binary.Binary.read(_b.value, _bo, Go.toInterface(Go.pointer(_hdr)));
					if (_err != null) {
						return {_0: new Pointer<File>().nil(), _1: _err};
					};
				};
				var _strtab:Slice<GoUInt8> = new Slice<GoUInt8>(...[for (i in 0...((_hdr.strsize : GoInt)).toBasic()) ((0 : GoUInt8))]);
				{
					var __tmp__ = _r.readAt(_strtab, ((_hdr.stroff : GoInt64))),
						_:GoInt = __tmp__._0,
						_err:stdgo.Error = __tmp__._1;
					if (_err != null) {
						return {_0: new Pointer<File>().nil(), _1: _err};
					};
				};
				var _symsz:GoInt = ((0 : GoInt));
				if (_f.value.fileHeader.magic == magic64) {
					_symsz = ((16 : GoInt));
				} else {
					_symsz = ((12 : GoInt));
				};
				var _symdat:Slice<GoUInt8> = new Slice<GoUInt8>(...[
					for (i in 0...((((_hdr.nsyms : GoInt)) * _symsz : GoInt)).toBasic()) ((0 : GoUInt8))
				]);
				{
					var __tmp__ = _r.readAt(_symdat, ((_hdr.symoff : GoInt64))),
						_:GoInt = __tmp__._0,
						_err:stdgo.Error = __tmp__._1;
					if (_err != null) {
						return {_0: new Pointer<File>().nil(), _1: _err};
					};
				};
				var __tmp__ = _f.value._parseSymtab(_symdat, _strtab, _cmddat, Go.pointer(_hdr), _offset),
					_st:Pointer<Symtab> = __tmp__._0,
					_err:stdgo.Error = __tmp__._1;
				if (_err != null) {
					return {_0: new Pointer<File>().nil(), _1: _err};
				};
				_f.value.loads[_i] = _st.value;
				_f.value.symtab = _st;
			} else if (_cmd.__t__ == loadCmdDysymtab.__t__) {
				var _hdr:DysymtabCmd = new DysymtabCmd();
				var _b:Pointer<stdgo.bytes.Bytes.Reader> = stdgo.bytes.Bytes.newReader(_cmddat);
				{
					var _err:stdgo.Error = stdgo.encoding.binary.Binary.read(_b.value, _bo, Go.toInterface(Go.pointer(_hdr)));
					if (_err != null) {
						return {_0: new Pointer<File>().nil(), _1: _err};
					};
				};
				var _dat:Slice<GoUInt8> = new Slice<GoUInt8>(...[
					for (i in 0...((_hdr.nindirectsyms * ((4 : GoUInt32)):GoInt)).toBasic()) ((0 : GoUInt8))
				]);
				{
					var __tmp__ = _r.readAt(_dat, ((_hdr.indirectsymoff : GoInt64))),
						_:GoInt = __tmp__._0,
						_err:stdgo.Error = __tmp__._1;
					if (_err != null) {
						return {_0: new Pointer<File>().nil(), _1: _err};
					};
				};
				var _x:Slice<GoUInt32> = new Slice<GoUInt32>(...[for (i in 0...((_hdr.nindirectsyms : GoInt)).toBasic()) ((0 : GoUInt32))]);
				{
					var _err:stdgo.Error = stdgo.encoding.binary.Binary.read(stdgo.bytes.Bytes.newReader(_dat).value, _bo, Go.toInterface(_x));
					if (_err != null) {
						return {_0: new Pointer<File>().nil(), _1: _err};
					};
				};
				var _st:Pointer<Dysymtab> = Go.pointer(new Dysymtab());
				_st.value.loadBytes = new LoadBytes(_cmddat).__copy__();
				_st.value.dysymtabCmd = _hdr.__copy__();
				_st.value.indirectSyms = _x;
				_f.value.loads[_i] = _st.value;
				_f.value.dysymtab = _st;
			} else if (_cmd.__t__ == loadCmdSegment.__t__) {
				var _seg32:Segment32 = new Segment32();
				var _b:Pointer<stdgo.bytes.Bytes.Reader> = stdgo.bytes.Bytes.newReader(_cmddat);
				{
					var _err:stdgo.Error = stdgo.encoding.binary.Binary.read(_b.value, _bo, Go.toInterface(Go.pointer(_seg32)));
					if (_err != null) {
						return {_0: new Pointer<File>().nil(), _1: _err};
					};
				};
				_s = Go.pointer(new Segment());
				_s.value.loadBytes = new LoadBytes(_cmddat);
				_s.value.segmentHeader.cmd = _cmd;
				_s.value.segmentHeader.len = _siz;
				_s.value.segmentHeader.name = _cstring(_seg32.name.__slice__(((0 : GoInt))));
				_s.value.segmentHeader.addr = ((_seg32.addr : GoUInt64));
				_s.value.segmentHeader.memsz = ((_seg32.memsz : GoUInt64));
				_s.value.segmentHeader.offset = ((_seg32.offset : GoUInt64));
				_s.value.segmentHeader.filesz = ((_seg32.filesz : GoUInt64));
				_s.value.segmentHeader.maxprot = _seg32.maxprot;
				_s.value.segmentHeader.prot = _seg32.prot;
				_s.value.segmentHeader.nsect = _seg32.nsect;
				_s.value.segmentHeader.flag = _seg32.flag;
				_f.value.loads[_i] = _s.value;
				{
					var _i:GoInt = ((0 : GoInt));
					Go.cfor(_i < ((_s.value.segmentHeader.nsect : GoInt)), _i++, {
						var _sh32:Section32 = new Section32();
						{
							var _err:stdgo.Error = stdgo.encoding.binary.Binary.read(_b.value, _bo, Go.toInterface(Go.pointer(_sh32)));
							if (_err != null) {
								return {_0: new Pointer<File>().nil(), _1: _err};
							};
						};
						var _sh:Pointer<Section> = Go.pointer(new Section());
						_sh.value.sectionHeader.name = _cstring(_sh32.name.__slice__(((0 : GoInt))));
						_sh.value.sectionHeader.seg = _cstring(_sh32.seg.__slice__(((0 : GoInt))));
						_sh.value.sectionHeader.addr = ((_sh32.addr : GoUInt64));
						_sh.value.sectionHeader.size = ((_sh32.size : GoUInt64));
						_sh.value.sectionHeader.offset = _sh32.offset;
						_sh.value.sectionHeader.align = _sh32.align;
						_sh.value.sectionHeader.reloff = _sh32.reloff;
						_sh.value.sectionHeader.nreloc = _sh32.nreloc;
						_sh.value.sectionHeader.flags = _sh32.flags;
						{
							var _err:stdgo.Error = _f.value._pushSection(_sh, _r);
							if (_err != null) {
								return {_0: new Pointer<File>().nil(), _1: _err};
							};
						};
					});
				};
			} else if (_cmd.__t__ == loadCmdSegment64.__t__) {
				var _seg64:Segment64 = new Segment64();
				var _b:Pointer<stdgo.bytes.Bytes.Reader> = stdgo.bytes.Bytes.newReader(_cmddat);
				{
					var _err:stdgo.Error = stdgo.encoding.binary.Binary.read(_b.value, _bo, Go.toInterface(Go.pointer(_seg64)));
					if (_err != null) {
						return {_0: new Pointer<File>().nil(), _1: _err};
					};
				};
				_s = Go.pointer(new Segment());
				_s.value.loadBytes = new LoadBytes(_cmddat);
				_s.value.segmentHeader.cmd = _cmd;
				_s.value.segmentHeader.len = _siz;
				_s.value.segmentHeader.name = _cstring(_seg64.name.__slice__(((0 : GoInt))));
				_s.value.segmentHeader.addr = _seg64.addr;
				_s.value.segmentHeader.memsz = _seg64.memsz;
				_s.value.segmentHeader.offset = _seg64.offset;
				_s.value.segmentHeader.filesz = _seg64.filesz;
				_s.value.segmentHeader.maxprot = _seg64.maxprot;
				_s.value.segmentHeader.prot = _seg64.prot;
				_s.value.segmentHeader.nsect = _seg64.nsect;
				_s.value.segmentHeader.flag = _seg64.flag;
				_f.value.loads[_i] = _s.value;
				{
					var _i:GoInt = ((0 : GoInt));
					Go.cfor(_i < ((_s.value.segmentHeader.nsect : GoInt)), _i++, {
						var _sh64:Section64 = new Section64();
						{
							var _err:stdgo.Error = stdgo.encoding.binary.Binary.read(_b.value, _bo, Go.toInterface(Go.pointer(_sh64)));
							if (_err != null) {
								return {_0: new Pointer<File>().nil(), _1: _err};
							};
						};
						var _sh:Pointer<Section> = Go.pointer(new Section());
						_sh.value.sectionHeader.name = _cstring(_sh64.name.__slice__(((0 : GoInt))));
						_sh.value.sectionHeader.seg = _cstring(_sh64.seg.__slice__(((0 : GoInt))));
						_sh.value.sectionHeader.addr = _sh64.addr;
						_sh.value.sectionHeader.size = _sh64.size;
						_sh.value.sectionHeader.offset = _sh64.offset;
						_sh.value.sectionHeader.align = _sh64.align;
						_sh.value.sectionHeader.reloff = _sh64.reloff;
						_sh.value.sectionHeader.nreloc = _sh64.nreloc;
						_sh.value.sectionHeader.flags = _sh64.flags;
						{
							var _err:stdgo.Error = _f.value._pushSection(_sh, _r);
							if (_err != null) {
								return {_0: new Pointer<File>().nil(), _1: _err};
							};
						};
					});
				};
			};
			if (_s != null && !_s.isNil()) {
				_s.value._sr = stdgo.io.Io.newSectionReader(_r, ((_s.value.segmentHeader.offset : GoInt64)), ((_s.value.segmentHeader.filesz : GoInt64)));
				_s.value.readerAt = _s.value._sr.value;
			};
		};
	};
	return {_0: _f, _1: ((null : stdgo.Error))};
}

function _cstring(_b:Slice<GoByte>):GoString {
	var _i:GoInt = stdgo.bytes.Bytes.indexByte(_b, ((0 : GoUInt8)));
	if (_i == -((1 : GoUnTypedInt))) {
		_i = _b.length;
	};
	return ((_b.__slice__(((0 : GoInt)), _i) : GoString));
}

function _stringName(_i:GoUInt32, _names:Slice<T_intName>, _goSyntax:Bool):GoString {
	for (_n in _names) {
		if (_n._i == _i) {
			if (_goSyntax) {
				return (("macho." : GoString)) + _n._s;
			};
			return _n._s;
		};
	};
	return stdgo.strconv.Strconv.formatUint(((_i : GoUInt64)), ((10 : GoInt)));
}

class FatFile_extension_fields {
	public function close(__tmp__):Error
		return __tmp__.close();
}

class File_extension_fields {
	public function close(__tmp__):Error
		return __tmp__.close();

	public function _parseSymtab(__tmp__, _symdat:Slice<GoByte>, _strtab:Slice<GoByte>, _cmddat:Slice<GoByte>, _hdr:Pointer<SymtabCmd>,
			_offset:GoInt64):{var _0:Pointer<Symtab>; var _1:Error;}
		return __tmp__._parseSymtab(_symdat, _strtab, _cmddat, _hdr, _offset);

	public function _pushSection(__tmp__, _sh:Pointer<Section>, _r:stdgo.io.Io.ReaderAt):Error
		return __tmp__._pushSection(_sh, _r);

	public function segment(__tmp__, _name:GoString):Pointer<Segment>
		return __tmp__.segment(_name);

	public function section(__tmp__, _name:GoString):Pointer<Section>
		return __tmp__.section(_name);

	public function dwarf(__tmp__):{var _0:Pointer<stdgo.debug.dwarf.Dwarf.Data>; var _1:Error;}
		return __tmp__.dwarf();

	public function importedSymbols(__tmp__):{var _0:Slice<GoString>; var _1:Error;}
		return __tmp__.importedSymbols();

	public function importedLibraries(__tmp__):{var _0:Slice<GoString>; var _1:Error;}
		return __tmp__.importedLibraries();
}

class LoadBytes_extension_fields {
	public function raw(__tmp__):Slice<GoByte>
		return __tmp__.raw();
}

class Segment_extension_fields {
	public function data(__tmp__):{var _0:Slice<GoByte>; var _1:Error;}
		return __tmp__.data();

	public function open(__tmp__):stdgo.io.Io.ReadSeeker
		return __tmp__.open();
}

class Section_extension_fields {
	public function data(__tmp__):{var _0:Slice<GoByte>; var _1:Error;}
		return __tmp__.data();

	public function open(__tmp__):stdgo.io.Io.ReadSeeker
		return __tmp__.open();
}

class FormatError_extension_fields {
	public function error(__tmp__):GoString
		return __tmp__.error();
}

class Type_extension_fields {
	public function toString(__tmp__):GoString
		return __tmp__.toString();

	public function goString(__tmp__):GoString
		return __tmp__.goString();
}

class Cpu_extension_fields {
	public function toString(__tmp__):GoString
		return __tmp__.toString();

	public function goString(__tmp__):GoString
		return __tmp__.goString();
}

class LoadCmd_extension_fields {
	public function toString(__tmp__):GoString
		return __tmp__.toString();

	public function goString(__tmp__):GoString
		return __tmp__.goString();
}

class RelocTypeGeneric_extension_fields {
	public function goString(__tmp__):GoString
		return __tmp__.goString();

	public function toString(__tmp__):GoString
		return __tmp__.toString();
}

class RelocTypeX86_64_extension_fields {
	public function goString(__tmp__):GoString
		return __tmp__.goString();

	public function toString(__tmp__):GoString
		return __tmp__.toString();
}

class RelocTypeARM_extension_fields {
	public function goString(__tmp__):GoString
		return __tmp__.goString();

	public function toString(__tmp__):GoString
		return __tmp__.toString();
}

class RelocTypeARM64_extension_fields {
	public function goString(__tmp__):GoString
		return __tmp__.goString();

	public function toString(__tmp__):GoString
		return __tmp__.toString();
}
