package stdgo._internal.go.build;
function _expandSrcDir(_str:stdgo.GoString, _srcdir:stdgo.GoString):{ var _0 : stdgo.GoString; var _1 : Bool; } {
        _srcdir = stdgo._internal.path.filepath.Filepath_toslash.toSlash(_srcdir?.__copy__())?.__copy__();
        var _chunks = stdgo._internal.strings.Strings_split.split(_str?.__copy__(), ("${SRCDIR}" : stdgo.GoString));
        //"file:///home/runner/.go/go1.21.3/src/go/build/build.go#L1762"
        if (((_chunks.length) < (2 : stdgo.GoInt) : Bool)) {
            //"file:///home/runner/.go/go1.21.3/src/go/build/build.go#L1763"
            return { _0 : _str?.__copy__(), _1 : stdgo._internal.go.build.Build__safecgoname._safeCgoName(_str?.__copy__()) };
        };
        var _ok = (true : Bool);
        //"file:///home/runner/.go/go1.21.3/src/go/build/build.go#L1766"
        for (__0 => _chunk in _chunks) {
            _ok = (_ok && (((_chunk == (stdgo.Go.str() : stdgo.GoString)) || stdgo._internal.go.build.Build__safecgoname._safeCgoName(_chunk?.__copy__()) : Bool)) : Bool);
        };
        _ok = (_ok && (((_srcdir == (stdgo.Go.str() : stdgo.GoString)) || stdgo._internal.go.build.Build__safecgoname._safeCgoName(_srcdir?.__copy__()) : Bool)) : Bool);
        var _res = (stdgo._internal.strings.Strings_join.join(_chunks, _srcdir?.__copy__())?.__copy__() : stdgo.GoString);
        //"file:///home/runner/.go/go1.21.3/src/go/build/build.go#L1771"
        return { _0 : _res?.__copy__(), _1 : (_ok && (_res != (stdgo.Go.str() : stdgo.GoString)) : Bool) };
    }
