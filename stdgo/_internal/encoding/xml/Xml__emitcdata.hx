package stdgo._internal.encoding.xml;
function _emitCDATA(_w:stdgo._internal.io.Io_writer.Writer, _s:stdgo.Slice<stdgo.GoUInt8>):stdgo.Error {
        //"file:///home/runner/.go/go1.21.3/src/encoding/xml/xml.go#L2012"
        if ((_s.length) == ((0 : stdgo.GoInt))) {
            //"file:///home/runner/.go/go1.21.3/src/encoding/xml/xml.go#L2013"
            return (null : stdgo.Error);
        };
        //"file:///home/runner/.go/go1.21.3/src/encoding/xml/xml.go#L2015"
        {
            var __tmp__ = _w.write(stdgo._internal.encoding.xml.Xml__cdatastart._cdataStart), __0:stdgo.GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                //"file:///home/runner/.go/go1.21.3/src/encoding/xml/xml.go#L2016"
                return _err;
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/encoding/xml/xml.go#L2019"
        while (true) {
            var __tmp__ = stdgo._internal.bytes.Bytes_cut.cut(_s, stdgo._internal.encoding.xml.Xml__cdataend._cdataEnd), _before:stdgo.Slice<stdgo.GoUInt8> = __tmp__._0, _after:stdgo.Slice<stdgo.GoUInt8> = __tmp__._1, _ok:Bool = __tmp__._2;
            //"file:///home/runner/.go/go1.21.3/src/encoding/xml/xml.go#L2021"
            if (!_ok) {
                //"file:///home/runner/.go/go1.21.3/src/encoding/xml/xml.go#L2022"
                break;
            };
            //"file:///home/runner/.go/go1.21.3/src/encoding/xml/xml.go#L2025"
            {
                var __tmp__ = _w.write(_before), __1:stdgo.GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                if (_err != null) {
                    //"file:///home/runner/.go/go1.21.3/src/encoding/xml/xml.go#L2026"
                    return _err;
                };
            };
            //"file:///home/runner/.go/go1.21.3/src/encoding/xml/xml.go#L2028"
            {
                var __tmp__ = _w.write(stdgo._internal.encoding.xml.Xml__cdataescape._cdataEscape), __2:stdgo.GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                if (_err != null) {
                    //"file:///home/runner/.go/go1.21.3/src/encoding/xml/xml.go#L2029"
                    return _err;
                };
            };
            _s = _after;
        };
        //"file:///home/runner/.go/go1.21.3/src/encoding/xml/xml.go#L2034"
        {
            var __tmp__ = _w.write(_s), __1:stdgo.GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                //"file:///home/runner/.go/go1.21.3/src/encoding/xml/xml.go#L2035"
                return _err;
            };
        };
        var __tmp__ = _w.write(stdgo._internal.encoding.xml.Xml__cdataend._cdataEnd), __2:stdgo.GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        //"file:///home/runner/.go/go1.21.3/src/encoding/xml/xml.go#L2039"
        return _err;
    }
