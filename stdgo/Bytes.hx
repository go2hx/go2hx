package stdgo;
/**
    Package bytes implements functions for the manipulation of byte slices.
    It is analogous to the facilities of the [strings] package.
**/
private var __go2hxdoc__package : Bool;
final minRead : haxe.UInt64 = stdgo._internal.bytes.Bytes.minRead;
var errTooLarge(get, set) : stdgo.Error;
private function get_errTooLarge():stdgo.Error return stdgo._internal.bytes.Bytes.errTooLarge;
private function set_errTooLarge(v:stdgo.Error):stdgo.Error return stdgo._internal.bytes.Bytes.errTooLarge = v;
var indexBytePortable(get, set) : (stdgo.Slice<stdgo.GoUInt8>, stdgo.GoUInt8) -> stdgo.GoInt;
private function get_indexBytePortable():(stdgo.Slice<stdgo.GoUInt8>, stdgo.GoUInt8) -> stdgo.GoInt return stdgo._internal.bytes.Bytes.indexBytePortable;
private function set_indexBytePortable(v:(stdgo.Slice<stdgo.GoUInt8>, stdgo.GoUInt8) -> stdgo.GoInt):(stdgo.Slice<stdgo.GoUInt8>, stdgo.GoUInt8) -> stdgo.GoInt return stdgo._internal.bytes.Bytes.indexBytePortable = v;
@:forward @:forward.new abstract Buffer(stdgo._internal.bytes.Bytes.Buffer) from stdgo._internal.bytes.Bytes.Buffer to stdgo._internal.bytes.Bytes.Buffer {

}
@:forward @:forward.new abstract Reader(stdgo._internal.bytes.Bytes.Reader) from stdgo._internal.bytes.Bytes.Reader to stdgo._internal.bytes.Bytes.Reader {

}
typedef T_readOp = stdgo._internal.bytes.Bytes.T_readOp;
typedef T_asciiSet = stdgo._internal.bytes.Bytes.T_asciiSet;
/**
    NewBuffer creates and initializes a new Buffer using buf as its
    initial contents. The new Buffer takes ownership of buf, and the
    caller should not use buf after this call. NewBuffer is intended to
    prepare a Buffer to read existing data. It can also be used to set
    the initial size of the internal buffer for writing. To do that,
    buf should have the desired capacity but a length of zero.
    
    In most cases, new(Buffer) (or just declaring a Buffer variable) is
    sufficient to initialize a Buffer.
**/
function newBuffer(buf:Array<StdTypes.Int>):Buffer {
        final buf = ([for (i in buf) i] : stdgo.Slice<stdgo.GoByte>);
        return stdgo._internal.bytes.Bytes.newBuffer(buf);
    }
/**
    NewBufferString creates and initializes a new Buffer using string s as its
    initial contents. It is intended to prepare a buffer to read an existing
    string.
    
    In most cases, new(Buffer) (or just declaring a Buffer variable) is
    sufficient to initialize a Buffer.
**/
function newBufferString(s:String):Buffer {
        return stdgo._internal.bytes.Bytes.newBufferString(s);
    }
/**
    Equal reports whether a and b
    are the same length and contain the same bytes.
    A nil argument is equivalent to an empty slice.
**/
function equal(a:Array<StdTypes.Int>, b:Array<StdTypes.Int>):Bool {
        final a = ([for (i in a) i] : stdgo.Slice<stdgo.GoByte>);
        final b = ([for (i in b) i] : stdgo.Slice<stdgo.GoByte>);
        return stdgo._internal.bytes.Bytes.equal(a, b);
    }
/**
    Compare returns an integer comparing two byte slices lexicographically.
    The result will be 0 if a == b, -1 if a < b, and +1 if a > b.
    A nil argument is equivalent to an empty slice.
**/
function compare(a:Array<StdTypes.Int>, b:Array<StdTypes.Int>):StdTypes.Int {
        final a = ([for (i in a) i] : stdgo.Slice<stdgo.GoByte>);
        final b = ([for (i in b) i] : stdgo.Slice<stdgo.GoByte>);
        return stdgo._internal.bytes.Bytes.compare(a, b);
    }
/**
    Count counts the number of non-overlapping instances of sep in s.
    If sep is an empty slice, Count returns 1 + the number of UTF-8-encoded code points in s.
**/
function count(s:Array<StdTypes.Int>, sep:Array<StdTypes.Int>):StdTypes.Int {
        final s = ([for (i in s) i] : stdgo.Slice<stdgo.GoByte>);
        final sep = ([for (i in sep) i] : stdgo.Slice<stdgo.GoByte>);
        return stdgo._internal.bytes.Bytes.count(s, sep);
    }
/**
    Contains reports whether subslice is within b.
**/
function contains(b:Array<StdTypes.Int>, subslice:Array<StdTypes.Int>):Bool {
        final b = ([for (i in b) i] : stdgo.Slice<stdgo.GoByte>);
        final subslice = ([for (i in subslice) i] : stdgo.Slice<stdgo.GoByte>);
        return stdgo._internal.bytes.Bytes.contains(b, subslice);
    }
/**
    ContainsAny reports whether any of the UTF-8-encoded code points in chars are within b.
**/
function containsAny(b:Array<StdTypes.Int>, chars:String):Bool {
        final b = ([for (i in b) i] : stdgo.Slice<stdgo.GoByte>);
        return stdgo._internal.bytes.Bytes.containsAny(b, chars);
    }
/**
    ContainsRune reports whether the rune is contained in the UTF-8-encoded byte slice b.
**/
function containsRune(b:Array<StdTypes.Int>, r:StdTypes.Int):Bool {
        final b = ([for (i in b) i] : stdgo.Slice<stdgo.GoByte>);
        return stdgo._internal.bytes.Bytes.containsRune(b, r);
    }
/**
    ContainsFunc reports whether any of the UTF-8-encoded code points r within b satisfy f(r).
**/
function containsFunc(b:Array<StdTypes.Int>, f:stdgo.GoRune -> Bool):Bool {
        final b = ([for (i in b) i] : stdgo.Slice<stdgo.GoByte>);
        final f = f;
        return stdgo._internal.bytes.Bytes.containsFunc(b, f);
    }
/**
    IndexByte returns the index of the first instance of c in b, or -1 if c is not present in b.
**/
function indexByte(b:Array<StdTypes.Int>, c:StdTypes.Int):StdTypes.Int {
        final b = ([for (i in b) i] : stdgo.Slice<stdgo.GoByte>);
        return stdgo._internal.bytes.Bytes.indexByte(b, c);
    }
/**
    LastIndex returns the index of the last instance of sep in s, or -1 if sep is not present in s.
**/
function lastIndex(s:Array<StdTypes.Int>, sep:Array<StdTypes.Int>):StdTypes.Int {
        final s = ([for (i in s) i] : stdgo.Slice<stdgo.GoByte>);
        final sep = ([for (i in sep) i] : stdgo.Slice<stdgo.GoByte>);
        return stdgo._internal.bytes.Bytes.lastIndex(s, sep);
    }
/**
    LastIndexByte returns the index of the last instance of c in s, or -1 if c is not present in s.
**/
function lastIndexByte(s:Array<StdTypes.Int>, c:StdTypes.Int):StdTypes.Int {
        final s = ([for (i in s) i] : stdgo.Slice<stdgo.GoByte>);
        return stdgo._internal.bytes.Bytes.lastIndexByte(s, c);
    }
/**
    IndexRune interprets s as a sequence of UTF-8-encoded code points.
    It returns the byte index of the first occurrence in s of the given rune.
    It returns -1 if rune is not present in s.
    If r is utf8.RuneError, it returns the first instance of any
    invalid UTF-8 byte sequence.
**/
function indexRune(s:Array<StdTypes.Int>, r:StdTypes.Int):StdTypes.Int {
        final s = ([for (i in s) i] : stdgo.Slice<stdgo.GoByte>);
        return stdgo._internal.bytes.Bytes.indexRune(s, r);
    }
/**
    IndexAny interprets s as a sequence of UTF-8-encoded Unicode code points.
    It returns the byte index of the first occurrence in s of any of the Unicode
    code points in chars. It returns -1 if chars is empty or if there is no code
    point in common.
**/
function indexAny(s:Array<StdTypes.Int>, chars:String):StdTypes.Int {
        final s = ([for (i in s) i] : stdgo.Slice<stdgo.GoByte>);
        return stdgo._internal.bytes.Bytes.indexAny(s, chars);
    }
/**
    LastIndexAny interprets s as a sequence of UTF-8-encoded Unicode code
    points. It returns the byte index of the last occurrence in s of any of
    the Unicode code points in chars. It returns -1 if chars is empty or if
    there is no code point in common.
**/
function lastIndexAny(s:Array<StdTypes.Int>, chars:String):StdTypes.Int {
        final s = ([for (i in s) i] : stdgo.Slice<stdgo.GoByte>);
        return stdgo._internal.bytes.Bytes.lastIndexAny(s, chars);
    }
/**
    SplitN slices s into subslices separated by sep and returns a slice of
    the subslices between those separators.
    If sep is empty, SplitN splits after each UTF-8 sequence.
    The count determines the number of subslices to return:
    
    	n > 0: at most n subslices; the last subslice will be the unsplit remainder.
    	n == 0: the result is nil (zero subslices)
    	n < 0: all subslices
    
    To split around the first instance of a separator, see Cut.
**/
function splitN(s:Array<StdTypes.Int>, sep:Array<StdTypes.Int>, n:StdTypes.Int):Array<Array<StdTypes.Int>> {
        final s = ([for (i in s) i] : stdgo.Slice<stdgo.GoByte>);
        final sep = ([for (i in sep) i] : stdgo.Slice<stdgo.GoByte>);
        return [for (i in stdgo._internal.bytes.Bytes.splitN(s, sep, n)) [for (i in i) i]];
    }
/**
    SplitAfterN slices s into subslices after each instance of sep and
    returns a slice of those subslices.
    If sep is empty, SplitAfterN splits after each UTF-8 sequence.
    The count determines the number of subslices to return:
    
    	n > 0: at most n subslices; the last subslice will be the unsplit remainder.
    	n == 0: the result is nil (zero subslices)
    	n < 0: all subslices
**/
function splitAfterN(s:Array<StdTypes.Int>, sep:Array<StdTypes.Int>, n:StdTypes.Int):Array<Array<StdTypes.Int>> {
        final s = ([for (i in s) i] : stdgo.Slice<stdgo.GoByte>);
        final sep = ([for (i in sep) i] : stdgo.Slice<stdgo.GoByte>);
        return [for (i in stdgo._internal.bytes.Bytes.splitAfterN(s, sep, n)) [for (i in i) i]];
    }
/**
    Split slices s into all subslices separated by sep and returns a slice of
    the subslices between those separators.
    If sep is empty, Split splits after each UTF-8 sequence.
    It is equivalent to SplitN with a count of -1.
    
    To split around the first instance of a separator, see Cut.
**/
function split(s:Array<StdTypes.Int>, sep:Array<StdTypes.Int>):Array<Array<StdTypes.Int>> {
        final s = ([for (i in s) i] : stdgo.Slice<stdgo.GoByte>);
        final sep = ([for (i in sep) i] : stdgo.Slice<stdgo.GoByte>);
        return [for (i in stdgo._internal.bytes.Bytes.split(s, sep)) [for (i in i) i]];
    }
/**
    SplitAfter slices s into all subslices after each instance of sep and
    returns a slice of those subslices.
    If sep is empty, SplitAfter splits after each UTF-8 sequence.
    It is equivalent to SplitAfterN with a count of -1.
**/
function splitAfter(s:Array<StdTypes.Int>, sep:Array<StdTypes.Int>):Array<Array<StdTypes.Int>> {
        final s = ([for (i in s) i] : stdgo.Slice<stdgo.GoByte>);
        final sep = ([for (i in sep) i] : stdgo.Slice<stdgo.GoByte>);
        return [for (i in stdgo._internal.bytes.Bytes.splitAfter(s, sep)) [for (i in i) i]];
    }
/**
    Fields interprets s as a sequence of UTF-8-encoded code points.
    It splits the slice s around each instance of one or more consecutive white space
    characters, as defined by unicode.IsSpace, returning a slice of subslices of s or an
    empty slice if s contains only white space.
**/
function fields(s:Array<StdTypes.Int>):Array<Array<StdTypes.Int>> {
        final s = ([for (i in s) i] : stdgo.Slice<stdgo.GoByte>);
        return [for (i in stdgo._internal.bytes.Bytes.fields(s)) [for (i in i) i]];
    }
@:forward @:forward.new abstract T_fieldsFunc_7___localname___span(stdgo._internal.bytes.Bytes.T_fieldsFunc_7___localname___span) from stdgo._internal.bytes.Bytes.T_fieldsFunc_7___localname___span to stdgo._internal.bytes.Bytes.T_fieldsFunc_7___localname___span {

}
/**
    FieldsFunc interprets s as a sequence of UTF-8-encoded code points.
    It splits the slice s at each run of code points c satisfying f(c) and
    returns a slice of subslices of s. If all code points in s satisfy f(c), or
    len(s) == 0, an empty slice is returned.
    
    FieldsFunc makes no guarantees about the order in which it calls f(c)
    and assumes that f always returns the same value for a given c.
**/
function fieldsFunc(s:Array<StdTypes.Int>, f:stdgo.GoRune -> Bool):Array<Array<StdTypes.Int>> {
        final s = ([for (i in s) i] : stdgo.Slice<stdgo.GoByte>);
        final f = f;
        return [for (i in stdgo._internal.bytes.Bytes.fieldsFunc(s, f)) [for (i in i) i]];
    }
/**
    Join concatenates the elements of s to create a new byte slice. The separator
    sep is placed between elements in the resulting slice.
**/
function join(s:Array<Array<StdTypes.Int>>, sep:Array<StdTypes.Int>):Array<StdTypes.Int> {
        final s = ([for (i in s) ([for (i in i) i] : stdgo.Slice<stdgo.GoByte>)] : stdgo.Slice<stdgo.Slice<stdgo.GoByte>>);
        final sep = ([for (i in sep) i] : stdgo.Slice<stdgo.GoByte>);
        return [for (i in stdgo._internal.bytes.Bytes.join(s, sep)) i];
    }
/**
    HasPrefix tests whether the byte slice s begins with prefix.
**/
function hasPrefix(s:Array<StdTypes.Int>, prefix:Array<StdTypes.Int>):Bool {
        final s = ([for (i in s) i] : stdgo.Slice<stdgo.GoByte>);
        final prefix = ([for (i in prefix) i] : stdgo.Slice<stdgo.GoByte>);
        return stdgo._internal.bytes.Bytes.hasPrefix(s, prefix);
    }
/**
    HasSuffix tests whether the byte slice s ends with suffix.
**/
function hasSuffix(s:Array<StdTypes.Int>, suffix:Array<StdTypes.Int>):Bool {
        final s = ([for (i in s) i] : stdgo.Slice<stdgo.GoByte>);
        final suffix = ([for (i in suffix) i] : stdgo.Slice<stdgo.GoByte>);
        return stdgo._internal.bytes.Bytes.hasSuffix(s, suffix);
    }
/**
    Map returns a copy of the byte slice s with all its characters modified
    according to the mapping function. If mapping returns a negative value, the character is
    dropped from the byte slice with no replacement. The characters in s and the
    output are interpreted as UTF-8-encoded code points.
**/
function map_(mapping:(_r:stdgo.GoRune) -> stdgo.GoRune, s:Array<StdTypes.Int>):Array<StdTypes.Int> {
        final mapping = mapping;
        final s = ([for (i in s) i] : stdgo.Slice<stdgo.GoByte>);
        return [for (i in stdgo._internal.bytes.Bytes.map_(mapping, s)) i];
    }
/**
    Repeat returns a new byte slice consisting of count copies of b.
    
    It panics if count is negative or if the result of (len(b) * count)
    overflows.
**/
function repeat(b:Array<StdTypes.Int>, count:StdTypes.Int):Array<StdTypes.Int> {
        final b = ([for (i in b) i] : stdgo.Slice<stdgo.GoByte>);
        return [for (i in stdgo._internal.bytes.Bytes.repeat(b, count)) i];
    }
/**
    ToUpper returns a copy of the byte slice s with all Unicode letters mapped to
    their upper case.
**/
function toUpper(s:Array<StdTypes.Int>):Array<StdTypes.Int> {
        final s = ([for (i in s) i] : stdgo.Slice<stdgo.GoByte>);
        return [for (i in stdgo._internal.bytes.Bytes.toUpper(s)) i];
    }
/**
    ToLower returns a copy of the byte slice s with all Unicode letters mapped to
    their lower case.
**/
function toLower(s:Array<StdTypes.Int>):Array<StdTypes.Int> {
        final s = ([for (i in s) i] : stdgo.Slice<stdgo.GoByte>);
        return [for (i in stdgo._internal.bytes.Bytes.toLower(s)) i];
    }
/**
    ToTitle treats s as UTF-8-encoded bytes and returns a copy with all the Unicode letters mapped to their title case.
**/
function toTitle(s:Array<StdTypes.Int>):Array<StdTypes.Int> {
        final s = ([for (i in s) i] : stdgo.Slice<stdgo.GoByte>);
        return [for (i in stdgo._internal.bytes.Bytes.toTitle(s)) i];
    }
/**
    ToUpperSpecial treats s as UTF-8-encoded bytes and returns a copy with all the Unicode letters mapped to their
    upper case, giving priority to the special casing rules.
**/
function toUpperSpecial(c:stdgo._internal.unicode.Unicode.SpecialCase, s:Array<StdTypes.Int>):Array<StdTypes.Int> {
        final s = ([for (i in s) i] : stdgo.Slice<stdgo.GoByte>);
        return [for (i in stdgo._internal.bytes.Bytes.toUpperSpecial(c, s)) i];
    }
/**
    ToLowerSpecial treats s as UTF-8-encoded bytes and returns a copy with all the Unicode letters mapped to their
    lower case, giving priority to the special casing rules.
**/
function toLowerSpecial(c:stdgo._internal.unicode.Unicode.SpecialCase, s:Array<StdTypes.Int>):Array<StdTypes.Int> {
        final s = ([for (i in s) i] : stdgo.Slice<stdgo.GoByte>);
        return [for (i in stdgo._internal.bytes.Bytes.toLowerSpecial(c, s)) i];
    }
/**
    ToTitleSpecial treats s as UTF-8-encoded bytes and returns a copy with all the Unicode letters mapped to their
    title case, giving priority to the special casing rules.
**/
function toTitleSpecial(c:stdgo._internal.unicode.Unicode.SpecialCase, s:Array<StdTypes.Int>):Array<StdTypes.Int> {
        final s = ([for (i in s) i] : stdgo.Slice<stdgo.GoByte>);
        return [for (i in stdgo._internal.bytes.Bytes.toTitleSpecial(c, s)) i];
    }
/**
    ToValidUTF8 treats s as UTF-8-encoded bytes and returns a copy with each run of bytes
    representing invalid UTF-8 replaced with the bytes in replacement, which may be empty.
**/
function toValidUTF8(s:Array<StdTypes.Int>, replacement:Array<StdTypes.Int>):Array<StdTypes.Int> {
        final s = ([for (i in s) i] : stdgo.Slice<stdgo.GoByte>);
        final replacement = ([for (i in replacement) i] : stdgo.Slice<stdgo.GoByte>);
        return [for (i in stdgo._internal.bytes.Bytes.toValidUTF8(s, replacement)) i];
    }
/**
    Title treats s as UTF-8-encoded bytes and returns a copy with all Unicode letters that begin
    words mapped to their title case.
    
    Deprecated: The rule Title uses for word boundaries does not handle Unicode
    punctuation properly. Use golang.org/x/text/cases instead.
**/
function title(s:Array<StdTypes.Int>):Array<StdTypes.Int> {
        final s = ([for (i in s) i] : stdgo.Slice<stdgo.GoByte>);
        return [for (i in stdgo._internal.bytes.Bytes.title(s)) i];
    }
/**
    TrimLeftFunc treats s as UTF-8-encoded bytes and returns a subslice of s by slicing off
    all leading UTF-8-encoded code points c that satisfy f(c).
**/
function trimLeftFunc(s:Array<StdTypes.Int>, f:(_r:stdgo.GoRune) -> Bool):Array<StdTypes.Int> {
        final s = ([for (i in s) i] : stdgo.Slice<stdgo.GoByte>);
        final f = f;
        return [for (i in stdgo._internal.bytes.Bytes.trimLeftFunc(s, f)) i];
    }
/**
    TrimRightFunc returns a subslice of s by slicing off all trailing
    UTF-8-encoded code points c that satisfy f(c).
**/
function trimRightFunc(s:Array<StdTypes.Int>, f:(_r:stdgo.GoRune) -> Bool):Array<StdTypes.Int> {
        final s = ([for (i in s) i] : stdgo.Slice<stdgo.GoByte>);
        final f = f;
        return [for (i in stdgo._internal.bytes.Bytes.trimRightFunc(s, f)) i];
    }
/**
    TrimFunc returns a subslice of s by slicing off all leading and trailing
    UTF-8-encoded code points c that satisfy f(c).
**/
function trimFunc(s:Array<StdTypes.Int>, f:(_r:stdgo.GoRune) -> Bool):Array<StdTypes.Int> {
        final s = ([for (i in s) i] : stdgo.Slice<stdgo.GoByte>);
        final f = f;
        return [for (i in stdgo._internal.bytes.Bytes.trimFunc(s, f)) i];
    }
/**
    TrimPrefix returns s without the provided leading prefix string.
    If s doesn't start with prefix, s is returned unchanged.
**/
function trimPrefix(s:Array<StdTypes.Int>, prefix:Array<StdTypes.Int>):Array<StdTypes.Int> {
        final s = ([for (i in s) i] : stdgo.Slice<stdgo.GoByte>);
        final prefix = ([for (i in prefix) i] : stdgo.Slice<stdgo.GoByte>);
        return [for (i in stdgo._internal.bytes.Bytes.trimPrefix(s, prefix)) i];
    }
/**
    TrimSuffix returns s without the provided trailing suffix string.
    If s doesn't end with suffix, s is returned unchanged.
**/
function trimSuffix(s:Array<StdTypes.Int>, suffix:Array<StdTypes.Int>):Array<StdTypes.Int> {
        final s = ([for (i in s) i] : stdgo.Slice<stdgo.GoByte>);
        final suffix = ([for (i in suffix) i] : stdgo.Slice<stdgo.GoByte>);
        return [for (i in stdgo._internal.bytes.Bytes.trimSuffix(s, suffix)) i];
    }
/**
    IndexFunc interprets s as a sequence of UTF-8-encoded code points.
    It returns the byte index in s of the first Unicode
    code point satisfying f(c), or -1 if none do.
**/
function indexFunc(s:Array<StdTypes.Int>, f:(_r:stdgo.GoRune) -> Bool):StdTypes.Int {
        final s = ([for (i in s) i] : stdgo.Slice<stdgo.GoByte>);
        final f = f;
        return stdgo._internal.bytes.Bytes.indexFunc(s, f);
    }
/**
    LastIndexFunc interprets s as a sequence of UTF-8-encoded code points.
    It returns the byte index in s of the last Unicode
    code point satisfying f(c), or -1 if none do.
**/
function lastIndexFunc(s:Array<StdTypes.Int>, f:(_r:stdgo.GoRune) -> Bool):StdTypes.Int {
        final s = ([for (i in s) i] : stdgo.Slice<stdgo.GoByte>);
        final f = f;
        return stdgo._internal.bytes.Bytes.lastIndexFunc(s, f);
    }
/**
    Trim returns a subslice of s by slicing off all leading and
    trailing UTF-8-encoded code points contained in cutset.
**/
function trim(s:Array<StdTypes.Int>, cutset:String):Array<StdTypes.Int> {
        final s = ([for (i in s) i] : stdgo.Slice<stdgo.GoByte>);
        return [for (i in stdgo._internal.bytes.Bytes.trim(s, cutset)) i];
    }
/**
    TrimLeft returns a subslice of s by slicing off all leading
    UTF-8-encoded code points contained in cutset.
**/
function trimLeft(s:Array<StdTypes.Int>, cutset:String):Array<StdTypes.Int> {
        final s = ([for (i in s) i] : stdgo.Slice<stdgo.GoByte>);
        return [for (i in stdgo._internal.bytes.Bytes.trimLeft(s, cutset)) i];
    }
/**
    TrimRight returns a subslice of s by slicing off all trailing
    UTF-8-encoded code points that are contained in cutset.
**/
function trimRight(s:Array<StdTypes.Int>, cutset:String):Array<StdTypes.Int> {
        final s = ([for (i in s) i] : stdgo.Slice<stdgo.GoByte>);
        return [for (i in stdgo._internal.bytes.Bytes.trimRight(s, cutset)) i];
    }
/**
    TrimSpace returns a subslice of s by slicing off all leading and
    trailing white space, as defined by Unicode.
**/
function trimSpace(s:Array<StdTypes.Int>):Array<StdTypes.Int> {
        final s = ([for (i in s) i] : stdgo.Slice<stdgo.GoByte>);
        return [for (i in stdgo._internal.bytes.Bytes.trimSpace(s)) i];
    }
/**
    Runes interprets s as a sequence of UTF-8-encoded code points.
    It returns a slice of runes (Unicode code points) equivalent to s.
**/
function runes(s:Array<StdTypes.Int>):Array<StdTypes.Int> {
        final s = ([for (i in s) i] : stdgo.Slice<stdgo.GoByte>);
        return [for (i in stdgo._internal.bytes.Bytes.runes(s)) i];
    }
/**
    Replace returns a copy of the slice s with the first n
    non-overlapping instances of old replaced by new.
    If old is empty, it matches at the beginning of the slice
    and after each UTF-8 sequence, yielding up to k+1 replacements
    for a k-rune slice.
    If n < 0, there is no limit on the number of replacements.
**/
function replace(s:Array<StdTypes.Int>, old:Array<StdTypes.Int>, _new:Array<StdTypes.Int>, n:StdTypes.Int):Array<StdTypes.Int> {
        final s = ([for (i in s) i] : stdgo.Slice<stdgo.GoByte>);
        final old = ([for (i in old) i] : stdgo.Slice<stdgo.GoByte>);
        final _new = ([for (i in _new) i] : stdgo.Slice<stdgo.GoByte>);
        return [for (i in stdgo._internal.bytes.Bytes.replace(s, old, _new, n)) i];
    }
/**
    ReplaceAll returns a copy of the slice s with all
    non-overlapping instances of old replaced by new.
    If old is empty, it matches at the beginning of the slice
    and after each UTF-8 sequence, yielding up to k+1 replacements
    for a k-rune slice.
**/
function replaceAll(s:Array<StdTypes.Int>, old:Array<StdTypes.Int>, _new:Array<StdTypes.Int>):Array<StdTypes.Int> {
        final s = ([for (i in s) i] : stdgo.Slice<stdgo.GoByte>);
        final old = ([for (i in old) i] : stdgo.Slice<stdgo.GoByte>);
        final _new = ([for (i in _new) i] : stdgo.Slice<stdgo.GoByte>);
        return [for (i in stdgo._internal.bytes.Bytes.replaceAll(s, old, _new)) i];
    }
/**
    EqualFold reports whether s and t, interpreted as UTF-8 strings,
    are equal under simple Unicode case-folding, which is a more general
    form of case-insensitivity.
**/
function equalFold(s:Array<StdTypes.Int>, t:Array<StdTypes.Int>):Bool {
        final s = ([for (i in s) i] : stdgo.Slice<stdgo.GoByte>);
        final t = ([for (i in t) i] : stdgo.Slice<stdgo.GoByte>);
        return stdgo._internal.bytes.Bytes.equalFold(s, t);
    }
/**
    Index returns the index of the first instance of sep in s, or -1 if sep is not present in s.
**/
function index(s:Array<StdTypes.Int>, sep:Array<StdTypes.Int>):StdTypes.Int {
        final s = ([for (i in s) i] : stdgo.Slice<stdgo.GoByte>);
        final sep = ([for (i in sep) i] : stdgo.Slice<stdgo.GoByte>);
        return stdgo._internal.bytes.Bytes.index(s, sep);
    }
/**
    Cut slices s around the first instance of sep,
    returning the text before and after sep.
    The found result reports whether sep appears in s.
    If sep does not appear in s, cut returns s, nil, false.
    
    Cut returns slices of the original slice s, not copies.
**/
function cut(s:Array<StdTypes.Int>, sep:Array<StdTypes.Int>):stdgo.Tuple.Tuple3<Array<StdTypes.Int>, Array<StdTypes.Int>, Bool> {
        final s = ([for (i in s) i] : stdgo.Slice<stdgo.GoByte>);
        final sep = ([for (i in sep) i] : stdgo.Slice<stdgo.GoByte>);
        return {
            final obj = stdgo._internal.bytes.Bytes.cut(s, sep);
            { _0 : [for (i in obj._0) i], _1 : [for (i in obj._1) i], _2 : obj._2 };
        };
    }
/**
    Clone returns a copy of b[:len(b)].
    The result may have additional unused capacity.
    Clone(nil) returns nil.
**/
function clone(b:Array<StdTypes.Int>):Array<StdTypes.Int> {
        final b = ([for (i in b) i] : stdgo.Slice<stdgo.GoByte>);
        return [for (i in stdgo._internal.bytes.Bytes.clone(b)) i];
    }
/**
    CutPrefix returns s without the provided leading prefix byte slice
    and reports whether it found the prefix.
    If s doesn't start with prefix, CutPrefix returns s, false.
    If prefix is the empty byte slice, CutPrefix returns s, true.
    
    CutPrefix returns slices of the original slice s, not copies.
**/
function cutPrefix(s:Array<StdTypes.Int>, prefix:Array<StdTypes.Int>):stdgo.Tuple<Array<StdTypes.Int>, Bool> {
        final s = ([for (i in s) i] : stdgo.Slice<stdgo.GoByte>);
        final prefix = ([for (i in prefix) i] : stdgo.Slice<stdgo.GoByte>);
        return {
            final obj = stdgo._internal.bytes.Bytes.cutPrefix(s, prefix);
            { _0 : [for (i in obj._0) i], _1 : obj._1 };
        };
    }
/**
    CutSuffix returns s without the provided ending suffix byte slice
    and reports whether it found the suffix.
    If s doesn't end with suffix, CutSuffix returns s, false.
    If suffix is the empty byte slice, CutSuffix returns s, true.
    
    CutSuffix returns slices of the original slice s, not copies.
**/
function cutSuffix(s:Array<StdTypes.Int>, suffix:Array<StdTypes.Int>):stdgo.Tuple<Array<StdTypes.Int>, Bool> {
        final s = ([for (i in s) i] : stdgo.Slice<stdgo.GoByte>);
        final suffix = ([for (i in suffix) i] : stdgo.Slice<stdgo.GoByte>);
        return {
            final obj = stdgo._internal.bytes.Bytes.cutSuffix(s, suffix);
            { _0 : [for (i in obj._0) i], _1 : obj._1 };
        };
    }
/**
    NewReader returns a new Reader reading from b.
**/
function newReader(b:Array<StdTypes.Int>):Reader {
        final b = ([for (i in b) i] : stdgo.Slice<stdgo.GoByte>);
        return stdgo._internal.bytes.Bytes.newReader(b);
    }
@:forward @:forward.new abstract Buffer_asInterface(stdgo._internal.bytes.Bytes.Buffer_asInterface) from stdgo._internal.bytes.Bytes.Buffer_asInterface to stdgo._internal.bytes.Bytes.Buffer_asInterface {

}
@:forward @:forward.new abstract Buffer_static_extension(stdgo._internal.bytes.Bytes.Buffer_static_extension) from stdgo._internal.bytes.Bytes.Buffer_static_extension to stdgo._internal.bytes.Bytes.Buffer_static_extension {

}
@:forward @:forward.new abstract Reader_asInterface(stdgo._internal.bytes.Bytes.Reader_asInterface) from stdgo._internal.bytes.Bytes.Reader_asInterface to stdgo._internal.bytes.Bytes.Reader_asInterface {

}
@:forward @:forward.new abstract Reader_static_extension(stdgo._internal.bytes.Bytes.Reader_static_extension) from stdgo._internal.bytes.Bytes.Reader_static_extension to stdgo._internal.bytes.Bytes.Reader_static_extension {

}
@:forward @:forward.new abstract T_asciiSet_asInterface(stdgo._internal.bytes.Bytes.T_asciiSet_asInterface) from stdgo._internal.bytes.Bytes.T_asciiSet_asInterface to stdgo._internal.bytes.Bytes.T_asciiSet_asInterface {

}
@:forward @:forward.new abstract T_asciiSet_static_extension(stdgo._internal.bytes.Bytes.T_asciiSet_static_extension) from stdgo._internal.bytes.Bytes.T_asciiSet_static_extension to stdgo._internal.bytes.Bytes.T_asciiSet_static_extension {

}
