package stdgo._internal.debug.buildinfo;
function _readRawBuildInfo(_r:stdgo._internal.io.Io_readerat.ReaderAt):{ var _0 : stdgo.GoString; var _1 : stdgo.GoString; var _2 : stdgo.Error; } {
        var _vers = ("" : stdgo.GoString), _mod = ("" : stdgo.GoString), _err = (null : stdgo.Error);
        var _ident = (new stdgo.Slice<stdgo.GoUInt8>((16 : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>);
        {
            var __tmp__ = _r.readAt(_ident, (0i64 : stdgo.GoInt64)), _n:stdgo.GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (((_n < (_ident.length) : Bool) || (_err != null) : Bool)) {
                return {
                    final __tmp__:{ var _0 : stdgo.GoString; var _1 : stdgo.GoString; var _2 : stdgo.Error; } = { _0 : (stdgo.Go.str() : stdgo.GoString)?.__copy__(), _1 : (stdgo.Go.str() : stdgo.GoString)?.__copy__(), _2 : stdgo._internal.debug.buildinfo.Buildinfo__errunrecognizedformat._errUnrecognizedFormat };
                    _vers = __tmp__._0;
                    _mod = __tmp__._1;
                    _err = __tmp__._2;
                    __tmp__;
                };
            };
        };
        var _x:stdgo._internal.debug.buildinfo.Buildinfo_t_exe.T_exe = (null : stdgo._internal.debug.buildinfo.Buildinfo_t_exe.T_exe);
        if (stdgo._internal.bytes.Bytes_hasprefix.hasPrefix(_ident, ((stdgo.Go.str(127, "ELF") : stdgo.GoString) : stdgo.Slice<stdgo.GoUInt8>))) {
            var __tmp__ = stdgo._internal.debug.elf.Elf_newfile.newFile(_r), _f:stdgo.Ref<stdgo._internal.debug.elf.Elf_file.File> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                return {
                    final __tmp__:{ var _0 : stdgo.GoString; var _1 : stdgo.GoString; var _2 : stdgo.Error; } = { _0 : (stdgo.Go.str() : stdgo.GoString)?.__copy__(), _1 : (stdgo.Go.str() : stdgo.GoString)?.__copy__(), _2 : stdgo._internal.debug.buildinfo.Buildinfo__errunrecognizedformat._errUnrecognizedFormat };
                    _vers = __tmp__._0;
                    _mod = __tmp__._1;
                    _err = __tmp__._2;
                    __tmp__;
                };
            };
            _x = stdgo.Go.asInterface((stdgo.Go.setRef((new stdgo._internal.debug.buildinfo.Buildinfo_t_elfexe.T_elfExe(_f) : stdgo._internal.debug.buildinfo.Buildinfo_t_elfexe.T_elfExe)) : stdgo.Ref<stdgo._internal.debug.buildinfo.Buildinfo_t_elfexe.T_elfExe>));
        } else if (stdgo._internal.bytes.Bytes_hasprefix.hasPrefix(_ident, ((("MZ" : stdgo.GoString) : stdgo.GoString) : stdgo.Slice<stdgo.GoUInt8>))) {
            var __tmp__ = stdgo._internal.debug.pe.Pe_newfile.newFile(_r), _f:stdgo.Ref<stdgo._internal.debug.pe.Pe_file.File> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                return {
                    final __tmp__:{ var _0 : stdgo.GoString; var _1 : stdgo.GoString; var _2 : stdgo.Error; } = { _0 : (stdgo.Go.str() : stdgo.GoString)?.__copy__(), _1 : (stdgo.Go.str() : stdgo.GoString)?.__copy__(), _2 : stdgo._internal.debug.buildinfo.Buildinfo__errunrecognizedformat._errUnrecognizedFormat };
                    _vers = __tmp__._0;
                    _mod = __tmp__._1;
                    _err = __tmp__._2;
                    __tmp__;
                };
            };
            _x = stdgo.Go.asInterface((stdgo.Go.setRef((new stdgo._internal.debug.buildinfo.Buildinfo_t_peexe.T_peExe(_f) : stdgo._internal.debug.buildinfo.Buildinfo_t_peexe.T_peExe)) : stdgo.Ref<stdgo._internal.debug.buildinfo.Buildinfo_t_peexe.T_peExe>));
        } else if ((stdgo._internal.bytes.Bytes_hasprefix.hasPrefix(_ident, ((stdgo.Go.str(254, 237, 250) : stdgo.GoString) : stdgo.Slice<stdgo.GoUInt8>)) || stdgo._internal.bytes.Bytes_hasprefix.hasPrefix((_ident.__slice__((1 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>), ((stdgo.Go.str(250, 237, 254) : stdgo.GoString) : stdgo.Slice<stdgo.GoUInt8>)) : Bool)) {
            var __tmp__ = stdgo._internal.debug.macho.Macho_newfile.newFile(_r), _f:stdgo.Ref<stdgo._internal.debug.macho.Macho_file.File> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                return {
                    final __tmp__:{ var _0 : stdgo.GoString; var _1 : stdgo.GoString; var _2 : stdgo.Error; } = { _0 : (stdgo.Go.str() : stdgo.GoString)?.__copy__(), _1 : (stdgo.Go.str() : stdgo.GoString)?.__copy__(), _2 : stdgo._internal.debug.buildinfo.Buildinfo__errunrecognizedformat._errUnrecognizedFormat };
                    _vers = __tmp__._0;
                    _mod = __tmp__._1;
                    _err = __tmp__._2;
                    __tmp__;
                };
            };
            _x = stdgo.Go.asInterface((stdgo.Go.setRef((new stdgo._internal.debug.buildinfo.Buildinfo_t_machoexe.T_machoExe(_f) : stdgo._internal.debug.buildinfo.Buildinfo_t_machoexe.T_machoExe)) : stdgo.Ref<stdgo._internal.debug.buildinfo.Buildinfo_t_machoexe.T_machoExe>));
        } else if ((stdgo._internal.bytes.Bytes_hasprefix.hasPrefix(_ident, ((stdgo.Go.str(202, 254, 186, 190) : stdgo.GoString) : stdgo.Slice<stdgo.GoUInt8>)) || stdgo._internal.bytes.Bytes_hasprefix.hasPrefix(_ident, ((stdgo.Go.str(202, 254, 186, 191) : stdgo.GoString) : stdgo.Slice<stdgo.GoUInt8>)) : Bool)) {
            var __tmp__ = stdgo._internal.debug.macho.Macho_newfatfile.newFatFile(_r), _f:stdgo.Ref<stdgo._internal.debug.macho.Macho_fatfile.FatFile> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (((_err != null) || ((@:checkr _f ?? throw "null pointer dereference").arches.length == (0 : stdgo.GoInt)) : Bool)) {
                return {
                    final __tmp__:{ var _0 : stdgo.GoString; var _1 : stdgo.GoString; var _2 : stdgo.Error; } = { _0 : (stdgo.Go.str() : stdgo.GoString)?.__copy__(), _1 : (stdgo.Go.str() : stdgo.GoString)?.__copy__(), _2 : stdgo._internal.debug.buildinfo.Buildinfo__errunrecognizedformat._errUnrecognizedFormat };
                    _vers = __tmp__._0;
                    _mod = __tmp__._1;
                    _err = __tmp__._2;
                    __tmp__;
                };
            };
            _x = stdgo.Go.asInterface((stdgo.Go.setRef((new stdgo._internal.debug.buildinfo.Buildinfo_t_machoexe.T_machoExe((@:checkr _f ?? throw "null pointer dereference").arches[(0 : stdgo.GoInt)].file) : stdgo._internal.debug.buildinfo.Buildinfo_t_machoexe.T_machoExe)) : stdgo.Ref<stdgo._internal.debug.buildinfo.Buildinfo_t_machoexe.T_machoExe>));
        } else if ((stdgo._internal.bytes.Bytes_hasprefix.hasPrefix(_ident, (new stdgo.Slice<stdgo.GoUInt8>(2, 2, ...[(1 : stdgo.GoUInt8), (223 : stdgo.GoUInt8)]).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>)) || stdgo._internal.bytes.Bytes_hasprefix.hasPrefix(_ident, (new stdgo.Slice<stdgo.GoUInt8>(2, 2, ...[(1 : stdgo.GoUInt8), (247 : stdgo.GoUInt8)]).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>)) : Bool)) {
            var __tmp__ = stdgo._internal.internal.xcoff.Xcoff_newfile.newFile(_r), _f:stdgo.Ref<stdgo._internal.internal.xcoff.Xcoff_file.File> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                return {
                    final __tmp__:{ var _0 : stdgo.GoString; var _1 : stdgo.GoString; var _2 : stdgo.Error; } = { _0 : (stdgo.Go.str() : stdgo.GoString)?.__copy__(), _1 : (stdgo.Go.str() : stdgo.GoString)?.__copy__(), _2 : stdgo._internal.debug.buildinfo.Buildinfo__errunrecognizedformat._errUnrecognizedFormat };
                    _vers = __tmp__._0;
                    _mod = __tmp__._1;
                    _err = __tmp__._2;
                    __tmp__;
                };
            };
            _x = stdgo.Go.asInterface((stdgo.Go.setRef((new stdgo._internal.debug.buildinfo.Buildinfo_t_xcoffexe.T_xcoffExe(_f) : stdgo._internal.debug.buildinfo.Buildinfo_t_xcoffexe.T_xcoffExe)) : stdgo.Ref<stdgo._internal.debug.buildinfo.Buildinfo_t_xcoffexe.T_xcoffExe>));
        } else if (stdgo._internal.debug.buildinfo.Buildinfo__hasplan9magic._hasPlan9Magic(_ident)) {
            var __tmp__ = stdgo._internal.debug.plan9obj.Plan9obj_newfile.newFile(_r), _f:stdgo.Ref<stdgo._internal.debug.plan9obj.Plan9obj_file.File> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                return {
                    final __tmp__:{ var _0 : stdgo.GoString; var _1 : stdgo.GoString; var _2 : stdgo.Error; } = { _0 : (stdgo.Go.str() : stdgo.GoString)?.__copy__(), _1 : (stdgo.Go.str() : stdgo.GoString)?.__copy__(), _2 : stdgo._internal.debug.buildinfo.Buildinfo__errunrecognizedformat._errUnrecognizedFormat };
                    _vers = __tmp__._0;
                    _mod = __tmp__._1;
                    _err = __tmp__._2;
                    __tmp__;
                };
            };
            _x = stdgo.Go.asInterface((stdgo.Go.setRef((new stdgo._internal.debug.buildinfo.Buildinfo_t_plan9objexe.T_plan9objExe(_f) : stdgo._internal.debug.buildinfo.Buildinfo_t_plan9objexe.T_plan9objExe)) : stdgo.Ref<stdgo._internal.debug.buildinfo.Buildinfo_t_plan9objexe.T_plan9objExe>));
        } else {
            return {
                final __tmp__:{ var _0 : stdgo.GoString; var _1 : stdgo.GoString; var _2 : stdgo.Error; } = { _0 : (stdgo.Go.str() : stdgo.GoString)?.__copy__(), _1 : (stdgo.Go.str() : stdgo.GoString)?.__copy__(), _2 : stdgo._internal.debug.buildinfo.Buildinfo__errunrecognizedformat._errUnrecognizedFormat };
                _vers = __tmp__._0;
                _mod = __tmp__._1;
                _err = __tmp__._2;
                __tmp__;
            };
        };
        var _dataAddr = (_x.dataStart() : stdgo.GoUInt64);
        var __tmp__ = _x.readData(_dataAddr, (65536i64 : stdgo.GoUInt64)), _data:stdgo.Slice<stdgo.GoUInt8> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            return {
                final __tmp__:{ var _0 : stdgo.GoString; var _1 : stdgo.GoString; var _2 : stdgo.Error; } = { _0 : (stdgo.Go.str() : stdgo.GoString)?.__copy__(), _1 : (stdgo.Go.str() : stdgo.GoString)?.__copy__(), _2 : _err };
                _vers = __tmp__._0;
                _mod = __tmp__._1;
                _err = __tmp__._2;
                __tmp__;
            };
        };
        {};
        while (true) {
            var _i = (stdgo._internal.bytes.Bytes_index.index(_data, stdgo._internal.debug.buildinfo.Buildinfo__buildinfomagic._buildInfoMagic) : stdgo.GoInt);
            if (((_i < (0 : stdgo.GoInt) : Bool) || (((_data.length) - _i : stdgo.GoInt) < (32 : stdgo.GoInt) : Bool) : Bool)) {
                return {
                    final __tmp__:{ var _0 : stdgo.GoString; var _1 : stdgo.GoString; var _2 : stdgo.Error; } = { _0 : (stdgo.Go.str() : stdgo.GoString)?.__copy__(), _1 : (stdgo.Go.str() : stdgo.GoString)?.__copy__(), _2 : stdgo._internal.debug.buildinfo.Buildinfo__errnotgoexe._errNotGoExe };
                    _vers = __tmp__._0;
                    _mod = __tmp__._1;
                    _err = __tmp__._2;
                    __tmp__;
                };
            };
            if ((((_i % (16 : stdgo.GoInt) : stdgo.GoInt) == (0 : stdgo.GoInt)) && (((_data.length) - _i : stdgo.GoInt) >= (32 : stdgo.GoInt) : Bool) : Bool)) {
                _data = (_data.__slice__(_i) : stdgo.Slice<stdgo.GoUInt8>);
                break;
            };
            _data = (_data.__slice__(((((_i + (16 : stdgo.GoInt) : stdgo.GoInt) - (1 : stdgo.GoInt) : stdgo.GoInt)) & (((15 : stdgo.GoInt) ^ (-1i32 : stdgo.GoInt32) : stdgo.GoInt)) : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>);
        };
        var _ptrSize = (_data[(14 : stdgo.GoInt)] : stdgo.GoInt);
        if ((_data[(15 : stdgo.GoInt)] & (2 : stdgo.GoUInt8) : stdgo.GoUInt8) != ((0 : stdgo.GoUInt8))) {
            {
                var __tmp__ = stdgo._internal.debug.buildinfo.Buildinfo__decodestring._decodeString((_data.__slice__((32 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>));
                _vers = @:tmpset0 __tmp__._0?.__copy__();
                _data = @:tmpset0 __tmp__._1;
            };
            {
                var __tmp__ = stdgo._internal.debug.buildinfo.Buildinfo__decodestring._decodeString(_data);
                _mod = @:tmpset0 __tmp__._0?.__copy__();
                _data = @:tmpset0 __tmp__._1;
            };
        } else {
            var _bigEndian = (_data[(15 : stdgo.GoInt)] != ((0 : stdgo.GoUInt8)) : Bool);
            var _bo:stdgo._internal.encoding.binary.Binary_byteorder.ByteOrder = (null : stdgo._internal.encoding.binary.Binary_byteorder.ByteOrder);
            if (_bigEndian) {
                _bo = stdgo.Go.asInterface(stdgo._internal.encoding.binary.Binary_bigendian.bigEndian);
            } else {
                _bo = stdgo.Go.asInterface(stdgo._internal.encoding.binary.Binary_littleendian.littleEndian);
            };
            var _readPtr:stdgo.Slice<stdgo.GoUInt8> -> stdgo.GoUInt64 = null;
            if (_ptrSize == ((4 : stdgo.GoInt))) {
                _readPtr = function(_b:stdgo.Slice<stdgo.GoUInt8>):stdgo.GoUInt64 {
                    return (_bo.uint32(_b) : stdgo.GoUInt64);
                };
            } else if (_ptrSize == ((8 : stdgo.GoInt))) {
                _readPtr = _bo.uint64;
            } else {
                return {
                    final __tmp__:{ var _0 : stdgo.GoString; var _1 : stdgo.GoString; var _2 : stdgo.Error; } = { _0 : (stdgo.Go.str() : stdgo.GoString)?.__copy__(), _1 : (stdgo.Go.str() : stdgo.GoString)?.__copy__(), _2 : stdgo._internal.debug.buildinfo.Buildinfo__errnotgoexe._errNotGoExe };
                    _vers = __tmp__._0;
                    _mod = __tmp__._1;
                    _err = __tmp__._2;
                    __tmp__;
                };
            };
            _vers = stdgo._internal.debug.buildinfo.Buildinfo__readstring._readString(_x, _ptrSize, _readPtr, _readPtr((_data.__slice__((16 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>)))?.__copy__();
            _mod = stdgo._internal.debug.buildinfo.Buildinfo__readstring._readString(_x, _ptrSize, _readPtr, _readPtr((_data.__slice__(((16 : stdgo.GoInt) + _ptrSize : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>)))?.__copy__();
        };
        if (_vers == ((stdgo.Go.str() : stdgo.GoString))) {
            return {
                final __tmp__:{ var _0 : stdgo.GoString; var _1 : stdgo.GoString; var _2 : stdgo.Error; } = { _0 : (stdgo.Go.str() : stdgo.GoString)?.__copy__(), _1 : (stdgo.Go.str() : stdgo.GoString)?.__copy__(), _2 : stdgo._internal.debug.buildinfo.Buildinfo__errnotgoexe._errNotGoExe };
                _vers = __tmp__._0;
                _mod = __tmp__._1;
                _err = __tmp__._2;
                __tmp__;
            };
        };
        if ((((_mod.length) >= (33 : stdgo.GoInt) : Bool) && (_mod[((_mod.length) - (17 : stdgo.GoInt) : stdgo.GoInt)] == (10 : stdgo.GoUInt8)) : Bool)) {
            _mod = (_mod.__slice__((16 : stdgo.GoInt), ((_mod.length) - (16 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
        } else {
            _mod = (stdgo.Go.str() : stdgo.GoString)?.__copy__();
        };
        return {
            final __tmp__:{ var _0 : stdgo.GoString; var _1 : stdgo.GoString; var _2 : stdgo.Error; } = { _0 : _vers?.__copy__(), _1 : _mod?.__copy__(), _2 : (null : stdgo.Error) };
            _vers = __tmp__._0;
            _mod = __tmp__._1;
            _err = __tmp__._2;
            __tmp__;
        };
    }
