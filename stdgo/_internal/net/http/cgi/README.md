# Module stdgo._internal.net.http.cgi has compilation errors, please do not use:
```
[30;41m ERROR [0m stdgo/_internal/net/http/cgi/Cgi_requestFromMap.hx:46: characters 66-79

  46 | [2m                _r.header.set(("Content-Type" : stdgo.GoString), [0m[1m_ct?.__copy__[0m[2m());[0m
     |                                                                  [31m^^^^^^^^^^^^^[0m
     | Null<stdgo.GoString> should be stdgo.Slice<stdgo.GoString>
     | For function argument 'value'

[30;41m ERROR [0m [31m(macro) [0mstdgo/_internal/regexp/syntax/Syntax__parse.hx:418: characters 138-140

 418 | [2m                final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } = { _0 : [0m[1m_0[0m[2m, _1 : _err };[0m
     |                                                                                                                                          [31m^^[0m
     | Unknown identifier : _0


```
