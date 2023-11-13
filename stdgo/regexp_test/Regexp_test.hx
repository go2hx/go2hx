package stdgo.regexp_test;
import stdgo.regexp.Regexp;
function example():Void {
        var _validID:stdgo.StdGoTypes.Ref<stdgo.regexp.Regexp.Regexp> = stdgo.regexp.Regexp.mustCompile(("^[a-z]+\\[[0-9]+\\]$" : stdgo.GoString)?.__copy__());
        stdgo.fmt.Fmt.println(stdgo.Go.toInterface(_validID.matchString(("adam[23]" : stdgo.GoString)?.__copy__())));
        stdgo.fmt.Fmt.println(stdgo.Go.toInterface(_validID.matchString(("eve[7]" : stdgo.GoString)?.__copy__())));
        stdgo.fmt.Fmt.println(stdgo.Go.toInterface(_validID.matchString(("Job[48]" : stdgo.GoString)?.__copy__())));
        stdgo.fmt.Fmt.println(stdgo.Go.toInterface(_validID.matchString(("snakey" : stdgo.GoString)?.__copy__())));
    }
function exampleMatch():Void {
        var __tmp__ = stdgo.regexp.Regexp.match(("foo.*" : stdgo.GoString)?.__copy__(), (("seafood" : stdgo.GoString) : stdgo.Slice<stdgo.StdGoTypes.GoByte>)), _matched:Bool = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        stdgo.fmt.Fmt.println(stdgo.Go.toInterface(_matched), stdgo.Go.toInterface(_err));
        {
            var __tmp__ = stdgo.regexp.Regexp.match(("bar.*" : stdgo.GoString)?.__copy__(), (("seafood" : stdgo.GoString) : stdgo.Slice<stdgo.StdGoTypes.GoByte>));
            _matched = __tmp__._0;
            _err = __tmp__._1;
        };
        stdgo.fmt.Fmt.println(stdgo.Go.toInterface(_matched), stdgo.Go.toInterface(_err));
        {
            var __tmp__ = stdgo.regexp.Regexp.match(("a(b" : stdgo.GoString)?.__copy__(), (("seafood" : stdgo.GoString) : stdgo.Slice<stdgo.StdGoTypes.GoByte>));
            _matched = __tmp__._0;
            _err = __tmp__._1;
        };
        stdgo.fmt.Fmt.println(stdgo.Go.toInterface(_matched), stdgo.Go.toInterface(_err));
    }
function exampleMatchString():Void {
        var __tmp__ = stdgo.regexp.Regexp.matchString(("foo.*" : stdgo.GoString)?.__copy__(), ("seafood" : stdgo.GoString)?.__copy__()), _matched:Bool = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        stdgo.fmt.Fmt.println(stdgo.Go.toInterface(_matched), stdgo.Go.toInterface(_err));
        {
            var __tmp__ = stdgo.regexp.Regexp.matchString(("bar.*" : stdgo.GoString)?.__copy__(), ("seafood" : stdgo.GoString)?.__copy__());
            _matched = __tmp__._0;
            _err = __tmp__._1;
        };
        stdgo.fmt.Fmt.println(stdgo.Go.toInterface(_matched), stdgo.Go.toInterface(_err));
        {
            var __tmp__ = stdgo.regexp.Regexp.matchString(("a(b" : stdgo.GoString)?.__copy__(), ("seafood" : stdgo.GoString)?.__copy__());
            _matched = __tmp__._0;
            _err = __tmp__._1;
        };
        stdgo.fmt.Fmt.println(stdgo.Go.toInterface(_matched), stdgo.Go.toInterface(_err));
    }
function exampleQuoteMeta():Void {
        stdgo.fmt.Fmt.println(stdgo.Go.toInterface(stdgo.regexp.Regexp.quoteMeta(("Escaping symbols like: .+*?()|[]{}^$" : stdgo.GoString)?.__copy__())));
    }
function exampleRegexp_Find():Void {
        var _re = stdgo.regexp.Regexp.mustCompile(("foo.?" : stdgo.GoString)?.__copy__());
        stdgo.fmt.Fmt.printf(("%q\n" : stdgo.GoString)?.__copy__(), stdgo.Go.toInterface(_re.find((("seafood fool" : stdgo.GoString) : stdgo.Slice<stdgo.StdGoTypes.GoByte>))));
    }
function exampleRegexp_FindAll():Void {
        var _re = stdgo.regexp.Regexp.mustCompile(("foo.?" : stdgo.GoString)?.__copy__());
        stdgo.fmt.Fmt.printf(("%q\n" : stdgo.GoString)?.__copy__(), stdgo.Go.toInterface(_re.findAll((("seafood fool" : stdgo.GoString) : stdgo.Slice<stdgo.StdGoTypes.GoByte>), (-1 : stdgo.StdGoTypes.GoInt))));
    }
function exampleRegexp_FindAllSubmatch():Void {
        var _re = stdgo.regexp.Regexp.mustCompile(("foo(.?)" : stdgo.GoString)?.__copy__());
        stdgo.fmt.Fmt.printf(("%q\n" : stdgo.GoString)?.__copy__(), stdgo.Go.toInterface(_re.findAllSubmatch((("seafood fool" : stdgo.GoString) : stdgo.Slice<stdgo.StdGoTypes.GoByte>), (-1 : stdgo.StdGoTypes.GoInt))));
    }
function exampleRegexp_FindSubmatch():Void {
        var _re = stdgo.regexp.Regexp.mustCompile(("foo(.?)" : stdgo.GoString)?.__copy__());
        stdgo.fmt.Fmt.printf(("%q\n" : stdgo.GoString)?.__copy__(), stdgo.Go.toInterface(_re.findSubmatch((("seafood fool" : stdgo.GoString) : stdgo.Slice<stdgo.StdGoTypes.GoByte>))));
    }
function exampleRegexp_Match():Void {
        var _re = stdgo.regexp.Regexp.mustCompile(("foo.?" : stdgo.GoString)?.__copy__());
        stdgo.fmt.Fmt.println(stdgo.Go.toInterface(_re.match((("seafood fool" : stdgo.GoString) : stdgo.Slice<stdgo.StdGoTypes.GoByte>))));
        stdgo.fmt.Fmt.println(stdgo.Go.toInterface(_re.match((("something else" : stdgo.GoString) : stdgo.Slice<stdgo.StdGoTypes.GoByte>))));
    }
function exampleRegexp_FindString():Void {
        var _re = stdgo.regexp.Regexp.mustCompile(("foo.?" : stdgo.GoString)?.__copy__());
        stdgo.fmt.Fmt.printf(("%q\n" : stdgo.GoString)?.__copy__(), stdgo.Go.toInterface(_re.findString(("seafood fool" : stdgo.GoString)?.__copy__())));
        stdgo.fmt.Fmt.printf(("%q\n" : stdgo.GoString)?.__copy__(), stdgo.Go.toInterface(_re.findString(("meat" : stdgo.GoString)?.__copy__())));
    }
function exampleRegexp_FindStringIndex():Void {
        var _re = stdgo.regexp.Regexp.mustCompile(("ab?" : stdgo.GoString)?.__copy__());
        stdgo.fmt.Fmt.println(stdgo.Go.toInterface(_re.findStringIndex(("tablett" : stdgo.GoString)?.__copy__())));
        stdgo.fmt.Fmt.println(stdgo.Go.toInterface(_re.findStringIndex(("foo" : stdgo.GoString)?.__copy__()) == null));
    }
function exampleRegexp_FindStringSubmatch():Void {
        var _re = stdgo.regexp.Regexp.mustCompile(("a(x*)b(y|z)c" : stdgo.GoString)?.__copy__());
        stdgo.fmt.Fmt.printf(("%q\n" : stdgo.GoString)?.__copy__(), stdgo.Go.toInterface(_re.findStringSubmatch(("-axxxbyc-" : stdgo.GoString)?.__copy__())));
        stdgo.fmt.Fmt.printf(("%q\n" : stdgo.GoString)?.__copy__(), stdgo.Go.toInterface(_re.findStringSubmatch(("-abzc-" : stdgo.GoString)?.__copy__())));
    }
function exampleRegexp_FindAllString():Void {
        var _re = stdgo.regexp.Regexp.mustCompile(("a." : stdgo.GoString)?.__copy__());
        stdgo.fmt.Fmt.println(stdgo.Go.toInterface(_re.findAllString(("paranormal" : stdgo.GoString)?.__copy__(), (-1 : stdgo.StdGoTypes.GoInt))));
        stdgo.fmt.Fmt.println(stdgo.Go.toInterface(_re.findAllString(("paranormal" : stdgo.GoString)?.__copy__(), (2 : stdgo.StdGoTypes.GoInt))));
        stdgo.fmt.Fmt.println(stdgo.Go.toInterface(_re.findAllString(("graal" : stdgo.GoString)?.__copy__(), (-1 : stdgo.StdGoTypes.GoInt))));
        stdgo.fmt.Fmt.println(stdgo.Go.toInterface(_re.findAllString(("none" : stdgo.GoString)?.__copy__(), (-1 : stdgo.StdGoTypes.GoInt))));
    }
function exampleRegexp_FindAllStringSubmatch():Void {
        var _re = stdgo.regexp.Regexp.mustCompile(("a(x*)b" : stdgo.GoString)?.__copy__());
        stdgo.fmt.Fmt.printf(("%q\n" : stdgo.GoString)?.__copy__(), stdgo.Go.toInterface(_re.findAllStringSubmatch(("-ab-" : stdgo.GoString)?.__copy__(), (-1 : stdgo.StdGoTypes.GoInt))));
        stdgo.fmt.Fmt.printf(("%q\n" : stdgo.GoString)?.__copy__(), stdgo.Go.toInterface(_re.findAllStringSubmatch(("-axxb-" : stdgo.GoString)?.__copy__(), (-1 : stdgo.StdGoTypes.GoInt))));
        stdgo.fmt.Fmt.printf(("%q\n" : stdgo.GoString)?.__copy__(), stdgo.Go.toInterface(_re.findAllStringSubmatch(("-ab-axb-" : stdgo.GoString)?.__copy__(), (-1 : stdgo.StdGoTypes.GoInt))));
        stdgo.fmt.Fmt.printf(("%q\n" : stdgo.GoString)?.__copy__(), stdgo.Go.toInterface(_re.findAllStringSubmatch(("-axxb-ab-" : stdgo.GoString)?.__copy__(), (-1 : stdgo.StdGoTypes.GoInt))));
    }
function exampleRegexp_FindAllStringSubmatchIndex():Void {
        var _re = stdgo.regexp.Regexp.mustCompile(("a(x*)b" : stdgo.GoString)?.__copy__());
        stdgo.fmt.Fmt.println(stdgo.Go.toInterface(_re.findAllStringSubmatchIndex(("-ab-" : stdgo.GoString)?.__copy__(), (-1 : stdgo.StdGoTypes.GoInt))));
        stdgo.fmt.Fmt.println(stdgo.Go.toInterface(_re.findAllStringSubmatchIndex(("-axxb-" : stdgo.GoString)?.__copy__(), (-1 : stdgo.StdGoTypes.GoInt))));
        stdgo.fmt.Fmt.println(stdgo.Go.toInterface(_re.findAllStringSubmatchIndex(("-ab-axb-" : stdgo.GoString)?.__copy__(), (-1 : stdgo.StdGoTypes.GoInt))));
        stdgo.fmt.Fmt.println(stdgo.Go.toInterface(_re.findAllStringSubmatchIndex(("-axxb-ab-" : stdgo.GoString)?.__copy__(), (-1 : stdgo.StdGoTypes.GoInt))));
        stdgo.fmt.Fmt.println(stdgo.Go.toInterface(_re.findAllStringSubmatchIndex(("-foo-" : stdgo.GoString)?.__copy__(), (-1 : stdgo.StdGoTypes.GoInt))));
    }
function exampleRegexp_FindSubmatchIndex():Void {
        var _re = stdgo.regexp.Regexp.mustCompile(("a(x*)b" : stdgo.GoString)?.__copy__());
        stdgo.fmt.Fmt.println(stdgo.Go.toInterface(_re.findSubmatchIndex((("-ab-" : stdgo.GoString) : stdgo.Slice<stdgo.StdGoTypes.GoByte>))));
        stdgo.fmt.Fmt.println(stdgo.Go.toInterface(_re.findSubmatchIndex((("-axxb-" : stdgo.GoString) : stdgo.Slice<stdgo.StdGoTypes.GoByte>))));
        stdgo.fmt.Fmt.println(stdgo.Go.toInterface(_re.findSubmatchIndex((("-ab-axb-" : stdgo.GoString) : stdgo.Slice<stdgo.StdGoTypes.GoByte>))));
        stdgo.fmt.Fmt.println(stdgo.Go.toInterface(_re.findSubmatchIndex((("-axxb-ab-" : stdgo.GoString) : stdgo.Slice<stdgo.StdGoTypes.GoByte>))));
        stdgo.fmt.Fmt.println(stdgo.Go.toInterface(_re.findSubmatchIndex((("-foo-" : stdgo.GoString) : stdgo.Slice<stdgo.StdGoTypes.GoByte>))));
    }
function exampleRegexp_Longest():Void {
        var _re = stdgo.regexp.Regexp.mustCompile(("a(|b)" : stdgo.GoString)?.__copy__());
        stdgo.fmt.Fmt.println(stdgo.Go.toInterface(_re.findString(("ab" : stdgo.GoString)?.__copy__())));
        _re.longest();
        stdgo.fmt.Fmt.println(stdgo.Go.toInterface(_re.findString(("ab" : stdgo.GoString)?.__copy__())));
    }
function exampleRegexp_MatchString():Void {
        var _re = stdgo.regexp.Regexp.mustCompile(("(gopher){2}" : stdgo.GoString)?.__copy__());
        stdgo.fmt.Fmt.println(stdgo.Go.toInterface(_re.matchString(("gopher" : stdgo.GoString)?.__copy__())));
        stdgo.fmt.Fmt.println(stdgo.Go.toInterface(_re.matchString(("gophergopher" : stdgo.GoString)?.__copy__())));
        stdgo.fmt.Fmt.println(stdgo.Go.toInterface(_re.matchString(("gophergophergopher" : stdgo.GoString)?.__copy__())));
    }
function exampleRegexp_NumSubexp():Void {
        var _re0 = stdgo.regexp.Regexp.mustCompile(("a." : stdgo.GoString)?.__copy__());
        stdgo.fmt.Fmt.printf(("%d\n" : stdgo.GoString)?.__copy__(), stdgo.Go.toInterface(_re0.numSubexp()));
        var _re = stdgo.regexp.Regexp.mustCompile(("(.*)((a)b)(.*)a" : stdgo.GoString)?.__copy__());
        stdgo.fmt.Fmt.println(stdgo.Go.toInterface(_re.numSubexp()));
    }
function exampleRegexp_ReplaceAll():Void {
        var _re = stdgo.regexp.Regexp.mustCompile(("a(x*)b" : stdgo.GoString)?.__copy__());
        stdgo.fmt.Fmt.printf(("%s\n" : stdgo.GoString)?.__copy__(), stdgo.Go.toInterface(_re.replaceAll((("-ab-axxb-" : stdgo.GoString) : stdgo.Slice<stdgo.StdGoTypes.GoByte>), (("T" : stdgo.GoString) : stdgo.Slice<stdgo.StdGoTypes.GoByte>))));
        stdgo.fmt.Fmt.printf(("%s\n" : stdgo.GoString)?.__copy__(), stdgo.Go.toInterface(_re.replaceAll((("-ab-axxb-" : stdgo.GoString) : stdgo.Slice<stdgo.StdGoTypes.GoByte>), (("$1" : stdgo.GoString) : stdgo.Slice<stdgo.StdGoTypes.GoByte>))));
        stdgo.fmt.Fmt.printf(("%s\n" : stdgo.GoString)?.__copy__(), stdgo.Go.toInterface(_re.replaceAll((("-ab-axxb-" : stdgo.GoString) : stdgo.Slice<stdgo.StdGoTypes.GoByte>), (("$1W" : stdgo.GoString) : stdgo.Slice<stdgo.StdGoTypes.GoByte>))));
        stdgo.fmt.Fmt.printf(("%s\n" : stdgo.GoString)?.__copy__(), stdgo.Go.toInterface(_re.replaceAll((("-ab-axxb-" : stdgo.GoString) : stdgo.Slice<stdgo.StdGoTypes.GoByte>), (("${1}W" : stdgo.GoString) : stdgo.Slice<stdgo.StdGoTypes.GoByte>))));
    }
function exampleRegexp_ReplaceAllLiteralString():Void {
        var _re = stdgo.regexp.Regexp.mustCompile(("a(x*)b" : stdgo.GoString)?.__copy__());
        stdgo.fmt.Fmt.println(stdgo.Go.toInterface(_re.replaceAllLiteralString(("-ab-axxb-" : stdgo.GoString)?.__copy__(), ("T" : stdgo.GoString)?.__copy__())));
        stdgo.fmt.Fmt.println(stdgo.Go.toInterface(_re.replaceAllLiteralString(("-ab-axxb-" : stdgo.GoString)?.__copy__(), ("$1" : stdgo.GoString)?.__copy__())));
        stdgo.fmt.Fmt.println(stdgo.Go.toInterface(_re.replaceAllLiteralString(("-ab-axxb-" : stdgo.GoString)?.__copy__(), ("${1}" : stdgo.GoString)?.__copy__())));
    }
function exampleRegexp_ReplaceAllString():Void {
        var _re = stdgo.regexp.Regexp.mustCompile(("a(x*)b" : stdgo.GoString)?.__copy__());
        stdgo.fmt.Fmt.println(stdgo.Go.toInterface(_re.replaceAllString(("-ab-axxb-" : stdgo.GoString)?.__copy__(), ("T" : stdgo.GoString)?.__copy__())));
        stdgo.fmt.Fmt.println(stdgo.Go.toInterface(_re.replaceAllString(("-ab-axxb-" : stdgo.GoString)?.__copy__(), ("$1" : stdgo.GoString)?.__copy__())));
        stdgo.fmt.Fmt.println(stdgo.Go.toInterface(_re.replaceAllString(("-ab-axxb-" : stdgo.GoString)?.__copy__(), ("$1W" : stdgo.GoString)?.__copy__())));
        stdgo.fmt.Fmt.println(stdgo.Go.toInterface(_re.replaceAllString(("-ab-axxb-" : stdgo.GoString)?.__copy__(), ("${1}W" : stdgo.GoString)?.__copy__())));
    }
function exampleRegexp_ReplaceAllStringFunc():Void {
        var _re = stdgo.regexp.Regexp.mustCompile(("[^aeiou]" : stdgo.GoString)?.__copy__());
        stdgo.fmt.Fmt.println(stdgo.Go.toInterface(_re.replaceAllStringFunc(("seafood fool" : stdgo.GoString)?.__copy__(), stdgo.strings.Strings.toUpper)));
    }
function exampleRegexp_SubexpNames():Void {
        var _re = stdgo.regexp.Regexp.mustCompile(("(?P<first>[a-zA-Z]+) (?P<last>[a-zA-Z]+)" : stdgo.GoString)?.__copy__());
        stdgo.fmt.Fmt.println(stdgo.Go.toInterface(_re.matchString(("Alan Turing" : stdgo.GoString)?.__copy__())));
        stdgo.fmt.Fmt.printf(("%q\n" : stdgo.GoString)?.__copy__(), stdgo.Go.toInterface(_re.subexpNames()));
        var _reversed:stdgo.GoString = stdgo.fmt.Fmt.sprintf(("${%s} ${%s}" : stdgo.GoString)?.__copy__(), stdgo.Go.toInterface(_re.subexpNames()[(2 : stdgo.StdGoTypes.GoInt)]), stdgo.Go.toInterface(_re.subexpNames()[(1 : stdgo.StdGoTypes.GoInt)]))?.__copy__();
        stdgo.fmt.Fmt.println(stdgo.Go.toInterface(_reversed));
        stdgo.fmt.Fmt.println(stdgo.Go.toInterface(_re.replaceAllString(("Alan Turing" : stdgo.GoString)?.__copy__(), _reversed?.__copy__())));
    }
function exampleRegexp_SubexpIndex():Void {
        var _re = stdgo.regexp.Regexp.mustCompile(("(?P<first>[a-zA-Z]+) (?P<last>[a-zA-Z]+)" : stdgo.GoString)?.__copy__());
        stdgo.fmt.Fmt.println(stdgo.Go.toInterface(_re.matchString(("Alan Turing" : stdgo.GoString)?.__copy__())));
        var _matches = _re.findStringSubmatch(("Alan Turing" : stdgo.GoString)?.__copy__());
        var _lastIndex:stdgo.StdGoTypes.GoInt = _re.subexpIndex(("last" : stdgo.GoString)?.__copy__());
        stdgo.fmt.Fmt.printf(("last => %d\n" : stdgo.GoString)?.__copy__(), stdgo.Go.toInterface(_lastIndex));
        stdgo.fmt.Fmt.println(stdgo.Go.toInterface(_matches[(_lastIndex : stdgo.StdGoTypes.GoInt)]));
    }
function exampleRegexp_Split():Void {
        var _a = stdgo.regexp.Regexp.mustCompile(("a" : stdgo.GoString)?.__copy__());
        stdgo.fmt.Fmt.println(stdgo.Go.toInterface(_a.split(("banana" : stdgo.GoString)?.__copy__(), (-1 : stdgo.StdGoTypes.GoInt))));
        stdgo.fmt.Fmt.println(stdgo.Go.toInterface(_a.split(("banana" : stdgo.GoString)?.__copy__(), (0 : stdgo.StdGoTypes.GoInt))));
        stdgo.fmt.Fmt.println(stdgo.Go.toInterface(_a.split(("banana" : stdgo.GoString)?.__copy__(), (1 : stdgo.StdGoTypes.GoInt))));
        stdgo.fmt.Fmt.println(stdgo.Go.toInterface(_a.split(("banana" : stdgo.GoString)?.__copy__(), (2 : stdgo.StdGoTypes.GoInt))));
        var _zp = stdgo.regexp.Regexp.mustCompile(("z+" : stdgo.GoString)?.__copy__());
        stdgo.fmt.Fmt.println(stdgo.Go.toInterface(_zp.split(("pizza" : stdgo.GoString)?.__copy__(), (-1 : stdgo.StdGoTypes.GoInt))));
        stdgo.fmt.Fmt.println(stdgo.Go.toInterface(_zp.split(("pizza" : stdgo.GoString)?.__copy__(), (0 : stdgo.StdGoTypes.GoInt))));
        stdgo.fmt.Fmt.println(stdgo.Go.toInterface(_zp.split(("pizza" : stdgo.GoString)?.__copy__(), (1 : stdgo.StdGoTypes.GoInt))));
        stdgo.fmt.Fmt.println(stdgo.Go.toInterface(_zp.split(("pizza" : stdgo.GoString)?.__copy__(), (2 : stdgo.StdGoTypes.GoInt))));
    }
function exampleRegexp_Expand():Void {
        var _content = (("\n\t# comment line\n\toption1: value1\n\toption2: value2\n\n\t# another comment line\n\toption3: value3\n" : stdgo.GoString) : stdgo.Slice<stdgo.StdGoTypes.GoByte>);
        var _pattern = stdgo.regexp.Regexp.mustCompile(("(?m)(?P<key>\\w+):\\s+(?P<value>\\w+)$" : stdgo.GoString)?.__copy__());
        var _template = (("$key=$value\n" : stdgo.GoString) : stdgo.Slice<stdgo.StdGoTypes.GoByte>);
        var _result = (new stdgo.Slice<stdgo.StdGoTypes.GoUInt8>(0, 0) : stdgo.Slice<stdgo.StdGoTypes.GoUInt8>);
        for (__0 => _submatches in _pattern.findAllSubmatchIndex(_content, (-1 : stdgo.StdGoTypes.GoInt))) {
            _result = _pattern.expand(_result, _template, _content, _submatches);
        };
        stdgo.fmt.Fmt.println(stdgo.Go.toInterface((_result : stdgo.GoString)));
    }
function exampleRegexp_ExpandString():Void {
        var _content:stdgo.GoString = ("\n\t# comment line\n\toption1: value1\n\toption2: value2\n\n\t# another comment line\n\toption3: value3\n" : stdgo.GoString)?.__copy__();
        var _pattern = stdgo.regexp.Regexp.mustCompile(("(?m)(?P<key>\\w+):\\s+(?P<value>\\w+)$" : stdgo.GoString)?.__copy__());
        var _template:stdgo.GoString = ("$key=$value\n" : stdgo.GoString)?.__copy__();
        var _result = (new stdgo.Slice<stdgo.StdGoTypes.GoUInt8>(0, 0) : stdgo.Slice<stdgo.StdGoTypes.GoUInt8>);
        for (__0 => _submatches in _pattern.findAllStringSubmatchIndex(_content?.__copy__(), (-1 : stdgo.StdGoTypes.GoInt))) {
            _result = _pattern.expandString(_result, _template?.__copy__(), _content?.__copy__(), _submatches);
        };
        stdgo.fmt.Fmt.println(stdgo.Go.toInterface((_result : stdgo.GoString)));
    }
function exampleRegexp_FindIndex():Void {
        var _content = (("\n\t# comment line\n\toption1: value1\n\toption2: value2\n" : stdgo.GoString) : stdgo.Slice<stdgo.StdGoTypes.GoByte>);
        var _pattern = stdgo.regexp.Regexp.mustCompile(("(?m)(?P<key>\\w+):\\s+(?P<value>\\w+)$" : stdgo.GoString)?.__copy__());
        var _loc = _pattern.findIndex(_content);
        stdgo.fmt.Fmt.println(stdgo.Go.toInterface(_loc));
        stdgo.fmt.Fmt.println(stdgo.Go.toInterface(((_content.__slice__(_loc[(0 : stdgo.StdGoTypes.GoInt)], _loc[(1 : stdgo.StdGoTypes.GoInt)]) : stdgo.Slice<stdgo.StdGoTypes.GoUInt8>) : stdgo.GoString)));
    }
function exampleRegexp_FindAllSubmatchIndex():Void {
        var _content = (("\n\t# comment line\n\toption1: value1\n\toption2: value2\n" : stdgo.GoString) : stdgo.Slice<stdgo.StdGoTypes.GoByte>);
        var _pattern = stdgo.regexp.Regexp.mustCompile(("(?m)(?P<key>\\w+):\\s+(?P<value>\\w+)$" : stdgo.GoString)?.__copy__());
        var _allIndexes = _pattern.findAllSubmatchIndex(_content, (-1 : stdgo.StdGoTypes.GoInt));
        for (__0 => _loc in _allIndexes) {
            stdgo.fmt.Fmt.println(stdgo.Go.toInterface(_loc));
            stdgo.fmt.Fmt.println(stdgo.Go.toInterface(((_content.__slice__(_loc[(0 : stdgo.StdGoTypes.GoInt)], _loc[(1 : stdgo.StdGoTypes.GoInt)]) : stdgo.Slice<stdgo.StdGoTypes.GoUInt8>) : stdgo.GoString)));
            stdgo.fmt.Fmt.println(stdgo.Go.toInterface(((_content.__slice__(_loc[(2 : stdgo.StdGoTypes.GoInt)], _loc[(3 : stdgo.StdGoTypes.GoInt)]) : stdgo.Slice<stdgo.StdGoTypes.GoUInt8>) : stdgo.GoString)));
            stdgo.fmt.Fmt.println(stdgo.Go.toInterface(((_content.__slice__(_loc[(4 : stdgo.StdGoTypes.GoInt)], _loc[(5 : stdgo.StdGoTypes.GoInt)]) : stdgo.Slice<stdgo.StdGoTypes.GoUInt8>) : stdgo.GoString)));
        };
    }
function exampleRegexp_FindAllIndex():Void {
        var _content = (("London" : stdgo.GoString) : stdgo.Slice<stdgo.StdGoTypes.GoByte>);
        var _re = stdgo.regexp.Regexp.mustCompile(("o." : stdgo.GoString)?.__copy__());
        stdgo.fmt.Fmt.println(stdgo.Go.toInterface(_re.findAllIndex(_content, (1 : stdgo.StdGoTypes.GoInt))));
        stdgo.fmt.Fmt.println(stdgo.Go.toInterface(_re.findAllIndex(_content, (-1 : stdgo.StdGoTypes.GoInt))));
    }
