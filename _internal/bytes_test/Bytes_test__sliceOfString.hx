package _internal.bytes_test;
import stdgo._internal.bytes.Bytes;
import stdgo._internal.bytes.Bytes;
import stdgo._internal.bytes.Bytes;
import stdgo._internal.bytes.Bytes;
function _sliceOfString(_s:stdgo.Slice<stdgo.Slice<stdgo.GoUInt8>>):stdgo.Slice<stdgo.GoString> {
        var _result = (new stdgo.Slice<stdgo.GoString>((_s.length : stdgo.GoInt).toBasic(), 0).__setString__() : stdgo.Slice<stdgo.GoString>);
        for (_i => _v in _s) {
            _result[(_i : stdgo.GoInt)] = (_v : stdgo.GoString)?.__copy__();
        };
        return _result;
    }
