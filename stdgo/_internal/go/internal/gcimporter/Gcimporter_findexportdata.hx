package stdgo._internal.go.internal.gcimporter;
function findExportData(_r:stdgo.Ref<stdgo._internal.bufio.Bufio_reader.Reader>):{ var _0 : stdgo.GoString; var _1 : stdgo.GoInt; var _2 : stdgo.Error; } {
        var _hdr = ("" : stdgo.GoString), _size = (0 : stdgo.GoInt), _err = (null : stdgo.Error);
        var __tmp__ = _r.readSlice((10 : stdgo.GoUInt8)), _line:stdgo.Slice<stdgo.GoUInt8> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        //"file:///home/runner/.go/go1.21.3/src/go/internal/gcimporter/exportdata.go#L46"
        if (_err != null) {
            _err = stdgo._internal.fmt.Fmt_errorf.errorf(("can\'t find export data (%v)" : stdgo.GoString), stdgo.Go.toInterface(_err));
            //"file:///home/runner/.go/go1.21.3/src/go/internal/gcimporter/exportdata.go#L48"
            return { _0 : _hdr, _1 : _size, _2 : _err };
        };
        //"file:///home/runner/.go/go1.21.3/src/go/internal/gcimporter/exportdata.go#L51"
        if ((_line : stdgo.GoString) == (("!<arch>\n" : stdgo.GoString))) {
            var _name:stdgo.GoString = ("" : stdgo.GoString);
            //"file:///home/runner/.go/go1.21.3/src/go/internal/gcimporter/exportdata.go#L54"
            {
                {
                    var __tmp__ = stdgo._internal.go.internal.gcimporter.Gcimporter__readgopackheader._readGopackHeader(_r);
                    _name = @:tmpset0 __tmp__._0?.__copy__();
                    _size = @:tmpset0 __tmp__._1;
                    _err = @:tmpset0 __tmp__._2;
                };
                if (_err != null) {
                    //"file:///home/runner/.go/go1.21.3/src/go/internal/gcimporter/exportdata.go#L55"
                    return { _0 : _hdr, _1 : _size, _2 : _err };
                };
            };
            //"file:///home/runner/.go/go1.21.3/src/go/internal/gcimporter/exportdata.go#L59"
            if (_name != (("__.PKGDEF" : stdgo.GoString))) {
                _err = stdgo._internal.fmt.Fmt_errorf.errorf(("go archive is missing __.PKGDEF" : stdgo.GoString));
                //"file:///home/runner/.go/go1.21.3/src/go/internal/gcimporter/exportdata.go#L61"
                return { _0 : _hdr, _1 : _size, _2 : _err };
            };
            //"file:///home/runner/.go/go1.21.3/src/go/internal/gcimporter/exportdata.go#L66"
            {
                {
                    var __tmp__ = _r.readSlice((10 : stdgo.GoUInt8));
                    _line = @:tmpset0 __tmp__._0;
                    _err = @:tmpset0 __tmp__._1;
                };
                if (_err != null) {
                    _err = stdgo._internal.fmt.Fmt_errorf.errorf(("can\'t find export data (%v)" : stdgo.GoString), stdgo.Go.toInterface(_err));
                    //"file:///home/runner/.go/go1.21.3/src/go/internal/gcimporter/exportdata.go#L68"
                    return { _0 : _hdr, _1 : _size, _2 : _err };
                };
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/go/internal/gcimporter/exportdata.go#L74"
        if (!stdgo._internal.strings.Strings_hasprefix.hasPrefix((_line : stdgo.GoString)?.__copy__(), ("go object " : stdgo.GoString))) {
            _err = stdgo._internal.fmt.Fmt_errorf.errorf(("not a Go object file" : stdgo.GoString));
            //"file:///home/runner/.go/go1.21.3/src/go/internal/gcimporter/exportdata.go#L76"
            return { _0 : _hdr, _1 : _size, _2 : _err };
        };
        _size = (_size - ((_line.length)) : stdgo.GoInt);
        //"file:///home/runner/.go/go1.21.3/src/go/internal/gcimporter/exportdata.go#L82"
        while (_line[(0 : stdgo.GoInt)] != ((36 : stdgo.GoUInt8))) {
            //"file:///home/runner/.go/go1.21.3/src/go/internal/gcimporter/exportdata.go#L83"
            {
                {
                    var __tmp__ = _r.readSlice((10 : stdgo.GoUInt8));
                    _line = @:tmpset0 __tmp__._0;
                    _err = @:tmpset0 __tmp__._1;
                };
                if (_err != null) {
                    _err = stdgo._internal.fmt.Fmt_errorf.errorf(("can\'t find export data (%v)" : stdgo.GoString), stdgo.Go.toInterface(_err));
                    //"file:///home/runner/.go/go1.21.3/src/go/internal/gcimporter/exportdata.go#L85"
                    return { _0 : _hdr, _1 : _size, _2 : _err };
                };
            };
            _size = (_size - ((_line.length)) : stdgo.GoInt);
        };
        _hdr = (_line : stdgo.GoString)?.__copy__();
        //"file:///home/runner/.go/go1.21.3/src/go/internal/gcimporter/exportdata.go#L91"
        return { _0 : _hdr, _1 : _size, _2 : _err };
    }
