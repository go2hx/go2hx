package stdgo._internal.go.build;
function _newImportReader(_name:stdgo.GoString, _r:stdgo._internal.io.Io_reader.Reader):stdgo.Ref<stdgo._internal.go.build.Build_t_importreader.T_importReader> {
        var _b = stdgo._internal.bufio.Bufio_newreader.newReader(_r);
        //"file:///home/runner/.go/go1.21.3/src/go/build/read.go#L41"
        {
            var __tmp__ = _b.peek((3 : stdgo.GoInt)), _leadingBytes:stdgo.Slice<stdgo.GoUInt8> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (((_err == null) && stdgo._internal.bytes.Bytes_equal.equal(_leadingBytes, stdgo._internal.go.build.Build__bom._bom) : Bool)) {
                //"file:///home/runner/.go/go1.21.3/src/go/build/read.go#L42"
                _b.discard((3 : stdgo.GoInt));
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/go/build/read.go#L44"
        return (stdgo.Go.setRef(({ _b : _b, _pos : ({ filename : _name?.__copy__(), line : (1 : stdgo.GoInt), column : (1 : stdgo.GoInt) } : stdgo._internal.go.token.Token_position.Position) } : stdgo._internal.go.build.Build_t_importreader.T_importReader)) : stdgo.Ref<stdgo._internal.go.build.Build_t_importreader.T_importReader>);
    }
