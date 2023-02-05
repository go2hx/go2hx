package stdgo.internal.pkgbits;

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
	// Package pkgbits implements low-level coding abstractions for
	// Unified IR's export data format.
	//
	// At a low-level, a package is a collection of bitstream elements.
	// Each element has a "kind" and a dense, non-negative index.
	// Elements can be randomly accessed given their kind and index.
	//
	// Individual elements are sequences of variable-length values (e.g.,
	// integers, booleans, strings, go/constant values, cross-references
	// to other elements). Package pkgbits provides APIs for encoding and
	// decoding these low-level values, but the details of mapping
	// higher-level Go constructs into elements is left to higher-level
	// abstractions.
	//
	// Elements may cross-reference each other with "relocations." For
	// example, an element representing a pointer type has a relocation
	// referring to the element type.
	//
	// Go constructs may be composed as a constellation of multiple
	// elements. For example, a declared function may have one element to
	// describe the object (e.g., its name, type, position), and a
	// separate element to describe its function body. This allows readers
	// some flexibility in efficiently seeking or re-reading data (e.g.,
	// inlining requires re-reading the function body for each inlined
	// call, without needing to re-read the object-level details).
**/
private var __go2hxdoc__package:Bool;

private var __SyncMarker_index:GoArray<GoUInt16> = (new GoArray<GoUInt16>((0 : GoUInt16), (3 : GoUInt16), (7 : GoUInt16), (12 : GoUInt16), (18 : GoUInt16),
	(24 : GoUInt16), (29 : GoUInt16), (32 : GoUInt16), (38 : GoUInt16), (43 : GoUInt16), (51 : GoUInt16), (57 : GoUInt16), (60 : GoUInt16), (67 : GoUInt16),
	(73 : GoUInt16), (80 : GoUInt16), (83 : GoUInt16), (89 : GoUInt16), (95 : GoUInt16), (99 : GoUInt16), (106 : GoUInt16), (120 : GoUInt16),
	(129 : GoUInt16), (135 : GoUInt16), (140 : GoUInt16), (147 : GoUInt16), (150 : GoUInt16), (160 : GoUInt16), (168 : GoUInt16), (175 : GoUInt16),
	(182 : GoUInt16), (188 : GoUInt16), (195 : GoUInt16), (201 : GoUInt16), (209 : GoUInt16), (214 : GoUInt16), (218 : GoUInt16), (228 : GoUInt16),
	(230 : GoUInt16), (237 : GoUInt16), (244 : GoUInt16), (248 : GoUInt16), (256 : GoUInt16), (265 : GoUInt16), (275 : GoUInt16), (292 : GoUInt16),
	(301 : GoUInt16), (309 : GoUInt16), (314 : GoUInt16), (323 : GoUInt16), (329 : GoUInt16), (336 : GoUInt16), (346 : GoUInt16), (355 : GoUInt16),
	(365 : GoUInt16), (375 : GoUInt16), (385 : GoUInt16), (390 : GoUInt16), (401 : GoUInt16), (412 : GoUInt16), (420 : GoUInt16), (428 : GoUInt16),
	(433 : GoUInt16), (441 : GoUInt16), (446 : GoUInt16), (454 : GoUInt16)) : GoArray<GoUInt16>);

final valBool:CodeVal = (5 : CodeVal);
final valString:CodeVal = (5 : CodeVal);
final valInt64:CodeVal = (5 : CodeVal);
final valBigInt:CodeVal = (5 : CodeVal);
final valBigRat:CodeVal = (5 : CodeVal);
final valBigFloat:CodeVal = (5 : CodeVal);
final typeBasic:CodeType = (11 : CodeType);
final typeNamed:CodeType = (11 : CodeType);
final typePointer:CodeType = (11 : CodeType);
final typeSlice:CodeType = (11 : CodeType);
final typeArray:CodeType = (11 : CodeType);
final typeChan:CodeType = (11 : CodeType);
final typeMap:CodeType = (11 : CodeType);
final typeSignature:CodeType = (11 : CodeType);
final typeStruct:CodeType = (11 : CodeType);
final typeInterface:CodeType = (11 : CodeType);
final typeUnion:CodeType = (11 : CodeType);
final typeTypeParam:CodeType = (11 : CodeType);
final objAlias:CodeObj = (5 : CodeObj);
final objConst:CodeObj = (5 : CodeObj);
final objType:CodeObj = (5 : CodeObj);
final objFunc:CodeObj = (5 : CodeObj);
final objVar:CodeObj = (5 : CodeObj);
final objStub:CodeObj = (5 : CodeObj);

/**
	// Reserved indices within the meta relocation section.
**/
final publicRootIdx:Index = (0 : Index);

/**
	// Reserved indices within the meta relocation section.
**/
final privateRootIdx:Index = (1 : Index);

final relocString:RelocKind = (9 : RelocKind);
final relocMeta:RelocKind = (9 : RelocKind);
final relocPosBase:RelocKind = (9 : RelocKind);
final relocPkg:RelocKind = (9 : RelocKind);
final relocName:RelocKind = (9 : RelocKind);
final relocType:RelocKind = (9 : RelocKind);
final relocObj:RelocKind = (9 : RelocKind);
final relocObjExt:RelocKind = (9 : RelocKind);
final relocObjDict:RelocKind = (9 : RelocKind);
final relocBody:RelocKind = (9 : RelocKind);
private final _numRelocs:GoUInt64 = ("10" : GoUInt64);

/**
	// EnableSync controls whether sync markers are written into unified
	// IR's export data format and also whether they're expected when
	// reading them back in. They're inessential to the correct
	// functioning of unified IR, but are helpful during development to
	// detect mistakes.
	//
	// When sync is enabled, writer stack frames will also be included in
	// the export data. Currently, a fixed number of frames are included,
	// controlled by -d=syncframes (default 0).
**/
final enableSync:InvalidType = true;

private final _1:SyncMarker = (65 : SyncMarker);

/**
	// Low-level coding markers.
**/
final syncEOF:SyncMarker = (65 : SyncMarker);

final syncBool:SyncMarker = (65 : SyncMarker);
final syncInt64:SyncMarker = (65 : SyncMarker);
final syncUint64:SyncMarker = (65 : SyncMarker);
final syncString:SyncMarker = (65 : SyncMarker);
final syncValue:SyncMarker = (65 : SyncMarker);
final syncVal:SyncMarker = (65 : SyncMarker);
final syncRelocs:SyncMarker = (65 : SyncMarker);
final syncReloc:SyncMarker = (65 : SyncMarker);
final syncUseReloc:SyncMarker = (65 : SyncMarker);

/**
	// Higher-level object and type markers.
**/
final syncPublic:SyncMarker = (65 : SyncMarker);

final syncPos:SyncMarker = (65 : SyncMarker);
final syncPosBase:SyncMarker = (65 : SyncMarker);
final syncObject:SyncMarker = (65 : SyncMarker);
final syncObject1:SyncMarker = (65 : SyncMarker);
final syncPkg:SyncMarker = (65 : SyncMarker);
final syncPkgDef:SyncMarker = (65 : SyncMarker);
final syncMethod:SyncMarker = (65 : SyncMarker);
final syncType:SyncMarker = (65 : SyncMarker);
final syncTypeIdx:SyncMarker = (65 : SyncMarker);
final syncTypeParamNames:SyncMarker = (65 : SyncMarker);
final syncSignature:SyncMarker = (65 : SyncMarker);
final syncParams:SyncMarker = (65 : SyncMarker);
final syncParam:SyncMarker = (65 : SyncMarker);
final syncCodeObj:SyncMarker = (65 : SyncMarker);
final syncSym:SyncMarker = (65 : SyncMarker);
final syncLocalIdent:SyncMarker = (65 : SyncMarker);
final syncSelector:SyncMarker = (65 : SyncMarker);

/**
	// Private markers (only known to cmd/compile).
**/
final syncPrivate:SyncMarker = (65 : SyncMarker);

final syncFuncExt:SyncMarker = (65 : SyncMarker);
final syncVarExt:SyncMarker = (65 : SyncMarker);
final syncTypeExt:SyncMarker = (65 : SyncMarker);
final syncPragma:SyncMarker = (65 : SyncMarker);
final syncExprList:SyncMarker = (65 : SyncMarker);
final syncExprs:SyncMarker = (65 : SyncMarker);
final syncExpr:SyncMarker = (65 : SyncMarker);
final syncExprType:SyncMarker = (65 : SyncMarker);
final syncOp:SyncMarker = (65 : SyncMarker);
final syncFuncLit:SyncMarker = (65 : SyncMarker);
final syncCompLit:SyncMarker = (65 : SyncMarker);
final syncDecl:SyncMarker = (65 : SyncMarker);
final syncFuncBody:SyncMarker = (65 : SyncMarker);
final syncOpenScope:SyncMarker = (65 : SyncMarker);
final syncCloseScope:SyncMarker = (65 : SyncMarker);
final syncCloseAnotherScope:SyncMarker = (65 : SyncMarker);
final syncDeclNames:SyncMarker = (65 : SyncMarker);
final syncDeclName:SyncMarker = (65 : SyncMarker);
final syncStmts:SyncMarker = (65 : SyncMarker);
final syncBlockStmt:SyncMarker = (65 : SyncMarker);
final syncIfStmt:SyncMarker = (65 : SyncMarker);
final syncForStmt:SyncMarker = (65 : SyncMarker);
final syncSwitchStmt:SyncMarker = (65 : SyncMarker);
final syncRangeStmt:SyncMarker = (65 : SyncMarker);
final syncCaseClause:SyncMarker = (65 : SyncMarker);
final syncCommClause:SyncMarker = (65 : SyncMarker);
final syncSelectStmt:SyncMarker = (65 : SyncMarker);
final syncDecls:SyncMarker = (65 : SyncMarker);
final syncLabeledStmt:SyncMarker = (65 : SyncMarker);
final syncUseObjLocal:SyncMarker = (65 : SyncMarker);
final syncAddLocal:SyncMarker = (65 : SyncMarker);
final syncLinkname:SyncMarker = (65 : SyncMarker);
final syncStmt1:SyncMarker = (65 : SyncMarker);
final syncStmtsEnd:SyncMarker = (65 : SyncMarker);
final syncLabel:SyncMarker = (65 : SyncMarker);
final syncOptLabel:SyncMarker = (65 : SyncMarker);
private final __SyncMarker_name:GoString = ("EOFBoolInt64Uint64StringValueValRelocsRelocUseRelocPublicPosPosBaseObjectObject1PkgPkgDefMethodTypeTypeIdxTypeParamNamesSignatureParamsParamCodeObjSymLocalIdentSelectorPrivateFuncExtVarExtTypeExtPragmaExprListExprsExprAssertTypeOpFuncLitCompLitDeclFuncBodyOpenScopeCloseScopeCloseAnotherScopeDeclNamesDeclNameStmtsBlockStmtIfStmtForStmtSwitchStmtRangeStmtCaseClauseCommClauseSelectStmtDeclsLabeledStmtUseObjLocalAddLocalLinknameStmt1StmtsEndLabelOptLabel" : GoString);

/**
	// A Code is an enum value that can be encoded into bitstreams.
	//
	// Code types are preferable for enum types, because they allow
	// Decoder to detect desyncs.
**/
typedef Code = StructType & {
	/**
		// Marker returns the SyncMarker for the Code's dynamic type.
	**/
	public function marker():SyncMarker;

	/**
		// Value returns the Code's ordinal value.
	**/
	public function value():GoInt;
};

/**
	// A PkgDecoder provides methods for decoding a package's Unified IR
	// export data.
**/
@:structInit @:using(internal.pkgbits.Pkgbits.PkgDecoder_static_extension) class PkgDecoder {
	/**
		// pkgPath is the package path for the package to be decoded.
		//
		// TODO(mdempsky): Remove; unneeded since CL 391014.
	**/
	public var _pkgPath:GoString = "";

	/**
		// elemData is the full data payload of the encoded package.
		// Elements are densely and contiguously packed together.
		//
		// The last 8 bytes of elemData are the package fingerprint.
	**/
	public var _elemData:GoString = "";

	/**
		// elemEnds stores the byte-offset end positions of element
		// bitstreams within elemData.
		//
		// For example, element I's bitstream data starts at elemEnds[I-1]
		// (or 0, if I==0) and ends at elemEnds[I].
		//
		// Note: elemEnds is indexed by absolute indices, not
		// section-relative indices.
	**/
	public var _elemEnds:Slice<GoUInt32> = (null : Slice<GoUInt32>);

	/**
		// elemEndsEnds stores the index-offset end positions of relocation
		// sections within elemEnds.
		//
		// For example, section K's end positions start at elemEndsEnds[K-1]
		// (or 0, if K==0) and end at elemEndsEnds[K].
	**/
	public var _elemEndsEnds:GoArray<GoUInt32> = new GoArray<GoUInt32>(...[for (i in 0...10) (0 : GoUInt32)]);

	public function new(?_pkgPath:GoString, ?_elemData:GoString, ?_elemEnds:Slice<GoUInt32>, ?_elemEndsEnds:GoArray<GoUInt32>) {
		if (_pkgPath != null)
			this._pkgPath = _pkgPath;
		if (_elemData != null)
			this._elemData = _elemData;
		if (_elemEnds != null)
			this._elemEnds = _elemEnds;
		if (_elemEndsEnds != null)
			this._elemEndsEnds = _elemEndsEnds;
	}

	public function __underlying__()
		return Go.toInterface(this);

	public function __copy__() {
		return new PkgDecoder(_pkgPath, _elemData, _elemEnds, _elemEndsEnds);
	}
}

/**
	// A Decoder provides methods for decoding an individual element's
	// bitstream data.
**/
@:structInit @:using(internal.pkgbits.Pkgbits.Decoder_static_extension) class Decoder {
	public var _common:Ref<PkgDecoder> = (null : Ref<PkgDecoder>);
	public var relocs:Slice<RelocEnt> = (null : Slice<RelocEnt>);
	public var data:stdgo.strings.Strings.Reader = ({} : stdgo.strings.Strings.Reader);
	public var _k:RelocKind = ((0 : GoInt) : RelocKind);
	public var idx:Index = ((0 : GoInt) : Index);

	public function new(?_common:Ref<PkgDecoder>, ?relocs:Slice<RelocEnt>, ?data:stdgo.strings.Strings.Reader, ?_k:RelocKind, ?idx:Index) {
		if (_common != null)
			this._common = _common;
		if (relocs != null)
			this.relocs = relocs;
		if (data != null)
			this.data = data;
		if (_k != null)
			this._k = _k;
		if (idx != null)
			this.idx = idx;
	}

	public function __underlying__()
		return Go.toInterface(this);

	public function __copy__() {
		return new Decoder(_common, relocs, data, _k, idx);
	}
}

/**
	// A PkgEncoder provides methods for encoding a package's Unified IR
	// export data.
**/
@:structInit @:using(internal.pkgbits.Pkgbits.PkgEncoder_static_extension) class PkgEncoder {
	/**
		// elems holds the bitstream for previously encoded elements.
	**/
	public var _elems:GoArray<Slice<GoString>> = new GoArray<Slice<GoString>>(...[for (i in 0...10) (null : Slice<GoString>)]);

	/**
		// stringsIdx maps previously encoded strings to their index within
		// the RelocString section, to allow deduplication. That is,
		// elems[RelocString][stringsIdx[s]] == s (if present).
	**/
	public var _stringsIdx:GoMap<GoString, Index> = (null : GoMap<GoString, Index>);

	public var _syncFrames:GoInt = 0;

	public function new(?_elems:GoArray<Slice<GoString>>, ?_stringsIdx:GoMap<GoString, Index>, ?_syncFrames:GoInt) {
		if (_elems != null)
			this._elems = _elems;
		if (_stringsIdx != null)
			this._stringsIdx = _stringsIdx;
		if (_syncFrames != null)
			this._syncFrames = _syncFrames;
	}

	public function __underlying__()
		return Go.toInterface(this);

	public function __copy__() {
		return new PkgEncoder(_elems, _stringsIdx, _syncFrames);
	}
}

/**
	// An Encoder provides methods for encoding an individual element's
	// bitstream data.
**/
@:structInit @:using(internal.pkgbits.Pkgbits.Encoder_static_extension) class Encoder {
	public var _p:Ref<PkgEncoder> = (null : Ref<PkgEncoder>);
	public var relocs:Slice<RelocEnt> = (null : Slice<RelocEnt>);
	public var data:stdgo.bytes.Bytes.Buffer = ({} : stdgo.bytes.Bytes.Buffer);
	public var _encodingRelocHeader:Bool = false;
	public var _k:RelocKind = ((0 : GoInt) : RelocKind);
	public var idx:Index = ((0 : GoInt) : Index);

	public function new(?_p:Ref<PkgEncoder>, ?relocs:Slice<RelocEnt>, ?data:stdgo.bytes.Bytes.Buffer, ?_encodingRelocHeader:Bool, ?_k:RelocKind, ?idx:Index) {
		if (_p != null)
			this._p = _p;
		if (relocs != null)
			this.relocs = relocs;
		if (data != null)
			this.data = data;
		if (_encodingRelocHeader != null)
			this._encodingRelocHeader = _encodingRelocHeader;
		if (_k != null)
			this._k = _k;
		if (idx != null)
			this.idx = idx;
	}

	public function __underlying__()
		return Go.toInterface(this);

	public function __copy__() {
		return new Encoder(_p, relocs, data, _encodingRelocHeader, _k, idx);
	}
}

/**
	// A relocEnt (relocation entry) is an entry in an element's local
	// reference table.
	//
	// TODO(mdempsky): Rename this too.
**/
@:structInit class RelocEnt {
	public var kind:RelocKind = ((0 : GoInt) : RelocKind);
	public var idx:Index = ((0 : GoInt) : Index);

	public function new(?kind:RelocKind, ?idx:Index) {
		if (kind != null)
			this.kind = kind;
		if (idx != null)
			this.idx = idx;
	}

	public function __underlying__()
		return Go.toInterface(this);

	public function __copy__() {
		return new RelocEnt(kind, idx);
	}
}

class T__struct_0_asInterface {
	public function new(__self__, __type__) {
		this.__self__ = __self__;
		this.__type__ = __type__;
	}

	public function __underlying__()
		return new AnyInterface((__type__.kind() == stdgo.reflect.Reflect.ptr
			&& !stdgo.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic),
			__type__);

	var __self__:Pointer<T__struct_0>;
	var __type__:stdgo.internal.reflect.Reflect._Type;
}

@:keep @:allow(internal.pkgbits.Pkgbits.T__struct_0_asInterface) class T__struct_0_static_extension {}
@:local @:using(internal.pkgbits.Pkgbits.T__struct_0_static_extension) private typedef T__struct_0 = {};

/**
	// A CodeVal distinguishes among go/constant.Value encodings.
**/
@:named @:using(internal.pkgbits.Pkgbits.CodeVal_static_extension) typedef CodeVal = GoInt;

/**
	// A CodeType distinguishes among go/types.Type encodings.
**/
@:named @:using(internal.pkgbits.Pkgbits.CodeType_static_extension) typedef CodeType = GoInt;

/**
	// A CodeObj distinguishes among go/types.Object encodings.
**/
@:named @:using(internal.pkgbits.Pkgbits.CodeObj_static_extension) typedef CodeObj = GoInt;

/**
	// A RelocKind indicates a particular section within a unified IR export.
**/
@:named typedef RelocKind = GoInt;

/**
	// An Index represents a bitstream element index within a particular
	// section.
**/
@:named typedef Index = GoInt;

@:named private typedef T_frameVisitor = (GoString, GoInt, GoString, GoUIntptr) -> Void;

/**
	// SyncMarker is an enum type that represents markers that may be
	// written to export data to ensure the reader and writer stay
	// synchronized.
**/
@:named @:using(internal.pkgbits.Pkgbits.SyncMarker_static_extension) typedef SyncMarker = GoInt;

/**
	// NewPkgDecoder returns a PkgDecoder initialized to read the Unified
	// IR export data from input. pkgPath is the package path for the
	// compilation unit that produced the export data.
	//
	// TODO(mdempsky): Remove pkgPath parameter; unneeded since CL 391014.
**/
function newPkgDecoder(_pkgPath:GoString, _input:GoString):PkgDecoder {
	var _pr:PkgDecoder = ({_pkgPath: _pkgPath} : PkgDecoder);
	var _r = stdgo.strings.Strings.newReader(_input);
	var _version:GoUInt32 = (0 : GoUInt32);
	_assert(stdgo.encoding.binary.Binary.read(Go.asInterface(_r), Go.asInterface(stdgo.encoding.binary.Binary.littleEndian),
		Go.toInterface(Go.pointer(_version))) == null);
	_assert(_version == (("0" : GoUInt32)));
	_assert(stdgo.encoding.binary.Binary.read(Go.asInterface(_r), Go.asInterface(stdgo.encoding.binary.Binary.littleEndian),
		Go.toInterface((_pr._elemEndsEnds.__slice__(0) : Slice<GoUInt32>))) == null);
	_pr._elemEnds = new Slice<GoUInt32>((_pr._elemEndsEnds[(9 : GoInt)] : GoInt).toBasic(), 0,
		...[for (i in 0...(_pr._elemEndsEnds[(9 : GoInt)] : GoInt).toBasic()) (0 : GoUInt32)]);
	_assert(stdgo.encoding.binary.Binary.read(Go.asInterface(_r), Go.asInterface(stdgo.encoding.binary.Binary.littleEndian),
		Go.toInterface((_pr._elemEnds.__slice__(0) : Slice<GoUInt32>))) == null);
	var __tmp__ = _r.seek(("0" : GoInt64), (1 : GoInt)),
		_pos:GoInt64 = __tmp__._0,
		_err:Error = __tmp__._1;
	_assert(_err == null);
	_pr._elemData = (_input.__slice__(_pos) : GoString);
	_assert((_pr._elemData.length) - (8 : GoInt) == ((_pr._elemEnds[((_pr._elemEnds.length) - (1 : GoInt) : GoInt)] : GoInt)));
	return (_pr == null ? null : _pr.__copy__());
}

/**
	// NewPkgEncoder returns an initialized PkgEncoder.
	//
	// syncFrames is the number of caller frames that should be serialized
	// at Sync points. Serializing additional frames results in larger
	// export data files, but can help diagnosing desync errors in
	// higher-level Unified IR reader/writer code.
**/
function newPkgEncoder(_syncFrames:GoInt):PkgEncoder {
	return ({_stringsIdx: (new GoObjectMap<GoString, Index>(new stdgo.internal.reflect.Reflect._Type(stdgo.internal.reflect.Reflect.GoType.mapType({get: () ->
		stdgo.internal.reflect.Reflect.GoType.basic(string_kind)},
		{get: () -> stdgo.internal.reflect.Reflect.GoType.named("Index", [], null, false,
			{get: () -> null})}))) : GoMap<GoString, Index>), _syncFrames: _syncFrames} : PkgEncoder);
}

/**
	// walkFrames calls visit for each call frame represented by pcs.
	//
	// pcs should be a slice of PCs, as returned by runtime.Callers.
**/
private function _walkFrames(_pcs:Slice<GoUIntptr>, _visit:T_frameVisitor):Void {
	if ((_pcs.length) == ((0 : GoInt))) {
		return;
	};
	var _frames = stdgo.runtime.Runtime.callersFrames(_pcs);
	while (true) {
		var __tmp__ = _frames.next(),
			_frame:stdgo.runtime.Runtime.Frame = __tmp__._0,
			_more:Bool = __tmp__._1;
		_visit(_frame.file, _frame.line, _frame.function_, _frame.pc - _frame.entry);
		if (!_more) {
			return;
		};
	};
}

private function _assert(_b:Bool):Void {
	if (!_b) {
		throw Go.toInterface(("assertion failed" : GoString));
	};
}

private function _errorf(_format:GoString, _args:haxe.Rest<AnyInterface>):Void {
	var _args = new Slice<AnyInterface>(0, 0, ..._args);
	throw Go.toInterface(stdgo.fmt.Fmt.errorf(_format, ..._args.__toArray__()));
}

/**
	// fmtFrames formats a backtrace for reporting reader/writer desyncs.
**/
private function _fmtFrames(_pcs:haxe.Rest<GoUIntptr>):Slice<GoString> {
	var _pcs = new Slice<GoUIntptr>(0, 0, ..._pcs);
	var _res = new Slice<GoString>((0 : GoInt).toBasic(), (_pcs.length), ...[for (i in 0...(0 : GoInt).toBasic()) ("" : GoString)]);
	_walkFrames(_pcs, function(_file:GoString, _line:GoInt, _name:GoString, _offset:GoUIntptr):Void {
		_name = stdgo.strings.Strings.trimPrefix(_name, ("cmd/compile/internal/noder." : GoString));
		_res = _res.__appendref__(stdgo.fmt.Fmt.sprintf(("%s:%v: %s +0x%v" : GoString), Go.toInterface(_file), Go.toInterface(_line), Go.toInterface(_name),
			Go.toInterface(_offset)));
	});
	return _res;
}

class PkgDecoder_asInterface {
	/**
		// PeekObj returns the package path, object name, and CodeObj for the
		// specified object index.
	**/
	@:keep
	public function peekObj(_idx:Index):{var _0:GoString; var _1:GoString; var _2:CodeObj;}
		return __self__.value.peekObj(_idx);

	/**
		// PeekPkgPath returns the package path for the specified package
		// index.
	**/
	@:keep
	public function peekPkgPath(_idx:Index):GoString
		return __self__.value.peekPkgPath(_idx);

	/**
		// NewDecoderRaw returns a Decoder for the given (section, index) pair.
		//
		// Most callers should use NewDecoder instead.
	**/
	@:keep
	public function newDecoderRaw(_k:RelocKind, _idx:Index):Decoder
		return __self__.value.newDecoderRaw(_k, _idx);

	/**
		// NewDecoder returns a Decoder for the given (section, index) pair,
		// and decodes the given SyncMarker from the element bitstream.
	**/
	@:keep
	public function newDecoder(_k:RelocKind, _idx:Index, _marker:SyncMarker):Decoder
		return __self__.value.newDecoder(_k, _idx, _marker);

	/**
		// StringIdx returns the string value for the given string index.
	**/
	@:keep
	public function stringIdx(_idx:Index):GoString
		return __self__.value.stringIdx(_idx);

	/**
		// DataIdx returns the raw element bitstream for the given (section,
		// index) pair.
	**/
	@:keep
	public function dataIdx(_k:RelocKind, _idx:Index):GoString
		return __self__.value.dataIdx(_k, _idx);

	/**
		// AbsIdx returns the absolute index for the given (section, index)
		// pair.
	**/
	@:keep
	public function absIdx(_k:RelocKind, _idx:Index):GoInt
		return __self__.value.absIdx(_k, _idx);

	/**
		// Fingerprint returns the package fingerprint.
	**/
	@:keep
	public function fingerprint():GoArray<GoByte>
		return __self__.value.fingerprint();

	/**
		// TotalElems returns the total number of elements across all sections.
	**/
	@:keep
	public function totalElems():GoInt
		return __self__.value.totalElems();

	/**
		// NumElems returns the number of elements in section k.
	**/
	@:keep
	public function numElems(_k:RelocKind):GoInt
		return __self__.value.numElems(_k);

	/**
		// PkgPath returns the package path for the package
		//
		// TODO(mdempsky): Remove; unneeded since CL 391014.
	**/
	@:keep
	public function pkgPath():GoString
		return __self__.value.pkgPath();

	public function new(__self__, __type__) {
		this.__self__ = __self__;
		this.__type__ = __type__;
	}

	public function __underlying__()
		return new AnyInterface((__type__.kind() == stdgo.reflect.Reflect.ptr
			&& !stdgo.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic),
			__type__);

	var __self__:Pointer<PkgDecoder>;
	var __type__:stdgo.internal.reflect.Reflect._Type;
}

@:keep @:allow(internal.pkgbits.Pkgbits.PkgDecoder_asInterface) class PkgDecoder_static_extension {
	/**
		// PeekObj returns the package path, object name, and CodeObj for the
		// specified object index.
	**/
	@:keep
	static public function peekObj(_pr:Ref<PkgDecoder>, _idx:Index):{var _0:GoString; var _1:GoString; var _2:CodeObj;} {
		var _r:Decoder = (_pr.newDecoder((4 : RelocKind), _idx,
			(15 : SyncMarker)) == null ? null : _pr.newDecoder((4 : RelocKind), _idx, (15 : SyncMarker)).__copy__());
		_r.sync((26 : SyncMarker));
		_r.sync((16 : SyncMarker));
		var _path:GoString = _pr.peekPkgPath(_r.reloc((3 : RelocKind)));
		var _name:GoString = (_r.string() : GoString);
		_assert(_name != (Go.str()));
		var _tag:CodeObj = (_r.code((25 : SyncMarker)) : CodeObj);
		return {_0: _path, _1: _name, _2: _tag};
	}

	/**
		// PeekPkgPath returns the package path for the specified package
		// index.
	**/
	@:keep
	static public function peekPkgPath(_pr:Ref<PkgDecoder>, _idx:Index):GoString {
		var _r:Decoder = (_pr.newDecoder((3 : RelocKind), _idx,
			(17 : SyncMarker)) == null ? null : _pr.newDecoder((3 : RelocKind), _idx, (17 : SyncMarker)).__copy__());
		var _path:GoString = (_r.string() : GoString);
		if (_path == (Go.str())) {
			_path = _pr._pkgPath;
		};
		return _path;
	}

	/**
		// NewDecoderRaw returns a Decoder for the given (section, index) pair.
		//
		// Most callers should use NewDecoder instead.
	**/
	@:keep
	static public function newDecoderRaw(_pr:Ref<PkgDecoder>, _k:RelocKind, _idx:Index):Decoder {
		var _r:Decoder = ({_common: _pr, _k: _k, idx: _idx} : Decoder);
		_r.data = (stdgo.strings.Strings.newReader(_pr.dataIdx(_k, _idx)) == null ? null : stdgo.strings.Strings.newReader(_pr.dataIdx(_k, _idx)).__copy__());
		_r.sync((8 : SyncMarker));
		_r.relocs = new Slice<RelocEnt>((_r.len() : GoInt).toBasic(), 0, ...[for (i in 0...(_r.len() : GoInt).toBasic()) ({} : RelocEnt)]);
		for (_i in 0..._r.relocs.length.toBasic()) {
			_r.sync((9 : SyncMarker));
			_r.relocs[(_i : GoInt)] = (new RelocEnt((_r.len() : RelocKind), (_r.len() : Index)) : RelocEnt);
		};
		return (_r == null ? null : _r.__copy__());
	}

	/**
		// NewDecoder returns a Decoder for the given (section, index) pair,
		// and decodes the given SyncMarker from the element bitstream.
	**/
	@:keep
	static public function newDecoder(_pr:Ref<PkgDecoder>, _k:RelocKind, _idx:Index, _marker:SyncMarker):Decoder {
		var _r:Decoder = (_pr.newDecoderRaw(_k, _idx) == null ? null : _pr.newDecoderRaw(_k, _idx).__copy__());
		_r.sync(_marker);
		return (_r == null ? null : _r.__copy__());
	}

	/**
		// StringIdx returns the string value for the given string index.
	**/
	@:keep
	static public function stringIdx(_pr:Ref<PkgDecoder>, _idx:Index):GoString {
		return _pr.dataIdx((0 : RelocKind), _idx);
	}

	/**
		// DataIdx returns the raw element bitstream for the given (section,
		// index) pair.
	**/
	@:keep
	static public function dataIdx(_pr:Ref<PkgDecoder>, _k:RelocKind, _idx:Index):GoString {
		var _absIdx:GoInt = _pr.absIdx(_k, _idx);
		var _start:GoUInt32 = (0 : GoUInt32);
		if (_absIdx > (0 : GoInt)) {
			_start = _pr._elemEnds[(_absIdx - (1 : GoInt) : GoInt)];
		};
		var _end:GoUInt32 = _pr._elemEnds[(_absIdx : GoInt)];
		return (_pr._elemData.__slice__(_start, _end) : GoString);
	}

	/**
		// AbsIdx returns the absolute index for the given (section, index)
		// pair.
	**/
	@:keep
	static public function absIdx(_pr:Ref<PkgDecoder>, _k:RelocKind, _idx:Index):GoInt {
		var _absIdx:GoInt = (_idx : GoInt);
		if (_k > (0 : RelocKind)) {
			_absIdx = _absIdx + ((_pr._elemEndsEnds[(_k - (1 : RelocKind) : GoInt)] : GoInt));
		};
		if (_absIdx >= (_pr._elemEndsEnds[(_k : GoInt)] : GoInt)) {
			_errorf(("%v:%v is out of bounds; %v" : GoString), Go.toInterface(_k), Go.toInterface(_idx), Go.toInterface(_pr._elemEndsEnds));
		};
		return _absIdx;
	}

	/**
		// Fingerprint returns the package fingerprint.
	**/
	@:keep
	static public function fingerprint(_pr:Ref<PkgDecoder>):GoArray<GoByte> {
		var _fp:GoArray<GoByte> = new GoArray<GoUInt8>(...[for (i in 0...8) (0 : GoUInt8)]);
		Go.copySlice((_fp.__slice__(0) : Slice<GoUInt8>), (_pr._elemData.__slice__((_pr._elemData.length) - (8 : GoInt)) : GoString));
		return (_fp == null ? null : _fp.__copy__());
	}

	/**
		// TotalElems returns the total number of elements across all sections.
	**/
	@:keep
	static public function totalElems(_pr:Ref<PkgDecoder>):GoInt {
		return (_pr._elemEnds.length);
	}

	/**
		// NumElems returns the number of elements in section k.
	**/
	@:keep
	static public function numElems(_pr:Ref<PkgDecoder>, _k:RelocKind):GoInt {
		var _count:GoInt = (_pr._elemEndsEnds[(_k : GoInt)] : GoInt);
		if (_k > (0 : RelocKind)) {
			_count = _count - ((_pr._elemEndsEnds[(_k - (1 : RelocKind) : GoInt)] : GoInt));
		};
		return _count;
	}

	/**
		// PkgPath returns the package path for the package
		//
		// TODO(mdempsky): Remove; unneeded since CL 391014.
	**/
	@:keep
	static public function pkgPath(_pr:Ref<PkgDecoder>):GoString {
		return _pr._pkgPath;
	}
}

class Decoder_asInterface {
	@:keep
	public function _bigFloat():Ref<stdgo.math.big.Big.Float_>
		return __self__.value._bigFloat();

	@:keep
	public function _bigInt():Ref<stdgo.math.big.Big.Int_>
		return __self__.value._bigInt();

	@:keep
	public function _scalar():stdgo.go.constant.Constant.Value
		return __self__.value._scalar();

	/**
		// Value decodes and returns a constant.Value from the element
		// bitstream.
	**/
	@:keep
	public function value():stdgo.go.constant.Constant.Value
		return __self__.value.value();

	/**
		// Strings decodes and returns a variable-length slice of strings from
		// the element bitstream.
	**/
	@:keep
	public function strings():Slice<GoString>
		return __self__.value.strings();

	/**
		// String decodes and returns a string value from the element
		// bitstream.
	**/
	@:keep
	public function string():GoString
		return __self__.value.string();

	/**
		// Reloc decodes a relocation of expected section k from the element
		// bitstream and returns an index to the referenced element.
	**/
	@:keep
	public function reloc(_k:RelocKind):Index
		return __self__.value.reloc(_k);

	/**
		// Code decodes a Code value from the element bitstream and returns
		// its ordinal value. It's the caller's responsibility to convert the
		// result to an appropriate Code type.
		//
		// TODO(mdempsky): Ideally this method would have signature "Code[T
		// Code] T" instead, but we don't allow generic methods and the
		// compiler can't depend on generics yet anyway.
	**/
	@:keep
	public function code(_mark:SyncMarker):GoInt
		return __self__.value.code(_mark);

	/**
		// Uint decodes and returns a uint value from the element bitstream.
	**/
	@:keep
	public function uint():GoUInt
		return __self__.value.uint();

	/**
		// Int decodes and returns an int value from the element bitstream.
	**/
	@:keep
	public function int_():GoInt
		return __self__.value.int_();

	/**
		// Len decodes and returns a non-negative int value from the element bitstream.
	**/
	@:keep
	public function len():GoInt
		return __self__.value.len();

	/**
		// Int64 decodes and returns a uint64 value from the element bitstream.
	**/
	@:keep
	public function uint64():GoUInt64
		return __self__.value.uint64();

	/**
		// Int64 decodes and returns an int64 value from the element bitstream.
	**/
	@:keep
	public function int64():GoInt64
		return __self__.value.int64();

	/**
		// Bool decodes and returns a bool value from the element bitstream.
	**/
	@:keep
	public function bool_():Bool
		return __self__.value.bool_();

	/**
		// Sync decodes a sync marker from the element bitstream and asserts
		// that it matches the expected marker.
		//
		// If EnableSync is false, then Sync is a no-op.
	**/
	@:keep
	public function sync(_mWant:SyncMarker):Void
		__self__.value.sync(_mWant);

	@:keep
	public function _rawReloc(_k:RelocKind, _idx:GoInt):Index
		return __self__.value._rawReloc(_k, _idx);

	@:keep
	public function _rawVarint():GoInt64
		return __self__.value._rawVarint();

	@:keep
	public function _rawUvarint():GoUInt64
		return __self__.value._rawUvarint();

	@:keep
	public function _checkErr(_err:Error):Void
		__self__.value._checkErr(_err);

	public function new(__self__, __type__) {
		this.__self__ = __self__;
		this.__type__ = __type__;
	}

	public function __underlying__()
		return new AnyInterface((__type__.kind() == stdgo.reflect.Reflect.ptr
			&& !stdgo.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic),
			__type__);

	var __self__:Pointer<Decoder>;
	var __type__:stdgo.internal.reflect.Reflect._Type;
}

@:keep @:allow(internal.pkgbits.Pkgbits.Decoder_asInterface) class Decoder_static_extension {
	@:keep
	static public function _bigFloat(_r:Ref<Decoder>):Ref<stdgo.math.big.Big.Float_> {
		var _v = ({} : stdgo.math.big.Big.Float_).setPrec(("512" : GoUInt));
		_assert(_v.unmarshalText(((_r.string() : GoString) : Slice<GoByte>)) == null);
		return _v;
	}

	@:keep
	static public function _bigInt(_r:Ref<Decoder>):Ref<stdgo.math.big.Big.Int_> {
		var _v = ({} : stdgo.math.big.Big.Int_).setBytes(((_r.string() : GoString) : Slice<GoByte>));
		if (_r.bool_()) {
			_v.neg(_v);
		};
		return _v;
	}

	@:keep
	static public function _scalar(_r:Ref<Decoder>):stdgo.go.constant.Constant.Value {
		{
			var _tag:CodeVal = (_r.code((7 : SyncMarker)) : CodeVal);
			if (_tag == ((0 : CodeVal))) {
				return stdgo.go.constant.Constant.makeBool(_r.bool_());
			} else if (_tag == ((1 : CodeVal))) {
				return stdgo.go.constant.Constant.makeString((_r.string() : GoString));
			} else if (_tag == ((2 : CodeVal))) {
				return stdgo.go.constant.Constant.makeInt64(_r.int64());
			} else if (_tag == ((3 : CodeVal))) {
				return stdgo.go.constant.Constant.make(Go.toInterface(Go.asInterface(_r._bigInt())));
			} else if (_tag == ((4 : CodeVal))) {
				var _num = _r._bigInt();
				var _denom = _r._bigInt();
				return stdgo.go.constant.Constant.make(Go.toInterface(Go.asInterface(({} : stdgo.math.big.Big.Rat).setFrac(_num, _denom))));
			} else if (_tag == ((5 : CodeVal))) {
				return stdgo.go.constant.Constant.make(Go.toInterface(Go.asInterface(_r._bigFloat())));
			};
		};
	}

	/**
		// Value decodes and returns a constant.Value from the element
		// bitstream.
	**/
	@:keep
	static public function value(_r:Ref<Decoder>):stdgo.go.constant.Constant.Value {
		_r.sync((6 : SyncMarker));
		var _isComplex:Bool = _r.bool_();
		var _val:stdgo.go.constant.Constant.Value = _r._scalar();
		if (_isComplex) {
			_val = stdgo.go.constant.Constant.binaryOp(_val, (12 : stdgo.go.token.Token.Token), stdgo.go.constant.Constant.makeImag(_r._scalar()));
		};
		return _val;
	}

	/**
		// Strings decodes and returns a variable-length slice of strings from
		// the element bitstream.
	**/
	@:keep
	static public function strings(_r:Ref<Decoder>):Slice<GoString> {
		var _res = new Slice<GoString>((_r.len() : GoInt).toBasic(), 0, ...[for (i in 0...(_r.len() : GoInt).toBasic()) ("" : GoString)]);
		for (_i in 0..._res.length.toBasic()) {
			_res[(_i : GoInt)] = (_r.string() : GoString);
		};
		return _res;
	}

	/**
		// String decodes and returns a string value from the element
		// bitstream.
	**/
	@:keep
	static public function string(_r:Ref<Decoder>):GoString {
		_r.sync((5 : SyncMarker));
		return _r._common.stringIdx(_r.reloc((0 : RelocKind)));
	}

	/**
		// Reloc decodes a relocation of expected section k from the element
		// bitstream and returns an index to the referenced element.
	**/
	@:keep
	static public function reloc(_r:Ref<Decoder>, _k:RelocKind):Index {
		_r.sync((10 : SyncMarker));
		return _r._rawReloc(_k, _r.len());
	}

	/**
		// Code decodes a Code value from the element bitstream and returns
		// its ordinal value. It's the caller's responsibility to convert the
		// result to an appropriate Code type.
		//
		// TODO(mdempsky): Ideally this method would have signature "Code[T
		// Code] T" instead, but we don't allow generic methods and the
		// compiler can't depend on generics yet anyway.
	**/
	@:keep
	static public function code(_r:Ref<Decoder>, _mark:SyncMarker):GoInt {
		_r.sync(_mark);
		return _r.len();
	}

	/**
		// Uint decodes and returns a uint value from the element bitstream.
	**/
	@:keep
	static public function uint(_r:Ref<Decoder>):GoUInt {
		var _x:GoUInt64 = _r.uint64();
		var _v:GoUInt = (_x : GoUInt);
		_assert((_v : GoUInt64) == (_x));
		return _v;
	}

	/**
		// Int decodes and returns an int value from the element bitstream.
	**/
	@:keep
	static public function int_(_r:Ref<Decoder>):GoInt {
		var _x:GoInt64 = _r.int64();
		var _v:GoInt = (_x : GoInt);
		_assert((_v : GoInt64) == (_x));
		return _v;
	}

	/**
		// Len decodes and returns a non-negative int value from the element bitstream.
	**/
	@:keep
	static public function len(_r:Ref<Decoder>):GoInt {
		var _x:GoUInt64 = _r.uint64();
		var _v:GoInt = (_x : GoInt);
		_assert((_v : GoUInt64) == (_x));
		return _v;
	}

	/**
		// Int64 decodes and returns a uint64 value from the element bitstream.
	**/
	@:keep
	static public function uint64(_r:Ref<Decoder>):GoUInt64 {
		_r.sync((4 : SyncMarker));
		return _r._rawUvarint();
	}

	/**
		// Int64 decodes and returns an int64 value from the element bitstream.
	**/
	@:keep
	static public function int64(_r:Ref<Decoder>):GoInt64 {
		_r.sync((3 : SyncMarker));
		return _r._rawVarint();
	}

	/**
		// Bool decodes and returns a bool value from the element bitstream.
	**/
	@:keep
	static public function bool_(_r:Ref<Decoder>):Bool {
		_r.sync((2 : SyncMarker));
		var __tmp__ = _r.data.readByte(),
			_x:GoUInt8 = __tmp__._0,
			_err:Error = __tmp__._1;
		_r._checkErr(_err);
		_assert(_x < (2:GoUInt8));
		return _x != ((0 : GoUInt8));
	}

	/**
		// Sync decodes a sync marker from the element bitstream and asserts
		// that it matches the expected marker.
		//
		// If EnableSync is false, then Sync is a no-op.
	**/
	@:keep
	static public function sync(_r:Ref<Decoder>, _mWant:SyncMarker):Void {
		if (false) {
			return;
		};
		var __tmp__ = _r.data.seek(("0" : GoInt64), (1 : GoInt)),
			_pos:GoInt64 = __tmp__._0,
			_0:Error = __tmp__._1;
		var _mHave:SyncMarker = (_r._rawUvarint() : SyncMarker);
		var _writerPCs = new Slice<GoInt>((_r._rawUvarint() : GoInt).toBasic(), 0, ...[for (i in 0...(_r._rawUvarint() : GoInt).toBasic()) (0 : GoInt)]);
		for (_i in 0..._writerPCs.length.toBasic()) {
			_writerPCs[(_i : GoInt)] = (_r._rawUvarint() : GoInt);
		};
		if (_mHave == (_mWant)) {
			return;
		};
		stdgo.fmt.Fmt.printf(("export data desync: package %q, section %v, index %v, offset %v\n" : GoString), Go.toInterface(_r._common._pkgPath),
			Go.toInterface(_r._k), Go.toInterface(_r.idx), Go.toInterface(_pos));
		stdgo.fmt.Fmt.printf(("\nfound %v, written at:\n" : GoString), Go.toInterface(Go.asInterface(_mHave)));
		if ((_writerPCs.length) == ((0 : GoInt))) {
			stdgo.fmt.Fmt.printf(("\t[stack trace unavailable; recompile package %q with -d=syncframes]\n" : GoString), Go.toInterface(_r._common._pkgPath));
		};
		for (_1 => _pc in _writerPCs) {
			stdgo.fmt.Fmt.printf(("\t%s\n" : GoString), Go.toInterface(_r._common.stringIdx(_r._rawReloc((0 : RelocKind), _pc))));
		};
		stdgo.fmt.Fmt.printf(("\nexpected %v, reading at:\n" : GoString), Go.toInterface(Go.asInterface(_mWant)));
		var _readerPCs:GoArray<GoUIntptr> = new GoArray<GoUIntptr>(...[for (i in 0...32) (0 : GoUIntptr)]);
		var _n:GoInt = stdgo.runtime.Runtime.callers((2 : GoInt), (_readerPCs.__slice__(0) : Slice<GoUIntptr>));
		for (_2 => _pc in _fmtFrames(...(_readerPCs.__slice__(0, _n) : Slice<GoUIntptr>).__toArray__())) {
			stdgo.fmt.Fmt.printf(("\t%s\n" : GoString), Go.toInterface(_pc));
		};
		Sys.exit((1 : GoInt));
	}

	@:keep
	static public function _rawReloc(_r:Ref<Decoder>, _k:RelocKind, _idx:GoInt):Index {
		var _e:RelocEnt = (_r.relocs[(_idx : GoInt)] == null ? null : _r.relocs[(_idx : GoInt)].__copy__());
		_assert(_e.kind == (_k));
		return _e.idx;
	}

	@:keep
	static public function _rawVarint(_r:Ref<Decoder>):GoInt64 {
		var _ux:GoUInt64 = _r._rawUvarint();
		var _x:GoInt64 = (_ux >> ("1" : GoUInt64) : GoInt64);
		if (_ux & ("1" : GoUInt64) != (("0" : GoUInt64))) {
			_x = (-1 ^ _x);
		};
		return _x;
	}

	@:keep
	static public function _rawUvarint(_r:Ref<Decoder>):GoUInt64 {
		var __tmp__ = stdgo.encoding.binary.Binary.readUvarint(Go.asInterface((_r.data : Ref<stdgo.strings.Strings.Reader>))),
			_x:GoUInt64 = __tmp__._0,
			_err:Error = __tmp__._1;
		_r._checkErr(_err);
		return _x;
	}

	@:keep
	static public function _checkErr(_r:Ref<Decoder>, _err:Error):Void {
		if (_err != null) {
			_errorf(("unexpected decoding error: %w" : GoString), Go.toInterface(_err));
		};
	}
}

class PkgEncoder_asInterface {
	/**
		// NewEncoderRaw returns an Encoder for a new element within the given
		// section.
		//
		// Most callers should use NewEncoder instead.
	**/
	@:keep
	public function newEncoderRaw(_k:RelocKind):Encoder
		return __self__.value.newEncoderRaw(_k);

	/**
		// NewEncoder returns an Encoder for a new element within the given
		// section, and encodes the given SyncMarker as the start of the
		// element bitstream.
	**/
	@:keep
	public function newEncoder(_k:RelocKind, _marker:SyncMarker):Encoder
		return __self__.value.newEncoder(_k, _marker);

	/**
		// StringIdx adds a string value to the strings section, if not
		// already present, and returns its index.
	**/
	@:keep
	public function stringIdx(_s:GoString):Index
		return __self__.value.stringIdx(_s);

	/**
		// DumpTo writes the package's encoded data to out0 and returns the
		// package fingerprint.
	**/
	@:keep
	public function dumpTo(_out0:stdgo.io.Io.Writer):GoArray<GoByte>
		return __self__.value.dumpTo(_out0);

	public function new(__self__, __type__) {
		this.__self__ = __self__;
		this.__type__ = __type__;
	}

	public function __underlying__()
		return new AnyInterface((__type__.kind() == stdgo.reflect.Reflect.ptr
			&& !stdgo.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic),
			__type__);

	var __self__:Pointer<PkgEncoder>;
	var __type__:stdgo.internal.reflect.Reflect._Type;
}

@:keep @:allow(internal.pkgbits.Pkgbits.PkgEncoder_asInterface) class PkgEncoder_static_extension {
	/**
		// NewEncoderRaw returns an Encoder for a new element within the given
		// section.
		//
		// Most callers should use NewEncoder instead.
	**/
	@:keep
	static public function newEncoderRaw(_pw:Ref<PkgEncoder>, _k:RelocKind):Encoder {
		var _idx:Index = (_pw._elems[(_k : GoInt)].length : Index);
		_pw._elems[(_k : GoInt)] = _pw._elems[(_k : GoInt)].__appendref__(Go.str());
		return ({_p: _pw, _k: _k, idx: _idx} : Encoder);
	}

	/**
		// NewEncoder returns an Encoder for a new element within the given
		// section, and encodes the given SyncMarker as the start of the
		// element bitstream.
	**/
	@:keep
	static public function newEncoder(_pw:Ref<PkgEncoder>, _k:RelocKind, _marker:SyncMarker):Encoder {
		var _e:Encoder = (_pw.newEncoderRaw(_k) == null ? null : _pw.newEncoderRaw(_k).__copy__());
		_e.sync(_marker);
		return (_e == null ? null : _e.__copy__());
	}

	/**
		// StringIdx adds a string value to the strings section, if not
		// already present, and returns its index.
	**/
	@:keep
	static public function stringIdx(_pw:Ref<PkgEncoder>, _s:GoString):Index {
		{
			var __tmp__ = (_pw._stringsIdx != null
				&& _pw._stringsIdx.__exists__(_s) ? {value: _pw._stringsIdx[_s], ok: true} : {value: ((0 : GoInt) : Index), ok: false}),
				_idx:Index = __tmp__.value,
				_ok:Bool = __tmp__.ok;
			if (_ok) {
				_assert(_pw._elems[((0 : RelocKind) : GoInt)][(_idx : GoInt)] == (_s));
				return _idx;
			};
		};
		var _idx:Index = (_pw._elems[((0 : RelocKind) : GoInt)].length : Index);
		_pw._elems[((0 : RelocKind) : GoInt)] = _pw._elems[((0 : RelocKind) : GoInt)].__appendref__(_s);
		_pw._stringsIdx[_s] = _idx;
		return _idx;
	}

	/**
		// DumpTo writes the package's encoded data to out0 and returns the
		// package fingerprint.
	**/
	@:keep
	static public function dumpTo(_pw:Ref<PkgEncoder>, _out0:stdgo.io.Io.Writer):GoArray<GoByte> {
		var _fingerprint:GoArray<GoByte> = new GoArray<GoUInt8>(...[for (i in 0...8) (0 : GoUInt8)]);
		var _h:stdgo.hash.Hash.Hash = stdgo.crypto.md5.Md5.new_();
		var _out:stdgo.io.Io.Writer = stdgo.io.Io.multiWriter(_out0, _h);
		var _writeUint32:GoUInt32->Void = function(_x:GoUInt32):Void {
			_assert(stdgo.encoding.binary.Binary.write(_out, Go.asInterface(stdgo.encoding.binary.Binary.littleEndian), Go.toInterface(_x)) == null);
		};
		_writeUint32(("0" : GoUInt32));
		var _sum:GoUInt32 = (0 : GoUInt32);
		for (_0 => _elems in (_pw._elems : Ref<GoArray<Slice<GoString>>>)) {
			_sum = _sum + ((_elems.length : GoUInt32));
			_writeUint32(_sum);
		};
		_sum = ("0" : GoUInt32);
		for (_1 => _elems in (_pw._elems : Ref<GoArray<Slice<GoString>>>)) {
			for (_2 => _elem in _elems) {
				_sum = _sum + ((_elem.length : GoUInt32));
				_writeUint32(_sum);
			};
		};
		for (_3 => _elems in (_pw._elems : Ref<GoArray<Slice<GoString>>>)) {
			for (_4 => _elem in _elems) {
				var __tmp__ = stdgo.io.Io.writeString(_out, _elem),
					_5:GoInt = __tmp__._0,
					_err:Error = __tmp__._1;
				_assert(_err == null);
			};
		};
		Go.copySlice((_fingerprint.__slice__(0) : Slice<GoUInt8>), _h.sum((null : Slice<GoUInt8>)));
		var __tmp__ = _out0.write((_fingerprint.__slice__(0) : Slice<GoUInt8>)),
			_6:GoInt = __tmp__._0,
			_err:Error = __tmp__._1;
		_assert(_err == null);
		return _fingerprint;
	}
}

class Encoder_asInterface {
	@:keep
	public function _bigFloat(_v:Ref<stdgo.math.big.Big.Float_>):Void
		__self__.value._bigFloat(_v);

	@:keep
	public function _bigInt(_v:Ref<stdgo.math.big.Big.Int_>):Void
		__self__.value._bigInt(_v);

	@:keep
	public function _scalar(_val:stdgo.go.constant.Constant.Value):Void
		__self__.value._scalar(_val);

	/**
		// Value encodes and writes a constant.Value into the element
		// bitstream.
	**/
	@:keep
	public function value(_val:stdgo.go.constant.Constant.Value):Void
		__self__.value.value(_val);

	/**
		// Strings encodes and writes a variable-length slice of strings into
		// the element bitstream.
	**/
	@:keep
	public function strings(_ss:Slice<GoString>):Void
		__self__.value.strings(_ss);

	/**
		// String encodes and writes a string value into the element
		// bitstream.
		//
		// Internally, strings are deduplicated by adding them to the strings
		// section (if not already present), and then writing a relocation
		// into the element bitstream.
	**/
	@:keep
	public function string(_s:GoString):Void
		__self__.value.string(_s);

	/**
		// Code encodes and writes a Code value into the element bitstream.
	**/
	@:keep
	public function code(_c:Code):Void
		__self__.value.code(_c);

	/**
		// Reloc encodes and writes a relocation for the given (section,
		// index) pair into the element bitstream.
		//
		// Note: Only the index is formally written into the element
		// bitstream, so bitstream decoders must know from context which
		// section an encoded relocation refers to.
	**/
	@:keep
	public function reloc(_r:RelocKind, _idx:Index):Void
		__self__.value.reloc(_r, _idx);

	/**
		// Len encodes and writes a uint value into the element bitstream.
	**/
	@:keep
	public function uint(_x:GoUInt):Void
		__self__.value.uint(_x);

	/**
		// Int encodes and writes an int value into the element bitstream.
	**/
	@:keep
	public function int_(_x:GoInt):Void
		__self__.value.int_(_x);

	/**
		// Len encodes and writes a non-negative int value into the element bitstream.
	**/
	@:keep
	public function len(_x:GoInt):Void
		__self__.value.len(_x);

	/**
		// Uint64 encodes and writes a uint64 value into the element bitstream.
	**/
	@:keep
	public function uint64(_x:GoUInt64):Void
		__self__.value.uint64(_x);

	/**
		// Int64 encodes and writes an int64 value into the element bitstream.
	**/
	@:keep
	public function int64(_x:GoInt64):Void
		__self__.value.int64(_x);

	/**
		// Bool encodes and writes a bool value into the element bitstream,
		// and then returns the bool value.
		//
		// For simple, 2-alternative encodings, the idiomatic way to call Bool
		// is something like:
		//
		//	if w.Bool(x != 0) {
		//		// alternative #1
		//	} else {
		//		// alternative #2
		//	}
		//
		// For multi-alternative encodings, use Code instead.
	**/
	@:keep
	public function bool_(_b:Bool):Bool
		return __self__.value.bool_(_b);

	@:keep
	public function sync(_m:SyncMarker):Void
		__self__.value.sync(_m);

	@:keep
	public function _rawReloc(_r:RelocKind, _idx:Index):GoInt
		return __self__.value._rawReloc(_r, _idx);

	@:keep
	public function _rawVarint(_x:GoInt64):Void
		__self__.value._rawVarint(_x);

	@:keep
	public function _rawUvarint(_x:GoUInt64):Void
		__self__.value._rawUvarint(_x);

	@:keep
	public function _checkErr(_err:Error):Void
		__self__.value._checkErr(_err);

	/**
		// Flush finalizes the element's bitstream and returns its Index.
	**/
	@:keep
	public function flush():Index
		return __self__.value.flush();

	public function new(__self__, __type__) {
		this.__self__ = __self__;
		this.__type__ = __type__;
	}

	public function __underlying__()
		return new AnyInterface((__type__.kind() == stdgo.reflect.Reflect.ptr
			&& !stdgo.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic),
			__type__);

	var __self__:Pointer<Encoder>;
	var __type__:stdgo.internal.reflect.Reflect._Type;
}

@:keep @:allow(internal.pkgbits.Pkgbits.Encoder_asInterface) class Encoder_static_extension {
	@:keep
	static public function _bigFloat(_w:Ref<Encoder>, _v:Ref<stdgo.math.big.Big.Float_>):Void {
		var _b = _v.append((null : Slice<GoUInt8>), (112 : GoUInt8), (-1 : GoInt));
		_w.string((_b : GoString));
	}

	@:keep
	static public function _bigInt(_w:Ref<Encoder>, _v:Ref<stdgo.math.big.Big.Int_>):Void {
		var _b = _v.bytes();
		_w.string((_b : GoString));
		_w.bool_(_v.sign() < (0:GoInt));
	}

	@:keep
	static public function _scalar(_w:Ref<Encoder>, _val:stdgo.go.constant.Constant.Value):Void {
		{
			final __type__ = stdgo.go.constant.Constant.val(_val);
			if (Go.typeEquals((__type__ : Bool))) {
				var _v:Bool = __type__ == null ? false : __type__.__underlying__() == null ? false : __type__ == null ? false : __type__.__underlying__()
					.value;
				_w.code(Go.asInterface((0 : CodeVal)));
				_w.bool_(_v);
			} else if (Go.typeEquals((__type__ : GoString))) {
				var _v:GoString = __type__ == null ? "" : __type__.__underlying__() == null ? "" : __type__ == null ? "" : __type__.__underlying__().value;
				_w.code(Go.asInterface((1 : CodeVal)));
				_w.string(_v);
			} else if (Go.typeEquals((__type__ : GoInt64))) {
				var _v:GoInt64 = __type__ == null ? 0 : __type__.__underlying__() == null ? 0 : __type__ == null ? 0 : __type__.__underlying__().value;
				_w.code(Go.asInterface((2 : CodeVal)));
				_w.int64(_v);
			} else if (Go.typeEquals((__type__ : Ref<stdgo.math.big.Big.Int_>))) {
				var _v:Ref<stdgo.math.big.Big.Int_> = __type__ == null ? (null : Ref<stdgo.math.big.Big.Int_>) : __type__.__underlying__() == null ? (null : Ref<stdgo.math.big.Big.Int_>) : __type__ == null ? (null : Ref<stdgo.math.big.Big.Int_>) : __type__.__underlying__()
					.value;
				_w.code(Go.asInterface((3 : CodeVal)));
				_w._bigInt(_v);
			} else if (Go.typeEquals((__type__ : Ref<stdgo.math.big.Big.Rat>))) {
				var _v:Ref<stdgo.math.big.Big.Rat> = __type__ == null ? (null : Ref<stdgo.math.big.Big.Rat>) : __type__.__underlying__() == null ? (null : Ref<stdgo.math.big.Big.Rat>) : __type__ == null ? (null : Ref<stdgo.math.big.Big.Rat>) : __type__.__underlying__()
					.value;
				_w.code(Go.asInterface((4 : CodeVal)));
				_w._bigInt(_v.num());
				_w._bigInt(_v.denom());
			} else if (Go.typeEquals((__type__ : Ref<stdgo.math.big.Big.Float_>))) {
				var _v:Ref<stdgo.math.big.Big.Float_> = __type__ == null ? (null : Ref<stdgo.math.big.Big.Float_>) : __type__.__underlying__() == null ? (null : Ref<stdgo.math.big.Big.Float_>) : __type__ == null ? (null : Ref<stdgo.math.big.Big.Float_>) : __type__.__underlying__()
					.value;
				_w.code(Go.asInterface((5 : CodeVal)));
				_w._bigFloat(_v);
			} else {
				var _v:AnyInterface = __type__ == null ? null : __type__.__underlying__();
				_errorf(("unhandled %v (%v)" : GoString), Go.toInterface(_val), Go.toInterface(Go.asInterface(_val.kind())));
			};
		};
	}

	/**
		// Value encodes and writes a constant.Value into the element
		// bitstream.
	**/
	@:keep
	static public function value(_w:Ref<Encoder>, _val:stdgo.go.constant.Constant.Value):Void {
		_w.sync((6 : SyncMarker));
		if (_w.bool_(_val.kind() == ((5 : stdgo.go.constant.Constant.Kind)))) {
			_w._scalar(stdgo.go.constant.Constant.real(_val));
			_w._scalar(stdgo.go.constant.Constant.imag(_val));
		} else {
			_w._scalar(_val);
		};
	}

	/**
		// Strings encodes and writes a variable-length slice of strings into
		// the element bitstream.
	**/
	@:keep
	static public function strings(_w:Ref<Encoder>, _ss:Slice<GoString>):Void {
		_w.len((_ss.length));
		for (_0 => _s in _ss) {
			_w.string(_s);
		};
	}

	/**
		// String encodes and writes a string value into the element
		// bitstream.
		//
		// Internally, strings are deduplicated by adding them to the strings
		// section (if not already present), and then writing a relocation
		// into the element bitstream.
	**/
	@:keep
	static public function string(_w:Ref<Encoder>, _s:GoString):Void {
		_w.sync((5 : SyncMarker));
		_w.reloc((0 : RelocKind), _w._p.stringIdx(_s));
	}

	/**
		// Code encodes and writes a Code value into the element bitstream.
	**/
	@:keep
	static public function code(_w:Ref<Encoder>, _c:Code):Void {
		_w.sync(_c.marker());
		_w.len(_c.value());
	}

	/**
		// Reloc encodes and writes a relocation for the given (section,
		// index) pair into the element bitstream.
		//
		// Note: Only the index is formally written into the element
		// bitstream, so bitstream decoders must know from context which
		// section an encoded relocation refers to.
	**/
	@:keep
	static public function reloc(_w:Ref<Encoder>, _r:RelocKind, _idx:Index):Void {
		_w.sync((10 : SyncMarker));
		_w.len(_w._rawReloc(_r, _idx));
	}

	/**
		// Len encodes and writes a uint value into the element bitstream.
	**/
	@:keep
	static public function uint(_w:Ref<Encoder>, _x:GoUInt):Void {
		_w.uint64((_x : GoUInt64));
	}

	/**
		// Int encodes and writes an int value into the element bitstream.
	**/
	@:keep
	static public function int_(_w:Ref<Encoder>, _x:GoInt):Void {
		_w.int64((_x : GoInt64));
	}

	/**
		// Len encodes and writes a non-negative int value into the element bitstream.
	**/
	@:keep
	static public function len(_w:Ref<Encoder>, _x:GoInt):Void {
		_assert(_x >= (0 : GoInt));
		_w.uint64((_x : GoUInt64));
	}

	/**
		// Uint64 encodes and writes a uint64 value into the element bitstream.
	**/
	@:keep
	static public function uint64(_w:Ref<Encoder>, _x:GoUInt64):Void {
		_w.sync((4 : SyncMarker));
		_w._rawUvarint(_x);
	}

	/**
		// Int64 encodes and writes an int64 value into the element bitstream.
	**/
	@:keep
	static public function int64(_w:Ref<Encoder>, _x:GoInt64):Void {
		_w.sync((3 : SyncMarker));
		_w._rawVarint(_x);
	}

	/**
		// Bool encodes and writes a bool value into the element bitstream,
		// and then returns the bool value.
		//
		// For simple, 2-alternative encodings, the idiomatic way to call Bool
		// is something like:
		//
		//	if w.Bool(x != 0) {
		//		// alternative #1
		//	} else {
		//		// alternative #2
		//	}
		//
		// For multi-alternative encodings, use Code instead.
	**/
	@:keep
	static public function bool_(_w:Ref<Encoder>, _b:Bool):Bool {
		_w.sync((2 : SyncMarker));
		var _x:GoByte = (0 : GoUInt8);
		if (_b) {
			_x = (1 : GoUInt8);
		};
		var _err:Error = _w.data.writeByte(_x);
		_w._checkErr(_err);
		return _b;
	}

	@:keep
	static public function sync(_w:Ref<Encoder>, _m:SyncMarker):Void {
		if (false) {
			return;
		};
		var _frames:Slice<GoString> = (null : Slice<GoString>);
		if (!_w._encodingRelocHeader && (_w._p._syncFrames > (0 : GoInt))) {
			var _pcs = new Slice<GoUIntptr>((_w._p._syncFrames : GoInt).toBasic(), 0,
				...[for (i in 0...(_w._p._syncFrames : GoInt).toBasic()) (0 : GoUIntptr)]);
			var _n:GoInt = stdgo.runtime.Runtime.callers((2 : GoInt), _pcs);
			_frames = _fmtFrames(...(_pcs.__slice__(0, _n) : Slice<GoUIntptr>).__toArray__());
		};
		_w._rawUvarint((_m : GoUInt64));
		_w._rawUvarint((_frames.length : GoUInt64));
		for (_0 => _frame in _frames) {
			_w._rawUvarint((_w._rawReloc((0 : RelocKind), _w._p.stringIdx(_frame)) : GoUInt64));
		};
	}

	@:keep
	static public function _rawReloc(_w:Ref<Encoder>, _r:RelocKind, _idx:Index):GoInt {
		for (_i => _rEnt in _w.relocs) {
			if ((_rEnt.kind == _r) && (_rEnt.idx == _idx)) {
				return _i;
			};
		};
		var _i:GoInt = (_w.relocs.length);
		_w.relocs = _w.relocs.__appendref__((new RelocEnt(_r, _idx) : RelocEnt));
		return _i;
	}

	@:keep
	static public function _rawVarint(_w:Ref<Encoder>, _x:GoInt64):Void {
		var _ux:GoUInt64 = (_x : GoUInt64) << ("1" : GoUInt64);
		if (_x < ("0":GoInt64)) {
			_ux = (-1 ^ _ux);
		};
		_w._rawUvarint(_ux);
	}

	@:keep
	static public function _rawUvarint(_w:Ref<Encoder>, _x:GoUInt64):Void {
		var _buf:GoArray<GoByte> = new GoArray<GoUInt8>(...[for (i in 0...10) (0 : GoUInt8)]);
		var _n:GoInt = stdgo.encoding.binary.Binary.putUvarint((_buf.__slice__(0) : Slice<GoUInt8>), _x);
		var __tmp__ = _w.data.write((_buf.__slice__(0, _n) : Slice<GoUInt8>)),
			_0:GoInt = __tmp__._0,
			_err:Error = __tmp__._1;
		_w._checkErr(_err);
	}

	@:keep
	static public function _checkErr(_w:Ref<Encoder>, _err:Error):Void {
		if (_err != null) {
			_errorf(("unexpected encoding error: %v" : GoString), Go.toInterface(_err));
		};
	}

	/**
		// Flush finalizes the element's bitstream and returns its Index.
	**/
	@:keep
	static public function flush(_w:Ref<Encoder>):Index {
		var _sb:stdgo.bytes.Bytes.Buffer = ({} : stdgo.bytes.Bytes.Buffer);
		var _tmp:stdgo.bytes.Bytes.Buffer = ({} : stdgo.bytes.Bytes.Buffer);
		stdgo.io.Io.copy(Go.asInterface((_tmp : Ref<stdgo.bytes.Bytes.Buffer>)), Go.asInterface((_w.data : Ref<stdgo.bytes.Bytes.Buffer>)));
		if (_w._encodingRelocHeader) {
			throw Go.toInterface(("encodingRelocHeader already true; recursive flush?" : GoString));
		};
		_w._encodingRelocHeader = true;
		_w.sync((8 : SyncMarker));
		_w.len((_w.relocs.length));
		for (_0 => _rEnt in _w.relocs) {
			_w.sync((9 : SyncMarker));
			_w.len((_rEnt.kind : GoInt));
			_w.len((_rEnt.idx : GoInt));
		};
		stdgo.io.Io.copy(Go.asInterface((_sb : Ref<stdgo.bytes.Bytes.Buffer>)), Go.asInterface((_w.data : Ref<stdgo.bytes.Bytes.Buffer>)));
		stdgo.io.Io.copy(Go.asInterface((_sb : Ref<stdgo.bytes.Bytes.Buffer>)), Go.asInterface((_tmp : Ref<stdgo.bytes.Bytes.Buffer>)));
		_w._p._elems[(_w._k : GoInt)][(_w.idx : GoInt)] = (_sb.string() : GoString);
		return _w.idx;
	}
}

class CodeVal_asInterface {
	@:keep
	public function value():GoInt
		return __self__.value.value();

	@:keep
	public function marker():SyncMarker
		return __self__.value.marker();

	public function new(__self__, __type__) {
		this.__self__ = __self__;
		this.__type__ = __type__;
	}

	public function __underlying__()
		return new AnyInterface((__type__.kind() == stdgo.reflect.Reflect.ptr
			&& !stdgo.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic),
			__type__);

	var __self__:Pointer<CodeVal>;
	var __type__:stdgo.internal.reflect.Reflect._Type;
}

@:keep @:allow(internal.pkgbits.Pkgbits.CodeVal_asInterface) class CodeVal_static_extension {
	@:keep
	static public function value(_c:CodeVal):GoInt {
		return (_c : GoInt);
	}

	@:keep
	static public function marker(_c:CodeVal):SyncMarker {
		return (7 : SyncMarker);
	}
}

class CodeType_asInterface {
	@:keep
	public function value():GoInt
		return __self__.value.value();

	@:keep
	public function marker():SyncMarker
		return __self__.value.marker();

	public function new(__self__, __type__) {
		this.__self__ = __self__;
		this.__type__ = __type__;
	}

	public function __underlying__()
		return new AnyInterface((__type__.kind() == stdgo.reflect.Reflect.ptr
			&& !stdgo.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic),
			__type__);

	var __self__:Pointer<CodeType>;
	var __type__:stdgo.internal.reflect.Reflect._Type;
}

@:keep @:allow(internal.pkgbits.Pkgbits.CodeType_asInterface) class CodeType_static_extension {
	@:keep
	static public function value(_c:CodeType):GoInt {
		return (_c : GoInt);
	}

	@:keep
	static public function marker(_c:CodeType):SyncMarker {
		return (19 : SyncMarker);
	}
}

class CodeObj_asInterface {
	@:keep
	public function value():GoInt
		return __self__.value.value();

	@:keep
	public function marker():SyncMarker
		return __self__.value.marker();

	public function new(__self__, __type__) {
		this.__self__ = __self__;
		this.__type__ = __type__;
	}

	public function __underlying__()
		return new AnyInterface((__type__.kind() == stdgo.reflect.Reflect.ptr
			&& !stdgo.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic),
			__type__);

	var __self__:Pointer<CodeObj>;
	var __type__:stdgo.internal.reflect.Reflect._Type;
}

@:keep @:allow(internal.pkgbits.Pkgbits.CodeObj_asInterface) class CodeObj_static_extension {
	@:keep
	static public function value(_c:CodeObj):GoInt {
		return (_c : GoInt);
	}

	@:keep
	static public function marker(_c:CodeObj):SyncMarker {
		return (25 : SyncMarker);
	}
}

class SyncMarker_asInterface {
	@:keep
	public function string():GoString
		return __self__.value.string();

	public function new(__self__, __type__) {
		this.__self__ = __self__;
		this.__type__ = __type__;
	}

	public function __underlying__()
		return new AnyInterface((__type__.kind() == stdgo.reflect.Reflect.ptr
			&& !stdgo.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic),
			__type__);

	var __self__:Pointer<SyncMarker>;
	var __type__:stdgo.internal.reflect.Reflect._Type;
}

@:keep @:allow(internal.pkgbits.Pkgbits.SyncMarker_asInterface) class SyncMarker_static_extension {
	@:keep
	static public function string(_i:SyncMarker):GoString {
		_i = _i - ((1 : SyncMarker));
		if ((_i < (0:SyncMarker)) || (_i >= ((65 : GoInt) : SyncMarker))) {
			return (("SyncMarker(" : GoString) + stdgo.strconv.Strconv.formatInt((_i + (1 : SyncMarker) : GoInt64), (10 : GoInt))) + (")" : GoString);
		};
		return
			(("EOFBoolInt64Uint64StringValueValRelocsRelocUseRelocPublicPosPosBaseObjectObject1PkgPkgDefMethodTypeTypeIdxTypeParamNamesSignatureParamsParamCodeObjSymLocalIdentSelectorPrivateFuncExtVarExtTypeExtPragmaExprListExprsExprAssertTypeOpFuncLitCompLitDeclFuncBodyOpenScopeCloseScopeCloseAnotherScopeDeclNamesDeclNameStmtsBlockStmtIfStmtForStmtSwitchStmtRangeStmtCaseClauseCommClauseSelectStmtDeclsLabeledStmtUseObjLocalAddLocalLinknameStmt1StmtsEndLabelOptLabel" : GoString)
				.__slice__(__SyncMarker_index[(_i : GoInt)], __SyncMarker_index[(_i
			+ (1 : SyncMarker) : GoInt)]) : GoString);
	}
}
