package stdgo._internal.net.url;
import stdgo._internal.errors.Errors;
import stdgo._internal.strings.Strings;
import stdgo._internal.fmt.Fmt;
import stdgo._internal.path.Path;
import stdgo._internal.strconv.Strconv;
import stdgo._internal.sort.Sort;
function user(_username:stdgo.GoString):stdgo.Ref<stdgo._internal.net.url.Url_Userinfo.Userinfo> {
        return (stdgo.Go.setRef((new stdgo._internal.net.url.Url_Userinfo.Userinfo(_username?.__copy__(), stdgo.Go.str()?.__copy__(), false) : stdgo._internal.net.url.Url_Userinfo.Userinfo)) : stdgo.Ref<stdgo._internal.net.url.Url_Userinfo.Userinfo>);
    }
