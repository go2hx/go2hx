package stdgo.internal.pkgbits;
var valBool : CodeVal = 0i64;
var valString : CodeVal = 1i64;
var valInt64 : CodeVal = 2i64;
var valBigInt : CodeVal = 3i64;
var valBigRat : CodeVal = 4i64;
var valBigFloat : CodeVal = 5i64;
var typeBasic : CodeType = 0i64;
var typeNamed : CodeType = 1i64;
var typePointer : CodeType = 2i64;
var typeSlice : CodeType = 3i64;
var typeArray : CodeType = 4i64;
var typeChan : CodeType = 5i64;
var typeMap : CodeType = 6i64;
var typeSignature : CodeType = 7i64;
var typeStruct : CodeType = 8i64;
var typeInterface : CodeType = 9i64;
var typeUnion : CodeType = 10i64;
var typeTypeParam : CodeType = 11i64;
var objAlias : CodeObj = 0i64;
var objConst : CodeObj = 1i64;
var objType : CodeObj = 2i64;
var objFunc : CodeObj = 3i64;
var objVar : CodeObj = 4i64;
var objStub : CodeObj = 5i64;
var publicRootIdx : Index = 0i64;
var privateRootIdx : Index = 1i64;
var relocString : RelocKind = 0i64;
var relocMeta : RelocKind = 1i64;
var relocPosBase : RelocKind = 2i64;
var relocPkg : RelocKind = 3i64;
var relocName : RelocKind = 4i64;
var relocType : RelocKind = 5i64;
var relocObj : RelocKind = 6i64;
var relocObjExt : RelocKind = 7i64;
var relocObjDict : RelocKind = 8i64;
var relocBody : RelocKind = 9i64;
var syncEOF : SyncMarker = 1i64;
var syncBool : SyncMarker = 2i64;
var syncInt64 : SyncMarker = 3i64;
var syncUint64 : SyncMarker = 4i64;
var syncString : SyncMarker = 5i64;
var syncValue : SyncMarker = 6i64;
var syncVal : SyncMarker = 7i64;
var syncRelocs : SyncMarker = 8i64;
var syncReloc : SyncMarker = 9i64;
var syncUseReloc : SyncMarker = 10i64;
var syncPublic : SyncMarker = 11i64;
var syncPos : SyncMarker = 12i64;
var syncPosBase : SyncMarker = 13i64;
var syncObject : SyncMarker = 14i64;
var syncObject1 : SyncMarker = 15i64;
var syncPkg : SyncMarker = 16i64;
var syncPkgDef : SyncMarker = 17i64;
var syncMethod : SyncMarker = 18i64;
var syncType : SyncMarker = 19i64;
var syncTypeIdx : SyncMarker = 20i64;
var syncTypeParamNames : SyncMarker = 21i64;
var syncSignature : SyncMarker = 22i64;
var syncParams : SyncMarker = 23i64;
var syncParam : SyncMarker = 24i64;
var syncCodeObj : SyncMarker = 25i64;
var syncSym : SyncMarker = 26i64;
var syncLocalIdent : SyncMarker = 27i64;
var syncSelector : SyncMarker = 28i64;
var syncPrivate : SyncMarker = 29i64;
var syncFuncExt : SyncMarker = 30i64;
var syncVarExt : SyncMarker = 31i64;
var syncTypeExt : SyncMarker = 32i64;
var syncPragma : SyncMarker = 33i64;
var syncExprList : SyncMarker = 34i64;
var syncExprs : SyncMarker = 35i64;
var syncExpr : SyncMarker = 36i64;
var syncExprType : SyncMarker = 37i64;
var syncAssign : SyncMarker = 38i64;
var syncOp : SyncMarker = 39i64;
var syncFuncLit : SyncMarker = 40i64;
var syncCompLit : SyncMarker = 41i64;
var syncDecl : SyncMarker = 42i64;
var syncFuncBody : SyncMarker = 43i64;
var syncOpenScope : SyncMarker = 44i64;
var syncCloseScope : SyncMarker = 45i64;
var syncCloseAnotherScope : SyncMarker = 46i64;
var syncDeclNames : SyncMarker = 47i64;
var syncDeclName : SyncMarker = 48i64;
var syncStmts : SyncMarker = 49i64;
var syncBlockStmt : SyncMarker = 50i64;
var syncIfStmt : SyncMarker = 51i64;
var syncForStmt : SyncMarker = 52i64;
var syncSwitchStmt : SyncMarker = 53i64;
var syncRangeStmt : SyncMarker = 54i64;
var syncCaseClause : SyncMarker = 55i64;
var syncCommClause : SyncMarker = 56i64;
var syncSelectStmt : SyncMarker = 57i64;
var syncDecls : SyncMarker = 58i64;
var syncLabeledStmt : SyncMarker = 59i64;
var syncUseObjLocal : SyncMarker = 60i64;
var syncAddLocal : SyncMarker = 61i64;
var syncLinkname : SyncMarker = 62i64;
var syncStmt1 : SyncMarker = 63i64;
var syncStmtsEnd : SyncMarker = 64i64;
var syncLabel : SyncMarker = 65i64;
var syncOptLabel : SyncMarker = 66i64;
var syncMultiExpr : SyncMarker = 67i64;
var syncRType : SyncMarker = 68i64;
var syncConvRTTI : SyncMarker = 69i64;
typedef Code = stdgo._internal.internal.pkgbits.Pkgbits_code.Code;
typedef PkgDecoder = stdgo._internal.internal.pkgbits.Pkgbits_pkgdecoder.PkgDecoder;
typedef Decoder = stdgo._internal.internal.pkgbits.Pkgbits_decoder.Decoder;
typedef PkgEncoder = stdgo._internal.internal.pkgbits.Pkgbits_pkgencoder.PkgEncoder;
typedef Encoder = stdgo._internal.internal.pkgbits.Pkgbits_encoder.Encoder;
typedef RelocEnt = stdgo._internal.internal.pkgbits.Pkgbits_relocent.RelocEnt;
typedef CodeVal = stdgo._internal.internal.pkgbits.Pkgbits_codeval.CodeVal;
typedef CodeType = stdgo._internal.internal.pkgbits.Pkgbits_codetype.CodeType;
typedef CodeObj = stdgo._internal.internal.pkgbits.Pkgbits_codeobj.CodeObj;
typedef RelocKind = stdgo._internal.internal.pkgbits.Pkgbits_relockind.RelocKind;
typedef Index = stdgo._internal.internal.pkgbits.Pkgbits_index.Index;
typedef SyncMarker = stdgo._internal.internal.pkgbits.Pkgbits_syncmarker.SyncMarker;
typedef PkgDecoderPointer = stdgo._internal.internal.pkgbits.Pkgbits_pkgdecoderpointer.PkgDecoderPointer;
typedef DecoderPointer = stdgo._internal.internal.pkgbits.Pkgbits_decoderpointer.DecoderPointer;
typedef PkgEncoderPointer = stdgo._internal.internal.pkgbits.Pkgbits_pkgencoderpointer.PkgEncoderPointer;
typedef EncoderPointer = stdgo._internal.internal.pkgbits.Pkgbits_encoderpointer.EncoderPointer;
typedef RelocEntPointer = stdgo._internal.internal.pkgbits.Pkgbits_relocentpointer.RelocEntPointer;
typedef CodeValPointer = stdgo._internal.internal.pkgbits.Pkgbits_codevalpointer.CodeValPointer;
typedef CodeTypePointer = stdgo._internal.internal.pkgbits.Pkgbits_codetypepointer.CodeTypePointer;
typedef CodeObjPointer = stdgo._internal.internal.pkgbits.Pkgbits_codeobjpointer.CodeObjPointer;
typedef RelocKindPointer = stdgo._internal.internal.pkgbits.Pkgbits_relockindpointer.RelocKindPointer;
typedef IndexPointer = stdgo._internal.internal.pkgbits.Pkgbits_indexpointer.IndexPointer;
typedef SyncMarkerPointer = stdgo._internal.internal.pkgbits.Pkgbits_syncmarkerpointer.SyncMarkerPointer;
/**
    * Package pkgbits implements low-level coding abstractions for
    * Unified IR's export data format.
    * 
    * At a low-level, a package is a collection of bitstream elements.
    * Each element has a "kind" and a dense, non-negative index.
    * Elements can be randomly accessed given their kind and index.
    * 
    * Individual elements are sequences of variable-length values (e.g.,
    * integers, booleans, strings, go/constant values, cross-references
    * to other elements). Package pkgbits provides APIs for encoding and
    * decoding these low-level values, but the details of mapping
    * higher-level Go constructs into elements is left to higher-level
    * abstractions.
    * 
    * Elements may cross-reference each other with "relocations." For
    * example, an element representing a pointer type has a relocation
    * referring to the element type.
    * 
    * Go constructs may be composed as a constellation of multiple
    * elements. For example, a declared function may have one element to
    * describe the object (e.g., its name, type, position), and a
    * separate element to describe its function body. This allows readers
    * some flexibility in efficiently seeking or re-reading data (e.g.,
    * inlining requires re-reading the function body for each inlined
    * call, without needing to re-read the object-level details).
**/
class Pkgbits {
    /**
        * NewPkgDecoder returns a PkgDecoder initialized to read the Unified
        * IR export data from input. pkgPath is the package path for the
        * compilation unit that produced the export data.
        * 
        * TODO(mdempsky): Remove pkgPath parameter; unneeded since CL 391014.
    **/
    static public inline function newPkgDecoder(_pkgPath:stdgo.GoString, _input:stdgo.GoString):stdgo._internal.internal.pkgbits.Pkgbits_pkgdecoder.PkgDecoder return stdgo._internal.internal.pkgbits.Pkgbits_newpkgdecoder.newPkgDecoder(_pkgPath, _input);
    /**
        * NewPkgEncoder returns an initialized PkgEncoder.
        * 
        * syncFrames is the number of caller frames that should be serialized
        * at Sync points. Serializing additional frames results in larger
        * export data files, but can help diagnosing desync errors in
        * higher-level Unified IR reader/writer code. If syncFrames is
        * negative, then sync markers are omitted entirely.
    **/
    static public inline function newPkgEncoder(_syncFrames:stdgo.GoInt):stdgo._internal.internal.pkgbits.Pkgbits_pkgencoder.PkgEncoder return stdgo._internal.internal.pkgbits.Pkgbits_newpkgencoder.newPkgEncoder(_syncFrames);
}
