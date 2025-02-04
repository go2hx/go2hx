package stdgo._internal.internal.poll;
@:structInit @:using(stdgo._internal.internal.poll.Poll_deadlineexceedederror_static_extension.DeadlineExceededError_static_extension) class DeadlineExceededError {
    public function new() {}
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new DeadlineExceededError();
    }
}
