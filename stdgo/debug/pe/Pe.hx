package stdgo.debug.pe;

import stdgo.StdGoTypes;
import stdgo.Error;
import stdgo.Go;
import stdgo.GoString;
import stdgo.Pointer;
import stdgo.Slice;
import stdgo.GoArray;
import stdgo.GoMap;
import stdgo.Chan;

@:structInit class File {
	public function importedLibraries():{var _0:Slice<GoString>; var _1:Error;} {
		var _f = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
		return {_0: new Slice<GoString>().nil(), _1: ((null : stdgo.Error))};
	}

	public function importedSymbols():{var _0:Slice<GoString>; var _1:Error;} {
		var _f = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
		if (_f.value.optionalHeader == null) {
			return {_0: new Slice<GoString>().nil(), _1: ((null : stdgo.Error))};
		};
		var _pe64:Bool = _f.value.fileHeader.machine == image_FILE_MACHINE_AMD64
			|| _f.value.fileHeader.machine == image_FILE_MACHINE_ARM64;
		var _dd_length:GoUInt32 = ((0 : GoUInt32));
		if (_pe64) {
			_dd_length = ((_f.value.optionalHeader.value : Pointer<OptionalHeader64>)).value.numberOfRvaAndSizes;
		} else {
			_dd_length = ((_f.value.optionalHeader.value : Pointer<OptionalHeader32>)).value.numberOfRvaAndSizes;
		};
		if (_dd_length < image_DIRECTORY_ENTRY_IMPORT + ((1 : GoUnTypedInt))) {
			return {_0: new Slice<GoString>().nil(), _1: ((null : stdgo.Error))};
		};
		var _idd:DataDirectory = new DataDirectory();
		if (_pe64) {
			_idd = ((_f.value.optionalHeader.value : Pointer<OptionalHeader64>)).value.dataDirectory[image_DIRECTORY_ENTRY_IMPORT].__copy__();
		} else {
			_idd = ((_f.value.optionalHeader.value : Pointer<OptionalHeader32>)).value.dataDirectory[image_DIRECTORY_ENTRY_IMPORT].__copy__();
		};
		var _ds:Pointer<Section> = new Pointer<Section>().nil();
		_ds = new Pointer<Section>().nil();
		for (_s in _f.value.sections) {
			if (_s.value.sectionHeader.virtualAddress <= _idd.virtualAddress
				&& _idd.virtualAddress < _s.value.sectionHeader.virtualAddress + _s.value.sectionHeader.virtualSize) {
				_ds = _s;
				break;
			};
		};
		if (_ds == null || _ds.isNil()) {
			return {_0: new Slice<GoString>().nil(), _1: ((null : stdgo.Error))};
		};
		var __tmp__ = _ds.value.data(),
			_d:Slice<GoUInt8> = __tmp__._0,
			_err:stdgo.Error = __tmp__._1;
		if (_err != null) {
			return {_0: new Slice<GoString>().nil(), _1: _err};
		};
		_d = _d.__slice__(_idd.virtualAddress - _ds.value.sectionHeader.virtualAddress);
		var _ida:Slice<ImportDirectory> = new Slice<ImportDirectory>().nil();
		while (_d.length >= ((20 : GoInt))) {
			var _dt:ImportDirectory = new ImportDirectory();
			_dt.originalFirstThunk = stdgo.encoding.binary.Binary.littleEndian.uint32(_d.__slice__(((0 : GoInt)), ((4 : GoInt))));
			_dt.timeDateStamp = stdgo.encoding.binary.Binary.littleEndian.uint32(_d.__slice__(((4 : GoInt)), ((8 : GoInt))));
			_dt.forwarderChain = stdgo.encoding.binary.Binary.littleEndian.uint32(_d.__slice__(((8 : GoInt)), ((12 : GoInt))));
			_dt.name = stdgo.encoding.binary.Binary.littleEndian.uint32(_d.__slice__(((12 : GoInt)), ((16 : GoInt))));
			_dt.firstThunk = stdgo.encoding.binary.Binary.littleEndian.uint32(_d.__slice__(((16 : GoInt)), ((20 : GoInt))));
			_d = _d.__slice__(((20 : GoInt)));
			if (_dt.originalFirstThunk == ((0 : GoUInt32))) {
				break;
			};
			_ida = _ida.__append__(_dt.__copy__());
		};
		var __tmp__ = _ds.value.data(),
			_names:Slice<GoUInt8> = __tmp__._0,
			_:stdgo.Error = __tmp__._1;
		var _all:Slice<GoString> = new Slice<GoString>().nil();
		for (_dt in _ida) {
			{
				var __tmp__ = _getString(_names, (((_dt.name - _ds.value.sectionHeader.virtualAddress) : GoInt)));
				_dt._dll = __tmp__._0;
			};
			{
				var __tmp__ = _ds.value.data();
				_d = __tmp__._0;
			};
			_d = _d.__slice__(_dt.originalFirstThunk - _ds.value.sectionHeader.virtualAddress);
			while (_d.length > ((0 : GoInt))) {
				if (_pe64) {
					var _va:GoUInt64 = stdgo.encoding.binary.Binary.littleEndian.uint64(_d.__slice__(((0 : GoInt)), ((8 : GoInt))));
					_d = _d.__slice__(((8 : GoInt)));
					if (_va == ((0 : GoUInt64))) {
						break;
					};
					if (_va & (("9223372036854775808" : GoUInt64)) > ((0 : GoUInt64))) {} else {
						var __tmp__ = _getString(_names, (((((_va : GoUInt32)) - _ds.value.sectionHeader.virtualAddress + ((2 : GoUInt32))) : GoInt))),
							_fn:GoString = __tmp__._0,
							_:Bool = __tmp__._1;
						_all = _all.__append__(_fn + ((":" : GoString)) + _dt._dll);
					};
				} else {
					var _va:GoUInt32 = stdgo.encoding.binary.Binary.littleEndian.uint32(_d.__slice__(((0 : GoInt)), ((4 : GoInt))));
					_d = _d.__slice__(((4 : GoInt)));
					if (_va == ((0 : GoUInt32))) {
						break;
					};
					if (_va & (("2147483648" : GoUInt32)) > ((0 : GoUInt32))) {} else {
						var __tmp__ = _getString(_names, (((_va - _ds.value.sectionHeader.virtualAddress + ((2 : GoUInt32))) : GoInt))),
							_fn:GoString = __tmp__._0,
							_:Bool = __tmp__._1;
						_all = _all.__append__(_fn + ((":" : GoString)) + _dt._dll);
					};
				};
			};
		};
		return {_0: _all, _1: ((null : stdgo.Error))};
	}

	public function dwarf():{var _0:Pointer<stdgo.debug.dwarf.Dwarf.Data>; var _1:Error;} {
		var _f = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
		var _dwarfSuffix:Pointer<Section>->GoString = function(_s:Pointer<Section>):GoString {
			if (stdgo.strings.Strings.hasPrefix(_s.value.sectionHeader.name, ".debug_")) {
				return _s.value.sectionHeader.name.__slice__(((7 : GoInt)));
			} else if (stdgo.strings.Strings.hasPrefix(_s.value.sectionHeader.name, ".zdebug_")) {
				return _s.value.sectionHeader.name.__slice__(((8 : GoInt)));
			} else {
				return "";
			};
		};
		var _sectionData:Pointer<Section> -> {
			var _0:Slice<GoUInt8>;
			var _1:stdgo.Error;
		} = function(_s:Pointer<Section>):{var _0:Slice<GoByte>; var _1:Error;} {
			var __tmp__ = _s.value.data(), _b:Slice<GoUInt8> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
			if (_err != null && ((_b.length : GoUInt32)) < _s.value.sectionHeader.size) {
				return {_0: new Slice<GoUInt8>().nil(), _1: _err};
			};
			if (((0 : GoUInt32)) < _s.value.sectionHeader.virtualSize
				&& _s.value.sectionHeader.virtualSize < _s.value.sectionHeader.size) {
				_b = _b.__slice__(0, _s.value.sectionHeader.virtualSize);
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
	public var optionalHeader:AnyInterface = ((null : AnyInterface));
	public var sections:Slice<Pointer<Section>> = new Slice<Pointer<Section>>().nil();
	public var symbols:Slice<Pointer<Symbol>> = new Slice<Pointer<Symbol>>().nil();
	public var coffsymbols:Slice<COFFSymbol> = new Slice<COFFSymbol>().nil();
	public var stringTable:StringTable = new StringTable();
	public var _closer:stdgo.io.Io.Closer = ((null : stdgo.io.Io.Closer));

	public function new(?fileHeader:FileHeader, ?optionalHeader:AnyInterface, ?sections:Slice<Pointer<Section>>, ?symbols:Slice<Pointer<Symbol>>,
			?coffsymbols:Slice<COFFSymbol>, ?stringTable:StringTable, ?_closer:stdgo.io.Io.Closer)
		stdgo.internal.Macro.initLocals();

	public function toString() {
		return '{' + Go.string(fileHeader) + " " + Go.string(optionalHeader) + " " + Go.string(sections) + " " + Go.string(symbols) + " "
			+ Go.string(coffsymbols) + " " + Go.string(stringTable) + " " + Go.string(_closer) + "}";
	}

	public function __underlying__():AnyInterface
		return Go.toInterface(this);

	public function __copy__() {
		return new File(fileHeader, optionalHeader, sections, symbols, coffsymbols, stringTable, _closer);
	}

	public function __set__(__tmp__) {
		this.fileHeader = __tmp__.fileHeader;
		this.optionalHeader = __tmp__.optionalHeader;
		this.sections = __tmp__.sections;
		this.symbols = __tmp__.symbols;
		this.coffsymbols = __tmp__.coffsymbols;
		this.stringTable = __tmp__.stringTable;
		this._closer = __tmp__._closer;
		return this;
	}
}

@:structInit class T_zeroReaderAt {
	public function readAt(_p:Slice<GoByte>, _off:GoInt64):{var _0:GoInt; var _1:Error;} {
		var _w = this.__copy__();
		var _n:GoInt = ((0 : GoInt)), _err:Error = ((null : stdgo.Error));
		{
			var _i;
			for (_obj in _p.keyValueIterator()) {
				_i = _obj.key;
				_p[_i] = ((0 : GoUInt8));
			};
		};
		return {_0: _p.length, _1: ((null : stdgo.Error))};
	}

	public function new()
		stdgo.internal.Macro.initLocals();

	public function toString() {
		return "{}";
	}

	public function __underlying__():AnyInterface
		return Go.toInterface(this);

	public function __copy__() {
		return new T_zeroReaderAt();
	}

	public function __set__(__tmp__) {
		return this;
	}
}

@:structInit class ImportDirectory {
	public var originalFirstThunk:GoUInt32 = ((0 : GoUInt32));
	public var timeDateStamp:GoUInt32 = ((0 : GoUInt32));
	public var forwarderChain:GoUInt32 = ((0 : GoUInt32));
	public var name:GoUInt32 = ((0 : GoUInt32));
	public var firstThunk:GoUInt32 = ((0 : GoUInt32));
	public var _dll:GoString = (("" : GoString));

	public function new(?originalFirstThunk:GoUInt32, ?timeDateStamp:GoUInt32, ?forwarderChain:GoUInt32, ?name:GoUInt32, ?firstThunk:GoUInt32, ?_dll:GoString)
		stdgo.internal.Macro.initLocals();

	public function toString() {
		return '{' + Go.string(originalFirstThunk) + " " + Go.string(timeDateStamp) + " " + Go.string(forwarderChain) + " " + Go.string(name) + " "
			+ Go.string(firstThunk) + " " + Go.string(_dll) + "}";
	}

	public function __underlying__():AnyInterface
		return Go.toInterface(this);

	public function __copy__() {
		return new ImportDirectory(originalFirstThunk, timeDateStamp, forwarderChain, name, firstThunk, _dll);
	}

	public function __set__(__tmp__) {
		this.originalFirstThunk = __tmp__.originalFirstThunk;
		this.timeDateStamp = __tmp__.timeDateStamp;
		this.forwarderChain = __tmp__.forwarderChain;
		this.name = __tmp__.name;
		this.firstThunk = __tmp__.firstThunk;
		this._dll = __tmp__._dll;
		return this;
	}
}

@:structInit class FormatError {
	public function error():GoString {
		var _e = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
		return "unknown error";
	}

	public function new()
		stdgo.internal.Macro.initLocals();

	public function toString() {
		return "{}";
	}

	public function __underlying__():AnyInterface
		return Go.toInterface(this);

	public function __copy__() {
		return new FormatError();
	}

	public function __set__(__tmp__) {
		return this;
	}
}

@:structInit class FileHeader {
	public var machine:GoUInt16 = ((0 : GoUInt16));
	public var numberOfSections:GoUInt16 = ((0 : GoUInt16));
	public var timeDateStamp:GoUInt32 = ((0 : GoUInt32));
	public var pointerToSymbolTable:GoUInt32 = ((0 : GoUInt32));
	public var numberOfSymbols:GoUInt32 = ((0 : GoUInt32));
	public var sizeOfOptionalHeader:GoUInt16 = ((0 : GoUInt16));
	public var characteristics:GoUInt16 = ((0 : GoUInt16));

	public function new(?machine:GoUInt16, ?numberOfSections:GoUInt16, ?timeDateStamp:GoUInt32, ?pointerToSymbolTable:GoUInt32, ?numberOfSymbols:GoUInt32,
			?sizeOfOptionalHeader:GoUInt16, ?characteristics:GoUInt16)
		stdgo.internal.Macro.initLocals();

	public function toString() {
		return '{' + Go.string(machine) + " " + Go.string(numberOfSections) + " " + Go.string(timeDateStamp) + " " + Go.string(pointerToSymbolTable) + " "
			+ Go.string(numberOfSymbols) + " " + Go.string(sizeOfOptionalHeader) + " " + Go.string(characteristics) + "}";
	}

	public function __underlying__():AnyInterface
		return Go.toInterface(this);

	public function __copy__() {
		return new FileHeader(machine, numberOfSections, timeDateStamp, pointerToSymbolTable, numberOfSymbols, sizeOfOptionalHeader, characteristics);
	}

	public function __set__(__tmp__) {
		this.machine = __tmp__.machine;
		this.numberOfSections = __tmp__.numberOfSections;
		this.timeDateStamp = __tmp__.timeDateStamp;
		this.pointerToSymbolTable = __tmp__.pointerToSymbolTable;
		this.numberOfSymbols = __tmp__.numberOfSymbols;
		this.sizeOfOptionalHeader = __tmp__.sizeOfOptionalHeader;
		this.characteristics = __tmp__.characteristics;
		return this;
	}
}

@:structInit class DataDirectory {
	public var virtualAddress:GoUInt32 = ((0 : GoUInt32));
	public var size:GoUInt32 = ((0 : GoUInt32));

	public function new(?virtualAddress:GoUInt32, ?size:GoUInt32)
		stdgo.internal.Macro.initLocals();

	public function toString() {
		return '{' + Go.string(virtualAddress) + " " + Go.string(size) + "}";
	}

	public function __underlying__():AnyInterface
		return Go.toInterface(this);

	public function __copy__() {
		return new DataDirectory(virtualAddress, size);
	}

	public function __set__(__tmp__) {
		this.virtualAddress = __tmp__.virtualAddress;
		this.size = __tmp__.size;
		return this;
	}
}

@:structInit class OptionalHeader32 {
	public var magic:GoUInt16 = ((0 : GoUInt16));
	public var majorLinkerVersion:GoUInt8 = ((0 : GoUInt8));
	public var minorLinkerVersion:GoUInt8 = ((0 : GoUInt8));
	public var sizeOfCode:GoUInt32 = ((0 : GoUInt32));
	public var sizeOfInitializedData:GoUInt32 = ((0 : GoUInt32));
	public var sizeOfUninitializedData:GoUInt32 = ((0 : GoUInt32));
	public var addressOfEntryPoint:GoUInt32 = ((0 : GoUInt32));
	public var baseOfCode:GoUInt32 = ((0 : GoUInt32));
	public var baseOfData:GoUInt32 = ((0 : GoUInt32));
	public var imageBase:GoUInt32 = ((0 : GoUInt32));
	public var sectionAlignment:GoUInt32 = ((0 : GoUInt32));
	public var fileAlignment:GoUInt32 = ((0 : GoUInt32));
	public var majorOperatingSystemVersion:GoUInt16 = ((0 : GoUInt16));
	public var minorOperatingSystemVersion:GoUInt16 = ((0 : GoUInt16));
	public var majorImageVersion:GoUInt16 = ((0 : GoUInt16));
	public var minorImageVersion:GoUInt16 = ((0 : GoUInt16));
	public var majorSubsystemVersion:GoUInt16 = ((0 : GoUInt16));
	public var minorSubsystemVersion:GoUInt16 = ((0 : GoUInt16));
	public var win32VersionValue:GoUInt32 = ((0 : GoUInt32));
	public var sizeOfImage:GoUInt32 = ((0 : GoUInt32));
	public var sizeOfHeaders:GoUInt32 = ((0 : GoUInt32));
	public var checkSum:GoUInt32 = ((0 : GoUInt32));
	public var subsystem:GoUInt16 = ((0 : GoUInt16));
	public var dllCharacteristics:GoUInt16 = ((0 : GoUInt16));
	public var sizeOfStackReserve:GoUInt32 = ((0 : GoUInt32));
	public var sizeOfStackCommit:GoUInt32 = ((0 : GoUInt32));
	public var sizeOfHeapReserve:GoUInt32 = ((0 : GoUInt32));
	public var sizeOfHeapCommit:GoUInt32 = ((0 : GoUInt32));
	public var loaderFlags:GoUInt32 = ((0 : GoUInt32));
	public var numberOfRvaAndSizes:GoUInt32 = ((0 : GoUInt32));
	public var dataDirectory:GoArray<DataDirectory> = new GoArray<DataDirectory>(...[for (i in 0...16) new DataDirectory()]);

	public function new(?magic:GoUInt16, ?majorLinkerVersion:GoUInt8, ?minorLinkerVersion:GoUInt8, ?sizeOfCode:GoUInt32, ?sizeOfInitializedData:GoUInt32,
			?sizeOfUninitializedData:GoUInt32, ?addressOfEntryPoint:GoUInt32, ?baseOfCode:GoUInt32, ?baseOfData:GoUInt32, ?imageBase:GoUInt32,
			?sectionAlignment:GoUInt32, ?fileAlignment:GoUInt32, ?majorOperatingSystemVersion:GoUInt16, ?minorOperatingSystemVersion:GoUInt16,
			?majorImageVersion:GoUInt16, ?minorImageVersion:GoUInt16, ?majorSubsystemVersion:GoUInt16, ?minorSubsystemVersion:GoUInt16,
			?win32VersionValue:GoUInt32, ?sizeOfImage:GoUInt32, ?sizeOfHeaders:GoUInt32, ?checkSum:GoUInt32, ?subsystem:GoUInt16,
			?dllCharacteristics:GoUInt16, ?sizeOfStackReserve:GoUInt32, ?sizeOfStackCommit:GoUInt32, ?sizeOfHeapReserve:GoUInt32, ?sizeOfHeapCommit:GoUInt32,
			?loaderFlags:GoUInt32, ?numberOfRvaAndSizes:GoUInt32, ?dataDirectory:GoArray<DataDirectory>)
		stdgo.internal.Macro.initLocals();

	public function toString() {
		return '{' + Go.string(magic) + " " + Go.string(majorLinkerVersion) + " " + Go.string(minorLinkerVersion) + " " + Go.string(sizeOfCode) + " "
			+ Go.string(sizeOfInitializedData) + " " + Go.string(sizeOfUninitializedData) + " " + Go.string(addressOfEntryPoint) + " "
			+ Go.string(baseOfCode) + " " + Go.string(baseOfData) + " " + Go.string(imageBase) + " " + Go.string(sectionAlignment) + " "
			+ Go.string(fileAlignment) + " " + Go.string(majorOperatingSystemVersion) + " " + Go.string(minorOperatingSystemVersion) + " "
			+ Go.string(majorImageVersion) + " " + Go.string(minorImageVersion) + " " + Go.string(majorSubsystemVersion) + " "
			+ Go.string(minorSubsystemVersion) + " " + Go.string(win32VersionValue) + " " + Go.string(sizeOfImage) + " " + Go.string(sizeOfHeaders) + " "
			+ Go.string(checkSum) + " " + Go.string(subsystem) + " " + Go.string(dllCharacteristics) + " " + Go.string(sizeOfStackReserve) + " "
			+ Go.string(sizeOfStackCommit) + " " + Go.string(sizeOfHeapReserve) + " " + Go.string(sizeOfHeapCommit) + " " + Go.string(loaderFlags) + " "
			+ Go.string(numberOfRvaAndSizes) + " " + Go.string(dataDirectory) + "}";
	}

	public function __underlying__():AnyInterface
		return Go.toInterface(this);

	public function __copy__() {
		return new OptionalHeader32(magic, majorLinkerVersion, minorLinkerVersion, sizeOfCode, sizeOfInitializedData, sizeOfUninitializedData,
			addressOfEntryPoint, baseOfCode, baseOfData, imageBase, sectionAlignment, fileAlignment, majorOperatingSystemVersion, minorOperatingSystemVersion,
			majorImageVersion, minorImageVersion, majorSubsystemVersion, minorSubsystemVersion, win32VersionValue, sizeOfImage, sizeOfHeaders, checkSum,
			subsystem, dllCharacteristics, sizeOfStackReserve, sizeOfStackCommit, sizeOfHeapReserve, sizeOfHeapCommit, loaderFlags, numberOfRvaAndSizes,
			dataDirectory);
	}

	public function __set__(__tmp__) {
		this.magic = __tmp__.magic;
		this.majorLinkerVersion = __tmp__.majorLinkerVersion;
		this.minorLinkerVersion = __tmp__.minorLinkerVersion;
		this.sizeOfCode = __tmp__.sizeOfCode;
		this.sizeOfInitializedData = __tmp__.sizeOfInitializedData;
		this.sizeOfUninitializedData = __tmp__.sizeOfUninitializedData;
		this.addressOfEntryPoint = __tmp__.addressOfEntryPoint;
		this.baseOfCode = __tmp__.baseOfCode;
		this.baseOfData = __tmp__.baseOfData;
		this.imageBase = __tmp__.imageBase;
		this.sectionAlignment = __tmp__.sectionAlignment;
		this.fileAlignment = __tmp__.fileAlignment;
		this.majorOperatingSystemVersion = __tmp__.majorOperatingSystemVersion;
		this.minorOperatingSystemVersion = __tmp__.minorOperatingSystemVersion;
		this.majorImageVersion = __tmp__.majorImageVersion;
		this.minorImageVersion = __tmp__.minorImageVersion;
		this.majorSubsystemVersion = __tmp__.majorSubsystemVersion;
		this.minorSubsystemVersion = __tmp__.minorSubsystemVersion;
		this.win32VersionValue = __tmp__.win32VersionValue;
		this.sizeOfImage = __tmp__.sizeOfImage;
		this.sizeOfHeaders = __tmp__.sizeOfHeaders;
		this.checkSum = __tmp__.checkSum;
		this.subsystem = __tmp__.subsystem;
		this.dllCharacteristics = __tmp__.dllCharacteristics;
		this.sizeOfStackReserve = __tmp__.sizeOfStackReserve;
		this.sizeOfStackCommit = __tmp__.sizeOfStackCommit;
		this.sizeOfHeapReserve = __tmp__.sizeOfHeapReserve;
		this.sizeOfHeapCommit = __tmp__.sizeOfHeapCommit;
		this.loaderFlags = __tmp__.loaderFlags;
		this.numberOfRvaAndSizes = __tmp__.numberOfRvaAndSizes;
		this.dataDirectory = __tmp__.dataDirectory;
		return this;
	}
}

@:structInit class OptionalHeader64 {
	public var magic:GoUInt16 = ((0 : GoUInt16));
	public var majorLinkerVersion:GoUInt8 = ((0 : GoUInt8));
	public var minorLinkerVersion:GoUInt8 = ((0 : GoUInt8));
	public var sizeOfCode:GoUInt32 = ((0 : GoUInt32));
	public var sizeOfInitializedData:GoUInt32 = ((0 : GoUInt32));
	public var sizeOfUninitializedData:GoUInt32 = ((0 : GoUInt32));
	public var addressOfEntryPoint:GoUInt32 = ((0 : GoUInt32));
	public var baseOfCode:GoUInt32 = ((0 : GoUInt32));
	public var imageBase:GoUInt64 = ((0 : GoUInt64));
	public var sectionAlignment:GoUInt32 = ((0 : GoUInt32));
	public var fileAlignment:GoUInt32 = ((0 : GoUInt32));
	public var majorOperatingSystemVersion:GoUInt16 = ((0 : GoUInt16));
	public var minorOperatingSystemVersion:GoUInt16 = ((0 : GoUInt16));
	public var majorImageVersion:GoUInt16 = ((0 : GoUInt16));
	public var minorImageVersion:GoUInt16 = ((0 : GoUInt16));
	public var majorSubsystemVersion:GoUInt16 = ((0 : GoUInt16));
	public var minorSubsystemVersion:GoUInt16 = ((0 : GoUInt16));
	public var win32VersionValue:GoUInt32 = ((0 : GoUInt32));
	public var sizeOfImage:GoUInt32 = ((0 : GoUInt32));
	public var sizeOfHeaders:GoUInt32 = ((0 : GoUInt32));
	public var checkSum:GoUInt32 = ((0 : GoUInt32));
	public var subsystem:GoUInt16 = ((0 : GoUInt16));
	public var dllCharacteristics:GoUInt16 = ((0 : GoUInt16));
	public var sizeOfStackReserve:GoUInt64 = ((0 : GoUInt64));
	public var sizeOfStackCommit:GoUInt64 = ((0 : GoUInt64));
	public var sizeOfHeapReserve:GoUInt64 = ((0 : GoUInt64));
	public var sizeOfHeapCommit:GoUInt64 = ((0 : GoUInt64));
	public var loaderFlags:GoUInt32 = ((0 : GoUInt32));
	public var numberOfRvaAndSizes:GoUInt32 = ((0 : GoUInt32));
	public var dataDirectory:GoArray<DataDirectory> = new GoArray<DataDirectory>(...[for (i in 0...16) new DataDirectory()]);

	public function new(?magic:GoUInt16, ?majorLinkerVersion:GoUInt8, ?minorLinkerVersion:GoUInt8, ?sizeOfCode:GoUInt32, ?sizeOfInitializedData:GoUInt32,
			?sizeOfUninitializedData:GoUInt32, ?addressOfEntryPoint:GoUInt32, ?baseOfCode:GoUInt32, ?imageBase:GoUInt64, ?sectionAlignment:GoUInt32,
			?fileAlignment:GoUInt32, ?majorOperatingSystemVersion:GoUInt16, ?minorOperatingSystemVersion:GoUInt16, ?majorImageVersion:GoUInt16,
			?minorImageVersion:GoUInt16, ?majorSubsystemVersion:GoUInt16, ?minorSubsystemVersion:GoUInt16, ?win32VersionValue:GoUInt32, ?sizeOfImage:GoUInt32,
			?sizeOfHeaders:GoUInt32, ?checkSum:GoUInt32, ?subsystem:GoUInt16, ?dllCharacteristics:GoUInt16, ?sizeOfStackReserve:GoUInt64,
			?sizeOfStackCommit:GoUInt64, ?sizeOfHeapReserve:GoUInt64, ?sizeOfHeapCommit:GoUInt64, ?loaderFlags:GoUInt32, ?numberOfRvaAndSizes:GoUInt32,
			?dataDirectory:GoArray<DataDirectory>)
		stdgo.internal.Macro.initLocals();

	public function toString() {
		return '{' + Go.string(magic) + " " + Go.string(majorLinkerVersion) + " " + Go.string(minorLinkerVersion) + " " + Go.string(sizeOfCode) + " "
			+ Go.string(sizeOfInitializedData) + " " + Go.string(sizeOfUninitializedData) + " " + Go.string(addressOfEntryPoint) + " "
			+ Go.string(baseOfCode) + " " + Go.string(imageBase) + " " + Go.string(sectionAlignment) + " " + Go.string(fileAlignment) + " "
			+ Go.string(majorOperatingSystemVersion) + " " + Go.string(minorOperatingSystemVersion) + " " + Go.string(majorImageVersion) + " "
			+ Go.string(minorImageVersion) + " " + Go.string(majorSubsystemVersion) + " " + Go.string(minorSubsystemVersion) + " "
			+ Go.string(win32VersionValue) + " " + Go.string(sizeOfImage) + " " + Go.string(sizeOfHeaders) + " " + Go.string(checkSum) + " "
			+ Go.string(subsystem) + " " + Go.string(dllCharacteristics) + " " + Go.string(sizeOfStackReserve) + " " + Go.string(sizeOfStackCommit) + " "
			+ Go.string(sizeOfHeapReserve) + " " + Go.string(sizeOfHeapCommit) + " " + Go.string(loaderFlags) + " " + Go.string(numberOfRvaAndSizes) + " "
			+ Go.string(dataDirectory) + "}";
	}

	public function __underlying__():AnyInterface
		return Go.toInterface(this);

	public function __copy__() {
		return new OptionalHeader64(magic, majorLinkerVersion, minorLinkerVersion, sizeOfCode, sizeOfInitializedData, sizeOfUninitializedData,
			addressOfEntryPoint, baseOfCode, imageBase, sectionAlignment, fileAlignment, majorOperatingSystemVersion, minorOperatingSystemVersion,
			majorImageVersion, minorImageVersion, majorSubsystemVersion, minorSubsystemVersion, win32VersionValue, sizeOfImage, sizeOfHeaders, checkSum,
			subsystem, dllCharacteristics, sizeOfStackReserve, sizeOfStackCommit, sizeOfHeapReserve, sizeOfHeapCommit, loaderFlags, numberOfRvaAndSizes,
			dataDirectory);
	}

	public function __set__(__tmp__) {
		this.magic = __tmp__.magic;
		this.majorLinkerVersion = __tmp__.majorLinkerVersion;
		this.minorLinkerVersion = __tmp__.minorLinkerVersion;
		this.sizeOfCode = __tmp__.sizeOfCode;
		this.sizeOfInitializedData = __tmp__.sizeOfInitializedData;
		this.sizeOfUninitializedData = __tmp__.sizeOfUninitializedData;
		this.addressOfEntryPoint = __tmp__.addressOfEntryPoint;
		this.baseOfCode = __tmp__.baseOfCode;
		this.imageBase = __tmp__.imageBase;
		this.sectionAlignment = __tmp__.sectionAlignment;
		this.fileAlignment = __tmp__.fileAlignment;
		this.majorOperatingSystemVersion = __tmp__.majorOperatingSystemVersion;
		this.minorOperatingSystemVersion = __tmp__.minorOperatingSystemVersion;
		this.majorImageVersion = __tmp__.majorImageVersion;
		this.minorImageVersion = __tmp__.minorImageVersion;
		this.majorSubsystemVersion = __tmp__.majorSubsystemVersion;
		this.minorSubsystemVersion = __tmp__.minorSubsystemVersion;
		this.win32VersionValue = __tmp__.win32VersionValue;
		this.sizeOfImage = __tmp__.sizeOfImage;
		this.sizeOfHeaders = __tmp__.sizeOfHeaders;
		this.checkSum = __tmp__.checkSum;
		this.subsystem = __tmp__.subsystem;
		this.dllCharacteristics = __tmp__.dllCharacteristics;
		this.sizeOfStackReserve = __tmp__.sizeOfStackReserve;
		this.sizeOfStackCommit = __tmp__.sizeOfStackCommit;
		this.sizeOfHeapReserve = __tmp__.sizeOfHeapReserve;
		this.sizeOfHeapCommit = __tmp__.sizeOfHeapCommit;
		this.loaderFlags = __tmp__.loaderFlags;
		this.numberOfRvaAndSizes = __tmp__.numberOfRvaAndSizes;
		this.dataDirectory = __tmp__.dataDirectory;
		return this;
	}
}

@:structInit class SectionHeader32 {
	public function _fullName(_st:StringTable):{var _0:GoString; var _1:Error;} {
		var _sh = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
		if (_sh.value.name[((0 : GoInt))] != (("/".code : GoRune))) {
			return {_0: _cstring(_sh.value.name.__slice__(0)), _1: ((null : stdgo.Error))};
		};
		var __tmp__ = stdgo.strconv.Strconv.atoi(_cstring(_sh.value.name.__slice__(((1 : GoInt))))),
			_i:GoInt = __tmp__._0,
			_err:stdgo.Error = __tmp__._1;
		if (_err != null) {
			return {_0: "", _1: _err};
		};
		return _st.toString(((_i : GoUInt32)));
	}

	public var name:GoArray<GoUInt8> = new GoArray<GoUInt8>(...[for (i in 0...8) ((0 : GoUInt8))]);
	public var virtualSize:GoUInt32 = ((0 : GoUInt32));
	public var virtualAddress:GoUInt32 = ((0 : GoUInt32));
	public var sizeOfRawData:GoUInt32 = ((0 : GoUInt32));
	public var pointerToRawData:GoUInt32 = ((0 : GoUInt32));
	public var pointerToRelocations:GoUInt32 = ((0 : GoUInt32));
	public var pointerToLineNumbers:GoUInt32 = ((0 : GoUInt32));
	public var numberOfRelocations:GoUInt16 = ((0 : GoUInt16));
	public var numberOfLineNumbers:GoUInt16 = ((0 : GoUInt16));
	public var characteristics:GoUInt32 = ((0 : GoUInt32));

	public function new(?name:GoArray<GoUInt8>, ?virtualSize:GoUInt32, ?virtualAddress:GoUInt32, ?sizeOfRawData:GoUInt32, ?pointerToRawData:GoUInt32,
			?pointerToRelocations:GoUInt32, ?pointerToLineNumbers:GoUInt32, ?numberOfRelocations:GoUInt16, ?numberOfLineNumbers:GoUInt16,
			?characteristics:GoUInt32)
		stdgo.internal.Macro.initLocals();

	public function toString() {
		return '{' + Go.string(name) + " " + Go.string(virtualSize) + " " + Go.string(virtualAddress) + " " + Go.string(sizeOfRawData) + " "
			+ Go.string(pointerToRawData) + " " + Go.string(pointerToRelocations) + " " + Go.string(pointerToLineNumbers) + " "
			+ Go.string(numberOfRelocations) + " " + Go.string(numberOfLineNumbers) + " " + Go.string(characteristics) + "}";
	}

	public function __underlying__():AnyInterface
		return Go.toInterface(this);

	public function __copy__() {
		return new SectionHeader32(name, virtualSize, virtualAddress, sizeOfRawData, pointerToRawData, pointerToRelocations, pointerToLineNumbers,
			numberOfRelocations, numberOfLineNumbers, characteristics);
	}

	public function __set__(__tmp__) {
		this.name = __tmp__.name;
		this.virtualSize = __tmp__.virtualSize;
		this.virtualAddress = __tmp__.virtualAddress;
		this.sizeOfRawData = __tmp__.sizeOfRawData;
		this.pointerToRawData = __tmp__.pointerToRawData;
		this.pointerToRelocations = __tmp__.pointerToRelocations;
		this.pointerToLineNumbers = __tmp__.pointerToLineNumbers;
		this.numberOfRelocations = __tmp__.numberOfRelocations;
		this.numberOfLineNumbers = __tmp__.numberOfLineNumbers;
		this.characteristics = __tmp__.characteristics;
		return this;
	}
}

@:structInit class Reloc {
	public var virtualAddress:GoUInt32 = ((0 : GoUInt32));
	public var symbolTableIndex:GoUInt32 = ((0 : GoUInt32));
	public var type:GoUInt16 = ((0 : GoUInt16));

	public function new(?virtualAddress:GoUInt32, ?symbolTableIndex:GoUInt32, ?type:GoUInt16)
		stdgo.internal.Macro.initLocals();

	public function toString() {
		return '{' + Go.string(virtualAddress) + " " + Go.string(symbolTableIndex) + " " + Go.string(type) + "}";
	}

	public function __underlying__():AnyInterface
		return Go.toInterface(this);

	public function __copy__() {
		return new Reloc(virtualAddress, symbolTableIndex, type);
	}

	public function __set__(__tmp__) {
		this.virtualAddress = __tmp__.virtualAddress;
		this.symbolTableIndex = __tmp__.symbolTableIndex;
		this.type = __tmp__.type;
		return this;
	}
}

@:structInit class SectionHeader {
	public var name:GoString = (("" : GoString));
	public var virtualSize:GoUInt32 = ((0 : GoUInt32));
	public var virtualAddress:GoUInt32 = ((0 : GoUInt32));
	public var size:GoUInt32 = ((0 : GoUInt32));
	public var offset:GoUInt32 = ((0 : GoUInt32));
	public var pointerToRelocations:GoUInt32 = ((0 : GoUInt32));
	public var pointerToLineNumbers:GoUInt32 = ((0 : GoUInt32));
	public var numberOfRelocations:GoUInt16 = ((0 : GoUInt16));
	public var numberOfLineNumbers:GoUInt16 = ((0 : GoUInt16));
	public var characteristics:GoUInt32 = ((0 : GoUInt32));

	public function new(?name:GoString, ?virtualSize:GoUInt32, ?virtualAddress:GoUInt32, ?size:GoUInt32, ?offset:GoUInt32, ?pointerToRelocations:GoUInt32,
			?pointerToLineNumbers:GoUInt32, ?numberOfRelocations:GoUInt16, ?numberOfLineNumbers:GoUInt16, ?characteristics:GoUInt32)
		stdgo.internal.Macro.initLocals();

	public function toString() {
		return '{' + Go.string(name) + " " + Go.string(virtualSize) + " " + Go.string(virtualAddress) + " " + Go.string(size) + " " + Go.string(offset)
			+ " " + Go.string(pointerToRelocations) + " " + Go.string(pointerToLineNumbers) + " " + Go.string(numberOfRelocations) + " "
			+ Go.string(numberOfLineNumbers) + " " + Go.string(characteristics) + "}";
	}

	public function __underlying__():AnyInterface
		return Go.toInterface(this);

	public function __copy__() {
		return new SectionHeader(name, virtualSize, virtualAddress, size, offset, pointerToRelocations, pointerToLineNumbers, numberOfRelocations,
			numberOfLineNumbers, characteristics);
	}

	public function __set__(__tmp__) {
		this.name = __tmp__.name;
		this.virtualSize = __tmp__.virtualSize;
		this.virtualAddress = __tmp__.virtualAddress;
		this.size = __tmp__.size;
		this.offset = __tmp__.offset;
		this.pointerToRelocations = __tmp__.pointerToRelocations;
		this.pointerToLineNumbers = __tmp__.pointerToLineNumbers;
		this.numberOfRelocations = __tmp__.numberOfRelocations;
		this.numberOfLineNumbers = __tmp__.numberOfLineNumbers;
		this.characteristics = __tmp__.characteristics;
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

@:named class StringTable {
	public function toString(_start:GoUInt32):{var _0:GoString; var _1:Error;} {
		var _st = this.__copy__();
		if (_start < ((4 : GoUInt32))) {
			return {_0: "", _1: stdgo.fmt.Fmt.errorf("offset %d is before the start of string table", Go.toInterface(_start))};
		};
		_start = _start - (((4 : GoUInt32)));
		if (((_start : GoInt)) > _st.__t__.length) {
			return {_0: "", _1: stdgo.fmt.Fmt.errorf("offset %d is beyond the end of string table", Go.toInterface(_start))};
		};
		return {_0: _cstring(_st.__slice__(_start).__copy__().__t__), _1: ((null : stdgo.Error))};
	}

	public var __t__:Slice<GoUInt8>;

	public function new(?t:Slice<GoUInt8>) {
		__t__ = t == null ? new Slice<GoUInt8>().nil() : t;
	}

	public function __underlying__():AnyInterface
		return Go.toInterface(this);

	public function __copy__()
		return new StringTable(__t__);

	public function __append__(args:haxe.Rest<GoUInt8>)
		return new StringTable(this.__t__.__append__(...args));

	public function __slice__(low:GoInt, high:GoInt = -1)
		return new StringTable(this.__t__.__slice__(low, high));
}

@:structInit class COFFSymbol {
	public function fullName(_st:StringTable):{var _0:GoString; var _1:Error;} {
		var _sym = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
		{
			var __tmp__ = _isSymNameOffset(_sym.value.name.copy()),
				_ok:Bool = __tmp__._0,
				_offset:GoUInt32 = __tmp__._1;
			if (_ok) {
				return _st.toString(_offset);
			};
		};
		return {_0: _cstring(_sym.value.name.__slice__(0)), _1: ((null : stdgo.Error))};
	}

	public var name:GoArray<GoUInt8> = new GoArray<GoUInt8>(...[for (i in 0...8) ((0 : GoUInt8))]);
	public var value:GoUInt32 = ((0 : GoUInt32));
	public var sectionNumber:GoInt16 = ((0 : GoInt16));
	public var type:GoUInt16 = ((0 : GoUInt16));
	public var storageClass:GoUInt8 = ((0 : GoUInt8));
	public var numberOfAuxSymbols:GoUInt8 = ((0 : GoUInt8));

	public function new(?name:GoArray<GoUInt8>, ?value:GoUInt32, ?sectionNumber:GoInt16, ?type:GoUInt16, ?storageClass:GoUInt8, ?numberOfAuxSymbols:GoUInt8)
		stdgo.internal.Macro.initLocals();

	public function toString() {
		return '{' + Go.string(name) + " " + Go.string(value) + " " + Go.string(sectionNumber) + " " + Go.string(type) + " " + Go.string(storageClass) + " "
			+ Go.string(numberOfAuxSymbols) + "}";
	}

	public function __underlying__():AnyInterface
		return Go.toInterface(this);

	public function __copy__() {
		return new COFFSymbol(name, value, sectionNumber, type, storageClass, numberOfAuxSymbols);
	}

	public function __set__(__tmp__) {
		this.name = __tmp__.name;
		this.value = __tmp__.value;
		this.sectionNumber = __tmp__.sectionNumber;
		this.type = __tmp__.type;
		this.storageClass = __tmp__.storageClass;
		this.numberOfAuxSymbols = __tmp__.numberOfAuxSymbols;
		return this;
	}
}

@:structInit class Symbol {
	public var name:GoString = (("" : GoString));
	public var value:GoUInt32 = ((0 : GoUInt32));
	public var sectionNumber:GoInt16 = ((0 : GoInt16));
	public var type:GoUInt16 = ((0 : GoUInt16));
	public var storageClass:GoUInt8 = ((0 : GoUInt8));

	public function new(?name:GoString, ?value:GoUInt32, ?sectionNumber:GoInt16, ?type:GoUInt16, ?storageClass:GoUInt8)
		stdgo.internal.Macro.initLocals();

	public function toString() {
		return '{'
			+ Go.string(name)
			+ " "
			+ Go.string(value)
			+ " "
			+ Go.string(sectionNumber)
			+ " "
			+ Go.string(type)
			+ " "
			+ Go.string(storageClass)
			+ "}";
	}

	public function __underlying__():AnyInterface
		return Go.toInterface(this);

	public function __copy__() {
		return new Symbol(name, value, sectionNumber, type, storageClass);
	}

	public function __set__(__tmp__) {
		this.name = __tmp__.name;
		this.value = __tmp__.value;
		this.sectionNumber = __tmp__.sectionNumber;
		this.type = __tmp__.type;
		this.storageClass = __tmp__.storageClass;
		return this;
	}
}

final image_DIRECTORY_ENTRY_GLOBALPTR:GoInt64 = ((8 : GoUnTypedInt));
final image_FILE_EXECUTABLE_IMAGE:GoInt64 = ((2 : GoUnTypedInt));
final image_DIRECTORY_ENTRY_IMPORT:GoInt64 = ((1 : GoUnTypedInt));
final image_SUBSYSTEM_WINDOWS_GUI:GoInt64 = ((2 : GoUnTypedInt));
final _seekStart:GoInt64 = ((0 : GoUnTypedInt));
final image_FILE_MACHINE_AMD64:GoInt64 = ((34404 : GoUnTypedInt));
final image_DLLCHARACTERISTICS_DYNAMIC_BASE:GoInt64 = ((64 : GoUnTypedInt));
final image_DIRECTORY_ENTRY_ARCHITECTURE:GoInt64 = ((7 : GoUnTypedInt));
final image_DLLCHARACTERISTICS_NO_SEH:GoInt64 = ((1024 : GoUnTypedInt));
final image_SUBSYSTEM_UNKNOWN:GoInt64 = ((0 : GoUnTypedInt));
final image_SUBSYSTEM_NATIVE_WINDOWS:GoInt64 = ((8 : GoUnTypedInt));
final image_DIRECTORY_ENTRY_COM_DESCRIPTOR:GoInt64 = ((14 : GoUnTypedInt));
final image_SUBSYSTEM_XBOX:GoInt64 = ((14 : GoUnTypedInt));
final image_FILE_NET_RUN_FROM_SWAP:GoInt64 = ((2048 : GoUnTypedInt));
final image_FILE_AGGRESIVE_WS_TRIM:GoInt64 = ((16 : GoUnTypedInt));
final image_SUBSYSTEM_OS2_CUI:GoInt64 = ((5 : GoUnTypedInt));
final image_FILE_LOCAL_SYMS_STRIPPED:GoInt64 = ((8 : GoUnTypedInt));
final image_FILE_RELOCS_STRIPPED:GoInt64 = ((1 : GoUnTypedInt));
final image_FILE_MACHINE_M32R:GoInt64 = ((36929 : GoUnTypedInt));
final image_DIRECTORY_ENTRY_RESOURCE:GoInt64 = ((2 : GoUnTypedInt));
final image_FILE_BYTES_REVERSED_HI:GoInt64 = ((32768 : GoUnTypedInt));
final image_DLLCHARACTERISTICS_WDM_DRIVER:GoInt64 = ((8192 : GoUnTypedInt));
final image_FILE_REMOVABLE_RUN_FROM_SWAP:GoInt64 = ((1024 : GoUnTypedInt));
final image_FILE_DEBUG_STRIPPED:GoInt64 = ((512 : GoUnTypedInt));
final image_SUBSYSTEM_POSIX_CUI:GoInt64 = ((7 : GoUnTypedInt));
final image_DLLCHARACTERISTICS_APPCONTAINER:GoInt64 = ((4096 : GoUnTypedInt));
final image_DIRECTORY_ENTRY_IAT:GoInt64 = ((12 : GoUnTypedInt));
final image_FILE_MACHINE_ARM:GoInt64 = ((448 : GoUnTypedInt));
final image_SUBSYSTEM_EFI_BOOT_SERVICE_DRIVER:GoInt64 = ((11 : GoUnTypedInt));
final image_FILE_MACHINE_ARM64:GoInt64 = ((43620 : GoUnTypedInt));
final image_FILE_MACHINE_R4000:GoInt64 = ((358 : GoUnTypedInt));
final image_DIRECTORY_ENTRY_DELAY_IMPORT:GoInt64 = ((13 : GoUnTypedInt));
final image_DIRECTORY_ENTRY_EXCEPTION:GoInt64 = ((3 : GoUnTypedInt));
final image_DIRECTORY_ENTRY_LOAD_CONFIG:GoInt64 = ((10 : GoUnTypedInt));
final image_FILE_UP_SYSTEM_ONLY:GoInt64 = ((16384 : GoUnTypedInt));
final image_DLLCHARACTERISTICS_FORCE_INTEGRITY:GoInt64 = ((128 : GoUnTypedInt));
final image_FILE_MACHINE_I386:GoInt64 = ((332 : GoUnTypedInt));
final image_SUBSYSTEM_EFI_ROM:GoInt64 = ((13 : GoUnTypedInt));
final image_DIRECTORY_ENTRY_DEBUG:GoInt64 = ((6 : GoUnTypedInt));
final image_FILE_BYTES_REVERSED_LO:GoInt64 = ((128 : GoUnTypedInt));
final image_FILE_LINE_NUMS_STRIPPED:GoInt64 = ((4 : GoUnTypedInt));
final image_SUBSYSTEM_NATIVE:GoInt64 = ((1 : GoUnTypedInt));
final image_DLLCHARACTERISTICS_TERMINAL_SERVER_AWARE:GoInt64 = ((32768 : GoUnTypedInt));
final image_SUBSYSTEM_EFI_APPLICATION:GoInt64 = ((10 : GoUnTypedInt));
final image_SUBSYSTEM_WINDOWS_BOOT_APPLICATION:GoInt64 = ((16 : GoUnTypedInt));
final image_FILE_MACHINE_MIPS16:GoInt64 = ((614 : GoUnTypedInt));
final image_FILE_MACHINE_SH3DSP:GoInt64 = ((419 : GoUnTypedInt));
final image_DLLCHARACTERISTICS_NO_BIND:GoInt64 = ((2048 : GoUnTypedInt));
final image_SUBSYSTEM_EFI_RUNTIME_DRIVER:GoInt64 = ((12 : GoUnTypedInt));
final coffsymbolSize:GoInt64 = ((18 : GoUnTypedInt));
final image_FILE_DLL:GoInt64 = ((8192 : GoUnTypedInt));
final image_FILE_MACHINE_MIPSFPU:GoInt64 = ((870 : GoUnTypedInt));
final image_DLLCHARACTERISTICS_NO_ISOLATION:GoInt64 = ((512 : GoUnTypedInt));
final image_FILE_MACHINE_POWERPCFP:GoInt64 = ((497 : GoUnTypedInt));
final image_DIRECTORY_ENTRY_SECURITY:GoInt64 = ((4 : GoUnTypedInt));
final image_FILE_MACHINE_UNKNOWN:GoInt64 = ((0 : GoUnTypedInt));
final image_DIRECTORY_ENTRY_BASERELOC:GoInt64 = ((5 : GoUnTypedInt));
final image_FILE_MACHINE_AM33:GoInt64 = ((467 : GoUnTypedInt));
final image_FILE_MACHINE_MIPSFPU16:GoInt64 = ((1126 : GoUnTypedInt));
final image_FILE_MACHINE_IA64:GoInt64 = ((512 : GoUnTypedInt));
final image_DLLCHARACTERISTICS_NX_COMPAT:GoInt64 = ((256 : GoUnTypedInt));
final image_FILE_MACHINE_EBC:GoInt64 = ((3772 : GoUnTypedInt));
final image_DIRECTORY_ENTRY_BOUND_IMPORT:GoInt64 = ((11 : GoUnTypedInt));
final image_SUBSYSTEM_WINDOWS_CE_GUI:GoInt64 = ((9 : GoUnTypedInt));
final image_DLLCHARACTERISTICS_GUARD_CF:GoInt64 = ((16384 : GoUnTypedInt));
final image_FILE_MACHINE_THUMB:GoInt64 = ((450 : GoUnTypedInt));
final image_FILE_LARGE_ADDRESS_AWARE:GoInt64 = ((32 : GoUnTypedInt));
final image_DIRECTORY_ENTRY_EXPORT:GoInt64 = ((0 : GoUnTypedInt));
final image_FILE_32BIT_MACHINE:GoInt64 = ((256 : GoUnTypedInt));
final image_FILE_MACHINE_POWERPC:GoInt64 = ((496 : GoUnTypedInt));
final image_DLLCHARACTERISTICS_HIGH_ENTROPY_VA:GoInt64 = ((32 : GoUnTypedInt));
final image_FILE_SYSTEM:GoInt64 = ((4096 : GoUnTypedInt));
final image_FILE_MACHINE_SH3:GoInt64 = ((418 : GoUnTypedInt));
final image_FILE_MACHINE_SH4:GoInt64 = ((422 : GoUnTypedInt));
final image_FILE_MACHINE_ARMNT:GoInt64 = ((452 : GoUnTypedInt));
final image_SUBSYSTEM_WINDOWS_CUI:GoInt64 = ((3 : GoUnTypedInt));
final image_FILE_MACHINE_SH5:GoInt64 = ((424 : GoUnTypedInt));
final image_FILE_MACHINE_WCEMIPSV2:GoInt64 = ((361 : GoUnTypedInt));
final image_DIRECTORY_ENTRY_TLS:GoInt64 = ((9 : GoUnTypedInt));

/**
	// Open opens the named file using os.Open and prepares it for use as a PE binary.
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
	// NewFile creates a new File for accessing a PE binary in an underlying reader.
**/
function newFile(_r:stdgo.io.Io.ReaderAt):{var _0:Pointer<File>; var _1:Error;} {
	var _f:Pointer<File> = Go.pointer(new File());
	var _sr:Pointer<stdgo.io.Io.SectionReader> = stdgo.io.Io.newSectionReader(_r, ((0 : GoInt64)),
		(((1 : GoUnTypedInt)) << ((63 : GoUnTypedInt))) - ((1 : GoUnTypedInt)));
	var _dosheader:GoArray<GoByte> = new GoArray<GoUInt8>(...[for (i in 0...96) ((0 : GoUInt8))]);
	{
		var __tmp__ = _r.readAt(_dosheader.__slice__(((0 : GoInt))), ((0 : GoInt64))),
			_:GoInt = __tmp__._0,
			_err:stdgo.Error = __tmp__._1;
		if (_err != null) {
			return {_0: new Pointer<File>().nil(), _1: _err};
		};
	};
	var _base:GoInt64 = ((0 : GoInt64));
	if (_dosheader[((0 : GoInt))] == (("M".code : GoRune)) && _dosheader[((1 : GoInt))] == (("Z".code : GoRune))) {
		var _signoff:GoInt64 = ((stdgo.encoding.binary.Binary.littleEndian.uint32(_dosheader.__slice__(((60 : GoInt)))) : GoInt64));
		var _sign:GoArray<GoByte> = new GoArray<GoUInt8>(...[for (i in 0...4) ((0 : GoUInt8))]);
		_r.readAt(_sign.__slice__(0), _signoff);
		if (!(_sign[((0 : GoInt))] == (("P".code : GoRune))
			&& _sign[((1 : GoInt))] == (("E".code : GoRune))
			&& _sign[((2 : GoInt))] == ((0 : GoUInt8))
			&& _sign[((3 : GoInt))] == ((0 : GoUInt8)))) {
			return {_0: new Pointer<File>().nil(), _1: stdgo.fmt.Fmt.errorf("invalid PE file signature: % x", Go.toInterface(_sign.copy()))};
		};
		_base = _signoff + ((4 : GoInt64));
	} else {
		_base = ((((0 : GoInt64)) : GoInt64));
	};
	_sr.value.seek(_base, _seekStart);
	{
		var _err:stdgo.Error = stdgo.encoding.binary.Binary.read(_sr.value, stdgo.encoding.binary.Binary.littleEndian.__copy__(),
			Go.toInterface(Go.pointer(_f.value.fileHeader)));
		if (_err != null) {
			return {_0: new Pointer<File>().nil(), _1: _err};
		};
	};
	if (_f.value.fileHeader.machine == image_FILE_MACHINE_AMD64
		|| _f.value.fileHeader.machine == image_FILE_MACHINE_ARM64
		|| _f.value.fileHeader.machine == image_FILE_MACHINE_ARMNT
		|| _f.value.fileHeader.machine == image_FILE_MACHINE_I386
		|| _f.value.fileHeader.machine == image_FILE_MACHINE_UNKNOWN) {} else {
		return {_0: new Pointer<File>().nil(), _1: stdgo.fmt.Fmt.errorf("unrecognized PE machine: %#x", Go.toInterface(_f.value.fileHeader.machine))};
	};
	var _err:Error = ((null : stdgo.Error));
	{
		var __tmp__ = _readStringTable(Go.pointer(_f.value.fileHeader), _sr.value);
		_f.value.stringTable = __tmp__._0.__copy__();
		_err = __tmp__._1;
	};
	if (_err != null) {
		return {_0: new Pointer<File>().nil(), _1: _err};
	};
	{
		var __tmp__ = _readCOFFSymbols(Go.pointer(_f.value.fileHeader), _sr.value);
		_f.value.coffsymbols = __tmp__._0;
		_err = __tmp__._1;
	};
	if (_err != null) {
		return {_0: new Pointer<File>().nil(), _1: _err};
	};
	{
		var __tmp__ = _removeAuxSymbols(_f.value.coffsymbols, _f.value.stringTable.__copy__());
		_f.value.symbols = __tmp__._0;
		_err = __tmp__._1;
	};
	if (_err != null) {
		return {_0: new Pointer<File>().nil(), _1: _err};
	};
	{
		var __tmp__ = _sr.value.seek(_base + ((stdgo.encoding.binary.Binary.size(Go.toInterface(_f.value.fileHeader.__copy__())) : GoInt64)), _seekStart);
		_err = __tmp__._1;
	};
	if (_err != null) {
		return {_0: new Pointer<File>().nil(), _1: _err};
	};
	{
		var __tmp__ = _readOptionalHeader(_sr.value, _f.value.fileHeader.sizeOfOptionalHeader);
		_f.value.optionalHeader = Go.toInterface(__tmp__._0);
		_err = __tmp__._1;
	};
	if (_err != null) {
		return {_0: new Pointer<File>().nil(), _1: _err};
	};
	_f.value.sections = new Slice<Pointer<Section>>(...[
		for (i in 0...((_f.value.fileHeader.numberOfSections : GoInt)).toBasic()) new Pointer<Section>().nil()
	]);
	{
		var _i:GoInt = ((0 : GoInt));
		Go.cfor(_i < ((_f.value.fileHeader.numberOfSections : GoInt)), _i++, {
			var _sh:Pointer<SectionHeader32> = Go.pointer(new SectionHeader32());
			{
				var _err:stdgo.Error = stdgo.encoding.binary.Binary.read(_sr.value, stdgo.encoding.binary.Binary.littleEndian.__copy__(), Go.toInterface(_sh));
				if (_err != null) {
					return {_0: new Pointer<File>().nil(), _1: _err};
				};
			};
			var __tmp__ = _sh.value._fullName(_f.value.stringTable.__copy__()),
				_name:GoString = __tmp__._0,
				_err:stdgo.Error = __tmp__._1;
			if (_err != null) {
				return {_0: new Pointer<File>().nil(), _1: _err};
			};
			var _s:Pointer<Section> = Go.pointer(new Section());
			_s.value.sectionHeader = (({
				name: _name,
				virtualSize: _sh.value.virtualSize,
				virtualAddress: _sh.value.virtualAddress,
				size: _sh.value.sizeOfRawData,
				offset: _sh.value.pointerToRawData,
				pointerToRelocations: _sh.value.pointerToRelocations,
				pointerToLineNumbers: _sh.value.pointerToLineNumbers,
				numberOfRelocations: _sh.value.numberOfRelocations,
				numberOfLineNumbers: _sh.value.numberOfLineNumbers,
				characteristics: _sh.value.characteristics
			} : SectionHeader)).__copy__();
			var _r2:stdgo.io.Io.ReaderAt = _r;
			if (_sh.value.pointerToRawData == ((0 : GoUInt32))) {
				_r2 = new T_zeroReaderAt().__copy__();
			};
			_s.value._sr = stdgo.io.Io.newSectionReader(_r2, ((_s.value.sectionHeader.offset : GoInt64)), ((_s.value.sectionHeader.size : GoInt64)));
			_s.value.readerAt = _s.value._sr.value;
			_f.value.sections[_i] = _s;
		});
	};
	{
		var _i;
		for (_obj in _f.value.sections.keyValueIterator()) {
			_i = _obj.key;
			var _err:Error = ((null : stdgo.Error));
			{
				var __tmp__ = _readRelocs(Go.pointer(_f.value.sections[_i].value.sectionHeader), _sr.value);
				_f.value.sections[_i].value.relocs = __tmp__._0;
				_err = __tmp__._1;
			};
			if (_err != null) {
				return {_0: new Pointer<File>().nil(), _1: _err};
			};
		};
	};
	return {_0: _f, _1: ((null : stdgo.Error))};
}

/**
	// getString extracts a string from symbol string table.
**/
function _getString(_section:Slice<GoByte>, _start:GoInt):{var _0:GoString; var _1:Bool;} {
	if (_start < ((0 : GoInt)) || _start >= _section.length) {
		return {_0: "", _1: false};
	};
	{
		var _end:GoInt = _start;
		Go.cfor(_end < _section.length, _end++, {
			if (_section[_end] == ((0 : GoUInt8))) {
				return {_0: ((_section.__slice__(_start, _end) : GoString)), _1: true};
			};
		});
	};
	return {_0: "", _1: false};
}

/**
	// readOptionalHeader accepts a io.ReadSeeker pointing to optional header in the PE file
	// and its size as seen in the file header.
	// It parses the given size of bytes and returns optional header. It infers whether the
	// bytes being parsed refer to 32 bit or 64 bit version of optional header.
**/
function _readOptionalHeader(_r:stdgo.io.Io.ReadSeeker, _sz:GoUInt16):{var _0:AnyInterface; var _1:Error;} {
	if (_sz == ((0 : GoUInt16))) {
		return {_0: ((null : AnyInterface)), _1: ((null : stdgo.Error))};
	};
	var _ohMagic:GoUInt16 = ((0 : GoUInt16)),
		_ohMagicSz:GoInt = stdgo.encoding.binary.Binary.size(Go.toInterface(_ohMagic));
	if (_sz < ((_ohMagicSz : GoUInt16))) {
		return {_0: ((null : AnyInterface)), _1: stdgo.fmt.Fmt.errorf("optional header size is less than optional header magic size")};
	};
	var _err:Error = ((null : stdgo.Error));
	var _read:AnyInterface->Bool = function(_data:AnyInterface):Bool {
		_err = stdgo.encoding.binary.Binary.read(_r, stdgo.encoding.binary.Binary.littleEndian.__copy__(), Go.toInterface(_data));
		return _err == null;
	};
	if (!_read(Go.toInterface(Go.pointer(_ohMagic)))) {
		return {_0: ((null : AnyInterface)), _1: stdgo.fmt.Fmt.errorf("failure to read optional header magic: %v", Go.toInterface(_err))};
	};
	if (_ohMagic == ((267 : GoUInt16))) {
		var _oh32:OptionalHeader32 = new OptionalHeader32(),
			_oh32MinSz:GoInt = stdgo.encoding.binary.Binary.size(Go.toInterface(_oh32.__copy__()))
				- stdgo.encoding.binary.Binary.size(Go.toInterface(_oh32.dataDirectory.copy()));
		if (_sz < ((_oh32MinSz : GoUInt16))) {
			return {_0: ((null : AnyInterface)), _1: stdgo.fmt.Fmt.errorf("optional header size(%d) is less minimum size (%d) of PE32 optional header",
				Go.toInterface(_sz), Go.toInterface(_oh32MinSz))};
		};
		_oh32.magic = _ohMagic;
		if (!_read(Go.toInterface(Go.pointer(_oh32.majorLinkerVersion)))
			|| !_read(Go.toInterface(Go.pointer(_oh32.minorLinkerVersion)))
			|| !_read(Go.toInterface(Go.pointer(_oh32.sizeOfCode)))
			|| !_read(Go.toInterface(Go.pointer(_oh32.sizeOfInitializedData)))
			|| !_read(Go.toInterface(Go.pointer(_oh32.sizeOfUninitializedData)))
			|| !_read(Go.toInterface(Go.pointer(_oh32.addressOfEntryPoint)))
			|| !_read(Go.toInterface(Go.pointer(_oh32.baseOfCode)))
			|| !_read(Go.toInterface(Go.pointer(_oh32.baseOfData)))
			|| !_read(Go.toInterface(Go.pointer(_oh32.imageBase)))
			|| !_read(Go.toInterface(Go.pointer(_oh32.sectionAlignment)))
			|| !_read(Go.toInterface(Go.pointer(_oh32.fileAlignment)))
			|| !_read(Go.toInterface(Go.pointer(_oh32.majorOperatingSystemVersion)))
			|| !_read(Go.toInterface(Go.pointer(_oh32.minorOperatingSystemVersion)))
			|| !_read(Go.toInterface(Go.pointer(_oh32.majorImageVersion)))
			|| !_read(Go.toInterface(Go.pointer(_oh32.minorImageVersion)))
			|| !_read(Go.toInterface(Go.pointer(_oh32.majorSubsystemVersion)))
			|| !_read(Go.toInterface(Go.pointer(_oh32.minorSubsystemVersion)))
			|| !_read(Go.toInterface(Go.pointer(_oh32.win32VersionValue)))
			|| !_read(Go.toInterface(Go.pointer(_oh32.sizeOfImage)))
			|| !_read(Go.toInterface(Go.pointer(_oh32.sizeOfHeaders)))
			|| !_read(Go.toInterface(Go.pointer(_oh32.checkSum)))
			|| !_read(Go.toInterface(Go.pointer(_oh32.subsystem)))
			|| !_read(Go.toInterface(Go.pointer(_oh32.dllCharacteristics)))
			|| !_read(Go.toInterface(Go.pointer(_oh32.sizeOfStackReserve)))
			|| !_read(Go.toInterface(Go.pointer(_oh32.sizeOfStackCommit)))
			|| !_read(Go.toInterface(Go.pointer(_oh32.sizeOfHeapReserve)))
			|| !_read(Go.toInterface(Go.pointer(_oh32.sizeOfHeapCommit)))
			|| !_read(Go.toInterface(Go.pointer(_oh32.loaderFlags)))
			|| !_read(Go.toInterface(Go.pointer(_oh32.numberOfRvaAndSizes)))) {
			return {_0: ((null : AnyInterface)), _1: stdgo.fmt.Fmt.errorf("failure to read PE32 optional header: %v", Go.toInterface(_err))};
		};
		var __tmp__ = _readDataDirectories(_r, _sz - ((_oh32MinSz : GoUInt16)), _oh32.numberOfRvaAndSizes),
			_dd:Slice<DataDirectory> = __tmp__._0,
			_err:stdgo.Error = __tmp__._1;
		if (_err != null) {
			return {_0: ((null : AnyInterface)), _1: _err};
		};
		Go.copy(_oh32.dataDirectory.__slice__(0), _dd);
		return {_0: Go.toInterface(Go.pointer(_oh32)), _1: ((null : stdgo.Error))};
	} else if (_ohMagic == ((523 : GoUInt16))) {
		var _oh64:OptionalHeader64 = new OptionalHeader64(),
			_oh64MinSz:GoInt = stdgo.encoding.binary.Binary.size(Go.toInterface(_oh64.__copy__()))
				- stdgo.encoding.binary.Binary.size(Go.toInterface(_oh64.dataDirectory.copy()));
		if (_sz < ((_oh64MinSz : GoUInt16))) {
			return {_0: ((null : AnyInterface)), _1: stdgo.fmt.Fmt.errorf("optional header size(%d) is less minimum size (%d) for PE32+ optional header",
				Go.toInterface(_sz), Go.toInterface(_oh64MinSz))};
		};
		_oh64.magic = _ohMagic;
		if (!_read(Go.toInterface(Go.pointer(_oh64.majorLinkerVersion)))
			|| !_read(Go.toInterface(Go.pointer(_oh64.minorLinkerVersion)))
			|| !_read(Go.toInterface(Go.pointer(_oh64.sizeOfCode)))
			|| !_read(Go.toInterface(Go.pointer(_oh64.sizeOfInitializedData)))
			|| !_read(Go.toInterface(Go.pointer(_oh64.sizeOfUninitializedData)))
			|| !_read(Go.toInterface(Go.pointer(_oh64.addressOfEntryPoint)))
			|| !_read(Go.toInterface(Go.pointer(_oh64.baseOfCode)))
			|| !_read(Go.toInterface(Go.pointer(_oh64.imageBase)))
			|| !_read(Go.toInterface(Go.pointer(_oh64.sectionAlignment)))
			|| !_read(Go.toInterface(Go.pointer(_oh64.fileAlignment)))
			|| !_read(Go.toInterface(Go.pointer(_oh64.majorOperatingSystemVersion)))
			|| !_read(Go.toInterface(Go.pointer(_oh64.minorOperatingSystemVersion)))
			|| !_read(Go.toInterface(Go.pointer(_oh64.majorImageVersion)))
			|| !_read(Go.toInterface(Go.pointer(_oh64.minorImageVersion)))
			|| !_read(Go.toInterface(Go.pointer(_oh64.majorSubsystemVersion)))
			|| !_read(Go.toInterface(Go.pointer(_oh64.minorSubsystemVersion)))
			|| !_read(Go.toInterface(Go.pointer(_oh64.win32VersionValue)))
			|| !_read(Go.toInterface(Go.pointer(_oh64.sizeOfImage)))
			|| !_read(Go.toInterface(Go.pointer(_oh64.sizeOfHeaders)))
			|| !_read(Go.toInterface(Go.pointer(_oh64.checkSum)))
			|| !_read(Go.toInterface(Go.pointer(_oh64.subsystem)))
			|| !_read(Go.toInterface(Go.pointer(_oh64.dllCharacteristics)))
			|| !_read(Go.toInterface(Go.pointer(_oh64.sizeOfStackReserve)))
			|| !_read(Go.toInterface(Go.pointer(_oh64.sizeOfStackCommit)))
			|| !_read(Go.toInterface(Go.pointer(_oh64.sizeOfHeapReserve)))
			|| !_read(Go.toInterface(Go.pointer(_oh64.sizeOfHeapCommit)))
			|| !_read(Go.toInterface(Go.pointer(_oh64.loaderFlags)))
			|| !_read(Go.toInterface(Go.pointer(_oh64.numberOfRvaAndSizes)))) {
			return {_0: ((null : AnyInterface)), _1: stdgo.fmt.Fmt.errorf("failure to read PE32+ optional header: %v", Go.toInterface(_err))};
		};
		var __tmp__ = _readDataDirectories(_r, _sz - ((_oh64MinSz : GoUInt16)), _oh64.numberOfRvaAndSizes),
			_dd:Slice<DataDirectory> = __tmp__._0,
			_err:stdgo.Error = __tmp__._1;
		if (_err != null) {
			return {_0: ((null : AnyInterface)), _1: _err};
		};
		Go.copy(_oh64.dataDirectory.__slice__(0), _dd);
		return {_0: Go.toInterface(Go.pointer(_oh64)), _1: ((null : stdgo.Error))};
	} else {
		return {_0: ((null : AnyInterface)), _1: stdgo.fmt.Fmt.errorf("optional header has unexpected Magic of 0x%x", Go.toInterface(_ohMagic))};
	};
}

/**
	// readDataDirectories accepts a io.ReadSeeker pointing to data directories in the PE file,
	// its size and number of data directories as seen in optional header.
	// It parses the given size of bytes and returns given number of data directories.
**/
function _readDataDirectories(_r:stdgo.io.Io.ReadSeeker, _sz:GoUInt16, _n:GoUInt32):{var _0:Slice<DataDirectory>; var _1:Error;} {
	var _ddSz:GoInt = stdgo.encoding.binary.Binary.size(Go.toInterface(new DataDirectory().__copy__()));
	if (((_sz : GoUInt32)) != _n * ((_ddSz : GoUInt32))) {
		return {_0: new Slice<DataDirectory>().nil(),
			_1: stdgo.fmt.Fmt.errorf("size of data directories(%d) is inconsistent with number of data directories(%d)", Go.toInterface(_sz),
				Go.toInterface(_n))};
	};
	var _dd:Slice<DataDirectory> = new Slice<DataDirectory>(...[for (i in 0...((_n : GoInt)).toBasic()) new DataDirectory()]);
	{
		var _err:stdgo.Error = stdgo.encoding.binary.Binary.read(_r, stdgo.encoding.binary.Binary.littleEndian.__copy__(), Go.toInterface(_dd));
		if (_err != null) {
			return {_0: new Slice<DataDirectory>().nil(), _1: stdgo.fmt.Fmt.errorf("failure to read data directories: %v", Go.toInterface(_err))};
		};
	};
	return {_0: _dd, _1: ((null : stdgo.Error))};
}

function _readRelocs(_sh:Pointer<SectionHeader>, _r:stdgo.io.Io.ReadSeeker):{var _0:Slice<Reloc>; var _1:Error;} {
	if (_sh.value.numberOfRelocations <= ((0 : GoUInt16))) {
		return {_0: new Slice<Reloc>().nil(), _1: ((null : stdgo.Error))};
	};
	var __tmp__ = _r.seek(((_sh.value.pointerToRelocations : GoInt64)), _seekStart),
		_:GoInt64 = __tmp__._0,
		_err:stdgo.Error = __tmp__._1;
	if (_err != null) {
		return {_0: new Slice<Reloc>().nil(), _1: stdgo.fmt.Fmt.errorf("fail to seek to %q section relocations: %v", Go.toInterface(_sh.value.name),
			Go.toInterface(_err))};
	};
	var _relocs:Slice<Reloc> = new Slice<Reloc>(...[for (i in 0...((_sh.value.numberOfRelocations : GoInt)).toBasic()) new Reloc()]);
	_err = stdgo.encoding.binary.Binary.read(_r, stdgo.encoding.binary.Binary.littleEndian.__copy__(), Go.toInterface(_relocs));
	if (_err != null) {
		return {_0: new Slice<Reloc>().nil(), _1: stdgo.fmt.Fmt.errorf("fail to read section relocations: %v", Go.toInterface(_err))};
	};
	return {_0: _relocs, _1: ((null : stdgo.Error))};
}

/**
	// cstring converts ASCII byte sequence b to string.
	// It stops once it finds 0 or reaches end of b.
**/
function _cstring(_b:Slice<GoByte>):GoString {
	var _i:GoInt = stdgo.bytes.Bytes.indexByte(_b, ((0 : GoUInt8)));
	if (_i == -((1 : GoUnTypedInt))) {
		_i = _b.length;
	};
	return ((_b.__slice__(0, _i) : GoString));
}

function _readStringTable(_fh:Pointer<FileHeader>, _r:stdgo.io.Io.ReadSeeker):{var _0:StringTable; var _1:Error;} {
	if (_fh.value.pointerToSymbolTable <= ((0 : GoUInt32))) {
		return {_0: new StringTable(), _1: ((null : stdgo.Error))};
	};
	var _offset:GoUInt32 = _fh.value.pointerToSymbolTable + coffsymbolSize * _fh.value.numberOfSymbols;
	var __tmp__ = _r.seek(((_offset : GoInt64)), _seekStart),
		_:GoInt64 = __tmp__._0,
		_err:stdgo.Error = __tmp__._1;
	if (_err != null) {
		return {_0: new StringTable(), _1: stdgo.fmt.Fmt.errorf("fail to seek to string table: %v", Go.toInterface(_err))};
	};
	var _l:GoUInt32 = ((0 : GoUInt32));
	_err = stdgo.encoding.binary.Binary.read(_r, stdgo.encoding.binary.Binary.littleEndian.__copy__(), Go.toInterface(Go.pointer(_l)));
	if (_err != null) {
		return {_0: new StringTable(), _1: stdgo.fmt.Fmt.errorf("fail to read string table length: %v", Go.toInterface(_err))};
	};
	if (_l <= ((4 : GoUInt32))) {
		return {_0: new StringTable(), _1: ((null : stdgo.Error))};
	};
	_l = _l - (((4 : GoUInt32)));
	var _buf:Slice<GoUInt8> = new Slice<GoUInt8>(...[for (i in 0...((_l : GoInt)).toBasic()) ((0 : GoUInt8))]);
	{
		var __tmp__ = stdgo.io.Io.readFull(_r, _buf);
		_err = __tmp__._1;
	};
	if (_err != null) {
		return {_0: new StringTable(), _1: stdgo.fmt.Fmt.errorf("fail to read string table: %v", Go.toInterface(_err))};
	};
	return {_0: new StringTable(_buf).__copy__(), _1: ((null : stdgo.Error))};
}

function _readCOFFSymbols(_fh:Pointer<FileHeader>, _r:stdgo.io.Io.ReadSeeker):{var _0:Slice<COFFSymbol>; var _1:Error;} {
	if (_fh.value.pointerToSymbolTable == ((0 : GoUInt32))) {
		return {_0: new Slice<COFFSymbol>().nil(), _1: ((null : stdgo.Error))};
	};
	if (_fh.value.numberOfSymbols <= ((0 : GoUInt32))) {
		return {_0: new Slice<COFFSymbol>().nil(), _1: ((null : stdgo.Error))};
	};
	var __tmp__ = _r.seek(((_fh.value.pointerToSymbolTable : GoInt64)), _seekStart),
		_:GoInt64 = __tmp__._0,
		_err:stdgo.Error = __tmp__._1;
	if (_err != null) {
		return {_0: new Slice<COFFSymbol>().nil(), _1: stdgo.fmt.Fmt.errorf("fail to seek to symbol table: %v", Go.toInterface(_err))};
	};
	var _syms:Slice<COFFSymbol> = new Slice<COFFSymbol>(...[for (i in 0...((_fh.value.numberOfSymbols : GoInt)).toBasic()) new COFFSymbol()]);
	_err = stdgo.encoding.binary.Binary.read(_r, stdgo.encoding.binary.Binary.littleEndian.__copy__(), Go.toInterface(_syms));
	if (_err != null) {
		return {_0: new Slice<COFFSymbol>().nil(), _1: stdgo.fmt.Fmt.errorf("fail to read symbol table: %v", Go.toInterface(_err))};
	};
	return {_0: _syms, _1: ((null : stdgo.Error))};
}

/**
	// isSymNameOffset checks symbol name if it is encoded as offset into string table.
**/
function _isSymNameOffset(_name:GoArray<GoByte>):{var _0:Bool; var _1:GoUInt32;} {
	if (_name[((0 : GoInt))] == ((0 : GoUInt8))
		&& _name[((1 : GoInt))] == ((0 : GoUInt8))
		&& _name[((2 : GoInt))] == ((0 : GoUInt8))
		&& _name[((3 : GoInt))] == ((0 : GoUInt8))) {
		return {_0: true, _1: stdgo.encoding.binary.Binary.littleEndian.uint32(_name.__slice__(((4 : GoInt))))};
	};
	return {_0: false, _1: ((0 : GoUInt32))};
}

function _removeAuxSymbols(_allsyms:Slice<COFFSymbol>, _st:StringTable):{var _0:Slice<Pointer<Symbol>>; var _1:Error;} {
	if (_allsyms.length == ((0 : GoInt))) {
		return {_0: new Slice<Pointer<Symbol>>().nil(), _1: ((null : stdgo.Error))};
	};
	var _syms:Slice<Pointer<Symbol>> = new Slice<Pointer<Symbol>>(...[for (i in 0...((((0 : GoInt)) : GoInt)).toBasic()) new Pointer<Symbol>().nil()]);
	var _aux:GoUInt8 = ((((0 : GoUInt8)) : GoUInt8));
	for (_sym in _allsyms) {
		if (_aux > ((0 : GoUInt8))) {
			_aux--;
			continue;
		};
		var __tmp__ = _sym.fullName(_st.__copy__()),
			_name:GoString = __tmp__._0,
			_err:stdgo.Error = __tmp__._1;
		if (_err != null) {
			return {_0: new Slice<Pointer<Symbol>>().nil(), _1: _err};
		};
		_aux = _sym.numberOfAuxSymbols;
		var _s:Pointer<Symbol> = Go.pointer((({
			name: _name,
			value: _sym.value,
			sectionNumber: _sym.sectionNumber,
			type: _sym.type,
			storageClass: _sym.storageClass
		} : Symbol)));
		_syms = _syms.__append__(_s);
	};
	return {_0: _syms, _1: ((null : stdgo.Error))};
}

class File_extension_fields {
	public function close(__tmp__):Error
		return __tmp__.close();

	public function section(__tmp__, _name:GoString):Pointer<Section>
		return __tmp__.section(_name);

	public function dwarf(__tmp__):{var _0:Pointer<stdgo.debug.dwarf.Dwarf.Data>; var _1:Error;}
		return __tmp__.dwarf();

	public function importedSymbols(__tmp__):{var _0:Slice<GoString>; var _1:Error;}
		return __tmp__.importedSymbols();

	public function importedLibraries(__tmp__):{var _0:Slice<GoString>; var _1:Error;}
		return __tmp__.importedLibraries();
}

class T_zeroReaderAt_extension_fields {
	public function readAt(__tmp__, _p:Slice<GoByte>, _off:GoInt64):{var _0:GoInt; var _1:Error;}
		return __tmp__.readAt(_p, _off);
}

class FormatError_extension_fields {
	public function error(__tmp__):GoString
		return __tmp__.error();
}

class SectionHeader32_extension_fields {
	public function _fullName(__tmp__, _st:StringTable):{var _0:GoString; var _1:Error;}
		return __tmp__._fullName(_st);
}

class Section_extension_fields {
	public function data(__tmp__):{var _0:Slice<GoByte>; var _1:Error;}
		return __tmp__.data();

	public function open(__tmp__):stdgo.io.Io.ReadSeeker
		return __tmp__.open();
}

class StringTable_extension_fields {
	public function toString(__tmp__, _start:GoUInt32):{var _0:GoString; var _1:Error;}
		return __tmp__.toString(_start);
}

class COFFSymbol_extension_fields {
	public function fullName(__tmp__, _st:StringTable):{var _0:GoString; var _1:Error;}
		return __tmp__.fullName(_st);
}
