package stdgo._internal.net.http.pprof;
function symbol(_w:stdgo._internal.net.http.Http_responsewriter.ResponseWriter, _r:stdgo.Ref<stdgo._internal.net.http.Http_request.Request>):Void {
        //"file:///home/runner/.go/go1.21.3/src/net/http/pprof/pprof.go#L192"
        _w.header().set(("X-Content-Type-Options" : stdgo.GoString), ("nosniff" : stdgo.GoString));
        //"file:///home/runner/.go/go1.21.3/src/net/http/pprof/pprof.go#L193"
        _w.header().set(("Content-Type" : stdgo.GoString), ("text/plain; charset=utf-8" : stdgo.GoString));
        var _buf:stdgo._internal.bytes.Bytes_buffer.Buffer = ({} : stdgo._internal.bytes.Bytes_buffer.Buffer);
        //"file:///home/runner/.go/go1.21.3/src/net/http/pprof/pprof.go#L202"
        stdgo._internal.fmt.Fmt_fprintf.fprintf(stdgo.Go.asInterface((stdgo.Go.setRef(_buf) : stdgo.Ref<stdgo._internal.bytes.Bytes_buffer.Buffer>)), ("num_symbols: 1\n" : stdgo.GoString));
        var _b:stdgo.Ref<stdgo._internal.bufio.Bufio_reader.Reader> = (null : stdgo.Ref<stdgo._internal.bufio.Bufio_reader.Reader>);
        //"file:///home/runner/.go/go1.21.3/src/net/http/pprof/pprof.go#L205"
        if ((@:checkr _r ?? throw "null pointer dereference").method == (("POST" : stdgo.GoString))) {
            _b = stdgo._internal.bufio.Bufio_newreader.newReader((@:checkr _r ?? throw "null pointer dereference").body);
        } else {
            _b = stdgo._internal.bufio.Bufio_newreader.newReader(stdgo.Go.asInterface(stdgo._internal.strings.Strings_newreader.newReader((@:checkr (@:checkr _r ?? throw "null pointer dereference").uRL ?? throw "null pointer dereference").rawQuery?.__copy__())));
        };
        //"file:///home/runner/.go/go1.21.3/src/net/http/pprof/pprof.go#L211"
        while (true) {
            var __tmp__ = _b.readSlice((43 : stdgo.GoUInt8)), _word:stdgo.Slice<stdgo.GoUInt8> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            //"file:///home/runner/.go/go1.21.3/src/net/http/pprof/pprof.go#L213"
            if (_err == null) {
                _word = (_word.__slice__((0 : stdgo.GoInt), ((_word.length) - (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>);
            };
            var __tmp__ = stdgo._internal.strconv.Strconv_parseuint.parseUint((_word : stdgo.GoString)?.__copy__(), (0 : stdgo.GoInt), (64 : stdgo.GoInt)), _pc:stdgo.GoUInt64 = __tmp__._0, __0:stdgo.Error = __tmp__._1;
            //"file:///home/runner/.go/go1.21.3/src/net/http/pprof/pprof.go#L217"
            if (_pc != ((0i64 : stdgo.GoUInt64))) {
                var _f = stdgo._internal.runtime.Runtime_funcforpc.funcForPC((new stdgo.GoUIntptr(_pc) : stdgo.GoUIntptr));
                //"file:///home/runner/.go/go1.21.3/src/net/http/pprof/pprof.go#L219"
                if (({
                    final value = _f;
                    (value != null && ((value : Dynamic).__nil__ == null || !(value : Dynamic).__nil__));
                })) {
                    //"file:///home/runner/.go/go1.21.3/src/net/http/pprof/pprof.go#L220"
                    stdgo._internal.fmt.Fmt_fprintf.fprintf(stdgo.Go.asInterface((stdgo.Go.setRef(_buf) : stdgo.Ref<stdgo._internal.bytes.Bytes_buffer.Buffer>)), ("%#x %s\n" : stdgo.GoString), stdgo.Go.toInterface(_pc), stdgo.Go.toInterface(_f.name()));
                };
            };
            //"file:///home/runner/.go/go1.21.3/src/net/http/pprof/pprof.go#L226"
            if (_err != null) {
                //"file:///home/runner/.go/go1.21.3/src/net/http/pprof/pprof.go#L227"
                if (stdgo.Go.toInterface(_err) != (stdgo.Go.toInterface(stdgo._internal.io.Io_eof.eOF))) {
                    //"file:///home/runner/.go/go1.21.3/src/net/http/pprof/pprof.go#L228"
                    stdgo._internal.fmt.Fmt_fprintf.fprintf(stdgo.Go.asInterface((stdgo.Go.setRef(_buf) : stdgo.Ref<stdgo._internal.bytes.Bytes_buffer.Buffer>)), ("reading request: %v\n" : stdgo.GoString), stdgo.Go.toInterface(_err));
                };
                //"file:///home/runner/.go/go1.21.3/src/net/http/pprof/pprof.go#L230"
                break;
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/net/http/pprof/pprof.go#L234"
        _w.write(_buf.bytes());
    }
