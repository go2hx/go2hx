package stdgo._internal.encoding.pem;
function encode(_out:stdgo._internal.io.Io_Writer.Writer, _b:stdgo.Ref<stdgo._internal.encoding.pem.Pem_Block.Block>):stdgo.Error {
        for (_k => _ in _b.headers) {
            if (stdgo._internal.strings.Strings_contains.contains(_k?.__copy__(), (":" : stdgo.GoString))) {
                return stdgo._internal.errors.Errors_new_.new_(("pem: cannot encode a header key that contains a colon" : stdgo.GoString));
            };
        };
        {
            var __tmp__ = _out.write((stdgo._internal.encoding.pem.Pem__pemStart._pemStart.__slice__((1 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>)), __0:stdgo.GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                return _err;
            };
        };
        {
            var __tmp__ = _out.write(((_b.type + ("-----\n" : stdgo.GoString)?.__copy__() : stdgo.GoString) : stdgo.Slice<stdgo.GoUInt8>)), __1:stdgo.GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                return _err;
            };
        };
        if (((_b.headers.length) > (0 : stdgo.GoInt) : Bool)) {
            {};
            var _h = (new stdgo.Slice<stdgo.GoString>((0 : stdgo.GoInt).toBasic(), (_b.headers.length)).__setString__() : stdgo.Slice<stdgo.GoString>);
            var _hasProcType = (false : Bool);
            for (_k => _ in _b.headers) {
                if (_k == (("Proc-Type" : stdgo.GoString))) {
                    _hasProcType = true;
                    continue;
                };
                _h = (_h.__append__(_k?.__copy__()));
            };
            if (_hasProcType) {
                {
                    var _err = (stdgo._internal.encoding.pem.Pem__writeHeader._writeHeader(_out, ("Proc-Type" : stdgo.GoString), (_b.headers[("Proc-Type" : stdgo.GoString)] ?? ("" : stdgo.GoString))?.__copy__()) : stdgo.Error);
                    if (_err != null) {
                        return _err;
                    };
                };
            };
            stdgo._internal.sort.Sort_strings.strings(_h);
            for (__2 => _k in _h) {
                {
                    var _err = (stdgo._internal.encoding.pem.Pem__writeHeader._writeHeader(_out, _k?.__copy__(), (_b.headers[_k] ?? ("" : stdgo.GoString))?.__copy__()) : stdgo.Error);
                    if (_err != null) {
                        return _err;
                    };
                };
            };
            {
                var __tmp__ = _out.write(stdgo._internal.encoding.pem.Pem__nl._nl), __3:stdgo.GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                if (_err != null) {
                    return _err;
                };
            };
        };
        var _breaker:stdgo._internal.encoding.pem.Pem_T_lineBreaker.T_lineBreaker = ({} : stdgo._internal.encoding.pem.Pem_T_lineBreaker.T_lineBreaker);
        var _breaker__pointer__ = (stdgo.Go.setRef(_breaker) : stdgo.Ref<stdgo._internal.encoding.pem.Pem_T_lineBreaker.T_lineBreaker>);
        _breaker._out = _out;
        var _b64 = (stdgo._internal.encoding.base64.Base64_newEncoder.newEncoder(stdgo._internal.encoding.base64.Base64_stdEncoding.stdEncoding, stdgo.Go.asInterface(_breaker__pointer__)) : stdgo._internal.io.Io_WriteCloser.WriteCloser);
        {
            var __tmp__ = _b64.write(_b.bytes), __2:stdgo.GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                return _err;
            };
        };
        _b64.close();
        _breaker.close();
        {
            var __tmp__ = _out.write((stdgo._internal.encoding.pem.Pem__pemEnd._pemEnd.__slice__((1 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>)), __3:stdgo.GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                return _err;
            };
        };
        var __tmp__ = _out.write(((_b.type + ("-----\n" : stdgo.GoString)?.__copy__() : stdgo.GoString) : stdgo.Slice<stdgo.GoUInt8>)), __4:stdgo.GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        return _err;
    }
