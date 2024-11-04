# Module stdgo._internal.archive.tar has compilation errors, please do not use:
```
[30;41m ERROR [0m stdgo/_internal/archive/tar/Tar__readGNUSparseMap1x0.hx:43: characters 127-138

 43 | [2m        var _spd = (new stdgo.Slice<stdgo._internal.archive.tar.Tar_T_sparseEntry.T_sparseEntry>((0 : stdgo.GoInt).toBasic(), [0m[1m_numEntries[0m[2m, ...[for (i in 0 ... ((0 : stdgo.GoInt).toBasic() > _numEntries ? (0 : stdgo.GoInt).toBasic() : _numEntries : stdgo.GoInt).toBasic()) ({} : stdgo._internal.archive.tar.Tar_T_sparseEntry.T_sparseEntry)]) : stdgo._internal.archive.tar.Tar_T_sparseDatas.T_sparseDatas);[0m
    |                                                                                                                               [31m^^^^^^^^^^^[0m
    | stdgo.GoInt64 should be Int
    | For function argument 'capacity'

[30;41m ERROR [0m stdgo/_internal/archive/tar/Tar__readGNUSparseMap0x1.hx:15: characters 127-138

 15 | [2m        var _spd = (new stdgo.Slice<stdgo._internal.archive.tar.Tar_T_sparseEntry.T_sparseEntry>((0 : stdgo.GoInt).toBasic(), [0m[1m_numEntries[0m[2m, ...[for (i in 0 ... ((0 : stdgo.GoInt).toBasic() > _numEntries ? (0 : stdgo.GoInt).toBasic() : _numEntries : stdgo.GoInt).toBasic()) ({} : stdgo._internal.archive.tar.Tar_T_sparseEntry.T_sparseEntry)]) : stdgo._internal.archive.tar.Tar_T_sparseDatas.T_sparseDatas);[0m
    |                                                                                                                               [31m^^^^^^^^^^^[0m
    | stdgo.GoInt64 should be Int
    | For function argument 'capacity'


```

