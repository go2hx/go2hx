package stdgo._internal.os.signal;
@:local @:using(stdgo._internal.os.signal.Signal_t__struct_0_static_extension.T__struct_0_static_extension) @:using(stdgo._internal.os.signal.Signal_t__struct_0_static_extension.T__struct_0_static_extension) typedef T__struct_0 = {
    @:embedded
    public var mutex : stdgo._internal.sync.Sync_mutex.Mutex;
    /**
        * Map a channel to the signals that should be sent to it.
    **/
    public var _m : stdgo.GoMap<stdgo.Chan<stdgo._internal.os.Os_signal.Signal>, stdgo.Ref<stdgo._internal.os.signal.Signal_t_handler.T_handler>>;
    /**
        * Map a signal to the number of channels receiving it.
    **/
    public var _ref : stdgo.GoArray<stdgo.GoInt64>;
    /**
        * Map channels to signals while the channel is being stopped.
        * Not a map because entries live here only very briefly.
        * We need a separate container because we need m to correspond to ref
        * at all times, and we also need to keep track of the *handler
        * value for a channel being stopped. See the Stop function.
    **/
    public var _stopping : stdgo.Slice<stdgo._internal.os.signal.Signal_t_stopping.T_stopping>;
};
