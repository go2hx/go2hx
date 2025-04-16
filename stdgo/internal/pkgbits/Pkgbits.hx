package stdgo.internal.pkgbits;
var valBool : CodeVal = 0i32;
var valString : CodeVal = 1i32;
var valInt64 : CodeVal = 2i32;
var valBigInt : CodeVal = 3i32;
var valBigRat : CodeVal = 4i32;
var valBigFloat : CodeVal = 5i32;
var typeBasic : CodeType = 0i32;
var typeNamed : CodeType = 1i32;
var typePointer : CodeType = 2i32;
var typeSlice : CodeType = 3i32;
var typeArray : CodeType = 4i32;
var typeChan : CodeType = 5i32;
var typeMap : CodeType = 6i32;
var typeSignature : CodeType = 7i32;
var typeStruct : CodeType = 8i32;
var typeInterface : CodeType = 9i32;
var typeUnion : CodeType = 10i32;
var typeTypeParam : CodeType = 11i32;
var objAlias : CodeObj = 0i32;
var objConst : CodeObj = 1i32;
var objType : CodeObj = 2i32;
var objFunc : CodeObj = 3i32;
var objVar : CodeObj = 4i32;
var objStub : CodeObj = 5i32;
var publicRootIdx : Index = 0i32;
var privateRootIdx : Index = 1i32;
var relocString : RelocKind = 0i32;
var relocMeta : RelocKind = 1i32;
var relocPosBase : RelocKind = 2i32;
var relocPkg : RelocKind = 3i32;
var relocName : RelocKind = 4i32;
var relocType : RelocKind = 5i32;
var relocObj : RelocKind = 6i32;
var relocObjExt : RelocKind = 7i32;
var relocObjDict : RelocKind = 8i32;
var relocBody : RelocKind = 9i32;
var syncEOF : SyncMarker = 1i32;
var syncBool : SyncMarker = 2i32;
var syncInt64 : SyncMarker = 3i32;
var syncUint64 : SyncMarker = 4i32;
var syncString : SyncMarker = 5i32;
var syncValue : SyncMarker = 6i32;
var syncVal : SyncMarker = 7i32;
var syncRelocs : SyncMarker = 8i32;
var syncReloc : SyncMarker = 9i32;
var syncUseReloc : SyncMarker = 10i32;
var syncPublic : SyncMarker = 11i32;
var syncPos : SyncMarker = 12i32;
var syncPosBase : SyncMarker = 13i32;
var syncObject : SyncMarker = 14i32;
var syncObject1 : SyncMarker = 15i32;
var syncPkg : SyncMarker = 16i32;
var syncPkgDef : SyncMarker = 17i32;
var syncMethod : SyncMarker = 18i32;
var syncType : SyncMarker = 19i32;
var syncTypeIdx : SyncMarker = 20i32;
var syncTypeParamNames : SyncMarker = 21i32;
var syncSignature : SyncMarker = 22i32;
var syncParams : SyncMarker = 23i32;
var syncParam : SyncMarker = 24i32;
var syncCodeObj : SyncMarker = 25i32;
var syncSym : SyncMarker = 26i32;
var syncLocalIdent : SyncMarker = 27i32;
var syncSelector : SyncMarker = 28i32;
var syncPrivate : SyncMarker = 29i32;
var syncFuncExt : SyncMarker = 30i32;
var syncVarExt : SyncMarker = 31i32;
var syncTypeExt : SyncMarker = 32i32;
var syncPragma : SyncMarker = 33i32;
var syncExprList : SyncMarker = 34i32;
var syncExprs : SyncMarker = 35i32;
var syncExpr : SyncMarker = 36i32;
var syncExprType : SyncMarker = 37i32;
var syncAssign : SyncMarker = 38i32;
var syncOp : SyncMarker = 39i32;
var syncFuncLit : SyncMarker = 40i32;
var syncCompLit : SyncMarker = 41i32;
var syncDecl : SyncMarker = 42i32;
var syncFuncBody : SyncMarker = 43i32;
var syncOpenScope : SyncMarker = 44i32;
var syncCloseScope : SyncMarker = 45i32;
var syncCloseAnotherScope : SyncMarker = 46i32;
var syncDeclNames : SyncMarker = 47i32;
var syncDeclName : SyncMarker = 48i32;
var syncStmts : SyncMarker = 49i32;
var syncBlockStmt : SyncMarker = 50i32;
var syncIfStmt : SyncMarker = 51i32;
var syncForStmt : SyncMarker = 52i32;
var syncSwitchStmt : SyncMarker = 53i32;
var syncRangeStmt : SyncMarker = 54i32;
var syncCaseClause : SyncMarker = 55i32;
var syncCommClause : SyncMarker = 56i32;
var syncSelectStmt : SyncMarker = 57i32;
var syncDecls : SyncMarker = 58i32;
var syncLabeledStmt : SyncMarker = 59i32;
var syncUseObjLocal : SyncMarker = 60i32;
var syncAddLocal : SyncMarker = 61i32;
var syncLinkname : SyncMarker = 62i32;
var syncStmt1 : SyncMarker = 63i32;
var syncStmtsEnd : SyncMarker = 64i32;
var syncLabel : SyncMarker = 65i32;
var syncOptLabel : SyncMarker = 66i32;
var syncMultiExpr : SyncMarker = 67i32;
var syncRType : SyncMarker = 68i32;
var syncConvRTTI : SyncMarker = 69i32;
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
