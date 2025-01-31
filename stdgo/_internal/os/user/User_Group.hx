package stdgo._internal.os.user;
import stdgo._internal.errors.Errors;
import stdgo._internal.strconv.Strconv;
import stdgo._internal.fmt.Fmt;
import stdgo._internal.bufio.Bufio;
import stdgo._internal.io.Io;
import stdgo._internal.bytes.Bytes;
import stdgo._internal.os.Os;
import stdgo._internal.strings.Strings;
@:structInit @:using(stdgo._internal.os.user.User_Group_static_extension.Group_static_extension) class Group {
    public var gid : stdgo.GoString = "";
    public var name : stdgo.GoString = "";
    public function new(?gid:stdgo.GoString, ?name:stdgo.GoString) {
        if (gid != null) this.gid = gid;
        if (name != null) this.name = name;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new Group(gid, name);
    }
}
