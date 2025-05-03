package stdgo._internal.debug.dwarf;
function _pathJoin(_dirname:stdgo.GoString, _filename:stdgo.GoString):stdgo.GoString {
        //"file:///home/runner/.go/go1.21.3/src/debug/dwarf/line.go#L799"
        if ((_dirname.length) == ((0 : stdgo.GoInt))) {
            //"file:///home/runner/.go/go1.21.3/src/debug/dwarf/line.go#L800"
            return _filename?.__copy__();
        };
        var __tmp__ = stdgo._internal.debug.dwarf.Dwarf__splitdrive._splitDrive(_dirname?.__copy__()), _drive:stdgo.GoString = __tmp__._0, _dirname:stdgo.GoString = __tmp__._1;
        //"file:///home/runner/.go/go1.21.3/src/debug/dwarf/line.go#L806"
        if (_drive == ((stdgo.Go.str() : stdgo.GoString))) {
            //"file:///home/runner/.go/go1.21.3/src/debug/dwarf/line.go#L808"
            return stdgo._internal.path.Path_join.join(_dirname?.__copy__(), _filename?.__copy__())?.__copy__();
        };
        var __tmp__ = stdgo._internal.debug.dwarf.Dwarf__splitdrive._splitDrive(_filename?.__copy__()), _drive2:stdgo.GoString = __tmp__._0, _filename:stdgo.GoString = __tmp__._1;
        //"file:///home/runner/.go/go1.21.3/src/debug/dwarf/line.go#L812"
        if (_drive2 != ((stdgo.Go.str() : stdgo.GoString))) {
            //"file:///home/runner/.go/go1.21.3/src/debug/dwarf/line.go#L813"
            if (!stdgo._internal.strings.Strings_equalfold.equalFold(_drive?.__copy__(), _drive2?.__copy__())) {
                //"file:///home/runner/.go/go1.21.3/src/debug/dwarf/line.go#L816"
                return (_drive2 + _filename?.__copy__() : stdgo.GoString)?.__copy__();
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/debug/dwarf/line.go#L820"
        if ((!((stdgo._internal.strings.Strings_hassuffix.hasSuffix(_dirname?.__copy__(), ("/" : stdgo.GoString)) || stdgo._internal.strings.Strings_hassuffix.hasSuffix(_dirname?.__copy__(), ("\\" : stdgo.GoString)) : Bool)) && (_dirname != (stdgo.Go.str() : stdgo.GoString)) : Bool)) {
            var _sep = (("\\" : stdgo.GoString) : stdgo.GoString);
            //"file:///home/runner/.go/go1.21.3/src/debug/dwarf/line.go#L822"
            if (stdgo._internal.strings.Strings_hasprefix.hasPrefix(_dirname?.__copy__(), ("/" : stdgo.GoString))) {
                _sep = ("/" : stdgo.GoString);
            };
            _dirname = (_dirname + (_sep)?.__copy__() : stdgo.GoString);
        };
        //"file:///home/runner/.go/go1.21.3/src/debug/dwarf/line.go#L827"
        return ((_drive + _dirname?.__copy__() : stdgo.GoString) + _filename?.__copy__() : stdgo.GoString)?.__copy__();
    }
