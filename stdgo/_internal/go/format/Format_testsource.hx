package stdgo._internal.go.format;
function testSource(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void {
        var __tmp__ = stdgo._internal.os.Os_readfile.readFile(("format_test.go" : stdgo.GoString)), _src:stdgo.Slice<stdgo.GoUInt8> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        //"file:///home/runner/.go/go1.21.3/src/go/format/format_test.go#L100"
        if (_err != null) {
            //"file:///home/runner/.go/go1.21.3/src/go/format/format_test.go#L101"
            _t.fatal(stdgo.Go.toInterface(_err));
        };
        var __tmp__ = stdgo._internal.go.format.Format_source.source(_src), _res:stdgo.Slice<stdgo.GoUInt8> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        //"file:///home/runner/.go/go1.21.3/src/go/format/format_test.go#L105"
        if (_err != null) {
            //"file:///home/runner/.go/go1.21.3/src/go/format/format_test.go#L106"
            _t.fatal(stdgo.Go.toInterface(("Source failed:" : stdgo.GoString)), stdgo.Go.toInterface(_err));
        };
        //"file:///home/runner/.go/go1.21.3/src/go/format/format_test.go#L109"
        stdgo._internal.go.format.Format__diff._diff(_t, _res, _src);
    }
