package stdgo.net.url;
import stdgo.StdGoTypes;
import stdgo.Error;
import stdgo.Go;
import stdgo.GoString;
import stdgo.Pointer;
import stdgo.Slice;
import stdgo.GoArray;
import stdgo.GoMap;
import stdgo.Chan;
var _urltests : Slice<URLTest> = ((new Slice<URLTest>(
((new URLTest(((("http://www.google.com" : GoString))), (({ scheme : ((("http" : GoString))), host : ((("www.google.com" : GoString))), opaque : "", user : ((null : Ref<Userinfo>)), path : "", rawPath : "", forceQuery : false, rawQuery : "", fragment : "", rawFragment : "" } : URL)), ((("" : GoString)))) : URLTest)),
((new URLTest(((("http://www.google.com/" : GoString))), (({ scheme : ((("http" : GoString))), host : ((("www.google.com" : GoString))), path : ((("/" : GoString))), opaque : "", user : ((null : Ref<Userinfo>)), rawPath : "", forceQuery : false, rawQuery : "", fragment : "", rawFragment : "" } : URL)), ((("" : GoString)))) : URLTest)),
((new URLTest(((("http://www.google.com/file%20one%26two" : GoString))), (({ scheme : ((("http" : GoString))), host : ((("www.google.com" : GoString))), path : ((("/file one&two" : GoString))), rawPath : ((("/file%20one%26two" : GoString))), opaque : "", user : ((null : Ref<Userinfo>)), forceQuery : false, rawQuery : "", fragment : "", rawFragment : "" } : URL)), ((("" : GoString)))) : URLTest)),
((new URLTest(((("http://www.google.com/#file%20one%26two" : GoString))), (({ scheme : ((("http" : GoString))), host : ((("www.google.com" : GoString))), path : ((("/" : GoString))), fragment : ((("file one&two" : GoString))), rawFragment : ((("file%20one%26two" : GoString))), opaque : "", user : ((null : Ref<Userinfo>)), rawPath : "", forceQuery : false, rawQuery : "" } : URL)), ((("" : GoString)))) : URLTest)),
((new URLTest(((("ftp://webmaster@www.google.com/" : GoString))), (({ scheme : ((("ftp" : GoString))), user : user(((("webmaster" : GoString)))), host : ((("www.google.com" : GoString))), path : ((("/" : GoString))), opaque : "", rawPath : "", forceQuery : false, rawQuery : "", fragment : "", rawFragment : "" } : URL)), ((("" : GoString)))) : URLTest)),
((new URLTest(((("ftp://john%20doe@www.google.com/" : GoString))), (({ scheme : ((("ftp" : GoString))), user : user(((("john doe" : GoString)))), host : ((("www.google.com" : GoString))), path : ((("/" : GoString))), opaque : "", rawPath : "", forceQuery : false, rawQuery : "", fragment : "", rawFragment : "" } : URL)), ((("ftp://john%20doe@www.google.com/" : GoString)))) : URLTest)),
((new URLTest(((("http://www.google.com/?" : GoString))), (({ scheme : ((("http" : GoString))), host : ((("www.google.com" : GoString))), path : ((("/" : GoString))), forceQuery : true, opaque : "", user : ((null : Ref<Userinfo>)), rawPath : "", rawQuery : "", fragment : "", rawFragment : "" } : URL)), ((("" : GoString)))) : URLTest)),
((new URLTest(((("http://www.google.com/?foo=bar?" : GoString))), (({ scheme : ((("http" : GoString))), host : ((("www.google.com" : GoString))), path : ((("/" : GoString))), rawQuery : ((("foo=bar?" : GoString))), opaque : "", user : ((null : Ref<Userinfo>)), rawPath : "", forceQuery : false, fragment : "", rawFragment : "" } : URL)), ((("" : GoString)))) : URLTest)),
((new URLTest(((("http://www.google.com/?q=go+language" : GoString))), (({ scheme : ((("http" : GoString))), host : ((("www.google.com" : GoString))), path : ((("/" : GoString))), rawQuery : ((("q=go+language" : GoString))), opaque : "", user : ((null : Ref<Userinfo>)), rawPath : "", forceQuery : false, fragment : "", rawFragment : "" } : URL)), ((("" : GoString)))) : URLTest)),
((new URLTest(((("http://www.google.com/?q=go%20language" : GoString))), (({ scheme : ((("http" : GoString))), host : ((("www.google.com" : GoString))), path : ((("/" : GoString))), rawQuery : ((("q=go%20language" : GoString))), opaque : "", user : ((null : Ref<Userinfo>)), rawPath : "", forceQuery : false, fragment : "", rawFragment : "" } : URL)), ((("" : GoString)))) : URLTest)),
((new URLTest(((("http://www.google.com/a%20b?q=c+d" : GoString))), (({ scheme : ((("http" : GoString))), host : ((("www.google.com" : GoString))), path : ((("/a b" : GoString))), rawQuery : ((("q=c+d" : GoString))), opaque : "", user : ((null : Ref<Userinfo>)), rawPath : "", forceQuery : false, fragment : "", rawFragment : "" } : URL)), ((("" : GoString)))) : URLTest)),
((new URLTest(((("http:www.google.com/?q=go+language" : GoString))), (({ scheme : ((("http" : GoString))), opaque : ((("www.google.com/" : GoString))), rawQuery : ((("q=go+language" : GoString))), user : ((null : Ref<Userinfo>)), host : "", path : "", rawPath : "", forceQuery : false, fragment : "", rawFragment : "" } : URL)), ((("http:www.google.com/?q=go+language" : GoString)))) : URLTest)),
((new URLTest(((("http:%2f%2fwww.google.com/?q=go+language" : GoString))), (({ scheme : ((("http" : GoString))), opaque : ((("%2f%2fwww.google.com/" : GoString))), rawQuery : ((("q=go+language" : GoString))), user : ((null : Ref<Userinfo>)), host : "", path : "", rawPath : "", forceQuery : false, fragment : "", rawFragment : "" } : URL)), ((("http:%2f%2fwww.google.com/?q=go+language" : GoString)))) : URLTest)),
((new URLTest(((("mailto:/webmaster@golang.org" : GoString))), (({ scheme : ((("mailto" : GoString))), path : ((("/webmaster@golang.org" : GoString))), opaque : "", user : ((null : Ref<Userinfo>)), host : "", rawPath : "", forceQuery : false, rawQuery : "", fragment : "", rawFragment : "" } : URL)), ((("mailto:///webmaster@golang.org" : GoString)))) : URLTest)),
((new URLTest(((("mailto:webmaster@golang.org" : GoString))), (({ scheme : ((("mailto" : GoString))), opaque : ((("webmaster@golang.org" : GoString))), user : ((null : Ref<Userinfo>)), host : "", path : "", rawPath : "", forceQuery : false, rawQuery : "", fragment : "", rawFragment : "" } : URL)), ((("" : GoString)))) : URLTest)),
((new URLTest(((("/foo?query=http://bad" : GoString))), (({ path : ((("/foo" : GoString))), rawQuery : ((("query=http://bad" : GoString))), scheme : "", opaque : "", user : ((null : Ref<Userinfo>)), host : "", rawPath : "", forceQuery : false, fragment : "", rawFragment : "" } : URL)), ((("" : GoString)))) : URLTest)),
((new URLTest(((("//foo" : GoString))), (({ host : ((("foo" : GoString))), scheme : "", opaque : "", user : ((null : Ref<Userinfo>)), path : "", rawPath : "", forceQuery : false, rawQuery : "", fragment : "", rawFragment : "" } : URL)), ((("" : GoString)))) : URLTest)),
((new URLTest(((("//user@foo/path?a=b" : GoString))), (({ user : user(((("user" : GoString)))), host : ((("foo" : GoString))), path : ((("/path" : GoString))), rawQuery : ((("a=b" : GoString))), scheme : "", opaque : "", rawPath : "", forceQuery : false, fragment : "", rawFragment : "" } : URL)), ((("" : GoString)))) : URLTest)),
((new URLTest(((("///threeslashes" : GoString))), (({ path : ((("///threeslashes" : GoString))), scheme : "", opaque : "", user : ((null : Ref<Userinfo>)), host : "", rawPath : "", forceQuery : false, rawQuery : "", fragment : "", rawFragment : "" } : URL)), ((("" : GoString)))) : URLTest)),
((new URLTest(((("http://user:password@google.com" : GoString))), (({ scheme : ((("http" : GoString))), user : userPassword(((("user" : GoString))), ((("password" : GoString)))), host : ((("google.com" : GoString))), opaque : "", path : "", rawPath : "", forceQuery : false, rawQuery : "", fragment : "", rawFragment : "" } : URL)), ((("http://user:password@google.com" : GoString)))) : URLTest)),
((new URLTest(((("http://j@ne:password@google.com" : GoString))), (({ scheme : ((("http" : GoString))), user : userPassword(((("j@ne" : GoString))), ((("password" : GoString)))), host : ((("google.com" : GoString))), opaque : "", path : "", rawPath : "", forceQuery : false, rawQuery : "", fragment : "", rawFragment : "" } : URL)), ((("http://j%40ne:password@google.com" : GoString)))) : URLTest)),
((new URLTest(((("http://jane:p@ssword@google.com" : GoString))), (({ scheme : ((("http" : GoString))), user : userPassword(((("jane" : GoString))), ((("p@ssword" : GoString)))), host : ((("google.com" : GoString))), opaque : "", path : "", rawPath : "", forceQuery : false, rawQuery : "", fragment : "", rawFragment : "" } : URL)), ((("http://jane:p%40ssword@google.com" : GoString)))) : URLTest)),
((new URLTest(((("http://j@ne:password@google.com/p@th?q=@go" : GoString))), (({ scheme : ((("http" : GoString))), user : userPassword(((("j@ne" : GoString))), ((("password" : GoString)))), host : ((("google.com" : GoString))), path : ((("/p@th" : GoString))), rawQuery : ((("q=@go" : GoString))), opaque : "", rawPath : "", forceQuery : false, fragment : "", rawFragment : "" } : URL)), ((("http://j%40ne:password@google.com/p@th?q=@go" : GoString)))) : URLTest)),
((new URLTest(((("http://www.google.com/?q=go+language#foo" : GoString))), (({ scheme : ((("http" : GoString))), host : ((("www.google.com" : GoString))), path : ((("/" : GoString))), rawQuery : ((("q=go+language" : GoString))), fragment : ((("foo" : GoString))), opaque : "", user : ((null : Ref<Userinfo>)), rawPath : "", forceQuery : false, rawFragment : "" } : URL)), ((("" : GoString)))) : URLTest)),
((new URLTest(((("http://www.google.com/?q=go+language#foo&bar" : GoString))), (({ scheme : ((("http" : GoString))), host : ((("www.google.com" : GoString))), path : ((("/" : GoString))), rawQuery : ((("q=go+language" : GoString))), fragment : ((("foo&bar" : GoString))), opaque : "", user : ((null : Ref<Userinfo>)), rawPath : "", forceQuery : false, rawFragment : "" } : URL)), ((("http://www.google.com/?q=go+language#foo&bar" : GoString)))) : URLTest)),
((new URLTest(((("http://www.google.com/?q=go+language#foo%26bar" : GoString))), (({ scheme : ((("http" : GoString))), host : ((("www.google.com" : GoString))), path : ((("/" : GoString))), rawQuery : ((("q=go+language" : GoString))), fragment : ((("foo&bar" : GoString))), rawFragment : ((("foo%26bar" : GoString))), opaque : "", user : ((null : Ref<Userinfo>)), rawPath : "", forceQuery : false } : URL)), ((("http://www.google.com/?q=go+language#foo%26bar" : GoString)))) : URLTest)),
((new URLTest(((("file:///home/adg/rabbits" : GoString))), (({ scheme : ((("file" : GoString))), host : ((("" : GoString))), path : ((("/home/adg/rabbits" : GoString))), opaque : "", user : ((null : Ref<Userinfo>)), rawPath : "", forceQuery : false, rawQuery : "", fragment : "", rawFragment : "" } : URL)), ((("file:///home/adg/rabbits" : GoString)))) : URLTest)),
((new URLTest(((("file:///C:/FooBar/Baz.txt" : GoString))), (({ scheme : ((("file" : GoString))), host : ((("" : GoString))), path : ((("/C:/FooBar/Baz.txt" : GoString))), opaque : "", user : ((null : Ref<Userinfo>)), rawPath : "", forceQuery : false, rawQuery : "", fragment : "", rawFragment : "" } : URL)), ((("file:///C:/FooBar/Baz.txt" : GoString)))) : URLTest)),
((new URLTest(((("MaIlTo:webmaster@golang.org" : GoString))), (({ scheme : ((("mailto" : GoString))), opaque : ((("webmaster@golang.org" : GoString))), user : ((null : Ref<Userinfo>)), host : "", path : "", rawPath : "", forceQuery : false, rawQuery : "", fragment : "", rawFragment : "" } : URL)), ((("mailto:webmaster@golang.org" : GoString)))) : URLTest)),
((new URLTest(((("a/b/c" : GoString))), (({ path : ((("a/b/c" : GoString))), scheme : "", opaque : "", user : ((null : Ref<Userinfo>)), host : "", rawPath : "", forceQuery : false, rawQuery : "", fragment : "", rawFragment : "" } : URL)), ((("a/b/c" : GoString)))) : URLTest)),
((new URLTest(((("http://%3Fam:pa%3Fsword@google.com" : GoString))), (({ scheme : ((("http" : GoString))), user : userPassword(((("?am" : GoString))), ((("pa?sword" : GoString)))), host : ((("google.com" : GoString))), opaque : "", path : "", rawPath : "", forceQuery : false, rawQuery : "", fragment : "", rawFragment : "" } : URL)), ((("" : GoString)))) : URLTest)),
((new URLTest(((("http://192.168.0.1/" : GoString))), (({ scheme : ((("http" : GoString))), host : ((("192.168.0.1" : GoString))), path : ((("/" : GoString))), opaque : "", user : ((null : Ref<Userinfo>)), rawPath : "", forceQuery : false, rawQuery : "", fragment : "", rawFragment : "" } : URL)), ((("" : GoString)))) : URLTest)),
((new URLTest(((("http://192.168.0.1:8080/" : GoString))), (({ scheme : ((("http" : GoString))), host : ((("192.168.0.1:8080" : GoString))), path : ((("/" : GoString))), opaque : "", user : ((null : Ref<Userinfo>)), rawPath : "", forceQuery : false, rawQuery : "", fragment : "", rawFragment : "" } : URL)), ((("" : GoString)))) : URLTest)),
((new URLTest(((("http://[fe80::1]/" : GoString))), (({ scheme : ((("http" : GoString))), host : ((("[fe80::1]" : GoString))), path : ((("/" : GoString))), opaque : "", user : ((null : Ref<Userinfo>)), rawPath : "", forceQuery : false, rawQuery : "", fragment : "", rawFragment : "" } : URL)), ((("" : GoString)))) : URLTest)),
((new URLTest(((("http://[fe80::1]:8080/" : GoString))), (({ scheme : ((("http" : GoString))), host : ((("[fe80::1]:8080" : GoString))), path : ((("/" : GoString))), opaque : "", user : ((null : Ref<Userinfo>)), rawPath : "", forceQuery : false, rawQuery : "", fragment : "", rawFragment : "" } : URL)), ((("" : GoString)))) : URLTest)),
((new URLTest(((("http://[fe80::1%25en0]/" : GoString))), (({ scheme : ((("http" : GoString))), host : ((("[fe80::1%en0]" : GoString))), path : ((("/" : GoString))), opaque : "", user : ((null : Ref<Userinfo>)), rawPath : "", forceQuery : false, rawQuery : "", fragment : "", rawFragment : "" } : URL)), ((("" : GoString)))) : URLTest)),
((new URLTest(((("http://[fe80::1%25en0]:8080/" : GoString))), (({ scheme : ((("http" : GoString))), host : ((("[fe80::1%en0]:8080" : GoString))), path : ((("/" : GoString))), opaque : "", user : ((null : Ref<Userinfo>)), rawPath : "", forceQuery : false, rawQuery : "", fragment : "", rawFragment : "" } : URL)), ((("" : GoString)))) : URLTest)),
((new URLTest(((("http://[fe80::1%25%65%6e%301-._~]/" : GoString))), (({ scheme : ((("http" : GoString))), host : ((("[fe80::1%en01-._~]" : GoString))), path : ((("/" : GoString))), opaque : "", user : ((null : Ref<Userinfo>)), rawPath : "", forceQuery : false, rawQuery : "", fragment : "", rawFragment : "" } : URL)), ((("http://[fe80::1%25en01-._~]/" : GoString)))) : URLTest)),
((new URLTest(((("http://[fe80::1%25%65%6e%301-._~]:8080/" : GoString))), (({ scheme : ((("http" : GoString))), host : ((("[fe80::1%en01-._~]:8080" : GoString))), path : ((("/" : GoString))), opaque : "", user : ((null : Ref<Userinfo>)), rawPath : "", forceQuery : false, rawQuery : "", fragment : "", rawFragment : "" } : URL)), ((("http://[fe80::1%25en01-._~]:8080/" : GoString)))) : URLTest)),
((new URLTest(((("http://rest.rsc.io/foo%2fbar/baz%2Fquux?alt=media" : GoString))), (({ scheme : ((("http" : GoString))), host : ((("rest.rsc.io" : GoString))), path : ((("/foo/bar/baz/quux" : GoString))), rawPath : ((("/foo%2fbar/baz%2Fquux" : GoString))), rawQuery : ((("alt=media" : GoString))), opaque : "", user : ((null : Ref<Userinfo>)), forceQuery : false, fragment : "", rawFragment : "" } : URL)), ((("" : GoString)))) : URLTest)),
((new URLTest(((("mysql://a,b,c/bar" : GoString))), (({ scheme : ((("mysql" : GoString))), host : ((("a,b,c" : GoString))), path : ((("/bar" : GoString))), opaque : "", user : ((null : Ref<Userinfo>)), rawPath : "", forceQuery : false, rawQuery : "", fragment : "", rawFragment : "" } : URL)), ((("" : GoString)))) : URLTest)),
((new URLTest(((("scheme://!$$&\'()*+,;=hello!:1/path" : GoString))), (({ scheme : ((("scheme" : GoString))), host : ((("!$$&\'()*+,;=hello!:1" : GoString))), path : ((("/path" : GoString))), opaque : "", user : ((null : Ref<Userinfo>)), rawPath : "", forceQuery : false, rawQuery : "", fragment : "", rawFragment : "" } : URL)), ((("" : GoString)))) : URLTest)),
((new URLTest(((("http://host/!$$&\'()*+,;=:@[hello]" : GoString))), (({ scheme : ((("http" : GoString))), host : ((("host" : GoString))), path : ((("/!$$&\'()*+,;=:@[hello]" : GoString))), rawPath : ((("/!$$&\'()*+,;=:@[hello]" : GoString))), opaque : "", user : ((null : Ref<Userinfo>)), forceQuery : false, rawQuery : "", fragment : "", rawFragment : "" } : URL)), ((("" : GoString)))) : URLTest)),
((new URLTest(((("http://example.com/oid/[order_id]" : GoString))), (({ scheme : ((("http" : GoString))), host : ((("example.com" : GoString))), path : ((("/oid/[order_id]" : GoString))), rawPath : ((("/oid/[order_id]" : GoString))), opaque : "", user : ((null : Ref<Userinfo>)), forceQuery : false, rawQuery : "", fragment : "", rawFragment : "" } : URL)), ((("" : GoString)))) : URLTest)),
((new URLTest(((("http://192.168.0.2:8080/foo" : GoString))), (({ scheme : ((("http" : GoString))), host : ((("192.168.0.2:8080" : GoString))), path : ((("/foo" : GoString))), opaque : "", user : ((null : Ref<Userinfo>)), rawPath : "", forceQuery : false, rawQuery : "", fragment : "", rawFragment : "" } : URL)), ((("" : GoString)))) : URLTest)),
((new URLTest(((("http://192.168.0.2:/foo" : GoString))), (({ scheme : ((("http" : GoString))), host : ((("192.168.0.2:" : GoString))), path : ((("/foo" : GoString))), opaque : "", user : ((null : Ref<Userinfo>)), rawPath : "", forceQuery : false, rawQuery : "", fragment : "", rawFragment : "" } : URL)), ((("" : GoString)))) : URLTest)),
((new URLTest(((("http://2b01:e34:ef40:7730:8e70:5aff:fefe:edac:8080/foo" : GoString))), (({ scheme : ((("http" : GoString))), host : ((("2b01:e34:ef40:7730:8e70:5aff:fefe:edac:8080" : GoString))), path : ((("/foo" : GoString))), opaque : "", user : ((null : Ref<Userinfo>)), rawPath : "", forceQuery : false, rawQuery : "", fragment : "", rawFragment : "" } : URL)), ((("" : GoString)))) : URLTest)),
((new URLTest(((("http://2b01:e34:ef40:7730:8e70:5aff:fefe:edac:/foo" : GoString))), (({ scheme : ((("http" : GoString))), host : ((("2b01:e34:ef40:7730:8e70:5aff:fefe:edac:" : GoString))), path : ((("/foo" : GoString))), opaque : "", user : ((null : Ref<Userinfo>)), rawPath : "", forceQuery : false, rawQuery : "", fragment : "", rawFragment : "" } : URL)), ((("" : GoString)))) : URLTest)),
((new URLTest(((("http://[2b01:e34:ef40:7730:8e70:5aff:fefe:edac]:8080/foo" : GoString))), (({ scheme : ((("http" : GoString))), host : ((("[2b01:e34:ef40:7730:8e70:5aff:fefe:edac]:8080" : GoString))), path : ((("/foo" : GoString))), opaque : "", user : ((null : Ref<Userinfo>)), rawPath : "", forceQuery : false, rawQuery : "", fragment : "", rawFragment : "" } : URL)), ((("" : GoString)))) : URLTest)),
((new URLTest(((("http://[2b01:e34:ef40:7730:8e70:5aff:fefe:edac]:/foo" : GoString))), (({ scheme : ((("http" : GoString))), host : ((("[2b01:e34:ef40:7730:8e70:5aff:fefe:edac]:" : GoString))), path : ((("/foo" : GoString))), opaque : "", user : ((null : Ref<Userinfo>)), rawPath : "", forceQuery : false, rawQuery : "", fragment : "", rawFragment : "" } : URL)), ((("" : GoString)))) : URLTest)),
((new URLTest(((("http://hello.世界.com/foo" : GoString))), (({ scheme : ((("http" : GoString))), host : ((("hello.世界.com" : GoString))), path : ((("/foo" : GoString))), opaque : "", user : ((null : Ref<Userinfo>)), rawPath : "", forceQuery : false, rawQuery : "", fragment : "", rawFragment : "" } : URL)), ((("http://hello.%E4%B8%96%E7%95%8C.com/foo" : GoString)))) : URLTest)),
((new URLTest(((("http://hello.%e4%b8%96%e7%95%8c.com/foo" : GoString))), (({ scheme : ((("http" : GoString))), host : ((("hello.世界.com" : GoString))), path : ((("/foo" : GoString))), opaque : "", user : ((null : Ref<Userinfo>)), rawPath : "", forceQuery : false, rawQuery : "", fragment : "", rawFragment : "" } : URL)), ((("http://hello.%E4%B8%96%E7%95%8C.com/foo" : GoString)))) : URLTest)),
((new URLTest(((("http://hello.%E4%B8%96%E7%95%8C.com/foo" : GoString))), (({ scheme : ((("http" : GoString))), host : ((("hello.世界.com" : GoString))), path : ((("/foo" : GoString))), opaque : "", user : ((null : Ref<Userinfo>)), rawPath : "", forceQuery : false, rawQuery : "", fragment : "", rawFragment : "" } : URL)), ((("" : GoString)))) : URLTest)),
((new URLTest(((("http://example.com//foo" : GoString))), (({ scheme : ((("http" : GoString))), host : ((("example.com" : GoString))), path : ((("//foo" : GoString))), opaque : "", user : ((null : Ref<Userinfo>)), rawPath : "", forceQuery : false, rawQuery : "", fragment : "", rawFragment : "" } : URL)), ((("" : GoString)))) : URLTest)),
((new URLTest(((("myscheme://authority<\"hi\">/foo" : GoString))), (({ scheme : ((("myscheme" : GoString))), host : ((("authority<\"hi\">" : GoString))), path : ((("/foo" : GoString))), opaque : "", user : ((null : Ref<Userinfo>)), rawPath : "", forceQuery : false, rawQuery : "", fragment : "", rawFragment : "" } : URL)), ((("" : GoString)))) : URLTest)),
((new URLTest(((("tcp://[2020::2020:20:2020:2020%25Windows%20Loves%20Spaces]:2020" : GoString))), (({ scheme : ((("tcp" : GoString))), host : ((("[2020::2020:20:2020:2020%Windows Loves Spaces]:2020" : GoString))), opaque : "", user : ((null : Ref<Userinfo>)), path : "", rawPath : "", forceQuery : false, rawQuery : "", fragment : "", rawFragment : "" } : URL)), ((("" : GoString)))) : URLTest)),
((new URLTest(((("magnet:?xt=urn:btih:c12fe1c06bba254a9dc9f519b335aa7c1367a88a&dn" : GoString))), (({ scheme : ((("magnet" : GoString))), host : ((("" : GoString))), path : ((("" : GoString))), rawQuery : ((("xt=urn:btih:c12fe1c06bba254a9dc9f519b335aa7c1367a88a&dn" : GoString))), opaque : "", user : ((null : Ref<Userinfo>)), rawPath : "", forceQuery : false, fragment : "", rawFragment : "" } : URL)), ((("magnet:?xt=urn:btih:c12fe1c06bba254a9dc9f519b335aa7c1367a88a&dn" : GoString)))) : URLTest)),
((new URLTest(((("mailto:?subject=hi" : GoString))), (({ scheme : ((("mailto" : GoString))), host : ((("" : GoString))), path : ((("" : GoString))), rawQuery : ((("subject=hi" : GoString))), opaque : "", user : ((null : Ref<Userinfo>)), rawPath : "", forceQuery : false, fragment : "", rawFragment : "" } : URL)), ((("mailto:?subject=hi" : GoString)))) : URLTest))) : Slice<URLTest>));
var _parseRequestURLTests : Slice<T__struct_0> = ((new Slice<T__struct_0>(
((new T__struct_0(((("http://foo.com" : GoString))), true) : T__struct_0)),
((new T__struct_0(((("http://foo.com/" : GoString))), true) : T__struct_0)),
((new T__struct_0(((("http://foo.com/path" : GoString))), true) : T__struct_0)),
((new T__struct_0(((("/" : GoString))), true) : T__struct_0)),
((new T__struct_0(((("//not.a.user@not.a.host/just/a/path" : GoString))), true) : T__struct_0)),
((new T__struct_0(((("//not.a.user@%66%6f%6f.com/just/a/path/also" : GoString))), true) : T__struct_0)),
((new T__struct_0(((("*" : GoString))), true) : T__struct_0)),
((new T__struct_0(((("http://192.168.0.1/" : GoString))), true) : T__struct_0)),
((new T__struct_0(((("http://192.168.0.1:8080/" : GoString))), true) : T__struct_0)),
((new T__struct_0(((("http://[fe80::1]/" : GoString))), true) : T__struct_0)),
((new T__struct_0(((("http://[fe80::1]:8080/" : GoString))), true) : T__struct_0)),
((new T__struct_0(((("http://[fe80::1%25en0]/" : GoString))), true) : T__struct_0)),
((new T__struct_0(((("http://[fe80::1%25en0]:8080/" : GoString))), true) : T__struct_0)),
((new T__struct_0(((("http://[fe80::1%25%65%6e%301-._~]/" : GoString))), true) : T__struct_0)),
((new T__struct_0(((("http://[fe80::1%25%65%6e%301-._~]:8080/" : GoString))), true) : T__struct_0)),
((new T__struct_0(((("foo.html" : GoString))), false) : T__struct_0)),
((new T__struct_0(((("../dir/" : GoString))), false) : T__struct_0)),
((new T__struct_0((((" http://foo.com" : GoString))), false) : T__struct_0)),
((new T__struct_0(((("http://192.168.0.%31/" : GoString))), false) : T__struct_0)),
((new T__struct_0(((("http://192.168.0.%31:8080/" : GoString))), false) : T__struct_0)),
((new T__struct_0(((("http://[fe80::%31]/" : GoString))), false) : T__struct_0)),
((new T__struct_0(((("http://[fe80::%31]:8080/" : GoString))), false) : T__struct_0)),
((new T__struct_0(((("http://[fe80::%31%25en0]/" : GoString))), false) : T__struct_0)),
((new T__struct_0(((("http://[fe80::%31%25en0]:8080/" : GoString))), false) : T__struct_0)),
((new T__struct_0(((("http://[fe80::1%en0]/" : GoString))), false) : T__struct_0)),
((new T__struct_0(((("http://[fe80::1%en0]:8080/" : GoString))), false) : T__struct_0))) : Slice<T__struct_0>));
var _stringURLTests : Slice<T__struct_1> = ((new Slice<T__struct_1>(((({ _url : ((({ scheme : ((("http" : GoString))), host : ((("www.google.com" : GoString))), path : ((("search" : GoString))), opaque : "", user : ((null : Ref<Userinfo>)), rawPath : "", forceQuery : false, rawQuery : "", fragment : "", rawFragment : "" } : URL)) == null ? null : (({ scheme : ((("http" : GoString))), host : ((("www.google.com" : GoString))), path : ((("search" : GoString))), opaque : "", user : ((null : Ref<Userinfo>)), rawPath : "", forceQuery : false, rawQuery : "", fragment : "", rawFragment : "" } : URL)).__copy__()), _want : ((("http://www.google.com/search" : GoString))) } : T__struct_1)) == null ? null : (({ _url : ((({ scheme : ((("http" : GoString))), host : ((("www.google.com" : GoString))), path : ((("search" : GoString))), opaque : "", user : ((null : Ref<Userinfo>)), rawPath : "", forceQuery : false, rawQuery : "", fragment : "", rawFragment : "" } : URL)) == null ? null : (({ scheme : ((("http" : GoString))), host : ((("www.google.com" : GoString))), path : ((("search" : GoString))), opaque : "", user : ((null : Ref<Userinfo>)), rawPath : "", forceQuery : false, rawQuery : "", fragment : "", rawFragment : "" } : URL)).__copy__()), _want : ((("http://www.google.com/search" : GoString))) } : T__struct_1)).__copy__()), ((({ _url : ((({ path : ((("this:that" : GoString))), scheme : "", opaque : "", user : ((null : Ref<Userinfo>)), host : "", rawPath : "", forceQuery : false, rawQuery : "", fragment : "", rawFragment : "" } : URL)) == null ? null : (({ path : ((("this:that" : GoString))), scheme : "", opaque : "", user : ((null : Ref<Userinfo>)), host : "", rawPath : "", forceQuery : false, rawQuery : "", fragment : "", rawFragment : "" } : URL)).__copy__()), _want : ((("./this:that" : GoString))) } : T__struct_1)) == null ? null : (({ _url : ((({ path : ((("this:that" : GoString))), scheme : "", opaque : "", user : ((null : Ref<Userinfo>)), host : "", rawPath : "", forceQuery : false, rawQuery : "", fragment : "", rawFragment : "" } : URL)) == null ? null : (({ path : ((("this:that" : GoString))), scheme : "", opaque : "", user : ((null : Ref<Userinfo>)), host : "", rawPath : "", forceQuery : false, rawQuery : "", fragment : "", rawFragment : "" } : URL)).__copy__()), _want : ((("./this:that" : GoString))) } : T__struct_1)).__copy__()), ((({ _url : ((({ path : ((("here/this:that" : GoString))), scheme : "", opaque : "", user : ((null : Ref<Userinfo>)), host : "", rawPath : "", forceQuery : false, rawQuery : "", fragment : "", rawFragment : "" } : URL)) == null ? null : (({ path : ((("here/this:that" : GoString))), scheme : "", opaque : "", user : ((null : Ref<Userinfo>)), host : "", rawPath : "", forceQuery : false, rawQuery : "", fragment : "", rawFragment : "" } : URL)).__copy__()), _want : ((("here/this:that" : GoString))) } : T__struct_1)) == null ? null : (({ _url : ((({ path : ((("here/this:that" : GoString))), scheme : "", opaque : "", user : ((null : Ref<Userinfo>)), host : "", rawPath : "", forceQuery : false, rawQuery : "", fragment : "", rawFragment : "" } : URL)) == null ? null : (({ path : ((("here/this:that" : GoString))), scheme : "", opaque : "", user : ((null : Ref<Userinfo>)), host : "", rawPath : "", forceQuery : false, rawQuery : "", fragment : "", rawFragment : "" } : URL)).__copy__()), _want : ((("here/this:that" : GoString))) } : T__struct_1)).__copy__()), ((({ _url : ((({ scheme : ((("http" : GoString))), host : ((("www.google.com" : GoString))), path : ((("this:that" : GoString))), opaque : "", user : ((null : Ref<Userinfo>)), rawPath : "", forceQuery : false, rawQuery : "", fragment : "", rawFragment : "" } : URL)) == null ? null : (({ scheme : ((("http" : GoString))), host : ((("www.google.com" : GoString))), path : ((("this:that" : GoString))), opaque : "", user : ((null : Ref<Userinfo>)), rawPath : "", forceQuery : false, rawQuery : "", fragment : "", rawFragment : "" } : URL)).__copy__()), _want : ((("http://www.google.com/this:that" : GoString))) } : T__struct_1)) == null ? null : (({ _url : ((({ scheme : ((("http" : GoString))), host : ((("www.google.com" : GoString))), path : ((("this:that" : GoString))), opaque : "", user : ((null : Ref<Userinfo>)), rawPath : "", forceQuery : false, rawQuery : "", fragment : "", rawFragment : "" } : URL)) == null ? null : (({ scheme : ((("http" : GoString))), host : ((("www.google.com" : GoString))), path : ((("this:that" : GoString))), opaque : "", user : ((null : Ref<Userinfo>)), rawPath : "", forceQuery : false, rawQuery : "", fragment : "", rawFragment : "" } : URL)).__copy__()), _want : ((("http://www.google.com/this:that" : GoString))) } : T__struct_1)).__copy__())) : Slice<T__struct_1>));
var _unescapeTests : Slice<EscapeTest> = ((new Slice<EscapeTest>(
((new EscapeTest(((("" : GoString))), ((("" : GoString))), ((null : stdgo.Error))) : EscapeTest)),
((new EscapeTest(((("abc" : GoString))), ((("abc" : GoString))), ((null : stdgo.Error))) : EscapeTest)),
((new EscapeTest(((("1%41" : GoString))), ((("1A" : GoString))), ((null : stdgo.Error))) : EscapeTest)),
((new EscapeTest(((("1%41%42%43" : GoString))), ((("1ABC" : GoString))), ((null : stdgo.Error))) : EscapeTest)),
((new EscapeTest(((("%4a" : GoString))), ((("J" : GoString))), ((null : stdgo.Error))) : EscapeTest)),
((new EscapeTest(((("%6F" : GoString))), ((("o" : GoString))), ((null : stdgo.Error))) : EscapeTest)),
((new EscapeTest(((("%" : GoString))), ((("" : GoString))), new EscapeError_wrapper(Go.pointer(((((("%" : GoString))) : EscapeError))))) : EscapeTest)),
((new EscapeTest(((("%a" : GoString))), ((("" : GoString))), new EscapeError_wrapper(Go.pointer(((((("%a" : GoString))) : EscapeError))))) : EscapeTest)),
((new EscapeTest(((("%1" : GoString))), ((("" : GoString))), new EscapeError_wrapper(Go.pointer(((((("%1" : GoString))) : EscapeError))))) : EscapeTest)),
((new EscapeTest(((("123%45%6" : GoString))), ((("" : GoString))), new EscapeError_wrapper(Go.pointer(((((("%6" : GoString))) : EscapeError))))) : EscapeTest)),
((new EscapeTest(((("%zzzzz" : GoString))), ((("" : GoString))), new EscapeError_wrapper(Go.pointer(((((("%zz" : GoString))) : EscapeError))))) : EscapeTest)),
((new EscapeTest(((("a+b" : GoString))), ((("a b" : GoString))), ((null : stdgo.Error))) : EscapeTest)),
((new EscapeTest(((("a%20b" : GoString))), ((("a b" : GoString))), ((null : stdgo.Error))) : EscapeTest))) : Slice<EscapeTest>));
var _queryEscapeTests : Slice<EscapeTest> = ((new Slice<EscapeTest>(((new EscapeTest(((("" : GoString))), ((("" : GoString))), ((null : stdgo.Error))) : EscapeTest)), ((new EscapeTest(((("abc" : GoString))), ((("abc" : GoString))), ((null : stdgo.Error))) : EscapeTest)), ((new EscapeTest(((("one two" : GoString))), ((("one+two" : GoString))), ((null : stdgo.Error))) : EscapeTest)), ((new EscapeTest(((("10%" : GoString))), ((("10%25" : GoString))), ((null : stdgo.Error))) : EscapeTest)), ((new EscapeTest((((" ?&=#+%!<>#\"{}|\\^[]`☺\t:/@$$\'()*,;" : GoString))), ((("+%3F%26%3D%23%2B%25%21%3C%3E%23%22%7B%7D%7C%5C%5E%5B%5D%60%E2%98%BA%09%3A%2F%40%24%27%28%29%2A%2C%3B" : GoString))), ((null : stdgo.Error))) : EscapeTest))) : Slice<EscapeTest>));
var _pathEscapeTests : Slice<EscapeTest> = ((new Slice<EscapeTest>(((new EscapeTest(((("" : GoString))), ((("" : GoString))), ((null : stdgo.Error))) : EscapeTest)), ((new EscapeTest(((("abc" : GoString))), ((("abc" : GoString))), ((null : stdgo.Error))) : EscapeTest)), ((new EscapeTest(((("abc+def" : GoString))), ((("abc+def" : GoString))), ((null : stdgo.Error))) : EscapeTest)), ((new EscapeTest(((("a/b" : GoString))), ((("a%2Fb" : GoString))), ((null : stdgo.Error))) : EscapeTest)), ((new EscapeTest(((("one two" : GoString))), ((("one%20two" : GoString))), ((null : stdgo.Error))) : EscapeTest)), ((new EscapeTest(((("10%" : GoString))), ((("10%25" : GoString))), ((null : stdgo.Error))) : EscapeTest)), ((new EscapeTest((((" ?&=#+%!<>#\"{}|\\^[]`☺\t:/@$$\'()*,;" : GoString))), ((("%20%3F&=%23+%25%21%3C%3E%23%22%7B%7D%7C%5C%5E%5B%5D%60%E2%98%BA%09:%2F@$$%27%28%29%2A%2C%3B" : GoString))), ((null : stdgo.Error))) : EscapeTest))) : Slice<EscapeTest>));
var _encodeQueryTests : Slice<EncodeQueryTest> = ((new Slice<EncodeQueryTest>(((new EncodeQueryTest(null, ((("" : GoString)))) : EncodeQueryTest)), ((new EncodeQueryTest(Go.map(((("q" : GoString))) => ((new Slice<GoString>(((("puppies" : GoString)))) : Slice<GoString>)), ((("oe" : GoString))) => ((new Slice<GoString>(((("utf8" : GoString)))) : Slice<GoString>))), ((("oe=utf8&q=puppies" : GoString)))) : EncodeQueryTest)), ((new EncodeQueryTest(Go.map(((("q" : GoString))) => ((new Slice<GoString>(((("dogs" : GoString))), ((("&" : GoString))), ((("7" : GoString)))) : Slice<GoString>))), ((("q=dogs&q=%26&q=7" : GoString)))) : EncodeQueryTest)), ((new EncodeQueryTest(Go.map(((("a" : GoString))) => ((new Slice<GoString>(((("a1" : GoString))), ((("a2" : GoString))), ((("a3" : GoString)))) : Slice<GoString>)), ((("b" : GoString))) => ((new Slice<GoString>(((("b1" : GoString))), ((("b2" : GoString))), ((("b3" : GoString)))) : Slice<GoString>)), ((("c" : GoString))) => ((new Slice<GoString>(((("c1" : GoString))), ((("c2" : GoString))), ((("c3" : GoString)))) : Slice<GoString>))), ((("a=a1&a=a2&a=a3&b=b1&b=b2&b=b3&c=c1&c=c2&c=c3" : GoString)))) : EncodeQueryTest))) : Slice<EncodeQueryTest>));
var _resolvePathTests : Slice<T__struct_3> = ((new Slice<T__struct_3>(
((new T__struct_3(((("a/b" : GoString))), ((("." : GoString))), ((("/a/" : GoString)))) : T__struct_3)),
((new T__struct_3(((("a/b" : GoString))), ((("c" : GoString))), ((("/a/c" : GoString)))) : T__struct_3)),
((new T__struct_3(((("a/b" : GoString))), (((".." : GoString))), ((("/" : GoString)))) : T__struct_3)),
((new T__struct_3(((("a/" : GoString))), (((".." : GoString))), ((("/" : GoString)))) : T__struct_3)),
((new T__struct_3(((("a/" : GoString))), ((("../.." : GoString))), ((("/" : GoString)))) : T__struct_3)),
((new T__struct_3(((("a/b/c" : GoString))), (((".." : GoString))), ((("/a/" : GoString)))) : T__struct_3)),
((new T__struct_3(((("a/b/c" : GoString))), ((("../d" : GoString))), ((("/a/d" : GoString)))) : T__struct_3)),
((new T__struct_3(((("a/b/c" : GoString))), (((".././d" : GoString))), ((("/a/d" : GoString)))) : T__struct_3)),
((new T__struct_3(((("a/b" : GoString))), ((("./.." : GoString))), ((("/" : GoString)))) : T__struct_3)),
((new T__struct_3(((("a/./b" : GoString))), ((("." : GoString))), ((("/a/" : GoString)))) : T__struct_3)),
((new T__struct_3(((("a/../" : GoString))), ((("." : GoString))), ((("/" : GoString)))) : T__struct_3)),
((new T__struct_3(((("a/.././b" : GoString))), ((("c" : GoString))), ((("/c" : GoString)))) : T__struct_3))) : Slice<T__struct_3>));
var _resolveReferenceTests : Slice<T__struct_4> = ((new Slice<T__struct_4>(
((new T__struct_4(((("http://foo.com?a=b" : GoString))), ((("https://bar.com/" : GoString))), ((("https://bar.com/" : GoString)))) : T__struct_4)),
((new T__struct_4(((("http://foo.com/" : GoString))), ((("https://bar.com/?a=b" : GoString))), ((("https://bar.com/?a=b" : GoString)))) : T__struct_4)),
((new T__struct_4(((("http://foo.com/" : GoString))), ((("https://bar.com/?" : GoString))), ((("https://bar.com/?" : GoString)))) : T__struct_4)),
((new T__struct_4(((("http://foo.com/bar" : GoString))), ((("mailto:foo@example.com" : GoString))), ((("mailto:foo@example.com" : GoString)))) : T__struct_4)),
((new T__struct_4(((("http://foo.com/bar" : GoString))), ((("/baz" : GoString))), ((("http://foo.com/baz" : GoString)))) : T__struct_4)),
((new T__struct_4(((("http://foo.com/bar?a=b#f" : GoString))), ((("/baz" : GoString))), ((("http://foo.com/baz" : GoString)))) : T__struct_4)),
((new T__struct_4(((("http://foo.com/bar?a=b" : GoString))), ((("/baz?" : GoString))), ((("http://foo.com/baz?" : GoString)))) : T__struct_4)),
((new T__struct_4(((("http://foo.com/bar?a=b" : GoString))), ((("/baz?c=d" : GoString))), ((("http://foo.com/baz?c=d" : GoString)))) : T__struct_4)),
((new T__struct_4(((("http://foo.com/bar" : GoString))), ((("http://foo.com//baz" : GoString))), ((("http://foo.com//baz" : GoString)))) : T__struct_4)),
((new T__struct_4(((("http://foo.com/bar" : GoString))), ((("http://foo.com///baz/quux" : GoString))), ((("http://foo.com///baz/quux" : GoString)))) : T__struct_4)),
((new T__struct_4(((("https://foo.com/bar?a=b" : GoString))), ((("//bar.com/quux" : GoString))), ((("https://bar.com/quux" : GoString)))) : T__struct_4)),
((new T__struct_4(((("http://foo.com" : GoString))), ((("." : GoString))), ((("http://foo.com/" : GoString)))) : T__struct_4)),
((new T__struct_4(((("http://foo.com/bar" : GoString))), ((("." : GoString))), ((("http://foo.com/" : GoString)))) : T__struct_4)),
((new T__struct_4(((("http://foo.com/bar/" : GoString))), ((("." : GoString))), ((("http://foo.com/bar/" : GoString)))) : T__struct_4)),
((new T__struct_4(((("http://foo.com" : GoString))), ((("bar" : GoString))), ((("http://foo.com/bar" : GoString)))) : T__struct_4)),
((new T__struct_4(((("http://foo.com/" : GoString))), ((("bar" : GoString))), ((("http://foo.com/bar" : GoString)))) : T__struct_4)),
((new T__struct_4(((("http://foo.com/bar/baz" : GoString))), ((("quux" : GoString))), ((("http://foo.com/bar/quux" : GoString)))) : T__struct_4)),
((new T__struct_4(((("http://foo.com/bar/baz" : GoString))), ((("../quux" : GoString))), ((("http://foo.com/quux" : GoString)))) : T__struct_4)),
((new T__struct_4(((("http://foo.com/bar/baz" : GoString))), ((("../../../../../quux" : GoString))), ((("http://foo.com/quux" : GoString)))) : T__struct_4)),
((new T__struct_4(((("http://foo.com/bar" : GoString))), (((".." : GoString))), ((("http://foo.com/" : GoString)))) : T__struct_4)),
((new T__struct_4(((("http://foo.com/bar/baz" : GoString))), ((("./.." : GoString))), ((("http://foo.com/" : GoString)))) : T__struct_4)),
((new T__struct_4(((("http://foo.com/bar/baz" : GoString))), ((("quux/dotdot/../tail" : GoString))), ((("http://foo.com/bar/quux/tail" : GoString)))) : T__struct_4)),
((new T__struct_4(((("http://foo.com/bar/baz" : GoString))), ((("quux/./dotdot/../tail" : GoString))), ((("http://foo.com/bar/quux/tail" : GoString)))) : T__struct_4)),
((new T__struct_4(((("http://foo.com/bar/baz" : GoString))), ((("quux/./dotdot/.././tail" : GoString))), ((("http://foo.com/bar/quux/tail" : GoString)))) : T__struct_4)),
((new T__struct_4(((("http://foo.com/bar/baz" : GoString))), ((("quux/./dotdot/./../tail" : GoString))), ((("http://foo.com/bar/quux/tail" : GoString)))) : T__struct_4)),
((new T__struct_4(((("http://foo.com/bar/baz" : GoString))), ((("quux/./dotdot/dotdot/././../../tail" : GoString))), ((("http://foo.com/bar/quux/tail" : GoString)))) : T__struct_4)),
((new T__struct_4(((("http://foo.com/bar/baz" : GoString))), ((("quux/./dotdot/dotdot/./.././../tail" : GoString))), ((("http://foo.com/bar/quux/tail" : GoString)))) : T__struct_4)),
((new T__struct_4(((("http://foo.com/bar/baz" : GoString))), ((("quux/./dotdot/dotdot/dotdot/./../../.././././tail" : GoString))), ((("http://foo.com/bar/quux/tail" : GoString)))) : T__struct_4)),
((new T__struct_4(((("http://foo.com/bar/baz" : GoString))), ((("quux/./dotdot/../dotdot/../dot/./tail/.." : GoString))), ((("http://foo.com/bar/quux/dot/" : GoString)))) : T__struct_4)),
((new T__struct_4(((("http://foo.com/dot/./dotdot/../foo/bar" : GoString))), ((("../baz" : GoString))), ((("http://foo.com/dot/baz" : GoString)))) : T__struct_4)),
((new T__struct_4(((("http://foo.com/bar" : GoString))), ((("..." : GoString))), ((("http://foo.com/..." : GoString)))) : T__struct_4)),
((new T__struct_4(((("http://foo.com/bar" : GoString))), (((".#frag" : GoString))), ((("http://foo.com/#frag" : GoString)))) : T__struct_4)),
((new T__struct_4(((("http://example.org/" : GoString))), ((("#!$$&%27()*+,;=" : GoString))), ((("http://example.org/#!$$&%27()*+,;=" : GoString)))) : T__struct_4)),
((new T__struct_4(((("http://foo.com/foo%2fbar/" : GoString))), ((("../baz" : GoString))), ((("http://foo.com/baz" : GoString)))) : T__struct_4)),
((new T__struct_4(((("http://foo.com/1/2%2f/3%2f4/5" : GoString))), ((("../../a/b/c" : GoString))), ((("http://foo.com/1/a/b/c" : GoString)))) : T__struct_4)),
((new T__struct_4(((("http://foo.com/1/2/3" : GoString))), ((("./a%2f../../b/..%2fc" : GoString))), ((("http://foo.com/1/2/b/..%2fc" : GoString)))) : T__struct_4)),
((new T__struct_4(((("http://foo.com/1/2%2f/3%2f4/5" : GoString))), ((("./a%2f../b/../c" : GoString))), ((("http://foo.com/1/2%2f/3%2f4/a%2f../c" : GoString)))) : T__struct_4)),
((new T__struct_4(((("http://foo.com/foo%20bar/" : GoString))), ((("../baz" : GoString))), ((("http://foo.com/baz" : GoString)))) : T__struct_4)),
((new T__struct_4(((("http://foo.com/foo" : GoString))), ((("../bar%2fbaz" : GoString))), ((("http://foo.com/bar%2fbaz" : GoString)))) : T__struct_4)),
((new T__struct_4(((("http://foo.com/foo%2dbar/" : GoString))), ((("./baz-quux" : GoString))), ((("http://foo.com/foo%2dbar/baz-quux" : GoString)))) : T__struct_4)),
((new T__struct_4(((("http://a/b/c/d;p?q" : GoString))), ((("g:h" : GoString))), ((("g:h" : GoString)))) : T__struct_4)),
((new T__struct_4(((("http://a/b/c/d;p?q" : GoString))), ((("g" : GoString))), ((("http://a/b/c/g" : GoString)))) : T__struct_4)),
((new T__struct_4(((("http://a/b/c/d;p?q" : GoString))), ((("./g" : GoString))), ((("http://a/b/c/g" : GoString)))) : T__struct_4)),
((new T__struct_4(((("http://a/b/c/d;p?q" : GoString))), ((("g/" : GoString))), ((("http://a/b/c/g/" : GoString)))) : T__struct_4)),
((new T__struct_4(((("http://a/b/c/d;p?q" : GoString))), ((("/g" : GoString))), ((("http://a/g" : GoString)))) : T__struct_4)),
((new T__struct_4(((("http://a/b/c/d;p?q" : GoString))), ((("//g" : GoString))), ((("http://g" : GoString)))) : T__struct_4)),
((new T__struct_4(((("http://a/b/c/d;p?q" : GoString))), ((("?y" : GoString))), ((("http://a/b/c/d;p?y" : GoString)))) : T__struct_4)),
((new T__struct_4(((("http://a/b/c/d;p?q" : GoString))), ((("g?y" : GoString))), ((("http://a/b/c/g?y" : GoString)))) : T__struct_4)),
((new T__struct_4(((("http://a/b/c/d;p?q" : GoString))), ((("#s" : GoString))), ((("http://a/b/c/d;p?q#s" : GoString)))) : T__struct_4)),
((new T__struct_4(((("http://a/b/c/d;p?q" : GoString))), ((("g#s" : GoString))), ((("http://a/b/c/g#s" : GoString)))) : T__struct_4)),
((new T__struct_4(((("http://a/b/c/d;p?q" : GoString))), ((("g?y#s" : GoString))), ((("http://a/b/c/g?y#s" : GoString)))) : T__struct_4)),
((new T__struct_4(((("http://a/b/c/d;p?q" : GoString))), (((";x" : GoString))), ((("http://a/b/c/;x" : GoString)))) : T__struct_4)),
((new T__struct_4(((("http://a/b/c/d;p?q" : GoString))), ((("g;x" : GoString))), ((("http://a/b/c/g;x" : GoString)))) : T__struct_4)),
((new T__struct_4(((("http://a/b/c/d;p?q" : GoString))), ((("g;x?y#s" : GoString))), ((("http://a/b/c/g;x?y#s" : GoString)))) : T__struct_4)),
((new T__struct_4(((("http://a/b/c/d;p?q" : GoString))), ((("" : GoString))), ((("http://a/b/c/d;p?q" : GoString)))) : T__struct_4)),
((new T__struct_4(((("http://a/b/c/d;p?q" : GoString))), ((("." : GoString))), ((("http://a/b/c/" : GoString)))) : T__struct_4)),
((new T__struct_4(((("http://a/b/c/d;p?q" : GoString))), ((("./" : GoString))), ((("http://a/b/c/" : GoString)))) : T__struct_4)),
((new T__struct_4(((("http://a/b/c/d;p?q" : GoString))), (((".." : GoString))), ((("http://a/b/" : GoString)))) : T__struct_4)),
((new T__struct_4(((("http://a/b/c/d;p?q" : GoString))), ((("../" : GoString))), ((("http://a/b/" : GoString)))) : T__struct_4)),
((new T__struct_4(((("http://a/b/c/d;p?q" : GoString))), ((("../g" : GoString))), ((("http://a/b/g" : GoString)))) : T__struct_4)),
((new T__struct_4(((("http://a/b/c/d;p?q" : GoString))), ((("../.." : GoString))), ((("http://a/" : GoString)))) : T__struct_4)),
((new T__struct_4(((("http://a/b/c/d;p?q" : GoString))), ((("../../" : GoString))), ((("http://a/" : GoString)))) : T__struct_4)),
((new T__struct_4(((("http://a/b/c/d;p?q" : GoString))), ((("../../g" : GoString))), ((("http://a/g" : GoString)))) : T__struct_4)),
((new T__struct_4(((("http://a/b/c/d;p?q" : GoString))), ((("../../../g" : GoString))), ((("http://a/g" : GoString)))) : T__struct_4)),
((new T__struct_4(((("http://a/b/c/d;p?q" : GoString))), ((("../../../../g" : GoString))), ((("http://a/g" : GoString)))) : T__struct_4)),
((new T__struct_4(((("http://a/b/c/d;p?q" : GoString))), ((("/./g" : GoString))), ((("http://a/g" : GoString)))) : T__struct_4)),
((new T__struct_4(((("http://a/b/c/d;p?q" : GoString))), ((("/../g" : GoString))), ((("http://a/g" : GoString)))) : T__struct_4)),
((new T__struct_4(((("http://a/b/c/d;p?q" : GoString))), ((("g." : GoString))), ((("http://a/b/c/g." : GoString)))) : T__struct_4)),
((new T__struct_4(((("http://a/b/c/d;p?q" : GoString))), (((".g" : GoString))), ((("http://a/b/c/.g" : GoString)))) : T__struct_4)),
((new T__struct_4(((("http://a/b/c/d;p?q" : GoString))), ((("g.." : GoString))), ((("http://a/b/c/g.." : GoString)))) : T__struct_4)),
((new T__struct_4(((("http://a/b/c/d;p?q" : GoString))), ((("..g" : GoString))), ((("http://a/b/c/..g" : GoString)))) : T__struct_4)),
((new T__struct_4(((("http://a/b/c/d;p?q" : GoString))), ((("./../g" : GoString))), ((("http://a/b/g" : GoString)))) : T__struct_4)),
((new T__struct_4(((("http://a/b/c/d;p?q" : GoString))), ((("./g/." : GoString))), ((("http://a/b/c/g/" : GoString)))) : T__struct_4)),
((new T__struct_4(((("http://a/b/c/d;p?q" : GoString))), ((("g/./h" : GoString))), ((("http://a/b/c/g/h" : GoString)))) : T__struct_4)),
((new T__struct_4(((("http://a/b/c/d;p?q" : GoString))), ((("g/../h" : GoString))), ((("http://a/b/c/h" : GoString)))) : T__struct_4)),
((new T__struct_4(((("http://a/b/c/d;p?q" : GoString))), ((("g;x=1/./y" : GoString))), ((("http://a/b/c/g;x=1/y" : GoString)))) : T__struct_4)),
((new T__struct_4(((("http://a/b/c/d;p?q" : GoString))), ((("g;x=1/../y" : GoString))), ((("http://a/b/c/y" : GoString)))) : T__struct_4)),
((new T__struct_4(((("http://a/b/c/d;p?q" : GoString))), ((("g?y/./x" : GoString))), ((("http://a/b/c/g?y/./x" : GoString)))) : T__struct_4)),
((new T__struct_4(((("http://a/b/c/d;p?q" : GoString))), ((("g?y/../x" : GoString))), ((("http://a/b/c/g?y/../x" : GoString)))) : T__struct_4)),
((new T__struct_4(((("http://a/b/c/d;p?q" : GoString))), ((("g#s/./x" : GoString))), ((("http://a/b/c/g#s/./x" : GoString)))) : T__struct_4)),
((new T__struct_4(((("http://a/b/c/d;p?q" : GoString))), ((("g#s/../x" : GoString))), ((("http://a/b/c/g#s/../x" : GoString)))) : T__struct_4)),
((new T__struct_4(((("https://a/b/c/d;p?q" : GoString))), ((("//g?q" : GoString))), ((("https://g?q" : GoString)))) : T__struct_4)),
((new T__struct_4(((("https://a/b/c/d;p?q" : GoString))), ((("//g#s" : GoString))), ((("https://g#s" : GoString)))) : T__struct_4)),
((new T__struct_4(((("https://a/b/c/d;p?q" : GoString))), ((("//g/d/e/f?y#s" : GoString))), ((("https://g/d/e/f?y#s" : GoString)))) : T__struct_4)),
((new T__struct_4(((("https://a/b/c/d;p#s" : GoString))), ((("?y" : GoString))), ((("https://a/b/c/d;p?y" : GoString)))) : T__struct_4)),
((new T__struct_4(((("https://a/b/c/d;p?q#s" : GoString))), ((("?y" : GoString))), ((("https://a/b/c/d;p?y" : GoString)))) : T__struct_4)),
((new T__struct_4(((("https://a/b/c/d;p?q#s" : GoString))), ((("?" : GoString))), ((("https://a/b/c/d;p?" : GoString)))) : T__struct_4))) : Slice<T__struct_4>));
var _parseTests : Slice<T_parseTest> = ((new Slice<T_parseTest>(
((({ _query : ((("a=1" : GoString))), _out : Go.map(((("a" : GoString))) => ((new Slice<GoString>(((("1" : GoString)))) : Slice<GoString>))), _ok : true } : T_parseTest)) == null ? null : (({ _query : ((("a=1" : GoString))), _out : Go.map(((("a" : GoString))) => ((new Slice<GoString>(((("1" : GoString)))) : Slice<GoString>))), _ok : true } : T_parseTest)).__copy__()),
((({ _query : ((("a=1&b=2" : GoString))), _out : Go.map(((("a" : GoString))) => ((new Slice<GoString>(((("1" : GoString)))) : Slice<GoString>)), ((("b" : GoString))) => ((new Slice<GoString>(((("2" : GoString)))) : Slice<GoString>))), _ok : true } : T_parseTest)) == null ? null : (({ _query : ((("a=1&b=2" : GoString))), _out : Go.map(((("a" : GoString))) => ((new Slice<GoString>(((("1" : GoString)))) : Slice<GoString>)), ((("b" : GoString))) => ((new Slice<GoString>(((("2" : GoString)))) : Slice<GoString>))), _ok : true } : T_parseTest)).__copy__()),
((({ _query : ((("a=1&a=2&a=banana" : GoString))), _out : Go.map(((("a" : GoString))) => ((new Slice<GoString>(((("1" : GoString))), ((("2" : GoString))), ((("banana" : GoString)))) : Slice<GoString>))), _ok : true } : T_parseTest)) == null ? null : (({ _query : ((("a=1&a=2&a=banana" : GoString))), _out : Go.map(((("a" : GoString))) => ((new Slice<GoString>(((("1" : GoString))), ((("2" : GoString))), ((("banana" : GoString)))) : Slice<GoString>))), _ok : true } : T_parseTest)).__copy__()),
((({ _query : ((("ascii=%3Ckey%3A+0x90%3E" : GoString))), _out : Go.map(((("ascii" : GoString))) => ((new Slice<GoString>(((("<key: 0x90>" : GoString)))) : Slice<GoString>))), _ok : true } : T_parseTest)) == null ? null : (({ _query : ((("ascii=%3Ckey%3A+0x90%3E" : GoString))), _out : Go.map(((("ascii" : GoString))) => ((new Slice<GoString>(((("<key: 0x90>" : GoString)))) : Slice<GoString>))), _ok : true } : T_parseTest)).__copy__()),
((({ _query : ((("a=1;b=2" : GoString))), _out : Go.map(), _ok : false } : T_parseTest)) == null ? null : (({ _query : ((("a=1;b=2" : GoString))), _out : Go.map(), _ok : false } : T_parseTest)).__copy__()),
((({ _query : ((("a;b=1" : GoString))), _out : Go.map(), _ok : false } : T_parseTest)) == null ? null : (({ _query : ((("a;b=1" : GoString))), _out : Go.map(), _ok : false } : T_parseTest)).__copy__()),
((({ _query : ((("a=%3B" : GoString))), _out : Go.map(((("a" : GoString))) => ((new Slice<GoString>((((";" : GoString)))) : Slice<GoString>))), _ok : true } : T_parseTest)) == null ? null : (({ _query : ((("a=%3B" : GoString))), _out : Go.map(((("a" : GoString))) => ((new Slice<GoString>((((";" : GoString)))) : Slice<GoString>))), _ok : true } : T_parseTest)).__copy__()),
((({ _query : ((("a%3Bb=1" : GoString))), _out : Go.map(((("a;b" : GoString))) => ((new Slice<GoString>(((("1" : GoString)))) : Slice<GoString>))), _ok : true } : T_parseTest)) == null ? null : (({ _query : ((("a%3Bb=1" : GoString))), _out : Go.map(((("a;b" : GoString))) => ((new Slice<GoString>(((("1" : GoString)))) : Slice<GoString>))), _ok : true } : T_parseTest)).__copy__()),
((({ _query : ((("a=1&a=2;a=banana" : GoString))), _out : Go.map(((("a" : GoString))) => ((new Slice<GoString>(((("1" : GoString)))) : Slice<GoString>))), _ok : false } : T_parseTest)) == null ? null : (({ _query : ((("a=1&a=2;a=banana" : GoString))), _out : Go.map(((("a" : GoString))) => ((new Slice<GoString>(((("1" : GoString)))) : Slice<GoString>))), _ok : false } : T_parseTest)).__copy__()),
((({ _query : ((("a;b&c=1" : GoString))), _out : Go.map(((("c" : GoString))) => ((new Slice<GoString>(((("1" : GoString)))) : Slice<GoString>))), _ok : false } : T_parseTest)) == null ? null : (({ _query : ((("a;b&c=1" : GoString))), _out : Go.map(((("c" : GoString))) => ((new Slice<GoString>(((("1" : GoString)))) : Slice<GoString>))), _ok : false } : T_parseTest)).__copy__()),
((({ _query : ((("a=1&b=2;a=3&c=4" : GoString))), _out : Go.map(((("a" : GoString))) => ((new Slice<GoString>(((("1" : GoString)))) : Slice<GoString>)), ((("c" : GoString))) => ((new Slice<GoString>(((("4" : GoString)))) : Slice<GoString>))), _ok : false } : T_parseTest)) == null ? null : (({ _query : ((("a=1&b=2;a=3&c=4" : GoString))), _out : Go.map(((("a" : GoString))) => ((new Slice<GoString>(((("1" : GoString)))) : Slice<GoString>)), ((("c" : GoString))) => ((new Slice<GoString>(((("4" : GoString)))) : Slice<GoString>))), _ok : false } : T_parseTest)).__copy__()),
((({ _query : ((("a=1&b=2;c=3" : GoString))), _out : Go.map(((("a" : GoString))) => ((new Slice<GoString>(((("1" : GoString)))) : Slice<GoString>))), _ok : false } : T_parseTest)) == null ? null : (({ _query : ((("a=1&b=2;c=3" : GoString))), _out : Go.map(((("a" : GoString))) => ((new Slice<GoString>(((("1" : GoString)))) : Slice<GoString>))), _ok : false } : T_parseTest)).__copy__()),
((({ _query : (((";" : GoString))), _out : Go.map(), _ok : false } : T_parseTest)) == null ? null : (({ _query : (((";" : GoString))), _out : Go.map(), _ok : false } : T_parseTest)).__copy__()),
((({ _query : ((("a=1;" : GoString))), _out : Go.map(), _ok : false } : T_parseTest)) == null ? null : (({ _query : ((("a=1;" : GoString))), _out : Go.map(), _ok : false } : T_parseTest)).__copy__()),
((({ _query : ((("a=1&;" : GoString))), _out : Go.map(((("a" : GoString))) => ((new Slice<GoString>(((("1" : GoString)))) : Slice<GoString>))), _ok : false } : T_parseTest)) == null ? null : (({ _query : ((("a=1&;" : GoString))), _out : Go.map(((("a" : GoString))) => ((new Slice<GoString>(((("1" : GoString)))) : Slice<GoString>))), _ok : false } : T_parseTest)).__copy__()),
((({ _query : (((";a=1&b=2" : GoString))), _out : Go.map(((("b" : GoString))) => ((new Slice<GoString>(((("2" : GoString)))) : Slice<GoString>))), _ok : false } : T_parseTest)) == null ? null : (({ _query : (((";a=1&b=2" : GoString))), _out : Go.map(((("b" : GoString))) => ((new Slice<GoString>(((("2" : GoString)))) : Slice<GoString>))), _ok : false } : T_parseTest)).__copy__()),
((({ _query : ((("a=1&b=2;" : GoString))), _out : Go.map(((("a" : GoString))) => ((new Slice<GoString>(((("1" : GoString)))) : Slice<GoString>))), _ok : false } : T_parseTest)) == null ? null : (({ _query : ((("a=1&b=2;" : GoString))), _out : Go.map(((("a" : GoString))) => ((new Slice<GoString>(((("1" : GoString)))) : Slice<GoString>))), _ok : false } : T_parseTest)).__copy__())) : Slice<T_parseTest>));
var _requritests : Slice<RequestURITest> = ((new Slice<RequestURITest>(
((new RequestURITest((({ scheme : ((("http" : GoString))), host : ((("example.com" : GoString))), path : ((("" : GoString))), opaque : "", user : ((null : Ref<Userinfo>)), rawPath : "", forceQuery : false, rawQuery : "", fragment : "", rawFragment : "" } : URL)), ((("/" : GoString)))) : RequestURITest)),
((new RequestURITest((({ scheme : ((("http" : GoString))), host : ((("example.com" : GoString))), path : ((("/a b" : GoString))), opaque : "", user : ((null : Ref<Userinfo>)), rawPath : "", forceQuery : false, rawQuery : "", fragment : "", rawFragment : "" } : URL)), ((("/a%20b" : GoString)))) : RequestURITest)),
((new RequestURITest((({ scheme : ((("http" : GoString))), host : ((("example.com" : GoString))), opaque : ((("/%2F/%2F/" : GoString))), user : ((null : Ref<Userinfo>)), path : "", rawPath : "", forceQuery : false, rawQuery : "", fragment : "", rawFragment : "" } : URL)), ((("/%2F/%2F/" : GoString)))) : RequestURITest)),
((new RequestURITest((({ scheme : ((("http" : GoString))), host : ((("example.com" : GoString))), opaque : ((("//other.example.com/%2F/%2F/" : GoString))), user : ((null : Ref<Userinfo>)), path : "", rawPath : "", forceQuery : false, rawQuery : "", fragment : "", rawFragment : "" } : URL)), ((("http://other.example.com/%2F/%2F/" : GoString)))) : RequestURITest)),
((new RequestURITest((({ scheme : ((("http" : GoString))), host : ((("example.com" : GoString))), path : ((("/////" : GoString))), rawPath : ((("/%2F/%2F/" : GoString))), opaque : "", user : ((null : Ref<Userinfo>)), forceQuery : false, rawQuery : "", fragment : "", rawFragment : "" } : URL)), ((("/%2F/%2F/" : GoString)))) : RequestURITest)),
((new RequestURITest((({ scheme : ((("http" : GoString))), host : ((("example.com" : GoString))), path : ((("/////" : GoString))), rawPath : ((("/WRONG/" : GoString))), opaque : "", user : ((null : Ref<Userinfo>)), forceQuery : false, rawQuery : "", fragment : "", rawFragment : "" } : URL)), ((("/////" : GoString)))) : RequestURITest)),
((new RequestURITest((({ scheme : ((("http" : GoString))), host : ((("example.com" : GoString))), path : ((("/a b" : GoString))), rawQuery : ((("q=go+language" : GoString))), opaque : "", user : ((null : Ref<Userinfo>)), rawPath : "", forceQuery : false, fragment : "", rawFragment : "" } : URL)), ((("/a%20b?q=go+language" : GoString)))) : RequestURITest)),
((new RequestURITest((({ scheme : ((("http" : GoString))), host : ((("example.com" : GoString))), path : ((("/a b" : GoString))), rawPath : ((("/a b" : GoString))), rawQuery : ((("q=go+language" : GoString))), opaque : "", user : ((null : Ref<Userinfo>)), forceQuery : false, fragment : "", rawFragment : "" } : URL)), ((("/a%20b?q=go+language" : GoString)))) : RequestURITest)),
((new RequestURITest((({ scheme : ((("http" : GoString))), host : ((("example.com" : GoString))), path : ((("/a?b" : GoString))), rawPath : ((("/a?b" : GoString))), rawQuery : ((("q=go+language" : GoString))), opaque : "", user : ((null : Ref<Userinfo>)), forceQuery : false, fragment : "", rawFragment : "" } : URL)), ((("/a%3Fb?q=go+language" : GoString)))) : RequestURITest)),
((new RequestURITest((({ scheme : ((("myschema" : GoString))), opaque : ((("opaque" : GoString))), user : ((null : Ref<Userinfo>)), host : "", path : "", rawPath : "", forceQuery : false, rawQuery : "", fragment : "", rawFragment : "" } : URL)), ((("opaque" : GoString)))) : RequestURITest)),
((new RequestURITest((({ scheme : ((("myschema" : GoString))), opaque : ((("opaque" : GoString))), rawQuery : ((("q=go+language" : GoString))), user : ((null : Ref<Userinfo>)), host : "", path : "", rawPath : "", forceQuery : false, fragment : "", rawFragment : "" } : URL)), ((("opaque?q=go+language" : GoString)))) : RequestURITest)),
((new RequestURITest((({ scheme : ((("http" : GoString))), host : ((("example.com" : GoString))), path : ((("//foo" : GoString))), opaque : "", user : ((null : Ref<Userinfo>)), rawPath : "", forceQuery : false, rawQuery : "", fragment : "", rawFragment : "" } : URL)), ((("//foo" : GoString)))) : RequestURITest)),
((new RequestURITest((({ scheme : ((("http" : GoString))), host : ((("example.com" : GoString))), path : ((("/foo" : GoString))), forceQuery : true, opaque : "", user : ((null : Ref<Userinfo>)), rawPath : "", rawQuery : "", fragment : "", rawFragment : "" } : URL)), ((("/foo?" : GoString)))) : RequestURITest))) : Slice<RequestURITest>));
var _shouldEscapeTests : Slice<T_shouldEscapeTest> = ((new Slice<T_shouldEscapeTest>(
((new T_shouldEscapeTest(((((("a" : GoString))).code : GoRune)), ((1 : GoInt)), false) : T_shouldEscapeTest)),
((new T_shouldEscapeTest(((((("a" : GoString))).code : GoRune)), ((5 : GoInt)), false) : T_shouldEscapeTest)),
((new T_shouldEscapeTest(((((("a" : GoString))).code : GoRune)), ((6 : GoInt)), false) : T_shouldEscapeTest)),
((new T_shouldEscapeTest(((((("a" : GoString))).code : GoRune)), ((7 : GoInt)), false) : T_shouldEscapeTest)),
((new T_shouldEscapeTest(((((("a" : GoString))).code : GoRune)), ((3 : GoInt)), false) : T_shouldEscapeTest)),
((new T_shouldEscapeTest(((((("z" : GoString))).code : GoRune)), ((1 : GoInt)), false) : T_shouldEscapeTest)),
((new T_shouldEscapeTest(((((("A" : GoString))).code : GoRune)), ((1 : GoInt)), false) : T_shouldEscapeTest)),
((new T_shouldEscapeTest(((((("Z" : GoString))).code : GoRune)), ((1 : GoInt)), false) : T_shouldEscapeTest)),
((new T_shouldEscapeTest(((((("0" : GoString))).code : GoRune)), ((1 : GoInt)), false) : T_shouldEscapeTest)),
((new T_shouldEscapeTest(((((("9" : GoString))).code : GoRune)), ((1 : GoInt)), false) : T_shouldEscapeTest)),
((new T_shouldEscapeTest(((((("-" : GoString))).code : GoRune)), ((1 : GoInt)), false) : T_shouldEscapeTest)),
((new T_shouldEscapeTest(((((("-" : GoString))).code : GoRune)), ((5 : GoInt)), false) : T_shouldEscapeTest)),
((new T_shouldEscapeTest(((((("-" : GoString))).code : GoRune)), ((6 : GoInt)), false) : T_shouldEscapeTest)),
((new T_shouldEscapeTest(((((("-" : GoString))).code : GoRune)), ((7 : GoInt)), false) : T_shouldEscapeTest)),
((new T_shouldEscapeTest(((((("." : GoString))).code : GoRune)), ((1 : GoInt)), false) : T_shouldEscapeTest)),
((new T_shouldEscapeTest(((((("_" : GoString))).code : GoRune)), ((1 : GoInt)), false) : T_shouldEscapeTest)),
((new T_shouldEscapeTest(((((("~" : GoString))).code : GoRune)), ((1 : GoInt)), false) : T_shouldEscapeTest)),
((new T_shouldEscapeTest((((((":" : GoString))).code : GoRune)), ((5 : GoInt)), true) : T_shouldEscapeTest)),
((new T_shouldEscapeTest(((((("/" : GoString))).code : GoRune)), ((5 : GoInt)), true) : T_shouldEscapeTest)),
((new T_shouldEscapeTest(((((("?" : GoString))).code : GoRune)), ((5 : GoInt)), true) : T_shouldEscapeTest)),
((new T_shouldEscapeTest(((((("@" : GoString))).code : GoRune)), ((5 : GoInt)), true) : T_shouldEscapeTest)),
((new T_shouldEscapeTest(((((("$$" : GoString))).code : GoRune)), ((5 : GoInt)), false) : T_shouldEscapeTest)),
((new T_shouldEscapeTest(((((("&" : GoString))).code : GoRune)), ((5 : GoInt)), false) : T_shouldEscapeTest)),
((new T_shouldEscapeTest(((((("+" : GoString))).code : GoRune)), ((5 : GoInt)), false) : T_shouldEscapeTest)),
((new T_shouldEscapeTest(((((("," : GoString))).code : GoRune)), ((5 : GoInt)), false) : T_shouldEscapeTest)),
((new T_shouldEscapeTest((((((";" : GoString))).code : GoRune)), ((5 : GoInt)), false) : T_shouldEscapeTest)),
((new T_shouldEscapeTest(((((("=" : GoString))).code : GoRune)), ((5 : GoInt)), false) : T_shouldEscapeTest)),
((new T_shouldEscapeTest(((((("!" : GoString))).code : GoRune)), ((3 : GoInt)), false) : T_shouldEscapeTest)),
((new T_shouldEscapeTest(((((("$$" : GoString))).code : GoRune)), ((3 : GoInt)), false) : T_shouldEscapeTest)),
((new T_shouldEscapeTest(((((("&" : GoString))).code : GoRune)), ((3 : GoInt)), false) : T_shouldEscapeTest)),
((new T_shouldEscapeTest(((((("\\'" : GoString))).code : GoRune)), ((3 : GoInt)), false) : T_shouldEscapeTest)),
((new T_shouldEscapeTest(((((("(" : GoString))).code : GoRune)), ((3 : GoInt)), false) : T_shouldEscapeTest)),
((new T_shouldEscapeTest((((((")" : GoString))).code : GoRune)), ((3 : GoInt)), false) : T_shouldEscapeTest)),
((new T_shouldEscapeTest(((((("*" : GoString))).code : GoRune)), ((3 : GoInt)), false) : T_shouldEscapeTest)),
((new T_shouldEscapeTest(((((("+" : GoString))).code : GoRune)), ((3 : GoInt)), false) : T_shouldEscapeTest)),
((new T_shouldEscapeTest(((((("," : GoString))).code : GoRune)), ((3 : GoInt)), false) : T_shouldEscapeTest)),
((new T_shouldEscapeTest((((((";" : GoString))).code : GoRune)), ((3 : GoInt)), false) : T_shouldEscapeTest)),
((new T_shouldEscapeTest(((((("=" : GoString))).code : GoRune)), ((3 : GoInt)), false) : T_shouldEscapeTest)),
((new T_shouldEscapeTest((((((":" : GoString))).code : GoRune)), ((3 : GoInt)), false) : T_shouldEscapeTest)),
((new T_shouldEscapeTest(((((("[" : GoString))).code : GoRune)), ((3 : GoInt)), false) : T_shouldEscapeTest)),
((new T_shouldEscapeTest(((((("]" : GoString))).code : GoRune)), ((3 : GoInt)), false) : T_shouldEscapeTest)),
((new T_shouldEscapeTest(((((("0" : GoString))).code : GoRune)), ((3 : GoInt)), false) : T_shouldEscapeTest)),
((new T_shouldEscapeTest(((((("9" : GoString))).code : GoRune)), ((3 : GoInt)), false) : T_shouldEscapeTest)),
((new T_shouldEscapeTest(((((("A" : GoString))).code : GoRune)), ((3 : GoInt)), false) : T_shouldEscapeTest)),
((new T_shouldEscapeTest(((((("z" : GoString))).code : GoRune)), ((3 : GoInt)), false) : T_shouldEscapeTest)),
((new T_shouldEscapeTest(((((("_" : GoString))).code : GoRune)), ((3 : GoInt)), false) : T_shouldEscapeTest)),
((new T_shouldEscapeTest(((((("-" : GoString))).code : GoRune)), ((3 : GoInt)), false) : T_shouldEscapeTest)),
((new T_shouldEscapeTest(((((("." : GoString))).code : GoRune)), ((3 : GoInt)), false) : T_shouldEscapeTest))) : Slice<T_shouldEscapeTest>));
var _netErrorTests : Slice<T__struct_6> = ((new Slice<T__struct_6>(((({ _err : ((new T_error(((("Get" : GoString))), ((("http://google.com/" : GoString))), (({ _timeout : true } : T_timeoutError))) : T_error)), _timeout : true, _temporary : false } : T__struct_6)) == null ? null : (({ _err : ((new T_error(((("Get" : GoString))), ((("http://google.com/" : GoString))), (({ _timeout : true } : T_timeoutError))) : T_error)), _timeout : true, _temporary : false } : T__struct_6)).__copy__()), ((({ _err : ((new T_error(((("Get" : GoString))), ((("http://google.com/" : GoString))), (({ _timeout : false } : T_timeoutError))) : T_error)), _timeout : false, _temporary : false } : T__struct_6)) == null ? null : (({ _err : ((new T_error(((("Get" : GoString))), ((("http://google.com/" : GoString))), (({ _timeout : false } : T_timeoutError))) : T_error)), _timeout : false, _temporary : false } : T__struct_6)).__copy__()), ((({ _err : ((new T_error(((("Get" : GoString))), ((("http://google.com/" : GoString))), (({ _temporary : true } : T_temporaryError))) : T_error)), _timeout : false, _temporary : true } : T__struct_6)) == null ? null : (({ _err : ((new T_error(((("Get" : GoString))), ((("http://google.com/" : GoString))), (({ _temporary : true } : T_temporaryError))) : T_error)), _timeout : false, _temporary : true } : T__struct_6)).__copy__()), ((({ _err : ((new T_error(((("Get" : GoString))), ((("http://google.com/" : GoString))), (({ _temporary : false } : T_temporaryError))) : T_error)), _timeout : false, _temporary : false } : T__struct_6)) == null ? null : (({ _err : ((new T_error(((("Get" : GoString))), ((("http://google.com/" : GoString))), (({ _temporary : false } : T_temporaryError))) : T_error)), _timeout : false, _temporary : false } : T__struct_6)).__copy__()), ((({ _err : ((new T_error(((("Get" : GoString))), ((("http://google.com/" : GoString))), ((new T_timeoutTemporaryError(((({ _timeout : true } : T_timeoutError)) == null ? null : (({ _timeout : true } : T_timeoutError)).__copy__()), ((({ _temporary : true } : T_temporaryError)) == null ? null : (({ _temporary : true } : T_temporaryError)).__copy__())) : T_timeoutTemporaryError))) : T_error)), _timeout : true, _temporary : true } : T__struct_6)) == null ? null : (({ _err : ((new T_error(((("Get" : GoString))), ((("http://google.com/" : GoString))), ((new T_timeoutTemporaryError(((({ _timeout : true } : T_timeoutError)) == null ? null : (({ _timeout : true } : T_timeoutError)).__copy__()), ((({ _temporary : true } : T_temporaryError)) == null ? null : (({ _temporary : true } : T_temporaryError)).__copy__())) : T_timeoutTemporaryError))) : T_error)), _timeout : true, _temporary : true } : T__struct_6)).__copy__()), ((({ _err : ((new T_error(((("Get" : GoString))), ((("http://google.com/" : GoString))), ((new T_timeoutTemporaryError(((({ _timeout : false } : T_timeoutError)) == null ? null : (({ _timeout : false } : T_timeoutError)).__copy__()), ((({ _temporary : true } : T_temporaryError)) == null ? null : (({ _temporary : true } : T_temporaryError)).__copy__())) : T_timeoutTemporaryError))) : T_error)), _timeout : false, _temporary : true } : T__struct_6)) == null ? null : (({ _err : ((new T_error(((("Get" : GoString))), ((("http://google.com/" : GoString))), ((new T_timeoutTemporaryError(((({ _timeout : false } : T_timeoutError)) == null ? null : (({ _timeout : false } : T_timeoutError)).__copy__()), ((({ _temporary : true } : T_temporaryError)) == null ? null : (({ _temporary : true } : T_temporaryError)).__copy__())) : T_timeoutTemporaryError))) : T_error)), _timeout : false, _temporary : true } : T__struct_6)).__copy__()), ((({ _err : ((new T_error(((("Get" : GoString))), ((("http://google.com/" : GoString))), ((new T_timeoutTemporaryError(((({ _timeout : true } : T_timeoutError)) == null ? null : (({ _timeout : true } : T_timeoutError)).__copy__()), ((({ _temporary : false } : T_temporaryError)) == null ? null : (({ _temporary : false } : T_temporaryError)).__copy__())) : T_timeoutTemporaryError))) : T_error)), _timeout : true, _temporary : false } : T__struct_6)) == null ? null : (({ _err : ((new T_error(((("Get" : GoString))), ((("http://google.com/" : GoString))), ((new T_timeoutTemporaryError(((({ _timeout : true } : T_timeoutError)) == null ? null : (({ _timeout : true } : T_timeoutError)).__copy__()), ((({ _temporary : false } : T_temporaryError)) == null ? null : (({ _temporary : false } : T_temporaryError)).__copy__())) : T_timeoutTemporaryError))) : T_error)), _timeout : true, _temporary : false } : T__struct_6)).__copy__()), ((({ _err : ((new T_error(((("Get" : GoString))), ((("http://google.com/" : GoString))), ((new T_timeoutTemporaryError(((({ _timeout : false } : T_timeoutError)) == null ? null : (({ _timeout : false } : T_timeoutError)).__copy__()), ((({ _temporary : false } : T_temporaryError)) == null ? null : (({ _temporary : false } : T_temporaryError)).__copy__())) : T_timeoutTemporaryError))) : T_error)), _timeout : false, _temporary : false } : T__struct_6)) == null ? null : (({ _err : ((new T_error(((("Get" : GoString))), ((("http://google.com/" : GoString))), ((new T_timeoutTemporaryError(((({ _timeout : false } : T_timeoutError)) == null ? null : (({ _timeout : false } : T_timeoutError)).__copy__()), ((({ _temporary : false } : T_temporaryError)) == null ? null : (({ _temporary : false } : T_temporaryError)).__copy__())) : T_timeoutTemporaryError))) : T_error)), _timeout : false, _temporary : false } : T__struct_6)).__copy__()), ((({ _err : ((new T_error(((("Get" : GoString))), ((("http://google.com/" : GoString))), stdgo.io.Io.eof) : T_error)), _timeout : false, _temporary : false } : T__struct_6)) == null ? null : (({ _err : ((new T_error(((("Get" : GoString))), ((("http://google.com/" : GoString))), stdgo.io.Io.eof) : T_error)), _timeout : false, _temporary : false } : T__struct_6)).__copy__())) : Slice<T__struct_6>));
var _escapeBenchmarks : Slice<T__struct_8> = ((new Slice<T__struct_8>(((({ _unescaped : ((("one two" : GoString))), _query : ((("one+two" : GoString))), _path : ((("one%20two" : GoString))) } : T__struct_8)) == null ? null : (({ _unescaped : ((("one two" : GoString))), _query : ((("one+two" : GoString))), _path : ((("one%20two" : GoString))) } : T__struct_8)).__copy__()), ((({ _unescaped : ((("Фотки собак" : GoString))), _query : ((("%D0%A4%D0%BE%D1%82%D0%BA%D0%B8+%D1%81%D0%BE%D0%B1%D0%B0%D0%BA" : GoString))), _path : ((("%D0%A4%D0%BE%D1%82%D0%BA%D0%B8%20%D1%81%D0%BE%D0%B1%D0%B0%D0%BA" : GoString))) } : T__struct_8)) == null ? null : (({ _unescaped : ((("Фотки собак" : GoString))), _query : ((("%D0%A4%D0%BE%D1%82%D0%BA%D0%B8+%D1%81%D0%BE%D0%B1%D0%B0%D0%BA" : GoString))), _path : ((("%D0%A4%D0%BE%D1%82%D0%BA%D0%B8%20%D1%81%D0%BE%D0%B1%D0%B0%D0%BA" : GoString))) } : T__struct_8)).__copy__()), ((({ _unescaped : ((("shortrun(break)shortrun" : GoString))), _query : ((("shortrun%28break%29shortrun" : GoString))), _path : ((("shortrun%28break%29shortrun" : GoString))) } : T__struct_8)) == null ? null : (({ _unescaped : ((("shortrun(break)shortrun" : GoString))), _query : ((("shortrun%28break%29shortrun" : GoString))), _path : ((("shortrun%28break%29shortrun" : GoString))) } : T__struct_8)).__copy__()), ((({ _unescaped : ((("longerrunofcharacters(break)anotherlongerrunofcharacters" : GoString))), _query : ((("longerrunofcharacters%28break%29anotherlongerrunofcharacters" : GoString))), _path : ((("longerrunofcharacters%28break%29anotherlongerrunofcharacters" : GoString))) } : T__struct_8)) == null ? null : (({ _unescaped : ((("longerrunofcharacters(break)anotherlongerrunofcharacters" : GoString))), _query : ((("longerrunofcharacters%28break%29anotherlongerrunofcharacters" : GoString))), _path : ((("longerrunofcharacters%28break%29anotherlongerrunofcharacters" : GoString))) } : T__struct_8)).__copy__()), ((({ _unescaped : stdgo.strings.Strings.repeat(((("padded/with+various%characters?that=need$$some@escaping+paddedsowebreak/256bytes" : GoString))), ((4 : GoInt))), _query : stdgo.strings.Strings.repeat(((("padded%2Fwith%2Bvarious%25characters%3Fthat%3Dneed%24some%40escaping%2Bpaddedsowebreak%2F256bytes" : GoString))), ((4 : GoInt))), _path : stdgo.strings.Strings.repeat(((("padded%2Fwith+various%25characters%3Fthat=need$$some@escaping+paddedsowebreak%2F256bytes" : GoString))), ((4 : GoInt))) } : T__struct_8)) == null ? null : (({ _unescaped : stdgo.strings.Strings.repeat(((("padded/with+various%characters?that=need$$some@escaping+paddedsowebreak/256bytes" : GoString))), ((4 : GoInt))), _query : stdgo.strings.Strings.repeat(((("padded%2Fwith%2Bvarious%25characters%3Fthat%3Dneed%24some%40escaping%2Bpaddedsowebreak%2F256bytes" : GoString))), ((4 : GoInt))), _path : stdgo.strings.Strings.repeat(((("padded%2Fwith+various%25characters%3Fthat=need$$some@escaping+paddedsowebreak%2F256bytes" : GoString))), ((4 : GoInt))) } : T__struct_8)).__copy__())) : Slice<T__struct_8>));
var _2 : stdgo.encoding.Encoding.BinaryMarshaler = ((((null : Ref<URL>)) : URL));
var _3 : stdgo.encoding.Encoding.BinaryUnmarshaler = ((((null : Ref<URL>)) : URL));
@:local typedef T__interface_0 = StructType & {
    public function timeout():Bool;
};
@:local typedef T__interface_1 = StructType & {
    public function temporary():Bool;
};
@:structInit @:using(stdgo.net.url.Url.T_error_static_extension) class T_error {
    @:keep
    public function temporary():Bool {
        var _e = this;
        _e;
        var __tmp__ = try {
            { value : ((((_e.err.__underlying__().value : Dynamic)) : T__interface_1)), ok : true };
        } catch(_) {
            { value : ((null : T__interface_1)), ok : false };
        }, _t = __tmp__.value, _ok = __tmp__.ok;
        return _ok && _t.temporary();
    }
    @:keep
    public function timeout():Bool {
        var _e = this;
        _e;
        var __tmp__ = try {
            { value : ((((_e.err.__underlying__().value : Dynamic)) : T__interface_0)), ok : true };
        } catch(_) {
            { value : ((null : T__interface_0)), ok : false };
        }, _t = __tmp__.value, _ok = __tmp__.ok;
        return _ok && _t.timeout();
    }
    @:keep
    public function error():GoString {
        var _e = this;
        _e;
        return stdgo.fmt.Fmt.sprintf(((("%s %q: %s" : GoString))), Go.toInterface(_e.op), Go.toInterface(_e.url), Go.toInterface(_e.err));
    }
    @:keep
    public function unwrap():Error {
        var _e = this;
        _e;
        return _e.err;
    }
    public var op : GoString = (("" : GoString));
    public var url : GoString = (("" : GoString));
    public var err : stdgo.Error = ((null : stdgo.Error));
    public function new(?op:GoString, ?url:GoString, ?err:stdgo.Error) {
        if (op != null) this.op = op;
        if (url != null) this.url = url;
        if (err != null) this.err = err;
    }
    public function __underlying__():AnyInterface return Go.toInterface(this);
    public function __copy__() {
        return new T_error(op, url, err);
    }
}
@:structInit @:using(stdgo.net.url.Url.URL_static_extension) class URL {
    @:keep
    public function unmarshalBinary(_text:Slice<GoByte>):Error {
        var _u = this;
        _u;
        var __tmp__ = stdgo.net.url.Url.parse(((_text : GoString))), _u1:Ref<URL> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            return _err;
        };
        {
            var __tmp__ = (_u1 == null ? null : _u1.__copy__());
            _u.scheme = __tmp__.scheme;
            _u.opaque = __tmp__.opaque;
            _u.user = __tmp__.user;
            _u.host = __tmp__.host;
            _u.path = __tmp__.path;
            _u.rawPath = __tmp__.rawPath;
            _u.forceQuery = __tmp__.forceQuery;
            _u.rawQuery = __tmp__.rawQuery;
            _u.fragment = __tmp__.fragment;
            _u.rawFragment = __tmp__.rawFragment;
        };
        return ((null : stdgo.Error));
    }
    @:keep
    public function marshalBinary():{ var _0 : Slice<GoByte>; var _1 : Error; } {
        var _u = this;
        _u;
        var _text:Slice<GoByte> = ((null : Slice<GoUInt8>)), _err:Error = ((null : stdgo.Error));
        return { _0 : ((((_u.toString() : GoString)) : Slice<GoByte>)), _1 : ((null : stdgo.Error)) };
    }
    @:keep
    public function port():GoString {
        var _u = this;
        _u;
        var __tmp__ = _splitHostPort(_u.host), _0:GoString = __tmp__._0, _port:GoString = __tmp__._1;
        return _port;
    }
    @:keep
    public function hostname():GoString {
        var _u = this;
        _u;
        var __tmp__ = _splitHostPort(_u.host), _host:GoString = __tmp__._0, _0:GoString = __tmp__._1;
        return _host;
    }
    @:keep
    public function requestURI():GoString {
        var _u = this;
        _u;
        var _result:GoString = _u.opaque;
        if (_result == ((("" : GoString)))) {
            _result = _u.escapedPath();
            if (_result == ((("" : GoString)))) {
                _result = ((("/" : GoString)));
            };
        } else {
            if (stdgo.strings.Strings.hasPrefix(_result, ((("//" : GoString))))) {
                _result = (_u.scheme + (((":" : GoString)))) + _result;
            };
        };
        if (_u.forceQuery || (_u.rawQuery != ((("" : GoString))))) {
            _result = _result + (((("?" : GoString))) + _u.rawQuery);
        };
        return _result;
    }
    @:keep
    public function query():Values {
        var _u = this;
        _u;
        var __tmp__ = parseQuery(_u.rawQuery), _v:Values = __tmp__._0, _0:stdgo.Error = __tmp__._1;
        return _v;
    }
    @:keep
    public function resolveReference(_ref:URL):URL {
        var _u = this;
        _u;
        var _url:URL = (_ref == null ? null : _ref.__copy__());
        if (_ref.scheme == ((("" : GoString)))) {
            _url.scheme = _u.scheme;
        };
        if (((_ref.scheme != ((("" : GoString)))) || (_ref.host != ((("" : GoString))))) || (_ref.user != null)) {
            _url._setPath(_resolvePath(_ref.escapedPath(), ((("" : GoString)))));
            return _url;
        };
        if (_ref.opaque != ((("" : GoString)))) {
            _url.user = null;
            _url.host = ((("" : GoString)));
            _url.path = ((("" : GoString)));
            return _url;
        };
        if (((_ref.path == ((("" : GoString)))) && !_ref.forceQuery) && (_ref.rawQuery == ((("" : GoString))))) {
            _url.rawQuery = _u.rawQuery;
            if (_ref.fragment == ((("" : GoString)))) {
                _url.fragment = _u.fragment;
                _url.rawFragment = _u.rawFragment;
            };
        };
        _url.host = _u.host;
        _url.user = _u.user;
        _url._setPath(_resolvePath(_u.escapedPath(), _ref.escapedPath()));
        return _url;
    }
    @:keep
    public function parse(_ref:GoString):{ var _0 : URL; var _1 : Error; } {
        var _u = this;
        _u;
        var __tmp__ = stdgo.net.url.Url.parse(_ref), _refURL:Ref<URL> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            return { _0 : null, _1 : _err };
        };
        return { _0 : _u.resolveReference(_refURL), _1 : ((null : stdgo.Error)) };
    }
    @:keep
    public function isAbs():Bool {
        var _u = this;
        _u;
        return _u.scheme != ((("" : GoString)));
    }
    @:keep
    public function redacted():GoString {
        var _u = this;
        _u;
        if (_u == null) {
            return ((("" : GoString)));
        };
        var _ru:URL = (_u == null ? null : _u.__copy__());
        {
            var __tmp__ = _ru.user.password(), _0:GoString = __tmp__._0, _has:Bool = __tmp__._1;
            if (_has) {
                _ru.user = userPassword(_ru.user.username(), ((("xxxxx" : GoString))));
            };
        };
        return ((_ru.toString() : GoString));
    }
    @:keep
    public function toString():GoString {
        var _u = this;
        _u;
        var _buf:stdgo.strings.Strings.Builder = new stdgo.strings.Strings.Builder();
        if (_u.scheme != ((("" : GoString)))) {
            _buf.writeString(_u.scheme);
            _buf.writeByte((((((":" : GoString))).code : GoRune)));
        };
        if (_u.opaque != ((("" : GoString)))) {
            _buf.writeString(_u.opaque);
        } else {
            if (((_u.scheme != ((("" : GoString)))) || (_u.host != ((("" : GoString))))) || (_u.user != null)) {
                if (((_u.host != ((("" : GoString)))) || (_u.path != ((("" : GoString))))) || (_u.user != null)) {
                    _buf.writeString(((("//" : GoString))));
                };
                {
                    var _ui:Ref<Userinfo> = _u.user;
                    if (_ui != null) {
                        _buf.writeString(((_ui.toString() : GoString)));
                        _buf.writeByte(((((("@" : GoString))).code : GoRune)));
                    };
                };
                {
                    var _h:GoString = _u.host;
                    if (_h != ((("" : GoString)))) {
                        _buf.writeString(_escape(_h, ((3 : GoInt))));
                    };
                };
            };
            var _path:GoString = _u.escapedPath();
            if (((_path != ((("" : GoString)))) && ((_path != null ? _path[((0 : GoInt))] : ((0 : GoUInt8))) != ((((("/" : GoString))).code : GoRune)))) && (_u.host != ((("" : GoString))))) {
                _buf.writeByte(((((("/" : GoString))).code : GoRune)));
            };
            if (_buf.len() == ((0 : GoInt))) {
                {
                    var __tmp__ = stdgo.strings.Strings.cut(_path, ((("/" : GoString)))), _segment:GoString = __tmp__._0, _0:GoString = __tmp__._1, _1:Bool = __tmp__._2;
                    if (stdgo.strings.Strings.contains(_segment, (((":" : GoString))))) {
                        _buf.writeString(((("./" : GoString))));
                    };
                };
            };
            _buf.writeString(_path);
        };
        if (_u.forceQuery || (_u.rawQuery != ((("" : GoString))))) {
            _buf.writeByte(((((("?" : GoString))).code : GoRune)));
            _buf.writeString(_u.rawQuery);
        };
        if (_u.fragment != ((("" : GoString)))) {
            _buf.writeByte(((((("#" : GoString))).code : GoRune)));
            _buf.writeString(_u.escapedFragment());
        };
        return ((_buf.toString() : GoString));
    }
    @:keep
    public function escapedFragment():GoString {
        var _u = this;
        _u;
        if ((_u.rawFragment != ((("" : GoString)))) && _validEncoded(_u.rawFragment, ((7 : GoInt)))) {
            var __tmp__ = _unescape(_u.rawFragment, ((7 : GoInt))), _f:GoString = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if ((_err == null) && (_f == _u.fragment)) {
                return _u.rawFragment;
            };
        };
        return _escape(_u.fragment, ((7 : GoInt)));
    }
    @:keep
    public function _setFragment(_f:GoString):Error {
        var _u = this;
        _u;
        var __tmp__ = _unescape(_f, ((7 : GoInt))), _frag:GoString = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            return _err;
        };
        _u.fragment = _frag;
        {
            var _escf:GoString = _escape(_frag, ((7 : GoInt)));
            if (_f == _escf) {
                _u.rawFragment = ((("" : GoString)));
            } else {
                _u.rawFragment = _f;
            };
        };
        return ((null : stdgo.Error));
    }
    @:keep
    public function escapedPath():GoString {
        var _u = this;
        _u;
        if ((_u.rawPath != ((("" : GoString)))) && _validEncoded(_u.rawPath, ((1 : GoInt)))) {
            var __tmp__ = _unescape(_u.rawPath, ((1 : GoInt))), _p:GoString = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if ((_err == null) && (_p == _u.path)) {
                return _u.rawPath;
            };
        };
        if (_u.path == ((("*" : GoString)))) {
            return ((("*" : GoString)));
        };
        return _escape(_u.path, ((1 : GoInt)));
    }
    @:keep
    public function _setPath(_p:GoString):Error {
        var _u = this;
        _u;
        var __tmp__ = _unescape(_p, ((1 : GoInt))), _path:GoString = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            return _err;
        };
        _u.path = _path;
        {
            var _escp:GoString = _escape(_path, ((1 : GoInt)));
            if (_p == _escp) {
                _u.rawPath = ((("" : GoString)));
            } else {
                _u.rawPath = _p;
            };
        };
        return ((null : stdgo.Error));
    }
    public var scheme : GoString = (("" : GoString));
    public var opaque : GoString = (("" : GoString));
    public var user : Ref<Userinfo> = ((null : Ref<Userinfo>));
    public var host : GoString = (("" : GoString));
    public var path : GoString = (("" : GoString));
    public var rawPath : GoString = (("" : GoString));
    public var forceQuery : Bool = false;
    public var rawQuery : GoString = (("" : GoString));
    public var fragment : GoString = (("" : GoString));
    public var rawFragment : GoString = (("" : GoString));
    public function new(?scheme:GoString, ?opaque:GoString, ?user:Ref<Userinfo>, ?host:GoString, ?path:GoString, ?rawPath:GoString, ?forceQuery:Bool, ?rawQuery:GoString, ?fragment:GoString, ?rawFragment:GoString) {
        if (scheme != null) this.scheme = scheme;
        if (opaque != null) this.opaque = opaque;
        if (user != null) this.user = user;
        if (host != null) this.host = host;
        if (path != null) this.path = path;
        if (rawPath != null) this.rawPath = rawPath;
        if (forceQuery != null) this.forceQuery = forceQuery;
        if (rawQuery != null) this.rawQuery = rawQuery;
        if (fragment != null) this.fragment = fragment;
        if (rawFragment != null) this.rawFragment = rawFragment;
    }
    public function __underlying__():AnyInterface return Go.toInterface(this);
    public function __copy__() {
        return new URL(scheme, opaque, user, host, path, rawPath, forceQuery, rawQuery, fragment, rawFragment);
    }
}
@:structInit @:using(stdgo.net.url.Url.Userinfo_static_extension) class Userinfo {
    @:keep
    public function toString():GoString {
        var _u = this;
        _u;
        if (_u == null) {
            return ((("" : GoString)));
        };
        var _s:GoString = _escape(_u._username, ((5 : GoInt)));
        if (_u._passwordSet) {
            _s = _s + ((((":" : GoString))) + _escape(_u._password, ((5 : GoInt))));
        };
        return _s;
    }
    @:keep
    public function password():{ var _0 : GoString; var _1 : Bool; } {
        var _u = this;
        _u;
        if (_u == null) {
            return { _0 : ((("" : GoString))), _1 : false };
        };
        return { _0 : _u._password, _1 : _u._passwordSet };
    }
    @:keep
    public function username():GoString {
        var _u = this;
        _u;
        if (_u == null) {
            return ((("" : GoString)));
        };
        return _u._username;
    }
    public var _username : GoString = (("" : GoString));
    public var _password : GoString = (("" : GoString));
    public var _passwordSet : Bool = false;
    public function new(?_username:GoString, ?_password:GoString, ?_passwordSet:Bool) {
        if (_username != null) this._username = _username;
        if (_password != null) this._password = _password;
        if (_passwordSet != null) this._passwordSet = _passwordSet;
    }
    public function __underlying__():AnyInterface return Go.toInterface(this);
    public function __copy__() {
        return new Userinfo(_username, _password, _passwordSet);
    }
}
@:structInit class URLTest {
    public var _in : GoString = (("" : GoString));
    public var _out : Ref<URL> = ((null : Ref<URL>));
    public var _roundtrip : GoString = (("" : GoString));
    public function new(?_in:GoString, ?_out:Ref<URL>, ?_roundtrip:GoString) {
        if (_in != null) this._in = _in;
        if (_out != null) this._out = _out;
        if (_roundtrip != null) this._roundtrip = _roundtrip;
    }
    public function __underlying__():AnyInterface return Go.toInterface(this);
    public function __copy__() {
        return new URLTest(_in, _out, _roundtrip);
    }
}
@:structInit class EscapeTest {
    public var _in : GoString = (("" : GoString));
    public var _out : GoString = (("" : GoString));
    public var _err : stdgo.Error = ((null : stdgo.Error));
    public function new(?_in:GoString, ?_out:GoString, ?_err:stdgo.Error) {
        if (_in != null) this._in = _in;
        if (_out != null) this._out = _out;
        if (_err != null) this._err = _err;
    }
    public function __underlying__():AnyInterface return Go.toInterface(this);
    public function __copy__() {
        return new EscapeTest(_in, _out, _err);
    }
}
@:structInit class EncodeQueryTest {
    public var _m : Values = ((null : Values));
    public var _expected : GoString = (("" : GoString));
    public function new(?_m:Values, ?_expected:GoString) {
        if (_m != null) this._m = _m;
        if (_expected != null) this._expected = _expected;
    }
    public function __underlying__():AnyInterface return Go.toInterface(this);
    public function __copy__() {
        return new EncodeQueryTest(_m, _expected);
    }
}
@:structInit class T_parseTest {
    public var _query : GoString = (("" : GoString));
    public var _out : Values = ((null : Values));
    public var _ok : Bool = false;
    public function new(?_query:GoString, ?_out:Values, ?_ok:Bool) {
        if (_query != null) this._query = _query;
        if (_out != null) this._out = _out;
        if (_ok != null) this._ok = _ok;
    }
    public function __underlying__():AnyInterface return Go.toInterface(this);
    public function __copy__() {
        return new T_parseTest(_query, _out, _ok);
    }
}
@:structInit class RequestURITest {
    public var _url : Ref<URL> = ((null : Ref<URL>));
    public var _out : GoString = (("" : GoString));
    public function new(?_url:Ref<URL>, ?_out:GoString) {
        if (_url != null) this._url = _url;
        if (_out != null) this._out = _out;
    }
    public function __underlying__():AnyInterface return Go.toInterface(this);
    public function __copy__() {
        return new RequestURITest(_url, _out);
    }
}
@:structInit class T_shouldEscapeTest {
    public var _in : GoUInt8 = ((0 : GoUInt8));
    public var _mode : T_encoding = new T_encoding();
    public var _escape : Bool = false;
    public function new(?_in:GoUInt8, ?_mode:T_encoding, ?_escape:Bool) {
        if (_in != null) this._in = _in;
        if (_mode != null) this._mode = _mode;
        if (_escape != null) this._escape = _escape;
    }
    public function __underlying__():AnyInterface return Go.toInterface(this);
    public function __copy__() {
        return new T_shouldEscapeTest(_in, _mode, _escape);
    }
}
@:structInit @:using(stdgo.net.url.Url.T_timeoutError_static_extension) class T_timeoutError {
    @:keep
    public function timeout():Bool {
        var _e = this;
        _e;
        return _e._timeout;
    }
    @:keep
    public function error():GoString {
        var _e = this;
        _e;
        return ((("timeout error" : GoString)));
    }
    public var _timeout : Bool = false;
    public function new(?_timeout:Bool) {
        if (_timeout != null) this._timeout = _timeout;
    }
    public function __underlying__():AnyInterface return Go.toInterface(this);
    public function __copy__() {
        return new T_timeoutError(_timeout);
    }
}
@:structInit @:using(stdgo.net.url.Url.T_temporaryError_static_extension) class T_temporaryError {
    @:keep
    public function temporary():Bool {
        var _e = this;
        _e;
        return _e._temporary;
    }
    @:keep
    public function error():GoString {
        var _e = this;
        _e;
        return ((("temporary error" : GoString)));
    }
    public var _temporary : Bool = false;
    public function new(?_temporary:Bool) {
        if (_temporary != null) this._temporary = _temporary;
    }
    public function __underlying__():AnyInterface return Go.toInterface(this);
    public function __copy__() {
        return new T_temporaryError(_temporary);
    }
}
@:structInit @:using(stdgo.net.url.Url.T_timeoutTemporaryError_static_extension) class T_timeoutTemporaryError {
    @:keep
    public function error():GoString {
        var _e = this;
        _e;
        return ((("timeout/temporary error" : GoString)));
    }
    @:embedded
    public var _timeoutError : T_timeoutError = new T_timeoutError();
    @:embedded
    public var _temporaryError : T_temporaryError = new T_temporaryError();
    public function new(?_timeoutError:T_timeoutError, ?_temporaryError:T_temporaryError) {
        if (_timeoutError != null) this._timeoutError = _timeoutError;
        if (_temporaryError != null) this._temporaryError = _temporaryError;
    }
    public function temporary():Bool return _temporaryError.temporary();
    public function timeout():Bool return _timeoutError.timeout();
    public function __underlying__():AnyInterface return Go.toInterface(this);
    public function __copy__() {
        return new T_timeoutTemporaryError(_timeoutError, _temporaryError);
    }
}
@:structInit @:local class T__struct_0 {
    public var _url : GoString = (("" : GoString));
    public var _expectedValid : Bool = false;
    public function toString():String return "{" + Go.string(_url) + " " + Go.string(_expectedValid) + "}";
    public function new(?_url:GoString, ?_expectedValid:Bool, ?toString) {
        if (_url != null) this._url = _url;
        if (_expectedValid != null) this._expectedValid = _expectedValid;
    }
    public function __underlying__():AnyInterface return Go.toInterface(this);
    public function __copy__() {
        return new T__struct_0(_url, _expectedValid);
    }
}
@:structInit @:local class T__struct_1 {
    public var _url : URL = new URL();
    public var _want : GoString = (("" : GoString));
    public function toString():String return "{" + Go.string(_url) + " " + Go.string(_want) + "}";
    public function new(?_url:URL, ?_want:GoString, ?toString) {
        if (_url != null) this._url = _url;
        if (_want != null) this._want = _want;
    }
    public function __underlying__():AnyInterface return Go.toInterface(this);
    public function __copy__() {
        return new T__struct_1(_url, _want);
    }
}
@:structInit @:local class T__struct_2 {
    public var _name : GoString = (("" : GoString));
    public var _url : Ref<URL> = ((null : Ref<URL>));
    public var _want : GoString = (("" : GoString));
    public function toString():String return "{" + Go.string(_name) + " " + Go.string(_url) + " " + Go.string(_want) + "}";
    public function new(?_name:GoString, ?_url:Ref<URL>, ?_want:GoString, ?toString) {
        if (_name != null) this._name = _name;
        if (_url != null) this._url = _url;
        if (_want != null) this._want = _want;
    }
    public function __underlying__():AnyInterface return Go.toInterface(this);
    public function __copy__() {
        return new T__struct_2(_name, _url, _want);
    }
}
@:structInit @:local class T__struct_3 {
    public var _base : GoString = (("" : GoString));
    public var _ref : GoString = (("" : GoString));
    public var _expected : GoString = (("" : GoString));
    public function toString():String return "{" + Go.string(_base) + " " + Go.string(_ref) + " " + Go.string(_expected) + "}";
    public function new(?_base:GoString, ?_ref:GoString, ?_expected:GoString, ?toString) {
        if (_base != null) this._base = _base;
        if (_ref != null) this._ref = _ref;
        if (_expected != null) this._expected = _expected;
    }
    public function __underlying__():AnyInterface return Go.toInterface(this);
    public function __copy__() {
        return new T__struct_3(_base, _ref, _expected);
    }
}
@:structInit @:local class T__struct_4 {
    public var _base : GoString = (("" : GoString));
    public var _rel : GoString = (("" : GoString));
    public var _expected : GoString = (("" : GoString));
    public function toString():String return "{" + Go.string(_base) + " " + Go.string(_rel) + " " + Go.string(_expected) + "}";
    public function new(?_base:GoString, ?_rel:GoString, ?_expected:GoString, ?toString) {
        if (_base != null) this._base = _base;
        if (_rel != null) this._rel = _rel;
        if (_expected != null) this._expected = _expected;
    }
    public function __underlying__():AnyInterface return Go.toInterface(this);
    public function __copy__() {
        return new T__struct_4(_base, _rel, _expected);
    }
}
@:structInit @:local class T__struct_5 {
    public var _in : GoString = (("" : GoString));
    public var _wantErr : Bool = false;
    public function toString():String return "{" + Go.string(_in) + " " + Go.string(_wantErr) + "}";
    public function new(?_in:GoString, ?_wantErr:Bool, ?toString) {
        if (_in != null) this._in = _in;
        if (_wantErr != null) this._wantErr = _wantErr;
    }
    public function __underlying__():AnyInterface return Go.toInterface(this);
    public function __copy__() {
        return new T__struct_5(_in, _wantErr);
    }
}
@:structInit @:local class T__struct_6 {
    public var _err : stdgo.Error = ((null : stdgo.Error));
    public var _timeout : Bool = false;
    public var _temporary : Bool = false;
    public function toString():String return "{" + Go.string(_err) + " " + Go.string(_timeout) + " " + Go.string(_temporary) + "}";
    public function new(?_err:stdgo.Error, ?_timeout:Bool, ?_temporary:Bool, ?toString) {
        if (_err != null) this._err = _err;
        if (_timeout != null) this._timeout = _timeout;
        if (_temporary != null) this._temporary = _temporary;
    }
    public function __underlying__():AnyInterface return Go.toInterface(this);
    public function __copy__() {
        return new T__struct_6(_err, _timeout, _temporary);
    }
}
@:structInit @:local class T__struct_7 {
    public var _in : GoString = (("" : GoString));
    public var _host : GoString = (("" : GoString));
    public var _port : GoString = (("" : GoString));
    public function toString():String return "{" + Go.string(_in) + " " + Go.string(_host) + " " + Go.string(_port) + "}";
    public function new(?_in:GoString, ?_host:GoString, ?_port:GoString, ?toString) {
        if (_in != null) this._in = _in;
        if (_host != null) this._host = _host;
        if (_port != null) this._port = _port;
    }
    public function __underlying__():AnyInterface return Go.toInterface(this);
    public function __copy__() {
        return new T__struct_7(_in, _host, _port);
    }
}
@:structInit @:local class T__struct_8 {
    public var _unescaped : GoString = (("" : GoString));
    public var _query : GoString = (("" : GoString));
    public var _path : GoString = (("" : GoString));
    public function toString():String return "{" + Go.string(_unescaped) + " " + Go.string(_query) + " " + Go.string(_path) + "}";
    public function new(?_unescaped:GoString, ?_query:GoString, ?_path:GoString, ?toString) {
        if (_unescaped != null) this._unescaped = _unescaped;
        if (_query != null) this._query = _query;
        if (_path != null) this._path = _path;
    }
    public function __underlying__():AnyInterface return Go.toInterface(this);
    public function __copy__() {
        return new T__struct_8(_unescaped, _query, _path);
    }
}
@:named typedef T_encoding = GoInt;
@:named @:using(stdgo.net.url.Url.EscapeError_static_extension) typedef EscapeError = GoString;
@:named @:using(stdgo.net.url.Url.InvalidHostError_static_extension) typedef InvalidHostError = GoString;
@:named @:using(stdgo.net.url.Url.Values_static_extension) typedef Values = GoMap<GoString, Slice<GoString>>;
function _ishex(_c:GoByte):Bool {
        if ((((((("0" : GoString))).code : GoRune)) <= _c) && (_c <= ((((("9" : GoString))).code : GoRune)))) {
            return true;
        } else if ((((((("a" : GoString))).code : GoRune)) <= _c) && (_c <= ((((("f" : GoString))).code : GoRune)))) {
            return true;
        } else if ((((((("A" : GoString))).code : GoRune)) <= _c) && (_c <= ((((("F" : GoString))).code : GoRune)))) {
            return true;
        };
        return false;
    }
function _unhex(_c:GoByte):GoByte {
        if ((((((("0" : GoString))).code : GoRune)) <= _c) && (_c <= ((((("9" : GoString))).code : GoRune)))) {
            return _c - ((((("0" : GoString))).code : GoRune));
        } else if ((((((("a" : GoString))).code : GoRune)) <= _c) && (_c <= ((((("f" : GoString))).code : GoRune)))) {
            return (_c - ((((("a" : GoString))).code : GoRune))) + ((10 : GoUInt8));
        } else if ((((((("A" : GoString))).code : GoRune)) <= _c) && (_c <= ((((("F" : GoString))).code : GoRune)))) {
            return (_c - ((((("A" : GoString))).code : GoRune))) + ((10 : GoUInt8));
        };
        return ((0 : GoUInt8));
    }
function _shouldEscape(_c:GoByte, _mode:T_encoding):Bool {
        if ((((((((("a" : GoString))).code : GoRune)) <= _c) && (_c <= ((((("z" : GoString))).code : GoRune)))) || ((((((("A" : GoString))).code : GoRune)) <= _c) && (_c <= ((((("Z" : GoString))).code : GoRune))))) || ((((((("0" : GoString))).code : GoRune)) <= _c) && (_c <= ((((("9" : GoString))).code : GoRune))))) {
            return false;
        };
        if ((_mode == ((3 : GoInt))) || (_mode == ((4 : GoInt)))) {
            if (_c == ((((("!" : GoString))).code : GoRune)) || _c == ((((("$$" : GoString))).code : GoRune)) || _c == ((((("&" : GoString))).code : GoRune)) || _c == ((((("\\'" : GoString))).code : GoRune)) || _c == ((((("(" : GoString))).code : GoRune)) || _c == (((((")" : GoString))).code : GoRune)) || _c == ((((("*" : GoString))).code : GoRune)) || _c == ((((("+" : GoString))).code : GoRune)) || _c == ((((("," : GoString))).code : GoRune)) || _c == (((((";" : GoString))).code : GoRune)) || _c == ((((("=" : GoString))).code : GoRune)) || _c == (((((":" : GoString))).code : GoRune)) || _c == ((((("[" : GoString))).code : GoRune)) || _c == ((((("]" : GoString))).code : GoRune)) || _c == ((((("<" : GoString))).code : GoRune)) || _c == (((((">" : GoString))).code : GoRune)) || _c == ((((("\"" : GoString))).code : GoRune))) {
                return false;
            };
        };
        if (_c == ((((("-" : GoString))).code : GoRune)) || _c == ((((("_" : GoString))).code : GoRune)) || _c == ((((("." : GoString))).code : GoRune)) || _c == ((((("~" : GoString))).code : GoRune))) {
            return false;
        } else if (_c == ((((("$$" : GoString))).code : GoRune)) || _c == ((((("&" : GoString))).code : GoRune)) || _c == ((((("+" : GoString))).code : GoRune)) || _c == ((((("," : GoString))).code : GoRune)) || _c == ((((("/" : GoString))).code : GoRune)) || _c == (((((":" : GoString))).code : GoRune)) || _c == (((((";" : GoString))).code : GoRune)) || _c == ((((("=" : GoString))).code : GoRune)) || _c == ((((("?" : GoString))).code : GoRune)) || _c == ((((("@" : GoString))).code : GoRune))) {
            if (_mode == ((1 : GoInt))) {
                return _c == ((((("?" : GoString))).code : GoRune));
            } else if (_mode == ((2 : GoInt))) {
                return (((_c == ((((("/" : GoString))).code : GoRune))) || (_c == (((((";" : GoString))).code : GoRune)))) || (_c == ((((("," : GoString))).code : GoRune)))) || (_c == ((((("?" : GoString))).code : GoRune)));
            } else if (_mode == ((5 : GoInt))) {
                return (((_c == ((((("@" : GoString))).code : GoRune))) || (_c == ((((("/" : GoString))).code : GoRune)))) || (_c == ((((("?" : GoString))).code : GoRune)))) || (_c == (((((":" : GoString))).code : GoRune)));
            } else if (_mode == ((6 : GoInt))) {
                return true;
            } else if (_mode == ((7 : GoInt))) {
                return false;
            };
        };
        if (_mode == ((7 : GoInt))) {
            if (_c == ((((("!" : GoString))).code : GoRune)) || _c == ((((("(" : GoString))).code : GoRune)) || _c == (((((")" : GoString))).code : GoRune)) || _c == ((((("*" : GoString))).code : GoRune))) {
                return false;
            };
        };
        return true;
    }
function queryUnescape(_s:GoString):{ var _0 : GoString; var _1 : Error; } {
        return _unescape(_s, ((6 : GoInt)));
    }
function pathUnescape(_s:GoString):{ var _0 : GoString; var _1 : Error; } {
        return _unescape(_s, ((2 : GoInt)));
    }
function _unescape(_s:GoString, _mode:T_encoding):{ var _0 : GoString; var _1 : Error; } {
        var _n:GoInt = ((0 : GoInt));
        var _hasPlus:Bool = false;
        {
            var _i:GoInt = ((0 : GoInt));
            while (_i < (_s != null ? _s.length : ((0 : GoInt)))) {
                if ((_s != null ? _s[_i] : ((0 : GoUInt8))) == ((((("%" : GoString))).code : GoRune))) {
                    _n++;
                    if ((((_i + ((2 : GoInt))) >= (_s != null ? _s.length : ((0 : GoInt)))) || !_ishex((_s != null ? _s[_i + ((1 : GoInt))] : ((0 : GoUInt8))))) || !_ishex((_s != null ? _s[_i + ((2 : GoInt))] : ((0 : GoUInt8))))) {
                        _s = ((_s.__slice__(_i) : GoString));
                        if ((_s != null ? _s.length : ((0 : GoInt))) > ((3 : GoInt))) {
                            _s = ((_s.__slice__(0, ((3 : GoInt))) : GoString));
                        };
                        return { _0 : ((("" : GoString))), _1 : new EscapeError_wrapper(Go.pointer(((_s : EscapeError)))) };
                    };
                    if (((_mode == ((3 : GoInt))) && (_unhex((_s != null ? _s[_i + ((1 : GoInt))] : ((0 : GoUInt8)))) < ((8 : GoUInt8)))) && (((_s.__slice__(_i, _i + ((3 : GoInt))) : GoString)) != ((("%25" : GoString))))) {
                        return { _0 : ((("" : GoString))), _1 : new EscapeError_wrapper(Go.pointer(((((_s.__slice__(_i, _i + ((3 : GoInt))) : GoString)) : EscapeError)))) };
                    };
                    if (_mode == ((4 : GoInt))) {
                        var _v:GoUInt8 = (_unhex((_s != null ? _s[_i + ((1 : GoInt))] : ((0 : GoUInt8)))) << ((4 : GoUnTypedInt))) | _unhex((_s != null ? _s[_i + ((2 : GoInt))] : ((0 : GoUInt8))));
                        if (((((_s.__slice__(_i, _i + ((3 : GoInt))) : GoString)) != ((("%25" : GoString)))) && (_v != (((((" " : GoString))).code : GoRune)))) && _shouldEscape(_v, ((3 : GoInt)))) {
                            return { _0 : ((("" : GoString))), _1 : new EscapeError_wrapper(Go.pointer(((((_s.__slice__(_i, _i + ((3 : GoInt))) : GoString)) : EscapeError)))) };
                        };
                    };
                    _i = _i + (((3 : GoInt)));
                } else if ((_s != null ? _s[_i] : ((0 : GoUInt8))) == ((((("+" : GoString))).code : GoRune))) {
                    _hasPlus = _mode == ((6 : GoInt));
                    _i++;
                } else {
                    if ((((_mode == ((3 : GoInt))) || (_mode == ((4 : GoInt)))) && ((_s != null ? _s[_i] : ((0 : GoUInt8))) < ((128 : GoUInt8)))) && _shouldEscape((_s != null ? _s[_i] : ((0 : GoUInt8))), _mode)) {
                        return { _0 : ((("" : GoString))), _1 : new InvalidHostError_wrapper(Go.pointer(((((_s.__slice__(_i, _i + ((1 : GoInt))) : GoString)) : InvalidHostError)))) };
                    };
                    _i++;
                };
            };
        };
        if ((_n == ((0 : GoInt))) && !_hasPlus) {
            return { _0 : _s, _1 : ((null : stdgo.Error)) };
        };
        var _t:stdgo.strings.Strings.Builder = new stdgo.strings.Strings.Builder();
        _t.grow((_s != null ? _s.length : ((0 : GoInt))) - (((2 : GoInt)) * _n));
        {
            var _i:GoInt = ((0 : GoInt));
            Go.cfor(_i < (_s != null ? _s.length : ((0 : GoInt))), _i++, {
                if ((_s != null ? _s[_i] : ((0 : GoUInt8))) == ((((("%" : GoString))).code : GoRune))) {
                    _t.writeByte((_unhex((_s != null ? _s[_i + ((1 : GoInt))] : ((0 : GoUInt8)))) << ((4 : GoUnTypedInt))) | _unhex((_s != null ? _s[_i + ((2 : GoInt))] : ((0 : GoUInt8)))));
                    _i = _i + (((2 : GoInt)));
                } else if ((_s != null ? _s[_i] : ((0 : GoUInt8))) == ((((("+" : GoString))).code : GoRune))) {
                    if (_mode == ((6 : GoInt))) {
                        _t.writeByte((((((" " : GoString))).code : GoRune)));
                    } else {
                        _t.writeByte(((((("+" : GoString))).code : GoRune)));
                    };
                } else {
                    _t.writeByte((_s != null ? _s[_i] : ((0 : GoUInt8))));
                };
            });
        };
        return { _0 : ((_t.toString() : GoString)), _1 : ((null : stdgo.Error)) };
    }
function queryEscape(_s:GoString):GoString {
        return _escape(_s, ((6 : GoInt)));
    }
function pathEscape(_s:GoString):GoString {
        return _escape(_s, ((2 : GoInt)));
    }
function _escape(_s:GoString, _mode:T_encoding):GoString {
        var _spaceCount:GoInt = ((0 : GoInt)), _hexCount:GoInt = ((0 : GoInt));
        {
            var _i:GoInt = ((0 : GoInt));
            Go.cfor(_i < (_s != null ? _s.length : ((0 : GoInt))), _i++, {
                var _c:GoUInt8 = (_s != null ? _s[_i] : ((0 : GoUInt8)));
                if (_shouldEscape(_c, _mode)) {
                    if ((_c == (((((" " : GoString))).code : GoRune))) && (_mode == ((6 : GoInt)))) {
                        _spaceCount++;
                    } else {
                        _hexCount++;
                    };
                };
            });
        };
        if ((_spaceCount == ((0 : GoInt))) && (_hexCount == ((0 : GoInt)))) {
            return _s;
        };
        var _buf:GoArray<GoByte> = new GoArray<GoUInt8>(...[for (i in 0 ... 64) ((0 : GoUInt8))]);
        var _t:Slice<GoByte> = ((null : Slice<GoUInt8>));
        var _required:GoInt = (_s != null ? _s.length : ((0 : GoInt))) + (((2 : GoInt)) * _hexCount);
        if (_required <= (_buf != null ? _buf.length : ((0 : GoInt)))) {
            _t = ((_buf.__slice__(0, _required) : Slice<GoUInt8>));
        } else {
            _t = new Slice<GoUInt8>(...[for (i in 0 ... ((_required : GoInt)).toBasic()) ((0 : GoUInt8))]);
        };
        if (_hexCount == ((0 : GoInt))) {
            Go.copySlice(_t, _s);
            {
                var _i:GoInt = ((0 : GoInt));
                Go.cfor(_i < (_s != null ? _s.length : ((0 : GoInt))), _i++, {
                    if ((_s != null ? _s[_i] : ((0 : GoUInt8))) == (((((" " : GoString))).code : GoRune))) {
                        if (_t != null) _t[_i] = ((((("+" : GoString))).code : GoRune));
                    };
                });
            };
            return ((_t : GoString));
        };
        var _j:GoInt = ((0 : GoInt));
        {
            var _i:GoInt = ((0 : GoInt));
            Go.cfor(_i < (_s != null ? _s.length : ((0 : GoInt))), _i++, {
                {
                    var _c:GoUInt8 = (_s != null ? _s[_i] : ((0 : GoUInt8)));
                    if ((_c == (((((" " : GoString))).code : GoRune))) && (_mode == ((6 : GoInt)))) {
                        if (_t != null) _t[_j] = ((((("+" : GoString))).code : GoRune));
                        _j++;
                    } else if (_shouldEscape(_c, _mode)) {
                        if (_t != null) _t[_j] = ((((("%" : GoString))).code : GoRune));
                        if (_t != null) _t[_j + ((1 : GoInt))] = (((("0123456789ABCDEF" : GoString))) != null ? ((("0123456789ABCDEF" : GoString)))[_c >> ((4 : GoUnTypedInt))] : ((0 : GoUInt8)));
                        if (_t != null) _t[_j + ((2 : GoInt))] = (((("0123456789ABCDEF" : GoString))) != null ? ((("0123456789ABCDEF" : GoString)))[_c & ((15 : GoUInt8))] : ((0 : GoUInt8)));
                        _j = _j + (((3 : GoInt)));
                    } else {
                        if (_t != null) _t[_j] = (_s != null ? _s[_i] : ((0 : GoUInt8)));
                        _j++;
                    };
                };
            });
        };
        return ((_t : GoString));
    }
function user(_username:GoString):Userinfo {
        return ((new Userinfo(_username, ((("" : GoString))), false) : Userinfo));
    }
function userPassword(_username:GoString, _password:GoString):Userinfo {
        return ((new Userinfo(_username, _password, true) : Userinfo));
    }
function _getScheme(_rawURL:GoString):{ var _0 : GoString; var _1 : GoString; var _2 : Error; } {
        var _scheme:GoString = (("" : GoString)), _path:GoString = (("" : GoString)), _err:Error = ((null : stdgo.Error));
        {
            var _i:GoInt = ((0 : GoInt));
            Go.cfor(_i < (_rawURL != null ? _rawURL.length : ((0 : GoInt))), _i++, {
                var _c:GoUInt8 = (_rawURL != null ? _rawURL[_i] : ((0 : GoUInt8)));
                if (((((((("a" : GoString))).code : GoRune)) <= _c) && (_c <= ((((("z" : GoString))).code : GoRune)))) || ((((((("A" : GoString))).code : GoRune)) <= _c) && (_c <= ((((("Z" : GoString))).code : GoRune))))) {} else if (((((((((("0" : GoString))).code : GoRune)) <= _c) && (_c <= ((((("9" : GoString))).code : GoRune)))) || (_c == ((((("+" : GoString))).code : GoRune)))) || (_c == ((((("-" : GoString))).code : GoRune)))) || (_c == ((((("." : GoString))).code : GoRune)))) {
                    if (_i == ((0 : GoInt))) {
                        return { _0 : ((("" : GoString))), _1 : _rawURL, _2 : ((null : stdgo.Error)) };
                    };
                } else if (_c == (((((":" : GoString))).code : GoRune))) {
                    if (_i == ((0 : GoInt))) {
                        return { _0 : ((("" : GoString))), _1 : ((("" : GoString))), _2 : stdgo.errors.Errors.new_(((("missing protocol scheme" : GoString)))) };
                    };
                    return { _0 : ((_rawURL.__slice__(0, _i) : GoString)), _1 : ((_rawURL.__slice__(_i + ((1 : GoInt))) : GoString)), _2 : ((null : stdgo.Error)) };
                } else {
                    return { _0 : ((("" : GoString))), _1 : _rawURL, _2 : ((null : stdgo.Error)) };
                };
            });
        };
        return { _0 : ((("" : GoString))), _1 : _rawURL, _2 : ((null : stdgo.Error)) };
    }
function parse(_rawURL:GoString):{ var _0 : URL; var _1 : Error; } {
        var __tmp__ = stdgo.strings.Strings.cut(_rawURL, ((("#" : GoString)))), _u:GoString = __tmp__._0, _frag:GoString = __tmp__._1, _0:Bool = __tmp__._2;
        var __tmp__ = _parse(_u, false), _url:Ref<URL> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            return { _0 : null, _1 : ((new T_error(((("parse" : GoString))), _u, _err) : T_error)) };
        };
        if (_frag == ((("" : GoString)))) {
            return { _0 : _url, _1 : ((null : stdgo.Error)) };
        };
        {
            _err = _url._setFragment(_frag);
            if (_err != null) {
                return { _0 : null, _1 : ((new T_error(((("parse" : GoString))), _rawURL, _err) : T_error)) };
            };
        };
        return { _0 : _url, _1 : ((null : stdgo.Error)) };
    }
function parseRequestURI(_rawURL:GoString):{ var _0 : URL; var _1 : Error; } {
        var __tmp__ = _parse(_rawURL, true), _url:Ref<URL> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            return { _0 : null, _1 : ((new T_error(((("parse" : GoString))), _rawURL, _err) : T_error)) };
        };
        return { _0 : _url, _1 : ((null : stdgo.Error)) };
    }
function _parse(_rawURL:GoString, _viaRequest:Bool):{ var _0 : URL; var _1 : Error; } {
        var _rest:GoString = (("" : GoString));
        var _err:Error = ((null : stdgo.Error));
        if (_stringContainsCTLByte(_rawURL)) {
            return { _0 : null, _1 : stdgo.errors.Errors.new_(((("net/url: invalid control character in URL" : GoString)))) };
        };
        if ((_rawURL == ((("" : GoString)))) && _viaRequest) {
            return { _0 : null, _1 : stdgo.errors.Errors.new_(((("empty url" : GoString)))) };
        };
        var _url:Ref<URL> = new URL();
        if (_rawURL == ((("*" : GoString)))) {
            _url.path = ((("*" : GoString)));
            return { _0 : _url, _1 : ((null : stdgo.Error)) };
        };
        {
            {
                var __tmp__ = _getScheme(_rawURL);
                _url.scheme = __tmp__._0;
                _rest = __tmp__._1;
                _err = __tmp__._2;
            };
            if (_err != null) {
                return { _0 : null, _1 : _err };
            };
        };
        _url.scheme = stdgo.strings.Strings.toLower(_url.scheme);
        if (stdgo.strings.Strings.hasSuffix(_rest, ((("?" : GoString)))) && (stdgo.strings.Strings.count(_rest, ((("?" : GoString)))) == ((1 : GoInt)))) {
            _url.forceQuery = true;
            _rest = ((_rest.__slice__(0, (_rest != null ? _rest.length : ((0 : GoInt))) - ((1 : GoInt))) : GoString));
        } else {
            {
                var __tmp__ = stdgo.strings.Strings.cut(_rest, ((("?" : GoString))));
                _rest = __tmp__._0;
                _url.rawQuery = __tmp__._1;
            };
        };
        if (!stdgo.strings.Strings.hasPrefix(_rest, ((("/" : GoString))))) {
            if (_url.scheme != ((("" : GoString)))) {
                _url.opaque = _rest;
                return { _0 : _url, _1 : ((null : stdgo.Error)) };
            };
            if (_viaRequest) {
                return { _0 : null, _1 : stdgo.errors.Errors.new_(((("invalid URI for request" : GoString)))) };
            };
            {
                var __tmp__ = stdgo.strings.Strings.cut(_rest, ((("/" : GoString)))), _segment:GoString = __tmp__._0, _0:GoString = __tmp__._1, _1:Bool = __tmp__._2;
                if (stdgo.strings.Strings.contains(_segment, (((":" : GoString))))) {
                    return { _0 : null, _1 : stdgo.errors.Errors.new_(((("first path segment in URL cannot contain colon" : GoString)))) };
                };
            };
        };
        if (((_url.scheme != ((("" : GoString)))) || (!_viaRequest && !stdgo.strings.Strings.hasPrefix(_rest, ((("///" : GoString)))))) && stdgo.strings.Strings.hasPrefix(_rest, ((("//" : GoString))))) {
            var _authority:GoString = (("" : GoString));
            {
                final __tmp__0 = ((_rest.__slice__(((2 : GoInt))) : GoString));
                final __tmp__1 = ((("" : GoString)));
                _authority = __tmp__0;
                _rest = __tmp__1;
            };
            {
                var _i:GoInt = stdgo.strings.Strings.index(_authority, ((("/" : GoString))));
                if (_i >= ((0 : GoInt))) {
                    {
                        final __tmp__0 = ((_authority.__slice__(0, _i) : GoString));
                        final __tmp__1 = ((_authority.__slice__(_i) : GoString));
                        _authority = __tmp__0;
                        _rest = __tmp__1;
                    };
                };
            };
            {
                var __tmp__ = _parseAuthority(_authority);
                _url.user = __tmp__._0;
                _url.host = __tmp__._1;
                _err = __tmp__._2;
            };
            if (_err != null) {
                return { _0 : null, _1 : _err };
            };
        };
        {
            var _err:stdgo.Error = _url._setPath(_rest);
            if (_err != null) {
                return { _0 : null, _1 : _err };
            };
        };
        return { _0 : _url, _1 : ((null : stdgo.Error)) };
    }
function _parseAuthority(_authority:GoString):{ var _0 : Userinfo; var _1 : GoString; var _2 : Error; } {
        var _user:Userinfo = ((null : Ref<Userinfo>)), _host:GoString = (("" : GoString)), _err:Error = ((null : stdgo.Error));
        var _i:GoInt = stdgo.strings.Strings.lastIndex(_authority, ((("@" : GoString))));
        if (_i < ((0 : GoInt))) {
            {
                var __tmp__ = _parseHost(_authority);
                _host = __tmp__._0;
                _err = __tmp__._1;
            };
        } else {
            {
                var __tmp__ = _parseHost(((_authority.__slice__(_i + ((1 : GoInt))) : GoString)));
                _host = __tmp__._0;
                _err = __tmp__._1;
            };
        };
        if (_err != null) {
            return { _0 : null, _1 : ((("" : GoString))), _2 : _err };
        };
        if (_i < ((0 : GoInt))) {
            return { _0 : null, _1 : _host, _2 : ((null : stdgo.Error)) };
        };
        var _userinfo:GoString = ((_authority.__slice__(0, _i) : GoString));
        if (!_validUserinfo(_userinfo)) {
            return { _0 : null, _1 : ((("" : GoString))), _2 : stdgo.errors.Errors.new_(((("net/url: invalid userinfo" : GoString)))) };
        };
        if (!stdgo.strings.Strings.contains(_userinfo, (((":" : GoString))))) {
            {
                {
                    var __tmp__ = _unescape(_userinfo, ((5 : GoInt)));
                    _userinfo = __tmp__._0;
                    _err = __tmp__._1;
                };
                if (_err != null) {
                    return { _0 : null, _1 : ((("" : GoString))), _2 : _err };
                };
            };
            _user = user(_userinfo);
        } else {
            var __tmp__ = stdgo.strings.Strings.cut(_userinfo, (((":" : GoString)))), _username:GoString = __tmp__._0, _password:GoString = __tmp__._1, _0:Bool = __tmp__._2;
            {
                {
                    var __tmp__ = _unescape(_username, ((5 : GoInt)));
                    _username = __tmp__._0;
                    _err = __tmp__._1;
                };
                if (_err != null) {
                    return { _0 : null, _1 : ((("" : GoString))), _2 : _err };
                };
            };
            {
                {
                    var __tmp__ = _unescape(_password, ((5 : GoInt)));
                    _password = __tmp__._0;
                    _err = __tmp__._1;
                };
                if (_err != null) {
                    return { _0 : null, _1 : ((("" : GoString))), _2 : _err };
                };
            };
            _user = userPassword(_username, _password);
        };
        return { _0 : _user, _1 : _host, _2 : ((null : stdgo.Error)) };
    }
function _parseHost(_host:GoString):{ var _0 : GoString; var _1 : Error; } {
        if (stdgo.strings.Strings.hasPrefix(_host, ((("[" : GoString))))) {
            var _i:GoInt = stdgo.strings.Strings.lastIndex(_host, ((("]" : GoString))));
            if (_i < ((0 : GoInt))) {
                return { _0 : ((("" : GoString))), _1 : stdgo.errors.Errors.new_(((("missing \']\' in host" : GoString)))) };
            };
            var _colonPort:GoString = ((_host.__slice__(_i + ((1 : GoInt))) : GoString));
            if (!_validOptionalPort(_colonPort)) {
                return { _0 : ((("" : GoString))), _1 : stdgo.fmt.Fmt.errorf(((("invalid port %q after host" : GoString))), Go.toInterface(_colonPort)) };
            };
            var _zone:GoInt = stdgo.strings.Strings.index(((_host.__slice__(0, _i) : GoString)), ((("%25" : GoString))));
            if (_zone >= ((0 : GoInt))) {
                var __tmp__ = _unescape(((_host.__slice__(0, _zone) : GoString)), ((3 : GoInt))), _host1:GoString = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                if (_err != null) {
                    return { _0 : ((("" : GoString))), _1 : _err };
                };
                var __tmp__ = _unescape(((_host.__slice__(_zone, _i) : GoString)), ((4 : GoInt))), _host2:GoString = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                if (_err != null) {
                    return { _0 : ((("" : GoString))), _1 : _err };
                };
                var __tmp__ = _unescape(((_host.__slice__(_i) : GoString)), ((3 : GoInt))), _host3:GoString = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                if (_err != null) {
                    return { _0 : ((("" : GoString))), _1 : _err };
                };
                return { _0 : (_host1 + _host2) + _host3, _1 : ((null : stdgo.Error)) };
            };
        } else {
            var _i:GoInt = stdgo.strings.Strings.lastIndex(_host, (((":" : GoString))));
            if (_i != ((-1 : GoInt))) {
                var _colonPort:GoString = ((_host.__slice__(_i) : GoString));
                if (!_validOptionalPort(_colonPort)) {
                    return { _0 : ((("" : GoString))), _1 : stdgo.fmt.Fmt.errorf(((("invalid port %q after host" : GoString))), Go.toInterface(_colonPort)) };
                };
            };
        };
        var _err:Error = ((null : stdgo.Error));
        {
            {
                var __tmp__ = _unescape(_host, ((3 : GoInt)));
                _host = __tmp__._0;
                _err = __tmp__._1;
            };
            if (_err != null) {
                return { _0 : ((("" : GoString))), _1 : _err };
            };
        };
        return { _0 : _host, _1 : ((null : stdgo.Error)) };
    }
function _validEncoded(_s:GoString, _mode:T_encoding):Bool {
        {
            var _i:GoInt = ((0 : GoInt));
            Go.cfor(_i < (_s != null ? _s.length : ((0 : GoInt))), _i++, {
                if ((_s != null ? _s[_i] : ((0 : GoUInt8))) == ((((("!" : GoString))).code : GoRune)) || (_s != null ? _s[_i] : ((0 : GoUInt8))) == ((((("$$" : GoString))).code : GoRune)) || (_s != null ? _s[_i] : ((0 : GoUInt8))) == ((((("&" : GoString))).code : GoRune)) || (_s != null ? _s[_i] : ((0 : GoUInt8))) == ((((("\\'" : GoString))).code : GoRune)) || (_s != null ? _s[_i] : ((0 : GoUInt8))) == ((((("(" : GoString))).code : GoRune)) || (_s != null ? _s[_i] : ((0 : GoUInt8))) == (((((")" : GoString))).code : GoRune)) || (_s != null ? _s[_i] : ((0 : GoUInt8))) == ((((("*" : GoString))).code : GoRune)) || (_s != null ? _s[_i] : ((0 : GoUInt8))) == ((((("+" : GoString))).code : GoRune)) || (_s != null ? _s[_i] : ((0 : GoUInt8))) == ((((("," : GoString))).code : GoRune)) || (_s != null ? _s[_i] : ((0 : GoUInt8))) == (((((";" : GoString))).code : GoRune)) || (_s != null ? _s[_i] : ((0 : GoUInt8))) == ((((("=" : GoString))).code : GoRune)) || (_s != null ? _s[_i] : ((0 : GoUInt8))) == (((((":" : GoString))).code : GoRune)) || (_s != null ? _s[_i] : ((0 : GoUInt8))) == ((((("@" : GoString))).code : GoRune))) {} else if ((_s != null ? _s[_i] : ((0 : GoUInt8))) == ((((("[" : GoString))).code : GoRune)) || (_s != null ? _s[_i] : ((0 : GoUInt8))) == ((((("]" : GoString))).code : GoRune))) {} else if ((_s != null ? _s[_i] : ((0 : GoUInt8))) == ((((("%" : GoString))).code : GoRune))) {} else {
                    if (_shouldEscape((_s != null ? _s[_i] : ((0 : GoUInt8))), _mode)) {
                        return false;
                    };
                };
            });
        };
        return true;
    }
function _validOptionalPort(_port:GoString):Bool {
        if (_port == ((("" : GoString)))) {
            return true;
        };
        if ((_port != null ? _port[((0 : GoInt))] : ((0 : GoUInt8))) != (((((":" : GoString))).code : GoRune))) {
            return false;
        };
        for (_0 => _b in ((_port.__slice__(((1 : GoInt))) : GoString))) {
            if ((_b < ((((("0" : GoString))).code : GoRune))) || (_b > ((((("9" : GoString))).code : GoRune)))) {
                return false;
            };
        };
        return true;
    }
function parseQuery(_query:GoString):{ var _0 : Values; var _1 : Error; } {
        var _m:Values = new GoObjectMap<GoString, Slice<GoString>>(new stdgo.reflect.Reflect._Type(stdgo.reflect.Reflect.GoType.mapType(stdgo.reflect.Reflect.GoType.basic(string_kind), stdgo.reflect.Reflect.GoType.sliceType(stdgo.reflect.Reflect.GoType.basic(string_kind)))));
        var _err:stdgo.Error = _parseQuery(_m, _query);
        return { _0 : _m, _1 : _err };
    }
function _parseQuery(_m:Values, _query:GoString):Error {
        var _err:Error = ((null : stdgo.Error));
        while (_query != ((("" : GoString)))) {
            var _key:GoString = (("" : GoString));
            {
                var __tmp__ = stdgo.strings.Strings.cut(_query, ((("&" : GoString))));
                _key = __tmp__._0;
                _query = __tmp__._1;
            };
            if (stdgo.strings.Strings.contains(_key, (((";" : GoString))))) {
                _err = stdgo.fmt.Fmt.errorf(((("invalid semicolon separator in query" : GoString))));
                continue;
            };
            if (_key == ((("" : GoString)))) {
                continue;
            };
            var __tmp__ = stdgo.strings.Strings.cut(_key, ((("=" : GoString)))), _key:GoString = __tmp__._0, _value:GoString = __tmp__._1, _0:Bool = __tmp__._2;
            var __tmp__ = queryUnescape(_key), _key:GoString = __tmp__._0, _err1:stdgo.Error = __tmp__._1;
            if (_err1 != null) {
                if (_err == null) {
                    _err = _err1;
                };
                continue;
            };
            {
                var __tmp__ = queryUnescape(_value);
                _value = __tmp__._0;
                _err1 = __tmp__._1;
            };
            if (_err1 != null) {
                if (_err == null) {
                    _err = _err1;
                };
                continue;
            };
            if (_m != null) _m[_key] = ((_m != null ? _m[_key] : ((null : Slice<GoString>))) != null ? (_m != null ? _m[_key] : ((null : Slice<GoString>))).__append__(_value) : new Slice<GoString>(_value));
        };
        return _err;
    }
function _resolvePath(_base:GoString, _ref:GoString):GoString {
        var _full:GoString = (("" : GoString));
        if (_ref == ((("" : GoString)))) {
            _full = _base;
        } else if ((_ref != null ? _ref[((0 : GoInt))] : ((0 : GoUInt8))) != ((((("/" : GoString))).code : GoRune))) {
            var _i:GoInt = stdgo.strings.Strings.lastIndex(_base, ((("/" : GoString))));
            _full = ((_base.__slice__(0, _i + ((1 : GoInt))) : GoString)) + _ref;
        } else {
            _full = _ref;
        };
        if (_full == ((("" : GoString)))) {
            return ((("" : GoString)));
        };
        var _elem:GoString = (("" : GoString)), _dst:stdgo.strings.Strings.Builder = new stdgo.strings.Strings.Builder();
        var _first:Bool = true;
        var _remaining:GoString = _full;
        _dst.writeByte(((((("/" : GoString))).code : GoRune)));
        var _found:Bool = true;
        while (_found) {
            {
                var __tmp__ = stdgo.strings.Strings.cut(_remaining, ((("/" : GoString))));
                _elem = __tmp__._0;
                _remaining = __tmp__._1;
                _found = __tmp__._2;
            };
            if (_elem == ((("." : GoString)))) {
                _first = false;
                continue;
            };
            if (_elem == (((".." : GoString)))) {
                var _str:GoString = ((((_dst.toString() : GoString)).__slice__(((1 : GoInt))) : GoString));
                var _index:GoInt = stdgo.strings.Strings.lastIndexByte(_str, ((((("/" : GoString))).code : GoRune)));
                _dst.reset();
                _dst.writeByte(((((("/" : GoString))).code : GoRune)));
                if (_index == ((-1 : GoInt))) {
                    _first = true;
                } else {
                    _dst.writeString(((_str.__slice__(0, _index) : GoString)));
                };
            } else {
                if (!_first) {
                    _dst.writeByte(((((("/" : GoString))).code : GoRune)));
                };
                _dst.writeString(_elem);
                _first = false;
            };
        };
        if ((_elem == ((("." : GoString)))) || (_elem == (((".." : GoString))))) {
            _dst.writeByte(((((("/" : GoString))).code : GoRune)));
        };
        var _r:GoString = ((_dst.toString() : GoString));
        if (((_r != null ? _r.length : ((0 : GoInt))) > ((1 : GoInt))) && ((_r != null ? _r[((1 : GoInt))] : ((0 : GoUInt8))) == ((((("/" : GoString))).code : GoRune)))) {
            _r = ((_r.__slice__(((1 : GoInt))) : GoString));
        };
        return _r;
    }
function _splitHostPort(_hostPort:GoString):{ var _0 : GoString; var _1 : GoString; } {
        var _host:GoString = (("" : GoString)), _port:GoString = (("" : GoString));
        _host = _hostPort;
        var _colon:GoInt = stdgo.strings.Strings.lastIndexByte(_host, (((((":" : GoString))).code : GoRune)));
        if ((_colon != ((-1 : GoInt))) && _validOptionalPort(((_host.__slice__(_colon) : GoString)))) {
            {
                final __tmp__0 = ((_host.__slice__(0, _colon) : GoString));
                final __tmp__1 = ((_host.__slice__(_colon + ((1 : GoInt))) : GoString));
                _host = __tmp__0;
                _port = __tmp__1;
            };
        };
        if (stdgo.strings.Strings.hasPrefix(_host, ((("[" : GoString)))) && stdgo.strings.Strings.hasSuffix(_host, ((("]" : GoString))))) {
            _host = ((_host.__slice__(((1 : GoInt)), (_host != null ? _host.length : ((0 : GoInt))) - ((1 : GoInt))) : GoString));
        };
        return { _0 : _host, _1 : _port };
    }
function _validUserinfo(_s:GoString):Bool {
        for (_0 => _r in _s) {
            if ((((((("A" : GoString))).code : GoRune)) <= _r) && (_r <= ((((("Z" : GoString))).code : GoRune)))) {
                continue;
            };
            if ((((((("a" : GoString))).code : GoRune)) <= _r) && (_r <= ((((("z" : GoString))).code : GoRune)))) {
                continue;
            };
            if ((((((("0" : GoString))).code : GoRune)) <= _r) && (_r <= ((((("9" : GoString))).code : GoRune)))) {
                continue;
            };
            if (_r == ((((("-" : GoString))).code : GoRune)) || _r == ((((("." : GoString))).code : GoRune)) || _r == ((((("_" : GoString))).code : GoRune)) || _r == (((((":" : GoString))).code : GoRune)) || _r == ((((("~" : GoString))).code : GoRune)) || _r == ((((("!" : GoString))).code : GoRune)) || _r == ((((("$$" : GoString))).code : GoRune)) || _r == ((((("&" : GoString))).code : GoRune)) || _r == ((((("\\'" : GoString))).code : GoRune)) || _r == ((((("(" : GoString))).code : GoRune)) || _r == (((((")" : GoString))).code : GoRune)) || _r == ((((("*" : GoString))).code : GoRune)) || _r == ((((("+" : GoString))).code : GoRune)) || _r == ((((("," : GoString))).code : GoRune)) || _r == (((((";" : GoString))).code : GoRune)) || _r == ((((("=" : GoString))).code : GoRune)) || _r == ((((("%" : GoString))).code : GoRune)) || _r == ((((("@" : GoString))).code : GoRune))) {
                continue;
            } else {
                return false;
            };
        };
        return true;
    }
function _stringContainsCTLByte(_s:GoString):Bool {
        {
            var _i:GoInt = ((0 : GoInt));
            Go.cfor(_i < (_s != null ? _s.length : ((0 : GoInt))), _i++, {
                var _b:GoUInt8 = (_s != null ? _s[_i] : ((0 : GoUInt8)));
                if ((_b < (((((" " : GoString))).code : GoRune))) || (_b == ((127 : GoUInt8)))) {
                    return true;
                };
            });
        };
        return false;
    }
function _ufmt(_u:URL):GoString {
        var _user:AnyInterface = ((null : AnyInterface)), _pass:AnyInterface = ((null : AnyInterface));
        if (_u.user != null) {
            _user = Go.toInterface(_u.user.username());
            {
                var __tmp__ = _u.user.password(), _p:GoString = __tmp__._0, _ok:Bool = __tmp__._1;
                if (_ok) {
                    _pass = Go.toInterface(_p);
                };
            };
        };
        return stdgo.fmt.Fmt.sprintf(((("opaque=%q, scheme=%q, user=%#v, pass=%#v, host=%q, path=%q, rawpath=%q, rawq=%q, frag=%q, rawfrag=%q, forcequery=%v" : GoString))),
Go.toInterface(_u.opaque),
Go.toInterface(_u.scheme),
Go.toInterface(_user),
Go.toInterface(_pass),
Go.toInterface(_u.host),
Go.toInterface(_u.path),
Go.toInterface(_u.rawPath),
Go.toInterface(_u.rawQuery),
Go.toInterface(_u.fragment),
Go.toInterface(_u.rawFragment),
Go.toInterface(_u.forceQuery));
    }
function benchmarkString(_b:stdgo.testing.Testing.B):Void {
        _b.stopTimer();
        _b.reportAllocs();
        for (_0 => _tt in _urltests) {
            var __tmp__ = parse(_tt._in), _u:Ref<URL> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                _b.errorf(((("Parse(%q) returned error %s" : GoString))), Go.toInterface(_tt._in), Go.toInterface(_err));
                continue;
            };
            if (_tt._roundtrip == ((("" : GoString)))) {
                continue;
            };
            _b.startTimer();
            var _g:GoString = (("" : GoString));
            {
                var _i:GoInt = ((0 : GoInt));
                Go.cfor(_i < _b.n, _i++, {
                    _g = ((_u.toString() : GoString));
                });
            };
            _b.stopTimer();
            {
                var _w:GoString = _tt._roundtrip;
                if ((_b.n > ((0 : GoInt))) && (_g != _w)) {
                    _b.errorf(((("Parse(%q).String() == %q, want %q" : GoString))), Go.toInterface(_tt._in), Go.toInterface(_g), Go.toInterface(_w));
                };
            };
        };
    }
function testParse(_t:stdgo.testing.Testing.T_):Void {
        for (_0 => _tt in _urltests) {
            var __tmp__ = parse(_tt._in), _u:Ref<URL> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                _t.errorf(((("Parse(%q) returned error %v" : GoString))), Go.toInterface(_tt._in), Go.toInterface(_err));
                continue;
            };
            if (!stdgo.reflect.Reflect.deepEqual(Go.toInterface(_u), Go.toInterface(_tt._out))) {
                _t.errorf(((("Parse(%q):\n\tgot  %v\n\twant %v\n" : GoString))), Go.toInterface(_tt._in), Go.toInterface(_ufmt(_u)), Go.toInterface(_ufmt(_tt._out)));
            };
        };
    }
function testParseRequestURI(_t:stdgo.testing.Testing.T_):Void {
        for (_0 => _test in _parseRequestURLTests) {
            var __tmp__ = parseRequestURI(_test._url), _1:Ref<URL> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_test._expectedValid && (_err != null)) {
                _t.errorf(((("ParseRequestURI(%q) gave err %v; want no error" : GoString))), Go.toInterface(_test._url), Go.toInterface(_err));
            } else if (!_test._expectedValid && (_err == null)) {
                _t.errorf(((("ParseRequestURI(%q) gave nil error; want some error" : GoString))), Go.toInterface(_test._url));
            };
        };
        var __tmp__ = parseRequestURI(((("//not.a.user@not.a.host/just/a/path" : GoString)))), _url:Ref<URL> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            _t.fatalf(((("Unexpected error %v" : GoString))), Go.toInterface(_err));
        };
        if (_url.path != ((("//not.a.user@not.a.host/just/a/path" : GoString)))) {
            _t.errorf(((("ParseRequestURI path:\ngot  %q\nwant %q" : GoString))), Go.toInterface(_url.path), Go.toInterface(((("//not.a.user@not.a.host/just/a/path" : GoString)))));
        };
    }
function testURLString(_t:stdgo.testing.Testing.T_):Void {
        for (_0 => _tt in _urltests) {
            var __tmp__ = parse(_tt._in), _u:Ref<URL> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                _t.errorf(((("Parse(%q) returned error %s" : GoString))), Go.toInterface(_tt._in), Go.toInterface(_err));
                continue;
            };
            var _expected:GoString = _tt._in;
            if (_tt._roundtrip != ((("" : GoString)))) {
                _expected = _tt._roundtrip;
            };
            var _s:GoString = ((_u.toString() : GoString));
            if (_s != _expected) {
                _t.errorf(((("Parse(%q).String() == %q (expected %q)" : GoString))), Go.toInterface(_tt._in), Go.toInterface(_s), Go.toInterface(_expected));
            };
        };
        for (_1 => _tt in _stringURLTests) {
            {
                var _got:GoString = ((_tt._url.toString() : GoString));
                if (_got != _tt._want) {
                    _t.errorf(((("%+v.String() = %q; want %q" : GoString))), Go.toInterface(_tt._url), Go.toInterface(_got), Go.toInterface(_tt._want));
                };
            };
        };
    }
function testURLRedacted(_t:stdgo.testing.Testing.T_):Void {
        var _cases:Slice<T__struct_2> = ((new Slice<T__struct_2>(((({ _name : ((("non-blank Password" : GoString))), _url : (({ scheme : ((("http" : GoString))), host : ((("host.tld" : GoString))), path : ((("this:that" : GoString))), user : userPassword(((("user" : GoString))), ((("password" : GoString)))), opaque : "", rawPath : "", forceQuery : false, rawQuery : "", fragment : "", rawFragment : "" } : URL)), _want : ((("http://user:xxxxx@host.tld/this:that" : GoString))) } : T__struct_2)) == null ? null : (({ _name : ((("non-blank Password" : GoString))), _url : (({ scheme : ((("http" : GoString))), host : ((("host.tld" : GoString))), path : ((("this:that" : GoString))), user : userPassword(((("user" : GoString))), ((("password" : GoString)))), opaque : "", rawPath : "", forceQuery : false, rawQuery : "", fragment : "", rawFragment : "" } : URL)), _want : ((("http://user:xxxxx@host.tld/this:that" : GoString))) } : T__struct_2)).__copy__()), ((({ _name : ((("blank Password" : GoString))), _url : (({ scheme : ((("http" : GoString))), host : ((("host.tld" : GoString))), path : ((("this:that" : GoString))), user : user(((("user" : GoString)))), opaque : "", rawPath : "", forceQuery : false, rawQuery : "", fragment : "", rawFragment : "" } : URL)), _want : ((("http://user@host.tld/this:that" : GoString))) } : T__struct_2)) == null ? null : (({ _name : ((("blank Password" : GoString))), _url : (({ scheme : ((("http" : GoString))), host : ((("host.tld" : GoString))), path : ((("this:that" : GoString))), user : user(((("user" : GoString)))), opaque : "", rawPath : "", forceQuery : false, rawQuery : "", fragment : "", rawFragment : "" } : URL)), _want : ((("http://user@host.tld/this:that" : GoString))) } : T__struct_2)).__copy__()), ((({ _name : ((("nil User" : GoString))), _url : (({ scheme : ((("http" : GoString))), host : ((("host.tld" : GoString))), path : ((("this:that" : GoString))), user : userPassword(((("" : GoString))), ((("password" : GoString)))), opaque : "", rawPath : "", forceQuery : false, rawQuery : "", fragment : "", rawFragment : "" } : URL)), _want : ((("http://:xxxxx@host.tld/this:that" : GoString))) } : T__struct_2)) == null ? null : (({ _name : ((("nil User" : GoString))), _url : (({ scheme : ((("http" : GoString))), host : ((("host.tld" : GoString))), path : ((("this:that" : GoString))), user : userPassword(((("" : GoString))), ((("password" : GoString)))), opaque : "", rawPath : "", forceQuery : false, rawQuery : "", fragment : "", rawFragment : "" } : URL)), _want : ((("http://:xxxxx@host.tld/this:that" : GoString))) } : T__struct_2)).__copy__()), ((({ _name : ((("blank Username, blank Password" : GoString))), _url : (({ scheme : ((("http" : GoString))), host : ((("host.tld" : GoString))), path : ((("this:that" : GoString))), opaque : "", user : ((null : Ref<Userinfo>)), rawPath : "", forceQuery : false, rawQuery : "", fragment : "", rawFragment : "" } : URL)), _want : ((("http://host.tld/this:that" : GoString))) } : T__struct_2)) == null ? null : (({ _name : ((("blank Username, blank Password" : GoString))), _url : (({ scheme : ((("http" : GoString))), host : ((("host.tld" : GoString))), path : ((("this:that" : GoString))), opaque : "", user : ((null : Ref<Userinfo>)), rawPath : "", forceQuery : false, rawQuery : "", fragment : "", rawFragment : "" } : URL)), _want : ((("http://host.tld/this:that" : GoString))) } : T__struct_2)).__copy__()), ((({ _name : ((("empty URL" : GoString))), _url : ((new URL() : URL)), _want : ((("" : GoString))) } : T__struct_2)) == null ? null : (({ _name : ((("empty URL" : GoString))), _url : ((new URL() : URL)), _want : ((("" : GoString))) } : T__struct_2)).__copy__()), ((({ _name : ((("nil URL" : GoString))), _url : null, _want : ((("" : GoString))) } : T__struct_2)) == null ? null : (({ _name : ((("nil URL" : GoString))), _url : null, _want : ((("" : GoString))) } : T__struct_2)).__copy__())) : Slice<T__struct_2>));
        for (_0 => _tt in _cases) {
            var _t:Ref<stdgo.testing.Testing.T_> = _t;
            _t.run(_tt._name, function(_t:stdgo.testing.Testing.T_):Void {
                {
                    var _g:GoString = _tt._url.redacted(), _w:GoString = _tt._want;
                    if (_g != _w) {
                        _t.fatalf(((("got: %q\nwant: %q" : GoString))), Go.toInterface(_g), Go.toInterface(_w));
                    };
                };
            });
        };
    }
function testUnescape(_t:stdgo.testing.Testing.T_):Void {
        for (_0 => _tt in _unescapeTests) {
            var __tmp__ = queryUnescape(_tt._in), _actual:GoString = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if ((_actual != _tt._out) || ((_err != null) != (_tt._err != null))) {
                _t.errorf(((("QueryUnescape(%q) = %q, %s; want %q, %s" : GoString))), Go.toInterface(_tt._in), Go.toInterface(_actual), Go.toInterface(_err), Go.toInterface(_tt._out), Go.toInterface(_tt._err));
            };
            var _in:GoString = _tt._in;
            var _out:GoString = _tt._out;
            if (stdgo.strings.Strings.contains(_tt._in, ((("+" : GoString))))) {
                _in = stdgo.strings.Strings.replaceAll(_tt._in, ((("+" : GoString))), ((("%20" : GoString))));
                var __tmp__ = pathUnescape(_in), _actual:GoString = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                if ((_actual != _tt._out) || ((_err != null) != (_tt._err != null))) {
                    _t.errorf(((("PathUnescape(%q) = %q, %s; want %q, %s" : GoString))), Go.toInterface(_in), Go.toInterface(_actual), Go.toInterface(_err), Go.toInterface(_tt._out), Go.toInterface(_tt._err));
                };
                if (_tt._err == null) {
                    var __tmp__ = queryUnescape(stdgo.strings.Strings.replaceAll(_tt._in, ((("+" : GoString))), ((("XXX" : GoString))))), _s:GoString = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                    if (_err != null) {
                        continue;
                    };
                    _in = _tt._in;
                    _out = stdgo.strings.Strings.replaceAll(_s, ((("XXX" : GoString))), ((("+" : GoString))));
                };
            };
            {
                var __tmp__ = pathUnescape(_in);
                _actual = __tmp__._0;
                _err = __tmp__._1;
            };
            if ((_actual != _out) || ((_err != null) != (_tt._err != null))) {
                _t.errorf(((("PathUnescape(%q) = %q, %s; want %q, %s" : GoString))), Go.toInterface(_in), Go.toInterface(_actual), Go.toInterface(_err), Go.toInterface(_out), Go.toInterface(_tt._err));
            };
        };
    }
function testQueryEscape(_t:stdgo.testing.Testing.T_):Void {
        for (_0 => _tt in _queryEscapeTests) {
            var _actual:GoString = queryEscape(_tt._in);
            if (_tt._out != _actual) {
                _t.errorf(((("QueryEscape(%q) = %q, want %q" : GoString))), Go.toInterface(_tt._in), Go.toInterface(_actual), Go.toInterface(_tt._out));
            };
            var __tmp__ = queryUnescape(_actual), _roundtrip:GoString = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if ((_roundtrip != _tt._in) || (_err != null)) {
                _t.errorf(((("QueryUnescape(%q) = %q, %s; want %q, %s" : GoString))), Go.toInterface(_actual), Go.toInterface(_roundtrip), Go.toInterface(_err), Go.toInterface(_tt._in), Go.toInterface(((("[no error]" : GoString)))));
            };
        };
    }
function testPathEscape(_t:stdgo.testing.Testing.T_):Void {
        for (_0 => _tt in _pathEscapeTests) {
            var _actual:GoString = pathEscape(_tt._in);
            if (_tt._out != _actual) {
                _t.errorf(((("PathEscape(%q) = %q, want %q" : GoString))), Go.toInterface(_tt._in), Go.toInterface(_actual), Go.toInterface(_tt._out));
            };
            var __tmp__ = pathUnescape(_actual), _roundtrip:GoString = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if ((_roundtrip != _tt._in) || (_err != null)) {
                _t.errorf(((("PathUnescape(%q) = %q, %s; want %q, %s" : GoString))), Go.toInterface(_actual), Go.toInterface(_roundtrip), Go.toInterface(_err), Go.toInterface(_tt._in), Go.toInterface(((("[no error]" : GoString)))));
            };
        };
    }
function testEncodeQuery(_t:stdgo.testing.Testing.T_):Void {
        for (_0 => _tt in _encodeQueryTests) {
            {
                var _q:GoString = _tt._m.encode();
                if (_q != _tt._expected) {
                    _t.errorf("EncodeQuery(%+v) = %q, want %q", Go.toInterface(_tt._m), Go.toInterface(_q), Go.toInterface(_tt._expected));
                };
            };
        };
    }
function testResolvePath(_t:stdgo.testing.Testing.T_):Void {
        for (_0 => _test in _resolvePathTests) {
            var _got:GoString = _resolvePath(_test._base, _test._ref);
            if (_got != _test._expected) {
                _t.errorf(((("For %q + %q got %q; expected %q" : GoString))), Go.toInterface(_test._base), Go.toInterface(_test._ref), Go.toInterface(_got), Go.toInterface(_test._expected));
            };
        };
    }
function benchmarkResolvePath(_b:stdgo.testing.Testing.B):Void {
        _b.resetTimer();
        _b.reportAllocs();
        {
            var _i:GoInt = ((0 : GoInt));
            Go.cfor(_i < _b.n, _i++, {
                _resolvePath(((("a/b/c" : GoString))), (((".././d" : GoString))));
            });
        };
    }
function testResolveReference(_t:stdgo.testing.Testing.T_):Void {
        var _mustParse:GoString -> Ref<URL> = function(_url:GoString):URL {
            var __tmp__ = parse(_url), _u:Ref<URL> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                _t.fatalf(((("Parse(%q) got err %v" : GoString))), Go.toInterface(_url), Go.toInterface(_err));
            };
            return _u;
        };
        var _opaque:Ref<URL> = (({ scheme : ((("scheme" : GoString))), opaque : ((("opaque" : GoString))), user : ((null : Ref<Userinfo>)), host : "", path : "", rawPath : "", forceQuery : false, rawQuery : "", fragment : "", rawFragment : "" } : URL));
        for (_0 => _test in _resolveReferenceTests) {
            var _base:Ref<URL> = _mustParse(_test._base);
            var _rel:Ref<URL> = _mustParse(_test._rel);
            var _url:Ref<URL> = _base.resolveReference(_rel);
            {
                var _got:GoString = ((_url.toString() : GoString));
                if (_got != _test._expected) {
                    _t.errorf(((("URL(%q).ResolveReference(%q)\ngot  %q\nwant %q" : GoString))), Go.toInterface(_test._base), Go.toInterface(_test._rel), Go.toInterface(_got), Go.toInterface(_test._expected));
                };
            };
            if (_base == _url) {
                _t.errorf(((("Expected URL.ResolveReference to return new URL instance." : GoString))));
            };
            var __tmp__ = _base.parse(_test._rel), _url:Ref<URL> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                _t.errorf(((("URL(%q).Parse(%q) failed: %v" : GoString))), Go.toInterface(_test._base), Go.toInterface(_test._rel), Go.toInterface(_err));
            } else {
                var _got:GoString = ((_url.toString() : GoString));
                if (_got != _test._expected) {
                    _t.errorf(((("URL(%q).Parse(%q)\ngot  %q\nwant %q" : GoString))), Go.toInterface(_test._base), Go.toInterface(_test._rel), Go.toInterface(_got), Go.toInterface(_test._expected));
                } else if (_base == _url) {
                    _t.errorf(((("Expected URL.Parse to return new URL instance." : GoString))));
                };
            };
            _url = _base.resolveReference(_opaque);
            if (_url != _opaque) {
                _t.errorf(((("ResolveReference failed to resolve opaque URL:\ngot  %#v\nwant %#v" : GoString))), Go.toInterface(_url), Go.toInterface(_opaque));
            };
            {
                var __tmp__ = _base.parse(((("scheme:opaque" : GoString))));
                _url = __tmp__._0;
                _err = __tmp__._1;
            };
            if (_err != null) {
                _t.errorf("URL(%q).Parse(\"scheme:opaque\") failed: %v", Go.toInterface(_test._base), Go.toInterface(_err));
            } else if (_url != _opaque) {
                _t.errorf(((("Parse failed to resolve opaque URL:\ngot  %#v\nwant %#v" : GoString))), Go.toInterface(_opaque), Go.toInterface(_url));
            } else if (_base == _url) {
                _t.errorf(((("Expected URL.Parse to return new URL instance." : GoString))));
            };
        };
    }
function testQueryValues(_t:stdgo.testing.Testing.T_):Void {
        var __tmp__ = parse(((("http://x.com?foo=bar&bar=1&bar=2&baz" : GoString)))), _u:Ref<URL> = __tmp__._0, _0:stdgo.Error = __tmp__._1;
        var _v:Values = _u.query();
        if ((_v != null ? _v.length : ((0 : GoInt))) != ((3 : GoInt))) {
            _t.errorf(((("got %d keys in Query values, want 3" : GoString))), Go.toInterface((_v != null ? _v.length : ((0 : GoInt)))));
        };
        {
            var _g:GoString = _v.get(((("foo" : GoString)))), _e:GoString = ((("bar" : GoString)));
            if (_g != _e) {
                _t.errorf(((("Get(foo) = %q, want %q" : GoString))), Go.toInterface(_g), Go.toInterface(_e));
            };
        };
        {
            var _g:GoString = _v.get(((("Foo" : GoString)))), _e:GoString = ((("" : GoString)));
            if (_g != _e) {
                _t.errorf(((("Get(Foo) = %q, want %q" : GoString))), Go.toInterface(_g), Go.toInterface(_e));
            };
        };
        {
            var _g:GoString = _v.get(((("bar" : GoString)))), _e:GoString = ((("1" : GoString)));
            if (_g != _e) {
                _t.errorf(((("Get(bar) = %q, want %q" : GoString))), Go.toInterface(_g), Go.toInterface(_e));
            };
        };
        {
            var _g:GoString = _v.get(((("baz" : GoString)))), _e:GoString = ((("" : GoString)));
            if (_g != _e) {
                _t.errorf(((("Get(baz) = %q, want %q" : GoString))), Go.toInterface(_g), Go.toInterface(_e));
            };
        };
        {
            var _h:Bool = _v.has(((("foo" : GoString)))), _e:Bool = true;
            if (_h != _e) {
                _t.errorf(((("Has(foo) = %t, want %t" : GoString))), Go.toInterface(_h), Go.toInterface(_e));
            };
        };
        {
            var _h:Bool = _v.has(((("bar" : GoString)))), _e:Bool = true;
            if (_h != _e) {
                _t.errorf(((("Has(bar) = %t, want %t" : GoString))), Go.toInterface(_h), Go.toInterface(_e));
            };
        };
        {
            var _h:Bool = _v.has(((("baz" : GoString)))), _e:Bool = true;
            if (_h != _e) {
                _t.errorf(((("Has(baz) = %t, want %t" : GoString))), Go.toInterface(_h), Go.toInterface(_e));
            };
        };
        {
            var _h:Bool = _v.has(((("noexist" : GoString)))), _e:Bool = false;
            if (_h != _e) {
                _t.errorf(((("Has(noexist) = %t, want %t" : GoString))), Go.toInterface(_h), Go.toInterface(_e));
            };
        };
        _v.del(((("bar" : GoString))));
        {
            var _g:GoString = _v.get(((("bar" : GoString)))), _e:GoString = ((("" : GoString)));
            if (_g != _e) {
                _t.errorf(((("second Get(bar) = %q, want %q" : GoString))), Go.toInterface(_g), Go.toInterface(_e));
            };
        };
    }
function testParseQuery(_t:stdgo.testing.Testing.T_):Void {
        for (_0 => _test in _parseTests) {
            _t.run(_test._query, function(_t:stdgo.testing.Testing.T_):Void {
                var __tmp__ = parseQuery(_test._query), _form:Values = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                if (_test._ok != (_err == null)) {
                    var _want:GoString = ((("<error>" : GoString)));
                    if (_test._ok) {
                        _want = ((("<nil>" : GoString)));
                    };
                    _t.errorf(((("Unexpected error: %v, want %v" : GoString))), Go.toInterface(_err), Go.toInterface(_want));
                };
                if ((_form != null ? _form.length : ((0 : GoInt))) != (_test._out != null ? _test._out.length : ((0 : GoInt)))) {
                    _t.errorf(((("len(form) = %d, want %d" : GoString))), Go.toInterface((_form != null ? _form.length : ((0 : GoInt)))), Go.toInterface((_test._out != null ? _test._out.length : ((0 : GoInt)))));
                };
                for (_k => _evs in _test._out) {
                    var __tmp__ = (_form != null && _form.__exists__(_k) ? { value : _form[_k], ok : true } : { value : ((null : Slice<GoString>)), ok : false }), _vs:Slice<GoString> = __tmp__.value, _ok:Bool = __tmp__.ok;
                    if (!_ok) {
                        _t.errorf(((("Missing key %q" : GoString))), Go.toInterface(_k));
                        continue;
                    };
                    if ((_vs != null ? _vs.length : ((0 : GoInt))) != (_evs != null ? _evs.length : ((0 : GoInt)))) {
                        _t.errorf(((("len(form[%q]) = %d, want %d" : GoString))), Go.toInterface(_k), Go.toInterface((_vs != null ? _vs.length : ((0 : GoInt)))), Go.toInterface((_evs != null ? _evs.length : ((0 : GoInt)))));
                        continue;
                    };
                    for (_j => _ev in _evs) {
                        {
                            var _v:GoString = (_vs != null ? _vs[_j] : (("" : GoString)));
                            if (_v != _ev) {
                                _t.errorf(((("form[%q][%d] = %q, want %q" : GoString))), Go.toInterface(_k), Go.toInterface(_j), Go.toInterface(_v), Go.toInterface(_ev));
                            };
                        };
                    };
                };
            });
        };
    }
function testRequestURI(_t:stdgo.testing.Testing.T_):Void {
        for (_0 => _tt in _requritests) {
            var _s:GoString = _tt._url.requestURI();
            if (_s != _tt._out) {
                _t.errorf(((("%#v.RequestURI() == %q (expected %q)" : GoString))), Go.toInterface(_tt._url), Go.toInterface(_s), Go.toInterface(_tt._out));
            };
        };
    }
function testParseFailure(_t:stdgo.testing.Testing.T_):Void {
        {};
        var __tmp__ = parseQuery(((("%gh&%ij" : GoString)))), _0:Values = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        var _errStr:GoString = stdgo.fmt.Fmt.sprint(_err);
        if (!stdgo.strings.Strings.contains(_errStr, ((("%gh" : GoString))))) {
            _t.errorf("ParseQuery(%q) returned error %q, want something containing %q\"", Go.toInterface(((("%gh&%ij" : GoString)))), Go.toInterface(_errStr), Go.toInterface(((("%gh" : GoString)))));
        };
    }
function testParseErrors(_t:stdgo.testing.Testing.T_):Void {
        var _tests:Slice<T__struct_5> = ((new Slice<T__struct_5>(
((new T__struct_5(((("http://[::1]" : GoString))), false) : T__struct_5)),
((new T__struct_5(((("http://[::1]:80" : GoString))), false) : T__struct_5)),
((new T__struct_5(((("http://[::1]:namedport" : GoString))), true) : T__struct_5)),
((new T__struct_5(((("http://x:namedport" : GoString))), true) : T__struct_5)),
((new T__struct_5(((("http://[::1]/" : GoString))), false) : T__struct_5)),
((new T__struct_5(((("http://[::1]a" : GoString))), true) : T__struct_5)),
((new T__struct_5(((("http://[::1]%23" : GoString))), true) : T__struct_5)),
((new T__struct_5(((("http://[::1%25en0]" : GoString))), false) : T__struct_5)),
((new T__struct_5(((("http://[::1]:" : GoString))), false) : T__struct_5)),
((new T__struct_5(((("http://x:" : GoString))), false) : T__struct_5)),
((new T__struct_5(((("http://[::1]:%38%30" : GoString))), true) : T__struct_5)),
((new T__struct_5(((("http://[::1%25%41]" : GoString))), false) : T__struct_5)),
((new T__struct_5(((("http://[%10::1]" : GoString))), true) : T__struct_5)),
((new T__struct_5(((("http://[::1]/%48" : GoString))), false) : T__struct_5)),
((new T__struct_5(((("http://%41:8080/" : GoString))), true) : T__struct_5)),
((new T__struct_5(((("mysql://x@y(z:123)/foo" : GoString))), true) : T__struct_5)),
((new T__struct_5(((("mysql://x@y(1.2.3.4:123)/foo" : GoString))), true) : T__struct_5)),
((new T__struct_5((((" http://foo.com" : GoString))), true) : T__struct_5)),
((new T__struct_5(((("ht tp://foo.com" : GoString))), true) : T__struct_5)),
((new T__struct_5(((("ahttp://foo.com" : GoString))), false) : T__struct_5)),
((new T__struct_5(((("1http://foo.com" : GoString))), true) : T__struct_5)),
((new T__struct_5(((("http://[]%20%48%54%54%50%2f%31%2e%31%0a%4d%79%48%65%61%64%65%72%3a%20%31%32%33%0a%0a/" : GoString))), true) : T__struct_5)),
((new T__struct_5(((("http://a b.com/" : GoString))), true) : T__struct_5)),
((new T__struct_5(((("cache_object://foo" : GoString))), true) : T__struct_5)),
((new T__struct_5(((("cache_object:foo" : GoString))), true) : T__struct_5)),
((new T__struct_5(((("cache_object:foo/bar" : GoString))), true) : T__struct_5)),
((new T__struct_5(((("cache_object/:foo/bar" : GoString))), false) : T__struct_5))) : Slice<T__struct_5>));
        for (_0 => _tt in _tests) {
            var __tmp__ = parse(_tt._in), _u:Ref<URL> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_tt._wantErr) {
                if (_err == null) {
                    _t.errorf(((("Parse(%q) = %#v; want an error" : GoString))), Go.toInterface(_tt._in), Go.toInterface(_u));
                };
                continue;
            };
            if (_err != null) {
                _t.errorf(((("Parse(%q) = %v; want no error" : GoString))), Go.toInterface(_tt._in), Go.toInterface(_err));
            };
        };
    }
function testStarRequest(_t:stdgo.testing.Testing.T_):Void {
        var __tmp__ = parse(((("*" : GoString)))), _u:Ref<URL> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            _t.fatal(Go.toInterface(_err));
        };
        {
            var _got:GoString = _u.requestURI(), _want:GoString = ((("*" : GoString)));
            if (_got != _want) {
                _t.errorf(((("RequestURI = %q; want %q" : GoString))), Go.toInterface(_got), Go.toInterface(_want));
            };
        };
    }
function testShouldEscape(_t:stdgo.testing.Testing.T_):Void {
        for (_0 => _tt in _shouldEscapeTests) {
            if (_shouldEscape(_tt._in, _tt._mode) != _tt._escape) {
                _t.errorf(((("shouldEscape(%q, %v) returned %v; expected %v" : GoString))), Go.toInterface(_tt._in), Go.toInterface(_tt._mode), Go.toInterface(!_tt._escape), Go.toInterface(_tt._escape));
            };
        };
    }
function testURLErrorImplementsNetError(_t:stdgo.testing.Testing.T_):Void {
        for (_i => _tt in _netErrorTests) {
            var __tmp__ = try {
                { value : ((((_tt._err.__underlying__().value : Dynamic)) : stdgo.net.Net.T_error)), ok : true };
            } catch(_) {
                { value : ((null : stdgo.net.Net.T_error)), ok : false };
            }, _err = __tmp__.value, _ok = __tmp__.ok;
            if (!_ok) {
                _t.errorf(((("%d: %T does not implement net.Error" : GoString))), Go.toInterface(_i + ((1 : GoInt))), Go.toInterface(_tt._err));
                continue;
            };
            if (_err.timeout() != _tt._timeout) {
                _t.errorf(((("%d: err.Timeout(): got %v, want %v" : GoString))), Go.toInterface(_i + ((1 : GoInt))), Go.toInterface(_err.timeout()), Go.toInterface(_tt._timeout));
                continue;
            };
            if (_err.temporary() != _tt._temporary) {
                _t.errorf(((("%d: err.Temporary(): got %v, want %v" : GoString))), Go.toInterface(_i + ((1 : GoInt))), Go.toInterface(_err.temporary()), Go.toInterface(_tt._temporary));
            };
        };
    }
function testURLHostnameAndPort(_t:stdgo.testing.Testing.T_):Void {
        var _tests:Slice<T__struct_7> = ((new Slice<T__struct_7>(
((new T__struct_7(((("foo.com:80" : GoString))), ((("foo.com" : GoString))), ((("80" : GoString)))) : T__struct_7)),
((new T__struct_7(((("foo.com" : GoString))), ((("foo.com" : GoString))), ((("" : GoString)))) : T__struct_7)),
((new T__struct_7(((("foo.com:" : GoString))), ((("foo.com" : GoString))), ((("" : GoString)))) : T__struct_7)),
((new T__struct_7(((("FOO.COM" : GoString))), ((("FOO.COM" : GoString))), ((("" : GoString)))) : T__struct_7)),
((new T__struct_7(((("1.2.3.4" : GoString))), ((("1.2.3.4" : GoString))), ((("" : GoString)))) : T__struct_7)),
((new T__struct_7(((("1.2.3.4:80" : GoString))), ((("1.2.3.4" : GoString))), ((("80" : GoString)))) : T__struct_7)),
((new T__struct_7(((("[1:2:3:4]" : GoString))), ((("1:2:3:4" : GoString))), ((("" : GoString)))) : T__struct_7)),
((new T__struct_7(((("[1:2:3:4]:80" : GoString))), ((("1:2:3:4" : GoString))), ((("80" : GoString)))) : T__struct_7)),
((new T__struct_7(((("[::1]:80" : GoString))), ((("::1" : GoString))), ((("80" : GoString)))) : T__struct_7)),
((new T__struct_7(((("[::1]" : GoString))), ((("::1" : GoString))), ((("" : GoString)))) : T__struct_7)),
((new T__struct_7(((("[::1]:" : GoString))), ((("::1" : GoString))), ((("" : GoString)))) : T__struct_7)),
((new T__struct_7(((("localhost" : GoString))), ((("localhost" : GoString))), ((("" : GoString)))) : T__struct_7)),
((new T__struct_7(((("localhost:443" : GoString))), ((("localhost" : GoString))), ((("443" : GoString)))) : T__struct_7)),
((new T__struct_7(((("some.super.long.domain.example.org:8080" : GoString))), ((("some.super.long.domain.example.org" : GoString))), ((("8080" : GoString)))) : T__struct_7)),
((new T__struct_7(((("[2001:0db8:85a3:0000:0000:8a2e:0370:7334]:17000" : GoString))), ((("2001:0db8:85a3:0000:0000:8a2e:0370:7334" : GoString))), ((("17000" : GoString)))) : T__struct_7)),
((new T__struct_7(((("[2001:0db8:85a3:0000:0000:8a2e:0370:7334]" : GoString))), ((("2001:0db8:85a3:0000:0000:8a2e:0370:7334" : GoString))), ((("" : GoString)))) : T__struct_7)),
((new T__struct_7(((("[google.com]:80" : GoString))), ((("google.com" : GoString))), ((("80" : GoString)))) : T__struct_7)),
((new T__struct_7(((("google.com]:80" : GoString))), ((("google.com]" : GoString))), ((("80" : GoString)))) : T__struct_7)),
((new T__struct_7(((("google.com:80_invalid_port" : GoString))), ((("google.com:80_invalid_port" : GoString))), ((("" : GoString)))) : T__struct_7)),
((new T__struct_7(((("[::1]extra]:80" : GoString))), ((("::1]extra" : GoString))), ((("80" : GoString)))) : T__struct_7)),
((new T__struct_7(((("google.com]extra:extra" : GoString))), ((("google.com]extra:extra" : GoString))), ((("" : GoString)))) : T__struct_7))) : Slice<T__struct_7>));
        for (_0 => _tt in _tests) {
            var _u:Ref<URL> = (({ host : _tt._in, scheme : "", opaque : "", user : ((null : Ref<Userinfo>)), path : "", rawPath : "", forceQuery : false, rawQuery : "", fragment : "", rawFragment : "" } : URL));
            var _host:GoString = _u.hostname(), _port:GoString = _u.port();
            if (_host != _tt._host) {
                _t.errorf(((("Hostname for Host %q = %q; want %q" : GoString))), Go.toInterface(_tt._in), Go.toInterface(_host), Go.toInterface(_tt._host));
            };
            if (_port != _tt._port) {
                _t.errorf(((("Port for Host %q = %q; want %q" : GoString))), Go.toInterface(_tt._in), Go.toInterface(_port), Go.toInterface(_tt._port));
            };
        };
    }
function testJSON(_t:stdgo.testing.Testing.T_):Void {
        var __tmp__ = parse(((("https://www.google.com/x?y=z" : GoString)))), _u:Ref<URL> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            _t.fatal(Go.toInterface(_err));
        };
        var __tmp__ = stdgo.encoding.json.Json.marshal(Go.toInterface(_u)), _js:Slice<GoUInt8> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            _t.fatal(Go.toInterface(_err));
        };
        var _u1:Ref<URL> = new URL();
        _err = stdgo.encoding.json.Json.unmarshal(_js, Go.toInterface(_u1));
        if (_err != null) {
            _t.fatal(Go.toInterface(_err));
        };
        if (((_u1.toString() : GoString)) != ((_u.toString() : GoString))) {
            _t.errorf(((("json decoded to: %s\nwant: %s\n" : GoString))), Go.toInterface(_u1), Go.toInterface(_u));
        };
    }
function testGob(_t:stdgo.testing.Testing.T_):Void {
        var __tmp__ = parse(((("https://www.google.com/x?y=z" : GoString)))), _u:Ref<URL> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            _t.fatal(Go.toInterface(_err));
        };
        var _w:stdgo.bytes.Bytes.Buffer = new stdgo.bytes.Bytes.Buffer();
        _err = stdgo.encoding.gob.Gob.newEncoder(_w).encode(Go.toInterface(_u));
        if (_err != null) {
            _t.fatal(Go.toInterface(_err));
        };
        var _u1:Ref<URL> = new URL();
        _err = stdgo.encoding.gob.Gob.newDecoder(_w).decode(Go.toInterface(_u1));
        if (_err != null) {
            _t.fatal(Go.toInterface(_err));
        };
        if (((_u1.toString() : GoString)) != ((_u.toString() : GoString))) {
            _t.errorf(((("json decoded to: %s\nwant: %s\n" : GoString))), Go.toInterface(_u1), Go.toInterface(_u));
        };
    }
function testNilUser(_t:stdgo.testing.Testing.T_):Void {
        var __recover_exception__:AnyInterface = null;
        var __deferstack__:Array<Void -> Void> = [];
        try {
            __deferstack__.unshift(() -> {
                var a = function():Void {
                    {
                        var _v:AnyInterface = Go.toInterface(({
                            final r = __recover_exception__;
                            __recover_exception__ = null;
                            r;
                        }));
                        if (_v != null) {
                            _t.fatalf(((("unexpected panic: %v" : GoString))), Go.toInterface(_v));
                        };
                    };
                };
                a();
            });
            var __tmp__ = parse(((("http://foo.com/" : GoString)))), _u:Ref<URL> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                _t.fatalf(((("parse err: %v" : GoString))), Go.toInterface(_err));
            };
            {
                var _v:GoString = _u.user.username();
                if (_v != ((("" : GoString)))) {
                    _t.fatalf(((("expected empty username, got %s" : GoString))), Go.toInterface(_v));
                };
            };
            {
                var __tmp__ = _u.user.password(), _v:GoString = __tmp__._0, _ok:Bool = __tmp__._1;
                if ((_v != ((("" : GoString)))) || _ok) {
                    _t.fatalf(((("expected empty password, got %s (%v)" : GoString))), Go.toInterface(_v), Go.toInterface(_ok));
                };
            };
            {
                var _v:GoString = ((_u.user.toString() : GoString));
                if (_v != ((("" : GoString)))) {
                    _t.fatalf(((("expected empty string, got %s" : GoString))), Go.toInterface(_v));
                };
            };
            for (defer in __deferstack__) {
                defer();
            };
        } catch(__exception__) {
            if (!(__exception__.native is AnyInterfaceData)) throw __exception__;
            __recover_exception__ = __exception__.native;
            {
                for (defer in __deferstack__) {
                    defer();
                };
                if (__recover_exception__ != null) throw __recover_exception__;
                return;
            };
        };
    }
function testInvalidUserPassword(_t:stdgo.testing.Testing.T_):Void {
        var __tmp__ = parse(((("http://user^:passwo^rd@foo.com/" : GoString)))), _0:Ref<URL> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        {
            var _got:GoString = stdgo.fmt.Fmt.sprint(_err), _wantsub:GoString = ((("net/url: invalid userinfo" : GoString)));
            if (!stdgo.strings.Strings.contains(_got, _wantsub)) {
                _t.errorf(((("error = %q; want substring %q" : GoString))), Go.toInterface(_got), Go.toInterface(_wantsub));
            };
        };
    }
function testRejectControlCharacters(_t:stdgo.testing.Testing.T_):Void {
        var _tests:Slice<GoString> = ((new Slice<GoString>(((("http://foo.com/?foo\nbar" : GoString))), ((("http\r://foo.com/" : GoString))), ((("http://foo" : GoString)) + ((haxe.io.Bytes.ofHex("7f") : GoString)) + ((".com/" : GoString)))) : Slice<GoString>));
        for (_0 => _s in _tests) {
            var __tmp__ = parse(_s), _1:Ref<URL> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            {};
            {
                var _got:GoString = stdgo.fmt.Fmt.sprint(_err);
                if (!stdgo.strings.Strings.contains(_got, ((("net/url: invalid control character in URL" : GoString))))) {
                    _t.errorf(((("Parse(%q) error = %q; want substring %q" : GoString))), Go.toInterface(_s), Go.toInterface(_got), Go.toInterface(((("net/url: invalid control character in URL" : GoString)))));
                };
            };
        };
        {
            var __tmp__ = parse(((("http://foo.com/ctl" : GoString)) + ((haxe.io.Bytes.ofHex("80") : GoString)))), _2:Ref<URL> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                _t.errorf(((("error parsing URL with non-ASCII control byte: %v" : GoString))), Go.toInterface(_err));
            };
        };
    }
function benchmarkQueryEscape(_b:stdgo.testing.Testing.B):Void {
        for (_0 => _tc in _escapeBenchmarks) {
            _b.run(((("" : GoString))), function(_b:stdgo.testing.Testing.B):Void {
                _b.reportAllocs();
                var _g:GoString = (("" : GoString));
                {
                    var _i:GoInt = ((0 : GoInt));
                    Go.cfor(_i < _b.n, _i++, {
                        _g = queryEscape(_tc._unescaped);
                    });
                };
                _b.stopTimer();
                if (_g != _tc._query) {
                    _b.errorf(((("QueryEscape(%q) == %q, want %q" : GoString))), Go.toInterface(_tc._unescaped), Go.toInterface(_g), Go.toInterface(_tc._query));
                };
            });
        };
    }
function benchmarkPathEscape(_b:stdgo.testing.Testing.B):Void {
        for (_0 => _tc in _escapeBenchmarks) {
            _b.run(((("" : GoString))), function(_b:stdgo.testing.Testing.B):Void {
                _b.reportAllocs();
                var _g:GoString = (("" : GoString));
                {
                    var _i:GoInt = ((0 : GoInt));
                    Go.cfor(_i < _b.n, _i++, {
                        _g = pathEscape(_tc._unescaped);
                    });
                };
                _b.stopTimer();
                if (_g != _tc._path) {
                    _b.errorf(((("PathEscape(%q) == %q, want %q" : GoString))), Go.toInterface(_tc._unescaped), Go.toInterface(_g), Go.toInterface(_tc._path));
                };
            });
        };
    }
function benchmarkQueryUnescape(_b:stdgo.testing.Testing.B):Void {
        for (_0 => _tc in _escapeBenchmarks) {
            _b.run(((("" : GoString))), function(_b:stdgo.testing.Testing.B):Void {
                _b.reportAllocs();
                var _g:GoString = (("" : GoString));
                {
                    var _i:GoInt = ((0 : GoInt));
                    Go.cfor(_i < _b.n, _i++, {
                        {
                            var __tmp__ = queryUnescape(_tc._query);
                            _g = __tmp__._0;
                        };
                    });
                };
                _b.stopTimer();
                if (_g != _tc._unescaped) {
                    _b.errorf(((("QueryUnescape(%q) == %q, want %q" : GoString))), Go.toInterface(_tc._query), Go.toInterface(_g), Go.toInterface(_tc._unescaped));
                };
            });
        };
    }
function benchmarkPathUnescape(_b:stdgo.testing.Testing.B):Void {
        for (_0 => _tc in _escapeBenchmarks) {
            _b.run(((("" : GoString))), function(_b:stdgo.testing.Testing.B):Void {
                _b.reportAllocs();
                var _g:GoString = (("" : GoString));
                {
                    var _i:GoInt = ((0 : GoInt));
                    Go.cfor(_i < _b.n, _i++, {
                        {
                            var __tmp__ = pathUnescape(_tc._path);
                            _g = __tmp__._0;
                        };
                    });
                };
                _b.stopTimer();
                if (_g != _tc._unescaped) {
                    _b.errorf(((("PathUnescape(%q) == %q, want %q" : GoString))), Go.toInterface(_tc._path), Go.toInterface(_g), Go.toInterface(_tc._unescaped));
                };
            });
        };
    }
class T__interface_0_wrapper {
    public var __t__ : T__interface_0;
    public function new(__t__) this.__t__ = __t__;
    public function __underlying__():AnyInterface return Go.toInterface(this);
}
class T__interface_1_wrapper {
    public var __t__ : T__interface_1;
    public function new(__t__) this.__t__ = __t__;
    public function __underlying__():AnyInterface return Go.toInterface(this);
}
class T_error_wrapper {
    @:keep
    public function temporary():Bool {
        var _e = __t__;
        _e;
        var __tmp__ = try {
            { value : ((((_e.err.__underlying__().value : Dynamic)) : T__interface_1)), ok : true };
        } catch(_) {
            { value : ((null : T__interface_1)), ok : false };
        }, _t = __tmp__.value, _ok = __tmp__.ok;
        return _ok && _t.temporary();
    }
    @:keep
    public function timeout():Bool {
        var _e = __t__;
        _e;
        var __tmp__ = try {
            { value : ((((_e.err.__underlying__().value : Dynamic)) : T__interface_0)), ok : true };
        } catch(_) {
            { value : ((null : T__interface_0)), ok : false };
        }, _t = __tmp__.value, _ok = __tmp__.ok;
        return _ok && _t.timeout();
    }
    @:keep
    public function error():GoString {
        var _e = __t__;
        _e;
        return stdgo.fmt.Fmt.sprintf(((("%s %q: %s" : GoString))), Go.toInterface(_e.op), Go.toInterface(_e.url), Go.toInterface(_e.err));
    }
    @:keep
    public function unwrap():Error {
        var _e = __t__;
        _e;
        return _e.err;
    }
    public var __t__ : T_error;
    public function new(__t__) this.__t__ = __t__;
    public function __underlying__():AnyInterface return Go.toInterface(this);
}
@:keep class T_error_static_extension {
    @:keep
    public static function temporary( _e:Ref<T_error>):Bool {
        _e;
        var __tmp__ = try {
            { value : ((((_e.err.__underlying__().value : Dynamic)) : T__interface_1)), ok : true };
        } catch(_) {
            { value : ((null : T__interface_1)), ok : false };
        }, _t = __tmp__.value, _ok = __tmp__.ok;
        return _ok && _t.temporary();
    }
    @:keep
    public static function timeout( _e:Ref<T_error>):Bool {
        _e;
        var __tmp__ = try {
            { value : ((((_e.err.__underlying__().value : Dynamic)) : T__interface_0)), ok : true };
        } catch(_) {
            { value : ((null : T__interface_0)), ok : false };
        }, _t = __tmp__.value, _ok = __tmp__.ok;
        return _ok && _t.timeout();
    }
    @:keep
    public static function error( _e:Ref<T_error>):GoString {
        _e;
        return stdgo.fmt.Fmt.sprintf(((("%s %q: %s" : GoString))), Go.toInterface(_e.op), Go.toInterface(_e.url), Go.toInterface(_e.err));
    }
    @:keep
    public static function unwrap( _e:Ref<T_error>):Error {
        _e;
        return _e.err;
    }
}
class URL_wrapper {
    @:keep
    public function unmarshalBinary(_text:Slice<GoByte>):Error {
        var _u = __t__;
        _u;
        var __tmp__ = stdgo.net.url.Url.parse(((_text : GoString))), _u1:Ref<URL> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            return _err;
        };
        {
            var __tmp__ = (_u1 == null ? null : _u1.__copy__());
            _u.scheme = __tmp__.scheme;
            _u.opaque = __tmp__.opaque;
            _u.user = __tmp__.user;
            _u.host = __tmp__.host;
            _u.path = __tmp__.path;
            _u.rawPath = __tmp__.rawPath;
            _u.forceQuery = __tmp__.forceQuery;
            _u.rawQuery = __tmp__.rawQuery;
            _u.fragment = __tmp__.fragment;
            _u.rawFragment = __tmp__.rawFragment;
        };
        return ((null : stdgo.Error));
    }
    @:keep
    public function marshalBinary():{ var _0 : Slice<GoByte>; var _1 : Error; } {
        var _u = __t__;
        _u;
        var _text:Slice<GoByte> = ((null : Slice<GoUInt8>)), _err:Error = ((null : stdgo.Error));
        return { _0 : ((((_u.toString() : GoString)) : Slice<GoByte>)), _1 : ((null : stdgo.Error)) };
    }
    @:keep
    public function port():GoString {
        var _u = __t__;
        _u;
        var __tmp__ = _splitHostPort(_u.host), _0:GoString = __tmp__._0, _port:GoString = __tmp__._1;
        return _port;
    }
    @:keep
    public function hostname():GoString {
        var _u = __t__;
        _u;
        var __tmp__ = _splitHostPort(_u.host), _host:GoString = __tmp__._0, _0:GoString = __tmp__._1;
        return _host;
    }
    @:keep
    public function requestURI():GoString {
        var _u = __t__;
        _u;
        var _result:GoString = _u.opaque;
        if (_result == ((("" : GoString)))) {
            _result = _u.escapedPath();
            if (_result == ((("" : GoString)))) {
                _result = ((("/" : GoString)));
            };
        } else {
            if (stdgo.strings.Strings.hasPrefix(_result, ((("//" : GoString))))) {
                _result = (_u.scheme + (((":" : GoString)))) + _result;
            };
        };
        if (_u.forceQuery || (_u.rawQuery != ((("" : GoString))))) {
            _result = _result + (((("?" : GoString))) + _u.rawQuery);
        };
        return _result;
    }
    @:keep
    public function query():Values {
        var _u = __t__;
        _u;
        var __tmp__ = parseQuery(_u.rawQuery), _v:Values = __tmp__._0, _0:stdgo.Error = __tmp__._1;
        return _v;
    }
    @:keep
    public function resolveReference(_ref:URL):URL {
        var _u = __t__;
        _u;
        var _url:URL = (_ref == null ? null : _ref.__copy__());
        if (_ref.scheme == ((("" : GoString)))) {
            _url.scheme = _u.scheme;
        };
        if (((_ref.scheme != ((("" : GoString)))) || (_ref.host != ((("" : GoString))))) || (_ref.user != null)) {
            _url._setPath(_resolvePath(_ref.escapedPath(), ((("" : GoString)))));
            return _url;
        };
        if (_ref.opaque != ((("" : GoString)))) {
            _url.user = null;
            _url.host = ((("" : GoString)));
            _url.path = ((("" : GoString)));
            return _url;
        };
        if (((_ref.path == ((("" : GoString)))) && !_ref.forceQuery) && (_ref.rawQuery == ((("" : GoString))))) {
            _url.rawQuery = _u.rawQuery;
            if (_ref.fragment == ((("" : GoString)))) {
                _url.fragment = _u.fragment;
                _url.rawFragment = _u.rawFragment;
            };
        };
        _url.host = _u.host;
        _url.user = _u.user;
        _url._setPath(_resolvePath(_u.escapedPath(), _ref.escapedPath()));
        return _url;
    }
    @:keep
    public function parse(_ref:GoString):{ var _0 : URL; var _1 : Error; } {
        var _u = __t__;
        _u;
        var __tmp__ = stdgo.net.url.Url.parse(_ref), _refURL:Ref<URL> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            return { _0 : null, _1 : _err };
        };
        return { _0 : _u.resolveReference(_refURL), _1 : ((null : stdgo.Error)) };
    }
    @:keep
    public function isAbs():Bool {
        var _u = __t__;
        _u;
        return _u.scheme != ((("" : GoString)));
    }
    @:keep
    public function redacted():GoString {
        var _u = __t__;
        _u;
        if (_u == null) {
            return ((("" : GoString)));
        };
        var _ru:URL = (_u == null ? null : _u.__copy__());
        {
            var __tmp__ = _ru.user.password(), _0:GoString = __tmp__._0, _has:Bool = __tmp__._1;
            if (_has) {
                _ru.user = userPassword(_ru.user.username(), ((("xxxxx" : GoString))));
            };
        };
        return ((_ru.toString() : GoString));
    }
    @:keep
    public function toString():GoString {
        var _u = __t__;
        _u;
        var _buf:stdgo.strings.Strings.Builder = new stdgo.strings.Strings.Builder();
        if (_u.scheme != ((("" : GoString)))) {
            _buf.writeString(_u.scheme);
            _buf.writeByte((((((":" : GoString))).code : GoRune)));
        };
        if (_u.opaque != ((("" : GoString)))) {
            _buf.writeString(_u.opaque);
        } else {
            if (((_u.scheme != ((("" : GoString)))) || (_u.host != ((("" : GoString))))) || (_u.user != null)) {
                if (((_u.host != ((("" : GoString)))) || (_u.path != ((("" : GoString))))) || (_u.user != null)) {
                    _buf.writeString(((("//" : GoString))));
                };
                {
                    var _ui:Ref<Userinfo> = _u.user;
                    if (_ui != null) {
                        _buf.writeString(((_ui.toString() : GoString)));
                        _buf.writeByte(((((("@" : GoString))).code : GoRune)));
                    };
                };
                {
                    var _h:GoString = _u.host;
                    if (_h != ((("" : GoString)))) {
                        _buf.writeString(_escape(_h, ((3 : GoInt))));
                    };
                };
            };
            var _path:GoString = _u.escapedPath();
            if (((_path != ((("" : GoString)))) && ((_path != null ? _path[((0 : GoInt))] : ((0 : GoUInt8))) != ((((("/" : GoString))).code : GoRune)))) && (_u.host != ((("" : GoString))))) {
                _buf.writeByte(((((("/" : GoString))).code : GoRune)));
            };
            if (_buf.len() == ((0 : GoInt))) {
                {
                    var __tmp__ = stdgo.strings.Strings.cut(_path, ((("/" : GoString)))), _segment:GoString = __tmp__._0, _0:GoString = __tmp__._1, _1:Bool = __tmp__._2;
                    if (stdgo.strings.Strings.contains(_segment, (((":" : GoString))))) {
                        _buf.writeString(((("./" : GoString))));
                    };
                };
            };
            _buf.writeString(_path);
        };
        if (_u.forceQuery || (_u.rawQuery != ((("" : GoString))))) {
            _buf.writeByte(((((("?" : GoString))).code : GoRune)));
            _buf.writeString(_u.rawQuery);
        };
        if (_u.fragment != ((("" : GoString)))) {
            _buf.writeByte(((((("#" : GoString))).code : GoRune)));
            _buf.writeString(_u.escapedFragment());
        };
        return ((_buf.toString() : GoString));
    }
    @:keep
    public function escapedFragment():GoString {
        var _u = __t__;
        _u;
        if ((_u.rawFragment != ((("" : GoString)))) && _validEncoded(_u.rawFragment, ((7 : GoInt)))) {
            var __tmp__ = _unescape(_u.rawFragment, ((7 : GoInt))), _f:GoString = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if ((_err == null) && (_f == _u.fragment)) {
                return _u.rawFragment;
            };
        };
        return _escape(_u.fragment, ((7 : GoInt)));
    }
    @:keep
    public function _setFragment(_f:GoString):Error {
        var _u = __t__;
        _u;
        var __tmp__ = _unescape(_f, ((7 : GoInt))), _frag:GoString = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            return _err;
        };
        _u.fragment = _frag;
        {
            var _escf:GoString = _escape(_frag, ((7 : GoInt)));
            if (_f == _escf) {
                _u.rawFragment = ((("" : GoString)));
            } else {
                _u.rawFragment = _f;
            };
        };
        return ((null : stdgo.Error));
    }
    @:keep
    public function escapedPath():GoString {
        var _u = __t__;
        _u;
        if ((_u.rawPath != ((("" : GoString)))) && _validEncoded(_u.rawPath, ((1 : GoInt)))) {
            var __tmp__ = _unescape(_u.rawPath, ((1 : GoInt))), _p:GoString = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if ((_err == null) && (_p == _u.path)) {
                return _u.rawPath;
            };
        };
        if (_u.path == ((("*" : GoString)))) {
            return ((("*" : GoString)));
        };
        return _escape(_u.path, ((1 : GoInt)));
    }
    @:keep
    public function _setPath(_p:GoString):Error {
        var _u = __t__;
        _u;
        var __tmp__ = _unescape(_p, ((1 : GoInt))), _path:GoString = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            return _err;
        };
        _u.path = _path;
        {
            var _escp:GoString = _escape(_path, ((1 : GoInt)));
            if (_p == _escp) {
                _u.rawPath = ((("" : GoString)));
            } else {
                _u.rawPath = _p;
            };
        };
        return ((null : stdgo.Error));
    }
    public var __t__ : URL;
    public function new(__t__) this.__t__ = __t__;
    public function __underlying__():AnyInterface return Go.toInterface(this);
}
@:keep class URL_static_extension {
    @:keep
    public static function unmarshalBinary( _u:Ref<URL>, _text:Slice<GoByte>):Error {
        _u;
        var __tmp__ = stdgo.net.url.Url.parse(((_text : GoString))), _u1:Ref<URL> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            return _err;
        };
        {
            var __tmp__ = (_u1 == null ? null : _u1.__copy__());
            _u.scheme = __tmp__.scheme;
            _u.opaque = __tmp__.opaque;
            _u.user = __tmp__.user;
            _u.host = __tmp__.host;
            _u.path = __tmp__.path;
            _u.rawPath = __tmp__.rawPath;
            _u.forceQuery = __tmp__.forceQuery;
            _u.rawQuery = __tmp__.rawQuery;
            _u.fragment = __tmp__.fragment;
            _u.rawFragment = __tmp__.rawFragment;
        };
        return ((null : stdgo.Error));
    }
    @:keep
    public static function marshalBinary( _u:Ref<URL>):{ var _0 : Slice<GoByte>; var _1 : Error; } {
        _u;
        var _text:Slice<GoByte> = ((null : Slice<GoUInt8>)), _err:Error = ((null : stdgo.Error));
        return { _0 : ((((_u.toString() : GoString)) : Slice<GoByte>)), _1 : ((null : stdgo.Error)) };
    }
    @:keep
    public static function port( _u:Ref<URL>):GoString {
        _u;
        var __tmp__ = _splitHostPort(_u.host), _0:GoString = __tmp__._0, _port:GoString = __tmp__._1;
        return _port;
    }
    @:keep
    public static function hostname( _u:Ref<URL>):GoString {
        _u;
        var __tmp__ = _splitHostPort(_u.host), _host:GoString = __tmp__._0, _0:GoString = __tmp__._1;
        return _host;
    }
    @:keep
    public static function requestURI( _u:Ref<URL>):GoString {
        _u;
        var _result:GoString = _u.opaque;
        if (_result == ((("" : GoString)))) {
            _result = _u.escapedPath();
            if (_result == ((("" : GoString)))) {
                _result = ((("/" : GoString)));
            };
        } else {
            if (stdgo.strings.Strings.hasPrefix(_result, ((("//" : GoString))))) {
                _result = (_u.scheme + (((":" : GoString)))) + _result;
            };
        };
        if (_u.forceQuery || (_u.rawQuery != ((("" : GoString))))) {
            _result = _result + (((("?" : GoString))) + _u.rawQuery);
        };
        return _result;
    }
    @:keep
    public static function query( _u:Ref<URL>):Values {
        _u;
        var __tmp__ = parseQuery(_u.rawQuery), _v:Values = __tmp__._0, _0:stdgo.Error = __tmp__._1;
        return _v;
    }
    @:keep
    public static function resolveReference( _u:Ref<URL>, _ref:URL):URL {
        _u;
        var _url:URL = (_ref == null ? null : _ref.__copy__());
        if (_ref.scheme == ((("" : GoString)))) {
            _url.scheme = _u.scheme;
        };
        if (((_ref.scheme != ((("" : GoString)))) || (_ref.host != ((("" : GoString))))) || (_ref.user != null)) {
            _url._setPath(_resolvePath(_ref.escapedPath(), ((("" : GoString)))));
            return _url;
        };
        if (_ref.opaque != ((("" : GoString)))) {
            _url.user = null;
            _url.host = ((("" : GoString)));
            _url.path = ((("" : GoString)));
            return _url;
        };
        if (((_ref.path == ((("" : GoString)))) && !_ref.forceQuery) && (_ref.rawQuery == ((("" : GoString))))) {
            _url.rawQuery = _u.rawQuery;
            if (_ref.fragment == ((("" : GoString)))) {
                _url.fragment = _u.fragment;
                _url.rawFragment = _u.rawFragment;
            };
        };
        _url.host = _u.host;
        _url.user = _u.user;
        _url._setPath(_resolvePath(_u.escapedPath(), _ref.escapedPath()));
        return _url;
    }
    @:keep
    public static function parse( _u:Ref<URL>, _ref:GoString):{ var _0 : URL; var _1 : Error; } {
        _u;
        var __tmp__ = stdgo.net.url.Url.parse(_ref), _refURL:Ref<URL> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            return { _0 : null, _1 : _err };
        };
        return { _0 : _u.resolveReference(_refURL), _1 : ((null : stdgo.Error)) };
    }
    @:keep
    public static function isAbs( _u:Ref<URL>):Bool {
        _u;
        return _u.scheme != ((("" : GoString)));
    }
    @:keep
    public static function redacted( _u:Ref<URL>):GoString {
        _u;
        if (_u == null) {
            return ((("" : GoString)));
        };
        var _ru:URL = (_u == null ? null : _u.__copy__());
        {
            var __tmp__ = _ru.user.password(), _0:GoString = __tmp__._0, _has:Bool = __tmp__._1;
            if (_has) {
                _ru.user = userPassword(_ru.user.username(), ((("xxxxx" : GoString))));
            };
        };
        return ((_ru.toString() : GoString));
    }
    @:keep
    public static function toString( _u:Ref<URL>):GoString {
        _u;
        var _buf:stdgo.strings.Strings.Builder = new stdgo.strings.Strings.Builder();
        if (_u.scheme != ((("" : GoString)))) {
            _buf.writeString(_u.scheme);
            _buf.writeByte((((((":" : GoString))).code : GoRune)));
        };
        if (_u.opaque != ((("" : GoString)))) {
            _buf.writeString(_u.opaque);
        } else {
            if (((_u.scheme != ((("" : GoString)))) || (_u.host != ((("" : GoString))))) || (_u.user != null)) {
                if (((_u.host != ((("" : GoString)))) || (_u.path != ((("" : GoString))))) || (_u.user != null)) {
                    _buf.writeString(((("//" : GoString))));
                };
                {
                    var _ui:Ref<Userinfo> = _u.user;
                    if (_ui != null) {
                        _buf.writeString(((_ui.toString() : GoString)));
                        _buf.writeByte(((((("@" : GoString))).code : GoRune)));
                    };
                };
                {
                    var _h:GoString = _u.host;
                    if (_h != ((("" : GoString)))) {
                        _buf.writeString(_escape(_h, ((3 : GoInt))));
                    };
                };
            };
            var _path:GoString = _u.escapedPath();
            if (((_path != ((("" : GoString)))) && ((_path != null ? _path[((0 : GoInt))] : ((0 : GoUInt8))) != ((((("/" : GoString))).code : GoRune)))) && (_u.host != ((("" : GoString))))) {
                _buf.writeByte(((((("/" : GoString))).code : GoRune)));
            };
            if (_buf.len() == ((0 : GoInt))) {
                {
                    var __tmp__ = stdgo.strings.Strings.cut(_path, ((("/" : GoString)))), _segment:GoString = __tmp__._0, _0:GoString = __tmp__._1, _1:Bool = __tmp__._2;
                    if (stdgo.strings.Strings.contains(_segment, (((":" : GoString))))) {
                        _buf.writeString(((("./" : GoString))));
                    };
                };
            };
            _buf.writeString(_path);
        };
        if (_u.forceQuery || (_u.rawQuery != ((("" : GoString))))) {
            _buf.writeByte(((((("?" : GoString))).code : GoRune)));
            _buf.writeString(_u.rawQuery);
        };
        if (_u.fragment != ((("" : GoString)))) {
            _buf.writeByte(((((("#" : GoString))).code : GoRune)));
            _buf.writeString(_u.escapedFragment());
        };
        return ((_buf.toString() : GoString));
    }
    @:keep
    public static function escapedFragment( _u:Ref<URL>):GoString {
        _u;
        if ((_u.rawFragment != ((("" : GoString)))) && _validEncoded(_u.rawFragment, ((7 : GoInt)))) {
            var __tmp__ = _unescape(_u.rawFragment, ((7 : GoInt))), _f:GoString = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if ((_err == null) && (_f == _u.fragment)) {
                return _u.rawFragment;
            };
        };
        return _escape(_u.fragment, ((7 : GoInt)));
    }
    @:keep
    public static function _setFragment( _u:Ref<URL>, _f:GoString):Error {
        _u;
        var __tmp__ = _unescape(_f, ((7 : GoInt))), _frag:GoString = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            return _err;
        };
        _u.fragment = _frag;
        {
            var _escf:GoString = _escape(_frag, ((7 : GoInt)));
            if (_f == _escf) {
                _u.rawFragment = ((("" : GoString)));
            } else {
                _u.rawFragment = _f;
            };
        };
        return ((null : stdgo.Error));
    }
    @:keep
    public static function escapedPath( _u:Ref<URL>):GoString {
        _u;
        if ((_u.rawPath != ((("" : GoString)))) && _validEncoded(_u.rawPath, ((1 : GoInt)))) {
            var __tmp__ = _unescape(_u.rawPath, ((1 : GoInt))), _p:GoString = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if ((_err == null) && (_p == _u.path)) {
                return _u.rawPath;
            };
        };
        if (_u.path == ((("*" : GoString)))) {
            return ((("*" : GoString)));
        };
        return _escape(_u.path, ((1 : GoInt)));
    }
    @:keep
    public static function _setPath( _u:Ref<URL>, _p:GoString):Error {
        _u;
        var __tmp__ = _unescape(_p, ((1 : GoInt))), _path:GoString = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            return _err;
        };
        _u.path = _path;
        {
            var _escp:GoString = _escape(_path, ((1 : GoInt)));
            if (_p == _escp) {
                _u.rawPath = ((("" : GoString)));
            } else {
                _u.rawPath = _p;
            };
        };
        return ((null : stdgo.Error));
    }
}
class Userinfo_wrapper {
    @:keep
    public function toString():GoString {
        var _u = __t__;
        _u;
        if (_u == null) {
            return ((("" : GoString)));
        };
        var _s:GoString = _escape(_u._username, ((5 : GoInt)));
        if (_u._passwordSet) {
            _s = _s + ((((":" : GoString))) + _escape(_u._password, ((5 : GoInt))));
        };
        return _s;
    }
    @:keep
    public function password():{ var _0 : GoString; var _1 : Bool; } {
        var _u = __t__;
        _u;
        if (_u == null) {
            return { _0 : ((("" : GoString))), _1 : false };
        };
        return { _0 : _u._password, _1 : _u._passwordSet };
    }
    @:keep
    public function username():GoString {
        var _u = __t__;
        _u;
        if (_u == null) {
            return ((("" : GoString)));
        };
        return _u._username;
    }
    public var __t__ : Userinfo;
    public function new(__t__) this.__t__ = __t__;
    public function __underlying__():AnyInterface return Go.toInterface(this);
}
@:keep class Userinfo_static_extension {
    @:keep
    public static function toString( _u:Ref<Userinfo>):GoString {
        _u;
        if (_u == null) {
            return ((("" : GoString)));
        };
        var _s:GoString = _escape(_u._username, ((5 : GoInt)));
        if (_u._passwordSet) {
            _s = _s + ((((":" : GoString))) + _escape(_u._password, ((5 : GoInt))));
        };
        return _s;
    }
    @:keep
    public static function password( _u:Ref<Userinfo>):{ var _0 : GoString; var _1 : Bool; } {
        _u;
        if (_u == null) {
            return { _0 : ((("" : GoString))), _1 : false };
        };
        return { _0 : _u._password, _1 : _u._passwordSet };
    }
    @:keep
    public static function username( _u:Ref<Userinfo>):GoString {
        _u;
        if (_u == null) {
            return ((("" : GoString)));
        };
        return _u._username;
    }
}
class URLTest_wrapper {
    public var __t__ : URLTest;
    public function new(__t__) this.__t__ = __t__;
    public function __underlying__():AnyInterface return Go.toInterface(this);
}
class EscapeTest_wrapper {
    public var __t__ : EscapeTest;
    public function new(__t__) this.__t__ = __t__;
    public function __underlying__():AnyInterface return Go.toInterface(this);
}
class EncodeQueryTest_wrapper {
    public var __t__ : EncodeQueryTest;
    public function new(__t__) this.__t__ = __t__;
    public function __underlying__():AnyInterface return Go.toInterface(this);
}
class T_parseTest_wrapper {
    public var __t__ : T_parseTest;
    public function new(__t__) this.__t__ = __t__;
    public function __underlying__():AnyInterface return Go.toInterface(this);
}
class RequestURITest_wrapper {
    public var __t__ : RequestURITest;
    public function new(__t__) this.__t__ = __t__;
    public function __underlying__():AnyInterface return Go.toInterface(this);
}
class T_shouldEscapeTest_wrapper {
    public var __t__ : T_shouldEscapeTest;
    public function new(__t__) this.__t__ = __t__;
    public function __underlying__():AnyInterface return Go.toInterface(this);
}
class T_timeoutError_wrapper {
    @:keep
    public function timeout():Bool {
        var _e = __t__;
        _e;
        return _e._timeout;
    }
    @:keep
    public function error():GoString {
        var _e = __t__;
        _e;
        return ((("timeout error" : GoString)));
    }
    public var __t__ : T_timeoutError;
    public function new(__t__) this.__t__ = __t__;
    public function __underlying__():AnyInterface return Go.toInterface(this);
}
@:keep class T_timeoutError_static_extension {
    @:keep
    public static function timeout( _e:Ref<T_timeoutError>):Bool {
        _e;
        return _e._timeout;
    }
    @:keep
    public static function error( _e:Ref<T_timeoutError>):GoString {
        _e;
        return ((("timeout error" : GoString)));
    }
}
class T_temporaryError_wrapper {
    @:keep
    public function temporary():Bool {
        var _e = __t__;
        _e;
        return _e._temporary;
    }
    @:keep
    public function error():GoString {
        var _e = __t__;
        _e;
        return ((("temporary error" : GoString)));
    }
    public var __t__ : T_temporaryError;
    public function new(__t__) this.__t__ = __t__;
    public function __underlying__():AnyInterface return Go.toInterface(this);
}
@:keep class T_temporaryError_static_extension {
    @:keep
    public static function temporary( _e:Ref<T_temporaryError>):Bool {
        _e;
        return _e._temporary;
    }
    @:keep
    public static function error( _e:Ref<T_temporaryError>):GoString {
        _e;
        return ((("temporary error" : GoString)));
    }
}
class T_timeoutTemporaryError_wrapper {
    @:keep
    public function error():GoString {
        var _e = __t__;
        _e;
        return ((("timeout/temporary error" : GoString)));
    }
    public var __t__ : T_timeoutTemporaryError;
    public function new(__t__) this.__t__ = __t__;
    public function __underlying__():AnyInterface return Go.toInterface(this);
}
@:keep class T_timeoutTemporaryError_static_extension {
    @:keep
    public static function error( _e:Ref<T_timeoutTemporaryError>):GoString {
        _e;
        return ((("timeout/temporary error" : GoString)));
    }
}
class T__struct_0_wrapper {
    public var __t__ : T__struct_0;
    public function new(__t__) this.__t__ = __t__;
    public function __underlying__():AnyInterface return Go.toInterface(this);
}
class T__struct_1_wrapper {
    public var __t__ : T__struct_1;
    public function new(__t__) this.__t__ = __t__;
    public function __underlying__():AnyInterface return Go.toInterface(this);
}
class T__struct_2_wrapper {
    public var __t__ : T__struct_2;
    public function new(__t__) this.__t__ = __t__;
    public function __underlying__():AnyInterface return Go.toInterface(this);
}
class T__struct_3_wrapper {
    public var __t__ : T__struct_3;
    public function new(__t__) this.__t__ = __t__;
    public function __underlying__():AnyInterface return Go.toInterface(this);
}
class T__struct_4_wrapper {
    public var __t__ : T__struct_4;
    public function new(__t__) this.__t__ = __t__;
    public function __underlying__():AnyInterface return Go.toInterface(this);
}
class T__struct_5_wrapper {
    public var __t__ : T__struct_5;
    public function new(__t__) this.__t__ = __t__;
    public function __underlying__():AnyInterface return Go.toInterface(this);
}
class T__struct_6_wrapper {
    public var __t__ : T__struct_6;
    public function new(__t__) this.__t__ = __t__;
    public function __underlying__():AnyInterface return Go.toInterface(this);
}
class T__struct_7_wrapper {
    public var __t__ : T__struct_7;
    public function new(__t__) this.__t__ = __t__;
    public function __underlying__():AnyInterface return Go.toInterface(this);
}
class T__struct_8_wrapper {
    public var __t__ : T__struct_8;
    public function new(__t__) this.__t__ = __t__;
    public function __underlying__():AnyInterface return Go.toInterface(this);
}
class T_encoding_wrapper {
    public var __t__ : T_encoding;
    public function new(__t__) this.__t__ = __t__;
    public function __underlying__():AnyInterface return Go.toInterface(this);
}
class EscapeError_wrapper {
    @:keep
    public function error():GoString {
        var _e = __t__;
        _e;
        return ((("invalid URL escape " : GoString))) + stdgo.strconv.Strconv.quote(((_e : GoString)));
    }
    public var __t__ : EscapeError;
    public function new(__t__) this.__t__ = __t__;
    public function __underlying__():AnyInterface return Go.toInterface(this);
}
@:keep class EscapeError_static_extension {
    @:keep
    public static function error( _e:EscapeError):GoString {
        _e;
        return ((("invalid URL escape " : GoString))) + stdgo.strconv.Strconv.quote(((_e : GoString)));
    }
}
class InvalidHostError_wrapper {
    @:keep
    public function error():GoString {
        var _e = __t__;
        _e;
        return (((("invalid character " : GoString))) + stdgo.strconv.Strconv.quote(((_e : GoString)))) + (((" in host name" : GoString)));
    }
    public var __t__ : InvalidHostError;
    public function new(__t__) this.__t__ = __t__;
    public function __underlying__():AnyInterface return Go.toInterface(this);
}
@:keep class InvalidHostError_static_extension {
    @:keep
    public static function error( _e:InvalidHostError):GoString {
        _e;
        return (((("invalid character " : GoString))) + stdgo.strconv.Strconv.quote(((_e : GoString)))) + (((" in host name" : GoString)));
    }
}
class Values_wrapper {
    @:keep
    public function encode():GoString {
        var _v = __t__;
        _v;
        if (_v == null) {
            return ((("" : GoString)));
        };
        var _buf:stdgo.strings.Strings.Builder = new stdgo.strings.Strings.Builder();
        var _keys:Slice<GoString> = new Slice<GoString>(...[for (i in 0 ... ((((0 : GoInt)) : GoInt)).toBasic()) (("" : GoString))]).__setCap__((((_v != null ? _v.length : ((0 : GoInt))) : GoInt)).toBasic());
        for (_k => _ in _v) {
            _keys = (_keys != null ? _keys.__append__(_k) : new Slice<GoString>(_k));
        };
        stdgo.sort.Sort.strings(_keys);
        for (_0 => _k in _keys) {
            var _vs:Slice<GoString> = (_v != null ? _v[_k] : ((null : Slice<GoString>)));
            var _keyEscaped:GoString = queryEscape(_k);
            for (_1 => _v in _vs) {
                if (_buf.len() > ((0 : GoInt))) {
                    _buf.writeByte(((((("&" : GoString))).code : GoRune)));
                };
                _buf.writeString(_keyEscaped);
                _buf.writeByte(((((("=" : GoString))).code : GoRune)));
                _buf.writeString(queryEscape(_v));
            };
        };
        return ((_buf.toString() : GoString));
    }
    @:keep
    public function has(_key:GoString):Bool {
        var _v = __t__;
        _v;
        var __tmp__ = (_v != null && _v.__exists__(_key) ? { value : _v[_key], ok : true } : { value : ((null : Slice<GoString>)), ok : false }), _0:Slice<GoString> = __tmp__.value, _ok:Bool = __tmp__.ok;
        return _ok;
    }
    @:keep
    public function del(_key:GoString):Void {
        var _v = __t__;
        _v;
        if (_v != null) _v.__remove__(_key);
    }
    @:keep
    public function add(_key:GoString, _value:GoString):Void {
        var _v = __t__;
        _v;
        if (_v != null) _v[_key] = ((_v != null ? _v[_key] : ((null : Slice<GoString>))) != null ? (_v != null ? _v[_key] : ((null : Slice<GoString>))).__append__(_value) : new Slice<GoString>(_value));
    }
    @:keep
    public function set(_key:GoString, _value:GoString):Void {
        var _v = __t__;
        _v;
        if (_v != null) _v[_key] = ((new Slice<GoString>(_value) : Slice<GoString>));
    }
    @:keep
    public function get(_key:GoString):GoString {
        var _v = __t__;
        _v;
        if (_v == null) {
            return ((("" : GoString)));
        };
        var _vs:Slice<GoString> = (_v != null ? _v[_key] : ((null : Slice<GoString>)));
        if ((_vs != null ? _vs.length : ((0 : GoInt))) == ((0 : GoInt))) {
            return ((("" : GoString)));
        };
        return (_vs != null ? _vs[((0 : GoInt))] : (("" : GoString)));
    }
    public var __t__ : Values;
    public function new(__t__) this.__t__ = __t__;
    public function __underlying__():AnyInterface return Go.toInterface(this);
}
@:keep class Values_static_extension {
    @:keep
    public static function encode( _v:Values):GoString {
        _v;
        if (_v == null) {
            return ((("" : GoString)));
        };
        var _buf:stdgo.strings.Strings.Builder = new stdgo.strings.Strings.Builder();
        var _keys:Slice<GoString> = new Slice<GoString>(...[for (i in 0 ... ((((0 : GoInt)) : GoInt)).toBasic()) (("" : GoString))]).__setCap__((((_v != null ? _v.length : ((0 : GoInt))) : GoInt)).toBasic());
        for (_k => _ in _v) {
            _keys = (_keys != null ? _keys.__append__(_k) : new Slice<GoString>(_k));
        };
        stdgo.sort.Sort.strings(_keys);
        for (_0 => _k in _keys) {
            var _vs:Slice<GoString> = (_v != null ? _v[_k] : ((null : Slice<GoString>)));
            var _keyEscaped:GoString = queryEscape(_k);
            for (_1 => _v in _vs) {
                if (_buf.len() > ((0 : GoInt))) {
                    _buf.writeByte(((((("&" : GoString))).code : GoRune)));
                };
                _buf.writeString(_keyEscaped);
                _buf.writeByte(((((("=" : GoString))).code : GoRune)));
                _buf.writeString(queryEscape(_v));
            };
        };
        return ((_buf.toString() : GoString));
    }
    @:keep
    public static function has( _v:Values, _key:GoString):Bool {
        _v;
        var __tmp__ = (_v != null && _v.__exists__(_key) ? { value : _v[_key], ok : true } : { value : ((null : Slice<GoString>)), ok : false }), _0:Slice<GoString> = __tmp__.value, _ok:Bool = __tmp__.ok;
        return _ok;
    }
    @:keep
    public static function del( _v:Values, _key:GoString):Void {
        _v;
        if (_v != null) _v.__remove__(_key);
    }
    @:keep
    public static function add( _v:Values, _key:GoString, _value:GoString):Void {
        _v;
        if (_v != null) _v[_key] = ((_v != null ? _v[_key] : ((null : Slice<GoString>))) != null ? (_v != null ? _v[_key] : ((null : Slice<GoString>))).__append__(_value) : new Slice<GoString>(_value));
    }
    @:keep
    public static function set( _v:Values, _key:GoString, _value:GoString):Void {
        _v;
        if (_v != null) _v[_key] = ((new Slice<GoString>(_value) : Slice<GoString>));
    }
    @:keep
    public static function get( _v:Values, _key:GoString):GoString {
        _v;
        if (_v == null) {
            return ((("" : GoString)));
        };
        var _vs:Slice<GoString> = (_v != null ? _v[_key] : ((null : Slice<GoString>)));
        if ((_vs != null ? _vs.length : ((0 : GoInt))) == ((0 : GoInt))) {
            return ((("" : GoString)));
        };
        return (_vs != null ? _vs[((0 : GoInt))] : (("" : GoString)));
    }
}
