package stdgo._internal.encoding.pem;
function encode(_out:stdgo._internal.io.Io_writer.Writer, _b:stdgo.Ref<stdgo._internal.encoding.pem.Pem_block.Block>):stdgo.Error {
        //"file:///home/runner/.go/go1.21.3/src/encoding/pem/pem.go#L242"
        for (_k => _ in (@:checkr _b ?? throw "null pointer dereference").headers) {
            //"file:///home/runner/.go/go1.21.3/src/encoding/pem/pem.go#L243"
            if (stdgo._internal.strings.Strings_contains.contains(_k?.__copy__(), (":" : stdgo.GoString))) {
                //"file:///home/runner/.go/go1.21.3/src/encoding/pem/pem.go#L244"
                return stdgo._internal.errors.Errors_new_.new_(("pem: cannot encode a header key that contains a colon" : stdgo.GoString));
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/encoding/pem/pem.go#L251"
        {
            var __tmp__ = _out.write((stdgo._internal.encoding.pem.Pem__pemstart._pemStart.__slice__((1 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>)), __0:stdgo.GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                //"file:///home/runner/.go/go1.21.3/src/encoding/pem/pem.go#L252"
                return _err;
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/encoding/pem/pem.go#L254"
        {
            var __tmp__ = _out.write((((@:checkr _b ?? throw "null pointer dereference").type + ("-----\n" : stdgo.GoString)?.__copy__() : stdgo.GoString) : stdgo.Slice<stdgo.GoUInt8>)), __1:stdgo.GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                //"file:///home/runner/.go/go1.21.3/src/encoding/pem/pem.go#L255"
                return _err;
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/encoding/pem/pem.go#L258"
        if ((((@:checkr _b ?? throw "null pointer dereference").headers.length) > (0 : stdgo.GoInt) : Bool)) {
            {};
            var _h = (new stdgo.Slice<stdgo.GoString>((0 : stdgo.GoInt).toBasic(), ((@:checkr _b ?? throw "null pointer dereference").headers.length)).__setString__() : stdgo.Slice<stdgo.GoString>);
            var _hasProcType = (false : Bool);
            //"file:///home/runner/.go/go1.21.3/src/encoding/pem/pem.go#L262"
            for (_k => _ in (@:checkr _b ?? throw "null pointer dereference").headers) {
                //"file:///home/runner/.go/go1.21.3/src/encoding/pem/pem.go#L263"
                if (_k == (("Proc-Type" : stdgo.GoString))) {
                    _hasProcType = true;
                    //"file:///home/runner/.go/go1.21.3/src/encoding/pem/pem.go#L265"
                    continue;
                };
                _h = (_h.__append__(_k?.__copy__()) : stdgo.Slice<stdgo.GoString>);
            };
            //"file:///home/runner/.go/go1.21.3/src/encoding/pem/pem.go#L271"
            if (_hasProcType) {
                //"file:///home/runner/.go/go1.21.3/src/encoding/pem/pem.go#L272"
                {
                    var _err = (stdgo._internal.encoding.pem.Pem__writeheader._writeHeader(_out, ("Proc-Type" : stdgo.GoString), ((@:checkr _b ?? throw "null pointer dereference").headers[("Proc-Type" : stdgo.GoString)] ?? ("" : stdgo.GoString))?.__copy__()) : stdgo.Error);
                    if (_err != null) {
                        //"file:///home/runner/.go/go1.21.3/src/encoding/pem/pem.go#L273"
                        return _err;
                    };
                };
            };
            //"file:///home/runner/.go/go1.21.3/src/encoding/pem/pem.go#L277"
            stdgo._internal.sort.Sort_strings.strings(_h);
            //"file:///home/runner/.go/go1.21.3/src/encoding/pem/pem.go#L278"
            for (__2 => _k in _h) {
                //"file:///home/runner/.go/go1.21.3/src/encoding/pem/pem.go#L279"
                {
                    var _err = (stdgo._internal.encoding.pem.Pem__writeheader._writeHeader(_out, _k?.__copy__(), ((@:checkr _b ?? throw "null pointer dereference").headers[_k] ?? ("" : stdgo.GoString))?.__copy__()) : stdgo.Error);
                    if (_err != null) {
                        //"file:///home/runner/.go/go1.21.3/src/encoding/pem/pem.go#L280"
                        return _err;
                    };
                };
            };
            //"file:///home/runner/.go/go1.21.3/src/encoding/pem/pem.go#L283"
            {
                var __tmp__ = _out.write(stdgo._internal.encoding.pem.Pem__nl._nl), __3:stdgo.GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                if (_err != null) {
                    //"file:///home/runner/.go/go1.21.3/src/encoding/pem/pem.go#L284"
                    return _err;
                };
            };
        };
        var _breaker:stdgo._internal.encoding.pem.Pem_t_linebreaker.T_lineBreaker = ({} : stdgo._internal.encoding.pem.Pem_t_linebreaker.T_lineBreaker);
        _breaker._out = _out;
        var _b64 = (stdgo._internal.encoding.base64.Base64_newencoder.newEncoder(stdgo._internal.encoding.base64.Base64_stdencoding.stdEncoding, stdgo.Go.asInterface((stdgo.Go.setRef(_breaker) : stdgo.Ref<stdgo._internal.encoding.pem.Pem_t_linebreaker.T_lineBreaker>))) : stdgo._internal.io.Io_writecloser.WriteCloser);
        //"file:///home/runner/.go/go1.21.3/src/encoding/pem/pem.go#L292"
        {
            var __tmp__ = _b64.write((@:checkr _b ?? throw "null pointer dereference").bytes), __2:stdgo.GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                //"file:///home/runner/.go/go1.21.3/src/encoding/pem/pem.go#L293"
                return _err;
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/encoding/pem/pem.go#L295"
        _b64.close();
        //"file:///home/runner/.go/go1.21.3/src/encoding/pem/pem.go#L296"
        _breaker.close();
        //"file:///home/runner/.go/go1.21.3/src/encoding/pem/pem.go#L298"
        {
            var __tmp__ = _out.write((stdgo._internal.encoding.pem.Pem__pemend._pemEnd.__slice__((1 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>)), __3:stdgo.GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                //"file:///home/runner/.go/go1.21.3/src/encoding/pem/pem.go#L299"
                return _err;
            };
        };
        var __tmp__ = _out.write((((@:checkr _b ?? throw "null pointer dereference").type + ("-----\n" : stdgo.GoString)?.__copy__() : stdgo.GoString) : stdgo.Slice<stdgo.GoUInt8>)), __4:stdgo.GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        //"file:///home/runner/.go/go1.21.3/src/encoding/pem/pem.go#L302"
        return _err;
    }
