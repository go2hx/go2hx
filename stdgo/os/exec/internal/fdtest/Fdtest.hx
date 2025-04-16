package stdgo.os.exec.internal.fdtest;
/**
    * Package fdtest provides test helpers for working with file descriptors across exec.
**/
class Fdtest {
    /**
        * Exists returns true if fd is a valid file descriptor.
    **/
    static public inline function exists(_fd:stdgo.GoUIntptr):Bool return stdgo._internal.os.exec.internal.fdtest.Fdtest_exists.exists(_fd);
}
