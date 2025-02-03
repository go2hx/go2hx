package stdgo.internal.poll;
/**
    Package poll supports non-blocking I/O on file descriptors with polling.
    This supports I/O operations that block only a goroutine, not a thread.
    This is used by the net and os packages.
    It uses a poller built into the runtime, with support from the
    runtime scheduler.
**/
class Poll {
    /**
        IsPollDescriptor reports whether fd is the descriptor being used by the poller.
        This is only used for testing.
    **/
    static public inline function isPollDescriptor(_fd:stdgo.GoUIntptr):Bool {
        final _fd = (_fd : stdgo.GoUIntptr);
        return stdgo._internal.internal.poll.Poll_isPollDescriptor.isPollDescriptor(_fd);
    }
    /**
        DupCloseOnExec dups fd and marks it close-on-exec.
    **/
    static public inline function dupCloseOnExec(_fd:StdTypes.Int):stdgo.Tuple.Tuple3<StdTypes.Int, String, stdgo.Error> {
        final _fd = (_fd : stdgo.GoInt);
        return {
            final obj = stdgo._internal.internal.poll.Poll_dupCloseOnExec.dupCloseOnExec(_fd);
            { _0 : obj._0, _1 : obj._1, _2 : obj._2 };
        };
    }
}
