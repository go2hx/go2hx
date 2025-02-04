package stdgo._internal.internal.pkgbits;
@:keep @:allow(stdgo._internal.internal.pkgbits.Pkgbits.SyncMarker_asInterface) class SyncMarker_static_extension {
    @:keep
    @:tdfield
    static public function string( _i:stdgo._internal.internal.pkgbits.Pkgbits_syncmarker.SyncMarker):stdgo.GoString {
        @:recv var _i:stdgo._internal.internal.pkgbits.Pkgbits_syncmarker.SyncMarker = _i;
        _i = (_i - ((1 : stdgo._internal.internal.pkgbits.Pkgbits_syncmarker.SyncMarker)) : stdgo._internal.internal.pkgbits.Pkgbits_syncmarker.SyncMarker);
        if (((_i < (0 : stdgo._internal.internal.pkgbits.Pkgbits_syncmarker.SyncMarker) : Bool) || (_i >= ((69 : stdgo.GoInt) : stdgo._internal.internal.pkgbits.Pkgbits_syncmarker.SyncMarker) : Bool) : Bool)) {
            return ((("SyncMarker(" : stdgo.GoString) + stdgo._internal.strconv.Strconv_formatint.formatInt(((_i + (1 : stdgo._internal.internal.pkgbits.Pkgbits_syncmarker.SyncMarker) : stdgo._internal.internal.pkgbits.Pkgbits_syncmarker.SyncMarker) : stdgo.GoInt64), (10 : stdgo.GoInt))?.__copy__() : stdgo.GoString) + (")" : stdgo.GoString)?.__copy__() : stdgo.GoString)?.__copy__();
        };
        return (("EOFBoolInt64Uint64StringValueValRelocsRelocUseRelocPublicPosPosBaseObjectObject1PkgPkgDefMethodTypeTypeIdxTypeParamNamesSignatureParamsParamCodeObjSymLocalIdentSelectorPrivateFuncExtVarExtTypeExtPragmaExprListExprsExprExprTypeAssignOpFuncLitCompLitDeclFuncBodyOpenScopeCloseScopeCloseAnotherScopeDeclNamesDeclNameStmtsBlockStmtIfStmtForStmtSwitchStmtRangeStmtCaseClauseCommClauseSelectStmtDeclsLabeledStmtUseObjLocalAddLocalLinknameStmt1StmtsEndLabelOptLabelMultiExprRTypeConvRTTI" : stdgo.GoString).__slice__(stdgo._internal.internal.pkgbits.Pkgbits___syncmarker_index.__SyncMarker_index[(_i : stdgo.GoInt)], stdgo._internal.internal.pkgbits.Pkgbits___syncmarker_index.__SyncMarker_index[((_i + (1 : stdgo._internal.internal.pkgbits.Pkgbits_syncmarker.SyncMarker) : stdgo._internal.internal.pkgbits.Pkgbits_syncmarker.SyncMarker) : stdgo.GoInt)]) : stdgo.GoString)?.__copy__();
    }
}
