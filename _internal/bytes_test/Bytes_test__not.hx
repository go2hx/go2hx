package _internal.bytes_test;
import stdgo._internal.bytes.Bytes;
import stdgo._internal.bytes.Bytes;
import stdgo._internal.bytes.Bytes;
import stdgo._internal.bytes.Bytes;
function _not(_p:_internal.bytes_test.Bytes_test_T_predicate.T_predicate):_internal.bytes_test.Bytes_test_T_predicate.T_predicate {
        return (new _internal.bytes_test.Bytes_test_T_predicate.T_predicate(function(_r:stdgo.GoInt32):Bool {
            return !_p._f(_r);
        }, (("not " : stdgo.GoString) + _p._name?.__copy__() : stdgo.GoString)?.__copy__()) : _internal.bytes_test.Bytes_test_T_predicate.T_predicate);
    }
