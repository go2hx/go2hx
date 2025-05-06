package stdgo._internal.go.scanner;
@:structInit @:using(stdgo._internal.go.scanner.Scanner_error_static_extension.Error_static_extension) class Error {
    public var pos : stdgo._internal.go.token.Token_position.Position = ({} : stdgo._internal.go.token.Token_position.Position);
    public var msg : stdgo.GoString = "";
    public function new(?pos:stdgo._internal.go.token.Token_position.Position, ?msg:stdgo.GoString) {
        if (pos != null) this.pos = pos;
        if (msg != null) this.msg = msg;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new Error(pos, msg);
    }
}
