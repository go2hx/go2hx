package stdgo.go.internal.gcimporter;

import stdgo.StdGoTypes;
import stdgo.Error;
import stdgo.Go;
import stdgo.GoString;
import stdgo.Pointer;
import stdgo.Slice;
import stdgo.GoArray;
import stdgo.GoMap;
import stdgo.Chan;

/**
	// Package gcimporter implements Import for gc-generated object files.
**/
private var __go2hxdoc__package:Bool;

private var _pkgExts:GoArray<GoString> = (new GoArray<GoString>((".a" : GoString), (".o" : GoString)) : GoArray<GoString>);

private var _predeclared:Slice<stdgo.go.types.Types.Type> = (new Slice<stdgo.go.types.Types.Type>(0, 0,
	Go.asInterface(stdgo.go.types.Types.typ[((1 : stdgo.go.types.Types.BasicKind) : GoInt)]),
	Go.asInterface(stdgo.go.types.Types.typ[((2 : stdgo.go.types.Types.BasicKind) : GoInt)]),
	Go.asInterface(stdgo.go.types.Types.typ[((3 : stdgo.go.types.Types.BasicKind) : GoInt)]),
	Go.asInterface(stdgo.go.types.Types.typ[((4 : stdgo.go.types.Types.BasicKind) : GoInt)]),
	Go.asInterface(stdgo.go.types.Types.typ[((5 : stdgo.go.types.Types.BasicKind) : GoInt)]),
	Go.asInterface(stdgo.go.types.Types.typ[((6 : stdgo.go.types.Types.BasicKind) : GoInt)]),
	Go.asInterface(stdgo.go.types.Types.typ[((7 : stdgo.go.types.Types.BasicKind) : GoInt)]),
	Go.asInterface(stdgo.go.types.Types.typ[((8 : stdgo.go.types.Types.BasicKind) : GoInt)]),
	Go.asInterface(stdgo.go.types.Types.typ[((9 : stdgo.go.types.Types.BasicKind) : GoInt)]),
	Go.asInterface(stdgo.go.types.Types.typ[((10 : stdgo.go.types.Types.BasicKind) : GoInt)]),
	Go.asInterface(stdgo.go.types.Types.typ[((11 : stdgo.go.types.Types.BasicKind) : GoInt)]),
	Go.asInterface(stdgo.go.types.Types.typ[((12 : stdgo.go.types.Types.BasicKind) : GoInt)]),
	Go.asInterface(stdgo.go.types.Types.typ[((13 : stdgo.go.types.Types.BasicKind) : GoInt)]),
	Go.asInterface(stdgo.go.types.Types.typ[((14 : stdgo.go.types.Types.BasicKind) : GoInt)]),
	Go.asInterface(stdgo.go.types.Types.typ[((15 : stdgo.go.types.Types.BasicKind) : GoInt)]),
	Go.asInterface(stdgo.go.types.Types.typ[((16 : stdgo.go.types.Types.BasicKind) : GoInt)]),
	Go.asInterface(stdgo.go.types.Types.typ[((17 : stdgo.go.types.Types.BasicKind) : GoInt)]),
	stdgo.go.types.Types.universe.lookup(("byte" : GoString)).type(), stdgo.go.types.Types.universe.lookup(("rune" : GoString)).type(),
	stdgo.go.types.Types.universe.lookup(("error" : GoString)).type(),
	Go.asInterface(stdgo.go.types.Types.typ[((19 : stdgo.go.types.Types.BasicKind) : GoInt)]),
	Go.asInterface(stdgo.go.types.Types.typ[((20 : stdgo.go.types.Types.BasicKind) : GoInt)]),
	Go.asInterface(stdgo.go.types.Types.typ[((21 : stdgo.go.types.Types.BasicKind) : GoInt)]),
	Go.asInterface(stdgo.go.types.Types.typ[((22 : stdgo.go.types.Types.BasicKind) : GoInt)]),
	Go.asInterface(stdgo.go.types.Types.typ[((23 : stdgo.go.types.Types.BasicKind) : GoInt)]),
	Go.asInterface(stdgo.go.types.Types.typ[((24 : stdgo.go.types.Types.BasicKind) : GoInt)]),
	Go.asInterface(stdgo.go.types.Types.typ[((25 : stdgo.go.types.Types.BasicKind) : GoInt)]),
	Go.asInterface(stdgo.go.types.Types.typ[((18 : stdgo.go.types.Types.BasicKind) : GoInt)]),
	Go.asInterface(stdgo.go.types.Types.typ[((0 : stdgo.go.types.Types.BasicKind) : GoInt)]), Go.asInterface((new T_anyType() : T_anyType)),
	stdgo.go.types.Types.universe.lookup(("comparable" : GoString)).type(),
	stdgo.go.types.Types.universe.lookup(("any" : GoString)).type()) : Slice<stdgo.go.types.Types.Type>);

/**
	// debugging/development support
**/
private final _debug:InvalidType = false;

/**
	// Keep this in sync with constants in iexport.go.
**/
private final _iexportVersionGo1_11:GoUInt64 = ("0" : GoUInt64);

/**
	// Keep this in sync with constants in iexport.go.
**/
private final _iexportVersionPosCol:GoUInt64 = ("1" : GoUInt64);

/**
	// Keep this in sync with constants in iexport.go.
**/
private final _iexportVersionGenerics:GoUInt64 = ("2" : GoUInt64);

/**
	// Keep this in sync with constants in iexport.go.
**/
private final _iexportVersionGo1_18:GoUInt64 = ("2" : GoUInt64);

/**
	// Keep this in sync with constants in iexport.go.
**/
private final _iexportVersionCurrent:GoUInt64 = ("2" : GoUInt64);

private final _predeclReserved:GoUInt64 = ("32" : GoUInt64);

/**
	// Types
**/
private final _definedType:T_itag = (("11" : GoUInt64) : T_itag);

private final _pointerType:T_itag = (("11" : GoUInt64) : T_itag);
private final _sliceType:T_itag = (("11" : GoUInt64) : T_itag);
private final _arrayType:T_itag = (("11" : GoUInt64) : T_itag);
private final _chanType:T_itag = (("11" : GoUInt64) : T_itag);
private final _mapType:T_itag = (("11" : GoUInt64) : T_itag);
private final _signatureType:T_itag = (("11" : GoUInt64) : T_itag);
private final _structType:T_itag = (("11" : GoUInt64) : T_itag);
private final _interfaceType:T_itag = (("11" : GoUInt64) : T_itag);
private final _typeParamType:T_itag = (("11" : GoUInt64) : T_itag);
private final _instanceType:T_itag = (("11" : GoUInt64) : T_itag);
private final _unionType:T_itag = (("11" : GoUInt64) : T_itag);
private final _blankMarker:GoString = ("$$" : GoString);

/**
	// deltaNewFile is a magic line delta offset indicating a new file.
	// We use -64 because it is rare; see issue 20080 and CL 41619.
	// -64 is the smallest int that fits in a single byte as a varint.
**/
private final _deltaNewFile:GoUInt64 = ("0" : GoUInt64);

private final _maxlines:GoUInt64 = ("65536" : GoUInt64);
private var _fakeLines:Slice<GoInt> = (null : Slice<GoInt>);
private var _fakeLinesOnce:stdgo.sync.Sync.Once = ({} : stdgo.sync.Sync.Once);

@:structInit @:using(go.internal.gcimporter.Gcimporter.T_intReader_static_extension) private class T_intReader {
	@:embedded
	public var reader:Ref<stdgo.bufio.Bufio.Reader> = (null : Ref<stdgo.bufio.Bufio.Reader>);
	public var _path:GoString = "";

	public function new(?reader:Ref<stdgo.bufio.Bufio.Reader>, ?_path:GoString) {
		if (reader != null)
			this.reader = reader;
		if (_path != null)
			this._path = _path;
	}

	public function __underlying__()
		return Go.toInterface(this);

	@:embedded
	public function buffered():GoInt
		return reader.buffered();

	@:embedded
	public function discard(__0:GoInt):{var _0:GoInt; var _1:Error;}
		return reader.discard(__0);

	@:embedded
	public function peek(__0:GoInt):{var _0:Slice<GoUInt8>; var _1:Error;}
		return reader.peek(__0);

	@:embedded
	public function read(_p:Slice<GoUInt8>):{var _0:GoInt; var _1:Error;}
		return reader.read(_p);

	@:embedded
	public function readByte():{var _0:GoUInt8; var _1:Error;}
		return reader.readByte();

	@:embedded
	public function readBytes(_delim:GoUInt8):{var _0:Slice<GoUInt8>; var _1:Error;}
		return reader.readBytes(_delim);

	@:embedded
	public function readLine():{var _0:Slice<GoUInt8>; var _1:Bool; var _2:Error;}
		return reader.readLine();

	@:embedded
	public function readRune():{var _0:GoInt32; var _1:GoInt; var _2:Error;}
		return reader.readRune();

	@:embedded
	public function readSlice(_delim:GoUInt8):{var _0:Slice<GoUInt8>; var _1:Error;}
		return reader.readSlice(_delim);

	@:embedded
	public function readString(_delim:GoUInt8):{var _0:GoString; var _1:Error;}
		return reader.readString(_delim);

	@:embedded
	public function reset(_r:stdgo.io.Io.Reader)
		reader.reset(_r);

	@:embedded
	public function size():GoInt
		return reader.size();

	@:embedded
	public function unreadByte():Error
		return reader.unreadByte();

	@:embedded
	public function unreadRune():Error
		return reader.unreadRune();

	@:embedded
	public function writeTo(_w:stdgo.io.Io.Writer):{var _0:GoInt64; var _1:Error;}
		return reader.writeTo(_w);

	@:embedded
	public function _collectFragments(_delim:GoUInt8):{
		var _0:Slice<Slice<GoUInt8>>;
		var _1:Slice<GoUInt8>;
		var _2:GoInt;
		var _3:Error;
	}
		return reader._collectFragments(_delim);

	@:embedded
	public function _fill()
		reader._fill();

	@:embedded
	public function _readErr():Error
		return reader._readErr();

	@:embedded
	public function _reset(_buf:Slice<GoUInt8>, _r:stdgo.io.Io.Reader)
		reader._reset(_buf, _r);

	@:embedded
	public function _writeBuf(_w:stdgo.io.Io.Writer):{var _0:GoInt64; var _1:Error;}
		return reader._writeBuf(_w);

	public function __copy__() {
		return new T_intReader(reader, _path);
	}
}

@:structInit private class T_ident {
	public var _pkg:Ref<stdgo.go.types.Types.Package> = (null : Ref<stdgo.go.types.Types.Package>);
	public var _name:GoString = "";

	public function new(?_pkg:Ref<stdgo.go.types.Types.Package>, ?_name:GoString) {
		if (_pkg != null)
			this._pkg = _pkg;
		if (_name != null)
			this._name = _name;
	}

	public function __underlying__()
		return Go.toInterface(this);

	public function __copy__() {
		return new T_ident(_pkg, _name);
	}
}

@:structInit private class T_setConstraintArgs {
	public var _t:Ref<stdgo.go.types.Types.TypeParam> = (null : Ref<stdgo.go.types.Types.TypeParam>);
	public var _constraint:stdgo.go.types.Types.Type = (null : stdgo.go.types.Types.Type);

	public function new(?_t:Ref<stdgo.go.types.Types.TypeParam>, ?_constraint:stdgo.go.types.Types.Type) {
		if (_t != null)
			this._t = _t;
		if (_constraint != null)
			this._constraint = _constraint;
	}

	public function __underlying__()
		return Go.toInterface(this);

	public function __copy__() {
		return new T_setConstraintArgs(_t, _constraint);
	}
}

@:structInit @:using(go.internal.gcimporter.Gcimporter.T_iimporter_static_extension) private class T_iimporter {
	public var _exportVersion:GoInt64 = 0;
	public var _ipath:GoString = "";
	public var _version:GoInt = 0;
	public var _stringData:Slice<GoUInt8> = (null : Slice<GoUInt8>);
	public var _stringCache:GoMap<GoUInt64, GoString> = (null : GoMap<GoUInt64, GoString>);
	public var _pkgCache:GoMap<GoUInt64, Ref<stdgo.go.types.Types.Package>> = (null : GoMap<GoUInt64, Ref<stdgo.go.types.Types.Package>>);
	public var _declData:Slice<GoUInt8> = (null : Slice<GoUInt8>);
	public var _pkgIndex:GoMap<Ref<stdgo.go.types.Types.Package>, GoMap<GoString, GoUInt64>> = (null : GoMap<Ref<stdgo.go.types.Types.Package>, GoMap<GoString,
		GoUInt64>>);
	public var _typCache:GoMap<GoUInt64, stdgo.go.types.Types.Type> = (null : GoMap<GoUInt64, stdgo.go.types.Types.Type>);
	public var _tparamIndex:GoMap<T_ident, Ref<stdgo.go.types.Types.TypeParam>> = (null : GoMap<T_ident, Ref<stdgo.go.types.Types.TypeParam>>);
	public var _fake:T_fakeFileSet = ({} : T_fakeFileSet);
	public var _interfaceList:Slice<Ref<stdgo.go.types.Types.Interface>> = (null : Slice<Ref<stdgo.go.types.Types.Interface>>);

	/**
		// Arguments for calls to SetConstraint that are deferred due to recursive types
	**/
	public var _later:Slice<T_setConstraintArgs> = (null : Slice<T_setConstraintArgs>);

	public function new(?_exportVersion:GoInt64, ?_ipath:GoString, ?_version:GoInt, ?_stringData:Slice<GoUInt8>, ?_stringCache:GoMap<GoUInt64, GoString>,
			?_pkgCache:GoMap<GoUInt64, Ref<stdgo.go.types.Types.Package>>, ?_declData:Slice<GoUInt8>,
			?_pkgIndex:GoMap<Ref<stdgo.go.types.Types.Package>, GoMap<GoString, GoUInt64>>, ?_typCache:GoMap<GoUInt64, stdgo.go.types.Types.Type>,
			?_tparamIndex:GoMap<T_ident, Ref<stdgo.go.types.Types.TypeParam>>, ?_fake:T_fakeFileSet,
			?_interfaceList:Slice<Ref<stdgo.go.types.Types.Interface>>, ?_later:Slice<T_setConstraintArgs>) {
		if (_exportVersion != null)
			this._exportVersion = _exportVersion;
		if (_ipath != null)
			this._ipath = _ipath;
		if (_version != null)
			this._version = _version;
		if (_stringData != null)
			this._stringData = _stringData;
		if (_stringCache != null)
			this._stringCache = _stringCache;
		if (_pkgCache != null)
			this._pkgCache = _pkgCache;
		if (_declData != null)
			this._declData = _declData;
		if (_pkgIndex != null)
			this._pkgIndex = _pkgIndex;
		if (_typCache != null)
			this._typCache = _typCache;
		if (_tparamIndex != null)
			this._tparamIndex = _tparamIndex;
		if (_fake != null)
			this._fake = _fake;
		if (_interfaceList != null)
			this._interfaceList = _interfaceList;
		if (_later != null)
			this._later = _later;
	}

	public function __underlying__()
		return Go.toInterface(this);

	public function __copy__() {
		return new T_iimporter(_exportVersion, _ipath, _version, _stringData, _stringCache, _pkgCache, _declData, _pkgIndex, _typCache, _tparamIndex, _fake,
			_interfaceList, _later);
	}
}

@:structInit @:using(go.internal.gcimporter.Gcimporter.T_importReader_static_extension) private class T_importReader {
	public var _p:Ref<T_iimporter> = (null : Ref<T_iimporter>);
	public var _declReader:stdgo.bytes.Bytes.Reader = ({} : stdgo.bytes.Bytes.Reader);
	public var _currPkg:Ref<stdgo.go.types.Types.Package> = (null : Ref<stdgo.go.types.Types.Package>);
	public var _prevFile:GoString = "";
	public var _prevLine:GoInt64 = 0;
	public var _prevColumn:GoInt64 = 0;

	public function new(?_p:Ref<T_iimporter>, ?_declReader:stdgo.bytes.Bytes.Reader, ?_currPkg:Ref<stdgo.go.types.Types.Package>, ?_prevFile:GoString,
			?_prevLine:GoInt64, ?_prevColumn:GoInt64) {
		if (_p != null)
			this._p = _p;
		if (_declReader != null)
			this._declReader = _declReader;
		if (_currPkg != null)
			this._currPkg = _currPkg;
		if (_prevFile != null)
			this._prevFile = _prevFile;
		if (_prevLine != null)
			this._prevLine = _prevLine;
		if (_prevColumn != null)
			this._prevColumn = _prevColumn;
	}

	public function __underlying__()
		return Go.toInterface(this);

	public function __copy__() {
		return new T_importReader(_p, _declReader, _currPkg, _prevFile, _prevLine, _prevColumn);
	}
}

/**
	// Synthesize a token.Pos
**/
@:structInit @:using(go.internal.gcimporter.Gcimporter.T_fakeFileSet_static_extension) private class T_fakeFileSet {
	public var _fset:Ref<stdgo.go.token.Token.FileSet> = (null : Ref<stdgo.go.token.Token.FileSet>);
	public var _files:GoMap<GoString, Ref<T_fileInfo>> = (null : GoMap<GoString, Ref<T_fileInfo>>);

	public function new(?_fset:Ref<stdgo.go.token.Token.FileSet>, ?_files:GoMap<GoString, Ref<T_fileInfo>>) {
		if (_fset != null)
			this._fset = _fset;
		if (_files != null)
			this._files = _files;
	}

	public function __underlying__()
		return Go.toInterface(this);

	public function __copy__() {
		return new T_fakeFileSet(_fset, _files);
	}
}

@:structInit private class T_fileInfo {
	public var _file:Ref<stdgo.go.token.Token.File> = (null : Ref<stdgo.go.token.Token.File>);
	public var _lastline:GoInt = 0;

	public function new(?_file:Ref<stdgo.go.token.Token.File>, ?_lastline:GoInt) {
		if (_file != null)
			this._file = _file;
		if (_lastline != null)
			this._lastline = _lastline;
	}

	public function __underlying__()
		return Go.toInterface(this);

	public function __copy__() {
		return new T_fileInfo(_file, _lastline);
	}
}

@:structInit @:using(go.internal.gcimporter.Gcimporter.T_anyType_static_extension) private class T_anyType {
	public function new() {}

	public function __underlying__()
		return Go.toInterface(this);

	public function __copy__() {
		return new T_anyType();
	}
}

/**
	// See cmd/compile/internal/noder.derivedInfo.
**/
@:structInit private class T_derivedInfo {
	public var _idx:internal.pkgbits.Pkgbits.Index = ((0 : GoInt) : internal.pkgbits.Pkgbits.Index);
	public var _needed:Bool = false;

	public function new(?_idx:internal.pkgbits.Pkgbits.Index, ?_needed:Bool) {
		if (_idx != null)
			this._idx = _idx;
		if (_needed != null)
			this._needed = _needed;
	}

	public function __underlying__()
		return Go.toInterface(this);

	public function __copy__() {
		return new T_derivedInfo(_idx, _needed);
	}
}

/**
	// See cmd/compile/internal/noder.typeInfo.
**/
@:structInit private class T_typeInfo {
	public var _idx:internal.pkgbits.Pkgbits.Index = ((0 : GoInt) : internal.pkgbits.Pkgbits.Index);
	public var _derived:Bool = false;

	public function new(?_idx:internal.pkgbits.Pkgbits.Index, ?_derived:Bool) {
		if (_idx != null)
			this._idx = _idx;
		if (_derived != null)
			this._derived = _derived;
	}

	public function __underlying__()
		return Go.toInterface(this);

	public function __copy__() {
		return new T_typeInfo(_idx, _derived);
	}
}

/**
	// A pkgReader holds the shared state for reading a unified IR package
	// description.
**/
@:structInit @:using(go.internal.gcimporter.Gcimporter.T_pkgReader_static_extension) private class T_pkgReader {
	@:embedded
	public var pkgDecoder:internal.pkgbits.Pkgbits.PkgDecoder = ({} : internal.pkgbits.Pkgbits.PkgDecoder);
	public var _fake:T_fakeFileSet = ({} : T_fakeFileSet);
	public var _ctxt:Ref<stdgo.go.types.Types.Context> = (null : Ref<stdgo.go.types.Types.Context>);
	public var _imports:GoMap<GoString, Ref<stdgo.go.types.Types.Package>> = (null : GoMap<GoString, Ref<stdgo.go.types.Types.Package>>);

	/**
		// lazily initialized arrays corresponding to the unified IR
		// PosBase, Pkg, and Type sections, respectively.
	**/
	public var _posBases:Slice<GoString> = (null : Slice<GoString>);

	public var _pkgs:Slice<Ref<stdgo.go.types.Types.Package>> = (null : Slice<Ref<stdgo.go.types.Types.Package>>);
	public var _typs:Slice<stdgo.go.types.Types.Type> = (null : Slice<stdgo.go.types.Types.Type>);

	/**
		// laterFns holds functions that need to be invoked at the end of
		// import reading.
	**/
	public var _laterFns:Slice<() -> Void> = (null : Slice<() -> Void>);

	public function new(?pkgDecoder:internal.pkgbits.Pkgbits.PkgDecoder, ?_fake:T_fakeFileSet, ?_ctxt:Ref<stdgo.go.types.Types.Context>,
			?_imports:GoMap<GoString, Ref<stdgo.go.types.Types.Package>>, ?_posBases:Slice<GoString>, ?_pkgs:Slice<Ref<stdgo.go.types.Types.Package>>,
			?_typs:Slice<stdgo.go.types.Types.Type>, ?_laterFns:Slice<() -> Void>) {
		if (pkgDecoder != null)
			this.pkgDecoder = pkgDecoder;
		if (_fake != null)
			this._fake = _fake;
		if (_ctxt != null)
			this._ctxt = _ctxt;
		if (_imports != null)
			this._imports = _imports;
		if (_posBases != null)
			this._posBases = _posBases;
		if (_pkgs != null)
			this._pkgs = _pkgs;
		if (_typs != null)
			this._typs = _typs;
		if (_laterFns != null)
			this._laterFns = _laterFns;
	}

	public function __underlying__()
		return Go.toInterface(this);

	@:embedded
	public function absIdx(_k:internal.pkgbits.Pkgbits.RelocKind, _idx:internal.pkgbits.Pkgbits.Index):GoInt
		return pkgDecoder.absIdx(_k, _idx);

	@:embedded
	public function dataIdx(_k:internal.pkgbits.Pkgbits.RelocKind, _idx:internal.pkgbits.Pkgbits.Index):GoString
		return pkgDecoder.dataIdx(_k, _idx);

	@:embedded
	public function fingerprint():GoArray<GoUInt8>
		return pkgDecoder.fingerprint();

	@:embedded
	public function newDecoder(_k:internal.pkgbits.Pkgbits.RelocKind, _idx:internal.pkgbits.Pkgbits.Index,
			_marker:internal.pkgbits.Pkgbits.SyncMarker):internal.pkgbits.Pkgbits.Decoder
		return pkgDecoder.newDecoder(_k, _idx, _marker);

	@:embedded
	public function newDecoderRaw(_k:internal.pkgbits.Pkgbits.RelocKind, _idx:internal.pkgbits.Pkgbits.Index):internal.pkgbits.Pkgbits.Decoder
		return pkgDecoder.newDecoderRaw(_k, _idx);

	@:embedded
	public function numElems(_k:internal.pkgbits.Pkgbits.RelocKind):GoInt
		return pkgDecoder.numElems(_k);

	@:embedded
	public function peekObj(__0:internal.pkgbits.Pkgbits.Index):{var _0:GoString; var _1:GoString; var _2:internal.pkgbits.Pkgbits.CodeObj;}
		return pkgDecoder.peekObj(__0);

	@:embedded
	public function peekPkgPath(__0:internal.pkgbits.Pkgbits.Index):GoString
		return pkgDecoder.peekPkgPath(__0);

	@:embedded
	public function pkgPath():GoString
		return pkgDecoder.pkgPath();

	@:embedded
	public function stringIdx(__0:internal.pkgbits.Pkgbits.Index):GoString
		return pkgDecoder.stringIdx(__0);

	@:embedded
	public function totalElems():GoInt
		return pkgDecoder.totalElems();

	public function __copy__() {
		return new T_pkgReader(pkgDecoder, _fake, _ctxt, _imports, _posBases, _pkgs, _typs, _laterFns);
	}
}

/**
	// A reader holds the state for reading a single unified IR element
	// within a package.
**/
@:structInit @:using(go.internal.gcimporter.Gcimporter.T_reader_static_extension) private class T_reader {
	@:embedded
	public var decoder:internal.pkgbits.Pkgbits.Decoder = ({} : internal.pkgbits.Pkgbits.Decoder);
	public var _p:Ref<T_pkgReader> = (null : Ref<T_pkgReader>);
	public var _dict:Ref<T_readerDict> = (null : Ref<T_readerDict>);

	public function new(?decoder:internal.pkgbits.Pkgbits.Decoder, ?_p:Ref<T_pkgReader>, ?_dict:Ref<T_readerDict>) {
		if (decoder != null)
			this.decoder = decoder;
		if (_p != null)
			this._p = _p;
		if (_dict != null)
			this._dict = _dict;
	}

	public function __underlying__()
		return Go.toInterface(this);

	@:embedded
	public function bool_():Bool
		return decoder.bool_();

	@:embedded
	public function code(_mark:internal.pkgbits.Pkgbits.SyncMarker):GoInt
		return decoder.code(_mark);

	@:embedded
	public function int_():GoInt
		return decoder.int_();

	@:embedded
	public function int64():GoInt64
		return decoder.int64();

	@:embedded
	public function len():GoInt
		return decoder.len();

	@:embedded
	public function reloc(_k:internal.pkgbits.Pkgbits.RelocKind):internal.pkgbits.Pkgbits.Index
		return decoder.reloc(_k);

	@:embedded
	public function string():GoString
		return decoder.string();

	@:embedded
	public function strings():Slice<GoString>
		return decoder.strings();

	@:embedded
	public function sync(_mark:internal.pkgbits.Pkgbits.SyncMarker)
		decoder.sync(_mark);

	@:embedded
	public function uint():GoUInt
		return decoder.uint();

	@:embedded
	public function uint64():GoUInt64
		return decoder.uint64();

	@:embedded
	public function value():stdgo.go.constant.Constant.Value
		return decoder.value();

	@:embedded
	public function _bigFloat():Ref<stdgo.math.big.Big.Float_>
		return decoder._bigFloat();

	@:embedded
	public function _bigInt():Ref<stdgo.math.big.Big.Int_>
		return decoder._bigInt();

	@:embedded
	public function _checkErr(__0:Error)
		decoder._checkErr(__0);

	@:embedded
	public function _rawReloc(_k:internal.pkgbits.Pkgbits.RelocKind, _idx:GoInt):internal.pkgbits.Pkgbits.Index
		return decoder._rawReloc(_k, _idx);

	@:embedded
	public function _rawUvarint():GoUInt64
		return decoder._rawUvarint();

	@:embedded
	public function _rawVarint():GoInt64
		return decoder._rawVarint();

	@:embedded
	public function _scalar():stdgo.go.constant.Constant.Value
		return decoder._scalar();

	public function __copy__() {
		return new T_reader(decoder, _p, _dict);
	}
}

/**
	// A readerDict holds the state for type parameters that parameterize
	// the current unified IR element.
**/
@:structInit private class T_readerDict {
	/**
		// bounds is a slice of typeInfos corresponding to the underlying
		// bounds of the element's type parameters.
	**/
	public var _bounds:Slice<T_typeInfo> = (null : Slice<T_typeInfo>);

	/**
		// tparams is a slice of the constructed TypeParams for the element.
	**/
	public var _tparams:Slice<Ref<stdgo.go.types.Types.TypeParam>> = (null : Slice<Ref<stdgo.go.types.Types.TypeParam>>);

	/**
		// devived is a slice of types derived from tparams, which may be
		// instantiated while reading the current element.
	**/
	public var _derived:Slice<T_derivedInfo> = (null : Slice<T_derivedInfo>);

	public var _derivedTypes:Slice<stdgo.go.types.Types.Type> = (null : Slice<stdgo.go.types.Types.Type>);

	public function new(?_bounds:Slice<T_typeInfo>, ?_tparams:Slice<Ref<stdgo.go.types.Types.TypeParam>>, ?_derived:Slice<T_derivedInfo>,
			?_derivedTypes:Slice<stdgo.go.types.Types.Type>) {
		if (_bounds != null)
			this._bounds = _bounds;
		if (_tparams != null)
			this._tparams = _tparams;
		if (_derived != null)
			this._derived = _derived;
		if (_derivedTypes != null)
			this._derivedTypes = _derivedTypes;
	}

	public function __underlying__()
		return Go.toInterface(this);

	public function __copy__() {
		return new T_readerDict(_bounds, _tparams, _derived, _derivedTypes);
	}
}

@:named @:using(go.internal.gcimporter.Gcimporter.T_byPath_static_extension) private typedef T_byPath = Slice<Ref<stdgo.go.types.Types.Package>>;
@:named private typedef T_itag = GoUInt64;

private function _readGopackHeader(_r:Ref<stdgo.bufio.Bufio.Reader>):{var _0:GoString; var _1:GoInt; var _2:Error;} {
	var _name:GoString = ("" : GoString),
		_size:GoInt = (0 : GoInt),
		_err:Error = (null : Error);
	var _hdr = new Slice<GoUInt8>((60 : GoInt).toBasic(), 0, ...[for (i in 0...(60 : GoInt).toBasic()) (0 : GoUInt8)]);
	{
		var __tmp__ = stdgo.io.Io.readFull(Go.asInterface(_r), _hdr);
		_err = __tmp__._1;
	};
	if (_err != null) {
		return {_0: _name, _1: _size, _2: _err};
	};
	if (false) {
		stdgo.fmt.Fmt.printf(("header: %s" : GoString), Go.toInterface(_hdr));
	};
	var _s:GoString = stdgo.strings.Strings.trimSpace((((_hdr.__slice__((48 : GoInt)) : Slice<GoUInt8>).__slice__(0,
		(10 : GoInt)) : Slice<GoUInt8>) : GoString));
	{
		var __tmp__ = stdgo.strconv.Strconv.atoi(_s);
		_size = __tmp__._0;
		_err = __tmp__._1;
	};
	if (((_err != null) || (_hdr[((_hdr.length) - (2 : GoInt) : GoInt)] != (96 : GoUInt8)))
		|| (_hdr[((_hdr.length) - (1 : GoInt) : GoInt)] != (10 : GoUInt8))) {
		_err = stdgo.fmt.Fmt.errorf(("invalid archive header" : GoString));
		return {_0: _name, _1: _size, _2: _err};
	};
	_name = stdgo.strings.Strings.trimSpace(((_hdr.__slice__(0, (16 : GoInt)) : Slice<GoUInt8>) : GoString));
	return {_0: _name, _1: _size, _2: _err};
}

/**
	// FindExportData positions the reader r at the beginning of the
	// export data section of an underlying GC-created object/archive
	// file by reading from it. The reader must be positioned at the
	// start of the file before calling this function. The hdr result
	// is the string before the export data, either "$$" or "$$B".
**/
function findExportData(_r:Ref<stdgo.bufio.Bufio.Reader>):{var _0:GoString; var _1:GoInt; var _2:Error;} {
	var _hdr:GoString = ("" : GoString),
		_size:GoInt = (0 : GoInt),
		_err:Error = (null : Error);
	var __tmp__ = _r.readSlice((10 : GoUInt8)),
		_line:Slice<GoUInt8> = __tmp__._0,
		_err:Error = __tmp__._1;
	if (_err != null) {
		_err = stdgo.fmt.Fmt.errorf(("can\'t find export data (%v)" : GoString), Go.toInterface(_err));
		return {_0: _hdr, _1: _size, _2: _err};
	};
	if ((_line : GoString) == (("!<arch>\n" : GoString))) {
		var _name:GoString = ("" : GoString);
		{
			{
				var __tmp__ = _readGopackHeader(_r);
				_name = __tmp__._0;
				_size = __tmp__._1;
				_err = __tmp__._2;
			};
			if (_err != null) {
				return {_0: _hdr, _1: _size, _2: _err};
			};
		};
		if (_name != (("__.PKGDEF" : GoString))) {
			_err = stdgo.fmt.Fmt.errorf(("go archive is missing __.PKGDEF" : GoString));
			return {_0: _hdr, _1: _size, _2: _err};
		};
		{
			{
				var __tmp__ = _r.readSlice((10 : GoUInt8));
				_line = __tmp__._0;
				_err = __tmp__._1;
			};
			if (_err != null) {
				_err = stdgo.fmt.Fmt.errorf(("can\'t find export data (%v)" : GoString), Go.toInterface(_err));
				return {_0: _hdr, _1: _size, _2: _err};
			};
		};
	};
	if (!stdgo.strings.Strings.hasPrefix((_line : GoString), ("go object " : GoString))) {
		_err = stdgo.fmt.Fmt.errorf(("not a Go object file" : GoString));
		return {_0: _hdr, _1: _size, _2: _err};
	};
	_size = _size - ((_line.length));
	while (_line[(0 : GoInt)] != ((36 : GoUInt8))) {
		{
			{
				var __tmp__ = _r.readSlice((10 : GoUInt8));
				_line = __tmp__._0;
				_err = __tmp__._1;
			};
			if (_err != null) {
				_err = stdgo.fmt.Fmt.errorf(("can\'t find export data (%v)" : GoString), Go.toInterface(_err));
				return {_0: _hdr, _1: _size, _2: _err};
			};
		};
		_size = _size - ((_line.length));
	};
	_hdr = (_line : GoString);
	return {_0: _hdr, _1: _size, _2: _err};
}

/**
	// FindPkg returns the filename and unique package id for an import
	// path based on package information provided by build.Import (using
	// the build.Default build.Context). A relative srcDir is interpreted
	// relative to the current working directory.
	// If no file was found, an empty filename is returned.
**/
function findPkg(_path:GoString, _srcDir:GoString):{var _0:GoString; var _1:GoString;} {
	var _filename:GoString = ("" : GoString), _id:GoString = ("" : GoString);
	if (_path == (Go.str())) {
		return {_0: _filename, _1: _id};
	};
	var _noext:GoString = ("" : GoString);
	if (stdgo.go.build.Build.isLocalImport(_path)) {
		_noext = stdgo.path.filepath.Filepath.join(_srcDir, _path);
		_id = _noext;
	} else if (stdgo.path.filepath.Filepath.isAbs(_path)) {
		_noext = _path;
		_id = _path;
	};
	if (false) {
		if (_path != (_id)) {
			stdgo.fmt.Fmt.printf(("%s -> %s\n" : GoString), Go.toInterface(_path), Go.toInterface(_id));
		};
	};
	for (_1 => _ext in _pkgExts) {
		_filename = _noext + _ext;
		{
			var __tmp__ = stdgo.os.Os.stat(_filename),
				_f:stdgo.io.fs.Fs.FileInfo = __tmp__._0,
				_err:Error = __tmp__._1;
			if ((_err == null) && !_f.isDir()) {
				return {_0: _filename, _1: _id};
			};
		};
	};
	_filename = Go.str();
	return {_0: _filename, _1: _id};
}

/**
	// Import imports a gc-generated package given its import path and srcDir, adds
	// the corresponding package object to the packages map, and returns the object.
	// The packages map must contain all packages already imported.
**/
function import_(_fset:Ref<stdgo.go.token.Token.FileSet>, _packages:GoMap<GoString, Ref<stdgo.go.types.Types.Package>>, _path:GoString, _srcDir:GoString,
		_lookup:(_path:GoString) -> {
		var _0:stdgo.io.Io.ReadCloser;
		var _1:Error;
	}):{var _0:Ref<stdgo.go.types.Types.Package>; var _1:Error;} {
	var __deferstack__:Array<Void->Void> = [];
	var _pkg:Ref<stdgo.go.types.Types.Package> = (null : Ref<stdgo.go.types.Types.Package>),
		_err:Error = (null : Error);
	var _rc:stdgo.io.Io.ReadCloser = (null : stdgo.io.Io.ReadCloser);
	var _id:GoString = ("" : GoString);
	try {
		if (_lookup != null) {
			if (_path == (("unsafe" : GoString))) {
				return {_0: stdgo.go.types.Types.unsafe, _1: (null : Error)};
			};
			_id = _path;
			{
				_pkg = _packages[_id];
				if ((_pkg != null) && _pkg.complete()) {
					return {_0: _pkg, _1: _err};
				};
			};
			var __tmp__ = _lookup(_path),
				_f:stdgo.io.Io.ReadCloser = __tmp__._0,
				_err:Error = __tmp__._1;
			if (_err != null) {
				return {_0: null, _1: _err};
			};
			_rc = _f;
		} else {
			var _filename:GoString = ("" : GoString);
			{
				var __tmp__ = findPkg(_path, _srcDir);
				_filename = __tmp__._0;
				_id = __tmp__._1;
			};
			if (_filename == (Go.str())) {
				if (_path == (("unsafe" : GoString))) {
					return {_0: stdgo.go.types.Types.unsafe, _1: (null : Error)};
				};
				return {_0: null, _1: stdgo.fmt.Fmt.errorf(("can\'t find import: %q" : GoString), Go.toInterface(_id))};
			};
			{
				_pkg = _packages[_id];
				if ((_pkg != null) && _pkg.complete()) {
					return {_0: _pkg, _1: _err};
				};
			};
			var __tmp__ = stdgo.os.Os.open(_filename),
				_f:Ref<stdgo.os.Os.File> = __tmp__._0,
				_err:Error = __tmp__._1;
			if (_err != null) {
				return {_0: null, _1: _err};
			};
			__deferstack__.unshift(() -> {
				var a = function():Void {
					if (_err != null) {
						_err = stdgo.fmt.Fmt.errorf(("%s: %v" : GoString), Go.toInterface(_filename), Go.toInterface(_err));
					};
				};
				a();
			});
			_rc = Go.asInterface(_f);
		};
		__deferstack__.unshift(() -> _rc.close());
		var _buf = stdgo.bufio.Bufio.newReader(_rc);
		var __tmp__ = findExportData(_buf),
			_hdr:GoString = __tmp__._0,
			_size:GoInt = __tmp__._1,
			_err:Error = __tmp__._2;
		if (_err != null) {
			{
				for (defer in __deferstack__) {
					defer();
				};
				return {_0: _pkg, _1: _err};
			};
		};
		if (_hdr == (("$$$$\n" : GoString))) {
			_err = stdgo.fmt.Fmt.errorf(("import %q: old textual export format no longer supported (recompile library)" : GoString), Go.toInterface(_path));
		} else if (_hdr == (("$$$$B\n" : GoString))) {
			var _exportFormat:GoByte = (0 : GoUInt8);
			{
				{
					var __tmp__ = _buf.readByte();
					_exportFormat = __tmp__._0;
					_err = __tmp__._1;
				};
				if (_err != null) {
					{
						for (defer in __deferstack__) {
							defer();
						};
						return {_0: _pkg, _1: _err};
					};
				};
			};
			if (_exportFormat == ((117 : GoUInt8))) {
				var _data:Slice<GoByte> = (null : Slice<GoUInt8>);
				var _r:stdgo.io.Io.Reader = Go.asInterface(_buf);
				if (_size >= (0 : GoInt)) {
					_r = stdgo.io.Io.limitReader(_r, (_size : GoInt64));
				};
				{
					{
						var __tmp__ = stdgo.io.Io.readAll(_r);
						_data = __tmp__._0;
						_err = __tmp__._1;
					};
					if (_err != null) {
						{
							for (defer in __deferstack__) {
								defer();
							};
							return {_0: _pkg, _1: _err};
						};
					};
				};
				var _s:GoString = (_data : GoString);
				_s = (_s.__slice__(0, stdgo.strings.Strings.lastIndex(_s, ("\n$$$$\n" : GoString))) : GoString);
				var _input:internal.pkgbits.Pkgbits.PkgDecoder = (internal.pkgbits.Pkgbits.newPkgDecoder(_id,
					_s) == null ? null : internal.pkgbits.Pkgbits.newPkgDecoder(_id, _s).__copy__());
				_pkg = _readUnifiedPackage(_fset, null, _packages, (_input == null ? null : _input.__copy__()));
			} else if (_exportFormat == ((105 : GoUInt8))) {
				{
					var __tmp__ = _iImportData(_fset, _packages, _buf, _id);
					_pkg = __tmp__._0;
					_err = __tmp__._1;
				};
			} else {
				_err = stdgo.fmt.Fmt.errorf(("import %q: old binary export format no longer supported (recompile library)" : GoString), Go.toInterface(_path));
			};
		} else {
			_err = stdgo.fmt.Fmt.errorf(("import %q: unknown export data header: %q" : GoString), Go.toInterface(_path), Go.toInterface(_hdr));
		};
		{
			for (defer in __deferstack__) {
				defer();
			};
			return {_0: _pkg, _1: _err};
		};
		for (defer in __deferstack__) {
			defer();
		};
		{
			for (defer in __deferstack__) {
				defer();
			};
			if (Go.recover_exception != null)
				throw Go.recover_exception;
			return {_0: _pkg, _1: _err};
		};
	} catch (__exception__) {
		if (!(__exception__.native is AnyInterfaceData))
			throw __exception__;
		Go.recover_exception = __exception__.native;
		for (defer in __deferstack__) {
			defer();
		};
		if (Go.recover_exception != null)
			throw Go.recover_exception;
		return {_0: _pkg, _1: _err};
	};
	}

/**
	// iImportData imports a package from the serialized package data
	// and returns the number of bytes consumed and a reference to the package.
	// If the export data version is not recognized or the format is otherwise
	// compromised, an error is returned.
**/
private function _iImportData(_fset:Ref<stdgo.go.token.Token.FileSet>, _imports:GoMap<GoString, Ref<stdgo.go.types.Types.Package>>,
		_dataReader:Ref<stdgo.bufio.Bufio.Reader>, _path:GoString):{
	var _0:Ref<stdgo.go.types.Types.Package>;
	var _1:Error;
} {
	var __deferstack__:Array<Void->Void> = [];
	var _pkg:Ref<stdgo.go.types.Types.Package> = (null : Ref<stdgo.go.types.Types.Package>),
		_err:Error = (null : Error);
	{};
	var _version:GoInt64 = (("-1" : GoInt64) : GoInt64);
	try {
		__deferstack__.unshift(() -> {
			var a = function():Void {
				{
					var _e:AnyInterface = ({
						final r = Go.recover_exception;
						Go.recover_exception = null;
						r;
					});
					if (_e != null) {
						if (_version > ("2" : GoInt64)) {
							_err = stdgo.fmt.Fmt.errorf(("cannot import %q (%v), export data is newer version - update tool" : GoString),
								Go.toInterface(_path), _e);
						} else {
							_err = stdgo.fmt.Fmt.errorf(("cannot import %q (%v), possibly version skew - reinstall package" : GoString),
								Go.toInterface(_path), _e);
						};
					};
				};
			};
			a();
		});
		var _r = ((new T_intReader(_dataReader, _path) : T_intReader) : Ref<T_intReader>);
		_version = (_r._uint64() : GoInt64);
		if (_version == (("2" : GoInt64)) || _version == (("1" : GoInt64)) || _version == (("0" : GoInt64))) {} else {
			_errorf(("unknown iexport format version %d" : GoString), Go.toInterface(_version));
		};
		var _sLen:GoInt64 = (_r._uint64() : GoInt64);
		var _dLen:GoInt64 = (_r._uint64() : GoInt64);
		var _data = new Slice<GoUInt8>((_sLen + _dLen : GoInt).toBasic(), 0, ...[for (i in 0...(_sLen + _dLen : GoInt).toBasic()) (0 : GoUInt8)]);
		{
			var __tmp__ = stdgo.io.Io.readFull(Go.asInterface(_r), _data),
				_0:GoInt = __tmp__._0,
				_err:Error = __tmp__._1;
			if (_err != null) {
				_errorf(("cannot read %d bytes of stringData and declData: %s" : GoString), Go.toInterface((_data.length)), Go.toInterface(_err));
			};
		};
		var _stringData = (_data.__slice__(0, _sLen) : Slice<GoUInt8>);
		var _declData = (_data.__slice__(_sLen) : Slice<GoUInt8>);
		var _p:T_iimporter = ({
			_exportVersion: _version,
			_ipath: _path,
			_version: (_version : GoInt),
			_stringData: _stringData,
			_stringCache: (new GoObjectMap<GoUInt64, GoString>(new stdgo.internal.reflect.Reflect._Type(stdgo.internal.reflect.Reflect.GoType.mapType({
				get: () -> stdgo.internal.reflect.Reflect.GoType.basic(uint64_kind)
			},
				{get: () -> stdgo.internal.reflect.Reflect.GoType.basic(string_kind)}))) : GoMap<GoUInt64, GoString>),
			_pkgCache: (new GoObjectMap<GoUInt64,
				Ref<stdgo.go.types.Types.Package>>(new stdgo.internal.reflect.Reflect._Type(stdgo.internal.reflect.Reflect.GoType.mapType({
				get: () -> stdgo.internal.reflect.Reflect.GoType.basic(uint64_kind)
			},
				{get: () -> stdgo.internal.reflect.Reflect.GoType.refType({get: () ->
						stdgo.internal.reflect.Reflect.GoType.named("stdgo.go.types.Types.Package", [], null, false, {get: () -> null})})}))) : GoMap<GoUInt64,
					Ref<stdgo.go.types.Types.Package>>),
			_declData: _declData,
			_pkgIndex: (new GoObjectMap<Ref<stdgo.go.types.Types.Package>, GoMap<GoString,
				GoUInt64>>(new stdgo.internal.reflect.Reflect._Type(stdgo.internal.reflect.Reflect.GoType.mapType({
				get: () -> stdgo.internal.reflect.Reflect.GoType.refType({get: () ->
						stdgo.internal.reflect.Reflect.GoType.named("stdgo.go.types.Types.Package", [], null, false, {get: () -> null})})
			},
				{get: () -> stdgo.internal.reflect.Reflect.GoType.mapType({get: () -> stdgo.internal.reflect.Reflect.GoType.basic(string_kind)},
					{get: () -> stdgo.internal.reflect.Reflect.GoType.basic(uint64_kind)})}))) : GoMap<Ref<stdgo.go.types.Types.Package>, GoMap<GoString,
					GoUInt64>>),
			_typCache: (new GoObjectMap<GoUInt64,
				stdgo.go.types.Types.Type>(new stdgo.internal.reflect.Reflect._Type(stdgo.internal.reflect.Reflect.GoType.mapType({
				get: () -> stdgo.internal.reflect.Reflect.GoType.basic(uint64_kind)
			},
				{get: () -> stdgo.internal.reflect.Reflect.GoType.named("stdgo.go.types.Types.Type", [], null, false,
					{get: () -> null})}))) : GoMap<GoUInt64, stdgo.go.types.Types.Type>),
			_tparamIndex: (new GoObjectMap<T_ident,
				Ref<stdgo.go.types.Types.TypeParam>>(new stdgo.internal.reflect.Reflect._Type(stdgo.internal.reflect.Reflect.GoType.mapType({
				get: () -> stdgo.internal.reflect.Reflect.GoType.named("T_ident", [], null, false, {get: () -> null})
			},
				{get: () -> stdgo.internal.reflect.Reflect.GoType.refType({get: () ->
						stdgo.internal.reflect.Reflect.GoType.named("stdgo.go.types.Types.TypeParam", [], null, false, {get: () ->
							null})})}))) : GoMap<T_ident, Ref<stdgo.go.types.Types.TypeParam>>),
			_fake: ({_fset: _fset, _files: (new GoObjectMap<GoString,
				Ref<T_fileInfo>>(new stdgo.internal.reflect.Reflect._Type(stdgo.internal.reflect.Reflect.GoType.mapType({
				get: () -> stdgo.internal.reflect.Reflect.GoType.basic(string_kind)
			},
				{get: () -> stdgo.internal.reflect.Reflect.GoType.refType({get: () -> stdgo.internal.reflect.Reflect.GoType.named("T_fileInfo", [], null,
					false, {get: () -> null})})}))) : GoMap<GoString, Ref<T_fileInfo>>)} : T_fakeFileSet)
		} : T_iimporter);
		__deferstack__.unshift(() -> _p._fake._setLines());
		for (_i => _pt in _predeclared) {
			_p._typCache[(_i : GoUInt64)] = _pt;
		};
		var _pkgList = new Slice<Ref<stdgo.go.types.Types.Package>>((_r._uint64() : GoInt).toBasic(), 0, ...[
			for (i in 0...(_r._uint64() : GoInt).toBasic()) (null : Ref<stdgo.go.types.Types.Package>)
		]);
		for (_i in 0..._pkgList.length.toBasic()) {
			var _pkgPathOff:GoUInt64 = _r._uint64();
			var _pkgPath:GoString = _p._stringAt(_pkgPathOff);
			var _pkgName:GoString = _p._stringAt(_r._uint64());
			_r._uint64();
			if (_pkgPath == (Go.str())) {
				_pkgPath = _path;
			};
			var _pkg = _imports[_pkgPath];
			if (_pkg == null) {
				_pkg = stdgo.go.types.Types.newPackage(_pkgPath, _pkgName);
				_imports[_pkgPath] = _pkg;
			} else if (_pkg.name() != (_pkgName)) {
				_errorf(("conflicting names %s and %s for package %q" : GoString), Go.toInterface(_pkg.name()), Go.toInterface(_pkgName),
					Go.toInterface(_path));
			};
			_p._pkgCache[_pkgPathOff] = _pkg;
			var _nameIndex = (new GoObjectMap<GoString,
				GoUInt64>(new stdgo.internal.reflect.Reflect._Type(stdgo.internal.reflect.Reflect.GoType.mapType({get: () ->
					stdgo.internal.reflect.Reflect.GoType.basic(string_kind)},
				{get: () -> stdgo.internal.reflect.Reflect.GoType.basic(uint64_kind)}))) : GoMap<GoString, GoUInt64>);
			{
				var _nSyms:GoUInt64 = _r._uint64();
				Go.cfor(_nSyms > ("0" : GoUInt64), _nSyms--, {
					var _name:GoString = _p._stringAt(_r._uint64());
					_nameIndex[_name] = _r._uint64();
				});
			};
			_p._pkgIndex[_pkg] = _nameIndex;
			_pkgList[(_i : GoInt)] = _pkg;
		};
		var _localpkg = _pkgList[(0 : GoInt)];
		var _names = new Slice<GoString>((0 : GoInt).toBasic(), (_p._pkgIndex[_localpkg].length), ...[for (i in 0...(0 : GoInt).toBasic()) ("" : GoString)]);
		for (_name => _ in _p._pkgIndex[_localpkg]) {
			_names = _names.__appendref__(_name);
		};
		stdgo.sort.Sort.strings(_names);
		for (_13 => _name in _names) {
			_p._doDecl(_localpkg, _name);
		};
		for (_14 => _d in _p._later) {
			_d._t.setConstraint(_d._constraint);
		};
		for (_21 => _typ in _p._interfaceList) {
			_typ.complete();
		};
		var _list = ((null : Slice<Ref<stdgo.go.types.Types.Package>>)
			.__append__(...(_pkgList.__slice__((1 : GoInt)) : Slice<Ref<stdgo.go.types.Types.Package>>).__toArray__()));
		stdgo.sort.Sort.sort(Go.asInterface((_list : T_byPath)));
		_localpkg.setImports(_list);
		_localpkg.markComplete();
		{
			for (defer in __deferstack__) {
				defer();
			};
			return {_0: _localpkg, _1: (null : Error)};
		};
		for (defer in __deferstack__) {
			defer();
		};
		{
			for (defer in __deferstack__) {
				defer();
			};
			if (Go.recover_exception != null)
				throw Go.recover_exception;
			return {_0: _pkg, _1: _err};
		};
	} catch (__exception__) {
		if (!(__exception__.native is AnyInterfaceData))
			throw __exception__;
		Go.recover_exception = __exception__.native;
		for (defer in __deferstack__) {
			defer();
		};
		if (Go.recover_exception != null)
			throw Go.recover_exception;
		return {_0: _pkg, _1: _err};
	};
}

/**
	// canReuse reports whether the type rhs on the RHS of the declaration for def
	// may be re-used.
	//
	// Specifically, if def is non-nil and rhs is an interface type with methods, it
	// may not be re-used because we have a convention of setting the receiver type
	// for interface methods to def.
**/
private function _canReuse(_def:Ref<stdgo.go.types.Types.Named>, _rhs:stdgo.go.types.Types.Type):Bool {
	if (_def == null) {
		return true;
	};
	var __tmp__ = try {
		{value: (Go.typeAssert((Go.toInterface(_rhs) : Ref<stdgo.go.types.Types.Interface>)) : Ref<stdgo.go.types.Types.Interface>), ok: true};
	} catch (_) {
		{value: (null : Ref<stdgo.go.types.Types.Interface>), ok: false};
	}, _iface = __tmp__.value, _0 = __tmp__.ok;
	if (_iface == null) {
		return true;
	};
	return (_iface.numEmbeddeds() == (0 : GoInt)) && (_iface.numExplicitMethods() == (0 : GoInt));
}

private function _intSize(_b:Ref<stdgo.go.types.Types.Basic>):{var _0:Bool; var _1:GoUInt;} {
	var _signed:Bool = false, _maxBytes:GoUInt = (0 : GoUInt);
	if ((_b.info() & (64 : stdgo.go.types.Types.BasicInfo)) != ((0 : stdgo.go.types.Types.BasicInfo))) {
		return {_0: true, _1: ("64" : GoUInt)};
	};
	if (_b.kind() == ((13 : stdgo.go.types.Types.BasicKind)) || _b.kind() == ((15 : stdgo.go.types.Types.BasicKind))) {
		return {_0: true, _1: ("3" : GoUInt)};
	} else if (_b.kind() == ((14 : stdgo.go.types.Types.BasicKind)) || _b.kind() == ((16 : stdgo.go.types.Types.BasicKind))) {
		return {_0: true, _1: ("7" : GoUInt)};
	};
	_signed = (_b.info() & (4 : stdgo.go.types.Types.BasicInfo)) == ((0 : stdgo.go.types.Types.BasicInfo));
	if (_b.kind() == ((3 : stdgo.go.types.Types.BasicKind)) || _b.kind() == ((8 : stdgo.go.types.Types.BasicKind))) {
		_maxBytes = ("1" : GoUInt);
	} else if (_b.kind() == ((4 : stdgo.go.types.Types.BasicKind)) || _b.kind() == ((9 : stdgo.go.types.Types.BasicKind))) {
		_maxBytes = ("2" : GoUInt);
	} else if (_b.kind() == ((5 : stdgo.go.types.Types.BasicKind)) || _b.kind() == ((10 : stdgo.go.types.Types.BasicKind))) {
		_maxBytes = ("4" : GoUInt);
	} else {
		_maxBytes = ("8" : GoUInt);
	};
	return {_0: _signed, _1: _maxBytes};
}

private function _isInterface(_t:stdgo.go.types.Types.Type):Bool {
	var __tmp__ = try {
		{value: (Go.typeAssert((Go.toInterface(_t) : Ref<stdgo.go.types.Types.Interface>)) : Ref<stdgo.go.types.Types.Interface>), ok: true};
	} catch (_) {
		{value: (null : Ref<stdgo.go.types.Types.Interface>), ok: false};
	}, _0 = __tmp__.value, _ok = __tmp__.ok;
	return _ok;
}

private function _baseType(_typ:stdgo.go.types.Types.Type):Ref<stdgo.go.types.Types.Named> {
	{
		var __tmp__ = try {
			{value: (Go.typeAssert((Go.toInterface(_typ) : Ref<stdgo.go.types.Types.Pointer_>)) : Ref<stdgo.go.types.Types.Pointer_>), ok: true};
		} catch (_) {
			{value: (null : Ref<stdgo.go.types.Types.Pointer_>), ok: false};
		}, _p = __tmp__.value, _0 = __tmp__.ok;
		if (_p != null) {
			_typ = _p.elem();
		};
	};
	var __tmp__ = try {
		{value: (Go.typeAssert((Go.toInterface(_typ) : Ref<stdgo.go.types.Types.Named>)) : Ref<stdgo.go.types.Types.Named>), ok: true};
	} catch (_) {
		{value: (null : Ref<stdgo.go.types.Types.Named>), ok: false};
	}, _n = __tmp__.value, _1 = __tmp__.ok;
	return _n;
}

/**
	// tparamName returns the real name of a type parameter, after stripping its
	// qualifying prefix and reverting blank-name encoding. See tparamExportName
	// for details.
**/
private function _tparamName(_exportName:GoString):GoString {
	var _ix:GoInt = stdgo.strings.Strings.lastIndex(_exportName, ("." : GoString));
	if (_ix < (0:GoInt)) {
		_errorf(("malformed type parameter export name %s: missing prefix" : GoString), Go.toInterface(_exportName));
	};
	var _name:GoString = (_exportName.__slice__(_ix + (1 : GoInt)) : GoString);
	if (stdgo.strings.Strings.hasPrefix(_name, ("$$" : GoString))) {
		return ("_" : GoString);
	};
	return _name;
}

private function _assert(_b:Bool):Void {
	if (!_b) {
		throw Go.toInterface(("assertion failed" : GoString));
	};
}

private function _errorf(_format:GoString, _args:haxe.Rest<AnyInterface>):Void {
	var _args = new Slice<AnyInterface>(0, 0, ..._args);
	throw Go.toInterface(stdgo.fmt.Fmt.sprintf(_format, ..._args.__toArray__()));
}

private function _chanDir(_d:GoInt):stdgo.go.types.Types.ChanDir {
	if (_d == ((1 : GoInt))) {
		return (2 : stdgo.go.types.Types.ChanDir);
	} else if (_d == ((2 : GoInt))) {
		return (1 : stdgo.go.types.Types.ChanDir);
	} else if (_d == ((3 : GoInt))) {
		return (0 : stdgo.go.types.Types.ChanDir);
	} else {
		_errorf(("unexpected channel dir %d" : GoString), Go.toInterface(_d));
		return (0 : stdgo.go.types.Types.ChanDir);
	};
}

/**
	// readUnifiedPackage reads a package description from the given
	// unified IR export data decoder.
**/
private function _readUnifiedPackage(_fset:Ref<stdgo.go.token.Token.FileSet>, _ctxt:Ref<stdgo.go.types.Types.Context>,
		_imports:GoMap<GoString, Ref<stdgo.go.types.Types.Package>>, _input:internal.pkgbits.Pkgbits.PkgDecoder):Ref<stdgo.go.types.Types.Package> {
	var __deferstack__:Array<Void->Void> = [];
	var _pr:T_pkgReader = ({
		pkgDecoder: (_input == null ? null : _input.__copy__()),
		_fake: ({_fset: _fset, _files: (new GoObjectMap<GoString,
			Ref<T_fileInfo>>(new stdgo.internal.reflect.Reflect._Type(stdgo.internal.reflect.Reflect.GoType.mapType({
			get: () -> stdgo.internal.reflect.Reflect.GoType.basic(string_kind)
		},
			{get: () -> stdgo.internal.reflect.Reflect.GoType.refType({get: () -> stdgo.internal.reflect.Reflect.GoType.named("T_fileInfo", [], null, false,
				{get: () -> null})})}))) : GoMap<GoString, Ref<T_fileInfo>>)} : T_fakeFileSet),
		_ctxt: _ctxt,
		_imports: _imports,
		_posBases: new Slice<GoString>((_input.numElems((2 : internal.pkgbits.Pkgbits.RelocKind)) : GoInt).toBasic(), 0, ...[
			for (i in 0...(_input.numElems((2 : internal.pkgbits.Pkgbits.RelocKind)) : GoInt).toBasic()) ("" : GoString)
		]),
		_pkgs: new Slice<Ref<stdgo.go.types.Types.Package>>((_input.numElems((3 : internal.pkgbits.Pkgbits.RelocKind)) : GoInt).toBasic(), 0, ...[
			for (i in 0...(_input.numElems((3 : internal.pkgbits.Pkgbits.RelocKind)) : GoInt).toBasic()) (null : Ref<stdgo.go.types.Types.Package>)
		]),
		_typs: new Slice<stdgo.go.types.Types.Type>((_input.numElems((5 : internal.pkgbits.Pkgbits.RelocKind)) : GoInt).toBasic(), 0, ...[
			for (i in 0...(_input.numElems((5 : internal.pkgbits.Pkgbits.RelocKind)) : GoInt).toBasic()) (null : stdgo.go.types.Types.Type)
		])
	} : T_pkgReader);
	__deferstack__.unshift(() -> _pr._fake._setLines());
	try {
		var _r = _pr._newReader((1 : internal.pkgbits.Pkgbits.RelocKind), (0 : internal.pkgbits.Pkgbits.Index), (11 : internal.pkgbits.Pkgbits.SyncMarker));
		var _pkg = _r._pkg();
		_r.bool_();
		{
			var _0:GoInt = (0 : GoInt),
				_1:GoInt = _r.len(),
				_n:GoInt = _1,
				_i:GoInt = _0;
			Go.cfor(_i < _n, _i++, {
				_r.sync((14 : internal.pkgbits.Pkgbits.SyncMarker));
				_assert(!_r.bool_());
				_r._p._objIdx(_r.reloc((6 : internal.pkgbits.Pkgbits.RelocKind)));
				_assert(_r.len() == ((0 : GoInt)));
			});
		};
		_r.sync((1 : internal.pkgbits.Pkgbits.SyncMarker));
		for (_4 => _fn in _pr._laterFns) {
			_fn();
		};
		_pkg.markComplete();
		{
			for (defer in __deferstack__) {
				defer();
			};
			return _pkg;
		};
		for (defer in __deferstack__) {
			defer();
		};
		{
			for (defer in __deferstack__) {
				defer();
			};
			if (Go.recover_exception != null)
				throw Go.recover_exception;
			return (null : Ref<stdgo.go.types.Types.Package>);
		};
	} catch (__exception__) {
		if (!(__exception__.native is AnyInterfaceData))
			throw __exception__;
		Go.recover_exception = __exception__.native;
		for (defer in __deferstack__) {
			defer();
		};
		if (Go.recover_exception != null)
			throw Go.recover_exception;
		return (null : Ref<stdgo.go.types.Types.Package>);
	};
}

/**
	// pkgScope returns pkg.Scope().
	// If pkg is nil, it returns types.Universe instead.
	//
	// TODO(mdempsky): Remove after x/tools can depend on Go 1.19.
**/
private function _pkgScope(_pkg:Ref<stdgo.go.types.Types.Package>):Ref<stdgo.go.types.Types.Scope> {
	if (_pkg != null) {
		return _pkg.scope();
	};
	return stdgo.go.types.Types.universe;
}

class T_intReader_asInterface {
	@:keep
	public function _uint64():GoUInt64
		return __self__.value._uint64();

	@:keep
	public function _int64():GoInt64
		return __self__.value._int64();

	@:embedded
	public function _writeBuf(_w:stdgo.io.Io.Writer):{var _0:GoInt64; var _1:Error;}
		return __self__.value._writeBuf(_w);

	@:embedded
	public function _reset(_buf:Slice<GoUInt8>, _r:stdgo.io.Io.Reader):Void
		__self__.value._reset(_buf, _r);

	@:embedded
	public function _readErr():Error
		return __self__.value._readErr();

	@:embedded
	public function _fill():Void
		__self__.value._fill();

	@:embedded
	public function _collectFragments(_delim:GoUInt8):{
		var _0:Slice<Slice<GoUInt8>>;
		var _1:Slice<GoUInt8>;
		var _2:GoInt;
		var _3:Error;
	}
		return __self__.value._collectFragments(_delim);

	@:embedded
	public function writeTo(_w:stdgo.io.Io.Writer):{var _0:GoInt64; var _1:Error;}
		return __self__.value.writeTo(_w);

	@:embedded
	public function unreadRune():Error
		return __self__.value.unreadRune();

	@:embedded
	public function unreadByte():Error
		return __self__.value.unreadByte();

	@:embedded
	public function size():GoInt
		return __self__.value.size();

	@:embedded
	public function reset(_r:stdgo.io.Io.Reader):Void
		__self__.value.reset(_r);

	@:embedded
	public function readString(_delim:GoUInt8):{var _0:GoString; var _1:Error;}
		return __self__.value.readString(_delim);

	@:embedded
	public function readSlice(_delim:GoUInt8):{var _0:Slice<GoUInt8>; var _1:Error;}
		return __self__.value.readSlice(_delim);

	@:embedded
	public function readRune():{var _0:GoInt32; var _1:GoInt; var _2:Error;}
		return __self__.value.readRune();

	@:embedded
	public function readLine():{var _0:Slice<GoUInt8>; var _1:Bool; var _2:Error;}
		return __self__.value.readLine();

	@:embedded
	public function readBytes(_delim:GoUInt8):{var _0:Slice<GoUInt8>; var _1:Error;}
		return __self__.value.readBytes(_delim);

	@:embedded
	public function readByte():{var _0:GoUInt8; var _1:Error;}
		return __self__.value.readByte();

	@:embedded
	public function read(_p:Slice<GoUInt8>):{var _0:GoInt; var _1:Error;}
		return __self__.value.read(_p);

	@:embedded
	public function peek(__0:GoInt):{var _0:Slice<GoUInt8>; var _1:Error;}
		return __self__.value.peek(__0);

	@:embedded
	public function discard(__0:GoInt):{var _0:GoInt; var _1:Error;}
		return __self__.value.discard(__0);

	@:embedded
	public function buffered():GoInt
		return __self__.value.buffered();

	public function new(__self__, __type__) {
		this.__self__ = __self__;
		this.__type__ = __type__;
	}

	public function __underlying__()
		return new AnyInterface((__type__.kind() == stdgo.reflect.Reflect.ptr
			&& !stdgo.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic),
			__type__);

	var __self__:Pointer<T_intReader>;
	var __type__:stdgo.internal.reflect.Reflect._Type;
}

@:keep @:allow(go.internal.gcimporter.Gcimporter.T_intReader_asInterface) class T_intReader_static_extension {
	@:keep
	static public function _uint64(_r:Ref<T_intReader>):GoUInt64 {
		var __tmp__ = stdgo.encoding.binary.Binary.readUvarint(Go.asInterface(_r.reader)),
			_i:GoUInt64 = __tmp__._0,
			_err:Error = __tmp__._1;
		if (_err != null) {
			_errorf(("import %q: read varint error: %v" : GoString), Go.toInterface(_r._path), Go.toInterface(_err));
		};
		return _i;
	}

	@:keep
	static public function _int64(_r:Ref<T_intReader>):GoInt64 {
		var __tmp__ = stdgo.encoding.binary.Binary.readVarint(Go.asInterface(_r.reader)),
			_i:GoInt64 = __tmp__._0,
			_err:Error = __tmp__._1;
		if (_err != null) {
			_errorf(("import %q: read varint error: %v" : GoString), Go.toInterface(_r._path), Go.toInterface(_err));
		};
		return _i;
	}

	@:embedded
	public static function _writeBuf(__self__:T_intReader, _w:stdgo.io.Io.Writer):{var _0:GoInt64; var _1:Error;}
		return __self__._writeBuf(_w);

	@:embedded
	public static function _reset(__self__:T_intReader, _buf:Slice<GoUInt8>, _r:stdgo.io.Io.Reader)
		__self__._reset(_buf, _r);

	@:embedded
	public static function _readErr(__self__:T_intReader):Error
		return __self__._readErr();

	@:embedded
	public static function _fill(__self__:T_intReader)
		__self__._fill();

	@:embedded
	public static function _collectFragments(__self__:T_intReader, _delim:GoUInt8):{
		var _0:Slice<Slice<GoUInt8>>;
		var _1:Slice<GoUInt8>;
		var _2:GoInt;
		var _3:Error;
	}
		return __self__._collectFragments(_delim);

	@:embedded
	public static function writeTo(__self__:T_intReader, _w:stdgo.io.Io.Writer):{var _0:GoInt64; var _1:Error;}
		return __self__.writeTo(_w);

	@:embedded
	public static function unreadRune(__self__:T_intReader):Error
		return __self__.unreadRune();

	@:embedded
	public static function unreadByte(__self__:T_intReader):Error
		return __self__.unreadByte();

	@:embedded
	public static function size(__self__:T_intReader):GoInt
		return __self__.size();

	@:embedded
	public static function reset(__self__:T_intReader, _r:stdgo.io.Io.Reader)
		__self__.reset(_r);

	@:embedded
	public static function readString(__self__:T_intReader, _delim:GoUInt8):{var _0:GoString; var _1:Error;}
		return __self__.readString(_delim);

	@:embedded
	public static function readSlice(__self__:T_intReader, _delim:GoUInt8):{var _0:Slice<GoUInt8>; var _1:Error;}
		return __self__.readSlice(_delim);

	@:embedded
	public static function readRune(__self__:T_intReader):{var _0:GoInt32; var _1:GoInt; var _2:Error;}
		return __self__.readRune();

	@:embedded
	public static function readLine(__self__:T_intReader):{var _0:Slice<GoUInt8>; var _1:Bool; var _2:Error;}
		return __self__.readLine();

	@:embedded
	public static function readBytes(__self__:T_intReader, _delim:GoUInt8):{var _0:Slice<GoUInt8>; var _1:Error;}
		return __self__.readBytes(_delim);

	@:embedded
	public static function readByte(__self__:T_intReader):{var _0:GoUInt8; var _1:Error;}
		return __self__.readByte();

	@:embedded
	public static function read(__self__:T_intReader, _p:Slice<GoUInt8>):{var _0:GoInt; var _1:Error;}
		return __self__.read(_p);

	@:embedded
	public static function peek(__self__:T_intReader, __0:GoInt):{var _0:Slice<GoUInt8>; var _1:Error;}
		return __self__.peek(__0);

	@:embedded
	public static function discard(__self__:T_intReader, __0:GoInt):{var _0:GoInt; var _1:Error;}
		return __self__.discard(__0);

	@:embedded
	public static function buffered(__self__:T_intReader):GoInt
		return __self__.buffered();
}

class T_iimporter_asInterface {
	@:keep
	public function _typAt(_off:GoUInt64, _base:Ref<stdgo.go.types.Types.Named>):stdgo.go.types.Types.Type
		return __self__.value._typAt(_off, _base);

	@:keep
	public function _pkgAt(_off:GoUInt64):Ref<stdgo.go.types.Types.Package>
		return __self__.value._pkgAt(_off);

	@:keep
	public function _stringAt(_off:GoUInt64):GoString
		return __self__.value._stringAt(_off);

	@:keep
	public function _doDecl(_pkg:Ref<stdgo.go.types.Types.Package>, _name:GoString):Void
		__self__.value._doDecl(_pkg, _name);

	public function new(__self__, __type__) {
		this.__self__ = __self__;
		this.__type__ = __type__;
	}

	public function __underlying__()
		return new AnyInterface((__type__.kind() == stdgo.reflect.Reflect.ptr
			&& !stdgo.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic),
			__type__);

	var __self__:Pointer<T_iimporter>;
	var __type__:stdgo.internal.reflect.Reflect._Type;
}

@:keep @:allow(go.internal.gcimporter.Gcimporter.T_iimporter_asInterface) class T_iimporter_static_extension {
	@:keep
	static public function _typAt(_p:Ref<T_iimporter>, _off:GoUInt64, _base:Ref<stdgo.go.types.Types.Named>):stdgo.go.types.Types.Type {
		{
			var __tmp__ = (_p._typCache != null
				&& _p._typCache.__exists__(_off) ? {value: _p._typCache[_off], ok: true} : {value: (null : stdgo.go.types.Types.Type), ok: false}),
				_t:stdgo.go.types.Types.Type = __tmp__.value,
				_ok:Bool = __tmp__.ok;
			if (_ok && _canReuse(_base, _t)) {
				return _t;
			};
		};
		if (_off < ("32":GoUInt64)) {
			_errorf(("predeclared type missing from cache: %v" : GoString), Go.toInterface(_off));
		};
		var _r = (({_p: _p} : T_importReader) : Ref<T_importReader>);
		_r._declReader.reset((_p._declData.__slice__(_off - ("32" : GoUInt64)) : Slice<GoUInt8>));
		var _t:stdgo.go.types.Types.Type = _r._doType(_base);
		if (_canReuse(_base, _t)) {
			_p._typCache[_off] = _t;
		};
		return _t;
	}

	@:keep
	static public function _pkgAt(_p:Ref<T_iimporter>, _off:GoUInt64):Ref<stdgo.go.types.Types.Package> {
		{
			var __tmp__ = (_p._pkgCache != null
				&& _p._pkgCache.__exists__(_off) ? {value: _p._pkgCache[_off], ok: true} : {value: (null : Ref<stdgo.go.types.Types.Package>), ok: false}),
				_pkg:Ref<stdgo.go.types.Types.Package> = __tmp__.value,
				_ok:Bool = __tmp__.ok;
			if (_ok) {
				return _pkg;
			};
		};
		var _path:GoString = _p._stringAt(_off);
		_errorf(("missing package %q in %q" : GoString), Go.toInterface(_path), Go.toInterface(_p._ipath));
		return null;
	}

	@:keep
	static public function _stringAt(_p:Ref<T_iimporter>, _off:GoUInt64):GoString {
		{
			var __tmp__ = (_p._stringCache != null
				&& _p._stringCache.__exists__(_off) ? {value: _p._stringCache[_off], ok: true} : {value: ("" : GoString), ok: false}),
				_s:GoString = __tmp__.value,
				_ok:Bool = __tmp__.ok;
			if (_ok) {
				return _s;
			};
		};
		var __tmp__ = stdgo.encoding.binary.Binary.uvarint((_p._stringData.__slice__(_off) : Slice<GoUInt8>)),
			_slen:GoUInt64 = __tmp__._0,
			_n:GoInt = __tmp__._1;
		if (_n <= (0 : GoInt)) {
			_errorf(("varint failed" : GoString));
		};
		var _spos:GoUInt64 = _off + (_n : GoUInt64);
		var _s:GoString = ((_p._stringData.__slice__(_spos, _spos + _slen) : Slice<GoUInt8>) : GoString);
		_p._stringCache[_off] = _s;
		return _s;
	}

	@:keep
	static public function _doDecl(_p:Ref<T_iimporter>, _pkg:Ref<stdgo.go.types.Types.Package>, _name:GoString):Void {
		{
			var _obj:stdgo.go.types.Types.Object = _pkg.scope().lookup(_name);
			if (_obj != null) {
				return;
			};
		};
		var __tmp__ = (_p._pkgIndex[_pkg] != null
			&& _p._pkgIndex[_pkg].__exists__(_name) ? {value: _p._pkgIndex[_pkg][_name], ok: true} : {value: (0 : GoUInt64), ok: false}),
			_off:GoUInt64 = __tmp__.value,
			_ok:Bool = __tmp__.ok;
		if (!_ok) {
			_errorf(("%v.%v not in index" : GoString), Go.toInterface(Go.asInterface(_pkg)), Go.toInterface(_name));
		};
		var _r = (({_p: _p, _currPkg: _pkg} : T_importReader) : Ref<T_importReader>);
		_r._declReader.reset((_p._declData.__slice__(_off) : Slice<GoUInt8>));
		_r._obj(_name);
	}
}

class T_importReader_asInterface {
	@:keep
	public function _byte():GoByte
		return __self__.value._byte();

	@:keep
	public function _uint64():GoUInt64
		return __self__.value._uint64();

	@:keep
	public function _int64():GoInt64
		return __self__.value._int64();

	@:keep
	public function _bool():Bool
		return __self__.value._bool();

	@:keep
	public function _param():Ref<stdgo.go.types.Types.Var>
		return __self__.value._param();

	@:keep
	public function _paramList():Ref<stdgo.go.types.Types.Tuple>
		return __self__.value._paramList();

	@:keep
	public function _tparamList():Slice<Ref<stdgo.go.types.Types.TypeParam>>
		return __self__.value._tparamList();

	@:keep
	public function _signature(_recv:Ref<stdgo.go.types.Types.Var>, _rparams:Slice<Ref<stdgo.go.types.Types.TypeParam>>,
			_tparams:Slice<Ref<stdgo.go.types.Types.TypeParam>>):Ref<stdgo.go.types.Types.Signature>
		return __self__.value._signature(_recv, _rparams, _tparams);

	@:keep
	public function _kind():T_itag
		return __self__.value._kind();

	@:keep
	public function _doType(_base:Ref<stdgo.go.types.Types.Named>):stdgo.go.types.Types.Type
		return __self__.value._doType(_base);

	@:keep
	public function _string():GoString
		return __self__.value._string();

	@:keep
	public function _pkg():Ref<stdgo.go.types.Types.Package>
		return __self__.value._pkg();

	@:keep
	public function _typ():stdgo.go.types.Types.Type
		return __self__.value._typ();

	@:keep
	public function _posv1():Void
		__self__.value._posv1();

	@:keep
	public function _posv0():Void
		__self__.value._posv0();

	@:keep
	public function _pos():stdgo.go.token.Token.Pos
		return __self__.value._pos();

	@:keep
	public function _qualifiedIdent():{var _0:Ref<stdgo.go.types.Types.Package>; var _1:GoString;}
		return __self__.value._qualifiedIdent();

	@:keep
	public function _ident():GoString
		return __self__.value._ident();

	@:keep
	public function _mpfloat(_typ:Ref<stdgo.go.types.Types.Basic>):stdgo.go.constant.Constant.Value
		return __self__.value._mpfloat(_typ);

	@:keep
	public function _mpint(_x:Ref<stdgo.math.big.Big.Int_>, _typ:Ref<stdgo.go.types.Types.Basic>):Void
		__self__.value._mpint(_x, _typ);

	@:keep
	public function _value():{var _0:stdgo.go.types.Types.Type; var _1:stdgo.go.constant.Constant.Value;}
		return __self__.value._value();

	@:keep
	public function _declare(_obj:stdgo.go.types.Types.Object):Void
		__self__.value._declare(_obj);

	@:keep
	public function _obj(_name:GoString):Void
		__self__.value._obj(_name);

	public function new(__self__, __type__) {
		this.__self__ = __self__;
		this.__type__ = __type__;
	}

	public function __underlying__()
		return new AnyInterface((__type__.kind() == stdgo.reflect.Reflect.ptr
			&& !stdgo.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic),
			__type__);

	var __self__:Pointer<T_importReader>;
	var __type__:stdgo.internal.reflect.Reflect._Type;
}

@:keep @:allow(go.internal.gcimporter.Gcimporter.T_importReader_asInterface) class T_importReader_static_extension {
	@:keep
	static public function _byte(_r:Ref<T_importReader>):GoByte {
		var __tmp__ = _r._declReader.readByte(),
			_x:GoUInt8 = __tmp__._0,
			_err:Error = __tmp__._1;
		if (_err != null) {
			_errorf(("declReader.ReadByte: %v" : GoString), Go.toInterface(_err));
		};
		return _x;
	}

	@:keep
	static public function _uint64(_r:Ref<T_importReader>):GoUInt64 {
		var __tmp__ = stdgo.encoding.binary.Binary.readUvarint(Go.asInterface((_r._declReader : Ref<stdgo.bytes.Bytes.Reader>))),
			_n:GoUInt64 = __tmp__._0,
			_err:Error = __tmp__._1;
		if (_err != null) {
			_errorf(("readUvarint: %v" : GoString), Go.toInterface(_err));
		};
		return _n;
	}

	@:keep
	static public function _int64(_r:Ref<T_importReader>):GoInt64 {
		var __tmp__ = stdgo.encoding.binary.Binary.readVarint(Go.asInterface((_r._declReader : Ref<stdgo.bytes.Bytes.Reader>))),
			_n:GoInt64 = __tmp__._0,
			_err:Error = __tmp__._1;
		if (_err != null) {
			_errorf(("readVarint: %v" : GoString), Go.toInterface(_err));
		};
		return _n;
	}

	@:keep
	static public function _bool(_r:Ref<T_importReader>):Bool {
		return _r._uint64() != (("0" : GoUInt64));
	}

	@:keep
	static public function _param(_r:Ref<T_importReader>):Ref<stdgo.go.types.Types.Var> {
		var _pos:stdgo.go.token.Token.Pos = _r._pos();
		var _name:GoString = _r._ident();
		var _typ:stdgo.go.types.Types.Type = _r._typ();
		return stdgo.go.types.Types.newParam(_pos, _r._currPkg, _name, _typ);
	}

	@:keep
	static public function _paramList(_r:Ref<T_importReader>):Ref<stdgo.go.types.Types.Tuple> {
		var _xs = new Slice<Ref<stdgo.go.types.Types.Var>>((_r._uint64() : GoInt).toBasic(), 0, ...[
			for (i in 0...(_r._uint64() : GoInt).toBasic()) (null : Ref<stdgo.go.types.Types.Var>)
		]);
		for (_i in 0..._xs.length.toBasic()) {
			_xs[(_i : GoInt)] = _r._param();
		};
		return stdgo.go.types.Types.newTuple(..._xs.__toArray__());
	}

	@:keep
	static public function _tparamList(_r:Ref<T_importReader>):Slice<Ref<stdgo.go.types.Types.TypeParam>> {
		var _n:GoUInt64 = _r._uint64();
		if (_n == (("0" : GoUInt64))) {
			return (null : Slice<Ref<stdgo.go.types.Types.TypeParam>>);
		};
		var _xs = new Slice<Ref<stdgo.go.types.Types.TypeParam>>((_n : GoInt).toBasic(), 0, ...[
			for (i in 0...(_n : GoInt).toBasic()) (null : Ref<stdgo.go.types.Types.TypeParam>)
		]);
		for (_i in 0..._xs.length.toBasic()) {
			{
				var __tmp__ = try {
					{value: (Go.typeAssert((Go.toInterface(_r._typ()) : Ref<stdgo.go.types.Types.TypeParam>)) : Ref<stdgo.go.types.Types.TypeParam>), ok: true};
				} catch (_) {
					{value: (null : Ref<stdgo.go.types.Types.TypeParam>), ok: false};
				};
				_xs[(_i : GoInt)] = __tmp__.value;
			};
		};
		return _xs;
	}

	@:keep
	static public function _signature(_r:Ref<T_importReader>, _recv:Ref<stdgo.go.types.Types.Var>, _rparams:Slice<Ref<stdgo.go.types.Types.TypeParam>>,
			_tparams:Slice<Ref<stdgo.go.types.Types.TypeParam>>):Ref<stdgo.go.types.Types.Signature> {
		var _params = _r._paramList();
		var _results = _r._paramList();
		var _variadic:Bool = (_params.len() > (0 : GoInt)) && _r._bool();
		return stdgo.go.types.Types.newSignatureType(_recv, _rparams, _tparams, _params, _results, _variadic);
	}

	@:keep
	static public function _kind(_r:Ref<T_importReader>):T_itag {
		return (_r._uint64() : T_itag);
	}

	@:keep
	static public function _doType(_r:Ref<T_importReader>, _base:Ref<stdgo.go.types.Types.Named>):stdgo.go.types.Types.Type {
		{
			var _k:T_itag = _r._kind();
			if (_k == ((("0" : GoUInt64) : T_itag))) {
				var __tmp__ = _r._qualifiedIdent(),
					_pkg:Ref<stdgo.go.types.Types.Package> = __tmp__._0,
					_name:GoString = __tmp__._1;
				_r._p._doDecl(_pkg, _name);
				return (Go.typeAssert((Go.toInterface(_pkg.scope()
					.lookup(_name)) : Ref<stdgo.go.types.Types.TypeName>)) : Ref<stdgo.go.types.Types.TypeName>).type();
			} else if (_k == ((("1" : GoUInt64) : T_itag))) {
				return Go.asInterface(stdgo.go.types.Types.newPointer(_r._typ()));
			} else if (_k == ((("2" : GoUInt64) : T_itag))) {
				return Go.asInterface(stdgo.go.types.Types.newSlice(_r._typ()));
			} else if (_k == ((("3" : GoUInt64) : T_itag))) {
				var _n:GoUInt64 = _r._uint64();
				return Go.asInterface(stdgo.go.types.Types.newArray(_r._typ(), (_n : GoInt64)));
			} else if (_k == ((("4" : GoUInt64) : T_itag))) {
				var _dir:stdgo.go.types.Types.ChanDir = _chanDir((_r._uint64() : GoInt));
				return Go.asInterface(stdgo.go.types.Types.newChan(_dir, _r._typ()));
			} else if (_k == ((("5" : GoUInt64) : T_itag))) {
				return Go.asInterface(stdgo.go.types.Types.newMap(_r._typ(), _r._typ()));
			} else if (_k == ((("6" : GoUInt64) : T_itag))) {
				_r._currPkg = _r._pkg();
				return Go.asInterface(_r._signature(null, (null : Slice<Ref<stdgo.go.types.Types.TypeParam>>),
					(null : Slice<Ref<stdgo.go.types.Types.TypeParam>>)));
			} else if (_k == ((("7" : GoUInt64) : T_itag))) {
				_r._currPkg = _r._pkg();
				var _fields = new Slice<Ref<stdgo.go.types.Types.Var>>((_r._uint64() : GoInt).toBasic(), 0, ...[
					for (i in 0...(_r._uint64() : GoInt).toBasic()) (null : Ref<stdgo.go.types.Types.Var>)
				]);
				var _tags = new Slice<GoString>((_fields.length : GoInt).toBasic(), 0, ...[for (i in 0...(_fields.length : GoInt).toBasic()) ("" : GoString)]);
				for (_i in 0..._fields.length.toBasic()) {
					var _fpos:stdgo.go.token.Token.Pos = _r._pos();
					var _fname:GoString = _r._ident();
					var _ftyp:stdgo.go.types.Types.Type = _r._typ();
					var _emb:Bool = _r._bool();
					var _tag:GoString = _r._string();
					_fields[(_i : GoInt)] = stdgo.go.types.Types.newField(_fpos, _r._currPkg, _fname, _ftyp, _emb);
					_tags[(_i : GoInt)] = _tag;
				};
				return Go.asInterface(stdgo.go.types.Types.newStruct(_fields, _tags));
			} else if (_k == ((("8" : GoUInt64) : T_itag))) {
				_r._currPkg = _r._pkg();
				var _embeddeds = new Slice<stdgo.go.types.Types.Type>((_r._uint64() : GoInt).toBasic(), 0, ...[
					for (i in 0...(_r._uint64() : GoInt).toBasic()) (null : stdgo.go.types.Types.Type)
				]);
				for (_i in 0..._embeddeds.length.toBasic()) {
					_r._pos();
					_embeddeds[(_i : GoInt)] = _r._typ();
				};
				var _methods = new Slice<Ref<stdgo.go.types.Types.Func>>((_r._uint64() : GoInt).toBasic(), 0, ...[
					for (i in 0...(_r._uint64() : GoInt).toBasic()) (null : Ref<stdgo.go.types.Types.Func>)
				]);
				for (_i in 0..._methods.length.toBasic()) {
					var _mpos:stdgo.go.token.Token.Pos = _r._pos();
					var _mname:GoString = _r._ident();
					var _recv:Ref<stdgo.go.types.Types.Var> = (null : Ref<stdgo.go.types.Types.Var>);
					if (_base != null) {
						_recv = stdgo.go.types.Types.newVar((0 : stdgo.go.token.Token.Pos), _r._currPkg, Go.str(), Go.asInterface(_base));
					};
					var _msig = _r._signature(_recv, (null : Slice<Ref<stdgo.go.types.Types.TypeParam>>), (null : Slice<Ref<stdgo.go.types.Types.TypeParam>>));
					_methods[(_i : GoInt)] = stdgo.go.types.Types.newFunc(_mpos, _r._currPkg, _mname, _msig);
				};
				var _typ = stdgo.go.types.Types.newInterfaceType(_methods, _embeddeds);
				_r._p._interfaceList = _r._p._interfaceList.__appendref__(_typ);
				return Go.asInterface(_typ);
			} else if (_k == ((("9" : GoUInt64) : T_itag))) {
				if (_r._p._exportVersion < ("2":GoInt64)) {
					_errorf(("unexpected type param type" : GoString));
				};
				var __tmp__ = _r._qualifiedIdent(),
					_pkg:Ref<stdgo.go.types.Types.Package> = __tmp__._0,
					_name:GoString = __tmp__._1;
				var _id:T_ident = (new T_ident(_pkg, _name) : T_ident);
				{
					var __tmp__ = (_r._p._tparamIndex != null
						&& _r._p._tparamIndex.__exists__(_id) ? {value: _r._p._tparamIndex[_id],
							ok: true} : {value: (null : Ref<stdgo.go.types.Types.TypeParam>), ok: false}),
						_t:Ref<stdgo.go.types.Types.TypeParam> = __tmp__.value,
						_ok:Bool = __tmp__.ok;
					if (_ok) {
						return Go.asInterface(_t);
					};
				};
				_r._p._doDecl(_pkg, _name);
				return Go.asInterface(_r._p._tparamIndex[(_id == null ? null : _id.__copy__())]);
			} else if (_k == ((("10" : GoUInt64) : T_itag))) {
				if (_r._p._exportVersion < ("2":GoInt64)) {
					_errorf(("unexpected instantiation type" : GoString));
				};
				_r._pos();
				var _len:GoUInt64 = _r._uint64();
				var _targs = new Slice<stdgo.go.types.Types.Type>((_len : GoInt).toBasic(), 0,
					...[for (i in 0...(_len : GoInt).toBasic()) (null : stdgo.go.types.Types.Type)]);
				for (_i in 0..._targs.length.toBasic()) {
					_targs[(_i : GoInt)] = _r._typ();
				};
				var _baseType:stdgo.go.types.Types.Type = _r._typ();
				var __tmp__ = stdgo.go.types.Types.instantiate(null, _baseType, _targs, false),
					_t:stdgo.go.types.Types.Type = __tmp__._0,
					_48:Error = __tmp__._1;
				return _t;
			} else if (_k == ((("11" : GoUInt64) : T_itag))) {
				if (_r._p._exportVersion < ("2":GoInt64)) {
					_errorf(("unexpected instantiation type" : GoString));
				};
				var _terms = new Slice<Ref<stdgo.go.types.Types.Term>>((_r._uint64() : GoInt).toBasic(), 0, ...[
					for (i in 0...(_r._uint64() : GoInt).toBasic()) (null : Ref<stdgo.go.types.Types.Term>)
				]);
				for (_i in 0..._terms.length.toBasic()) {
					_terms[(_i : GoInt)] = stdgo.go.types.Types.newTerm(_r._bool(), _r._typ());
				};
				return Go.asInterface(stdgo.go.types.Types.newUnion(_terms));
			};
		};
	}

	@:keep
	static public function _string(_r:Ref<T_importReader>):GoString {
		return _r._p._stringAt(_r._uint64());
	}

	@:keep
	static public function _pkg(_r:Ref<T_importReader>):Ref<stdgo.go.types.Types.Package> {
		return _r._p._pkgAt(_r._uint64());
	}

	@:keep
	static public function _typ(_r:Ref<T_importReader>):stdgo.go.types.Types.Type {
		return _r._p._typAt(_r._uint64(), null);
	}

	@:keep
	static public function _posv1(_r:Ref<T_importReader>):Void {
		var _delta:GoInt64 = _r._int64();
		_r._prevColumn = _r._prevColumn + (_delta >> (("1" : GoUInt64) : GoUInt64));
		if (_delta & ("1" : GoInt64) != (("0" : GoInt64))) {
			_delta = _r._int64();
			_r._prevLine = _r._prevLine + (_delta >> (("1" : GoUInt64) : GoUInt64));
			if (_delta & ("1" : GoInt64) != (("0" : GoInt64))) {
				_r._prevFile = _r._string();
			};
		};
	}

	@:keep
	static public function _posv0(_r:Ref<T_importReader>):Void {
		var _delta:GoInt64 = _r._int64();
		if (_delta != (("-64" : GoInt64))) {
			_r._prevLine = _r._prevLine + (_delta);
		} else {
			var _l:GoInt64 = _r._int64();
			if (_l == (("-1" : GoInt64))) {
				_r._prevLine = _r._prevLine + (("-64" : GoInt64));
			} else {
				_r._prevFile = _r._string();
				_r._prevLine = _l;
			};
		};
	}

	@:keep
	static public function _pos(_r:Ref<T_importReader>):stdgo.go.token.Token.Pos {
		if (_r._p._version >= (1 : GoInt)) {
			_r._posv1();
		} else {
			_r._posv0();
		};
		if (((_r._prevFile == Go.str()) && (_r._prevLine == ("0" : GoInt64))) && (_r._prevColumn == ("0" : GoInt64))) {
			return (0 : stdgo.go.token.Token.Pos);
		};
		return _r._p._fake._pos(_r._prevFile, (_r._prevLine : GoInt), (_r._prevColumn : GoInt));
	}

	@:keep
	static public function _qualifiedIdent(_r:Ref<T_importReader>):{var _0:Ref<stdgo.go.types.Types.Package>; var _1:GoString;} {
		var _name:GoString = _r._string();
		var _pkg = _r._pkg();
		return {_0: _pkg, _1: _name};
	}

	@:keep
	static public function _ident(_r:Ref<T_importReader>):GoString {
		return _r._string();
	}

	@:keep
	static public function _mpfloat(_r:Ref<T_importReader>, _typ:Ref<stdgo.go.types.Types.Basic>):stdgo.go.constant.Constant.Value {
		var _mant:stdgo.math.big.Big.Int_ = ({} : stdgo.math.big.Big.Int_);
		_r._mpint((_mant : Ref<stdgo.math.big.Big.Int_>), _typ);
		var _f:stdgo.math.big.Big.Float_ = ({} : stdgo.math.big.Big.Float_);
		_f.setInt((_mant : Ref<stdgo.math.big.Big.Int_>));
		if (_f.sign() != ((0 : GoInt))) {
			_f.setMantExp((_f : Ref<stdgo.math.big.Big.Float_>), (_r._int64() : GoInt));
		};
		return stdgo.go.constant.Constant.make(Go.toInterface(Go.asInterface((_f : Ref<stdgo.math.big.Big.Float_>))));
	}

	@:keep
	static public function _mpint(_r:Ref<T_importReader>, _x:Ref<stdgo.math.big.Big.Int_>, _typ:Ref<stdgo.go.types.Types.Basic>):Void {
		var __tmp__ = _intSize(_typ),
			_signed:Bool = __tmp__._0,
			_maxBytes:GoUInt = __tmp__._1;
		var _maxSmall:GoUInt = ("256" : GoUInt) - _maxBytes;
		if (_signed) {
			_maxSmall = ("256" : GoUInt) - ((("2" : GoUInt) : GoUInt) * _maxBytes);
		};
		if (_maxBytes == (("1" : GoUInt))) {
			_maxSmall = ("256" : GoUInt);
		};
		var __tmp__ = _r._declReader.readByte(),
			_n:GoUInt8 = __tmp__._0,
			_2:Error = __tmp__._1;
		if ((_n : GoUInt) < _maxSmall) {
			var _v:GoInt64 = (_n : GoInt64);
			if (_signed) {
				_v = _v >> (("1" : GoUInt64));
				if (_n & (1 : GoUInt8) != ((0 : GoUInt8))) {
					_v = (-1 ^ _v);
				};
			};
			_x.setInt64(_v);
			return;
		};
		var _v:GoUInt8 = -_n;
		if (_signed) {
			_v = -(_n & ((1 : GoUInt8) ^ (-1 : GoInt))) >> ("1" : GoUInt64);
		};
		if ((_v < (1:GoUInt8)) || ((_v : GoUInt) > _maxBytes)) {
			_errorf(("weird decoding: %v, %v => %v" : GoString), Go.toInterface(_n), Go.toInterface(_signed), Go.toInterface(_v));
		};
		var _b = new Slice<GoUInt8>((_v : GoInt).toBasic(), 0, ...[for (i in 0...(_v : GoInt).toBasic()) (0 : GoUInt8)]);
		stdgo.io.Io.readFull(Go.asInterface((_r._declReader : Ref<stdgo.bytes.Bytes.Reader>)), _b);
		_x.setBytes(_b);
		if (_signed && ((_n & (1 : GoUInt8)) != (0 : GoUInt8))) {
			_x.neg(_x);
		};
	}

	@:keep
	static public function _value(_r:Ref<T_importReader>):{var _0:stdgo.go.types.Types.Type; var _1:stdgo.go.constant.Constant.Value;} {
		var _typ:stdgo.go.types.Types.Type = (null : stdgo.go.types.Types.Type),
			_val:stdgo.go.constant.Constant.Value = (null : stdgo.go.constant.Constant.Value);
		_typ = _r._typ();
		if (_r._p._exportVersion >= ("2" : GoInt64)) {
			(_r._int64() : stdgo.go.constant.Constant.Kind);
		};
		{
			var _b = (Go.typeAssert((Go.toInterface(_typ.underlying()) : Ref<stdgo.go.types.Types.Basic>)) : Ref<stdgo.go.types.Types.Basic>);
			if (_b.info() & (59 : stdgo.go.types.Types.BasicInfo) == ((1 : stdgo.go.types.Types.BasicInfo))) {
				_val = stdgo.go.constant.Constant.makeBool(_r._bool());
			} else if (_b.info() & (59 : stdgo.go.types.Types.BasicInfo) == ((32 : stdgo.go.types.Types.BasicInfo))) {
				_val = stdgo.go.constant.Constant.makeString(_r._string());
			} else if (_b.info() & (59 : stdgo.go.types.Types.BasicInfo) == ((2 : stdgo.go.types.Types.BasicInfo))) {
				var _x:stdgo.math.big.Big.Int_ = ({} : stdgo.math.big.Big.Int_);
				_r._mpint((_x : Ref<stdgo.math.big.Big.Int_>), _b);
				_val = stdgo.go.constant.Constant.make(Go.toInterface(Go.asInterface((_x : Ref<stdgo.math.big.Big.Int_>))));
			} else if (_b.info() & (59 : stdgo.go.types.Types.BasicInfo) == ((8 : stdgo.go.types.Types.BasicInfo))) {
				_val = _r._mpfloat(_b);
			} else if (_b.info() & (59 : stdgo.go.types.Types.BasicInfo) == ((16 : stdgo.go.types.Types.BasicInfo))) {
				var _re:stdgo.go.constant.Constant.Value = _r._mpfloat(_b);
				var _im:stdgo.go.constant.Constant.Value = _r._mpfloat(_b);
				_val = stdgo.go.constant.Constant.binaryOp(_re, (12 : stdgo.go.token.Token.Token), stdgo.go.constant.Constant.makeImag(_im));
			} else {
				_errorf(("unexpected type %v" : GoString), Go.toInterface(_typ));
				throw Go.toInterface(("unreachable" : GoString));
			};
		};
		return {_0: _typ, _1: _val};
	}

	@:keep
	static public function _declare(_r:Ref<T_importReader>, _obj:stdgo.go.types.Types.Object):Void {
		_obj.pkg().scope().insert(_obj);
	}

	@:keep
	static public function _obj(_r:Ref<T_importReader>, _name:GoString):Void {
		var _tag:GoUInt8 = _r._byte();
		var _pos:stdgo.go.token.Token.Pos = _r._pos();
		if (_tag == ((65 : GoUInt8))) {
			var _typ:stdgo.go.types.Types.Type = _r._typ();
			_r._declare(Go.asInterface(stdgo.go.types.Types.newTypeName(_pos, _r._currPkg, _name, _typ)));
		} else if (_tag == ((67 : GoUInt8))) {
			var __tmp__ = _r._value(),
				_typ:stdgo.go.types.Types.Type = __tmp__._0,
				_val:stdgo.go.constant.Constant.Value = __tmp__._1;
			_r._declare(Go.asInterface(stdgo.go.types.Types.newConst(_pos, _r._currPkg, _name, _typ, _val)));
		} else if (_tag == ((70 : GoUInt8)) || _tag == ((71 : GoUInt8))) {
			var _tparams:Slice<Ref<stdgo.go.types.Types.TypeParam>> = (null : Slice<Ref<stdgo.go.types.Types.TypeParam>>);
			if (_tag == ((71 : GoUInt8))) {
				_tparams = _r._tparamList();
			};
			var _sig = _r._signature(null, (null : Slice<Ref<stdgo.go.types.Types.TypeParam>>), _tparams);
			_r._declare(Go.asInterface(stdgo.go.types.Types.newFunc(_pos, _r._currPkg, _name, _sig)));
		} else if (_tag == ((84 : GoUInt8)) || _tag == ((85 : GoUInt8))) {
			var _obj = stdgo.go.types.Types.newTypeName(_pos, _r._currPkg, _name, (null : stdgo.go.types.Types.Type));
			var _named = stdgo.go.types.Types.newNamed(_obj, (null : stdgo.go.types.Types.Type), (null : Slice<Ref<stdgo.go.types.Types.Func>>));
			_r._declare(Go.asInterface(_obj));
			if (_tag == ((85 : GoUInt8))) {
				var _tparams = _r._tparamList();
				_named.setTypeParams(_tparams);
			};
			var _underlying:stdgo.go.types.Types.Type = _r._p._typAt(_r._uint64(), _named).underlying();
			_named.setUnderlying(_underlying);
			if (!_isInterface(_underlying)) {
				{
					var _n:GoUInt64 = _r._uint64();
					Go.cfor(_n > ("0" : GoUInt64), _n--, {
						var _mpos:stdgo.go.token.Token.Pos = _r._pos();
						var _mname:GoString = _r._ident();
						var _recv = _r._param();
						var _targs = _baseType(_recv.type()).typeArgs();
						var _rparams:Slice<Ref<stdgo.go.types.Types.TypeParam>> = (null : Slice<Ref<stdgo.go.types.Types.TypeParam>>);
						if (_targs.len() > (0 : GoInt)) {
							_rparams = new Slice<Ref<stdgo.go.types.Types.TypeParam>>((_targs.len() : GoInt).toBasic(), 0, ...[
								for (i in 0...(_targs.len() : GoInt).toBasic()) (null : Ref<stdgo.go.types.Types.TypeParam>)
							]);
							for (_i in 0..._rparams.length.toBasic()) {
								{
									var __tmp__ = try {
										{value: (Go.typeAssert((Go.toInterface(_targs.at(_i)) : Ref<stdgo.go.types.Types.TypeParam>)) : Ref<stdgo.go.types.Types.TypeParam>),
											ok: true};
									} catch (_) {
										{value: (null : Ref<stdgo.go.types.Types.TypeParam>), ok: false};
									};
									_rparams[(_i : GoInt)] = __tmp__.value;
								};
							};
						};
						var _msig = _r._signature(_recv, _rparams, (null : Slice<Ref<stdgo.go.types.Types.TypeParam>>));
						_named.addMethod(stdgo.go.types.Types.newFunc(_mpos, _r._currPkg, _mname, _msig));
					});
				};
			};
		} else if (_tag == ((80 : GoUInt8))) {
			if (_r._p._exportVersion < ("2":GoInt64)) {
				_errorf(("unexpected type param type" : GoString));
			};
			var _name0:GoString = _tparamName(_name);
			var _tn = stdgo.go.types.Types.newTypeName(_pos, _r._currPkg, _name0, (null : stdgo.go.types.Types.Type));
			var _t = stdgo.go.types.Types.newTypeParam(_tn, (null : stdgo.go.types.Types.Type));
			var _id:T_ident = (new T_ident(_r._currPkg, _name) : T_ident);
			_r._p._tparamIndex[(_id == null ? null : _id.__copy__())] = _t;
			var _implicit:Bool = false;
			if (_r._p._exportVersion >= ("2" : GoInt64)) {
				_implicit = _r._bool();
			};
			var _constraint:stdgo.go.types.Types.Type = _r._typ();
			if (_implicit) {
				var __tmp__ = try {
					{value: (Go.typeAssert((Go.toInterface(_constraint) : Ref<stdgo.go.types.Types.Interface>)) : Ref<stdgo.go.types.Types.Interface>),
						ok: true};
				} catch (_) {
					{value: (null : Ref<stdgo.go.types.Types.Interface>), ok: false};
				}, _iface = __tmp__.value, _28 = __tmp__.ok;
				if (_iface == null) {
					_errorf(("non-interface constraint marked implicit" : GoString));
				};
				_iface.markImplicit();
			};
			_r._p._later = _r._p._later.__appendref__(({_t: _t, _constraint: _constraint} : T_setConstraintArgs));
		} else if (_tag == ((86 : GoUInt8))) {
			var _typ:stdgo.go.types.Types.Type = _r._typ();
			_r._declare(Go.asInterface(stdgo.go.types.Types.newVar(_pos, _r._currPkg, _name, _typ)));
		} else {
			_errorf(("unexpected tag: %v" : GoString), Go.toInterface(_tag));
		};
	}
}

class T_fakeFileSet_asInterface {
	@:keep
	public function _setLines():Void
		__self__.value._setLines();

	@:keep
	public function _pos(_file:GoString, _line:GoInt, _column:GoInt):stdgo.go.token.Token.Pos
		return __self__.value._pos(_file, _line, _column);

	public function new(__self__, __type__) {
		this.__self__ = __self__;
		this.__type__ = __type__;
	}

	public function __underlying__()
		return new AnyInterface((__type__.kind() == stdgo.reflect.Reflect.ptr
			&& !stdgo.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic),
			__type__);

	var __self__:Pointer<T_fakeFileSet>;
	var __type__:stdgo.internal.reflect.Reflect._Type;
}

@:keep @:allow(go.internal.gcimporter.Gcimporter.T_fakeFileSet_asInterface) class T_fakeFileSet_static_extension {
	@:keep
	static public function _setLines(_s:Ref<T_fakeFileSet>):Void {
		_fakeLinesOnce.do_(function():Void {
			_fakeLines = new Slice<GoInt>((65536 : GoInt).toBasic(), 0, ...[for (i in 0...(65536 : GoInt).toBasic()) (0 : GoInt)]);
			for (_i in 0..._fakeLines.length.toBasic()) {
				_fakeLines[(_i : GoInt)] = _i;
			};
		});
		for (_0 => _f in _s._files) {
			_f._file.setLines((_fakeLines.__slice__(0, _f._lastline) : Slice<GoInt>));
		};
	}

	@:keep
	static public function _pos(_s:Ref<T_fakeFileSet>, _file:GoString, _line:GoInt, _column:GoInt):stdgo.go.token.Token.Pos {
		var _f = _s._files[_file];
		if (_f == null) {
			_f = (({_file: _s._fset.addFile(_file, (-1 : GoInt), (65536 : GoInt))} : T_fileInfo) : Ref<T_fileInfo>);
			_s._files[_file] = _f;
		};
		if (_line > (65536 : GoInt)) {
			_line = (1 : GoInt);
		};
		if (_line > _f._lastline) {
			_f._lastline = _line;
		};
		return ((_f._file.base() + _line) - (1 : GoInt) : stdgo.go.token.Token.Pos);
	}
}

class T_anyType_asInterface {
	@:keep
	public function string():GoString
		return __self__.value.string();

	@:keep
	public function underlying():stdgo.go.types.Types.Type
		return __self__.value.underlying();

	public function new(__self__, __type__) {
		this.__self__ = __self__;
		this.__type__ = __type__;
	}

	public function __underlying__()
		return new AnyInterface((__type__.kind() == stdgo.reflect.Reflect.ptr
			&& !stdgo.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic),
			__type__);

	var __self__:Pointer<T_anyType>;
	var __type__:stdgo.internal.reflect.Reflect._Type;
}

@:keep @:allow(go.internal.gcimporter.Gcimporter.T_anyType_asInterface) class T_anyType_static_extension {
	@:keep
	static public function string(_t:T_anyType):GoString {
		return ("any" : GoString);
	}

	@:keep
	static public function underlying(_t:T_anyType):stdgo.go.types.Types.Type {
		return Go.asInterface(_t);
	}
}

class T_pkgReader_asInterface {
	@:keep
	public function _objDictIdx(_idx:internal.pkgbits.Pkgbits.Index):Ref<T_readerDict>
		return __self__.value._objDictIdx(_idx);

	@:keep
	public function _objIdx(_idx:internal.pkgbits.Pkgbits.Index):{var _0:Ref<stdgo.go.types.Types.Package>; var _1:GoString;}
		return __self__.value._objIdx(_idx);

	@:keep
	public function _typIdx(_info:T_typeInfo, _dict:Ref<T_readerDict>):stdgo.go.types.Types.Type
		return __self__.value._typIdx(_info, _dict);

	@:keep
	public function _pkgIdx(_idx:internal.pkgbits.Pkgbits.Index):Ref<stdgo.go.types.Types.Package>
		return __self__.value._pkgIdx(_idx);

	@:keep
	public function _posBaseIdx(_idx:internal.pkgbits.Pkgbits.Index):GoString
		return __self__.value._posBaseIdx(_idx);

	@:keep
	public function _newReader(_k:internal.pkgbits.Pkgbits.RelocKind, _idx:internal.pkgbits.Pkgbits.Index,
			_marker:internal.pkgbits.Pkgbits.SyncMarker):Ref<T_reader>
		return __self__.value._newReader(_k, _idx, _marker);

	/**
		// later adds a function to be invoked at the end of import reading.
	**/
	@:keep
	public function _later(_fn:() -> Void):Void
		__self__.value._later(_fn);

	@:embedded
	public function totalElems():GoInt
		return __self__.value.totalElems();

	@:embedded
	public function stringIdx(__0:internal.pkgbits.Pkgbits.Index):GoString
		return __self__.value.stringIdx(__0);

	@:embedded
	public function pkgPath():GoString
		return __self__.value.pkgPath();

	@:embedded
	public function peekPkgPath(__0:internal.pkgbits.Pkgbits.Index):GoString
		return __self__.value.peekPkgPath(__0);

	@:embedded
	public function peekObj(__0:internal.pkgbits.Pkgbits.Index):{var _0:GoString; var _1:GoString; var _2:internal.pkgbits.Pkgbits.CodeObj;}
		return __self__.value.peekObj(__0);

	@:embedded
	public function numElems(_k:internal.pkgbits.Pkgbits.RelocKind):GoInt
		return __self__.value.numElems(_k);

	@:embedded
	public function newDecoderRaw(_k:internal.pkgbits.Pkgbits.RelocKind, _idx:internal.pkgbits.Pkgbits.Index):internal.pkgbits.Pkgbits.Decoder
		return __self__.value.newDecoderRaw(_k, _idx);

	@:embedded
	public function newDecoder(_k:internal.pkgbits.Pkgbits.RelocKind, _idx:internal.pkgbits.Pkgbits.Index,
			_marker:internal.pkgbits.Pkgbits.SyncMarker):internal.pkgbits.Pkgbits.Decoder
		return __self__.value.newDecoder(_k, _idx, _marker);

	@:embedded
	public function fingerprint():GoArray<GoUInt8>
		return __self__.value.fingerprint();

	@:embedded
	public function dataIdx(_k:internal.pkgbits.Pkgbits.RelocKind, _idx:internal.pkgbits.Pkgbits.Index):GoString
		return __self__.value.dataIdx(_k, _idx);

	@:embedded
	public function absIdx(_k:internal.pkgbits.Pkgbits.RelocKind, _idx:internal.pkgbits.Pkgbits.Index):GoInt
		return __self__.value.absIdx(_k, _idx);

	public function new(__self__, __type__) {
		this.__self__ = __self__;
		this.__type__ = __type__;
	}

	public function __underlying__()
		return new AnyInterface((__type__.kind() == stdgo.reflect.Reflect.ptr
			&& !stdgo.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic),
			__type__);

	var __self__:Pointer<T_pkgReader>;
	var __type__:stdgo.internal.reflect.Reflect._Type;
}

@:keep @:allow(go.internal.gcimporter.Gcimporter.T_pkgReader_asInterface) class T_pkgReader_static_extension {
	@:keep
	static public function _objDictIdx(_pr:Ref<T_pkgReader>, _idx:internal.pkgbits.Pkgbits.Index):Ref<T_readerDict> {
		var _r = _pr._newReader((8 : internal.pkgbits.Pkgbits.RelocKind), _idx, (15 : internal.pkgbits.Pkgbits.SyncMarker));
		var _dict:T_readerDict = ({} : T_readerDict);
		{
			var _implicits:GoInt = _r.len();
			if (_implicits != ((0 : GoInt))) {
				_errorf(("unexpected object with %v implicit type parameter(s)" : GoString), Go.toInterface(_implicits));
			};
		};
		_dict._bounds = new Slice<T_typeInfo>((_r.len() : GoInt).toBasic(), 0, ...[for (i in 0...(_r.len() : GoInt).toBasic()) ({} : T_typeInfo)]);
		for (_i in 0..._dict._bounds.length.toBasic()) {
			_dict._bounds[(_i : GoInt)] = (_r._typInfo() == null ? null : _r._typInfo().__copy__());
		};
		_dict._derived = new Slice<T_derivedInfo>((_r.len() : GoInt).toBasic(), 0, ...[for (i in 0...(_r.len() : GoInt).toBasic()) ({} : T_derivedInfo)]);
		_dict._derivedTypes = new Slice<stdgo.go.types.Types.Type>((_dict._derived.length : GoInt).toBasic(), 0, ...[
			for (i in 0...(_dict._derived.length : GoInt).toBasic()) (null : stdgo.go.types.Types.Type)
		]);
		for (_i in 0..._dict._derived.length.toBasic()) {
			_dict._derived[(_i : GoInt)] = (new T_derivedInfo(_r.reloc((5 : internal.pkgbits.Pkgbits.RelocKind)), _r.bool_()) : T_derivedInfo);
		};
		return (_dict : Ref<T_readerDict>);
	}

	@:keep
	static public function _objIdx(_pr:Ref<T_pkgReader>, _idx:internal.pkgbits.Pkgbits.Index):{var _0:Ref<stdgo.go.types.Types.Package>; var _1:GoString;} {
		var _rname = _pr._newReader((4 : internal.pkgbits.Pkgbits.RelocKind), _idx, (15 : internal.pkgbits.Pkgbits.SyncMarker));
		var __tmp__ = _rname._qualifiedIdent(),
			_objPkg:Ref<stdgo.go.types.Types.Package> = __tmp__._0,
			_objName:GoString = __tmp__._1;
		_assert(_objName != (Go.str()));
		var _tag:internal.pkgbits.Pkgbits.CodeObj = (_rname.code((25 : internal.pkgbits.Pkgbits.SyncMarker)) : internal.pkgbits.Pkgbits.CodeObj);
		if (_tag == ((5 : internal.pkgbits.Pkgbits.CodeObj))) {
			_assert((_objPkg == null) || (_objPkg == stdgo.go.types.Types.unsafe));
			return {_0: _objPkg, _1: _objName};
		};
		if (_objPkg.scope().lookup(_objName) == null) {
			var _dict = _pr._objDictIdx(_idx);
			var _r = _pr._newReader((6 : internal.pkgbits.Pkgbits.RelocKind), _idx, (15 : internal.pkgbits.Pkgbits.SyncMarker));
			_r._dict = _dict;
			var _declare:stdgo.go.types.Types.Object->Void = function(_obj:stdgo.go.types.Types.Object):Void {
				_objPkg.scope().insert(_obj);
			};
			if (_tag == ((0 : internal.pkgbits.Pkgbits.CodeObj))) {
				var _pos:stdgo.go.token.Token.Pos = _r._pos();
				var _typ:stdgo.go.types.Types.Type = _r._typ();
				_declare(Go.asInterface(stdgo.go.types.Types.newTypeName(_pos, _objPkg, _objName, _typ)));
			} else if (_tag == ((1 : internal.pkgbits.Pkgbits.CodeObj))) {
				var _pos:stdgo.go.token.Token.Pos = _r._pos();
				var _typ:stdgo.go.types.Types.Type = _r._typ();
				var _val:stdgo.go.constant.Constant.Value = _r.value();
				_declare(Go.asInterface(stdgo.go.types.Types.newConst(_pos, _objPkg, _objName, _typ, _val)));
			} else if (_tag == ((3 : internal.pkgbits.Pkgbits.CodeObj))) {
				var _pos:stdgo.go.token.Token.Pos = _r._pos();
				var _tparams = _r._typeParamNames();
				var _sig = _r._signature(null, (null : Slice<Ref<stdgo.go.types.Types.TypeParam>>), _tparams);
				_declare(Go.asInterface(stdgo.go.types.Types.newFunc(_pos, _objPkg, _objName, _sig)));
			} else if (_tag == ((2 : internal.pkgbits.Pkgbits.CodeObj))) {
				var _pos:stdgo.go.token.Token.Pos = _r._pos();
				var _obj = stdgo.go.types.Types.newTypeName(_pos, _objPkg, _objName, (null : stdgo.go.types.Types.Type));
				var _named = stdgo.go.types.Types.newNamed(_obj, (null : stdgo.go.types.Types.Type), (null : Slice<Ref<stdgo.go.types.Types.Func>>));
				_declare(Go.asInterface(_obj));
				_named.setTypeParams(_r._typeParamNames());
				var _rhs:stdgo.go.types.Types.Type = _r._typ();
				_r._p._later(function():Void {
					var _underlying:stdgo.go.types.Types.Type = _rhs.underlying();
					_named.setUnderlying(_underlying);
				});
				{
					var _0:GoInt = (0 : GoInt),
						_1:GoInt = _r.len(),
						_n:GoInt = _1,
						_i:GoInt = _0;
					Go.cfor(_i < _n, _i++, {
						_named.addMethod(_r._method());
					});
				};
			} else if (_tag == ((4 : internal.pkgbits.Pkgbits.CodeObj))) {
				var _pos:stdgo.go.token.Token.Pos = _r._pos();
				var _typ:stdgo.go.types.Types.Type = _r._typ();
				_declare(Go.asInterface(stdgo.go.types.Types.newVar(_pos, _objPkg, _objName, _typ)));
			};
		};
		return {_0: _objPkg, _1: _objName};
	}

	@:keep
	static public function _typIdx(_pr:Ref<T_pkgReader>, _info:T_typeInfo, _dict:Ref<T_readerDict>):stdgo.go.types.Types.Type {
		var _idx:internal.pkgbits.Pkgbits.Index = _info._idx;
		var _where:Ref<stdgo.go.types.Types.Type> = (null : Ref<stdgo.go.types.Types.Type>);
		if (_info._derived) {
			_where = (_dict._derivedTypes[(_idx : GoInt)] : Ref<stdgo.go.types.Types.Type>);
			_idx = _dict._derived[(_idx : GoInt)]._idx;
		} else {
			_where = (_pr._typs[(_idx : GoInt)] : Ref<stdgo.go.types.Types.Type>);
		};
		{
			var _typ:stdgo.go.types.Types.Type = _where;
			if (_typ != null) {
				return _typ;
			};
		};
		var _r = _pr._newReader((5 : internal.pkgbits.Pkgbits.RelocKind), _idx, (20 : internal.pkgbits.Pkgbits.SyncMarker));
		_r._dict = _dict;
		var _typ:stdgo.go.types.Types.Type = _r._doTyp();
		_assert(_typ != null);
		{
			var _prev:stdgo.go.types.Types.Type = _where;
			if (_prev != null) {
				return _prev;
			};
		};
		_where = _typ;
		return _typ;
	}

	@:keep
	static public function _pkgIdx(_pr:Ref<T_pkgReader>, _idx:internal.pkgbits.Pkgbits.Index):Ref<stdgo.go.types.Types.Package> {
		{
			var _pkg = _pr._pkgs[(_idx : GoInt)];
			if (_pkg != null) {
				return _pkg;
			};
		};
		var _pkg = _pr._newReader((3 : internal.pkgbits.Pkgbits.RelocKind), _idx, (17 : internal.pkgbits.Pkgbits.SyncMarker))._doPkg();
		_pr._pkgs[(_idx : GoInt)] = _pkg;
		return _pkg;
	}

	@:keep
	static public function _posBaseIdx(_pr:Ref<T_pkgReader>, _idx:internal.pkgbits.Pkgbits.Index):GoString {
		{
			var _b:GoString = _pr._posBases[(_idx : GoInt)];
			if (_b != (Go.str())) {
				return _b;
			};
		};
		var _r = _pr._newReader((2 : internal.pkgbits.Pkgbits.RelocKind), _idx, (13 : internal.pkgbits.Pkgbits.SyncMarker));
		var _filename:GoString = (_r.string() : GoString);
		if (_r.bool_()) {} else {
			var _pos:stdgo.go.token.Token.Pos = _r._pos();
			var _line:GoUInt = _r.uint();
			var _col:GoUInt = _r.uint();
			{
				_pos;
				_line;
				_col;
			};
		};
		var _b:GoString = _filename;
		_pr._posBases[(_idx : GoInt)] = _b;
		return _b;
	}

	@:keep
	static public function _newReader(_pr:Ref<T_pkgReader>, _k:internal.pkgbits.Pkgbits.RelocKind, _idx:internal.pkgbits.Pkgbits.Index,
			_marker:internal.pkgbits.Pkgbits.SyncMarker):Ref<T_reader> {
		return (({decoder: (_pr.newDecoder(_k, _idx,
			_marker) == null ? null : _pr.newDecoder(_k, _idx, _marker).__copy__()), _p: _pr} : T_reader) : Ref<T_reader>);
	}

	/**
		// later adds a function to be invoked at the end of import reading.
	**/
	@:keep
	static public function _later(_pr:Ref<T_pkgReader>, _fn:() -> Void):Void {
		_pr._laterFns = _pr._laterFns.__appendref__(_fn);
	}

	@:embedded
	public static function totalElems(__self__:T_pkgReader):GoInt
		return __self__.totalElems();

	@:embedded
	public static function stringIdx(__self__:T_pkgReader, __0:internal.pkgbits.Pkgbits.Index):GoString
		return __self__.stringIdx(__0);

	@:embedded
	public static function pkgPath(__self__:T_pkgReader):GoString
		return __self__.pkgPath();

	@:embedded
	public static function peekPkgPath(__self__:T_pkgReader, __0:internal.pkgbits.Pkgbits.Index):GoString
		return __self__.peekPkgPath(__0);

	@:embedded
	public static function peekObj(__self__:T_pkgReader,
			__0:internal.pkgbits.Pkgbits.Index):{var _0:GoString; var _1:GoString; var _2:internal.pkgbits.Pkgbits.CodeObj;}
		return __self__.peekObj(__0);

	@:embedded
	public static function numElems(__self__:T_pkgReader, _k:internal.pkgbits.Pkgbits.RelocKind):GoInt
		return __self__.numElems(_k);

	@:embedded
	public static function newDecoderRaw(__self__:T_pkgReader, _k:internal.pkgbits.Pkgbits.RelocKind,
			_idx:internal.pkgbits.Pkgbits.Index):internal.pkgbits.Pkgbits.Decoder
		return __self__.newDecoderRaw(_k, _idx);

	@:embedded
	public static function newDecoder(__self__:T_pkgReader, _k:internal.pkgbits.Pkgbits.RelocKind, _idx:internal.pkgbits.Pkgbits.Index,
			_marker:internal.pkgbits.Pkgbits.SyncMarker):internal.pkgbits.Pkgbits.Decoder
		return __self__.newDecoder(_k, _idx, _marker);

	@:embedded
	public static function fingerprint(__self__:T_pkgReader):GoArray<GoUInt8>
		return __self__.fingerprint();

	@:embedded
	public static function dataIdx(__self__:T_pkgReader, _k:internal.pkgbits.Pkgbits.RelocKind, _idx:internal.pkgbits.Pkgbits.Index):GoString
		return __self__.dataIdx(_k, _idx);

	@:embedded
	public static function absIdx(__self__:T_pkgReader, _k:internal.pkgbits.Pkgbits.RelocKind, _idx:internal.pkgbits.Pkgbits.Index):GoInt
		return __self__.absIdx(_k, _idx);
}

class T_reader_asInterface {
	@:keep
	public function _ident(_marker:internal.pkgbits.Pkgbits.SyncMarker):{var _0:Ref<stdgo.go.types.Types.Package>; var _1:GoString;}
		return __self__.value._ident(_marker);

	@:keep
	public function _selector():{var _0:Ref<stdgo.go.types.Types.Package>; var _1:GoString;}
		return __self__.value._selector();

	@:keep
	public function _localIdent():{var _0:Ref<stdgo.go.types.Types.Package>; var _1:GoString;}
		return __self__.value._localIdent();

	@:keep
	public function _qualifiedIdent():{var _0:Ref<stdgo.go.types.Types.Package>; var _1:GoString;}
		return __self__.value._qualifiedIdent();

	@:keep
	public function _method():Ref<stdgo.go.types.Types.Func>
		return __self__.value._method();

	@:keep
	public function _typeParamNames():Slice<Ref<stdgo.go.types.Types.TypeParam>>
		return __self__.value._typeParamNames();

	@:keep
	public function _obj():{var _0:stdgo.go.types.Types.Object; var _1:Slice<stdgo.go.types.Types.Type>;}
		return __self__.value._obj();

	@:keep
	public function _param():Ref<stdgo.go.types.Types.Var>
		return __self__.value._param();

	@:keep
	public function _params():Ref<stdgo.go.types.Types.Tuple>
		return __self__.value._params();

	@:keep
	public function _signature(_recv:Ref<stdgo.go.types.Types.Var>, _rtparams:Slice<Ref<stdgo.go.types.Types.TypeParam>>,
			_tparams:Slice<Ref<stdgo.go.types.Types.TypeParam>>):Ref<stdgo.go.types.Types.Signature>
		return __self__.value._signature(_recv, _rtparams, _tparams);

	@:keep
	public function _interfaceType():Ref<stdgo.go.types.Types.Interface>
		return __self__.value._interfaceType();

	@:keep
	public function _unionType():Ref<stdgo.go.types.Types.Union>
		return __self__.value._unionType();

	@:keep
	public function _structType():Ref<stdgo.go.types.Types.Struct>
		return __self__.value._structType();

	@:keep
	public function _doTyp():stdgo.go.types.Types.Type
		return __self__.value._doTyp();

	@:keep
	public function _typInfo():T_typeInfo
		return __self__.value._typInfo();

	@:keep
	public function _typ():stdgo.go.types.Types.Type
		return __self__.value._typ();

	@:keep
	public function _doPkg():Ref<stdgo.go.types.Types.Package>
		return __self__.value._doPkg();

	@:keep
	public function _pkg():Ref<stdgo.go.types.Types.Package>
		return __self__.value._pkg();

	@:keep
	public function _posBase():GoString
		return __self__.value._posBase();

	@:keep
	public function _pos():stdgo.go.token.Token.Pos
		return __self__.value._pos();

	@:embedded
	public function _scalar():stdgo.go.constant.Constant.Value
		return __self__.value._scalar();

	@:embedded
	public function _rawVarint():GoInt64
		return __self__.value._rawVarint();

	@:embedded
	public function _rawUvarint():GoUInt64
		return __self__.value._rawUvarint();

	@:embedded
	public function _rawReloc(_k:internal.pkgbits.Pkgbits.RelocKind, _idx:GoInt):internal.pkgbits.Pkgbits.Index
		return __self__.value._rawReloc(_k, _idx);

	@:embedded
	public function _checkErr(__0:Error):Void
		__self__.value._checkErr(__0);

	@:embedded
	public function _bigInt():Ref<stdgo.math.big.Big.Int_>
		return __self__.value._bigInt();

	@:embedded
	public function _bigFloat():Ref<stdgo.math.big.Big.Float_>
		return __self__.value._bigFloat();

	@:embedded
	public function value():stdgo.go.constant.Constant.Value
		return __self__.value.value();

	@:embedded
	public function uint64():GoUInt64
		return __self__.value.uint64();

	@:embedded
	public function uint():GoUInt
		return __self__.value.uint();

	@:embedded
	public function sync(_mark:internal.pkgbits.Pkgbits.SyncMarker):Void
		__self__.value.sync(_mark);

	@:embedded
	public function strings():Slice<GoString>
		return __self__.value.strings();

	@:embedded
	public function string():GoString
		return __self__.value.string();

	@:embedded
	public function reloc(_k:internal.pkgbits.Pkgbits.RelocKind):internal.pkgbits.Pkgbits.Index
		return __self__.value.reloc(_k);

	@:embedded
	public function len():GoInt
		return __self__.value.len();

	@:embedded
	public function int64():GoInt64
		return __self__.value.int64();

	@:embedded
	public function int_():GoInt
		return __self__.value.int_();

	@:embedded
	public function code(_mark:internal.pkgbits.Pkgbits.SyncMarker):GoInt
		return __self__.value.code(_mark);

	@:embedded
	public function bool_():Bool
		return __self__.value.bool_();

	public function new(__self__, __type__) {
		this.__self__ = __self__;
		this.__type__ = __type__;
	}

	public function __underlying__()
		return new AnyInterface((__type__.kind() == stdgo.reflect.Reflect.ptr
			&& !stdgo.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic),
			__type__);

	var __self__:Pointer<T_reader>;
	var __type__:stdgo.internal.reflect.Reflect._Type;
}

@:keep @:allow(go.internal.gcimporter.Gcimporter.T_reader_asInterface) class T_reader_static_extension {
	@:keep
	static public function _ident(_r:Ref<T_reader>, _marker:internal.pkgbits.Pkgbits.SyncMarker):{var _0:Ref<stdgo.go.types.Types.Package>; var _1:GoString;} {
		_r.sync(_marker);
		return {_0: _r._pkg(), _1: (_r.string() : GoString)};
	}

	@:keep
	static public function _selector(_r:Ref<T_reader>):{var _0:Ref<stdgo.go.types.Types.Package>; var _1:GoString;} {
		return _r._ident((28 : internal.pkgbits.Pkgbits.SyncMarker));
	}

	@:keep
	static public function _localIdent(_r:Ref<T_reader>):{var _0:Ref<stdgo.go.types.Types.Package>; var _1:GoString;} {
		return _r._ident((27 : internal.pkgbits.Pkgbits.SyncMarker));
	}

	@:keep
	static public function _qualifiedIdent(_r:Ref<T_reader>):{var _0:Ref<stdgo.go.types.Types.Package>; var _1:GoString;} {
		return _r._ident((26 : internal.pkgbits.Pkgbits.SyncMarker));
	}

	@:keep
	static public function _method(_r:Ref<T_reader>):Ref<stdgo.go.types.Types.Func> {
		_r.sync((18 : internal.pkgbits.Pkgbits.SyncMarker));
		var _pos:stdgo.go.token.Token.Pos = _r._pos();
		var __tmp__ = _r._selector(),
			_pkg:Ref<stdgo.go.types.Types.Package> = __tmp__._0,
			_name:GoString = __tmp__._1;
		var _rparams = _r._typeParamNames();
		var _sig = _r._signature(_r._param(), _rparams, (null : Slice<Ref<stdgo.go.types.Types.TypeParam>>));
		_r._pos();
		return stdgo.go.types.Types.newFunc(_pos, _pkg, _name, _sig);
	}

	@:keep
	static public function _typeParamNames(_r:Ref<T_reader>):Slice<Ref<stdgo.go.types.Types.TypeParam>> {
		_r.sync((21 : internal.pkgbits.Pkgbits.SyncMarker));
		if ((_r._dict._bounds.length) == ((0 : GoInt))) {
			return (null : Slice<Ref<stdgo.go.types.Types.TypeParam>>);
		};
		_r._dict._tparams = new Slice<Ref<stdgo.go.types.Types.TypeParam>>((_r._dict._bounds.length : GoInt).toBasic(), 0, ...[
			for (i in 0...(_r._dict._bounds.length : GoInt).toBasic()) (null : Ref<stdgo.go.types.Types.TypeParam>)
		]);
		for (_i in 0..._r._dict._bounds.length.toBasic()) {
			var _pos:stdgo.go.token.Token.Pos = _r._pos();
			var __tmp__ = _r._localIdent(),
				_pkg:Ref<stdgo.go.types.Types.Package> = __tmp__._0,
				_name:GoString = __tmp__._1;
			var _tname = stdgo.go.types.Types.newTypeName(_pos, _pkg, _name, (null : stdgo.go.types.Types.Type));
			_r._dict._tparams[(_i : GoInt)] = stdgo.go.types.Types.newTypeParam(_tname, (null : stdgo.go.types.Types.Type));
		};
		var _typs = new Slice<stdgo.go.types.Types.Type>((_r._dict._bounds.length : GoInt).toBasic(), 0, ...[
			for (i in 0...(_r._dict._bounds.length : GoInt).toBasic()) (null : stdgo.go.types.Types.Type)
		]);
		for (_i => _bound in _r._dict._bounds) {
			_typs[(_i : GoInt)] = _r._p._typIdx((_bound == null ? null : _bound.__copy__()), _r._dict);
		};
		var _tparams = _r._dict._tparams;
		_r._p._later(function():Void {
			for (_i => _typ in _typs) {
				_tparams[(_i : GoInt)].setConstraint(_typ);
			};
		});
		return _r._dict._tparams;
	}

	@:keep
	static public function _obj(_r:Ref<T_reader>):{var _0:stdgo.go.types.Types.Object; var _1:Slice<stdgo.go.types.Types.Type>;} {
		_r.sync((14 : internal.pkgbits.Pkgbits.SyncMarker));
		_assert(!_r.bool_());
		var __tmp__ = _r._p._objIdx(_r.reloc((6 : internal.pkgbits.Pkgbits.RelocKind))),
			_pkg:Ref<stdgo.go.types.Types.Package> = __tmp__._0,
			_name:GoString = __tmp__._1;
		var _obj:stdgo.go.types.Types.Object = _pkgScope(_pkg).lookup(_name);
		var _targs = new Slice<stdgo.go.types.Types.Type>((_r.len() : GoInt).toBasic(), 0,
			...[for (i in 0...(_r.len() : GoInt).toBasic()) (null : stdgo.go.types.Types.Type)]);
		for (_i in 0..._targs.length.toBasic()) {
			_targs[(_i : GoInt)] = _r._typ();
		};
		return {_0: _obj, _1: _targs};
	}

	@:keep
	static public function _param(_r:Ref<T_reader>):Ref<stdgo.go.types.Types.Var> {
		_r.sync((24 : internal.pkgbits.Pkgbits.SyncMarker));
		var _pos:stdgo.go.token.Token.Pos = _r._pos();
		var __tmp__ = _r._localIdent(),
			_pkg:Ref<stdgo.go.types.Types.Package> = __tmp__._0,
			_name:GoString = __tmp__._1;
		var _typ:stdgo.go.types.Types.Type = _r._typ();
		return stdgo.go.types.Types.newParam(_pos, _pkg, _name, _typ);
	}

	@:keep
	static public function _params(_r:Ref<T_reader>):Ref<stdgo.go.types.Types.Tuple> {
		_r.sync((23 : internal.pkgbits.Pkgbits.SyncMarker));
		var _params = new Slice<Ref<stdgo.go.types.Types.Var>>((_r.len() : GoInt).toBasic(), 0, ...[
			for (i in 0...(_r.len() : GoInt).toBasic()) (null : Ref<stdgo.go.types.Types.Var>)
		]);
		for (_i in 0..._params.length.toBasic()) {
			_params[(_i : GoInt)] = _r._param();
		};
		return stdgo.go.types.Types.newTuple(..._params.__toArray__());
	}

	@:keep
	static public function _signature(_r:Ref<T_reader>, _recv:Ref<stdgo.go.types.Types.Var>, _rtparams:Slice<Ref<stdgo.go.types.Types.TypeParam>>,
			_tparams:Slice<Ref<stdgo.go.types.Types.TypeParam>>):Ref<stdgo.go.types.Types.Signature> {
		_r.sync((22 : internal.pkgbits.Pkgbits.SyncMarker));
		var _params = _r._params();
		var _results = _r._params();
		var _variadic:Bool = _r.bool_();
		return stdgo.go.types.Types.newSignatureType(_recv, _rtparams, _tparams, _params, _results, _variadic);
	}

	@:keep
	static public function _interfaceType(_r:Ref<T_reader>):Ref<stdgo.go.types.Types.Interface> {
		var _methods = new Slice<Ref<stdgo.go.types.Types.Func>>((_r.len() : GoInt).toBasic(), 0, ...[
			for (i in 0...(_r.len() : GoInt).toBasic()) (null : Ref<stdgo.go.types.Types.Func>)
		]);
		var _embeddeds = new Slice<stdgo.go.types.Types.Type>((_r.len() : GoInt).toBasic(), 0,
			...[for (i in 0...(_r.len() : GoInt).toBasic()) (null : stdgo.go.types.Types.Type)]);
		var _implicit:Bool = ((_methods.length == (0 : GoInt)) && (_embeddeds.length == (1 : GoInt))) && _r.bool_();
		for (_i in 0..._methods.length.toBasic()) {
			var _pos:stdgo.go.token.Token.Pos = _r._pos();
			var __tmp__ = _r._selector(),
				_pkg:Ref<stdgo.go.types.Types.Package> = __tmp__._0,
				_name:GoString = __tmp__._1;
			var _mtyp = _r._signature(null, (null : Slice<Ref<stdgo.go.types.Types.TypeParam>>), (null : Slice<Ref<stdgo.go.types.Types.TypeParam>>));
			_methods[(_i : GoInt)] = stdgo.go.types.Types.newFunc(_pos, _pkg, _name, _mtyp);
		};
		for (_i in 0..._embeddeds.length.toBasic()) {
			_embeddeds[(_i : GoInt)] = _r._typ();
		};
		var _iface = stdgo.go.types.Types.newInterfaceType(_methods, _embeddeds);
		if (_implicit) {
			_iface.markImplicit();
		};
		return _iface;
	}

	@:keep
	static public function _unionType(_r:Ref<T_reader>):Ref<stdgo.go.types.Types.Union> {
		var _terms = new Slice<Ref<stdgo.go.types.Types.Term>>((_r.len() : GoInt).toBasic(), 0, ...[
			for (i in 0...(_r.len() : GoInt).toBasic()) (null : Ref<stdgo.go.types.Types.Term>)
		]);
		for (_i in 0..._terms.length.toBasic()) {
			_terms[(_i : GoInt)] = stdgo.go.types.Types.newTerm(_r.bool_(), _r._typ());
		};
		return stdgo.go.types.Types.newUnion(_terms);
	}

	@:keep
	static public function _structType(_r:Ref<T_reader>):Ref<stdgo.go.types.Types.Struct> {
		var _fields = new Slice<Ref<stdgo.go.types.Types.Var>>((_r.len() : GoInt).toBasic(), 0, ...[
			for (i in 0...(_r.len() : GoInt).toBasic()) (null : Ref<stdgo.go.types.Types.Var>)
		]);
		var _tags:Slice<GoString> = (null : Slice<GoString>);
		for (_i in 0..._fields.length.toBasic()) {
			var _pos:stdgo.go.token.Token.Pos = _r._pos();
			var __tmp__ = _r._selector(),
				_pkg:Ref<stdgo.go.types.Types.Package> = __tmp__._0,
				_name:GoString = __tmp__._1;
			var _ftyp:stdgo.go.types.Types.Type = _r._typ();
			var _tag:GoString = (_r.string() : GoString);
			var _embedded:Bool = _r.bool_();
			_fields[(_i : GoInt)] = stdgo.go.types.Types.newField(_pos, _pkg, _name, _ftyp, _embedded);
			if (_tag != (Go.str())) {
				while ((_tags.length) < _i) {
					_tags = _tags.__appendref__(Go.str());
				};
				_tags = _tags.__appendref__(_tag);
			};
		};
		return stdgo.go.types.Types.newStruct(_fields, _tags);
	}

	@:keep
	static public function _doTyp(_r:Ref<T_reader>):stdgo.go.types.Types.Type {
		var _res:stdgo.go.types.Types.Type = (null : stdgo.go.types.Types.Type);
		{
			var _tag:internal.pkgbits.Pkgbits.CodeType = (_r.code((19 : internal.pkgbits.Pkgbits.SyncMarker)) : internal.pkgbits.Pkgbits.CodeType);
			if (_tag == ((0 : internal.pkgbits.Pkgbits.CodeType))) {
				return Go.asInterface(stdgo.go.types.Types.typ[(_r.len() : GoInt)]);
			} else if (_tag == ((1 : internal.pkgbits.Pkgbits.CodeType))) {
				var __tmp__ = _r._obj(),
					_obj:stdgo.go.types.Types.Object = __tmp__._0,
					_targs:Slice<stdgo.go.types.Types.Type> = __tmp__._1;
				var _name = (Go.typeAssert((Go.toInterface(_obj) : Ref<stdgo.go.types.Types.TypeName>)) : Ref<stdgo.go.types.Types.TypeName>);
				if ((_targs.length) != ((0 : GoInt))) {
					var __tmp__ = stdgo.go.types.Types.instantiate(_r._p._ctxt, _name.type(), _targs, false),
						_t:stdgo.go.types.Types.Type = __tmp__._0,
						_4:Error = __tmp__._1;
					return _t;
				};
				return _name.type();
			} else if (_tag == ((11 : internal.pkgbits.Pkgbits.CodeType))) {
				return Go.asInterface(_r._dict._tparams[(_r.len() : GoInt)]);
			} else if (_tag == ((4 : internal.pkgbits.Pkgbits.CodeType))) {
				var _len:GoInt64 = (_r.uint64() : GoInt64);
				return Go.asInterface(stdgo.go.types.Types.newArray(_r._typ(), _len));
			} else if (_tag == ((5 : internal.pkgbits.Pkgbits.CodeType))) {
				var _dir:stdgo.go.types.Types.ChanDir = (_r.len() : stdgo.go.types.Types.ChanDir);
				return Go.asInterface(stdgo.go.types.Types.newChan(_dir, _r._typ()));
			} else if (_tag == ((6 : internal.pkgbits.Pkgbits.CodeType))) {
				return Go.asInterface(stdgo.go.types.Types.newMap(_r._typ(), _r._typ()));
			} else if (_tag == ((2 : internal.pkgbits.Pkgbits.CodeType))) {
				return Go.asInterface(stdgo.go.types.Types.newPointer(_r._typ()));
			} else if (_tag == ((7 : internal.pkgbits.Pkgbits.CodeType))) {
				return Go.asInterface(_r._signature(null, (null : Slice<Ref<stdgo.go.types.Types.TypeParam>>),
					(null : Slice<Ref<stdgo.go.types.Types.TypeParam>>)));
			} else if (_tag == ((3 : internal.pkgbits.Pkgbits.CodeType))) {
				return Go.asInterface(stdgo.go.types.Types.newSlice(_r._typ()));
			} else if (_tag == ((8 : internal.pkgbits.Pkgbits.CodeType))) {
				return Go.asInterface(_r._structType());
			} else if (_tag == ((9 : internal.pkgbits.Pkgbits.CodeType))) {
				return Go.asInterface(_r._interfaceType());
			} else if (_tag == ((10 : internal.pkgbits.Pkgbits.CodeType))) {
				return Go.asInterface(_r._unionType());
			};
		};
	}

	@:keep
	static public function _typInfo(_r:Ref<T_reader>):T_typeInfo {
		_r.sync((19 : internal.pkgbits.Pkgbits.SyncMarker));
		if (_r.bool_()) {
			return ({_idx: (_r.len() : internal.pkgbits.Pkgbits.Index), _derived: true} : T_typeInfo);
		};
		return ({_idx: _r.reloc((5 : internal.pkgbits.Pkgbits.RelocKind)), _derived: false} : T_typeInfo);
	}

	@:keep
	static public function _typ(_r:Ref<T_reader>):stdgo.go.types.Types.Type {
		return _r._p._typIdx((_r._typInfo() == null ? null : _r._typInfo().__copy__()), _r._dict);
	}

	@:keep
	static public function _doPkg(_r:Ref<T_reader>):Ref<stdgo.go.types.Types.Package> {
		var _path:GoString = (_r.string() : GoString);
		if (_path == (Go.str())) {
			_path = _r._p.pkgPath();
		} else if (_path == (("builtin" : GoString))) {
			return null;
		} else if (_path == (("unsafe" : GoString))) {
			return stdgo.go.types.Types.unsafe;
		};
		{
			var _pkg = _r._p._imports[_path];
			if (_pkg != null) {
				return _pkg;
			};
		};
		var _name:GoString = (_r.string() : GoString);
		var _height:GoInt = _r.len();
		var _0 = stdgo.go.types.Types.newPackage(_path, _name),
			_1:GoInt = _height,
			_6:GoInt = _1,
			_pkg = _0;
		_r._p._imports[_path] = _pkg;
		var _imports = new Slice<Ref<stdgo.go.types.Types.Package>>((_r.len() : GoInt).toBasic(), 0, ...[
			for (i in 0...(_r.len() : GoInt).toBasic()) (null : Ref<stdgo.go.types.Types.Package>)
		]);
		for (_i in 0..._imports.length.toBasic()) {
			_imports[(_i : GoInt)] = _r._pkg();
		};
		_pkg.setImports(_imports);
		return _pkg;
	}

	@:keep
	static public function _pkg(_r:Ref<T_reader>):Ref<stdgo.go.types.Types.Package> {
		_r.sync((16 : internal.pkgbits.Pkgbits.SyncMarker));
		return _r._p._pkgIdx(_r.reloc((3 : internal.pkgbits.Pkgbits.RelocKind)));
	}

	@:keep
	static public function _posBase(_r:Ref<T_reader>):GoString {
		return _r._p._posBaseIdx(_r.reloc((2 : internal.pkgbits.Pkgbits.RelocKind)));
	}

	@:keep
	static public function _pos(_r:Ref<T_reader>):stdgo.go.token.Token.Pos {
		_r.sync((12 : internal.pkgbits.Pkgbits.SyncMarker));
		if (!_r.bool_()) {
			return (0 : stdgo.go.token.Token.Pos);
		};
		var _posBase:GoString = _r._posBase();
		var _line:GoUInt = _r.uint();
		var _col:GoUInt = _r.uint();
		return _r._p._fake._pos(_posBase, (_line : GoInt), (_col : GoInt));
	}

	@:embedded
	public static function _scalar(__self__:T_reader):stdgo.go.constant.Constant.Value
		return __self__._scalar();

	@:embedded
	public static function _rawVarint(__self__:T_reader):GoInt64
		return __self__._rawVarint();

	@:embedded
	public static function _rawUvarint(__self__:T_reader):GoUInt64
		return __self__._rawUvarint();

	@:embedded
	public static function _rawReloc(__self__:T_reader, _k:internal.pkgbits.Pkgbits.RelocKind, _idx:GoInt):internal.pkgbits.Pkgbits.Index
		return __self__._rawReloc(_k, _idx);

	@:embedded
	public static function _checkErr(__self__:T_reader, __0:Error)
		__self__._checkErr(__0);

	@:embedded
	public static function _bigInt(__self__:T_reader):Ref<stdgo.math.big.Big.Int_>
		return __self__._bigInt();

	@:embedded
	public static function _bigFloat(__self__:T_reader):Ref<stdgo.math.big.Big.Float_>
		return __self__._bigFloat();

	@:embedded
	public static function value(__self__:T_reader):stdgo.go.constant.Constant.Value
		return __self__.value();

	@:embedded
	public static function uint64(__self__:T_reader):GoUInt64
		return __self__.uint64();

	@:embedded
	public static function uint(__self__:T_reader):GoUInt
		return __self__.uint();

	@:embedded
	public static function sync(__self__:T_reader, _mark:internal.pkgbits.Pkgbits.SyncMarker)
		__self__.sync(_mark);

	@:embedded
	public static function strings(__self__:T_reader):Slice<GoString>
		return __self__.strings();

	@:embedded
	public static function string(__self__:T_reader):GoString
		return __self__.string();

	@:embedded
	public static function reloc(__self__:T_reader, _k:internal.pkgbits.Pkgbits.RelocKind):internal.pkgbits.Pkgbits.Index
		return __self__.reloc(_k);

	@:embedded
	public static function len(__self__:T_reader):GoInt
		return __self__.len();

	@:embedded
	public static function int64(__self__:T_reader):GoInt64
		return __self__.int64();

	@:embedded
	public static function int_(__self__:T_reader):GoInt
		return __self__.int_();

	@:embedded
	public static function code(__self__:T_reader, _mark:internal.pkgbits.Pkgbits.SyncMarker):GoInt
		return __self__.code(_mark);

	@:embedded
	public static function bool_(__self__:T_reader):Bool
		return __self__.bool_();
}

class T_byPath_asInterface {
	@:keep
	public function less(_i:GoInt, _j:GoInt):Bool
		return __self__.value.less(_i, _j);

	@:keep
	public function swap(_i:GoInt, _j:GoInt):Void
		__self__.value.swap(_i, _j);

	@:keep
	public function len():GoInt
		return __self__.value.len();

	public function new(__self__, __type__) {
		this.__self__ = __self__;
		this.__type__ = __type__;
	}

	public function __underlying__()
		return new AnyInterface((__type__.kind() == stdgo.reflect.Reflect.ptr
			&& !stdgo.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic),
			__type__);

	var __self__:Pointer<T_byPath>;
	var __type__:stdgo.internal.reflect.Reflect._Type;
}

@:keep @:allow(go.internal.gcimporter.Gcimporter.T_byPath_asInterface) class T_byPath_static_extension {
	@:keep
	static public function less(_a:T_byPath, _i:GoInt, _j:GoInt):Bool {
		return _a[(_i : GoInt)].path() < _a[(_j : GoInt)].path();
	}

	@:keep
	static public function swap(_a:T_byPath, _i:GoInt, _j:GoInt):Void {
		{
			final __tmp__0 = _a[(_j : GoInt)];
			final __tmp__1 = _a[(_i : GoInt)];
			_a[(_i : GoInt)] = __tmp__0;
			_a[(_j : GoInt)] = __tmp__1;
		};
	}

	@:keep
	static public function len(_a:T_byPath):GoInt {
		return (_a.length);
	}
}
