package stdgo._internal.internal.pkgbits;
import stdgo._internal.errors.Errors;
import stdgo._internal.strings.Strings;
import stdgo._internal.encoding.binary.Binary;
import stdgo._internal.fmt.Fmt;
import stdgo._internal.io.Io;
import stdgo._internal.runtime.Runtime;
import stdgo._internal.go.constant.Constant;
import stdgo._internal.crypto.md5.Md5;
import stdgo._internal.strconv.Strconv;
@:keep @:allow(stdgo._internal.internal.pkgbits.Pkgbits.SyncMarker_asInterface) class SyncMarker_static_extension {
    @:keep
    @:tdfield
    static public function string( _i:stdgo._internal.internal.pkgbits.Pkgbits_SyncMarker.SyncMarker):stdgo.GoString {
        @:recv var _i:stdgo._internal.internal.pkgbits.Pkgbits_SyncMarker.SyncMarker = _i;
        _i = (_i - ((1 : stdgo._internal.internal.pkgbits.Pkgbits_SyncMarker.SyncMarker)) : stdgo._internal.internal.pkgbits.Pkgbits_SyncMarker.SyncMarker);
        if (((_i < (0 : stdgo._internal.internal.pkgbits.Pkgbits_SyncMarker.SyncMarker) : Bool) || (_i >= ((69 : stdgo.GoInt) : stdgo._internal.internal.pkgbits.Pkgbits_SyncMarker.SyncMarker) : Bool) : Bool)) {
            return ((("SyncMarker(" : stdgo.GoString) + stdgo._internal.strconv.Strconv_formatInt.formatInt(((_i + (1 : stdgo._internal.internal.pkgbits.Pkgbits_SyncMarker.SyncMarker) : stdgo._internal.internal.pkgbits.Pkgbits_SyncMarker.SyncMarker) : stdgo.GoInt64), (10 : stdgo.GoInt))?.__copy__() : stdgo.GoString) + (")" : stdgo.GoString)?.__copy__() : stdgo.GoString)?.__copy__();
        };
        return (("EOFBoolInt64Uint64StringValueValRelocsRelocUseRelocPublicPosPosBaseObjectObject1PkgPkgDefMethodTypeTypeIdxTypeParamNamesSignatureParamsParamCodeObjSymLocalIdentSelectorPrivateFuncExtVarExtTypeExtPragmaExprListExprsExprExprTypeAssignOpFuncLitCompLitDeclFuncBodyOpenScopeCloseScopeCloseAnotherScopeDeclNamesDeclNameStmtsBlockStmtIfStmtForStmtSwitchStmtRangeStmtCaseClauseCommClauseSelectStmtDeclsLabeledStmtUseObjLocalAddLocalLinknameStmt1StmtsEndLabelOptLabelMultiExprRTypeConvRTTI" : stdgo.GoString).__slice__(stdgo._internal.internal.pkgbits.Pkgbits___SyncMarker_index.__SyncMarker_index[(_i : stdgo.GoInt)], stdgo._internal.internal.pkgbits.Pkgbits___SyncMarker_index.__SyncMarker_index[((_i + (1 : stdgo._internal.internal.pkgbits.Pkgbits_SyncMarker.SyncMarker) : stdgo._internal.internal.pkgbits.Pkgbits_SyncMarker.SyncMarker) : stdgo.GoInt)]) : stdgo.GoString)?.__copy__();
    }
}
