package stdgo._internal.runtime.pprof;
function _parseProcSelfMaps(_data:stdgo.Slice<stdgo.GoUInt8>, _addMapping:(stdgo.GoUInt64, stdgo.GoUInt64, stdgo.GoUInt64, stdgo.GoString, stdgo.GoString) -> Void):Void {
        var _line:stdgo.Slice<stdgo.GoUInt8> = (null : stdgo.Slice<stdgo.GoUInt8>);
        var _next = function():stdgo.Slice<stdgo.GoUInt8> {
            var _f:stdgo.Slice<stdgo.GoUInt8> = (null : stdgo.Slice<stdgo.GoUInt8>);
            {
                var __tmp__ = stdgo._internal.bytes.Bytes_cut.cut(_line, stdgo._internal.runtime.pprof.Pprof__space._space);
                _f = __tmp__._0;
                _line = __tmp__._1;
            };
            _line = stdgo._internal.bytes.Bytes_trimLeft.trimLeft(_line, (" " : stdgo.GoString));
            return _f;
        };
        while (((_data.length) > (0 : stdgo.GoInt) : Bool)) {
            {
                var __tmp__ = stdgo._internal.bytes.Bytes_cut.cut(_data, stdgo._internal.runtime.pprof.Pprof__newline._newline);
                _line = __tmp__._0;
                _data = __tmp__._1;
            };
            var _addr = _next();
            var __tmp__ = stdgo._internal.strings.Strings_cut.cut((_addr : stdgo.GoString)?.__copy__(), ("-" : stdgo.GoString)), _loStr:stdgo.GoString = __tmp__._0, _hiStr:stdgo.GoString = __tmp__._1, _ok:Bool = __tmp__._2;
            if (!_ok) {
                continue;
            };
            var __tmp__ = stdgo._internal.strconv.Strconv_parseUint.parseUint(_loStr?.__copy__(), (16 : stdgo.GoInt), (64 : stdgo.GoInt)), _lo:stdgo.GoUInt64 = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                continue;
            };
            var __tmp__ = stdgo._internal.strconv.Strconv_parseUint.parseUint(_hiStr?.__copy__(), (16 : stdgo.GoInt), (64 : stdgo.GoInt)), _hi:stdgo.GoUInt64 = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                continue;
            };
            var _perm = _next();
            if ((((_perm.length) < (4 : stdgo.GoInt) : Bool) || (_perm[(2 : stdgo.GoInt)] != (120 : stdgo.GoUInt8)) : Bool)) {
                continue;
            };
            var __tmp__ = stdgo._internal.strconv.Strconv_parseUint.parseUint((_next() : stdgo.GoString)?.__copy__(), (16 : stdgo.GoInt), (64 : stdgo.GoInt)), _offset:stdgo.GoUInt64 = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                continue;
            };
            _next();
            var _inode = _next();
            if (_line == null) {
                continue;
            };
            var _file = ((_line : stdgo.GoString)?.__copy__() : stdgo.GoString);
            var _deletedStr = (" (deleted)" : stdgo.GoString);
            var _deletedLen = (_deletedStr.length : stdgo.GoInt);
            if ((((_file.length) >= _deletedLen : Bool) && ((_file.__slice__(((_file.length) - _deletedLen : stdgo.GoInt)) : stdgo.GoString) == _deletedStr) : Bool)) {
                _file = (_file.__slice__(0, ((_file.length) - _deletedLen : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
            };
            if ((((_inode.length) == ((1 : stdgo.GoInt)) && _inode[(0 : stdgo.GoInt)] == ((48 : stdgo.GoUInt8)) : Bool) && (_file == stdgo.Go.str()) : Bool)) {
                continue;
            };
            var __tmp__ = stdgo._internal.runtime.pprof.Pprof__elfBuildID._elfBuildID(_file?.__copy__()), _buildID:stdgo.GoString = __tmp__._0, __0:stdgo.Error = __tmp__._1;
            _addMapping(_lo, _hi, _offset, _file?.__copy__(), _buildID?.__copy__());
        };
    }
