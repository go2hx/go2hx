package stdgo._internal.os.user;
import stdgo._internal.errors.Errors;
import stdgo._internal.strconv.Strconv;
import stdgo._internal.fmt.Fmt;
import stdgo._internal.bufio.Bufio;
import stdgo._internal.io.Io;
import stdgo._internal.bytes.Bytes;
import stdgo._internal.os.Os;
import stdgo._internal.strings.Strings;
@:local @:using(stdgo._internal.os.user.User_T__struct_0_static_extension.T__struct_0_static_extension) @:using(stdgo._internal.os.user.User_T__struct_0_static_extension.T__struct_0_static_extension) typedef T__struct_0 = {
    @:embedded
    public var once : stdgo._internal.sync.Sync_Once.Once;
    public var _u : stdgo.Ref<stdgo._internal.os.user.User_User.User>;
    public var _err : stdgo.Error;
};
