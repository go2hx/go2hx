package stdgo._internal.bufio;
function newScanner(_r:stdgo._internal.io.Io_reader.Reader):stdgo.Ref<stdgo._internal.bufio.Bufio_scanner.Scanner> {
        //"file:///home/runner/.go/go1.21.3/src/bufio/scan.go#L88"
        return (stdgo.Go.setRef(({ _r : _r, _split : stdgo._internal.bufio.Bufio_scanlines.scanLines, _maxTokenSize : (65536 : stdgo.GoInt) } : stdgo._internal.bufio.Bufio_scanner.Scanner)) : stdgo.Ref<stdgo._internal.bufio.Bufio_scanner.Scanner>);
    }
