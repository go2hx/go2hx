package stdgo;
/**
    Package strings implements simple functions to manipulate UTF-8 encoded strings.
    
    For information about UTF-8 strings in Go, see https://blog.golang.org/strings.
**/
private var __go2hxdoc__package : Bool;
@:forward @:forward.new abstract T_replacer_static_extension(stdgo._internal.strings.Strings.T_replacer_static_extension) from stdgo._internal.strings.Strings.T_replacer_static_extension to stdgo._internal.strings.Strings.T_replacer_static_extension {

}
typedef T_replacer = stdgo._internal.strings.Strings.T_replacer;
@:forward @:forward.new abstract Builder(stdgo._internal.strings.Strings.Builder) from stdgo._internal.strings.Strings.Builder to stdgo._internal.strings.Strings.Builder {

}
@:forward @:forward.new abstract Reader(stdgo._internal.strings.Strings.Reader) from stdgo._internal.strings.Strings.Reader to stdgo._internal.strings.Strings.Reader {

}
@:forward @:forward.new abstract Replacer(stdgo._internal.strings.Strings.Replacer) from stdgo._internal.strings.Strings.Replacer to stdgo._internal.strings.Strings.Replacer {

}
@:forward @:forward.new abstract T_trieNode(stdgo._internal.strings.Strings.T_trieNode) from stdgo._internal.strings.Strings.T_trieNode to stdgo._internal.strings.Strings.T_trieNode {

}
@:forward @:forward.new abstract T_genericReplacer(stdgo._internal.strings.Strings.T_genericReplacer) from stdgo._internal.strings.Strings.T_genericReplacer to stdgo._internal.strings.Strings.T_genericReplacer {

}
@:forward @:forward.new abstract T_stringWriter(stdgo._internal.strings.Strings.T_stringWriter) from stdgo._internal.strings.Strings.T_stringWriter to stdgo._internal.strings.Strings.T_stringWriter {

}
@:forward @:forward.new abstract T_singleStringReplacer(stdgo._internal.strings.Strings.T_singleStringReplacer) from stdgo._internal.strings.Strings.T_singleStringReplacer to stdgo._internal.strings.Strings.T_singleStringReplacer {

}
@:forward @:forward.new abstract T_byteStringReplacer(stdgo._internal.strings.Strings.T_byteStringReplacer) from stdgo._internal.strings.Strings.T_byteStringReplacer to stdgo._internal.strings.Strings.T_byteStringReplacer {

}
@:forward @:forward.new abstract T_stringFinder(stdgo._internal.strings.Strings.T_stringFinder) from stdgo._internal.strings.Strings.T_stringFinder to stdgo._internal.strings.Strings.T_stringFinder {

}
typedef T_appendSliceWriter = stdgo._internal.strings.Strings.T_appendSliceWriter;
typedef T_byteReplacer = stdgo._internal.strings.Strings.T_byteReplacer;
typedef T_asciiSet = stdgo._internal.strings.Strings.T_asciiSet;
/**
    Clone returns a fresh copy of s.
    It guarantees to make a copy of s into a new allocation,
    which can be important when retaining only a small substring
    of a much larger string. Using Clone can help such programs
    use less memory. Of course, since using Clone makes a copy,
    overuse of Clone can make programs use more memory.
    Clone should typically be used only rarely, and only when
    profiling indicates that it is needed.
    For strings of length zero the string "" will be returned
    and no allocation is made.
**/
function clone(s:String):String {
        return stdgo._internal.strings.Strings.clone(s);
    }
/**
    Compare returns an integer comparing two strings lexicographically.
    The result will be 0 if a == b, -1 if a < b, and +1 if a > b.
    
    Compare is included only for symmetry with package bytes.
    It is usually clearer and always faster to use the built-in
    string comparison operators ==, <, >, and so on.
**/
function compare(a:String, b:String):StdTypes.Int {
        return stdgo._internal.strings.Strings.compare(a, b);
    }
function stringFind(pattern:String, text:String):StdTypes.Int {
        return stdgo._internal.strings.Strings.stringFind(pattern, text);
    }
function dumpTables(pattern:String):stdgo.Tuple<Array<StdTypes.Int>, Array<StdTypes.Int>> {
        return {
            final obj = stdgo._internal.strings.Strings.dumpTables(pattern);
            { _0 : [for (i in obj._0) i], _1 : [for (i in obj._1) i] };
        };
    }
/**
    NewReader returns a new Reader reading from s.
    It is similar to bytes.NewBufferString but more efficient and non-writable.
**/
function newReader(s:String):Reader {
        return stdgo._internal.strings.Strings.newReader(s);
    }
/**
    NewReplacer returns a new Replacer from a list of old, new string
    pairs. Replacements are performed in the order they appear in the
    target string, without overlapping matches. The old string
    comparisons are done in argument order.
    
    NewReplacer panics if given an odd number of arguments.
**/
function newReplacer(oldnew:haxe.Rest<String>):Replacer {
        return stdgo._internal.strings.Strings.newReplacer(...oldnew);
    }
/**
    Count counts the number of non-overlapping instances of substr in s.
    If substr is an empty string, Count returns 1 + the number of Unicode code points in s.
**/
function count(s:String, substr:String):StdTypes.Int {
        return stdgo._internal.strings.Strings.count(s, substr);
    }
/**
    Contains reports whether substr is within s.
**/
function contains(s:String, substr:String):Bool {
        return stdgo._internal.strings.Strings.contains(s, substr);
    }
/**
    ContainsAny reports whether any Unicode code points in chars are within s.
**/
function containsAny(s:String, chars:String):Bool {
        return stdgo._internal.strings.Strings.containsAny(s, chars);
    }
/**
    ContainsRune reports whether the Unicode code point r is within s.
**/
function containsRune(s:String, r:StdTypes.Int):Bool {
        return stdgo._internal.strings.Strings.containsRune(s, r);
    }
/**
    ContainsFunc reports whether any Unicode code points r within s satisfy f(r).
**/
function containsFunc(s:String, f:stdgo.GoRune -> Bool):Bool {
        final f = f;
        return stdgo._internal.strings.Strings.containsFunc(s, f);
    }
/**
    LastIndex returns the index of the last instance of substr in s, or -1 if substr is not present in s.
**/
function lastIndex(s:String, substr:String):StdTypes.Int {
        return stdgo._internal.strings.Strings.lastIndex(s, substr);
    }
/**
    IndexByte returns the index of the first instance of c in s, or -1 if c is not present in s.
**/
function indexByte(s:String, c:StdTypes.Int):StdTypes.Int {
        return stdgo._internal.strings.Strings.indexByte(s, c);
    }
/**
    IndexRune returns the index of the first instance of the Unicode code point
    r, or -1 if rune is not present in s.
    If r is utf8.RuneError, it returns the first instance of any
    invalid UTF-8 byte sequence.
**/
function indexRune(s:String, r:StdTypes.Int):StdTypes.Int {
        return stdgo._internal.strings.Strings.indexRune(s, r);
    }
/**
    IndexAny returns the index of the first instance of any Unicode code point
    from chars in s, or -1 if no Unicode code point from chars is present in s.
**/
function indexAny(s:String, chars:String):StdTypes.Int {
        return stdgo._internal.strings.Strings.indexAny(s, chars);
    }
/**
    LastIndexAny returns the index of the last instance of any Unicode code
    point from chars in s, or -1 if no Unicode code point from chars is
    present in s.
**/
function lastIndexAny(s:String, chars:String):StdTypes.Int {
        return stdgo._internal.strings.Strings.lastIndexAny(s, chars);
    }
/**
    LastIndexByte returns the index of the last instance of c in s, or -1 if c is not present in s.
**/
function lastIndexByte(s:String, c:StdTypes.Int):StdTypes.Int {
        return stdgo._internal.strings.Strings.lastIndexByte(s, c);
    }
/**
    SplitN slices s into substrings separated by sep and returns a slice of
    the substrings between those separators.
    
    The count determines the number of substrings to return:
    
    	n > 0: at most n substrings; the last substring will be the unsplit remainder.
    	n == 0: the result is nil (zero substrings)
    	n < 0: all substrings
    
    Edge cases for s and sep (for example, empty strings) are handled
    as described in the documentation for Split.
    
    To split around the first instance of a separator, see Cut.
**/
function splitN(s:String, sep:String, n:StdTypes.Int):Array<String> {
        return [for (i in stdgo._internal.strings.Strings.splitN(s, sep, n)) i];
    }
/**
    SplitAfterN slices s into substrings after each instance of sep and
    returns a slice of those substrings.
    
    The count determines the number of substrings to return:
    
    	n > 0: at most n substrings; the last substring will be the unsplit remainder.
    	n == 0: the result is nil (zero substrings)
    	n < 0: all substrings
    
    Edge cases for s and sep (for example, empty strings) are handled
    as described in the documentation for SplitAfter.
**/
function splitAfterN(s:String, sep:String, n:StdTypes.Int):Array<String> {
        return [for (i in stdgo._internal.strings.Strings.splitAfterN(s, sep, n)) i];
    }
/**
    Split slices s into all substrings separated by sep and returns a slice of
    the substrings between those separators.
    
    If s does not contain sep and sep is not empty, Split returns a
    slice of length 1 whose only element is s.
    
    If sep is empty, Split splits after each UTF-8 sequence. If both s
    and sep are empty, Split returns an empty slice.
    
    It is equivalent to SplitN with a count of -1.
    
    To split around the first instance of a separator, see Cut.
**/
function split(s:String, sep:String):Array<String> {
        return [for (i in stdgo._internal.strings.Strings.split(s, sep)) i];
    }
/**
    SplitAfter slices s into all substrings after each instance of sep and
    returns a slice of those substrings.
    
    If s does not contain sep and sep is not empty, SplitAfter returns
    a slice of length 1 whose only element is s.
    
    If sep is empty, SplitAfter splits after each UTF-8 sequence. If
    both s and sep are empty, SplitAfter returns an empty slice.
    
    It is equivalent to SplitAfterN with a count of -1.
**/
function splitAfter(s:String, sep:String):Array<String> {
        return [for (i in stdgo._internal.strings.Strings.splitAfter(s, sep)) i];
    }
/**
    Fields splits the string s around each instance of one or more consecutive white space
    characters, as defined by unicode.IsSpace, returning a slice of substrings of s or an
    empty slice if s contains only white space.
**/
function fields(s:String):Array<String> {
        return [for (i in stdgo._internal.strings.Strings.fields(s)) i];
    }
@:forward @:forward.new abstract T_fieldsFunc_1___localname___span(stdgo._internal.strings.Strings.T_fieldsFunc_1___localname___span) from stdgo._internal.strings.Strings.T_fieldsFunc_1___localname___span to stdgo._internal.strings.Strings.T_fieldsFunc_1___localname___span {

}
/**
    FieldsFunc splits the string s at each run of Unicode code points c satisfying f(c)
    and returns an array of slices of s. If all code points in s satisfy f(c) or the
    string is empty, an empty slice is returned.
    
    FieldsFunc makes no guarantees about the order in which it calls f(c)
    and assumes that f always returns the same value for a given c.
**/
function fieldsFunc(s:String, f:stdgo.GoRune -> Bool):Array<String> {
        final f = f;
        return [for (i in stdgo._internal.strings.Strings.fieldsFunc(s, f)) i];
    }
/**
    Join concatenates the elements of its first argument to create a single string. The separator
    string sep is placed between elements in the resulting string.
**/
function join(elems:Array<String>, sep:String):String {
        final elems = ([for (i in elems) i] : stdgo.Slice<stdgo.GoString>);
        return stdgo._internal.strings.Strings.join(elems, sep);
    }
/**
    HasPrefix tests whether the string s begins with prefix.
**/
function hasPrefix(s:String, prefix:String):Bool {
        return stdgo._internal.strings.Strings.hasPrefix(s, prefix);
    }
/**
    HasSuffix tests whether the string s ends with suffix.
**/
function hasSuffix(s:String, suffix:String):Bool {
        return stdgo._internal.strings.Strings.hasSuffix(s, suffix);
    }
/**
    Map returns a copy of the string s with all its characters modified
    according to the mapping function. If mapping returns a negative value, the character is
    dropped from the string with no replacement.
**/
function map_(mapping:stdgo.GoRune -> stdgo.GoRune, s:String):String {
        final mapping = mapping;
        return stdgo._internal.strings.Strings.map_(mapping, s);
    }
/**
    Repeat returns a new string consisting of count copies of the string s.
    
    It panics if count is negative or if the result of (len(s) * count)
    overflows.
**/
function repeat(s:String, count:StdTypes.Int):String {
        return stdgo._internal.strings.Strings.repeat(s, count);
    }
/**
    ToUpper returns s with all Unicode letters mapped to their upper case.
**/
function toUpper(s:String):String {
        return stdgo._internal.strings.Strings.toUpper(s);
    }
/**
    ToLower returns s with all Unicode letters mapped to their lower case.
**/
function toLower(s:String):String {
        return stdgo._internal.strings.Strings.toLower(s);
    }
/**
    ToTitle returns a copy of the string s with all Unicode letters mapped to
    their Unicode title case.
**/
function toTitle(s:String):String {
        return stdgo._internal.strings.Strings.toTitle(s);
    }
/**
    ToUpperSpecial returns a copy of the string s with all Unicode letters mapped to their
    upper case using the case mapping specified by c.
**/
function toUpperSpecial(c:stdgo._internal.unicode.Unicode.SpecialCase, s:String):String {
        return stdgo._internal.strings.Strings.toUpperSpecial(c, s);
    }
/**
    ToLowerSpecial returns a copy of the string s with all Unicode letters mapped to their
    lower case using the case mapping specified by c.
**/
function toLowerSpecial(c:stdgo._internal.unicode.Unicode.SpecialCase, s:String):String {
        return stdgo._internal.strings.Strings.toLowerSpecial(c, s);
    }
/**
    ToTitleSpecial returns a copy of the string s with all Unicode letters mapped to their
    Unicode title case, giving priority to the special casing rules.
**/
function toTitleSpecial(c:stdgo._internal.unicode.Unicode.SpecialCase, s:String):String {
        return stdgo._internal.strings.Strings.toTitleSpecial(c, s);
    }
/**
    ToValidUTF8 returns a copy of the string s with each run of invalid UTF-8 byte sequences
    replaced by the replacement string, which may be empty.
**/
function toValidUTF8(s:String, replacement:String):String {
        return stdgo._internal.strings.Strings.toValidUTF8(s, replacement);
    }
/**
    Title returns a copy of the string s with all Unicode letters that begin words
    mapped to their Unicode title case.
    
    Deprecated: The rule Title uses for word boundaries does not handle Unicode
    punctuation properly. Use golang.org/x/text/cases instead.
**/
function title(s:String):String {
        return stdgo._internal.strings.Strings.title(s);
    }
/**
    TrimLeftFunc returns a slice of the string s with all leading
    Unicode code points c satisfying f(c) removed.
**/
function trimLeftFunc(s:String, f:stdgo.GoRune -> Bool):String {
        final f = f;
        return stdgo._internal.strings.Strings.trimLeftFunc(s, f);
    }
/**
    TrimRightFunc returns a slice of the string s with all trailing
    Unicode code points c satisfying f(c) removed.
**/
function trimRightFunc(s:String, f:stdgo.GoRune -> Bool):String {
        final f = f;
        return stdgo._internal.strings.Strings.trimRightFunc(s, f);
    }
/**
    TrimFunc returns a slice of the string s with all leading
    and trailing Unicode code points c satisfying f(c) removed.
**/
function trimFunc(s:String, f:stdgo.GoRune -> Bool):String {
        final f = f;
        return stdgo._internal.strings.Strings.trimFunc(s, f);
    }
/**
    IndexFunc returns the index into s of the first Unicode
    code point satisfying f(c), or -1 if none do.
**/
function indexFunc(s:String, f:stdgo.GoRune -> Bool):StdTypes.Int {
        final f = f;
        return stdgo._internal.strings.Strings.indexFunc(s, f);
    }
/**
    LastIndexFunc returns the index into s of the last
    Unicode code point satisfying f(c), or -1 if none do.
**/
function lastIndexFunc(s:String, f:stdgo.GoRune -> Bool):StdTypes.Int {
        final f = f;
        return stdgo._internal.strings.Strings.lastIndexFunc(s, f);
    }
/**
    Trim returns a slice of the string s with all leading and
    trailing Unicode code points contained in cutset removed.
**/
function trim(s:String, cutset:String):String {
        return stdgo._internal.strings.Strings.trim(s, cutset);
    }
/**
    TrimLeft returns a slice of the string s with all leading
    Unicode code points contained in cutset removed.
    
    To remove a prefix, use TrimPrefix instead.
**/
function trimLeft(s:String, cutset:String):String {
        return stdgo._internal.strings.Strings.trimLeft(s, cutset);
    }
/**
    TrimRight returns a slice of the string s, with all trailing
    Unicode code points contained in cutset removed.
    
    To remove a suffix, use TrimSuffix instead.
**/
function trimRight(s:String, cutset:String):String {
        return stdgo._internal.strings.Strings.trimRight(s, cutset);
    }
/**
    TrimSpace returns a slice of the string s, with all leading
    and trailing white space removed, as defined by Unicode.
**/
function trimSpace(s:String):String {
        return stdgo._internal.strings.Strings.trimSpace(s);
    }
/**
    TrimPrefix returns s without the provided leading prefix string.
    If s doesn't start with prefix, s is returned unchanged.
**/
function trimPrefix(s:String, prefix:String):String {
        return stdgo._internal.strings.Strings.trimPrefix(s, prefix);
    }
/**
    TrimSuffix returns s without the provided trailing suffix string.
    If s doesn't end with suffix, s is returned unchanged.
**/
function trimSuffix(s:String, suffix:String):String {
        return stdgo._internal.strings.Strings.trimSuffix(s, suffix);
    }
/**
    Replace returns a copy of the string s with the first n
    non-overlapping instances of old replaced by new.
    If old is empty, it matches at the beginning of the string
    and after each UTF-8 sequence, yielding up to k+1 replacements
    for a k-rune string.
    If n < 0, there is no limit on the number of replacements.
**/
function replace(s:String, old:String, _new:String, n:StdTypes.Int):String {
        return stdgo._internal.strings.Strings.replace(s, old, _new, n);
    }
/**
    ReplaceAll returns a copy of the string s with all
    non-overlapping instances of old replaced by new.
    If old is empty, it matches at the beginning of the string
    and after each UTF-8 sequence, yielding up to k+1 replacements
    for a k-rune string.
**/
function replaceAll(s:String, old:String, _new:String):String {
        return stdgo._internal.strings.Strings.replaceAll(s, old, _new);
    }
/**
    EqualFold reports whether s and t, interpreted as UTF-8 strings,
    are equal under simple Unicode case-folding, which is a more general
    form of case-insensitivity.
**/
function equalFold(s:String, t:String):Bool {
        return stdgo._internal.strings.Strings.equalFold(s, t);
    }
/**
    Index returns the index of the first instance of substr in s, or -1 if substr is not present in s.
**/
function index(s:String, substr:String):StdTypes.Int {
        return stdgo._internal.strings.Strings.index(s, substr);
    }
/**
    Cut slices s around the first instance of sep,
    returning the text before and after sep.
    The found result reports whether sep appears in s.
    If sep does not appear in s, cut returns s, "", false.
**/
function cut(s:String, sep:String):stdgo.Tuple.Tuple3<String, String, Bool> {
        return {
            final obj = stdgo._internal.strings.Strings.cut(s, sep);
            { _0 : obj._0, _1 : obj._1, _2 : obj._2 };
        };
    }
/**
    CutPrefix returns s without the provided leading prefix string
    and reports whether it found the prefix.
    If s doesn't start with prefix, CutPrefix returns s, false.
    If prefix is the empty string, CutPrefix returns s, true.
**/
function cutPrefix(s:String, prefix:String):stdgo.Tuple<String, Bool> {
        return {
            final obj = stdgo._internal.strings.Strings.cutPrefix(s, prefix);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
/**
    CutSuffix returns s without the provided ending suffix string
    and reports whether it found the suffix.
    If s doesn't end with suffix, CutSuffix returns s, false.
    If suffix is the empty string, CutSuffix returns s, true.
**/
function cutSuffix(s:String, suffix:String):stdgo.Tuple<String, Bool> {
        return {
            final obj = stdgo._internal.strings.Strings.cutSuffix(s, suffix);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
@:forward @:forward.new abstract Builder_asInterface(stdgo._internal.strings.Strings.Builder_asInterface) from stdgo._internal.strings.Strings.Builder_asInterface to stdgo._internal.strings.Strings.Builder_asInterface {

}
@:forward @:forward.new abstract Builder_static_extension(stdgo._internal.strings.Strings.Builder_static_extension) from stdgo._internal.strings.Strings.Builder_static_extension to stdgo._internal.strings.Strings.Builder_static_extension {

}
@:forward @:forward.new abstract Reader_asInterface(stdgo._internal.strings.Strings.Reader_asInterface) from stdgo._internal.strings.Strings.Reader_asInterface to stdgo._internal.strings.Strings.Reader_asInterface {

}
@:forward @:forward.new abstract Reader_static_extension(stdgo._internal.strings.Strings.Reader_static_extension) from stdgo._internal.strings.Strings.Reader_static_extension to stdgo._internal.strings.Strings.Reader_static_extension {

}
@:forward @:forward.new abstract Replacer_asInterface(stdgo._internal.strings.Strings.Replacer_asInterface) from stdgo._internal.strings.Strings.Replacer_asInterface to stdgo._internal.strings.Strings.Replacer_asInterface {

}
@:forward @:forward.new abstract Replacer_static_extension(stdgo._internal.strings.Strings.Replacer_static_extension) from stdgo._internal.strings.Strings.Replacer_static_extension to stdgo._internal.strings.Strings.Replacer_static_extension {

}
@:forward @:forward.new abstract T_trieNode_asInterface(stdgo._internal.strings.Strings.T_trieNode_asInterface) from stdgo._internal.strings.Strings.T_trieNode_asInterface to stdgo._internal.strings.Strings.T_trieNode_asInterface {

}
@:forward @:forward.new abstract T_trieNode_static_extension(stdgo._internal.strings.Strings.T_trieNode_static_extension) from stdgo._internal.strings.Strings.T_trieNode_static_extension to stdgo._internal.strings.Strings.T_trieNode_static_extension {

}
@:forward @:forward.new abstract T_genericReplacer_asInterface(stdgo._internal.strings.Strings.T_genericReplacer_asInterface) from stdgo._internal.strings.Strings.T_genericReplacer_asInterface to stdgo._internal.strings.Strings.T_genericReplacer_asInterface {

}
@:forward @:forward.new abstract T_genericReplacer_static_extension(stdgo._internal.strings.Strings.T_genericReplacer_static_extension) from stdgo._internal.strings.Strings.T_genericReplacer_static_extension to stdgo._internal.strings.Strings.T_genericReplacer_static_extension {

}
@:forward @:forward.new abstract T_stringWriter_asInterface(stdgo._internal.strings.Strings.T_stringWriter_asInterface) from stdgo._internal.strings.Strings.T_stringWriter_asInterface to stdgo._internal.strings.Strings.T_stringWriter_asInterface {

}
@:forward @:forward.new abstract T_stringWriter_static_extension(stdgo._internal.strings.Strings.T_stringWriter_static_extension) from stdgo._internal.strings.Strings.T_stringWriter_static_extension to stdgo._internal.strings.Strings.T_stringWriter_static_extension {

}
@:forward @:forward.new abstract T_singleStringReplacer_asInterface(stdgo._internal.strings.Strings.T_singleStringReplacer_asInterface) from stdgo._internal.strings.Strings.T_singleStringReplacer_asInterface to stdgo._internal.strings.Strings.T_singleStringReplacer_asInterface {

}
@:forward @:forward.new abstract T_singleStringReplacer_static_extension(stdgo._internal.strings.Strings.T_singleStringReplacer_static_extension) from stdgo._internal.strings.Strings.T_singleStringReplacer_static_extension to stdgo._internal.strings.Strings.T_singleStringReplacer_static_extension {

}
@:forward @:forward.new abstract T_byteStringReplacer_asInterface(stdgo._internal.strings.Strings.T_byteStringReplacer_asInterface) from stdgo._internal.strings.Strings.T_byteStringReplacer_asInterface to stdgo._internal.strings.Strings.T_byteStringReplacer_asInterface {

}
@:forward @:forward.new abstract T_byteStringReplacer_static_extension(stdgo._internal.strings.Strings.T_byteStringReplacer_static_extension) from stdgo._internal.strings.Strings.T_byteStringReplacer_static_extension to stdgo._internal.strings.Strings.T_byteStringReplacer_static_extension {

}
@:forward @:forward.new abstract T_stringFinder_asInterface(stdgo._internal.strings.Strings.T_stringFinder_asInterface) from stdgo._internal.strings.Strings.T_stringFinder_asInterface to stdgo._internal.strings.Strings.T_stringFinder_asInterface {

}
@:forward @:forward.new abstract T_stringFinder_static_extension(stdgo._internal.strings.Strings.T_stringFinder_static_extension) from stdgo._internal.strings.Strings.T_stringFinder_static_extension to stdgo._internal.strings.Strings.T_stringFinder_static_extension {

}
@:forward @:forward.new abstract T_appendSliceWriter_asInterface(stdgo._internal.strings.Strings.T_appendSliceWriter_asInterface) from stdgo._internal.strings.Strings.T_appendSliceWriter_asInterface to stdgo._internal.strings.Strings.T_appendSliceWriter_asInterface {

}
@:forward @:forward.new abstract T_appendSliceWriter_static_extension(stdgo._internal.strings.Strings.T_appendSliceWriter_static_extension) from stdgo._internal.strings.Strings.T_appendSliceWriter_static_extension to stdgo._internal.strings.Strings.T_appendSliceWriter_static_extension {

}
@:forward @:forward.new abstract T_byteReplacer_asInterface(stdgo._internal.strings.Strings.T_byteReplacer_asInterface) from stdgo._internal.strings.Strings.T_byteReplacer_asInterface to stdgo._internal.strings.Strings.T_byteReplacer_asInterface {

}
@:forward @:forward.new abstract T_byteReplacer_static_extension(stdgo._internal.strings.Strings.T_byteReplacer_static_extension) from stdgo._internal.strings.Strings.T_byteReplacer_static_extension to stdgo._internal.strings.Strings.T_byteReplacer_static_extension {

}
@:forward @:forward.new abstract T_asciiSet_asInterface(stdgo._internal.strings.Strings.T_asciiSet_asInterface) from stdgo._internal.strings.Strings.T_asciiSet_asInterface to stdgo._internal.strings.Strings.T_asciiSet_asInterface {

}
@:forward @:forward.new abstract T_asciiSet_static_extension(stdgo._internal.strings.Strings.T_asciiSet_static_extension) from stdgo._internal.strings.Strings.T_asciiSet_static_extension to stdgo._internal.strings.Strings.T_asciiSet_static_extension {

}
