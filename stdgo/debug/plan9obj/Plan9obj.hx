package stdgo.debug.plan9obj;

import stdgo.StdGoTypes;
import stdgo.Error;
import stdgo.Go;
import stdgo.GoString;
import stdgo.Pointer;
import stdgo.Slice;
import stdgo.GoArray;
import stdgo.GoMap;
import stdgo.Chan;

@:structInit class FileHeader {
	public var magic:GoUInt32 = ((0 : GoUInt32));
	public var bss:GoUInt32 = ((0 : GoUInt32));
	public var entry:GoUInt64 = ((0 : GoUInt64));
	public var ptrSize:GoInt = ((0 : GoInt));
	public var loadAddress:GoUInt64 = ((0 : GoUInt64));
	public var hdrSize:GoUInt64 = ((0 : GoUInt64));

	public function new(?magic:GoUInt32, ?bss:GoUInt32, ?entry:GoUInt64, ?ptrSize:GoInt, ?loadAddress:GoUInt64, ?hdrSize:GoUInt64)
		stdgo.internal.Macro.initLocals();

	public function toString() {
		return '{' + Go.string(magic) + " " + Go.string(bss) + " " + Go.string(entry) + " " + Go.string(ptrSize) + " " + Go.string(loadAddress) + " "
			+ Go.string(hdrSize) + "}";
	}

	public function __underlying__():AnyInterface
		return Go.toInterface(this);

	public function __copy__() {
		return new FileHeader(magic, bss, entry, ptrSize, loadAddress, hdrSize);
	}

	public function __set__(__tmp__) {
		this.magic = __tmp__.magic;
		this.bss = __tmp__.bss;
		this.entry = __tmp__.entry;
		this.ptrSize = __tmp__.ptrSize;
		this.loadAddress = __tmp__.loadAddress;
		this.hdrSize = __tmp__.hdrSize;
		return this;
	}
}

@:structInit class File {
	public function section(_name:GoString):Pointer<Section> {
		var _f = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
		for (_s in _f.value.sections) {
			if (_s.value.sectionHeader.name == _name) {
				return _s;
			};
		};
		return new Pointer<Section>().nil();
	}

	public function symbols():{var _0:Slice<Sym>; var _1:Error;} {
		var _f = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
		var _symtabSection:Pointer<Section> = _f.value.section("syms");
		if (_symtabSection == null || _symtabSection.isNil()) {
			return {_0: new Slice<Sym>().nil(), _1: stdgo.errors.Errors.new_("no symbol section")};
		};
		var __tmp__ = _symtabSection.value.data(),
			_symtab:Slice<GoUInt8> = __tmp__._0,
			_err:stdgo.Error = __tmp__._1;
		if (_err != null) {
			return {_0: new Slice<Sym>().nil(), _1: stdgo.errors.Errors.new_("cannot load symbol section")};
		};
		return _newTable(_symtab, _f.value.fileHeader.ptrSize);
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
	public var sections:Slice<Pointer<Section>> = new Slice<Pointer<Section>>().nil();
	public var _closer:stdgo.io.Io.Closer = ((null : stdgo.io.Io.Closer));

	public function new(?fileHeader:FileHeader, ?sections:Slice<Pointer<Section>>, ?_closer:stdgo.io.Io.Closer)
		stdgo.internal.Macro.initLocals();

	public function toString() {
		return '{' + Go.string(fileHeader) + " " + Go.string(sections) + " " + Go.string(_closer) + "}";
	}

	public function __underlying__():AnyInterface
		return Go.toInterface(this);

	public function __copy__() {
		return new File(fileHeader, sections, _closer);
	}

	public function __set__(__tmp__) {
		this.fileHeader = __tmp__.fileHeader;
		this.sections = __tmp__.sections;
		this._closer = __tmp__._closer;
		return this;
	}
}

@:structInit class SectionHeader {
	public var name:GoString = (("" : GoString));
	public var size:GoUInt32 = ((0 : GoUInt32));
	public var offset:GoUInt32 = ((0 : GoUInt32));

	public function new(?name:GoString, ?size:GoUInt32, ?offset:GoUInt32)
		stdgo.internal.Macro.initLocals();

	public function toString() {
		return '{' + Go.string(name) + " " + Go.string(size) + " " + Go.string(offset) + "}";
	}

	public function __underlying__():AnyInterface
		return Go.toInterface(this);

	public function __copy__() {
		return new SectionHeader(name, size, offset);
	}

	public function __set__(__tmp__) {
		this.name = __tmp__.name;
		this.size = __tmp__.size;
		this.offset = __tmp__.offset;
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
	@:embedded
	public var readerAt:stdgo.io.Io.ReaderAt = ((null : stdgo.io.Io.ReaderAt));
	public var _sr:Pointer<stdgo.io.Io.SectionReader> = new Pointer<stdgo.io.Io.SectionReader>().nil();

	public function new(?sectionHeader:SectionHeader, ?readerAt:stdgo.io.Io.ReaderAt, ?_sr:Pointer<stdgo.io.Io.SectionReader>)
		stdgo.internal.Macro.initLocals();

	public function toString() {
		return '{' + Go.string(sectionHeader) + " " + Go.string(readerAt) + " " + Go.string(_sr) + "}";
	}

	public function readAt(_p:Slice<GoUInt8>, _off:GoInt64):{var _0:GoInt; var _1:stdgo.Error;}
		return readerAt.readAt(_0, _1);

	public function __underlying__():AnyInterface
		return Go.toInterface(this);

	public function __copy__() {
		return new Section(sectionHeader, readerAt, _sr);
	}

	public function __set__(__tmp__) {
		this.sectionHeader = __tmp__.sectionHeader;
		this.readerAt = __tmp__.readerAt;
		this._sr = __tmp__._sr;
		return this;
	}
}

@:structInit class Sym {
	public var value:GoUInt64 = ((0 : GoUInt64));
	public var type:GoInt32 = ((0 : GoInt32));
	public var name:GoString = (("" : GoString));

	public function new(?value:GoUInt64, ?type:GoInt32, ?name:GoString)
		stdgo.internal.Macro.initLocals();

	public function toString() {
		return '{' + Go.string(value) + " " + Go.string(type) + " " + Go.string(name) + "}";
	}

	public function __underlying__():AnyInterface
		return Go.toInterface(this);

	public function __copy__() {
		return new Sym(value, type, name);
	}

	public function __set__(__tmp__) {
		this.value = __tmp__.value;
		this.type = __tmp__.type;
		this.name = __tmp__.name;
		return this;
	}
}

@:structInit class T_formatError {
	public function error():GoString {
		var _e = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
		var _msg:GoString = _e.value._msg;
		if (_e.value._val != null) {
			_msg = _msg + (stdgo.fmt.Fmt.sprintf(" \'%v\'", Go.toInterface(_e.value._val)));
		};
		_msg = _msg + (stdgo.fmt.Fmt.sprintf(" in record at byte %#x", Go.toInterface(_e.value._off)));
		return _msg;
	}

	public var _off:GoInt = ((0 : GoInt));
	public var _msg:GoString = (("" : GoString));
	public var _val:AnyInterface = ((null : AnyInterface));

	public function new(?_off:GoInt, ?_msg:GoString, ?_val:AnyInterface)
		stdgo.internal.Macro.initLocals();

	public function toString() {
		return '{' + Go.string(_off) + " " + Go.string(_msg) + " " + Go.string(_val) + "}";
	}

	public function __underlying__():AnyInterface
		return Go.toInterface(this);

	public function __copy__() {
		return new T_formatError(_off, _msg, _val);
	}

	public function __set__(__tmp__) {
		this._off = __tmp__._off;
		this._msg = __tmp__._msg;
		this._val = __tmp__._val;
		return this;
	}
}

@:structInit class T_prog {
	public var magic:GoUInt32 = ((0 : GoUInt32));
	public var text:GoUInt32 = ((0 : GoUInt32));
	public var data:GoUInt32 = ((0 : GoUInt32));
	public var bss:GoUInt32 = ((0 : GoUInt32));
	public var syms:GoUInt32 = ((0 : GoUInt32));
	public var entry:GoUInt32 = ((0 : GoUInt32));
	public var spsz:GoUInt32 = ((0 : GoUInt32));
	public var pcsz:GoUInt32 = ((0 : GoUInt32));

	public function new(?magic:GoUInt32, ?text:GoUInt32, ?data:GoUInt32, ?bss:GoUInt32, ?syms:GoUInt32, ?entry:GoUInt32, ?spsz:GoUInt32, ?pcsz:GoUInt32)
		stdgo.internal.Macro.initLocals();

	public function toString() {
		return '{' + Go.string(magic) + " " + Go.string(text) + " " + Go.string(data) + " " + Go.string(bss) + " " + Go.string(syms) + " "
			+ Go.string(entry) + " " + Go.string(spsz) + " " + Go.string(pcsz) + "}";
	}

	public function __underlying__():AnyInterface
		return Go.toInterface(this);

	public function __copy__() {
		return new T_prog(magic, text, data, bss, syms, entry, spsz, pcsz);
	}

	public function __set__(__tmp__) {
		this.magic = __tmp__.magic;
		this.text = __tmp__.text;
		this.data = __tmp__.data;
		this.bss = __tmp__.bss;
		this.syms = __tmp__.syms;
		this.entry = __tmp__.entry;
		this.spsz = __tmp__.spsz;
		this.pcsz = __tmp__.pcsz;
		return this;
	}
}

@:structInit class T_sym {
	public var _value:GoUInt64 = ((0 : GoUInt64));
	public var _typ:GoUInt8 = ((0 : GoUInt8));
	public var _name:Slice<GoUInt8> = new Slice<GoUInt8>().nil();

	public function new(?_value:GoUInt64, ?_typ:GoUInt8, ?_name:Slice<GoUInt8>)
		stdgo.internal.Macro.initLocals();

	public function toString() {
		return '{' + Go.string(_value) + " " + Go.string(_typ) + " " + Go.string(_name) + "}";
	}

	public function __underlying__():AnyInterface
		return Go.toInterface(this);

	public function __copy__() {
		return new T_sym(_value, _typ, _name);
	}

	public function __set__(__tmp__) {
		this._value = __tmp__._value;
		this._typ = __tmp__._typ;
		this._name = __tmp__._name;
		return this;
	}
}

@:structInit @:local class T__struct_43 {
	public var _name:GoString = (("" : GoString));
	public var _size:GoUInt32 = ((0 : GoUInt32));

	public function new(?_name:GoString, ?_size:GoUInt32)
		stdgo.internal.Macro.initLocals();

	public function toString() {
		return '{' + Go.string(_name) + " " + Go.string(_size) + "}";
	}

	public function __underlying__():AnyInterface
		return Go.toInterface(this);

	public function __copy__() {
		return new T__struct_43(_name, _size);
	}

	public function __set__(__tmp__) {
		this._name = __tmp__._name;
		this._size = __tmp__._size;
		return this;
	}
}

final magic64:GoInt64 = ((32768 : GoUnTypedInt));
final magicARM:GoUnTypedInt = (((4 : GoUnTypedInt)) * ((20 : GoUnTypedInt)) + ((0 : GoUnTypedInt))) * ((20 : GoUnTypedInt)) + ((7 : GoUnTypedInt));

final magicAMD64:GoUnTypedInt = (((4 : GoUnTypedInt)) * ((26 : GoUnTypedInt))
	+ ((0 : GoUnTypedInt))) * ((26 : GoUnTypedInt))
	+ ((7 : GoUnTypedInt))
	+ magic64;

final magic386:GoUnTypedInt = (((4 : GoUnTypedInt)) * ((11 : GoUnTypedInt)) + ((0 : GoUnTypedInt))) * ((11 : GoUnTypedInt)) + ((7 : GoUnTypedInt));

/**
	// Open opens the named file using os.Open and prepares it for use as a Plan 9 a.out binary.
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

function _parseMagic(_magic:Slice<GoByte>):{var _0:GoUInt32; var _1:Error;} {
	var _m:GoUInt32 = stdgo.encoding.binary.Binary.bigEndian.uint32(_magic);
	if (_m == magic386 || _m == magicAMD64 || _m == magicARM) {
		return {_0: _m, _1: ((null : stdgo.Error))};
	};
	return {_0: ((0 : GoUInt32)), _1: Go.pointer(new T_formatError(((0 : GoInt)), "bad magic number", Go.toInterface(_magic))).value};
}

/**
	// NewFile creates a new File for accessing a Plan 9 binary in an underlying reader.
	// The Plan 9 binary is expected to start at position 0 in the ReaderAt.
**/
function newFile(_r:stdgo.io.Io.ReaderAt):{var _0:Pointer<File>; var _1:Error;} {
	var _sr:Pointer<stdgo.io.Io.SectionReader> = stdgo.io.Io.newSectionReader(_r, ((0 : GoInt64)),
		(((1 : GoUnTypedInt)) << ((63 : GoUnTypedInt))) - ((1 : GoUnTypedInt)));
	var _magic:GoArray<GoByte> = new GoArray<GoUInt8>(...[for (i in 0...4) ((0 : GoUInt8))]);
	{
		var __tmp__ = _r.readAt(_magic.__slice__(0), ((0 : GoInt64))),
			_:GoInt = __tmp__._0,
			_err:stdgo.Error = __tmp__._1;
		if (_err != null) {
			return {_0: new Pointer<File>().nil(), _1: _err};
		};
	};
	var __tmp__ = _parseMagic(_magic.__slice__(0)),
		_:GoUInt32 = __tmp__._0,
		_err:stdgo.Error = __tmp__._1;
	if (_err != null) {
		return {_0: new Pointer<File>().nil(), _1: _err};
	};
	var _ph:Pointer<T_prog> = Go.pointer(new T_prog());
	{
		var _err:stdgo.Error = stdgo.encoding.binary.Binary.read(_sr.value, stdgo.encoding.binary.Binary.bigEndian.__copy__(), Go.toInterface(_ph));
		if (_err != null) {
			return {_0: new Pointer<File>().nil(), _1: _err};
		};
	};
	var _f:Pointer<File> = Go.pointer((({fileHeader: (({
		magic: _ph.value.magic,
		bss: _ph.value.bss,
		entry: ((_ph.value.entry : GoUInt64)),
		ptrSize: ((4 : GoInt)),
		loadAddress: ((4096 : GoUInt64)),
		hdrSize: ((4 : GoUnTypedInt)) * ((8 : GoUnTypedInt))
	} : FileHeader)).__copy__(), sections: new Slice<Pointer<Section>>().nil(), _closer: ((null : stdgo.io.Io.Closer))} : File)));
	if (_ph.value.magic & magic64 != ((0 : GoUInt32))) {
		{
			var _err:stdgo.Error = stdgo.encoding.binary.Binary.read(_sr.value, stdgo.encoding.binary.Binary.bigEndian.__copy__(),
				Go.toInterface(Go.pointer(_f.value.fileHeader.entry)));
			if (_err != null) {
				return {_0: new Pointer<File>().nil(), _1: _err};
			};
		};
		_f.value.fileHeader.ptrSize = ((8 : GoInt));
		_f.value.fileHeader.loadAddress = ((2097152 : GoUInt64));
		_f.value.fileHeader.hdrSize = _f.value.fileHeader.hdrSize + (((8 : GoUInt64)));
	};
	var _sects:Slice<T__struct_43> = new Slice<T__struct_43>(new T__struct_43("text", _ph.value.text).__copy__(),
		new T__struct_43("data", _ph.value.data).__copy__(), new T__struct_43("syms", _ph.value.syms).__copy__(),
		new T__struct_43("spsz", _ph.value.spsz).__copy__(), new T__struct_43("pcsz", _ph.value.pcsz).__copy__());
	_f.value.sections = new Slice<Pointer<Section>>(...[for (i in 0...((((5 : GoInt)) : GoInt)).toBasic()) new Pointer<Section>().nil()]);
	var _off:GoUInt32 = ((_f.value.fileHeader.hdrSize : GoUInt32));
	{
		var _i;
		var _sect;
		for (_obj in _sects.keyValueIterator()) {
			_i = _obj.key;
			_sect = _obj.value;
			var _s:Pointer<Section> = Go.pointer(new Section());
			_s.value.sectionHeader = (({name: _sect._name, size: _sect._size, offset: _off} : SectionHeader)).__copy__();
			_off = _off + (_sect._size);
			_s.value._sr = stdgo.io.Io.newSectionReader(_r, ((_s.value.sectionHeader.offset : GoInt64)), ((_s.value.sectionHeader.size : GoInt64)));
			_s.value.readerAt = _s.value._sr.value;
			_f.value.sections[_i] = _s;
		};
	};
	return {_0: _f, _1: ((null : stdgo.Error))};
}

function _walksymtab(_data:Slice<GoByte>, _ptrsz:GoInt, _fn:T_sym->Error):Error {
	var _order:stdgo.encoding.binary.Binary.ByteOrder = stdgo.encoding.binary.Binary.bigEndian.__copy__();
	var _s:T_sym = new T_sym();
	var _p:Slice<GoUInt8> = _data;
	while (_p.length >= ((4 : GoInt))) {
		if (_p.length < _ptrsz) {
			return Go.pointer(new T_formatError(_data.length, "unexpected EOF", ((null : AnyInterface)))).value;
		};
		if (_ptrsz == ((8 : GoInt))) {
			_s._value = _order.uint64(_p.__slice__(((0 : GoInt)), ((8 : GoInt))));
			_p = _p.__slice__(((8 : GoInt)));
		} else {
			_s._value = ((_order.uint32(_p.__slice__(((0 : GoInt)), ((4 : GoInt)))) : GoUInt64));
			_p = _p.__slice__(((4 : GoInt)));
		};
		var _typ:GoByte = ((0 : GoUInt8));
		_typ = _p[((0 : GoInt))] & ((127 : GoUInt8));
		_s._typ = _typ;
		_p = _p.__slice__(((1 : GoInt)));
		var _i:GoInt = ((0 : GoInt));
		var _nnul:GoInt = ((0 : GoInt));
		{
			_i = ((0 : GoInt));
			Go.cfor(_i < _p.length, _i++, {
				if (_p[_i] == ((0 : GoUInt8))) {
					_nnul = ((1 : GoInt));
					break;
				};
			});
		};
		{
			var __switchIndex__ = -1;
			while (true) {
				if (_typ == (("z".code : GoRune)) || _typ == (("Z".code : GoRune))) {
					_p = _p.__slice__(_i + _nnul);
					{
						_i = ((0 : GoInt));
						Go.cfor(_i + ((2 : GoInt)) <= _p.length, _i = _i + (((2 : GoInt))), {
							if (_p[_i] == ((0 : GoUInt8)) && _p[_i + ((1 : GoInt))] == ((0 : GoUInt8))) {
								_nnul = ((2 : GoInt));
								break;
							};
						});
					};
					break;
				};
				break;
			};
		};
		if (_p.length < _i + _nnul) {
			return Go.pointer(new T_formatError(_data.length, "unexpected EOF", ((null : AnyInterface)))).value;
		};
		_s._name = _p.__slice__(((0 : GoInt)), _i);
		_i = _i + (_nnul);
		_p = _p.__slice__(_i);
		_fn(_s.__copy__());
	};
	return ((null : stdgo.Error));
}

/**
	// NewTable decodes the Go symbol table in data,
	// returning an in-memory representation.
**/
function _newTable(_symtab:Slice<GoByte>, _ptrsz:GoInt):{var _0:Slice<Sym>; var _1:Error;} {
	var _n:GoInt = ((0 : GoInt));
	var _err:stdgo.Error = _walksymtab(_symtab, _ptrsz, function(_s:T_sym):Error {
		_n++;
		return ((null : stdgo.Error));
	});
	if (_err != null) {
		return {_0: new Slice<Sym>().nil(), _1: _err};
	};
	var _fname:GoMap<GoUInt16, GoString> = new GoMap<GoUInt16,
		GoString>(new stdgo.reflect.Reflect._Type(stdgo.reflect.Reflect.GoType.mapType(stdgo.reflect.Reflect.GoType.basic(uint16_kind),
			stdgo.reflect.Reflect.GoType.basic(string_kind))));
	var _syms:Slice<Sym> = new Slice<Sym>(...[for (i in 0...((((0 : GoInt)) : GoInt)).toBasic()) new Sym()]).setCap(((_n : GoInt)).toBasic());
	_err = _walksymtab(_symtab, _ptrsz, function(_s:T_sym):Error {
		var _n:GoInt = _syms.length;
		_syms = _syms.__slice__(((0 : GoInt)), _n + ((1 : GoInt)));
		var _ts:Pointer<Sym> = Go.pointer(_syms[_n]);
		_ts.value.type = ((_s._typ : GoRune));
		_ts.value.value = _s._value;
		if (_s._typ == (("z".code : GoRune)) || _s._typ == (("Z".code : GoRune))) {
			{
				var _i:GoInt = ((0 : GoInt));
				Go.cfor(_i < _s._name.length, _i = _i + (((2 : GoInt))), {
					var _eltIdx:GoUInt16 = stdgo.encoding.binary.Binary.bigEndian.uint16(_s._name.__slice__(_i, _i + ((2 : GoInt))));
					var __tmp__ = _fname.exists(_eltIdx) ? {value: _fname[_eltIdx], ok: true} : {value: _fname.defaultValue(), ok: false},
						_elt:GoString = __tmp__.value,
						_ok:Bool = __tmp__.ok;
					if (!_ok) {
						return Go.pointer(new T_formatError(-((1 : GoUnTypedInt)), "bad filename code", Go.toInterface(_eltIdx))).value;
					};
					{
						var _n:GoInt = _ts.value.name.length;
						if (_n > ((0 : GoInt)) && _ts.value.name[_n - ((1 : GoInt))] != (("/".code : GoRune))) {
							_ts.value.name = _ts.value.name + ("/");
						};
					};
					_ts.value.name = _ts.value.name + (_elt);
				});
			};
		};
		if (_s._typ == (("f".code : GoRune))) {
			_fname[((_s._value : GoUInt16))] = _ts.value.name;
		};
		return ((null : stdgo.Error));
	});
	if (_err != null) {
		return {_0: new Slice<Sym>().nil(), _1: _err};
	};
	return {_0: _syms, _1: ((null : stdgo.Error))};
}

class File_extension_fields {
	public function close(__tmp__):Error
		return __tmp__.close();

	public function symbols(__tmp__):{var _0:Slice<Sym>; var _1:Error;}
		return __tmp__.symbols();

	public function section(__tmp__, _name:GoString):Pointer<Section>
		return __tmp__.section(_name);
}

class Section_extension_fields {
	public function data(__tmp__):{var _0:Slice<GoByte>; var _1:Error;}
		return __tmp__.data();

	public function open(__tmp__):stdgo.io.Io.ReadSeeker
		return __tmp__.open();
}

class T_formatError_extension_fields {
	public function error(__tmp__):GoString
		return __tmp__.error();
}
