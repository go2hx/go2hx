package stdgo.internal.poll;
@:structInit @:using(stdgo.internal.poll.Poll.DeadlineExceededError_static_extension) abstract DeadlineExceededError(stdgo._internal.internal.poll.Poll_DeadlineExceededError.DeadlineExceededError) from stdgo._internal.internal.poll.Poll_DeadlineExceededError.DeadlineExceededError to stdgo._internal.internal.poll.Poll_DeadlineExceededError.DeadlineExceededError {
    public function new() this = new stdgo._internal.internal.poll.Poll_DeadlineExceededError.DeadlineExceededError();
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
