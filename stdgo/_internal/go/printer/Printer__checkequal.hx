package stdgo._internal.go.printer;
function _checkEqual(_aname:stdgo.GoString, _bname:stdgo.GoString, _a:stdgo.Slice<stdgo.GoUInt8>, _b:stdgo.Slice<stdgo.GoUInt8>):stdgo.Error {
        //"file:///home/runner/.go/go1.21.3/src/go/printer/printer_test.go#L93"
        if (stdgo._internal.bytes.Bytes_equal.equal(_a, _b)) {
            //"file:///home/runner/.go/go1.21.3/src/go/printer/printer_test.go#L94"
            return (null : stdgo.Error);
        };
        //"file:///home/runner/.go/go1.21.3/src/go/printer/printer_test.go#L96"
        return stdgo._internal.errors.Errors_new_.new_((stdgo._internal.internal.diff.Diff_diff.diff(_aname?.__copy__(), _a, _bname?.__copy__(), _b) : stdgo.GoString)?.__copy__());
    }
