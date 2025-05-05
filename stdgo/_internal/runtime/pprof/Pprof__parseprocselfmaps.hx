package stdgo._internal.runtime.pprof;
function _parseProcSelfMaps(_data:stdgo.Slice<stdgo.GoUInt8>, _addMapping:(stdgo.GoUInt64, stdgo.GoUInt64, stdgo.GoUInt64, stdgo.GoString, stdgo.GoString) -> Void):Void {
        var _line:stdgo.Slice<stdgo.GoUInt8> = (null : stdgo.Slice<stdgo.GoUInt8>);
        var _next = function():stdgo.Slice<stdgo.GoUInt8> {
            var _f:stdgo.Slice<stdgo.GoUInt8> = (null : stdgo.Slice<stdgo.GoUInt8>);
            {
                var __tmp__ = stdgo._internal.bytes.Bytes_cut.cut(_line, stdgo._internal.runtime.pprof.Pprof__space._space);
                _f = @:tmpset0 __tmp__._0;
                _line = @:tmpset0 __tmp__._1;
            };
            _line = stdgo._internal.bytes.Bytes_trimleft.trimLeft(_line, (" " : stdgo.GoString));
            //"file:///home/runner/.go/go1.21.3/src/runtime/pprof/proto.go#L686"
            return _f;
        };
        //"file:///home/runner/.go/go1.21.3/src/runtime/pprof/proto.go#L689"
        while (((_data.length) > (0 : stdgo.GoInt) : Bool)) {
            {
                var __tmp__ = stdgo._internal.bytes.Bytes_cut.cut(_data, stdgo._internal.runtime.pprof.Pprof__newline._newline);
                _line = @:tmpset0 __tmp__._0;
                _data = @:tmpset0 __tmp__._1;
            };
            var _addr = _next();
            var __tmp__ = stdgo._internal.strings.Strings_cut.cut((_addr : stdgo.GoString)?.__copy__(), ("-" : stdgo.GoString)), _loStr:stdgo.GoString = __tmp__._0, _hiStr:stdgo.GoString = __tmp__._1, _ok:Bool = __tmp__._2;
            //"file:///home/runner/.go/go1.21.3/src/runtime/pprof/proto.go#L693"
            if (!_ok) {
                //"file:///home/runner/.go/go1.21.3/src/runtime/pprof/proto.go#L694"
                continue;
            };
            var __tmp__ = stdgo._internal.strconv.Strconv_parseuint.parseUint(_loStr?.__copy__(), (16 : stdgo.GoInt), (64 : stdgo.GoInt)), _lo:stdgo.GoUInt64 = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            //"file:///home/runner/.go/go1.21.3/src/runtime/pprof/proto.go#L697"
            if (_err != null) {
                //"file:///home/runner/.go/go1.21.3/src/runtime/pprof/proto.go#L698"
                continue;
            };
            var __tmp__ = stdgo._internal.strconv.Strconv_parseuint.parseUint(_hiStr?.__copy__(), (16 : stdgo.GoInt), (64 : stdgo.GoInt)), _hi:stdgo.GoUInt64 = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            //"file:///home/runner/.go/go1.21.3/src/runtime/pprof/proto.go#L701"
            if (_err != null) {
                //"file:///home/runner/.go/go1.21.3/src/runtime/pprof/proto.go#L702"
                continue;
            };
            var _perm = _next();
            //"file:///home/runner/.go/go1.21.3/src/runtime/pprof/proto.go#L705"
            if ((((_perm.length) < (4 : stdgo.GoInt) : Bool) || (_perm[(2 : stdgo.GoInt)] != (120 : stdgo.GoUInt8)) : Bool)) {
                //"file:///home/runner/.go/go1.21.3/src/runtime/pprof/proto.go#L707"
                continue;
            };
            var __tmp__ = stdgo._internal.strconv.Strconv_parseuint.parseUint((_next() : stdgo.GoString)?.__copy__(), (16 : stdgo.GoInt), (64 : stdgo.GoInt)), _offset:stdgo.GoUInt64 = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            //"file:///home/runner/.go/go1.21.3/src/runtime/pprof/proto.go#L710"
            if (_err != null) {
                //"file:///home/runner/.go/go1.21.3/src/runtime/pprof/proto.go#L711"
                continue;
            };
            //"file:///home/runner/.go/go1.21.3/src/runtime/pprof/proto.go#L713"
            _next();
            var _inode = _next();
            //"file:///home/runner/.go/go1.21.3/src/runtime/pprof/proto.go#L715"
            if (_line == null) {
                //"file:///home/runner/.go/go1.21.3/src/runtime/pprof/proto.go#L716"
                continue;
            };
            var _file = ((_line : stdgo.GoString)?.__copy__() : stdgo.GoString);
            var _deletedStr = ((" (deleted)" : stdgo.GoString) : stdgo.GoString);
            var _deletedLen = (_deletedStr.length : stdgo.GoInt);
            //"file:///home/runner/.go/go1.21.3/src/runtime/pprof/proto.go#L723"
            if ((((_file.length) >= _deletedLen : Bool) && ((_file.__slice__(((_file.length) - _deletedLen : stdgo.GoInt)) : stdgo.GoString) == _deletedStr) : Bool)) {
                _file = (_file.__slice__(0, ((_file.length) - _deletedLen : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
            };
            //"file:///home/runner/.go/go1.21.3/src/runtime/pprof/proto.go#L727"
            if ((((_inode.length) == ((1 : stdgo.GoInt)) && _inode[(0 : stdgo.GoInt)] == ((48 : stdgo.GoUInt8)) : Bool) && (_file == (stdgo.Go.str() : stdgo.GoString)) : Bool)) {
                //"file:///home/runner/.go/go1.21.3/src/runtime/pprof/proto.go#L732"
                continue;
            };
            var __tmp__ = stdgo._internal.runtime.pprof.Pprof__elfbuildid._elfBuildID(_file?.__copy__()), _buildID:stdgo.GoString = __tmp__._0, __0:stdgo.Error = __tmp__._1;
            //"file:///home/runner/.go/go1.21.3/src/runtime/pprof/proto.go#L744"
            _addMapping(_lo, _hi, _offset, _file?.__copy__(), _buildID?.__copy__());
        };
    }
