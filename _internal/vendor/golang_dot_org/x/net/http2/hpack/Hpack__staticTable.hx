package _internal.vendor.golang_dot_org.x.net.http2.hpack;
var _staticTable : stdgo.Ref<_internal.vendor.golang_dot_org.x.net.http2.hpack.Hpack_T_headerFieldTable.T_headerFieldTable> = (stdgo.Go.setRef(({ _evictCount : (0i64 : stdgo.GoUInt64), _byName : ({
        final x = new stdgo.GoMap.GoStringMap<stdgo.GoUInt64>();
        x.__defaultValue__ = () -> (0 : stdgo.GoUInt64);
        x.set((":authority" : stdgo.GoString), (1i64 : stdgo.GoUInt64));
x.set((":method" : stdgo.GoString), (3i64 : stdgo.GoUInt64));
x.set((":path" : stdgo.GoString), (5i64 : stdgo.GoUInt64));
x.set((":scheme" : stdgo.GoString), (7i64 : stdgo.GoUInt64));
x.set((":status" : stdgo.GoString), (14i64 : stdgo.GoUInt64));
x.set(("accept-charset" : stdgo.GoString), (15i64 : stdgo.GoUInt64));
x.set(("accept-encoding" : stdgo.GoString), (16i64 : stdgo.GoUInt64));
x.set(("accept-language" : stdgo.GoString), (17i64 : stdgo.GoUInt64));
x.set(("accept-ranges" : stdgo.GoString), (18i64 : stdgo.GoUInt64));
x.set(("accept" : stdgo.GoString), (19i64 : stdgo.GoUInt64));
x.set(("access-control-allow-origin" : stdgo.GoString), (20i64 : stdgo.GoUInt64));
x.set(("age" : stdgo.GoString), (21i64 : stdgo.GoUInt64));
x.set(("allow" : stdgo.GoString), (22i64 : stdgo.GoUInt64));
x.set(("authorization" : stdgo.GoString), (23i64 : stdgo.GoUInt64));
x.set(("cache-control" : stdgo.GoString), (24i64 : stdgo.GoUInt64));
x.set(("content-disposition" : stdgo.GoString), (25i64 : stdgo.GoUInt64));
x.set(("content-encoding" : stdgo.GoString), (26i64 : stdgo.GoUInt64));
x.set(("content-language" : stdgo.GoString), (27i64 : stdgo.GoUInt64));
x.set(("content-length" : stdgo.GoString), (28i64 : stdgo.GoUInt64));
x.set(("content-location" : stdgo.GoString), (29i64 : stdgo.GoUInt64));
x.set(("content-range" : stdgo.GoString), (30i64 : stdgo.GoUInt64));
x.set(("content-type" : stdgo.GoString), (31i64 : stdgo.GoUInt64));
x.set(("cookie" : stdgo.GoString), (32i64 : stdgo.GoUInt64));
x.set(("date" : stdgo.GoString), (33i64 : stdgo.GoUInt64));
x.set(("etag" : stdgo.GoString), (34i64 : stdgo.GoUInt64));
x.set(("expect" : stdgo.GoString), (35i64 : stdgo.GoUInt64));
x.set(("expires" : stdgo.GoString), (36i64 : stdgo.GoUInt64));
x.set(("from" : stdgo.GoString), (37i64 : stdgo.GoUInt64));
x.set(("host" : stdgo.GoString), (38i64 : stdgo.GoUInt64));
x.set(("if-match" : stdgo.GoString), (39i64 : stdgo.GoUInt64));
x.set(("if-modified-since" : stdgo.GoString), (40i64 : stdgo.GoUInt64));
x.set(("if-none-match" : stdgo.GoString), (41i64 : stdgo.GoUInt64));
x.set(("if-range" : stdgo.GoString), (42i64 : stdgo.GoUInt64));
x.set(("if-unmodified-since" : stdgo.GoString), (43i64 : stdgo.GoUInt64));
x.set(("last-modified" : stdgo.GoString), (44i64 : stdgo.GoUInt64));
x.set(("link" : stdgo.GoString), (45i64 : stdgo.GoUInt64));
x.set(("location" : stdgo.GoString), (46i64 : stdgo.GoUInt64));
x.set(("max-forwards" : stdgo.GoString), (47i64 : stdgo.GoUInt64));
x.set(("proxy-authenticate" : stdgo.GoString), (48i64 : stdgo.GoUInt64));
x.set(("proxy-authorization" : stdgo.GoString), (49i64 : stdgo.GoUInt64));
x.set(("range" : stdgo.GoString), (50i64 : stdgo.GoUInt64));
x.set(("referer" : stdgo.GoString), (51i64 : stdgo.GoUInt64));
x.set(("refresh" : stdgo.GoString), (52i64 : stdgo.GoUInt64));
x.set(("retry-after" : stdgo.GoString), (53i64 : stdgo.GoUInt64));
x.set(("server" : stdgo.GoString), (54i64 : stdgo.GoUInt64));
x.set(("set-cookie" : stdgo.GoString), (55i64 : stdgo.GoUInt64));
x.set(("strict-transport-security" : stdgo.GoString), (56i64 : stdgo.GoUInt64));
x.set(("transfer-encoding" : stdgo.GoString), (57i64 : stdgo.GoUInt64));
x.set(("user-agent" : stdgo.GoString), (58i64 : stdgo.GoUInt64));
x.set(("vary" : stdgo.GoString), (59i64 : stdgo.GoUInt64));
x.set(("via" : stdgo.GoString), (60i64 : stdgo.GoUInt64));
x.set(("www-authenticate" : stdgo.GoString), (61i64 : stdgo.GoUInt64));
        x;
    } : stdgo.GoMap<stdgo.GoString, stdgo.GoUInt64>), _byNameValue : ({
        final x = new stdgo.GoMap.GoObjectMap<_internal.vendor.golang_dot_org.x.net.http2.hpack.Hpack_T_pairNameValue.T_pairNameValue, stdgo.GoUInt64>();
        x.t = new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.Reflect.GoType.named("_internal.vendor.golang_dot_org.x.net.http2.hpack.Hpack_T_pairNameValue.T_pairNameValue", [], stdgo._internal.internal.reflect.Reflect.GoType.structType([{ name : "_name", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.basic(string_kind) }, optional : false }, { name : "_value", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.basic(string_kind) }, optional : false }]), false, { get : () -> null }));
        x.__defaultValue__ = () -> (0 : stdgo.GoUInt64);
        x.set(({ _name : (":authority" : stdgo.GoString), _value : stdgo.Go.str()?.__copy__() } : _internal.vendor.golang_dot_org.x.net.http2.hpack.Hpack_T_pairNameValue.T_pairNameValue), (1i64 : stdgo.GoUInt64));
x.set(({ _name : (":method" : stdgo.GoString), _value : ("GET" : stdgo.GoString) } : _internal.vendor.golang_dot_org.x.net.http2.hpack.Hpack_T_pairNameValue.T_pairNameValue), (2i64 : stdgo.GoUInt64));
x.set(({ _name : (":method" : stdgo.GoString), _value : ("POST" : stdgo.GoString) } : _internal.vendor.golang_dot_org.x.net.http2.hpack.Hpack_T_pairNameValue.T_pairNameValue), (3i64 : stdgo.GoUInt64));
x.set(({ _name : (":path" : stdgo.GoString), _value : ("/" : stdgo.GoString) } : _internal.vendor.golang_dot_org.x.net.http2.hpack.Hpack_T_pairNameValue.T_pairNameValue), (4i64 : stdgo.GoUInt64));
x.set(({ _name : (":path" : stdgo.GoString), _value : ("/index.html" : stdgo.GoString) } : _internal.vendor.golang_dot_org.x.net.http2.hpack.Hpack_T_pairNameValue.T_pairNameValue), (5i64 : stdgo.GoUInt64));
x.set(({ _name : (":scheme" : stdgo.GoString), _value : ("http" : stdgo.GoString) } : _internal.vendor.golang_dot_org.x.net.http2.hpack.Hpack_T_pairNameValue.T_pairNameValue), (6i64 : stdgo.GoUInt64));
x.set(({ _name : (":scheme" : stdgo.GoString), _value : ("https" : stdgo.GoString) } : _internal.vendor.golang_dot_org.x.net.http2.hpack.Hpack_T_pairNameValue.T_pairNameValue), (7i64 : stdgo.GoUInt64));
x.set(({ _name : (":status" : stdgo.GoString), _value : ("200" : stdgo.GoString) } : _internal.vendor.golang_dot_org.x.net.http2.hpack.Hpack_T_pairNameValue.T_pairNameValue), (8i64 : stdgo.GoUInt64));
x.set(({ _name : (":status" : stdgo.GoString), _value : ("204" : stdgo.GoString) } : _internal.vendor.golang_dot_org.x.net.http2.hpack.Hpack_T_pairNameValue.T_pairNameValue), (9i64 : stdgo.GoUInt64));
x.set(({ _name : (":status" : stdgo.GoString), _value : ("206" : stdgo.GoString) } : _internal.vendor.golang_dot_org.x.net.http2.hpack.Hpack_T_pairNameValue.T_pairNameValue), (10i64 : stdgo.GoUInt64));
x.set(({ _name : (":status" : stdgo.GoString), _value : ("304" : stdgo.GoString) } : _internal.vendor.golang_dot_org.x.net.http2.hpack.Hpack_T_pairNameValue.T_pairNameValue), (11i64 : stdgo.GoUInt64));
x.set(({ _name : (":status" : stdgo.GoString), _value : ("400" : stdgo.GoString) } : _internal.vendor.golang_dot_org.x.net.http2.hpack.Hpack_T_pairNameValue.T_pairNameValue), (12i64 : stdgo.GoUInt64));
x.set(({ _name : (":status" : stdgo.GoString), _value : ("404" : stdgo.GoString) } : _internal.vendor.golang_dot_org.x.net.http2.hpack.Hpack_T_pairNameValue.T_pairNameValue), (13i64 : stdgo.GoUInt64));
x.set(({ _name : (":status" : stdgo.GoString), _value : ("500" : stdgo.GoString) } : _internal.vendor.golang_dot_org.x.net.http2.hpack.Hpack_T_pairNameValue.T_pairNameValue), (14i64 : stdgo.GoUInt64));
x.set(({ _name : ("accept-charset" : stdgo.GoString), _value : stdgo.Go.str()?.__copy__() } : _internal.vendor.golang_dot_org.x.net.http2.hpack.Hpack_T_pairNameValue.T_pairNameValue), (15i64 : stdgo.GoUInt64));
x.set(({ _name : ("accept-encoding" : stdgo.GoString), _value : ("gzip, deflate" : stdgo.GoString) } : _internal.vendor.golang_dot_org.x.net.http2.hpack.Hpack_T_pairNameValue.T_pairNameValue), (16i64 : stdgo.GoUInt64));
x.set(({ _name : ("accept-language" : stdgo.GoString), _value : stdgo.Go.str()?.__copy__() } : _internal.vendor.golang_dot_org.x.net.http2.hpack.Hpack_T_pairNameValue.T_pairNameValue), (17i64 : stdgo.GoUInt64));
x.set(({ _name : ("accept-ranges" : stdgo.GoString), _value : stdgo.Go.str()?.__copy__() } : _internal.vendor.golang_dot_org.x.net.http2.hpack.Hpack_T_pairNameValue.T_pairNameValue), (18i64 : stdgo.GoUInt64));
x.set(({ _name : ("accept" : stdgo.GoString), _value : stdgo.Go.str()?.__copy__() } : _internal.vendor.golang_dot_org.x.net.http2.hpack.Hpack_T_pairNameValue.T_pairNameValue), (19i64 : stdgo.GoUInt64));
x.set(({ _name : ("access-control-allow-origin" : stdgo.GoString), _value : stdgo.Go.str()?.__copy__() } : _internal.vendor.golang_dot_org.x.net.http2.hpack.Hpack_T_pairNameValue.T_pairNameValue), (20i64 : stdgo.GoUInt64));
x.set(({ _name : ("age" : stdgo.GoString), _value : stdgo.Go.str()?.__copy__() } : _internal.vendor.golang_dot_org.x.net.http2.hpack.Hpack_T_pairNameValue.T_pairNameValue), (21i64 : stdgo.GoUInt64));
x.set(({ _name : ("allow" : stdgo.GoString), _value : stdgo.Go.str()?.__copy__() } : _internal.vendor.golang_dot_org.x.net.http2.hpack.Hpack_T_pairNameValue.T_pairNameValue), (22i64 : stdgo.GoUInt64));
x.set(({ _name : ("authorization" : stdgo.GoString), _value : stdgo.Go.str()?.__copy__() } : _internal.vendor.golang_dot_org.x.net.http2.hpack.Hpack_T_pairNameValue.T_pairNameValue), (23i64 : stdgo.GoUInt64));
x.set(({ _name : ("cache-control" : stdgo.GoString), _value : stdgo.Go.str()?.__copy__() } : _internal.vendor.golang_dot_org.x.net.http2.hpack.Hpack_T_pairNameValue.T_pairNameValue), (24i64 : stdgo.GoUInt64));
x.set(({ _name : ("content-disposition" : stdgo.GoString), _value : stdgo.Go.str()?.__copy__() } : _internal.vendor.golang_dot_org.x.net.http2.hpack.Hpack_T_pairNameValue.T_pairNameValue), (25i64 : stdgo.GoUInt64));
x.set(({ _name : ("content-encoding" : stdgo.GoString), _value : stdgo.Go.str()?.__copy__() } : _internal.vendor.golang_dot_org.x.net.http2.hpack.Hpack_T_pairNameValue.T_pairNameValue), (26i64 : stdgo.GoUInt64));
x.set(({ _name : ("content-language" : stdgo.GoString), _value : stdgo.Go.str()?.__copy__() } : _internal.vendor.golang_dot_org.x.net.http2.hpack.Hpack_T_pairNameValue.T_pairNameValue), (27i64 : stdgo.GoUInt64));
x.set(({ _name : ("content-length" : stdgo.GoString), _value : stdgo.Go.str()?.__copy__() } : _internal.vendor.golang_dot_org.x.net.http2.hpack.Hpack_T_pairNameValue.T_pairNameValue), (28i64 : stdgo.GoUInt64));
x.set(({ _name : ("content-location" : stdgo.GoString), _value : stdgo.Go.str()?.__copy__() } : _internal.vendor.golang_dot_org.x.net.http2.hpack.Hpack_T_pairNameValue.T_pairNameValue), (29i64 : stdgo.GoUInt64));
x.set(({ _name : ("content-range" : stdgo.GoString), _value : stdgo.Go.str()?.__copy__() } : _internal.vendor.golang_dot_org.x.net.http2.hpack.Hpack_T_pairNameValue.T_pairNameValue), (30i64 : stdgo.GoUInt64));
x.set(({ _name : ("content-type" : stdgo.GoString), _value : stdgo.Go.str()?.__copy__() } : _internal.vendor.golang_dot_org.x.net.http2.hpack.Hpack_T_pairNameValue.T_pairNameValue), (31i64 : stdgo.GoUInt64));
x.set(({ _name : ("cookie" : stdgo.GoString), _value : stdgo.Go.str()?.__copy__() } : _internal.vendor.golang_dot_org.x.net.http2.hpack.Hpack_T_pairNameValue.T_pairNameValue), (32i64 : stdgo.GoUInt64));
x.set(({ _name : ("date" : stdgo.GoString), _value : stdgo.Go.str()?.__copy__() } : _internal.vendor.golang_dot_org.x.net.http2.hpack.Hpack_T_pairNameValue.T_pairNameValue), (33i64 : stdgo.GoUInt64));
x.set(({ _name : ("etag" : stdgo.GoString), _value : stdgo.Go.str()?.__copy__() } : _internal.vendor.golang_dot_org.x.net.http2.hpack.Hpack_T_pairNameValue.T_pairNameValue), (34i64 : stdgo.GoUInt64));
x.set(({ _name : ("expect" : stdgo.GoString), _value : stdgo.Go.str()?.__copy__() } : _internal.vendor.golang_dot_org.x.net.http2.hpack.Hpack_T_pairNameValue.T_pairNameValue), (35i64 : stdgo.GoUInt64));
x.set(({ _name : ("expires" : stdgo.GoString), _value : stdgo.Go.str()?.__copy__() } : _internal.vendor.golang_dot_org.x.net.http2.hpack.Hpack_T_pairNameValue.T_pairNameValue), (36i64 : stdgo.GoUInt64));
x.set(({ _name : ("from" : stdgo.GoString), _value : stdgo.Go.str()?.__copy__() } : _internal.vendor.golang_dot_org.x.net.http2.hpack.Hpack_T_pairNameValue.T_pairNameValue), (37i64 : stdgo.GoUInt64));
x.set(({ _name : ("host" : stdgo.GoString), _value : stdgo.Go.str()?.__copy__() } : _internal.vendor.golang_dot_org.x.net.http2.hpack.Hpack_T_pairNameValue.T_pairNameValue), (38i64 : stdgo.GoUInt64));
x.set(({ _name : ("if-match" : stdgo.GoString), _value : stdgo.Go.str()?.__copy__() } : _internal.vendor.golang_dot_org.x.net.http2.hpack.Hpack_T_pairNameValue.T_pairNameValue), (39i64 : stdgo.GoUInt64));
x.set(({ _name : ("if-modified-since" : stdgo.GoString), _value : stdgo.Go.str()?.__copy__() } : _internal.vendor.golang_dot_org.x.net.http2.hpack.Hpack_T_pairNameValue.T_pairNameValue), (40i64 : stdgo.GoUInt64));
x.set(({ _name : ("if-none-match" : stdgo.GoString), _value : stdgo.Go.str()?.__copy__() } : _internal.vendor.golang_dot_org.x.net.http2.hpack.Hpack_T_pairNameValue.T_pairNameValue), (41i64 : stdgo.GoUInt64));
x.set(({ _name : ("if-range" : stdgo.GoString), _value : stdgo.Go.str()?.__copy__() } : _internal.vendor.golang_dot_org.x.net.http2.hpack.Hpack_T_pairNameValue.T_pairNameValue), (42i64 : stdgo.GoUInt64));
x.set(({ _name : ("if-unmodified-since" : stdgo.GoString), _value : stdgo.Go.str()?.__copy__() } : _internal.vendor.golang_dot_org.x.net.http2.hpack.Hpack_T_pairNameValue.T_pairNameValue), (43i64 : stdgo.GoUInt64));
x.set(({ _name : ("last-modified" : stdgo.GoString), _value : stdgo.Go.str()?.__copy__() } : _internal.vendor.golang_dot_org.x.net.http2.hpack.Hpack_T_pairNameValue.T_pairNameValue), (44i64 : stdgo.GoUInt64));
x.set(({ _name : ("link" : stdgo.GoString), _value : stdgo.Go.str()?.__copy__() } : _internal.vendor.golang_dot_org.x.net.http2.hpack.Hpack_T_pairNameValue.T_pairNameValue), (45i64 : stdgo.GoUInt64));
x.set(({ _name : ("location" : stdgo.GoString), _value : stdgo.Go.str()?.__copy__() } : _internal.vendor.golang_dot_org.x.net.http2.hpack.Hpack_T_pairNameValue.T_pairNameValue), (46i64 : stdgo.GoUInt64));
x.set(({ _name : ("max-forwards" : stdgo.GoString), _value : stdgo.Go.str()?.__copy__() } : _internal.vendor.golang_dot_org.x.net.http2.hpack.Hpack_T_pairNameValue.T_pairNameValue), (47i64 : stdgo.GoUInt64));
x.set(({ _name : ("proxy-authenticate" : stdgo.GoString), _value : stdgo.Go.str()?.__copy__() } : _internal.vendor.golang_dot_org.x.net.http2.hpack.Hpack_T_pairNameValue.T_pairNameValue), (48i64 : stdgo.GoUInt64));
x.set(({ _name : ("proxy-authorization" : stdgo.GoString), _value : stdgo.Go.str()?.__copy__() } : _internal.vendor.golang_dot_org.x.net.http2.hpack.Hpack_T_pairNameValue.T_pairNameValue), (49i64 : stdgo.GoUInt64));
x.set(({ _name : ("range" : stdgo.GoString), _value : stdgo.Go.str()?.__copy__() } : _internal.vendor.golang_dot_org.x.net.http2.hpack.Hpack_T_pairNameValue.T_pairNameValue), (50i64 : stdgo.GoUInt64));
x.set(({ _name : ("referer" : stdgo.GoString), _value : stdgo.Go.str()?.__copy__() } : _internal.vendor.golang_dot_org.x.net.http2.hpack.Hpack_T_pairNameValue.T_pairNameValue), (51i64 : stdgo.GoUInt64));
x.set(({ _name : ("refresh" : stdgo.GoString), _value : stdgo.Go.str()?.__copy__() } : _internal.vendor.golang_dot_org.x.net.http2.hpack.Hpack_T_pairNameValue.T_pairNameValue), (52i64 : stdgo.GoUInt64));
x.set(({ _name : ("retry-after" : stdgo.GoString), _value : stdgo.Go.str()?.__copy__() } : _internal.vendor.golang_dot_org.x.net.http2.hpack.Hpack_T_pairNameValue.T_pairNameValue), (53i64 : stdgo.GoUInt64));
x.set(({ _name : ("server" : stdgo.GoString), _value : stdgo.Go.str()?.__copy__() } : _internal.vendor.golang_dot_org.x.net.http2.hpack.Hpack_T_pairNameValue.T_pairNameValue), (54i64 : stdgo.GoUInt64));
x.set(({ _name : ("set-cookie" : stdgo.GoString), _value : stdgo.Go.str()?.__copy__() } : _internal.vendor.golang_dot_org.x.net.http2.hpack.Hpack_T_pairNameValue.T_pairNameValue), (55i64 : stdgo.GoUInt64));
x.set(({ _name : ("strict-transport-security" : stdgo.GoString), _value : stdgo.Go.str()?.__copy__() } : _internal.vendor.golang_dot_org.x.net.http2.hpack.Hpack_T_pairNameValue.T_pairNameValue), (56i64 : stdgo.GoUInt64));
x.set(({ _name : ("transfer-encoding" : stdgo.GoString), _value : stdgo.Go.str()?.__copy__() } : _internal.vendor.golang_dot_org.x.net.http2.hpack.Hpack_T_pairNameValue.T_pairNameValue), (57i64 : stdgo.GoUInt64));
x.set(({ _name : ("user-agent" : stdgo.GoString), _value : stdgo.Go.str()?.__copy__() } : _internal.vendor.golang_dot_org.x.net.http2.hpack.Hpack_T_pairNameValue.T_pairNameValue), (58i64 : stdgo.GoUInt64));
x.set(({ _name : ("vary" : stdgo.GoString), _value : stdgo.Go.str()?.__copy__() } : _internal.vendor.golang_dot_org.x.net.http2.hpack.Hpack_T_pairNameValue.T_pairNameValue), (59i64 : stdgo.GoUInt64));
x.set(({ _name : ("via" : stdgo.GoString), _value : stdgo.Go.str()?.__copy__() } : _internal.vendor.golang_dot_org.x.net.http2.hpack.Hpack_T_pairNameValue.T_pairNameValue), (60i64 : stdgo.GoUInt64));
x.set(({ _name : ("www-authenticate" : stdgo.GoString), _value : stdgo.Go.str()?.__copy__() } : _internal.vendor.golang_dot_org.x.net.http2.hpack.Hpack_T_pairNameValue.T_pairNameValue), (61i64 : stdgo.GoUInt64));
        cast x;
    } : stdgo.GoMap<_internal.vendor.golang_dot_org.x.net.http2.hpack.Hpack_T_pairNameValue.T_pairNameValue, stdgo.GoUInt64>), _ents : (new stdgo.Slice<_internal.vendor.golang_dot_org.x.net.http2.hpack.Hpack_HeaderField.HeaderField>(61, 61, ...[
({ name : (":authority" : stdgo.GoString), value : stdgo.Go.str()?.__copy__(), sensitive : false } : _internal.vendor.golang_dot_org.x.net.http2.hpack.Hpack_HeaderField.HeaderField),
({ name : (":method" : stdgo.GoString), value : ("GET" : stdgo.GoString), sensitive : false } : _internal.vendor.golang_dot_org.x.net.http2.hpack.Hpack_HeaderField.HeaderField),
({ name : (":method" : stdgo.GoString), value : ("POST" : stdgo.GoString), sensitive : false } : _internal.vendor.golang_dot_org.x.net.http2.hpack.Hpack_HeaderField.HeaderField),
({ name : (":path" : stdgo.GoString), value : ("/" : stdgo.GoString), sensitive : false } : _internal.vendor.golang_dot_org.x.net.http2.hpack.Hpack_HeaderField.HeaderField),
({ name : (":path" : stdgo.GoString), value : ("/index.html" : stdgo.GoString), sensitive : false } : _internal.vendor.golang_dot_org.x.net.http2.hpack.Hpack_HeaderField.HeaderField),
({ name : (":scheme" : stdgo.GoString), value : ("http" : stdgo.GoString), sensitive : false } : _internal.vendor.golang_dot_org.x.net.http2.hpack.Hpack_HeaderField.HeaderField),
({ name : (":scheme" : stdgo.GoString), value : ("https" : stdgo.GoString), sensitive : false } : _internal.vendor.golang_dot_org.x.net.http2.hpack.Hpack_HeaderField.HeaderField),
({ name : (":status" : stdgo.GoString), value : ("200" : stdgo.GoString), sensitive : false } : _internal.vendor.golang_dot_org.x.net.http2.hpack.Hpack_HeaderField.HeaderField),
({ name : (":status" : stdgo.GoString), value : ("204" : stdgo.GoString), sensitive : false } : _internal.vendor.golang_dot_org.x.net.http2.hpack.Hpack_HeaderField.HeaderField),
({ name : (":status" : stdgo.GoString), value : ("206" : stdgo.GoString), sensitive : false } : _internal.vendor.golang_dot_org.x.net.http2.hpack.Hpack_HeaderField.HeaderField),
({ name : (":status" : stdgo.GoString), value : ("304" : stdgo.GoString), sensitive : false } : _internal.vendor.golang_dot_org.x.net.http2.hpack.Hpack_HeaderField.HeaderField),
({ name : (":status" : stdgo.GoString), value : ("400" : stdgo.GoString), sensitive : false } : _internal.vendor.golang_dot_org.x.net.http2.hpack.Hpack_HeaderField.HeaderField),
({ name : (":status" : stdgo.GoString), value : ("404" : stdgo.GoString), sensitive : false } : _internal.vendor.golang_dot_org.x.net.http2.hpack.Hpack_HeaderField.HeaderField),
({ name : (":status" : stdgo.GoString), value : ("500" : stdgo.GoString), sensitive : false } : _internal.vendor.golang_dot_org.x.net.http2.hpack.Hpack_HeaderField.HeaderField),
({ name : ("accept-charset" : stdgo.GoString), value : stdgo.Go.str()?.__copy__(), sensitive : false } : _internal.vendor.golang_dot_org.x.net.http2.hpack.Hpack_HeaderField.HeaderField),
({ name : ("accept-encoding" : stdgo.GoString), value : ("gzip, deflate" : stdgo.GoString), sensitive : false } : _internal.vendor.golang_dot_org.x.net.http2.hpack.Hpack_HeaderField.HeaderField),
({ name : ("accept-language" : stdgo.GoString), value : stdgo.Go.str()?.__copy__(), sensitive : false } : _internal.vendor.golang_dot_org.x.net.http2.hpack.Hpack_HeaderField.HeaderField),
({ name : ("accept-ranges" : stdgo.GoString), value : stdgo.Go.str()?.__copy__(), sensitive : false } : _internal.vendor.golang_dot_org.x.net.http2.hpack.Hpack_HeaderField.HeaderField),
({ name : ("accept" : stdgo.GoString), value : stdgo.Go.str()?.__copy__(), sensitive : false } : _internal.vendor.golang_dot_org.x.net.http2.hpack.Hpack_HeaderField.HeaderField),
({ name : ("access-control-allow-origin" : stdgo.GoString), value : stdgo.Go.str()?.__copy__(), sensitive : false } : _internal.vendor.golang_dot_org.x.net.http2.hpack.Hpack_HeaderField.HeaderField),
({ name : ("age" : stdgo.GoString), value : stdgo.Go.str()?.__copy__(), sensitive : false } : _internal.vendor.golang_dot_org.x.net.http2.hpack.Hpack_HeaderField.HeaderField),
({ name : ("allow" : stdgo.GoString), value : stdgo.Go.str()?.__copy__(), sensitive : false } : _internal.vendor.golang_dot_org.x.net.http2.hpack.Hpack_HeaderField.HeaderField),
({ name : ("authorization" : stdgo.GoString), value : stdgo.Go.str()?.__copy__(), sensitive : false } : _internal.vendor.golang_dot_org.x.net.http2.hpack.Hpack_HeaderField.HeaderField),
({ name : ("cache-control" : stdgo.GoString), value : stdgo.Go.str()?.__copy__(), sensitive : false } : _internal.vendor.golang_dot_org.x.net.http2.hpack.Hpack_HeaderField.HeaderField),
({ name : ("content-disposition" : stdgo.GoString), value : stdgo.Go.str()?.__copy__(), sensitive : false } : _internal.vendor.golang_dot_org.x.net.http2.hpack.Hpack_HeaderField.HeaderField),
({ name : ("content-encoding" : stdgo.GoString), value : stdgo.Go.str()?.__copy__(), sensitive : false } : _internal.vendor.golang_dot_org.x.net.http2.hpack.Hpack_HeaderField.HeaderField),
({ name : ("content-language" : stdgo.GoString), value : stdgo.Go.str()?.__copy__(), sensitive : false } : _internal.vendor.golang_dot_org.x.net.http2.hpack.Hpack_HeaderField.HeaderField),
({ name : ("content-length" : stdgo.GoString), value : stdgo.Go.str()?.__copy__(), sensitive : false } : _internal.vendor.golang_dot_org.x.net.http2.hpack.Hpack_HeaderField.HeaderField),
({ name : ("content-location" : stdgo.GoString), value : stdgo.Go.str()?.__copy__(), sensitive : false } : _internal.vendor.golang_dot_org.x.net.http2.hpack.Hpack_HeaderField.HeaderField),
({ name : ("content-range" : stdgo.GoString), value : stdgo.Go.str()?.__copy__(), sensitive : false } : _internal.vendor.golang_dot_org.x.net.http2.hpack.Hpack_HeaderField.HeaderField),
({ name : ("content-type" : stdgo.GoString), value : stdgo.Go.str()?.__copy__(), sensitive : false } : _internal.vendor.golang_dot_org.x.net.http2.hpack.Hpack_HeaderField.HeaderField),
({ name : ("cookie" : stdgo.GoString), value : stdgo.Go.str()?.__copy__(), sensitive : false } : _internal.vendor.golang_dot_org.x.net.http2.hpack.Hpack_HeaderField.HeaderField),
({ name : ("date" : stdgo.GoString), value : stdgo.Go.str()?.__copy__(), sensitive : false } : _internal.vendor.golang_dot_org.x.net.http2.hpack.Hpack_HeaderField.HeaderField),
({ name : ("etag" : stdgo.GoString), value : stdgo.Go.str()?.__copy__(), sensitive : false } : _internal.vendor.golang_dot_org.x.net.http2.hpack.Hpack_HeaderField.HeaderField),
({ name : ("expect" : stdgo.GoString), value : stdgo.Go.str()?.__copy__(), sensitive : false } : _internal.vendor.golang_dot_org.x.net.http2.hpack.Hpack_HeaderField.HeaderField),
({ name : ("expires" : stdgo.GoString), value : stdgo.Go.str()?.__copy__(), sensitive : false } : _internal.vendor.golang_dot_org.x.net.http2.hpack.Hpack_HeaderField.HeaderField),
({ name : ("from" : stdgo.GoString), value : stdgo.Go.str()?.__copy__(), sensitive : false } : _internal.vendor.golang_dot_org.x.net.http2.hpack.Hpack_HeaderField.HeaderField),
({ name : ("host" : stdgo.GoString), value : stdgo.Go.str()?.__copy__(), sensitive : false } : _internal.vendor.golang_dot_org.x.net.http2.hpack.Hpack_HeaderField.HeaderField),
({ name : ("if-match" : stdgo.GoString), value : stdgo.Go.str()?.__copy__(), sensitive : false } : _internal.vendor.golang_dot_org.x.net.http2.hpack.Hpack_HeaderField.HeaderField),
({ name : ("if-modified-since" : stdgo.GoString), value : stdgo.Go.str()?.__copy__(), sensitive : false } : _internal.vendor.golang_dot_org.x.net.http2.hpack.Hpack_HeaderField.HeaderField),
({ name : ("if-none-match" : stdgo.GoString), value : stdgo.Go.str()?.__copy__(), sensitive : false } : _internal.vendor.golang_dot_org.x.net.http2.hpack.Hpack_HeaderField.HeaderField),
({ name : ("if-range" : stdgo.GoString), value : stdgo.Go.str()?.__copy__(), sensitive : false } : _internal.vendor.golang_dot_org.x.net.http2.hpack.Hpack_HeaderField.HeaderField),
({ name : ("if-unmodified-since" : stdgo.GoString), value : stdgo.Go.str()?.__copy__(), sensitive : false } : _internal.vendor.golang_dot_org.x.net.http2.hpack.Hpack_HeaderField.HeaderField),
({ name : ("last-modified" : stdgo.GoString), value : stdgo.Go.str()?.__copy__(), sensitive : false } : _internal.vendor.golang_dot_org.x.net.http2.hpack.Hpack_HeaderField.HeaderField),
({ name : ("link" : stdgo.GoString), value : stdgo.Go.str()?.__copy__(), sensitive : false } : _internal.vendor.golang_dot_org.x.net.http2.hpack.Hpack_HeaderField.HeaderField),
({ name : ("location" : stdgo.GoString), value : stdgo.Go.str()?.__copy__(), sensitive : false } : _internal.vendor.golang_dot_org.x.net.http2.hpack.Hpack_HeaderField.HeaderField),
({ name : ("max-forwards" : stdgo.GoString), value : stdgo.Go.str()?.__copy__(), sensitive : false } : _internal.vendor.golang_dot_org.x.net.http2.hpack.Hpack_HeaderField.HeaderField),
({ name : ("proxy-authenticate" : stdgo.GoString), value : stdgo.Go.str()?.__copy__(), sensitive : false } : _internal.vendor.golang_dot_org.x.net.http2.hpack.Hpack_HeaderField.HeaderField),
({ name : ("proxy-authorization" : stdgo.GoString), value : stdgo.Go.str()?.__copy__(), sensitive : false } : _internal.vendor.golang_dot_org.x.net.http2.hpack.Hpack_HeaderField.HeaderField),
({ name : ("range" : stdgo.GoString), value : stdgo.Go.str()?.__copy__(), sensitive : false } : _internal.vendor.golang_dot_org.x.net.http2.hpack.Hpack_HeaderField.HeaderField),
({ name : ("referer" : stdgo.GoString), value : stdgo.Go.str()?.__copy__(), sensitive : false } : _internal.vendor.golang_dot_org.x.net.http2.hpack.Hpack_HeaderField.HeaderField),
({ name : ("refresh" : stdgo.GoString), value : stdgo.Go.str()?.__copy__(), sensitive : false } : _internal.vendor.golang_dot_org.x.net.http2.hpack.Hpack_HeaderField.HeaderField),
({ name : ("retry-after" : stdgo.GoString), value : stdgo.Go.str()?.__copy__(), sensitive : false } : _internal.vendor.golang_dot_org.x.net.http2.hpack.Hpack_HeaderField.HeaderField),
({ name : ("server" : stdgo.GoString), value : stdgo.Go.str()?.__copy__(), sensitive : false } : _internal.vendor.golang_dot_org.x.net.http2.hpack.Hpack_HeaderField.HeaderField),
({ name : ("set-cookie" : stdgo.GoString), value : stdgo.Go.str()?.__copy__(), sensitive : false } : _internal.vendor.golang_dot_org.x.net.http2.hpack.Hpack_HeaderField.HeaderField),
({ name : ("strict-transport-security" : stdgo.GoString), value : stdgo.Go.str()?.__copy__(), sensitive : false } : _internal.vendor.golang_dot_org.x.net.http2.hpack.Hpack_HeaderField.HeaderField),
({ name : ("transfer-encoding" : stdgo.GoString), value : stdgo.Go.str()?.__copy__(), sensitive : false } : _internal.vendor.golang_dot_org.x.net.http2.hpack.Hpack_HeaderField.HeaderField),
({ name : ("user-agent" : stdgo.GoString), value : stdgo.Go.str()?.__copy__(), sensitive : false } : _internal.vendor.golang_dot_org.x.net.http2.hpack.Hpack_HeaderField.HeaderField),
({ name : ("vary" : stdgo.GoString), value : stdgo.Go.str()?.__copy__(), sensitive : false } : _internal.vendor.golang_dot_org.x.net.http2.hpack.Hpack_HeaderField.HeaderField),
({ name : ("via" : stdgo.GoString), value : stdgo.Go.str()?.__copy__(), sensitive : false } : _internal.vendor.golang_dot_org.x.net.http2.hpack.Hpack_HeaderField.HeaderField),
({ name : ("www-authenticate" : stdgo.GoString), value : stdgo.Go.str()?.__copy__(), sensitive : false } : _internal.vendor.golang_dot_org.x.net.http2.hpack.Hpack_HeaderField.HeaderField)].concat([for (i in 61 ... (61 > 61 ? 61 : 61 : stdgo.GoInt).toBasic()) ({} : _internal.vendor.golang_dot_org.x.net.http2.hpack.Hpack_HeaderField.HeaderField)])) : stdgo.Slice<_internal.vendor.golang_dot_org.x.net.http2.hpack.Hpack_HeaderField.HeaderField>) } : _internal.vendor.golang_dot_org.x.net.http2.hpack.Hpack_T_headerFieldTable.T_headerFieldTable)) : stdgo.Ref<_internal.vendor.golang_dot_org.x.net.http2.hpack.Hpack_T_headerFieldTable.T_headerFieldTable>);
