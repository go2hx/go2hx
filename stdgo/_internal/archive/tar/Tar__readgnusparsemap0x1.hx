package stdgo._internal.archive.tar;
function _readGNUSparseMap0x1(_paxHdrs:stdgo.GoMap<stdgo.GoString, stdgo.GoString>):{ var _0 : stdgo._internal.archive.tar.Tar_t_sparsedatas.T_sparseDatas; var _1 : stdgo.Error; } {
        var _numEntriesStr = ((_paxHdrs[("GNU.sparse.numblocks" : stdgo.GoString)] ?? ("" : stdgo.GoString))?.__copy__() : stdgo.GoString);
        var __tmp__ = stdgo._internal.strconv.Strconv_parseint.parseInt(_numEntriesStr?.__copy__(), (10 : stdgo.GoInt), (0 : stdgo.GoInt)), _numEntries:stdgo.GoInt64 = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (((_err != null || (_numEntries < (0i64 : stdgo.GoInt64) : Bool) : Bool) || ((((2i64 : stdgo.GoInt64) * _numEntries : stdgo.GoInt64) : stdgo.GoInt) < (_numEntries : stdgo.GoInt) : Bool) : Bool)) {
            return { _0 : null, _1 : stdgo._internal.archive.tar.Tar_errheader.errHeader };
        };
        var _sparseMap = stdgo._internal.strings.Strings_split.split((_paxHdrs[("GNU.sparse.map" : stdgo.GoString)] ?? ("" : stdgo.GoString))?.__copy__(), ("," : stdgo.GoString));
        if (((_sparseMap.length == (1 : stdgo.GoInt)) && (_sparseMap[(0 : stdgo.GoInt)] == (stdgo.Go.str() : stdgo.GoString)) : Bool)) {
            _sparseMap = (_sparseMap.__slice__(0, (0 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoString>);
        };
        if ((_sparseMap.length : stdgo.GoInt64) != (((2i64 : stdgo.GoInt64) * _numEntries : stdgo.GoInt64))) {
            return { _0 : null, _1 : stdgo._internal.archive.tar.Tar_errheader.errHeader };
        };
        var _spd = (new stdgo.Slice<stdgo._internal.archive.tar.Tar_t_sparseentry.T_sparseEntry>((0 : stdgo.GoInt).toBasic(), _numEntries, ...[for (i in 0 ... ((0 : stdgo.GoInt).toBasic() > _numEntries ? (0 : stdgo.GoInt).toBasic() : _numEntries : stdgo.GoInt).toBasic()) ({} : stdgo._internal.archive.tar.Tar_t_sparseentry.T_sparseEntry)]) : stdgo._internal.archive.tar.Tar_t_sparsedatas.T_sparseDatas);
        while (((_sparseMap.length) >= (2 : stdgo.GoInt) : Bool)) {
            var __tmp__ = stdgo._internal.strconv.Strconv_parseint.parseInt(_sparseMap[(0 : stdgo.GoInt)]?.__copy__(), (10 : stdgo.GoInt), (64 : stdgo.GoInt)), _offset:stdgo.GoInt64 = __tmp__._0, _err1:stdgo.Error = __tmp__._1;
            var __tmp__ = stdgo._internal.strconv.Strconv_parseint.parseInt(_sparseMap[(1 : stdgo.GoInt)]?.__copy__(), (10 : stdgo.GoInt), (64 : stdgo.GoInt)), _length:stdgo.GoInt64 = __tmp__._0, _err2:stdgo.Error = __tmp__._1;
            if (((_err1 != null) || (_err2 != null) : Bool)) {
                return { _0 : null, _1 : stdgo._internal.archive.tar.Tar_errheader.errHeader };
            };
            _spd = (_spd.__append__(({ offset : _offset, length_ : _length } : stdgo._internal.archive.tar.Tar_t_sparseentry.T_sparseEntry)));
            _sparseMap = (_sparseMap.__slice__((2 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoString>);
        };
        return { _0 : _spd, _1 : (null : stdgo.Error) };
    }
