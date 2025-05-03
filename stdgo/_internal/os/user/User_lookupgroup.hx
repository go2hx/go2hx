package stdgo._internal.os.user;
function lookupGroup(_name:stdgo.GoString):{ var _0 : stdgo.Ref<stdgo._internal.os.user.User_group.Group>; var _1 : stdgo.Error; } {
        //"file:///home/runner/.go/go1.21.3/src/os/user/lookup.go#L58"
        return stdgo._internal.os.user.User__lookupgroup._lookupGroup(_name?.__copy__());
    }
