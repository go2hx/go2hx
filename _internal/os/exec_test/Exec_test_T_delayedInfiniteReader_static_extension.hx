package _internal.os.exec_test;
import stdgo._internal.os.exec.Exec;
@:keep @:allow(_internal.os.exec_test.Exec_test.T_delayedInfiniteReader_asInterface) class T_delayedInfiniteReader_static_extension {
    @:keep
    static public function read( _:_internal.os.exec_test.Exec_test_T_delayedInfiniteReader.T_delayedInfiniteReader, _b:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } {
        @:recv var _:_internal.os.exec_test.Exec_test_T_delayedInfiniteReader.T_delayedInfiniteReader = _?.__copy__();
        stdgo._internal.time.Time_sleep.sleep((100000000i64 : stdgo._internal.time.Time_Duration.Duration));
        for (_i => _ in _b) {
            _b[(_i : stdgo.GoInt)] = (120 : stdgo.GoUInt8);
        };
        return { _0 : (_b.length), _1 : (null : stdgo.Error) };
    }
}
